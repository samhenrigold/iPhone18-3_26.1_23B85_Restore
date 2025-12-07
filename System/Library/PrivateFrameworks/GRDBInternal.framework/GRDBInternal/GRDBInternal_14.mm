uint64_t sub_1B22184D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1B2218518(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1B2218580(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 164))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B22185C8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 164) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 2 * -a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 147) = 0u;
      return result;
    }

    *(a1 + 164) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B221866C(uint64_t a1)
{
  if ((*(a1 + 64) >> 1) > 0x80000000)
  {
    return -(*(a1 + 64) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B221868C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 211))
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

uint64_t sub_1B22186CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 210) = 0;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 211) = 1;
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

    *(result + 211) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1B2218758(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x1FFFFFFFELL;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 148) = 0u;
  return result;
}

uint64_t sub_1B2218788(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:

      break;
    case 1:
    case 3:

      goto LABEL_7;
    case 2:

LABEL_7:

      break;
    default:
      return v6;
  }

  return v6;
}

uint64_t sub_1B221881C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:

      break;
    case 1:
    case 3:

      goto LABEL_7;
    case 2:

LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B22188B8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B2218924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for OnDemandFutureSubscription.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1B22189C4(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  v6 = a1;
  v7 = a2;
  result = sub_1B21E8980(sub_1B221A700, v5, sub_1B221A708);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    v8(result);
    return sub_1B2112F4C(v3, v4);
  }

  return result;
}

uint64_t sub_1B2218A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B21115E0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OnDemandFutureSubscription(0, v17, v18, v16);
  (*(v12 + 16))(v15, a1, a6);

  v20 = sub_1B2218BA4(a2, a3, v15);
  v23[3] = v19;
  v23[4] = swift_getWitnessTable();
  v23[0] = v20;
  sub_1B2251FD0();
  return sub_1B2113208(v23);
}

uint64_t *sub_1B2218C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 104);
  *(v3 + v8) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v9 = v3 + *(*v3 + 96);
  v10 = *(v7 + 80);
  sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
  v11 = (v9 + *(swift_getTupleTypeMetadata2() + 48));
  (*(*(v10 - 8) + 32))(v9, a3, v10);
  *v11 = a1;
  v11[1] = a2;
  type metadata accessor for OnDemandFutureSubscription.State(0, v10, *(v7 + 88), v12);
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t sub_1B2218DCC(char *a1, uint64_t a2)
{
  v25 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v22 - v6;
  v9 = type metadata accessor for OnDemandFutureSubscription.State(0, v4, *(v3 + 88), v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = *(v3 + 96);
  swift_beginAccess();
  (*(v10 + 16))(v15, &a1[v16], v9);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      return (*(v5 + 8))(v15, v4);
    }
  }

  else
  {
    sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
    v18 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
    v20 = *v18;
    v19 = *(v18 + 1);
    v23 = v20;
    v24 = v19;
    (*(v5 + 32))(v7, v15, v4);
    sub_1B2252030();
    v21 = v25;
    result = sub_1B2252010();
    if ((result & 1) == 0)
    {
      if (v21 < 0)
      {
        __break(1u);
        return result;
      }

      if (!v21)
      {
        (*(v5 + 8))(v7, v4);
      }
    }

    (*(v5 + 16))(v12, v7, v4);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v10 + 40))(&a1[v16], v12, v9);
    swift_endAccess();

    v23(sub_1B221A960, a1);

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1B2219120(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1B2252000();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = sub_1B2253480();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  (*(v18 + 16))(&v20 - v16, v23, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v17, AssociatedTypeWitness);
    (*(v6 + 16))(v5, v9, AssociatedTypeWitness);
    sub_1B21117B4(v5, 0, 1, AssociatedTypeWitness);
    sub_1B2219C48(v5);
    (*(v21 + 8))(v5, v22);
    return (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  else
  {
    (*(v11 + 32))(v13, v17, v10);
    sub_1B2219680(v13);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1B2219544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OnDemandFutureSubscription.State(0, *(*a1 + 80), *(*a1 + 88), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  swift_storeEnumTagMultiPayload();
  v9 = *(*a1 + 96);
  swift_beginAccess();
  (*(v6 + 40))(a1 + v9, v8, v5);
  return swift_endAccess();
}

uint64_t sub_1B22196AC(uint64_t *a1, char *a2, uint64_t a3)
{
  v42 = a3;
  v46 = a1;
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  v40 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = &v37 - v8;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v45 = v5;
  v16 = type metadata accessor for OnDemandFutureSubscription.State(0, v6, v5, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  v23 = *(v4 + 96);
  swift_beginAccess();
  (*(v17 + 16))(v22, &a2[v23], v16);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1B2112F4C(*v46, v46[1]);
      v25 = v14;
      v38 = v14;
      v27 = v9 + 32;
      v26 = *(v9 + 32);
      v26(v25, v22, v6);
      v37 = v26;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v17 + 40))(&a2[v23], v19, v16);
      swift_endAccess();
      v28 = v39;
      v26(v39, v38, v6);
      v29 = v43;
      v30 = v41;
      v31 = v44;
      (*(v43 + 16))(v41, v42, v44);
      v32 = (*(v27 + 48) + 32) & ~*(v27 + 48);
      v33 = (v10 + *(v29 + 80) + v32) & ~*(v29 + 80);
      v34 = swift_allocObject();
      v35 = v45;
      *(v34 + 16) = v6;
      *(v34 + 24) = v35;
      v37(v34 + v32, v28, v6);
      result = (*(v29 + 32))(v34 + v33, v30, v31);
      v36 = v46;
      *v46 = sub_1B221A844;
      v36[1] = v34;
    }
  }

  else
  {
    sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
    swift_getTupleTypeMetadata2();

    return (*(v9 + 8))(v22, v6);
  }

  return result;
}

uint64_t sub_1B2219AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1B2252000();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1B2251FE0();
  sub_1B21117B4(v8, 1, 1, AssociatedTypeWitness);
  sub_1B2251FC0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B2219CC8(uint64_t *a1, char *a2, uint64_t a3)
{
  v43 = a3;
  v45 = a1;
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1B2252000();
  v41 = *(v7 - 8);
  v42 = v7;
  v39 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v36 - v8;
  v44 = *(v6 - 8);
  v9 = *(v44 + 8);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v15 = type metadata accessor for OnDemandFutureSubscription.State(0, v6, v5, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v22 = *(v4 + 96);
  swift_beginAccess();
  (*(v16 + 16))(v21, &a2[v22], v15);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1B2112F4C(*v45, v45[1]);
      v36 = v13;
      v37 = v5;
      v24 = v13;
      v25 = v44 + 32;
      v26 = *(v44 + 4);
      v26(v24, v21, v6);
      v44 = v26;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v16 + 40))(&a2[v22], v18, v15);
      swift_endAccess();
      v27 = v38;
      v26(v38, v36, v6);
      v29 = v40;
      v28 = v41;
      v30 = v42;
      (*(v41 + 16))(v40, v43, v42);
      v31 = (v25[48] + 32) & ~v25[48];
      v32 = (v9 + *(v28 + 80) + v31) & ~*(v28 + 80);
      v33 = swift_allocObject();
      v34 = v37;
      *(v33 + 16) = v6;
      *(v33 + 24) = v34;
      v44((v33 + v31), v27, v6);
      result = (*(v28 + 32))(v33 + v32, v29, v30);
      v35 = v45;
      *v45 = sub_1B221A728;
      v35[1] = v33;
    }
  }

  else
  {
    sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
    swift_getTupleTypeMetadata2();

    return (*(v44 + 1))(v21, v6);
  }

  return result;
}

uint64_t sub_1B221A148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v6 = type metadata accessor for OnDemandFutureSubscription.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return v4;
}

uint64_t sub_1B221A1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B221A148(a1, a2, a3, a4);
  v5 = *(*v4 + 48);
  v6 = *(*v4 + 52);

  return MEMORY[0x1EEE6BDC0](v4, v5, v6);
}

uint64_t sub_1B221A280(uint64_t a1)
{
  sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B221A324(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v4 > v5)
  {
    v5 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_22:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1B221A450(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1B221A61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B221A728()
{
  sub_1B21115E0();
  sub_1B2112DC0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1B2252000();
  return sub_1B2251FC0();
}

uint64_t sub_1B221A844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B21115E0();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1B2112DC0();
  v6 = v4 + *(v5 + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v0 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1B2219AF8(v0 + v4, v8, v1, v2);
}

uint64_t sub_1B221A978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1B22531F0();
  }
}

unint64_t sub_1B221A9B4()
{
  result = qword_1ED85E6D8;
  if (!qword_1ED85E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E6D8);
  }

  return result;
}

uint64_t sub_1B221AA2C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = FTS5TokenFlags.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B221AA6C@<X0>(_DWORD *a1@<X8>)
{
  result = FTS5TokenFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t FTS5WrapperTokenizer.tokenize(context:tokenization:pText:nText:tokenCallback:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v14[1] = a7;
  v14[2] = a1;
  v15 = v11;
  v16 = a5;
  swift_unknownObjectRetain();
  sub_1B221AB54(v14, v11, a3, a4, a6, a7, &v13);
  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_1B221AB54@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, _DWORD *a7@<X8>)
{
  (*(a6 + 16))(a5, a6);
  v13 = v12;
  ObjectType = swift_getObjectType();
  v16 = a2;
  LODWORD(a4) = (*(v13 + 8))(a1, &v16, a3, a4, sub_1B221B1BC, ObjectType, v13);
  result = swift_unknownObjectRelease();
  *a7 = a4;
  return result;
}

unint64_t sub_1B221AC2C()
{
  result = qword_1EB7A30A8;
  if (!qword_1EB7A30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A30A8);
  }

  return result;
}

unint64_t sub_1B221AC84()
{
  result = qword_1EB7A30B0;
  if (!qword_1EB7A30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A30B0);
  }

  return result;
}

unint64_t sub_1B221ACDC()
{
  result = qword_1EB7A0C90;
  if (!qword_1EB7A0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A0C90);
  }

  return result;
}

unint64_t sub_1B221AD34()
{
  result = qword_1EB7A0C88;
  if (!qword_1EB7A0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A0C88);
  }

  return result;
}

uint64_t sub_1B221ADD4(uint64_t *a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v12 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1B2251D80();
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return 0;
  }

  (*(v14 + 104))(v17, *MEMORY[0x1E6969010], v15);
  v18 = MEMORY[0x1B2741870](a3, a4, v17);
  v20 = v19;
  sub_1B22522E0();
  v21 = sub_1B22522C0();
  v23 = v22;
  result = sub_1B21267A8(v18, v20);
  if (!v23)
  {
    return 0;
  }

  v33 = v21;
  if (a1)
  {
    v25 = a6;
    v26 = a1[1];
    v27 = a1[2];
    v28 = *(a1 + 6);
    v29 = a1[4];
    ObjectType = swift_getObjectType();
    v32 = &v32;
    v34[0] = a2;
    LODWORD(v35) = v28;
    MEMORY[0x1EEE9AC00](ObjectType);
    *(&v32 - 4) = v29;
    *(&v32 - 3) = v27;
    *(&v32 - 4) = a5;
    *(&v32 - 3) = v25;
    v31 = *(v26 + 24);
    swift_unknownObjectRetain_n();
    v31(v33, v23, v34, &v35, sub_1B221B1C0, &v32 - 6, ObjectType, v26);
    swift_unknownObjectRelease_n();

    return 0;
  }

  __break(1u);
  return result;
}

void *sub_1B221B0D4(uint64_t a1, unint64_t a2, unsigned int *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v7 = *a3;
  result = sub_1B221B250(a1, a2);
  if (result[2] >> 31)
  {
    __break(1u);
  }

  else
  {
    v9 = a4(a5, v7, (result + 4));
    if (v9)
    {
      v10 = v9;
      sub_1B21AC298();
      swift_allocError();
      *v11 = v10;
      *(v11 + 8) = 0xD000000000000015;
      *(v11 + 16) = 0x80000001B2270040;
      *(v11 + 24) = 0u;
      *(v11 + 40) = 0u;
      *(v11 + 56) = 0;
      swift_willThrow();
    }
  }

  return result;
}

void *sub_1B221B1E0(uint64_t a1, uint64_t a2)
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

  sub_1B21619D8(&qword_1EB7A30B8, &qword_1B2262920);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_1B221B250(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B2252420())
  {
    result = sub_1B221B1E0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B2252CB0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_1B2252D50();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B221B368(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  sub_1B21115E0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2112D9C();
  v46 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v48 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1B2112D9C();
  v42 = v19;
  swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v36 = v21;
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  v24 = sub_1B2252840();
  if (!v24)
  {
    return sub_1B2252600();
  }

  v47 = v24;
  v51 = sub_1B2252DD0();
  v38 = sub_1B2252DE0();
  sub_1B2252D80();
  result = sub_1B2252830();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_1B2252940();
      (*v39)(v17);
      v27(v50, 0);
      v28 = v49;
      v44(v17, v46);
      if (v28)
      {
        v31 = sub_1B2118530();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = sub_1B2118530();
      v30(v29);
      sub_1B2252DC0();
      result = sub_1B2252860();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

GRDBInternal::SQL __swiftcall SQL.init(sql:arguments:)(Swift::String sql, GRDBInternal::StatementArguments arguments)
{
  rawValue = arguments.values._rawValue;
  object = sql._object;
  countAndFlagsBits = sql._countAndFlagsBits;
  v6 = v2;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B22546B0;
  *__src = countAndFlagsBits;
  *&__src[8] = object;
  *&__src[16] = *rawValue;
  sub_1B2114CC4(__src);
  result.elements._rawValue = memcpy((v7 + 32), __src, 0xB8uLL);
  *v6 = v7;
  return result;
}

uint64_t SQL.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B22546B0;
  v6 = a1[3];
  v5 = a1[4];
  sub_1B21139A0(a1, v6);
  (*(*(v5 + 8) + 8))(__src, v6);
  sub_1B2127AE0(__src);
  memcpy((v4 + 32), __src, 0xB8uLL);
  *a2 = v4;
  return sub_1B2113208(a1);
}

BOOL SQL.isEmpty.getter()
{
  v1 = (*v0 + 32);
  v2 = *(*v0 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    memmove(__dst, v1, 0xB8uLL);
    if (sub_1B211AF10(__dst))
    {
      break;
    }

    v1 += 184;
    v3 = sub_1B2119818(__dst);
    v4 = v3[1];
    v5 = *v3 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(v4) & 0xF;
    }
  }

  while (!v5);
  return v2 == 0;
}

uint64_t SQL.build(_:)(void *a1)
{
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  v9 = sub_1B2114D98(0, v3, v4, v5, v6, v7, v8);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v12 = sub_1B2117164(v11, v9, v10);
  v19 = sub_1B2119120(v12, v13, v14, v15, v16, v17, v18);
  if (!v1)
  {
    sub_1B211B048(a1);
  }

  return v19;
}

void static SQL.+ infix(_:_:)(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  sub_1B216CFB4(v2);
}

Swift::Void __swiftcall SQL.append(literal:)(GRDBInternal::SQL literal)
{

  sub_1B216CFB4(v1);
}

Swift::Void __swiftcall SQL.append(sql:arguments:)(Swift::String sql, GRDBInternal::StatementArguments arguments)
{
  object = sql._object;
  countAndFlagsBits = sql._countAndFlagsBits;
  v4 = *arguments.values._rawValue;
  v5 = *(arguments.values._rawValue + 1);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  __src[0] = countAndFlagsBits;
  __src[1] = object;
  __src[2] = v4;
  __src[3] = v5;
  sub_1B2114CC4(__src);
  memcpy((inited + 32), __src, 0xB8uLL);

  sub_1B216CFB4(inited);
}

uint64_t SQL.sqlSelection.getter()
{
  sub_1B21144C0();
  sub_1B216ED24(v1);
  memcpy(v0, __src, 0xB8uLL);
}

uint64_t sub_1B221BBD0(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF | 0x44000;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4;
  *(result + 2) = BYTE2(v4);
  return result;
}

void Sequence<>.joined(separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2116384();
  if (v9)
  {
    v10 = v8;
    v11 = v7;
    sub_1B21619D8(&qword_1EB7A30C0, &qword_1B2262928);
    v12 = sub_1B2112238();
    sub_1B2150D28(v12, v13, a3, v14, v15, a4, v16, v17);
    __src[0] = v11;
    __src[1] = v10;
    __src[2] = MEMORY[0x1E69E7CC0];
    __src[3] = MEMORY[0x1E69E7CC8];
    sub_1B2114CC4(__src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1B216E69C(__dst);

    v18 = sub_1B2122034();
    sub_1B221BED8(v18, v19);
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A30C0, &qword_1B2262928);
    sub_1B211783C(&qword_1EB7A30C8);
    sub_1B2112238();
    v20 = sub_1B2252530();
  }

  *v4 = v20;
}

void Collection<>.joined(separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2116384();
  if (v9)
  {
    v10 = v8;
    v11 = v7;
    sub_1B21619D8(&qword_1EB7A30C0, &qword_1B2262928);
    v12 = sub_1B2112238();
    sub_1B221B368(v12, v13, a3, v14, v15, a4, v16, v17);
    __src[0] = v11;
    __src[1] = v10;
    __src[2] = MEMORY[0x1E69E7CC0];
    __src[3] = MEMORY[0x1E69E7CC8];
    sub_1B2114CC4(__src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1B216E69C(__dst);

    v18 = sub_1B2122034();
    sub_1B221BED8(v18, v19);
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A30C0, &qword_1B2262928);
    sub_1B211783C(&qword_1EB7A30C8);
    sub_1B2112238();
    v20 = sub_1B2252530();
  }

  *v4 = v20;
}

void sub_1B221BED8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *(a1 + 32);

      for (i = 5; ; ++i)
      {
        sub_1B221C168(v4);
        if (1 - v3 + i == 5)
        {
          break;
        }

        if ((i - 4) >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * i);

        sub_1B221C4A4(v6);
      }
    }
  }

  else
  {

    v7 = 0;
    v8 = *(a1 + 16);
    while (1)
    {
      if (v8 == v7)
      {

        return;
      }

      if (v7 >= *(a1 + 16))
      {
        break;
      }

      v9 = v7 + 1;

      sub_1B221C168(v10);
      v7 = v9;
    }

LABEL_14:
    __break(1u);
  }
}

unint64_t sub_1B221C00C()
{
  result = qword_1EB7A30D0;
  if (!qword_1EB7A30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A30D0);
  }

  return result;
}

unint64_t sub_1B221C064()
{
  result = qword_1EB7A30D8;
  if (!qword_1EB7A30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A30D8);
  }

  return result;
}

unint64_t sub_1B221C0BC()
{
  result = qword_1EB7A30E0;
  if (!qword_1EB7A30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A30E0);
  }

  return result;
}

void *sub_1B221C120(void *result, char a2)
{
  v2 = result[13] & 1;
  v3 = result[20] & 0xE000000000FFC1FFLL;
  result[8] &= 1uLL;
  result[13] = v2;
  result[20] = v3 | ((a2 & 7) << 58);
  return result;
}

void sub_1B221C168(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v7 = *(v3 + 24) >> 1, v7 < v4 + v2))
  {
    sub_1B21542F0();
    v3 = *v1;
    v7 = *(*v1 + 24) >> 1;
  }

  v8 = v7 - *(v3 + 16);
  v9 = *(a1 + 16);
  if (v9)
  {
    if (v8 < v2)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    swift_arrayInitWithCopy();
    if (v2)
    {
      v10 = *(v3 + 16);
      v11 = __OFADD__(v10, v2);
      v12 = v10 + v2;
      if (v11)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      *(v3 + 16) = v12;
    }
  }

  else if (v2)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2 != v8)
  {

    goto LABEL_33;
  }

  v13 = *(v3 + 16);
  v14 = *(a1 + 16);
  if (v9 == v14)
  {
    sub_1B2171344(__src);
    goto LABEL_17;
  }

  if (v9 < v14)
  {
    v15 = a1 + 184 * v9;
    memcpy(__dst, (v15 + 32), sizeof(__dst));
    memcpy(__src, (v15 + 32), 0xB8uLL);
    ++v9;
    nullsub_1();
    sub_1B211AF1C(__dst, v26);
LABEL_17:
    v19 = a1 + 32;
    v20 = a1;
LABEL_18:
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1B213EA68(__dst) != 1)
    {
      if (v13 + 1 > *(v3 + 24) >> 1)
      {
        sub_1B21542F0();
      }

      v3 = *v1;
      v16 = *(*v1 + 24) >> 1;
      while (1)
      {
        for (i = 184 * v13 + 32; ; i += 184)
        {
          memcpy(v25, __src, sizeof(v25));
          memcpy(v26, __src, sizeof(v26));
          if (sub_1B213EA68(v26) == 1 || v13 >= v16)
          {
            *(v3 + 16) = v13;
            goto LABEL_18;
          }

          memcpy(v23, __src, sizeof(v23));
          memcpy(v24, v25, sizeof(v24));
          sub_1B211AF1C(v24, v22);
          sub_1B212AC5C(v23, &qword_1EB7A1240, &qword_1B2254A40);
          memcpy((v3 + i), v25, 0xB8uLL);
          if (v9 != v14)
          {
            break;
          }

          sub_1B2171344(v22);
          memcpy(__src, v22, 0xB8uLL);
          ++v13;
        }

        if (v9 >= *(v20 + 16))
        {
          break;
        }

        ++v13;
        memcpy(v22, (v19 + 184 * v9), sizeof(v22));
        memcpy(__src, (v19 + 184 * v9++), 0xB8uLL);
        nullsub_1();
        sub_1B211AF1C(v22, v21);
      }

      __break(1u);
      goto LABEL_35;
    }

    memcpy(v26, __src, sizeof(v26));
    sub_1B212AC5C(v26, &qword_1EB7A1240, &qword_1B2254A40);
LABEL_33:
    *v1 = v3;
    return;
  }

LABEL_39:
  __break(1u);
}

void sub_1B221C4A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v7 = *(v3 + 24) >> 1, v7 < (v4 + v2)))
  {
    sub_1B21542F0();
    v3 = *v1;
    v7 = *(*v1 + 24) >> 1;
  }

  v8 = *(v3 + 16);
  v9 = v7 - v8;
  if (v2)
  {
    if (v9 < v2)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    swift_arrayInitWithCopy();
    v10 = *(v3 + 16);
    v8 = v10 + v2;
    if (__OFADD__(v10, v2))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *(v3 + 16) = v8;
  }

  if (v2 != v9)
  {
LABEL_30:

    *v1 = v3;
    return;
  }

  v11 = *(a1 + 16);
  if (v2 == v11)
  {
    sub_1B2171344(__src);
    goto LABEL_14;
  }

  if (v2 < v11)
  {
    v12 = a1 + 184 * v2;
    memcpy(__dst, (v12 + 32), sizeof(__dst));
    memcpy(__src, (v12 + 32), 0xB8uLL);
    ++v2;
    nullsub_1();
    sub_1B211AF1C(__dst, v23);
LABEL_14:
    v17 = a1 + 32;
LABEL_15:
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1B213EA68(__dst) != 1)
    {
      if (v8 + 1 > *(v3 + 24) >> 1)
      {
        sub_1B21542F0();
      }

      v3 = *v1;
      v13 = *(*v1 + 24) >> 1;
      while (1)
      {
        for (i = 184 * v8 + 32; ; i += 184)
        {
          memcpy(v22, __src, sizeof(v22));
          memcpy(v23, __src, sizeof(v23));
          if (sub_1B213EA68(v23) == 1 || v8 >= v13)
          {
            *(v3 + 16) = v8;
            goto LABEL_15;
          }

          memcpy(v20, __src, sizeof(v20));
          memcpy(v21, v22, sizeof(v21));
          sub_1B211AF1C(v21, v19);
          sub_1B212AC5C(v20, &qword_1EB7A1240, &qword_1B2254A40);
          memcpy((v3 + i), v22, 0xB8uLL);
          v16 = *(a1 + 16);
          if (v2 != v16)
          {
            break;
          }

          sub_1B2171344(v19);
          memcpy(__src, v19, 0xB8uLL);
          ++v8;
        }

        if (v2 >= v16)
        {
          break;
        }

        ++v8;
        memcpy(v19, (v17 + 184 * v2), sizeof(v19));
        memcpy(__src, (v17 + 184 * v2++), 0xB8uLL);
        nullsub_1();
        sub_1B211AF1C(v19, v18);
      }

      __break(1u);
      goto LABEL_32;
    }

    memcpy(v23, __src, sizeof(v23));
    sub_1B212AC5C(v23, &qword_1EB7A1240, &qword_1B2254A40);
    goto LABEL_30;
  }

LABEL_35:
  __break(1u);
}

uint64_t TableRequest<>.matching(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v7[1];
  if (v12)
  {
    v13 = *v7;
    v19[1] = v9;
    v20 = v8;
    type metadata accessor for TableAlias();
    v14 = swift_allocObject();
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0;
    v22[0] = v13;
    v22[1] = v12;
    LOBYTE(v22[2]) = 2;
    sub_1B2127D7C(v22);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    memcpy((v15 + 24), v22, 0xA3uLL);
    v23[0] = v15;
    sub_1B21D0640(v23);
    memcpy(__dst, v23, sizeof(__dst));
    v16 = *(a4 + 16);

    v16(v17, a2, a4);
    v21[3] = &type metadata for SQLExpression;
    v21[4] = &protocol witness table for SQLExpression;
    v21[0] = swift_allocObject();
    memcpy((v21[0] + 16), __dst, 0xA3uLL);
    FilteredRequest.filter(_:)(v21, a2, v20);

    (*(v6 + 8))(v11, a2);
    return sub_1B2113208(v21);
  }

  else
  {

    return FilteredRequest.none()();
  }
}

{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v7[1];
  if (v12)
  {
    v13 = *v7;
    v19[1] = v9;
    v20 = v8;
    type metadata accessor for TableAlias();
    v14 = swift_allocObject();
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0;
    v22[0] = v13;
    v22[1] = v12;
    LOBYTE(v22[2]) = 2;
    sub_1B2127D7C(v22);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    memcpy((v15 + 24), v22, 0xA3uLL);
    v23[0] = v15;
    sub_1B21D0640(v23);
    memcpy(__dst, v23, sizeof(__dst));
    v16 = *(a4 + 16);

    v16(v17, a2, a4);
    v21[3] = &type metadata for SQLExpression;
    v21[4] = &protocol witness table for SQLExpression;
    v21[0] = swift_allocObject();
    memcpy((v21[0] + 16), __dst, 0xA3uLL);
    FilteredRequest.filter(_:)(v21, a2, v20);

    (*(v6 + 8))(v11, a2);
    return sub_1B2113208(v21);
  }

  else
  {

    return FilteredRequest.none()();
  }
}

uint64_t static TableRecord.matching(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  static TableRecord.all()(__src);
  v9[0] = v3;
  v9[1] = v4;
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a2, v5, v6);
  TableRequest<>.matching(_:)(v9, InterfaceRequest, &protocol witness table for QueryInterfaceRequest<A>, &protocol witness table for QueryInterfaceRequest<A>);
  memcpy(__dst, __src, 0xA2uLL);
  return (*(*(InterfaceRequest - 8) + 8))(__dst, InterfaceRequest);
}

{
  v3 = *a1;
  v4 = a1[1];
  static TableRecord.all()(__src);
  v9[0] = v3;
  v9[1] = v4;
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a2, v5, v6);
  TableRequest<>.matching(_:)(v9, InterfaceRequest, &protocol witness table for QueryInterfaceRequest<A>, &protocol witness table for QueryInterfaceRequest<A>);
  memcpy(__dst, __src, 0xA2uLL);
  return (*(*(InterfaceRequest - 8) + 8))(__dst, InterfaceRequest);
}

uint64_t ColumnExpression.match(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  (*(*(*(a3 + 8) + 8) + 8))(v9, a2);
  __src[0] = v6;
  __src[1] = v5;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(v8, __src, sizeof(v8));

  sub_1B21CF9AC(0x484354414DLL, 0xE500000000000000, v9, a4);
  memcpy(__dst, v8, 0xA3uLL);
  sub_1B21356F8(__dst);
  memcpy(v12, v9, 0xA3uLL);
  return sub_1B21356F8(v12);
}

{
  v6 = *a1;
  v5 = a1[1];
  (*(*(*(a3 + 8) + 8) + 8))(v11, a2);
  if (v5)
  {
    __src[0] = v6;
    __src[1] = v5;
    v7 = 2;
  }

  else
  {
    __src[0] = 0;
    __src[1] = 0;
    v7 = 4;
  }

  LOBYTE(__src[2]) = v7;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, sizeof(__dst));

  sub_1B21CF9AC(0x484354414DLL, 0xE500000000000000, v11, a4);
  memcpy(v9, __dst, 0xA3uLL);
  sub_1B21356F8(v9);
  memcpy(__src, v11, 0xA3uLL);
  return sub_1B21356F8(__src);
}

uint64_t sub_1B221CF80(uint64_t a1, uint64_t (*a2)(void *, uint64_t *))
{
  result = sub_1B2131DCC();
  v6 = a1 + 64;
  if (v7)
  {
    __break(1u);
    return 0;
  }

  else
  {
    while (*(a1 + 36) == v5)
    {
      v8 = 1 << *(a1 + 32);
      if (result == v8)
      {
        return 0;
      }

      if (result < 0 || result >= v8)
      {
        goto LABEL_26;
      }

      v25 = v5;
      v9 = result >> 6;
      v10 = 1 << result;
      if ((*(v6 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_27;
      }

      v26 = *(a1 + 36);
      v11 = (*(a1 + 48) + 16 * result);
      v12 = v11[1];
      v13 = result;
      v14 = *(*(a1 + 56) + 8 * result);
      v27[0] = *v11;
      v27[1] = v12;
      v28 = v14;

      v15 = a2(v27, &v28);

      if (v2)
      {
        return result;
      }

      if (v15)
      {
        return v13;
      }

      v16 = 1 << *(a1 + 32);
      if (v13 >= v16)
      {
        goto LABEL_28;
      }

      v6 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v9);
      if ((v17 & v10) == 0)
      {
        goto LABEL_29;
      }

      if (*(a1 + 36) != v26)
      {
        goto LABEL_30;
      }

      v18 = v17 & (-2 << (v13 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (a1 + 72 + 8 * v9);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1B21268C8(v13, v25, 0);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_1B21268C8(v13, v25, 0);
      }

LABEL_19:
      v5 = *(a1 + 36);
      result = v16;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

void Database.makeStatement(literal:)()
{
  sub_1B2118164();
  swift_allocObject();
  sub_1B2114D98(0, v2, v3, v4, v5, v6, v7);
  sub_1B2116B4C();
  sub_1B21159FC();
  type metadata accessor for SQLGenerationContext();
  v8 = swift_allocObject();

  v10 = sub_1B2117868(v9);
  v17 = sub_1B211D790(v10, v11, v12, v13, v14, v15, v16);
  if (v8)
  {
    goto LABEL_2;
  }

  sub_1B21144D4(v17, v18, v19, v20, v21, v22, v23, v24, v28[0]);

  sub_1B212641C(v1, v0, 0);

  if (!*(v28[0] + 16) && !*(v28[1] + 16))
  {

    goto LABEL_4;
  }

  v26 = v28;
  Statement.setArguments(_:)(*(&v25 - 1));

  if (v27)
  {
LABEL_2:
  }

LABEL_4:
  sub_1B2117E1C();
}

void Database.allStatements(sql:arguments:)()
{
  sub_1B2114908();
  v6 = v2;
  v7 = v3;
  v8 = v4;
  type metadata accessor for SQLStatementCursor();
  swift_allocObject();

  sub_1B211CF8C(v2);

  sub_1B211B748(v5, v1, v0, &v6, 0);
  sub_1B2117E1C();
}

uint64_t sub_1B221D424@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B211B804();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B221D474@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 112);
  *a2 = *(a1 + 104);
  a2[1] = v2;
}

uint64_t Database.statementDidFail(_:withResultCode:)(uint64_t a1, int a2)
{
  v4 = v2;
  v6 = sub_1B212DAF0();
  v8 = v7;
  v50 = v7;
  v9 = sub_1B221CF80(v7, sub_1B221D73C);
  if (v11 != -1)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v15 = sub_1B21619D8(&qword_1EB7A30E8, &qword_1B2265D08);
    sub_1B2115370(v15, v16, v17);
    sub_1B221D74C(v12, v13, v14);

    v8 = v50;
  }

  v18 = (v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  v19 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  v20 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache + 8);
  *v18 = v6;
  v18[1] = v8;
  sub_1B2120024(v19, v20);
  v21 = sub_1B212A5AC();
  v51 = v22;
  v23 = sub_1B221CF80(v22, sub_1B221D83C);
  if (v25 != -1)
  {
    v26 = v23;
    v27 = v24;
    v28 = v25;
    v29 = sub_1B21619D8(&qword_1EB7A30E8, &qword_1B2265D08);
    sub_1B2115370(v29, v30, v31);
    sub_1B221D74C(v26, v27, v28);
  }

  v32 = (v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  v33 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  v34 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache + 8);
  *v32 = v21;
  v32[1] = v51;
  v35 = sub_1B2120024(v33, v34);
  v37 = sub_1B211CD70(v35, v36);
  sub_1B21760F8();

  if (!v3)
  {
    v39 = Database.lastErrorMessage.getter();
    v41 = v40;
    Statement.sql.getter();
    sub_1B21159FC();
    v43 = *(a1 + 104);
    v42 = *(a1 + 112);
    v44 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 26);
    v45 = sub_1B21AC298();
    sub_1B21152FC(&type metadata for DatabaseError, v45);
    v47 = v46;
    if (v41)
    {
    }

    else
    {

      result = sqlite3_errstr(a2);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v39 = sub_1B22523F0();
      v41 = v48;
    }

    *v47 = a2;
    *(v47 + 8) = v39;
    *(v47 + 16) = v41;
    *(v47 + 24) = v3;
    *(v47 + 32) = v37;
    *(v47 + 40) = v43;
    *(v47 + 48) = v42;
    *(v47 + 56) = v44;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B221D74C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B21268C8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B221D858()
{
  sub_1B21619D8(&qword_1EB7A30F0, &qword_1B2265E10);
  swift_allocObject();
  result = sub_1B22520D0();
  qword_1ED85E820 = result;
  return result;
}

uint64_t sub_1B221D8A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_1B211539C(a1, a2, a3, a4, a5, a6, a7, a8, v22);
  v13 = *(v9 + 16);
  sub_1B2112E08(v12, v14, v15, v16);
  sub_1B21159D0(v9 + 16, v17);

  sub_1B2150300(v18);
  swift_endAccess();
  sub_1B2224610(v8, a4, a5);
  v20 = v19;
  *(v9 + 16) = v13;

  return v20 & 1;
}

uint64_t sub_1B221D98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v13 = sub_1B211539C(a1, a2, a3, a4, a5, a6, a7, a8, v22);
  v14 = *(v9 + 16);
  sub_1B2112E08(v13, v15, v16, v17);
  sub_1B21159D0(v9 + 16, v18);

  sub_1B2150300(v19);
  swift_endAccess();
  v20 = a6(v8, a4, a5);
  *(v9 + 16) = v14;

  return v20;
}

void sub_1B221DA58(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + 16);
  a2(v4);
  if (v2)
  {
    sub_1B21343E4(v4, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 119, a1);
  }

  else if (*(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 41) & 1) == 0 && (Database.isInsideTransaction.getter())
  {
    sub_1B2252EC0();
    __break(1u);
  }
}

void sub_1B221DB3C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v3 = *(a1 + 16);
  a2(&v4, v3);
  sub_1B21343E4(v3, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 119, a1);
}

uint64_t SQLOrdering.sqlOrdering.getter()
{
  sub_1B2111ADC();
  memcpy(v0, v1, v2);
  sub_1B2111ADC();
  memcpy(v3, v4, v5);
  return sub_1B214D958(v8, v7);
}

uint64_t sub_1B221DC30(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = (v2 | (*(result + 2) << 16)) & 0xF9BFFF;
  *result = v2 & 0xBFFF;
  *(result + 2) = BYTE2(v3);
  return result;
}

uint64_t sub_1B221DC58(uint64_t a1, int a2)
{
  v3 = *(a1 + 160);
  result = a1 + 160;
  v4 = *(result - 56) & 1;
  v5 = ((a2 << 16) | ((a2 & 1) << 14)) & 0x64000 | (v3 | (*(result + 2) << 16)) & 0xF981FF;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v5;
  *(result + 2) = BYTE2(v5);
  return result;
}

uint64_t static FTS3TokenizerDescriptor.simple.getter()
{
  if (qword_1EB7A0D70 != -1)
  {
    swift_once();
  }

  sub_1B21178CC(&qword_1EB7A30F8);
}

void sub_1B221DD2C()
{
  qword_1EB7A30F8 = 0x656C706D6973;
  unk_1EB7A3100 = 0xE600000000000000;
  qword_1EB7A3108 = MEMORY[0x1E69E7CC0];
}

void sub_1B221DD58()
{
  qword_1EB7A3110 = 0x726574726F70;
  *algn_1EB7A3118 = 0xE600000000000000;
  qword_1EB7A3120 = MEMORY[0x1E69E7CC0];
}

uint64_t static FTS3TokenizerDescriptor.porter.getter()
{
  if (qword_1EB7A0D78 != -1)
  {
    swift_once();
  }

  sub_1B21178CC(&qword_1EB7A3110);
}

void sub_1B221DE20(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v9 = a3;
  v12 = MEMORY[0x1E69E7CC0];
  if (*a1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (*a1 == 1)
    {
      goto LABEL_8;
    }

    sub_1B214400C();
    v13 = v14;
    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    v17 = v16 + 1;
    v18 = "remove_diacritics=2";
  }

  else
  {
    sub_1B214400C();
    v13 = v19;
    v16 = *(v19 + 16);
    v15 = *(v19 + 24);
    v17 = v16 + 1;
    v18 = "remove_diacritics=0";
  }

  v20 = v18 - 32;
  if (v16 >= v15 >> 1)
  {
    sub_1B214400C();
    v13 = v67;
  }

  *(v13 + 16) = v17;
  v21 = v13 + 16 * v16;
  *(v21 + 32) = 0xD000000000000013;
  *(v21 + 40) = v20 | 0x8000000000000000;
LABEL_8:
  if (*(a2 + 16))
  {
    sub_1B219C6B0(a2, a2, a3, a4, a5, a6, a7, a8, v72, v73);
    v27 = v26;
    v28 = *(v26 + 16);
    if (v28)
    {
      v72 = v9;
      v73 = a9;
      sub_1B2116B10(0, v28, 0, v22, v23, v24, v25);
      v29 = v12;
      v30 = (v27 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        v34 = *(v29 + 16);
        v33 = *(v29 + 24);

        if (v34 >= v33 >> 1)
        {
          sub_1B2116B10(v33 > 1, v34 + 1, 1, v35, v36, v37, v38);
        }

        *(v29 + 16) = v34 + 1;
        v39 = v29 + 16 * v34;
        *(v39 + 32) = v31;
        *(v39 + 40) = v32;
        v30 += 2;
        --v28;
      }

      while (v28);

      v9 = v72;
      a9 = v73;
      v12 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v40 = sub_1B2252250();
    v42 = v41;

    MEMORY[0x1B2741EB0](v40, v42);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B214400C();
      v13 = v68;
    }

    v43 = *(v13 + 16);
    if (v43 >= *(v13 + 24) >> 1)
    {
      sub_1B214400C();
      v13 = v69;
    }

    *(v13 + 16) = v43 + 1;
    v44 = v13 + 16 * v43;
    *(v44 + 32) = 0x6F74617261706573;
    *(v44 + 40) = 0xEB000000003D7372;
  }

  if (*(v9 + 16))
  {
    sub_1B219C6B0(v9, a2, a3, a4, a5, a6, a7, a8, v72, v73);
    v50 = v49;
    v51 = *(v49 + 16);
    if (v51)
    {
      sub_1B2116B10(0, v51, 0, v45, v46, v47, v48);
      v52 = (v50 + 40);
      do
      {
        v53 = *(v52 - 1);
        v54 = *v52;
        v56 = *(v12 + 16);
        v55 = *(v12 + 24);

        if (v56 >= v55 >> 1)
        {
          sub_1B2116B10(v55 > 1, v56 + 1, 1, v57, v58, v59, v60);
        }

        *(v12 + 16) = v56 + 1;
        v61 = v12 + 16 * v56;
        *(v61 + 32) = v53;
        *(v61 + 40) = v54;
        v52 += 2;
        --v51;
      }

      while (v51);
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v62 = sub_1B2252250();
    v64 = v63;

    MEMORY[0x1B2741EB0](v62, v64);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B214400C();
      v13 = v70;
    }

    v65 = *(v13 + 16);
    if (v65 >= *(v13 + 24) >> 1)
    {
      sub_1B214400C();
      v13 = v71;
    }

    *(v13 + 16) = v65 + 1;
    v66 = v13 + 16 * v65;
    *(v66 + 32) = 0x6168636E656B6F74;
    *(v66 + 40) = 0xEB000000003D7372;
  }

  *a9 = 0x3665646F63696E75;
  a9[1] = 0xE900000000000031;
  a9[2] = v13;
}

uint64_t sub_1B221E2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(a1 + 24);
    sub_1B2111808();
    (*(v8 + 32))(a2, v3, v7);
    return swift_willThrowTypedImpl();
  }

  else
  {
    sub_1B2111808();
    return (*(v10 + 32))(a3, v3);
  }
}

void sub_1B221E3E4(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v3 = v2;
  v12 = a1;
  v4 = sub_1B22520F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 24);
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B22546B0;
  v10 = v8;
  sub_1B22520E0();
  v17 = v9;
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  sub_1B2252BC0();
  v14 = v12;
  v15 = v13;
  v16 = v3;
  sub_1B21619D8(&qword_1EB7A3140, &qword_1B2269BF8);
  sub_1B2252A40();
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B221E63C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(&v7, a3 + 16);
  result = swift_endAccess();
  if (!v3)
  {
    return v7;
  }

  return result;
}

void *DatabasePool.makeSnapshot()()
{
  v1 = type metadata accessor for Configuration(0);
  v2 = sub_1B2111894(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B2111844();
  v5 = v4 - v3;
  v6 = *(v0 + 16);
  if (sub_1B212B3F8() & 1) != 0 && (sub_1B22247F4("/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 209, v6), (Database.isInsideTransaction.getter()))
  {
    sub_1B2116728();
    sub_1B2112A88();
    sub_1B21144F4();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v8 = v6[3];
    v7 = v6[4];
    sub_1B212392C(v6[2] + OBJC_IVAR____TtC12GRDBInternal8Database_configuration, v5);

    sub_1B21713E8(v9);

    v10 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v10);

    type metadata accessor for DatabaseSnapshot();
    swift_allocObject();
    return sub_1B21EF594(v8, v7, v5, 0xD000000000000011, 0x80000001B22702F0, 0x746F687370616E73, 0xE90000000000002ELL);
  }

  return result;
}

uint64_t DatabasePool.concurrentRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch_semaphore_create(0);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v7 = sub_1B2253480();
  sub_1B2252B00();
  v8 = swift_allocBox();
  sub_1B21117B4(v9, 1, 1, v7);
  sub_1B2117E34();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v8;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v6;

  v11 = v6;
  DatabasePool.asyncConcurrentRead(_:)(sub_1B2220A80, v10);

  type metadata accessor for DatabaseFuture(0, a3, v12, v13);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v11;
  v14[4] = v8;
  return sub_1B2166088();
}

uint64_t DatabasePool.path.getter()
{
  v1 = *(*(v0 + 16) + 24);

  return v1;
}

uint64_t DatabasePool.__allocating_init(path:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2114ED8();
  v6 = swift_allocObject();
  DatabasePool.init(path:configuration:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1B221EAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E7CC0];
  v7[1] = MEMORY[0x1E69E7CC8];
  v4._object = 0x80000001B2270570;
  v5 = v7;
  v4._countAndFlagsBits = 0xD000000000000050;
  Database.execute(sql:arguments:)(v4, *(&a4 - 1));

  return 0;
}

uint64_t DatabasePool.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  *(v0 + 24) = 0;

  return v0;
}

uint64_t DatabasePool.__deallocating_deinit()
{
  DatabasePool.deinit();
  v0 = sub_1B2114ED8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t DatabasePool.asyncBarrierWriteWithoutTransaction(_:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 24))
  {
    v4 = result;
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = v4;
    v5[4] = a2;

    sub_1B2220394(sub_1B2220AB4, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DatabasePool.releaseMemoryEventually()()
{
  if (*(v0 + 24))
  {

    sub_1B2120468();
  }

  sub_1B2223DB4(sub_1B221ED3C, 0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabasePool.close()()
{
  if (*(v0 + 24))
  {
    (MEMORY[0x1EEE9AC00])();
    v1[2] = sub_1B2220AC0;
    v1[3] = v0;

    sub_1B2120064(sub_1B2220ADC, v1);
  }
}

uint64_t sub_1B221EE0C(uint64_t a1)
{
  result = sub_1B2113C20(sub_1B22213A4, 0);
  if (!v1)
  {
    if (*(a1 + 24))
    {

      sub_1B212BA0C(sub_1B221EEB0, 0);
    }

    *(a1 + 24) = 0;
  }

  return result;
}

Swift::Void __swiftcall DatabasePool.interrupt()()
{
  sub_1B2223D70();
  if (*(v0 + 24))
  {

    sub_1B212BA0C(sub_1B221EF7C, 0);
  }
}

uint64_t sub_1B221EFA8()
{
  v0 = type metadata accessor for Configuration(0);
  v1 = sub_1B2111894(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1B2111844();
  v4 = v3 - v2;
  DatabasePool.configuration.getter(v3 - v2);
  v5 = *(v4 + 1);
  result = sub_1B2133D70(v4);
  if ((v5 & 1) == 0)
  {
    return sub_1B2237EC0();
  }

  return result;
}

uint64_t sub_1B221F02C()
{
  v0 = type metadata accessor for Configuration(0);
  v1 = sub_1B2111894(v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1B2111844();
  v4 = v3 - v2;
  DatabasePool.configuration.getter(v3 - v2);
  v5 = *(v4 + 1);
  result = sub_1B2133D70(v4);
  if ((v5 & 1) == 0)
  {
    return sub_1B2238460(0);
  }

  return result;
}

uint64_t sub_1B221F0EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1B2251BA0();
  sub_1B211280C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B2111844();
  v11 = v10 - v9;
  sub_1B2251B90();

  a4(v11);

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_1B221F1F0(void *a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void *, uint64_t))
{
  v11 = 0;
  Database.beginTransaction(_:)(&v11);
  if (v7)
  {
    v8 = v7;
    a4(v7, 1);
  }

  else
  {
    sub_1B212AB84();
    a4(a1, 0);
  }

  Database.commit()();
  if (v9)
  {
  }

  return a2();
}

uint64_t sub_1B221F2D8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B22520F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B2252120();
  v9 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 64);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_1B22212AC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F29759E0;
  v13 = _Block_copy(aBlock);

  sub_1B2252100();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

void sub_1B221F5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a2;
  v4[4] = a3;
  sub_1B2111304(sub_1B2221290, v4, a4);
}

void sub_1B221F644(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 24))
  {
    sub_1B2111904();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    sub_1B221F2D8(a4, v8);
  }

  else
  {
    sub_1B21AC298();
    sub_1B2118078();
    v9 = swift_allocError();
    *v10 = 21;
    *(v10 + 8) = 0xD000000000000014;
    *(v10 + 16) = 0x80000001B226DEC0;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0;
    a1(v9, 1);
  }
}

void sub_1B221F75C(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v12 = v9;
    sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    swift_willThrowTypedImpl();
    v13 = v9;
    a2(v9, 1);
    v14 = sub_1B211491C();
    sub_1B22211EC(v14, v15, v16, 1);
    v17 = sub_1B211491C();
    sub_1B22211EC(v17, v18, v19, 1);
  }

  else
  {
    sub_1B2111904();
    v22 = swift_allocObject();
    *(v22 + 16) = v10;
    *(v22 + 24) = v11;
    sub_1B2113B74();
    v23 = swift_allocObject();
    v23[2] = a6;
    v23[3] = v22;
    v23[4] = a2;
    v23[5] = a3;
    v24 = sub_1B211491C();
    sub_1B2221244(v24, v25, v26, 0);

    sub_1B2223DB4(a7, v23);
  }
}

uint64_t sub_1B221F8C4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  sub_1B212AB84();
  v7 = a4(a1, 0);
  return a2(v7);
}

uint64_t DatabasePool.unsafeReentrantRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1B212B634(a1))
  {
    sub_1B2224248();
  }

  else if (*(v3 + 24))
  {
    MEMORY[0x1EEE9AC00](0);
    v9[2] = a3;
    v9[3] = a1;
    v9[4] = a2;

    sub_1B212B78C(sub_1B2220BD4, v9);
  }

  else
  {
    sub_1B21AC298();
    sub_1B2118078();
    swift_allocError();
    sub_1B21ABD9C(v8);
    return swift_willThrow();
  }
}

void sub_1B221FA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a2;
  v4[4] = a3;
  sub_1B2111304(sub_1B22213D8, v4, a4);
}

uint64_t sub_1B221FAE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[1] = a6;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v12 = sub_1B2253480();
  v13 = sub_1B2252B00();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - v15;
  v17 = swift_projectBox();
  v20[6] = a5;
  v20[7] = a1;
  v21 = a2 & 1;
  v20[4] = a7;
  v20[5] = a4;
  v18 = sub_1B21619D8(&qword_1EB7A10A0, &qword_1B2254848);
  sub_1B2221510(sub_1B2221348, v18, v16);
  sub_1B21117B4(v16, 0, 1, v12);
  swift_beginAccess();
  (*(v14 + 40))(v17, v16, v13);
  return sub_1B2252AA0();
}

uint64_t DatabasePool.asyncConcurrentRead(_:)(void (*a1)(void *, uint64_t), uint64_t a2)
{
  v5 = sub_1B2252140();
  sub_1B211280C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B2111844();
  v11 = v10 - v9;
  sub_1B22247F4("/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 209, *(v2 + 16));
  if (Database.isInsideTransaction.getter())
  {
    sub_1B2116728();
    sub_1B2112A88();
    sub_1B21144F4();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v12 = dispatch_semaphore_create(0);
    if (*(v2 + 24))
    {

      sub_1B21619D8(&qword_1EB7A3138, &qword_1B2269B80);
      sub_1B2252A50();
      sub_1B2111904();
      v16 = swift_allocObject();
      *(v16 + 16) = v20;
      sub_1B2117E34();
      v17 = swift_allocObject();
      v17[2] = sub_1B212E038;
      v17[3] = v16;
      v17[4] = v12;
      v17[5] = a1;
      v17[6] = a2;

      v18 = v12;

      sub_1B2223DB4(sub_1B22210D4, v17);
    }

    else
    {
      sub_1B21AC298();
      sub_1B2118078();
      v13 = swift_allocError();
      sub_1B21ABD9C(v14);
      swift_willThrow();
      sub_1B2252AA0();
      v15 = v13;
      a1(v13, 1);
    }

    sub_1B2252130();
    sub_1B2252A80();

    return (*(v7 + 8))(v11, v5);
  }

  return result;
}

uint64_t sub_1B221FFD4@<X0>(uint64_t a3@<X8>)
{
  v15 = a3;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v3 = sub_1B2253480();
  v4 = sub_1B2252B00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = sub_1B2252140();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  sub_1B2252130();
  sub_1B2252A80();
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  (*(v5 + 16))(v7, v12, v4);
  result = sub_1B2122A98(v7, 1, v3);
  if (result != 1)
  {
    return sub_1B221E2B4(v3, &v16, v15);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B22201E4(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  v12 = 0;
  Database.beginTransaction(_:)(&v12);
  if (v8)
  {
    sub_1B2252AA0();
    v9 = v8;
    a5(v8, 1);
  }

  else
  {
    sub_1B212AB84();
    sub_1B2252AA0();
    a5(a1, 0);
  }

  Database.commit()();
  if (v10)
  {
  }

  return a2();
}

Swift::Void __swiftcall DatabasePool.invalidateReadOnlyConnections()()
{
  if (*(v0 + 24))
  {

    sub_1B2120468();
  }
}

uint64_t sub_1B2220340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  return sub_1B2113C20(sub_1B2221320, v4);
}

uint64_t sub_1B2220394(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18 = a1;
  v19 = a2;
  v20 = sub_1B2252120();
  v4 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B22520F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 56);
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B22546B0;
  sub_1B22520E0();
  aBlock[0] = v11;
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  sub_1B2252BC0();
  v12 = swift_allocObject();
  v13 = v18;
  v14 = v19;
  v12[2] = v3;
  v12[3] = v13;
  v12[4] = v14;
  aBlock[4] = sub_1B2221314;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2975A80;
  v15 = _Block_copy(aBlock);

  sub_1B2252100();
  MEMORY[0x1B2742540](0, v6, v10, v15);
  _Block_release(v15);
  (*(v4 + 8))(v6, v20);
  (*(v8 + 8))(v10, v7);
}

uint64_t DatabasePool.writeInTransaction(_:_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4[16] = *a1;
  v5 = a2;
  v6 = a3;
  return sub_1B2113C20(sub_1B21E96E0, v4);
}

void DatabasePool._add<A>(observation:scheduling:onChange:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = type metadata accessor for Configuration(0);
  v10 = sub_1B2111894(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v13 = v12 - v11;
  v14 = a1[80];
  DatabasePool.configuration.getter(v12 - v11);
  v15 = *(v13 + 1);
  sub_1B2133D70(v13);
  if (v15 == 1)
  {
    memcpy(__dst, a1, sizeof(__dst));
    sub_1B2112E34();
    sub_1B2112250();
    sub_1B22216F8(v16, v17, v18, v19, v8, a5, v20, a6, v21);
  }

  else
  {
    memcpy(__dst, a1, sizeof(__dst));
    sub_1B2112E34();
    sub_1B2112250();
    if (v14)
    {
      sub_1B2163818();
    }

    else
    {
      sub_1B2220884(v22, v23, v24, v25, a5, a6, v26);
    }
  }
}

uint64_t sub_1B2220884@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a4;
  v28 = a6;
  v34 = a3;
  v35 = a7;
  v31 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x50uLL);
  v10 = __dst[0];
  v11 = __dst[1];
  v12 = __dst[2];
  v13 = __dst[3];
  v14 = __dst[4];
  v15 = __dst[5];
  v16 = __dst[6];
  v27 = __dst[8];
  v25 = __dst[7];
  v26 = __dst[9];
  v17 = a1[11];
  v29 = a1[12];
  type metadata accessor for ValueConcurrentObserver(0, a5, v28, v18);
  sub_1B2112328(v10, v11);
  sub_1B2112328(v12, v13);
  sub_1B2112328(v14, v15);
  sub_1B2112328(v16, v25);
  sub_1B2112328(v27, v26);
  sub_1B2167008(v17);
  v19 = v32;

  v20 = v31;

  v22 = v30;
  v29(v21);
  v23 = v33;

  sub_1B220AB7C(v19, v20, v17, v22, __dst, v34, v23);
  sub_1B220B674();
}

uint64_t sub_1B2220ADC@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1B2220BF0(uint64_t a1)
{
  v3 = *(a1 + 40);
  sub_1B2252A90();
  v4 = *(a1 + 48);
  dispatch_group_enter(v4);

  sub_1B221E3E4(sub_1B2221150, a1);
  if (v1)
  {

    v6 = v3;
    sub_1B2252AA0();
    dispatch_group_leave(v4);
    swift_willThrow();
  }

  else
  {
    v7 = v5;

    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = v7;
    v6 = *(v7 + 16);
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B222116C;
    *(v9 + 24) = v8;
  }

  return v6;
}

uint64_t sub_1B2220D24(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  result = sub_1B2116B08();
  v8 = result;
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
      (*(a2 + 16))(&v13);
      if (!v2)
      {
        v10 = v13;
        sub_1B21619D8(&qword_1EB7A3140, &qword_1B2269BF8);
        v3 = swift_allocObject();
        *(v3 + 16) = v10;
        *(v3 + 24) = 0;

        MEMORY[0x1B2742060](v11);
        sub_1B212B4C4(*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1B2252630();
        v12 = *a1;

        *a1 = v12;
      }

      return v3;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B27427E0](i, v6);
      v3 = result;
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v3 = *(v6 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v3 + 24))
    {
      *(v3 + 24) = 0;
      return v3;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_1B2220E94(uint64_t a1)
{

  sub_1B2120530();

  sub_1B2252AA0();
  v2 = *(v1 + 48);

  dispatch_group_leave(v2);
}

void sub_1B2220F30(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = sub_1B2220FC4(a3);
  v6 = v5;
  v9[0] = v4;
  v9[1] = v5;
  v8 = v7;
  v9[2] = v7;
  v10 = 0;
  a1(v9);

  sub_1B22211EC(v4, v6, v8, 0);
}

uint64_t sub_1B2220FC4(uint64_t a1)
{
  sub_1B21619D8(&qword_1EB7A3138, &qword_1B2269B80);
  result = sub_1B2252A50();
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1B2221088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B2220BF0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1B2221124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B2220D24(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B22211A0@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1B221E63C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void sub_1B22211EC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

id sub_1B2221244(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_1B22212B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B22212DC()
{

  sub_1B2114ED8();

  return swift_deallocObject();
}

uint64_t sub_1B2221360(void *a1)
{
  result = (*(v1 + 24))(*(v1 + 40));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_1B222140C(uint64_t a1, uint64_t a2)
{
  sub_1B2111808();
  (*(v3 + 32))();

  return MEMORY[0x1EEE6DEE0](a2);
}

uint64_t sub_1B2221480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_allocError();
  sub_1B2111808();
  (*(v7 + 32))();

  return MEMORY[0x1EEE6DEE8](a2, v6);
}

uint64_t sub_1B2221510@<X0>(void (*a1)(uint64_t)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  sub_1B21115E0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v13 = v12 - v11;
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = a2[3];
    sub_1B2111808();
    (*(v21 + 32))(a4, v17, v20);
    sub_1B2253480();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v9 + 32))(v13, v17, v7);
    a1(v13);
    return (*(v9 + 8))(v13, v7);
  }
}

uint64_t sub_1B22216F8@<X0>(const void *a1@<X0>, void *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v39 = a5;
  v38 = a4;
  v37 = a3;
  v40 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v36 = v15;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  memcpy(__dst, a1, sizeof(__dst));
  v19 = a2[5];
  v20 = a2[6];
  sub_1B21139A0(a2 + 2, v19);
  v21 = (*(v20 + 16))(v19, v20);
  if (v21)
  {
    v22 = v37;
    v23 = MEMORY[0x1EEE9AC00](v21);
    *(&v36 - 6) = v39;
    *(&v36 - 5) = a6;
    *(&v36 - 4) = a7;
    *(&v36 - 3) = a8;
    *(&v36 - 2) = __dst;
    (*(a7 + 64))(sub_1B2223BE4, v23);
    v22(v18);
    (*(v36 + 8))(v18, AssociatedTypeWitness);
    v31 = type metadata accessor for AnyDatabaseCancellable();
    sub_1B2111904();
    swift_allocObject();
    v32 = nullsub_1;
    v33 = 0;
  }

  else
  {
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v25 = swift_allocObject();
    v26 = v39;
    v25[2] = v39;
    v25[3] = a6;
    v25[4] = a7;
    v25[5] = a8;
    v25[6] = v24;
    memcpy(v25 + 7, a1, 0x70uLL);
    v27 = v37;
    v25[21] = a2;
    v25[22] = v27;
    v25[23] = v38;
    v28 = *(a7 + 40);

    type metadata accessor for ValueObservation(0, a6, a8, v29);
    sub_1B2111808();
    (*(v30 + 16))(v41, __dst);

    v28(sub_1B2223B98, v25, v26, a7);

    v31 = type metadata accessor for AnyDatabaseCancellable();
    sub_1B2111904();
    swift_allocObject();
    v32 = sub_1B2223BDC;
    v33 = v24;
  }

  result = AnyDatabaseCancellable.init(cancel:)(v32, v33);
  v35 = v40;
  v40[3] = v31;
  v35[4] = &protocol witness table for AnyDatabaseCancellable;
  *v35 = result;
  return result;
}

uint64_t DatabaseReader.backup(to:pagesPerStep:progress:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v16[2] = a6;
  v16[3] = a7;
  v17 = v7;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  return (*(a2 + 24))(sub_1B2221B74, v16, MEMORY[0x1E69E7CA8] + 8, ObjectType, a2);
}

uint64_t sub_1B2221BB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  return (*(a8 + 32))(sub_1B2223B60, v9, MEMORY[0x1E69E7CA8] + 8, a7, a8);
}

uint64_t DatabaseReader.read<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_1B2114EC8();
}

uint64_t sub_1B2221C78()
{
  sub_1B2111F08();
  v1 = swift_task_alloc();
  sub_1B21164D4(v1);
  v2 = sub_1B2115B50();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1B2221D28;
  sub_1B2115F94();

  return v3();
}

uint64_t sub_1B2221D28()
{
  sub_1B2111F08();
  v2 = *v1;
  sub_1B2112260();
  *v3 = v2;
  v4 = *v1;
  sub_1B2112260();
  *v5 = v4;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B216728C, 0, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1B2221E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v14 = *(a7 + 40);

  v14(sub_1B2223D6C, v13, a5, a7);
}

uint64_t DatabaseReader.unsafeRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_1B2114EC8();
}

uint64_t sub_1B2221F58()
{
  sub_1B2111F08();
  v1 = swift_task_alloc();
  sub_1B21164D4(v1);
  v2 = sub_1B2115B50();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1B2222008;
  sub_1B2115F94();

  return v3();
}

uint64_t sub_1B2222008()
{
  sub_1B2111F08();
  v2 = *v1;
  sub_1B2112260();
  *v3 = v2;
  v4 = *v1;
  sub_1B2112260();
  *v5 = v4;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B216439C, 0, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1B2222138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v14 = *(a7 + 56);

  v14(sub_1B2223B34, v13, a5, a7);
}

uint64_t sub_1B2222230(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B2111808();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v14 = v13 - v12;
  if (v15)
  {
    v16 = a1;
    sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    swift_willThrowTypedImpl();
    v19 = a1;
    v17 = sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    return sub_1B2221480(&v19, a3, a7, v17, MEMORY[0x1E69E7288]);
  }

  else
  {
    v11(a1);
    sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    return sub_1B222140C(v14, a3);
  }
}

void DatabaseReader.readPublisher<A>(value:)()
{
  sub_1B2114244();
  v5 = v4;
  v7 = v6;
  v8 = sub_1B2111770();
  v9 = sub_1B2252A30();
  v11 = v9;
  v10 = sub_1B216520C();
  DatabaseReader.readPublisher<A, B>(receiveOn:value:)(&v11, v5, v3, v2, v8, v1, v0, v10, v7);
}

uint64_t DatabaseReader.readPublisher<A, B>(receiveOn:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v35 = a4;
  v38 = a3;
  v39 = a7;
  v37 = a2;
  v43 = a1;
  v44 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2252B00();
  sub_1B21115E0();
  v41 = v13;
  v42 = v12;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  v33 = v32 - v15;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2252060();
  v32[1] = swift_getWitnessTable();
  v16 = sub_1B2252090();
  sub_1B21115E0();
  v34 = v17;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v32 - v19;
  v32[0] = swift_getWitnessTable();
  v45[0] = v16;
  v45[1] = a5;
  v45[2] = v32[0];
  v45[3] = a8;
  v21 = type metadata accessor for ReceiveValuesOn(0, v45);
  sub_1B21115E0();
  v23 = v22;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v32 - v25;
  v27 = swift_allocObject();
  v27[2] = v35;
  v27[3] = a5;
  v28 = v39;
  v27[4] = a6;
  v27[5] = v28;
  v27[6] = a8;
  v29 = v37;
  v27[7] = v36;
  v27[8] = v29;
  v27[9] = v38;
  swift_unknownObjectRetain();

  sub_1B2252080();
  v30 = v33;
  sub_1B21117B4(v33, 1, 1, AssociatedTypeWitness);
  sub_1B21EFFCC(v43, v30, v16, a5, v32[0], a8, v26);
  (*(v41 + 8))(v30, v42);
  (*(v34 + 8))(v20, v16);
  swift_getWitnessTable();
  *v44 = sub_1B22520B0();
  return (*(v23 + 8))(v26, v21);
}

uint64_t sub_1B2222774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2252060();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a8;
  v17[7] = a1;
  v17[8] = a2;
  v17[9] = a3;
  swift_unknownObjectRetain();

  result = sub_1B2252070();
  *a9 = result;
  return result;
}

uint64_t sub_1B2222880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a10;
  v17[7] = a1;
  v17[8] = a2;
  v17[9] = a4;
  v17[10] = a5;
  v18 = *(a9 + 40);

  v18(sub_1B2223AA0, v17, a6, a9);
}

uint64_t sub_1B2222970(uint64_t a1, char a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = a5;
  v22 = a6;
  v23 = a4;
  v24 = a3;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v15 = sub_1B2253480();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  v32 = a1;
  v33 = a2 & 1;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v30 = v21;
  v31 = v22;
  v19 = sub_1B21619D8(&qword_1EB7A10A0, &qword_1B2254848);
  sub_1B2221510(sub_1B2223AE0, v19, v18);
  v24(v18);
  return (*(v16 + 8))(v18, v15);
}

uint64_t DatabasePublishers.Read.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  v10 = sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);

  return MEMORY[0x1EEDB5BC8](a1, v8, v9, v10, a3, a4);
}

uint64_t sub_1B2222C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10[7] = a1;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_1B212B00C(1, sub_1B2223C08, v10, AssociatedTypeWitness, a7);
}

uint64_t sub_1B2222C9C@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  memcpy(v12, __src, sizeof(v12));
  v10 = type metadata accessor for ValueObservation(0, a3, a4, v9);
  return sub_1B21ADCF4(a2, v10, a5);
}

uint64_t sub_1B2222D1C(uint64_t a1, char a2, uint64_t a3, char *a4, uint64_t a5, void *a6, uint64_t a7, char *a8, char *a9, uint64_t a10, uint64_t a11)
{
  v49 = a8;
  v53 = a7;
  v50 = a6;
  v51 = a5;
  v54 = a4;
  v48 = a11;
  swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v52 = sub_1B2253480();
  v14 = *(v52 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v52);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    v43 = &v43;
    v45 = a10;
    v55 = a1;
    v56 = a2 & 1;
    MEMORY[0x1EEE9AC00](result);
    v20 = v49;
    *(&v43 - 6) = v49;
    *(&v43 - 5) = a9;
    v44 = a9;
    v21 = v48;
    *(&v43 - 4) = v22;
    *(&v43 - 3) = v21;
    v23 = v14;
    v24 = a3;
    v25 = v21;
    *(&v43 - 2) = v54;
    v26 = sub_1B21619D8(&qword_1EB7A10A0, &qword_1B2254848);
    v47 = v18;
    sub_1B2221510(sub_1B2223C2C, v26, v18);
    v27 = v23;
    v28 = *(v23 + 16);
    v29 = v52;
    v28(&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v52);
    v30 = *(v27 + 80);
    v43 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v27;
    v46 = v27;
    v32 = (v30 + 72) & ~v30;
    v33 = (v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 2) = v20;
    v35 = v44;
    v36 = v45;
    *(v34 + 3) = v44;
    *(v34 + 4) = v36;
    *(v34 + 5) = v25;
    *(v34 + 6) = v24;
    v37 = v53;
    *(v34 + 7) = v50;
    *(v34 + 8) = v37;
    (*(v31 + 32))(&v34[v32], v43, v29);
    v38 = v54;
    memcpy(&v34[v33], v54, 0x70uLL);
    v39 = *(v51 + 40);
    v40 = *(v51 + 48);
    v50 = sub_1B21139A0((v51 + 16), v39);
    v51 = *(v40 + 8);

    v42 = type metadata accessor for ValueObservation(0, v35, v25, v41);
    (*(*(v42 - 8) + 16))(&v55, v38, v42);
    (v51)(sub_1B2223C3C, v34, v39, v40);

    return (*(v46 + 8))(v47, v29);
  }

  return result;
}

uint64_t sub_1B222310C@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  return sub_1B21E89EC(sub_1B2223D44, a3);
}

uint64_t sub_1B22231B0@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, void *a5@<X6>, uint64_t a6@<X8>)
{
  memcpy(v15, __src, sizeof(v15));
  v13 = type metadata accessor for ValueObservation(0, a3, a4, v12);
  result = sub_1B21ADCF4(a2, v13, a6);
  if (v6)
  {
    *a5 = v6;
  }

  return result;
}

uint64_t sub_1B2223240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[0] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v12 = sub_1B2253480();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v21 - v18;
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(v13 + 16))(v15, a4, v12);
    sub_1B221E2B4(v12, &v22, v19);
    (v21[0])(v19);
    return (*(v16 + 8))(v19, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1B2223468(uint64_t a1)
{
  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t AnyDatabaseReader.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B2111904();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AnyDatabaseReader.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AnyDatabaseReader.configuration.getter()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyDatabaseReader.close()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(ObjectType, v1);
}

Swift::Void __swiftcall AnyDatabaseReader.interrupt()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 24))(ObjectType, v1);
}

uint64_t AnyDatabaseReader.read<A>(_:)()
{
  sub_1B21153E4();
  v0 = sub_1B21178EC();
  return v1(v0);
}

uint64_t AnyDatabaseReader.asyncRead(_:)()
{
  sub_1B2117E40();
  v0 = sub_1B211D7C4();
  return v1(v0);
}

uint64_t AnyDatabaseReader.unsafeRead<A>(_:)()
{
  sub_1B21153E4();
  v0 = sub_1B21178EC();
  return v1(v0);
}

uint64_t AnyDatabaseReader.asyncUnsafeRead(_:)()
{
  sub_1B2117E40();
  v0 = sub_1B211D7C4();
  return v1(v0);
}

uint64_t AnyDatabaseReader.unsafeReentrantRead<A>(_:)()
{
  sub_1B21153E4();
  v0 = sub_1B21178EC();
  return v1(v0);
}

uint64_t AnyDatabaseReader._add<A>(observation:scheduling:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2114244();
  memcpy(v16, v12, sizeof(v16));
  v13 = *(v6 + 24);
  ObjectType = swift_getObjectType();
  return (*(v13 + 72))(v16, v10, v9, v8, v7, a6, ObjectType, v13);
}

uint64_t AnyDatabaseReader.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_1B2111904();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B22239C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B2223AF4(void *a1)
{
  result = (*(v1 + 56))(*(v1 + 72));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_1B2223C3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v5 = *(sub_1B2253480() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  return sub_1B2223240(v0[6], v0[7], v0[8], v0 + v6, v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8), v1, v2, v3, v4);
}

void sub_1B2223D70()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  sqlite3_interrupt(*(v1 + 16));
}

uint64_t sub_1B2223DB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B22520F0();
  sub_1B211280C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B2252120();
  sub_1B211280C();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v2;
  aBlock[4] = sub_1B2224994;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2975CB8;
  v18 = _Block_copy(aBlock);

  sub_1B2252100();
  v20[1] = MEMORY[0x1E69E7CC0];
  sub_1B212C084();
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B212C0DC();
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v16, v10, v18);
  _Block_release(v18);
  (*(v7 + 8))(v10, v5);
  (*(v13 + 8))(v16, v11);
}

uint64_t sub_1B222401C(uint64_t a1)
{
  type metadata accessor for SchedulingWatchdog();
  if (!sub_1B21114CC())
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1B21619D8(&qword_1EB7A3148, &qword_1B2269C00);
    result = sub_1B2252A50();
    if (v1)
    {
      return result;
    }

    return v8;
  }

  v3 = *(a1 + 16);
  v4 = sub_1B211A144(v3);
  if (v4)
  {
    v5 = Database.isInsideTransaction.getter();
    Database.commit()();
    if (v5)
    {
      if (v6)
      {

        return 1;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      if (v6)
      {
      }

      v8 = v6 != 0;
      sub_1B21343E4(v3, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 172, a1);
    }

    return v8;
  }

  MEMORY[0x1EEE9AC00](v4);
  sub_1B21619D8(&qword_1EB7A3148, &qword_1B2269C00);
  sub_1B2252A50();

  if (!v1)
  {
    return v8;
  }

  return result;
}

void sub_1B2224248()
{
  sub_1B2111640();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for SchedulingWatchdog();
  v7 = sub_1B21114CC();
  if (v7)
  {
    v8 = v7;
    v9 = *(v0 + 16);
    v10 = sub_1B211A144(v9);
    if (v10)
    {
      v11 = Database.isInsideTransaction.getter();
      v6(v9);
      if ((v11 & 1) == 0)
      {
        sub_1B21343E4(v9, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 172, v0);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v10);
      v15[0] = v2;
      v15[1] = v8;
      v16 = v0;
      v17 = v6;
      v18 = v4;
      sub_1B2122364(v13, &v14);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](0);
    v16 = v2;
    v17 = v0;
    v18 = v6;
    v19 = v4;
    sub_1B2122364(v12, v15);
  }

  sub_1B2112FDC();
}

uint64_t sub_1B2224430(uint64_t a1)
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + 16);
    swift_beginAccess();
    swift_beginAccess();

    sub_1B2150300(v4);
    swift_endAccess();
    sub_1B2134088();
    *(v2 + 16) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2224578(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v9 = result;

    v13 = sub_1B221D8A4(a1, v9, a2, a3, a4, v10, v11, v12);

    return v13 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B222462C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = Database.isInsideTransaction.getter();
  a2(&v9, v7);
  if ((v8 & 1) == 0)
  {
    sub_1B21343E4(v7, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, a4, a1);
  }
}

void sub_1B22246E8()
{
  sub_1B2111640();
  sub_1B2115410(v3);
  v4 = sub_1B2115A24();
  v1(v4);
  if ((v2 & 1) == 0)
  {
    v5 = sub_1B211790C();
    sub_1B21343E4(v5, v6, v7, v8, v9, v0);
  }

  sub_1B2112FDC();
}

uint64_t sub_1B2224748(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  result = a1(v3);
  if ((*(v3 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 41) & 1) == 0)
  {
    result = Database.isInsideTransaction.getter();
    if (result)
    {
      result = sub_1B2252EC0();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B22247F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B2117B40(*(a5 + 16));
  if ((result & 1) == 0)
  {
    sub_1B2112A88();
    result = sub_1B211492C(v7);
    __break(1u);
  }

  return result;
}

void sub_1B2224884(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_1B222462C(a1, a2, a3, 159);
  if (!v4)
  {
    *a4 = v6 & 1;
  }
}

uint64_t sub_1B22248D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t)@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1B2224578(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_1B22249A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static FetchableRecord.databaseDecodingUserInfo.getter()
{
  sub_1B2252E60();

  return sub_1B2252190();
}

void sub_1B2224A04()
{
  sub_1B2111F14();
  v0 = sub_1B2251A00();
  sub_1B211280C();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2111844();
  v6 = v5 - v4;
  v7 = sub_1B22519D0();
  sub_1B211280C();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v13 = v12 - v11;
  v14 = sub_1B22519C0();
  sub_1B211280C();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1B2111844();
  v20 = v19 - v18;
  sub_1B2251A50();
  swift_allocObject();
  sub_1B2251A40();
  (*(v16 + 104))(v20, *MEMORY[0x1E6967F08], v14);
  sub_1B22519E0();
  (*(v9 + 104))(v13, *MEMORY[0x1E6967F18], v7);
  sub_1B22519F0();
  (*(v2 + 104))(v6, *MEMORY[0x1E6967F40], v0);
  sub_1B2251A10();
  sub_1B2252E60();
  sub_1B2252190();
  sub_1B2225128();

  sub_1B2251A30();
  sub_1B2111588();
}

void static FetchableRecord.databaseJSONDecoder(for:)()
{
  sub_1B2111F14();
  v24 = v0;
  v23 = v1;
  v22 = sub_1B2251A00();
  sub_1B211280C();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2111844();
  v7 = v6 - v5;
  v8 = sub_1B22519D0();
  sub_1B211280C();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v14 = v13 - v12;
  v15 = sub_1B22519C0();
  sub_1B211280C();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1B2111844();
  v21 = v20 - v19;
  sub_1B2251A50();
  swift_allocObject();
  sub_1B2251A40();
  (*(v17 + 104))(v21, *MEMORY[0x1E6967F08], v15);
  sub_1B22519E0();
  (*(v10 + 104))(v14, *MEMORY[0x1E6967F18], v8);
  sub_1B22519F0();
  (*(v3 + 104))(v7, *MEMORY[0x1E6967F40], v22);
  sub_1B2251A10();
  (*(v23 + 16))(v24);
  sub_1B2225128();

  sub_1B2251A30();
  sub_1B2111588();
}

unint64_t sub_1B2224EAC(void *a1)
{
  if (a1[2])
  {
    sub_1B21619D8(&qword_1EB7A3210, &unk_1B2269F70);
    v1 = sub_1B212DFE0();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  sub_1B21115A0();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  v33 = v1 + 64;

  v8 = 0;
  v9 = &qword_1EB7A0E30;
  v34 = v1;
  while (v4)
  {
    v10 = v9;
    v11 = v8;
LABEL_11:
    v12 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (a1[6] + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = a1[7] + 24 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);

    v21 = v20;
    v22 = v15;
    sub_1B2113A20(v18, v19, v21);
    v9 = v10;
    sub_1B21619D8(v10, &unk_1B2259360);
    swift_dynamicCast();
    v40 = v37;
    v41 = v38;
    v42 = v39;
    v36 = v37;
    v37 = v38;
    *&v38 = v39;
    v1 = v34;
    result = sub_1B211E590();
    v23 = result;
    if (v24)
    {
      v25 = (v34[6] + 16 * result);
      *v25 = v22;
      v25[1] = v16;

      result = sub_1B21466AC(&v36, v34[7] + 40 * v23, v10, &unk_1B2259360);
      v8 = v11;
    }

    else
    {
      if (v34[2] >= v34[3])
      {
        goto LABEL_18;
      }

      *(v33 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v26 = (v34[6] + 16 * result);
      *v26 = v22;
      v26[1] = v16;
      v27 = v34[7] + 40 * result;
      v28 = v36;
      v29 = v37;
      *(v27 + 32) = v38;
      *v27 = v28;
      *(v27 + 16) = v29;
      v30 = v34[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_19;
      }

      v34[2] = v32;
      v8 = v11;
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v1;
    }

    v4 = a1[v11 + 8];
    ++v8;
    if (v4)
    {
      v10 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_1B2225128()
{
  sub_1B2111F14();
  v1 = v0;
  v64 = sub_1B21619D8(&qword_1EB7A3220, &qword_1B2269F88);
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v52 - v3;
  v62 = sub_1B21619D8(&qword_1EB7A3228, &qword_1B2269F90);
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v52 - v5;
  v6 = sub_1B2252E60();
  sub_1B211280C();
  v65 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B2111844();
  v11 = (v10 - v9);
  v59 = sub_1B21619D8(&qword_1EB7A3230, &qword_1B2269F98);
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v52 - v15;
  v66 = v1;
  if (*(v1 + 16))
  {
    sub_1B21619D8(&qword_1EB7A3238, &qword_1B2269FA0);
    v16 = sub_1B212DFE0();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC8];
  }

  v17 = v66 + 64;
  v18 = 1 << *(v66 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v66 + 64);
  v21 = (v18 + 63) >> 6;
  v55 = v65 + 16;
  v68 = v65 + 32;
  v22 = v16 + 64;

  v23 = 0;
  v53 = v17;
  v54 = v21;
  v60 = v11;
  v56 = v16;
  if (!v20)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v25 = __clz(__rbit64(v20)) | (v23 << 6);
    v26 = v65;
    v27 = v66;
    v28 = *(v66 + 48);
    v67 = *(v65 + 72);
    v29 = v57;
    (*(v65 + 16))(v57, v28 + v67 * v25, v6);
    v30 = *(v27 + 56) + 32 * v25;
    v31 = v59;
    sub_1B21721B4(v30, v29 + *(v59 + 48));
    v32 = v58;
    sub_1B2226DAC(v29, v58);
    v33 = *(v31 + 48);
    v34 = *(v64 + 48);
    v35 = *(v26 + 32);
    v36 = v6;
    v37 = v63;
    v35(v63, v32, v36);
    sub_1B215FE70((v32 + v33), v69);
    sub_1B21619D8(&qword_1EB7A3240, qword_1B2269FA8);
    swift_dynamicCast();
    v38 = v61;
    v39 = *(v62 + 48);
    v35(v61, v37, v36);
    v40 = &v37[v34];
    v6 = v36;
    sub_1B215FE70(v40, &v38[v39]);
    v41 = v60;
    v35(v60, v38, v36);
    sub_1B215FE70(&v38[v39], v69);
    v42 = v56;
    v43 = sub_1B2252210();
    v44 = -1 << *(v42 + 32);
    v45 = v43 & ~v44;
    v46 = v45 >> 6;
    if (((-1 << v45) & ~*(v22 + 8 * (v45 >> 6))) == 0)
    {
      v48 = 0;
      v49 = (63 - v44) >> 6;
      v21 = v54;
      while (++v46 != v49 || (v48 & 1) == 0)
      {
        v50 = v46 == v49;
        if (v46 == v49)
        {
          v46 = 0;
        }

        v48 |= v50;
        v51 = *(v22 + 8 * v46);
        if (v51 != -1)
        {
          v47 = __clz(__rbit64(~v51)) + (v46 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v47 = __clz(__rbit64((-1 << v45) & ~*(v22 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
    v21 = v54;
LABEL_21:
    v20 &= v20 - 1;
    *(v22 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
    v35((*(v42 + 48) + v47 * v67), v41, v6);
    sub_1B215FE70(v69, (*(v42 + 56) + 32 * v47));
    ++*(v42 + 16);
    v17 = v53;
  }

  while (v20);
LABEL_8:
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      sub_1B2111588();
      return;
    }

    v20 = *(v17 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1B2225608(void *a1)
{
  if (a1[2])
  {
    sub_1B21619D8(&qword_1EB7A3218, &qword_1B2269F80);
    v2 = sub_1B212DFE0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  sub_1B21115A0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  while (v5)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (a1[6] + ((v10 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];

    swift_dynamicCast();
    sub_1B215FE70(&v23, v25);
    sub_1B215FE70(v25, v26);
    sub_1B215FE70(v26, &v24);
    result = sub_1B211E590();
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      *v17 = v14;
      v17[1] = v13;

      v18 = (v2[7] + 32 * v15);
      sub_1B2113208(v18);
      result = sub_1B215FE70(&v24, v18);
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v14;
      v19[1] = v13;
      result = sub_1B215FE70(&v24, (v2[7] + 32 * result));
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_18;
      }

      v2[2] = v22;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v5 = a1[v10 + 8];
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t static FetchableRecord<>.fetchSet(_:arguments:adapter:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1B2115D98(a1, a2, a3, a4, a5, a6, a7, a8, v15);
  if (!v8)
  {
    v14 = result;
    type metadata accessor for RecordCursor(0, a4, a5, v13);
    sub_1B2111C38();
    swift_getWitnessTable();
    return Set.init<A>(_:)(v14, a4, a5, a6);
  }

  return result;
}

uint64_t static FetchableRecord<>.fetchSet<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 32))(&v32, a1, 0, a4, a7);
  if (!v7)
  {
    v18 = v34;
    if (v34)
    {
      v30 = a3;
      v36 = a6;
      v19 = v35;
      type metadata accessor for Row();
      v20 = v32;
      v31 = 0uLL;

      v21 = static Row.fetchAll(_:arguments:adapter:)(v20, &v31, v33);
      v18(a1, v21);
      v22 = swift_allocObject();
      v22[2] = v30;
      v22[3] = a4;
      v23 = v36;
      v22[4] = a5;
      v22[5] = v23;
      v22[6] = a7;
      v22[7] = v30;
      sub_1B21619D8(&qword_1EB7A31F0, "ޯ");
      sub_1B211AE9C();
      sub_1B211AB74(v24, v25, "ޯ", v26);
      sub_1B2252F20();

      sub_1B2161A20(&qword_1EB7A11A8, &qword_1B22549B8);
      sub_1B211AE9C();
      sub_1B211AB74(v27, v28, &qword_1B22549B8, v29);
      sub_1B2252E00();
      swift_getWitnessTable();
      a2 = sub_1B2252820();
      sub_1B2112F4C(v18, v19);
    }

    else
    {
      v31 = 0uLL;
      static FetchableRecord<>.fetchSet(_:arguments:adapter:)(v32, &v31, v33, a3, a5, a6, v15, v16);
      sub_1B212D124();
    }

    sub_1B2142D18(&v32);
  }

  return a2;
}

uint64_t sub_1B2225FE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v2 + 8);

  return v3(v4, v1, v2);
}

uint64_t sub_1B2226054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);

  return v7(v8, a3, a5);
}

uint64_t sub_1B2226118(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B2226154(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = RecordCursor._isDone.modify(v2);
  return sub_1B2171E40;
}

uint64_t sub_1B22261B0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2226268(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B2226294(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B22262BC()
{
  if (!*v0)
  {

    sub_1B2112F9C();
    return sub_1B22534E0();
  }

  if (*v0 == 1)
  {
    sub_1B2112F9C();
    sub_1B2226394();
    return sub_1B22534E0();
  }

  v2 = sub_1B2112F9C();
  v3(v2);
  sub_1B21139A0(v4, v4[3]);
  sub_1B2112F9C();
  sub_1B22534D0();
  sub_1B22534E0();
  return sub_1B2113208(v4);
}

void sub_1B2226394()
{
  sub_1B2111F14();
  v2 = v1;
  v3 = v0;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_15:

LABEL_16:
    sub_1B2111588();
    return;
  }

  v5 = 4 * v4;
  for (i = 15; ; i = sub_1B2252390())
  {
    v7 = i >> 14;
    if (i >> 14 == v5)
    {
      goto LABEL_15;
    }

    if (sub_1B2252480() != 95 || v8 != 0xE100000000000000)
    {
      break;
    }

LABEL_14:
    ;
  }

  v10 = sub_1B22531F0();

  if (v10)
  {
    goto LABEL_14;
  }

  v11 = 7;
  if (((v2 >> 60) & ((v3 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v12 = v11 | (v4 << 16);
  while (1)
  {
    sub_1B2118574();
    v13 = sub_1B22523A0();
    if (v7 >= v13 >> 14)
    {
      break;
    }

    sub_1B2118574();
    if (sub_1B2252480() == 95 && v14 == 0xE100000000000000)
    {
    }

    else
    {
      v16 = sub_1B22531F0();

      if ((v16 & 1) == 0)
      {
        break;
      }
    }
  }

  if (v13 >> 14 < v7)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v84 = v12;
  sub_1B2118574();
  v17 = sub_1B2252390();
  v85 = v5;
  if (v5 < v17 >> 14)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v18 = v17;
  sub_1B2118574();
  sub_1B2252390();
  v19 = sub_1B22524A0();
  *&v87 = 95;
  *(&v87 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v19);
  v79[2] = &v87;
  v24 = sub_1B22269A4(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1B2158EB4, v79, v20, v21, v22, v23);
  v25 = *(v24 + 16);
  if (v25 == 1)
  {

    sub_1B2252390();
    v26 = sub_1B22524A0();
    v27 = MEMORY[0x1B2741E40](v26);
    v29 = v28;

    goto LABEL_45;
  }

  v82 = v18;
  v83 = v2;
  sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B22546B0;
  if (!v25)
  {
    goto LABEL_57;
  }

  v31 = v30;
  v81 = v3;

  v32 = sub_1B2252B10();
  v34 = v33;

  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v80 = v31;
  if (!*(v24 + 16))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v35 = sub_1B21B6648();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v46 = v41 >> 1;
  v47 = (v41 >> 1) - v39;
  if (__OFSUB__(v41 >> 1, v39))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v47)
  {
    swift_unknownObjectRelease();
    v48 = MEMORY[0x1E69E7CC0];
LABEL_44:
    *&v87 = v80;
    sub_1B2156C88(v48);
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B211AE9C();
    sub_1B211AB74(v62, v63, &qword_1B2254340, v64);
    v27 = sub_1B2252250();
    v29 = v65;

    v18 = v82;
LABEL_45:
    v66 = v18 >> 14;
    v67 = v85;
    if (v7)
    {
      v68 = sub_1B22524A0();
      v69 = MEMORY[0x1B2741E40](v68);
      v71 = v70;

      if (v66 == v67)
      {
        *&v87 = v69;
        *(&v87 + 1) = v71;

        MEMORY[0x1B2741EB0](v27, v29);

LABEL_53:

        goto LABEL_16;
      }

      *&v87 = v69;
      *(&v87 + 1) = v71;

      MEMORY[0x1B2741EB0](v27, v29);

      v29 = *(&v87 + 1);
      v76 = v87;
      v77 = sub_1B22524A0();
      v73 = MEMORY[0x1B2741E40](v77);
      v75 = v78;

      *&v87 = v76;
    }

    else
    {
      if (v66 == v85)
      {
        goto LABEL_16;
      }

      v72 = sub_1B22524A0();
      v73 = MEMORY[0x1B2741E40](v72);
      v75 = v74;

      *&v87 = v27;
    }

    *(&v87 + 1) = v29;

    MEMORY[0x1B2741EB0](v73, v75);

    goto LABEL_53;
  }

  v79[4] = v35;
  v90 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10(0, v47 & ~(v47 >> 63), 0, v42, v43, v44, v45);
  if ((v47 & 0x8000000000000000) == 0)
  {
    v48 = v90;
    v49 = (v37 + 32 * v39 + 24);
    v86 = v41 >> 1;
    while (v39 < v46)
    {
      v50 = *(v49 - 1);
      v51 = *v49;
      v87 = *(v49 - 3);
      v88 = v50;
      v89 = v51;
      sub_1B2226D58();
      v56 = sub_1B2252B60();
      v58 = v57;
      v90 = v48;
      v60 = *(v48 + 16);
      v59 = *(v48 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1B2116B10(v59 > 1, v60 + 1, 1, v52, v53, v54, v55);
        v48 = v90;
      }

      *(v48 + 16) = v60 + 1;
      v61 = v48 + 16 * v60;
      *(v61 + 32) = v56;
      *(v61 + 40) = v58;
      ++v39;
      v49 += 4;
      v46 = v86;
      if (v86 == v39)
      {
        swift_unknownObjectRelease();
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_60:
  __break(1u);
}

uint64_t sub_1B22269A4(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v52[3] = a7;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v16 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v16 != v13)
  {
    v8 = a4;
    v50 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v48 = v10;
      while (1)
      {
        v17 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v10 = v48;
          goto LABEL_24;
        }

        v12 = a8;
        v18 = sub_1B2252B30();
        v20 = v19;
        v52[0] = v18;
        v52[1] = v19;
        v21 = a3(v52);
        if (v9)
        {

          return v20;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        a8 = v12;
        v10 = sub_1B2252B20();
      }

      v24 = (v48 >> 14 == v17) & a2;
      a8 = v12;
      if (!v24)
      {
        if (v17 < v48 >> 14)
        {
          __break(1u);
          return result;
        }

        v49 = sub_1B2252B40();
        v44 = v26;
        v45 = v25;
        v43 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B2162808();
          v50 = v30;
        }

        v28 = *(v50 + 16);
        if (v28 >= *(v50 + 24) >> 1)
        {
          sub_1B2162808();
          v50 = v31;
        }

        *(v50 + 16) = v28 + 1;
        v29 = (v50 + 32 * v28);
        v29[4] = v49;
        v29[5] = v45;
        v29[6] = v44;
        v29[7] = v43;
        a8 = v12;
      }

      v10 = sub_1B2252B20();
    }

    while (v24 || *(v50 + 16) != a1);
LABEL_24:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v50;
    }

    v20 = v50;
    if (v13 >= v10 >> 14)
    {
      v8 = sub_1B2252B40();
      v10 = v37;
      v12 = v38;
      v13 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_32:
      v14 = *(v20 + 16);
      v36 = *(v20 + 24);
LABEL_33:
      v11 = v14 + 1;
      if (v14 < v36 >> 1)
      {
LABEL_34:
        *(v20 + 16) = v11;
        v40 = (v20 + 32 * v14);
        v40[4] = v8;
        v40[5] = v10;
        v40[6] = v12;
        v40[7] = v13;
        return v20;
      }

LABEL_37:
      sub_1B2162808();
      v20 = v41;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    sub_1B2162808();
    v20 = v42;
    goto LABEL_32;
  }

  if (v16 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v16)
    {
      v8 = sub_1B2252B40();
      v10 = v32;
      v12 = v33;
      v13 = v34;

      sub_1B2162808();
      v20 = v35;
      v14 = *(v35 + 16);
      v36 = *(v35 + 24);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_39;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1B2226D58()
{
  result = qword_1EB7A3208;
  if (!qword_1EB7A3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A3208);
  }

  return result;
}

uint64_t sub_1B2226DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A3230, &qword_1B2269F98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id *sub_1B2226EC0()
{

  return v0;
}

uint64_t sub_1B2226F08()
{
  sub_1B2226EC0();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1B2226F54(uint64_t a1)
{
  result = swift_checkMetadataState();
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

void sub_1B2226FF0(uint64_t a1@<X8>)
{
  v2 = sub_1B2251D30();
  NSURL.databaseValue.getter(a1);
}

uint64_t sub_1B2227058(sqlite3_stmt *a1, int a2)
{
  v4 = sub_1B2251D30();
  NSURL.databaseValue.getter(&v13);

  v5 = v13;
  v6 = v14;
  v7 = v15;
  switch(v15)
  {
    case 1:
      v8 = sqlite3_bind_double(a1, a2, *&v13);
      goto LABEL_9;
    case 2:
      sub_1B2113A20(v13, v14, 2);
      if (qword_1ED85E010 != -1)
      {
        swift_once();
      }

      v9 = qword_1ED861908;
      v10 = sub_1B2252350();
      v11 = sqlite3_bind_text(a1, a2, (v10 + 32), -1, v9);

      sub_1B2113A44(v5, v6, 2);
      goto LABEL_10;
    case 3:
      v8 = Data.bind(to:at:)(a1, a2);
      goto LABEL_9;
    case 4:
      v8 = sqlite3_bind_null(a1, a2);
      goto LABEL_9;
    default:
      v8 = sqlite3_bind_int64(a1, a2, v13);
LABEL_9:
      v11 = v8;
LABEL_10:
      sub_1B2113A44(v5, v6, v7);
      return v11;
  }
}

uint64_t sub_1B22271D0(sqlite3_stmt *a1, int a2)
{
  if (qword_1ED85D6E0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED85D6E8;
  v5 = sub_1B2251E50();
  v6 = [v4 stringFromDate_];

  sub_1B22522A0();
  v7 = qword_1ED85E010;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED861908;
  v9 = sub_1B2252350();
  v10 = sqlite3_bind_text(a1, a2, (v9 + 32), -1, v8);
  swift_bridgeObjectRelease_n();

  return v10;
}

uint64_t sub_1B2227300(Swift::OpaquePointer a1, Swift::Int32 a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = sub_1B2251ED0();
  v10[1] = v4;
  v5 = MEMORY[0x1B27418E0](v10, 16);
  v7 = v6;
  v8 = Data.bind(to:at:)(a1, a2);
  sub_1B21267A8(v5, v7);
  return v8;
}

uint64_t sub_1B22273A4(sqlite3_stmt *a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = qword_1ED85E010;

  if (v6 != -1)
  {
    sub_1B2118584(&qword_1ED85E010);
  }

  v7 = qword_1ED861908;
  v8 = sub_1B2252350();
  v9 = sqlite3_bind_text(a1, a2, (v8 + 32), -1, v7);

  return v9;
}

uint64_t sub_1B2227450(sqlite3_stmt *a1, int a2)
{
  DatabaseDateComponents.databaseValue.getter();
  switch(v11)
  {
    case 1:
      v4 = sqlite3_bind_double(a1, a2, *&v9);
      goto LABEL_9;
    case 2:
      sub_1B2113A20(v9, v10, 2);
      if (qword_1ED85E010 != -1)
      {
        swift_once();
      }

      v5 = qword_1ED861908;
      v6 = sub_1B2252350();
      v7 = sqlite3_bind_text(a1, a2, (v6 + 32), -1, v5);

      sub_1B2113A44(v9, v10, 2);
      goto LABEL_10;
    case 3:
      v4 = Data.bind(to:at:)(a1, a2);
      goto LABEL_9;
    case 4:
      v4 = sqlite3_bind_null(a1, a2);
      goto LABEL_9;
    default:
      v4 = sqlite3_bind_int64(a1, a2, v9);
LABEL_9:
      v7 = v4;
LABEL_10:
      sub_1B2113A44(v9, v10, v11);
      return v7;
  }
}

uint64_t sub_1B22275C0(sqlite3_stmt *a1, int a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v30 = a2;
  v29 = a1;
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);
  v10 = a4 >> 16;
  v11 = HIDWORD(a4);
  v27 = HIWORD(a4);
  v28 = HIWORD(a5);
  v12 = sub_1B2251F10();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MEMORY[0x1E696AB90]);
  v31 = v7;
  v32 = v8;
  v33 = v9;
  v34 = v6;
  v35 = v10;
  v36 = v11;
  v37 = v27;
  v38 = v5;
  v39 = v28;
  v17 = [v16 initWithDecimal_];
  sub_1B2251EF0();
  v18 = sub_1B2251F00();
  (*(v13 + 8))(v15, v12);
  v19 = [v17 descriptionWithLocale_];

  v20 = sub_1B22522A0();
  v22 = v21;

  sub_1B2113A20(v20, v22, 2);
  if (qword_1ED85E010 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED861908;
  v24 = sub_1B2252350();
  v25 = sqlite3_bind_text(v29, v30, (v24 + 32), -1, v23);
  swift_bridgeObjectRelease_n();

  return v25;
}

Swift::Int32 __swiftcall DatabaseValueConvertible.bind(to:at:)(Swift::OpaquePointer to, Swift::Int32 at)
{
  (*(v2 + 24))(&v27);
  v3 = v27;
  v4 = v28;
  switch(v28)
  {
    case 1:
      v21 = sub_1B2122C80();
      v7 = sqlite3_bind_double(v21, v22, v23);
      goto LABEL_9;
    case 2:
      v10 = sub_1B2112FD0();
      sub_1B2113A20(v10, v11, 2);
      if (qword_1ED85E010 != -1)
      {
        sub_1B2118584(&qword_1ED85E010);
      }

      v12 = qword_1ED861908;
      sub_1B2112FD0();
      sub_1B2252350();
      v13 = sub_1B2122C80();
      v16 = sqlite3_bind_text(v13, v14, v15, -1, v12);

      v17 = sub_1B2112FD0();
      sub_1B2113A44(v17, v18, 2);
      goto LABEL_10;
    case 3:
      v19 = sub_1B2122C80();
      v7 = Data.bind(to:at:)(v19, v20);
      goto LABEL_9;
    case 4:
      v8 = sub_1B2122C80();
      v7 = sqlite3_bind_null(v8, v9);
      goto LABEL_9;
    default:
      v5 = sub_1B2122C80();
      v7 = sqlite3_bind_int64(v5, v6, v3);
LABEL_9:
      v16 = v7;
LABEL_10:
      v24 = sub_1B2112FD0();
      sub_1B2113A44(v24, v25, v4);
      return v16;
  }
}

uint64_t sub_1B2227B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  sub_1B2117ADC();
  swift_getAssociatedTypeWitness();
  v7 = sub_1B21226E8();
  return a6(v7);
}

uint64_t DatabaseValueCursor._isDone.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

void (*sub_1B2227F08(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = DatabaseValueCursor._isDone.modify(v2);
  return sub_1B21A25C0;
}

void (*sub_1B2228070(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = NullableDatabaseValueCursor._isDone.modify(v2);
  return sub_1B21A325C;
}

uint64_t static DatabaseValueConvertible.fetchAll(_:arguments:adapter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B2117FF8(a1, a2);
  result = static DatabaseValueConvertible.fetchCursor(_:arguments:adapter:)(v7, v8, v9, v10, v11);
  if (!v5)
  {
    sub_1B2113BDC();
    sub_1B22526A0();
    v13 = sub_1B2113BDC();
    type metadata accessor for DatabaseValueCursor(v13, v14, a5, v15);
    sub_1B21163F8();
    sub_1B2115A58();
    WitnessTable = swift_getWitnessTable();
    sub_1B211494C(WitnessTable, v17, v18, v19);
    return v20;
  }

  return result;
}

uint64_t static DatabaseValueConvertible<>.fetchSet(_:arguments:adapter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2117FF8(a1, a2);
  result = static DatabaseValueConvertible.fetchCursor(_:arguments:adapter:)(v10, v11, v12, v13, v14);
  if (!v6)
  {
    v17 = result;
    type metadata accessor for DatabaseValueCursor(0, a4, a5, v16);
    sub_1B2115A58();
    swift_getWitnessTable();
    return Set.init<A>(_:)(v17, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1B22282E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  sub_1B21140D0();
  v11 = v10();
  if (!v7)
  {
    v19 = sub_1B2114510(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22, v23[0]);
    a2 = a7(v19);
    sub_1B2142D18(v23);
  }

  return a2;
}

uint64_t static DatabaseValueConvertible.fetchOne<A>(_:_:)()
{
  sub_1B21140D0();
  result = v1();
  if (!v0)
  {
    sub_1B2114510(result, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12[0]);
    static DatabaseValueConvertible.fetchOne(_:arguments:adapter:)();
    return sub_1B2142D18(v12);
  }

  return result;
}

uint64_t sub_1B22285C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t), uint64_t (*a7)(uint64_t, void *, _BYTE *))
{
  v10 = *a2;
  v11 = a2[1];
  a6(0, a4, a5);
  v14[0] = v10;
  v14[1] = v11;
  sub_1B2122784(a3, v13);

  sub_1B211CF8C(v10);
  return a7(a1, v14, v13);
}

uint64_t static Optional<A>.fetchAll(_:arguments:adapter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B2117FF8(a1, a2);
  result = static Optional<A>.fetchCursor(_:arguments:adapter:)(v7, v8, v9, v10, v11);
  if (!v5)
  {
    sub_1B2252B00();
    sub_1B22526A0();
    v13 = sub_1B2113BDC();
    type metadata accessor for NullableDatabaseValueCursor(v13, v14, a5, v15);
    sub_1B21163F8();
    sub_1B2116884();
    WitnessTable = swift_getWitnessTable();
    sub_1B211494C(WitnessTable, v17, v18, v19);
    return v20;
  }

  return result;
}

uint64_t sub_1B2228AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v11 = (*(a7 + 32))(v23, a1, 0, a4, a7);
  if (!v8)
  {
    v19 = sub_1B2114510(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22, v23[0]);
    a2 = a8(v19);
    sub_1B2142D18(v23);
  }

  return a2;
}

uint64_t sub_1B2228BE8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2228C24(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2228C60(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2228C9C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2228DCC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    result = sub_1B2252380();
    if (!__OFSUB__(result, v6))
    {
      sub_1B22523B0();
      sub_1B22524A0();
      sub_1B21148B4();
      return sub_1B21121BC();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2228E9C(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_1B222ECE8(0, (v4 - result) & ~((v4 - result) >> 63), v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      a3(0);
      sub_1B21148B4();
      return sub_1B21121BC();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2228FAC()
{
  v1 = *(v0 + 8);
  sub_1B21B2A90(v1, &v30);
  if (v31)
  {
    sub_1B21217FC(&v30, v32);
    v2 = swift_beginAccess();
    v3 = Row.PrefetchedRowsView.keys.getter(v2);
    if (*(v3 + 16))
    {
      sub_1B2252CD0();

      sub_1B219C744(v3, v4, v5, v6, v7, v8, v9, v10, v28, v29);
      v12 = v11;

      v13 = MEMORY[0x1B2742080](v12, MEMORY[0x1E69E6158]);
      v15 = v14;

      MEMORY[0x1B2741EB0](v13, v15);

      v16 = 0x80000001B2270870;
    }

    else
    {

      v16 = 0x80000001B22708A0;
    }

    v32[6] = v16;
    v17 = sub_1B2252D40();
    swift_allocError();
    v19 = v18;
    sub_1B211EE68(v32, v18);

    sub_1B2228E9C(1, v1, sub_1B21B6648);
    v21 = v20;
    v23 = v22;
    if (v22)
    {
      sub_1B2253280();
      swift_unknownObjectRetain_n();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        swift_unknownObjectRelease();
        v24 = MEMORY[0x1E69E7CC0];
      }

      v25 = *(v24 + 16);

      if (__OFSUB__(v23 >> 1, v21))
      {
        __break(1u);
      }

      else if (v25 == (v23 >> 1) - v21)
      {
        v26 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v26)
        {
LABEL_13:
          sub_1B21619D8(&qword_1EB7A3260, &qword_1B226A778);
          sub_1B2252D30();
          (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF0], v17);
          swift_willThrow();
          return sub_1B2113208(v32);
        }

LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    sub_1B216EAD0();
    goto LABEL_12;
  }

  sub_1B212AC5C(&v30, &qword_1EB7A3258, &qword_1B226A770);
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B22292F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = *(v7 + 16);
  if (v8)
  {
    sub_1B211EE68(v7 + 40 * v8 - 8, v28);
    sub_1B21139A0(v28, v29);
    v9 = sub_1B22534D0();
    v11 = v10;
    v12 = v6[5];
    v13 = v6[6];
    sub_1B21139A0(v6 + 2, v12);
    v14 = (*(v13 + 88))(v9, v11, v12, v13);
    LOBYTE(v12) = v15;

    if (v12)
    {
      sub_1B21139A0(v28, v29);
      v17 = sub_1B22534D0();
      v19 = v18;
      v24 = 0uLL;
      LOBYTE(v25) = -1;

      RowDecodingContext.init(row:key:)(v20, &v24, v23);
      sub_1B21A2FC0();
      swift_allocError();
      static RowDecodingError.columnNotFound(_:context:)(v17, v19, v23, v21);

      v24 = v23[0];
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      sub_1B218450C(&v24);
      swift_willThrow();
    }

    else
    {
      a3[3] = type metadata accessor for ColumnDecoder(0, *(a1 + 16), *(a1 + 24), v16);
      a3[4] = swift_getWitnessTable();
      *a3 = v6;
      a3[1] = v14;
      a3[2] = v7;
    }

    return sub_1B2113208(v28);
  }

  else
  {
    a3[3] = type metadata accessor for ColumnDecoder(0, *(a1 + 16), *(a1 + 24), a2);
    a3[4] = swift_getWitnessTable();
    *a3 = v6;
    a3[1] = 0;
    a3[2] = v7;
  }
}

uint64_t sub_1B2229524()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v1 = sub_1B2229584(v0);
    *(v0 + 96) = v1;
  }

  return v1;
}

uint64_t sub_1B2229584(uint64_t a1)
{
  if (*(a1 + 88))
  {

    sub_1B2169254(v1);
  }

  else
  {

    sub_1B21691C4(v2, sub_1B2240670, 0);
  }

  v3 = Row.scopes.getter();
  v4 = Row.ScopesTreeView.names.getter(v3);

  sub_1B213FE4C(v4);
  v5 = swift_beginAccess();
  v6 = Row.PrefetchedRowsView.keys.getter(v5);
  v7 = sub_1B213FE4C(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B21619D8(&qword_1EB7A3280, &unk_1B226A7B0);
  sub_1B211AB74(qword_1EB7A3288, &qword_1EB7A3280, &unk_1B226A7B0, MEMORY[0x1E69E6508]);
  v8 = sub_1B22524D0();

  return v8;
}

uint64_t sub_1B22298E8(uint64_t a1)
{
  sub_1B211D7E8(a1);
  if (!v2)
  {
    sub_1B211689C();
    v1 = v3();
  }

  return v1;
}

uint64_t sub_1B2229980(uint64_t a1)
{
  sub_1B211D7E8(a1);
  if (!v2)
  {
    sub_1B211689C();
    v1 = v3();
  }

  return v1;
}

uint64_t sub_1B2229A18(uint64_t a1)
{
  sub_1B211D7E8(a1);
  if (!v2)
  {
    sub_1B211689C();
    v1 = v3();
  }

  return v1;
}

void sub_1B2229AB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v39 = a3;
  v7 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27[-1] - v9;
  v11 = *v3;
  v12 = v3[1];
  v13 = *(v3 + 16);
  v14 = *(a1 + 64);
  if (v14)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      MEMORY[0x1EEE9AC00](v8);
      *(&v26 - 2) = a1;
      *(&v26 - 1) = a2;
      if (sqlite3_column_type(v14, a2) == 5)
      {
        goto LABEL_10;
      }

      *&v33 = v11;
      *(&v33 + 1) = v12;
      LOBYTE(v34) = v13;
      v19 = v39;
      sub_1B222D200(v14, a2, &v33, sub_1B222EE2C, (&v26 - 4), v39);
      if (!v4)
      {
        v16 = sub_1B2251E90();
        v17 = v19;
        v18 = 0;
        goto LABEL_11;
      }

      return;
    }

    __break(1u);
LABEL_20:
    swift_unexpectedError();
    __break(1u);
    return;
  }

  sub_1B222EAB8(a2, &v37);
  if (v4)
  {
    goto LABEL_20;
  }

  v15 = v38;
  if (v38 == 4 && v37 == 0)
  {
    sub_1B2113A44(0, 0, 4);
LABEL_10:
    v16 = sub_1B2251E90();
    v17 = v39;
    v18 = 1;
LABEL_11:
    sub_1B21117B4(v17, v18, 1, v16);
    return;
  }

  *&v33 = v11;
  *(&v33 + 1) = v12;
  LOBYTE(v34) = v13;
  v20 = v37;
  v29 = v37;
  v21 = *(&v37 + 1);
  LOBYTE(v30) = v38;
  sub_1B222E668(&v29, v10);
  v22 = sub_1B2251E90();
  if (sub_1B2122A98(v10, 1, v22) != 1)
  {
    sub_1B2113A44(v20, v21, v15);
    v25 = v39;
    (*(*(v22 - 8) + 32))(v39, v10, v22);
    v17 = v25;
    v18 = 0;
    v16 = v22;
    goto LABEL_11;
  }

  sub_1B212AC5C(v10, &qword_1EB7A1330, &unk_1B226A760);
  v33 = a2;
  LOBYTE(v34) = 1;

  RowDecodingContext.init(row:key:)(v23, &v33, &v29);
  v27[0] = v20;
  v27[1] = v21;
  v28 = v15;
  sub_1B21A2FC0();
  swift_allocError();
  sub_1B2183238(v22, &v29, v27, v24);
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  sub_1B218450C(&v33);
  swift_willThrow();
  sub_1B2113A44(v20, v21, v15);
}

void sub_1B2229E00(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = v4;
  v9 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23[-1] - v10;
  v13 = *v3;
  v12 = v3[1];
  v14 = *(v3 + 16);
  v15 = *(a1 + 64);
  if (v15)
  {
    *&v29 = *v3;
    *(&v29 + 1) = v12;
    LOBYTE(v30) = v14;
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {

      sub_1B222DBFC(v15, a2, &v29, a1, a2, a3);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  sub_1B222EAB8(a2, &v33);
  if (v5)
  {
LABEL_11:
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *&v29 = v13;
  *(&v29 + 1) = v12;
  v16 = *(&v33 + 1);
  v17 = v33;
  LOBYTE(v30) = v14;
  v25 = v33;
  v18 = v34;
  LOBYTE(v26) = v34;
  sub_1B222E668(&v25, v11);
  v19 = sub_1B2251E90();
  if (sub_1B2122A98(v11, 1, v19) == 1)
  {
    sub_1B212AC5C(v11, &qword_1EB7A1330, &unk_1B226A760);
    v29 = a2;
    LOBYTE(v30) = 1;

    RowDecodingContext.init(row:key:)(v20, &v29, &v25);
    v23[0] = v17;
    v23[1] = v16;
    v24 = v18;
    sub_1B21A2FC0();
    swift_allocError();
    sub_1B2183238(v19, &v25, v23, v21);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1B218450C(&v29);
    swift_willThrow();
    sub_1B2113A44(v17, v16, v18);
  }

  else
  {
    sub_1B2113A44(v17, v16, v18);
    (*(*(v19 - 8) + 32))(a3, v11, v19);
  }
}

uint64_t sub_1B222A0F8()
{
  v0 = sub_1B2252D40();
  swift_allocError();
  v2 = v1;
  sub_1B21619D8(&qword_1EB7A3270, &qword_1B226A798);
  *v2 = sub_1B21619D8(&qword_1EB7A3278, &unk_1B226A7A0);
  sub_1B211FEA4();
  sub_1B2252D30();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x1E69E6AF8], v0);
  return swift_willThrow();
}

unint64_t sub_1B222A1E4@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  a2[3] = type metadata accessor for _RowDecoder(0, *(*v2 + 80), *(*v2 + 96), a1);
  a2[4] = swift_getWitnessTable();
  v8 = swift_allocObject();
  *a2 = v8;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;

  return sub_1B212E5CC(v6, v7);
}

uint64_t sub_1B222A2B8(void x0_0, uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v5;
  v9 = *v6;
  v10 = sub_1B212FED0(a3, a3, &protocol descriptor for FetchableRecord);
  if (v10)
  {
    v13 = v10;
    v14 = v11;
    v15 = *(v11 + 8);
    v19[3] = v10;
    v19[4] = v11;
    sub_1B212FF14(v19);

    v15(v16, v13, v14);
    sub_1B21619D8(&qword_1EB7A3268, &qword_1B226A790);
    return swift_dynamicCast();
  }

  else
  {
    type metadata accessor for _RowDecoder(0, *(v9 + 80), *(v9 + 96), v12);
    swift_getWitnessTable();
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = 0;
    v18[5] = 0;

    return sub_1B22527E0();
  }
}

uint64_t sub_1B222A44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B222A488(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B222A4C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B222A6EC(uint64_t a1, __n128 *a2)
{
  v7[0] = sub_1B2117920(a1, a2);
  v7[1] = v3;
  v5 = sub_1B2112E78(v4, v7);
  return v2(v5);
}

uint64_t sub_1B222A730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 96);
  v5[0] = *(a2 + 80);
  v5[1] = v3;
  type metadata accessor for _RowDecoder.KeyedContainer(0, v5);
  return sub_1B22532A0();
}

uint64_t sub_1B222A948(uint64_t a1, __n128 *a2)
{
  v8[0] = sub_1B2117920(a1, a2);
  v8[1] = v3;
  v5 = sub_1B2112E78(v4, v8);
  v6 = v2(v5);
  return sub_1B2114520(v6 & 0x1FF);
}

uint64_t sub_1B222A9C0(uint64_t a1, __n128 *a2)
{
  v8[0] = sub_1B2117920(a1, a2);
  v8[1] = v3;
  v5 = sub_1B2112E78(v4, v8);
  v6 = v2(v5);
  return sub_1B2114520(v6 & 0x1FFFF);
}

unint64_t sub_1B222AA38(uint64_t a1, __n128 *a2)
{
  v8[0] = sub_1B2117920(a1, a2);
  v8[1] = v3;
  v5 = sub_1B2112E78(v4, v8);
  v6 = v2(v5);
  return sub_1B21185A4(v6);
}

uint64_t sub_1B222AAAC(uint64_t a1, __n128 *a2)
{
  v9[0] = sub_1B2117920(a1, a2);
  v9[1] = v4;
  v6 = sub_1B2112E78(v5, v9);
  result = v2(v6);
  if (v3)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1B222AB28(uint64_t a1, __n128 *a2)
{
  v9[0] = sub_1B2117920(a1, a2);
  v9[1] = v4;
  v6 = sub_1B2112E78(v5, v9);
  result = v2(v6);
  if (v3)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1B222AC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  a6[3] = type metadata accessor for PrefetchedRowsDecoder(0, a4, a5, a4);
  a6[4] = swift_getWitnessTable();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
}

uint64_t sub_1B222AE00(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B2252C20();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL sub_1B222AE40(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v4 = sub_1B2252C20();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 <= a3;
}

uint64_t sub_1B222AE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[6] = a4;
  v5 = v4;
  if (sub_1B212FED0(a3, a3, &protocol descriptor for FetchableRecord))
  {
    (*(v7 + 40))(v23);
    v9 = v23[0];
    v8 = v23[1];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = v4[2];
  v11 = *v5;
  v12 = *v5 & 0xC000000000000001;
  sub_1B21C2A5C(v5[2], v12 == 0, *v5);
  if (v12)
  {
    v13 = MEMORY[0x1B27427E0](v10, v11);
  }

  else
  {
    v13 = *(v11 + 8 * v10 + 32);
  }

  v15 = v5[1];
  v23[3] = type metadata accessor for _RowDecoder(0, *(a2 + 16), *(a2 + 24), v14);
  v23[4] = swift_getWitnessTable();
  v16 = swift_allocObject();
  v23[0] = v16;
  v16[2] = v13;
  v16[3] = v15;
  v16[4] = v9;
  v16[5] = v8;

  result = sub_1B22527E0();
  v18 = v5[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  v21 = v19;
  if (v22)
  {
    if (!v21)
    {
LABEL_13:
      v5[2] = v20;
      return result;
    }

    __break(1u);
  }

  if (!v21)
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B222B19C(uint64_t a1)
{
  sub_1B222AE8C(MEMORY[0x1E69E6370], a1, MEMORY[0x1E69E6370], MEMORY[0x1E69E6390]);
  if (!v1)
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t sub_1B222B1E8(uint64_t a1)
{
  result = sub_1B222AE8C(MEMORY[0x1E69E6158], a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190]);
  if (!v1)
  {
    return v3;
  }

  return result;
}

double sub_1B222B230(uint64_t a1)
{
  sub_1B222AE8C(MEMORY[0x1E69E63B0], a1, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63E8]);
  if (!v1)
  {
    return v3;
  }

  return result;
}

float sub_1B222B278(uint64_t a1)
{
  sub_1B222AE8C(MEMORY[0x1E69E6448], a1, MEMORY[0x1E69E6448], MEMORY[0x1E69E6478]);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1B222B3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B222AE8C(a3, a1, a3, a4);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B222B450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B222AE8C(a3, a1, a3, a4);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B222B4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B222AE8C(a3, a1, a3, a4);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B222B510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B222AE8C(a3, a1, a3, a4);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B222B5B8()
{
  result = sub_1B2253010();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B222B608()
{
  result = sub_1B2253020();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B222B6B0()
{
  result = sub_1B2253050();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B222B700()
{
  result = sub_1B2253030();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B222B828()
{
  result = sub_1B2253060();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B222B878(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1B222B9C8(uint64_t a1, int64_t iCol)
{
  if ((iCol & 0x8000000000000000) == 0 && *(a1 + 72) > iCol)
  {
    v3 = *(a1 + 64);
    if (!v3)
    {
      v7 = sub_1B21B9AA0();
      return v7 & 1;
    }

    if (!(iCol >> 31))
    {
      if (sqlite3_column_type(*(a1 + 64), iCol) == 5)
      {
        v13 = iCol;
        LOBYTE(v14) = 1;

        RowDecodingContext.init(row:key:)(v4, &v13, v17);
        sub_1B21A2FC0();
        swift_allocError();
        v6 = v5;
        v13 = v17[0];
        v14 = v17[1];
        v15 = v17[2];
        v16 = v17[3];
        sub_1B21320F0(v3, iCol, &v11);
        v9 = v11;
        v10 = v12;
        sub_1B2183238(MEMORY[0x1E69E6370], &v13, &v9, v6);
        sub_1B2113A44(v9, *(&v9 + 1), v10);
        sub_1B218450C(v17);
        v7 = swift_willThrow();
      }

      else
      {
        v7 = sqlite3_column_int64(v3, iCol) != 0;
      }

      return v7 & 1;
    }

    __break(1u);
  }

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

void sub_1B222BB68(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9B0C(iCol);
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || (v4 = sqlite3_column_int64(v3, iCol), v4 != v4))
  {
    v12 = iCol;
    LOBYTE(v13) = 1;

    RowDecodingContext.init(row:key:)(v5, &v12, v16);
    sub_1B21A2FC0();
    swift_allocError();
    v7 = v6;
    v12 = v16[0];
    v13 = v16[1];
    v14 = v16[2];
    v15 = v16[3];
    sub_1B21320F0(v3, iCol, &v10);
    v8 = v10;
    v9 = v11;
    sub_1B2183238(MEMORY[0x1E69E7230], &v12, &v8, v7);
    sub_1B2113A44(v8, *(&v8 + 1), v9);
    sub_1B218450C(v16);
    swift_willThrow();
  }
}

void sub_1B222BD00(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9B3C(iCol);
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || (v4 = sqlite3_column_int64(v3, iCol), v4 != v4))
  {
    v12 = iCol;
    LOBYTE(v13) = 1;

    RowDecodingContext.init(row:key:)(v5, &v12, v16);
    sub_1B21A2FC0();
    swift_allocError();
    v7 = v6;
    v12 = v16[0];
    v13 = v16[1];
    v14 = v16[2];
    v15 = v16[3];
    sub_1B21320F0(v3, iCol, &v10);
    v8 = v10;
    v9 = v11;
    sub_1B2183238(MEMORY[0x1E69E7290], &v12, &v8, v7);
    sub_1B2113A44(v8, *(&v8 + 1), v9);
    sub_1B218450C(v16);
    swift_willThrow();
  }
}

void sub_1B222BE98(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9B6C(iCol);
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || (v4 = sqlite3_column_int64(v3, iCol), v4 != v4))
  {
    v12 = iCol;
    LOBYTE(v13) = 1;

    RowDecodingContext.init(row:key:)(v5, &v12, v16);
    sub_1B21A2FC0();
    swift_allocError();
    v7 = v6;
    v12 = v16[0];
    v13 = v16[1];
    v14 = v16[2];
    v15 = v16[3];
    sub_1B21320F0(v3, iCol, &v10);
    v8 = v10;
    v9 = v11;
    sub_1B2183238(MEMORY[0x1E69E72F0], &v12, &v8, v7);
    sub_1B2113A44(v8, *(&v8 + 1), v9);
    sub_1B218450C(v16);
    swift_willThrow();
  }
}

void sub_1B222C030(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9BFC(iCol);
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || sqlite3_column_int64(v3, iCol) >= 0x100)
  {
    v11 = iCol;
    LOBYTE(v12) = 1;

    RowDecodingContext.init(row:key:)(v4, &v11, v15);
    sub_1B21A2FC0();
    swift_allocError();
    v6 = v5;
    v11 = v15[0];
    v12 = v15[1];
    v13 = v15[2];
    v14 = v15[3];
    sub_1B21320F0(v3, iCol, &v9);
    v7 = v9;
    v8 = v10;
    sub_1B2183238(MEMORY[0x1E69E7508], &v11, &v7, v6);
    sub_1B2113A44(v7, *(&v7 + 1), v8);
    sub_1B218450C(v15);
    swift_willThrow();
  }
}

void sub_1B222C1C8(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9C80(iCol);
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || sqlite3_column_int64(v3, iCol) >= 0x10000)
  {
    v11 = iCol;
    LOBYTE(v12) = 1;

    RowDecodingContext.init(row:key:)(v4, &v11, v15);
    sub_1B21A2FC0();
    swift_allocError();
    v6 = v5;
    v11 = v15[0];
    v12 = v15[1];
    v13 = v15[2];
    v14 = v15[3];
    sub_1B21320F0(v3, iCol, &v9);
    v7 = v9;
    v8 = v10;
    sub_1B2183238(MEMORY[0x1E69E75F8], &v11, &v7, v6);
    sub_1B2113A44(v7, *(&v7 + 1), v8);
    sub_1B218450C(v15);
    swift_willThrow();
  }
}

void sub_1B222C360(uint64_t a1, unint64_t iCol)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9D04(iCol);
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || sqlite3_column_int64(v3, iCol) >> 32)
  {
    v11 = iCol;
    LOBYTE(v12) = 1;

    RowDecodingContext.init(row:key:)(v4, &v11, v15);
    sub_1B21A2FC0();
    swift_allocError();
    v6 = v5;
    v11 = v15[0];
    v12 = v15[1];
    v13 = v15[2];
    v14 = v15[3];
    sub_1B21320F0(v3, iCol, &v9);
    v7 = v9;
    v8 = v10;
    sub_1B2183238(MEMORY[0x1E69E7668], &v11, &v7, v6);
    sub_1B2113A44(v7, *(&v7 + 1), v8);
    sub_1B218450C(v15);
    swift_willThrow();
  }
}

uint64_t sub_1B222C4F8(uint64_t a1, int64_t iCol, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(unint64_t), uint64_t a7)
{
  if (iCol < 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_11;
  }

  v8 = *(a1 + 64);
  if (!v8)
  {
    return a6(iCol);
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_11:
    sub_1B2122384();
    result = sub_1B2115A74("Fatal error");
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5 || (result = sqlite3_column_int64(v8, iCol), result < 0))
  {
    v35 = iCol;
    v36 = 1;

    RowDecodingContext.init(row:key:)(v11, &v35, v37);
    sub_1B21A2FC0();
    swift_allocError();
    v12 = sub_1B2111C78();
    sub_1B21320F0(v12, iCol, v13);
    sub_1B2116424(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26, v27, v29, v31, v33, v34);
    sub_1B2183238(a7, v22, v23, v24);
    sub_1B2113A44(v28, v30, v32);
    sub_1B218450C(v37);
    return swift_willThrow();
  }

  return result;
}

void sub_1B222C640(uint64_t a1, int64_t iCol)
{
  if (iCol < 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9E0C();
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_10:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5)
  {
    v11 = iCol;
    LOBYTE(v12) = 1;

    RowDecodingContext.init(row:key:)(v4, &v11, v15);
    sub_1B21A2FC0();
    swift_allocError();
    v6 = v5;
    v11 = v15[0];
    v12 = v15[1];
    v13 = v15[2];
    v14 = v15[3];
    sub_1B21320F0(v3, iCol, &v9);
    v7 = v9;
    v8 = v10;
    sub_1B2183238(MEMORY[0x1E69E6448], &v11, &v7, v6);
    sub_1B2113A44(v7, *(&v7 + 1), v8);
    sub_1B218450C(v15);
    swift_willThrow();
  }

  else
  {
    sqlite3_column_double(v3, iCol);
  }
}

void sub_1B222C7D8(uint64_t a1, int64_t iCol)
{
  if (iCol < 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1B21B9E74();
    return;
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_10:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) == 5)
  {
    v11 = iCol;
    LOBYTE(v12) = 1;

    RowDecodingContext.init(row:key:)(v4, &v11, v15);
    sub_1B21A2FC0();
    swift_allocError();
    v6 = v5;
    v11 = v15[0];
    v12 = v15[1];
    v13 = v15[2];
    v14 = v15[3];
    sub_1B21320F0(v3, iCol, &v9);
    v7 = v9;
    v8 = v10;
    sub_1B2183238(MEMORY[0x1E69E63B0], &v11, &v7, v6);
    sub_1B2113A44(v7, *(&v7 + 1), v8);
    sub_1B218450C(v15);
    swift_willThrow();
  }

  else
  {
    sqlite3_column_double(v3, iCol);
  }
}

void sub_1B222C96C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a4;
  v43 = a8;
  v51 = a9;
  v16 = sub_1B2251E90();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v20 == a1)
  {
    (*(a7 + 32))(&v46, a5, a7, v17);
    v44 = v46;
    v45 = v47;
    sub_1B2229E00(a2, a3, v19);
    sub_1B2187B6C(v44, *(&v44 + 1), v45);
    if (v9)
    {
      return;
    }

    goto LABEL_21;
  }

  v21 = sub_1B212F324(a6, a6, &protocol descriptor for DatabaseValueConvertible, &protocol descriptor for StatementColumnConvertible);
  if (!v21)
  {
    v34 = sub_1B212FED0(a6, a6, &protocol descriptor for DatabaseValueConvertible);
    if (!v34)
    {
      v48 = type metadata accessor for ColumnDecoder(0, a5, a7, v36);
      WitnessTable = swift_getWitnessTable();
      *&v46 = a2;
      *(&v46 + 1) = a3;
      v49 = WitnessTable;
      v47 = v42;

      sub_1B22527E0();
      return;
    }

    v48 = v34;
    v49 = v35;
    sub_1B212FF14(&v46);
    static DatabaseValueConvertible.decode(fromRow:atUncheckedIndex:)();
    if (v9)
    {
      goto LABEL_16;
    }

    v37 = &qword_1EB7A1290;
    v38 = &qword_1B226A750;
    goto LABEL_20;
  }

  v24 = v21;
  v25 = v23;
  v48 = v21;
  v49 = v22;
  v50 = v23;
  v26 = v22;
  v27 = sub_1B212FF14(&v46);
  v28 = *(a2 + 64);
  if (v28)
  {
    v43 = v26;
    if (a3 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      v41 = v27;
      v42 = a6;
      if (a3 <= 0x7FFFFFFF)
      {
        MEMORY[0x1EEE9AC00](v27);
        v40[-2] = a2;
        v40[-1] = a3;
        v29 = sqlite3_column_type(v28, a3);
        if (v29 == 5)
        {
LABEL_9:
          MEMORY[0x1EEE9AC00](v29);
          v40[-2] = sub_1B21B6634;
          v40[-1] = &v40[-4];
          static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v28, a3, sub_1B21B663C, &v40[-4], v24);
LABEL_16:
          sub_1B21C80D0(&v46);
          return;
        }

        v40[2] = v40;
        v40[0] = sub_1B2252B00();
        v40[1] = v40;
        v30 = *(v40[0] - 8);
        v31 = MEMORY[0x1EEE9AC00](v40[0]);
        v33 = v40 - v32;
        (*(v25 + 8))(v28, a3, v24, v25, v31);
        if (sub_1B2122A98(v33, 1, v24) == 1)
        {
          v29 = (*(v30 + 8))(v33, v40[0]);
          goto LABEL_9;
        }

        (*(*(v24 - 8) + 32))(v41, v33, v24);
        goto LABEL_19;
      }
    }

    __break(1u);
    return;
  }

  Row.fastDecode<A>(_:atUncheckedIndex:)();
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_19:
  v37 = &unk_1EB7A3250;
  v38 = &unk_1B226A758;
LABEL_20:
  sub_1B21619D8(v37, v38);
LABEL_21:
  swift_dynamicCast();
}

id sub_1B222D1B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v0 setFormatOptions_];
  qword_1EB7A3248 = v0;
  return result;
}

void sub_1B222D200(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void (*a4)(__int128 *__return_ptr, uint64_t)@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v78 = a5;
  v79 = a4;
  v95 = a2;
  v82 = a1;
  v81 = a6;
  v7 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  v77 = type metadata accessor for DatabaseDateComponents(0);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v72 - v18;
  v19 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  v80 = sub_1B2251E90();
  MEMORY[0x1EEE9AC00](v80);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v72 - v31;
  v33 = *a3;
  if (*(a3 + 16))
  {
    if (*(a3 + 16) == 1)
    {
      v74 = v29;
      v34 = v82;
      v35 = v95;
      sub_1B21320F0(v82, v95, &v91);
      v36 = v91;
      v37 = v92;
      v33(&v91);
      v38 = v80;
      if (sub_1B2122A98(v24, 1, v80) == 1)
      {
        v39 = sub_1B212AC5C(v24, &qword_1EB7A1330, &unk_1B226A760);
        v79(&v87, v39);
        sub_1B21320F0(v34, v35, &v85);
        v83 = v85;
        v84 = v86;
        sub_1B21A2FC0();
        swift_allocError();
        sub_1B2183238(v38, &v87, &v83, v40);
        sub_1B2113A44(v83, *(&v83 + 1), v84);
        v91 = v87;
        v92 = v88;
        v93 = v89;
        v94 = v90;
        sub_1B218450C(&v91);
        swift_willThrow();
        sub_1B2113A44(v36, *(&v36 + 1), v37);
      }

      else
      {
        sub_1B2113A44(v36, *(&v36 + 1), v37);
        (*(v74 + 32))(v81, v24, v38);
      }

      return;
    }

    switch(v33)
    {
      case 1uLL:
        sqlite3_column_double(v82, v95);
        sub_1B2251E30();
        return;
      case 2uLL:
      case 3uLL:
        sqlite3_column_double(v82, v95);
        sub_1B2251E60();
        return;
      case 4uLL:
        v54 = v82;
        v55 = v95;
        if (!sqlite3_column_text(v82, v95))
        {
          goto LABEL_32;
        }

        sub_1B2252400();
        v56 = v80;
        if (qword_1EB7A0D80 != -1)
        {
          swift_once();
        }

        v57 = qword_1EB7A3248;
        v58 = sub_1B2252290();

        v44 = [v57 dateFromString_];

        if (v44)
        {
          goto LABEL_7;
        }

        (v79)(&v87);
        sub_1B21320F0(v54, v55, &v85);
        v83 = v85;
        v84 = v86;
        sub_1B21A2FC0();
        swift_allocError();
        v52 = v59;
        v53 = v56;
        break;
      default:
        v73 = v30;
        v74 = v29;
        v45 = v82;
        v46 = v95;
        v47 = sqlite3_column_type(v82, v95);
        if ((v47 - 1) < 2)
        {
          sqlite3_column_double(v45, v46);
          v48 = v73;
          sub_1B2251E60();
          v49 = *(v74 + 32);
          v50 = v80;
LABEL_11:
          v49(v32, v48, v50);
          v49(v81, v32, v50);
          return;
        }

        v50 = v80;
        if (v47 == 3)
        {
          v47 = sqlite3_column_text(v82, v95);
          if (v47)
          {
            v60 = v47;
            v61 = sqlite3_column_bytes(v82, v95);
            SQLiteDateParser.components(cString:length:)(v60, v61, v12);
            sub_1B222EB20(v12, v9, &qword_1EB7A1338, &qword_1B2260530);
            v62 = v77;
            if (sub_1B2122A98(v9, 1, v77) == 1)
            {
              v63 = &qword_1EB7A1338;
              v64 = &qword_1B2260530;
              v65 = v9;
            }

            else
            {
              sub_1B2175B30(v9, v16);
              v66 = sub_1B2251D00();
              v67 = v76;
              (*(*(v66 - 8) + 16))(v76, v16, v66);
              v68 = v16[*(v62 + 20)];
              sub_1B2175BF8(v16);
              *(v67 + *(v62 + 20)) = v68;
              v69 = v75;
              sub_1B2175B94(v67, v75);
              Date.init(databaseDateComponents:)(v69, v21);
              if (sub_1B2122A98(v21, 1, v50) != 1)
              {
                v71 = v74;
                v49 = *(v74 + 32);
                v49(v26, v21, v50);
                sub_1B2251E40();
                v48 = v73;
                sub_1B2251E30();
                (*(v71 + 8))(v26, v50);
                sub_1B2175BF8(v67);
                goto LABEL_11;
              }

              sub_1B2175BF8(v67);
              v63 = &qword_1EB7A1330;
              v64 = &unk_1B226A760;
              v65 = v21;
            }

            v47 = sub_1B212AC5C(v65, v63, v64);
          }
        }

        v79(&v87, v47);
        sub_1B21320F0(v82, v95, &v85);
        v83 = v85;
        v84 = v86;
        sub_1B21A2FC0();
        swift_allocError();
        v52 = v70;
        v53 = v50;
        break;
    }

LABEL_14:
    sub_1B2183238(v53, &v87, &v83, v52);
    sub_1B2113A44(v83, *(&v83 + 1), v84);
    v91 = v87;
    v92 = v88;
    v93 = v89;
    v94 = v90;
    sub_1B218450C(&v91);
    swift_willThrow();
    return;
  }

  v41 = v82;
  v42 = v95;
  if (sqlite3_column_text(v82, v95))
  {
    sub_1B2252400();
    v43 = sub_1B2252290();

    v44 = [v33 dateFromString_];

    if (v44)
    {
LABEL_7:
      sub_1B2251E80();

      return;
    }

    (v79)(&v87);
    sub_1B21320F0(v41, v42, &v85);
    v83 = v85;
    v84 = v86;
    sub_1B21A2FC0();
    swift_allocError();
    v52 = v51;
    v53 = v80;
    goto LABEL_14;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1B222DBFC(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X8>)
{
  v82 = a5;
  v85 = a4;
  v99 = a2;
  v86 = a1;
  v83 = a6;
  v7 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - v11;
  v81 = type metadata accessor for DatabaseDateComponents(0);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v78 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v78 - v18;
  v19 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v78 - v23;
  v84 = sub_1B2251E90();
  MEMORY[0x1EEE9AC00](v84);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v78 - v31;
  v33 = *a3;
  if (*(a3 + 16))
  {
    if (*(a3 + 16) == 1)
    {
      v34 = v29;
      v35 = v86;
      v36 = v99;
      sub_1B21320F0(v86, v99, &v95);
      v37 = v95;
      v38 = v96;
      v81 = *(&v95 + 1);
      v33(&v95);
      v39 = v84;
      if (sub_1B2122A98(v24, 1, v84) == 1)
      {
        sub_1B212AC5C(v24, &qword_1EB7A1330, &unk_1B226A760);
        v95 = v82;
        LOBYTE(v96) = 1;

        RowDecodingContext.init(row:key:)(v40, &v95, &v91);
        sub_1B21320F0(v35, v36, &v89);
        v87 = v89;
        v88 = v90;
        sub_1B21A2FC0();
        swift_allocError();
        sub_1B2183238(v39, &v91, &v87, v41);
        sub_1B2113A44(v87, *(&v87 + 1), v88);
        v95 = v91;
        v96 = v92;
        v97 = v93;
        v98 = v94;
        sub_1B218450C(&v95);
        swift_willThrow();
        sub_1B2113A44(v37, v81, v38);
      }

      else
      {
        sub_1B2113A44(v37, v81, v38);
        (*(v34 + 32))(v83, v24, v39);
      }

      goto LABEL_15;
    }

    switch(v33)
    {
      case 1uLL:
        sqlite3_column_double(v86, v99);
        sub_1B2251E30();
        goto LABEL_15;
      case 2uLL:
      case 3uLL:
        sqlite3_column_double(v86, v99);
        sub_1B2251E60();
        goto LABEL_15;
      case 4uLL:
        v58 = v86;
        v59 = v99;
        if (!sqlite3_column_text(v86, v99))
        {
          goto LABEL_34;
        }

        sub_1B2252400();
        v60 = v84;
        if (qword_1EB7A0D80 != -1)
        {
          swift_once();
        }

        v61 = qword_1EB7A3248;
        v62 = sub_1B2252290();

        v45 = [v61 dateFromString_];

        if (v45)
        {
          goto LABEL_7;
        }

        v95 = v82;
        LOBYTE(v96) = 1;

        RowDecodingContext.init(row:key:)(v63, &v95, &v91);
        sub_1B21320F0(v58, v59, &v89);
        v87 = v89;
        v88 = v90;
        sub_1B21A2FC0();
        swift_allocError();
        v56 = v64;
        v57 = v60;
        break;
      default:
        v78 = v30;
        v47 = v29;
        v48 = v86;
        v49 = v99;
        v50 = sqlite3_column_type(v86, v99);
        if ((v50 - 1) < 2)
        {
          sqlite3_column_double(v48, v49);
          v51 = v78;
          sub_1B2251E60();
          v52 = *(v47 + 32);
          v53 = v84;
LABEL_11:
          v52(v32, v51, v53);
          v52(v83, v32, v53);
          goto LABEL_15;
        }

        if (v50 == 3)
        {
          v65 = sqlite3_column_text(v86, v99);
          if (v65)
          {
            v66 = v65;
            v67 = sqlite3_column_bytes(v86, v99);
            SQLiteDateParser.components(cString:length:)(v66, v67, v12);
            sub_1B222EB20(v12, v9, &qword_1EB7A1338, &qword_1B2260530);
            v68 = v81;
            if (sub_1B2122A98(v9, 1, v81) == 1)
            {
              v69 = &qword_1EB7A1338;
              v70 = &qword_1B2260530;
              v71 = v9;
            }

            else
            {
              sub_1B2175B30(v9, v16);
              v72 = sub_1B2251D00();
              v73 = v80;
              (*(*(v72 - 8) + 16))(v80, v16, v72);
              v74 = v16[*(v68 + 20)];
              sub_1B2175BF8(v16);
              *(v73 + *(v68 + 20)) = v74;
              v75 = v79;
              sub_1B2175B94(v73, v79);
              Date.init(databaseDateComponents:)(v75, v21);
              v53 = v84;
              if (sub_1B2122A98(v21, 1, v84) != 1)
              {
                v52 = *(v47 + 32);
                v52(v26, v21, v53);
                sub_1B2251E40();
                v51 = v78;
                sub_1B2251E30();
                (*(v47 + 8))(v26, v53);
                sub_1B2175BF8(v73);
                goto LABEL_11;
              }

              sub_1B2175BF8(v73);
              v69 = &qword_1EB7A1330;
              v70 = &unk_1B226A760;
              v71 = v21;
            }

            sub_1B212AC5C(v71, v69, v70);
          }
        }

        v95 = v82;
        LOBYTE(v96) = 1;

        RowDecodingContext.init(row:key:)(v76, &v95, &v91);
        sub_1B21320F0(v86, v99, &v89);
        v87 = v89;
        v88 = v90;
        sub_1B21A2FC0();
        swift_allocError();
        v56 = v77;
        v57 = v84;
        break;
    }

LABEL_14:
    sub_1B2183238(v57, &v91, &v87, v56);
    sub_1B2113A44(v87, *(&v87 + 1), v88);
    v95 = v91;
    v96 = v92;
    v97 = v93;
    v98 = v94;
    sub_1B218450C(&v95);
    swift_willThrow();
LABEL_15:

    return;
  }

  v42 = v86;
  v43 = v99;
  if (sqlite3_column_text(v86, v99))
  {
    sub_1B2252400();
    v44 = sub_1B2252290();

    v45 = [v33 dateFromString_];

    v46 = v84;
    if (v45)
    {
LABEL_7:
      sub_1B2251E80();

      return;
    }

    v95 = v82;
    LOBYTE(v96) = 1;

    RowDecodingContext.init(row:key:)(v54, &v95, &v91);
    sub_1B21320F0(v42, v43, &v89);
    v87 = v89;
    v88 = v90;
    sub_1B21A2FC0();
    swift_allocError();
    v56 = v55;
    v57 = v46;
    goto LABEL_14;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1B222E668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_1B22522F0();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *v2;
  if (*(v2 + 16))
  {
    if (*(v2 + 16) == 1)
    {
      v36 = v13;
      v37 = v14;
      v38 = v15;
      return v16(&v36, v12);
    }

    switch(v16)
    {
      case 1uLL:
        if (v15 >= 2)
        {
          goto LABEL_24;
        }

        sub_1B2251E30();
        goto LABEL_34;
      case 2uLL:
        if (v15 <= 1)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      case 3uLL:
        if (v15 > 1)
        {
LABEL_24:
          v24 = sub_1B2251E90();
          v25 = a2;
          v26 = 1;
        }

        else
        {
LABEL_32:
          sub_1B2251E60();
LABEL_34:
          v24 = sub_1B2251E90();
          v25 = a2;
          v26 = 0;
        }

        return sub_1B21117B4(v25, v26, 1, v24);
      case 4uLL:
        if (v15 == 3)
        {
          sub_1B22522E0();
          sub_1B22522C0();
          if (!v27)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_30;
          }

          sub_1B2113A20(v13, v14, 2);
        }

        v28 = qword_1EB7A0D80;

        if (v28 != -1)
        {
          swift_once();
        }

        v29 = qword_1EB7A3248;
        v30 = sub_1B2252290();
        v31 = [v29 dateFromString_];

        if (v31)
        {
          sub_1B2251E80();

          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        v34 = sub_1B2251E90();
        sub_1B21117B4(v10, v32, 1, v34);
        v23 = v10;
        break;
      default:
        v36 = v13;
        v37 = v14;
        v38 = v15;
        return static Date.fromDatabaseValue(_:)(&v36, a2);
    }

    goto LABEL_15;
  }

  if (v15 == 2)
  {
    sub_1B2113A20(v13, v14, 2);
    goto LABEL_11;
  }

  if (v15 == 3)
  {
    sub_1B22522E0();
    sub_1B22522C0();
    if (v18)
    {
LABEL_11:

      v19 = sub_1B2252290();
      v20 = [v16 dateFromString_];

      if (v20)
      {
        sub_1B2251E80();

        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v22 = sub_1B2251E90();
      sub_1B21117B4(v7, v21, 1, v22);
      v23 = v7;
LABEL_15:
      sub_1B222EB20(v23, a2, &qword_1EB7A1330, &unk_1B226A760);
      return swift_bridgeObjectRelease_n();
    }
  }

LABEL_30:
  v33 = sub_1B2251E90();
  return sub_1B21117B4(a2, 1, 1, v33);
}

sqlite3_stmt *sub_1B222EAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) == 0 && v2[9] > a1)
  {
    return sub_1B216A780(v2, a1, a2);
  }

  result = sub_1B2115A74("Fatal error");
  __break(1u);
  return result;
}

uint64_t sub_1B222EB20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B21619D8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B222EB88(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A15CC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B222EBF4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B222EBF4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B219F3BC(v7, v8, a1, v4);
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
    return sub_1B219E97C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B222ECE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B222ED34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A3258, &qword_1B226A770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B222EDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A3258, &qword_1B226A770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B222EE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B222EE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ValueReducers.Fetch._value(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  (*(*(v4 - 8) + 16))(a3, a1, v4);

  return sub_1B21117B4(a3, 0, 1, v4);
}

uint64_t sub_1B222EF94(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B222F000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

GRDBInternal::StatementArguments __swiftcall StatementArguments.init()()
{
  v1 = MEMORY[0x1E69E7CC8];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v1;
  return result;
}

uint64_t Statement.arguments.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  a1[1] = v2;
}

uint64_t sub_1B222F0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  sub_1B2116AD0();
  result = swift_beginAccess();
  if ((*(v3 + 24) & 1) == 0)
  {
    v10 = *(v3 + 16);

    result = a3(v10, a1, a2, v3);
    if (!v6)
    {
      *(v3 + 24) = 1;
    }
  }

  return result;
}

sqlite3_int64 sub_1B222F15C(sqlite3_stmt *a1)
{
  v3 = *(v1 + 28);
  if (sqlite3_column_type(a1, v3) == 5)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int64(a1, v3);
  }
}

uint64_t sub_1B222F1B8(sqlite3_stmt *a1)
{
  v3 = *(v1 + 28);
  if (sqlite3_column_type(a1, v3) == 5)
  {
    return 2;
  }

  else
  {
    return sqlite3_column_int64(a1, v3) != 0;
  }
}

Swift::Int_optional __swiftcall Statement.index(ofColumn:)(Swift::String ofColumn)
{
  v1 = sub_1B2252220();
  v3 = v2;
  v4 = sub_1B222F74C();
  v5 = sub_1B212F2CC(v1, v3, v4);
  v7 = v6;

  v8 = v7 & 1;
  v9 = v5;
  result.value = v9;
  result.is_nil = v8;
  return result;
}

uint64_t StatementArguments.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v8 = sub_1B2150D28(sub_1B2230680, 0, a2, &type metadata for DatabaseValue, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a4);
  sub_1B2111808();
  result = (*(v9 + 8))(a1, a2);
  v11 = MEMORY[0x1E69E7CC8];
  *a5 = v8;
  a5[1] = v11;
  return result;
}

uint64_t sub_1B222F474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  v3 = sub_1B211497C();
  return DatabaseCursor.next()(v3, v4, v5);
}

uint64_t sub_1B222F510()
{
  v0 = sub_1B2251B80();
  sub_1B21115E0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1B2175CC4(v9, qword_1ED8618E8);
  sub_1B2156958(v0, qword_1ED8618E8);
  sub_1B2251B30();
  sub_1B2251B60();
  sub_1B2251B70();
  v10 = *(v2 + 8);
  v10(v5, v0);
  return (v10)(v8, v0);
}

uint64_t (*Statement.columnNames.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = Statement.columnNames.getter();
  return sub_1B222F6CC;
}

uint64_t Statement.databaseRegion.getter@<X0>(void *a1@<X8>)
{
  sub_1B21115FC();
  swift_beginAccess();
  *a1 = *(v1 + 32);
}

uint64_t sub_1B222F74C()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v1 = sub_1B222F7AC();
    *(v0 + 88) = v1;
  }

  return v1;
}

uint64_t sub_1B222F7AC()
{
  v0 = Statement.columnNames.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    result = sub_1B211E89C(0, v1, 0);
    v3 = 0;
    v4 = v13;
    v5 = *(v0 + 16);
    v6 = v0 + 40;
    while (v5 != v3)
    {
      if (v3 >= *(v0 + 16))
      {
        goto LABEL_12;
      }

      result = sub_1B2252220();
      v7 = result;
      v9 = v8;
      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1B211E89C(v10 > 1, v11 + 1, 1);
      }

      *(v13 + 16) = v11 + 1;
      v12 = (v13 + 24 * v11);
      v12[4] = v7;
      v12[5] = v9;
      v12[6] = v3++;
      v6 += 16;
      if (v1 == v3)
      {

        return sub_1B211E40C(v4);
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
    return sub_1B211E40C(v4);
  }

  return result;
}

double sub_1B222F8E4@<D0>(_OWORD *a1@<X8>)
{
  Statement.arguments.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1B222F920(void *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;

  return Statement.arguments.setter(v4, v2);
}

uint64_t (*Statement.arguments.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  *a1 = v3;
  a1[1] = v4;

  return sub_1B222F9C8;
}

uint64_t sub_1B222F9C8(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (a2)
  {
    v5 = *a1;
    v6 = v2;

    Statement.arguments.setter(&v5, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v2;
    return Statement.arguments.setter(&v5, a2);
  }
}

uint64_t sub_1B222FA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SchedulingWatchdog();
  v7 = *(a1 + 80);
  swift_unownedRetainStrong();

  if (sub_1B2117B40(v7))
  {

    v8 = *(a1 + 16);
    if (sqlite3_stmt_busy(v8))
    {
      v24 = a1;
      v27 = v7;
      goto LABEL_4;
    }

    swift_unownedRetainStrong();
    Database.statementWillExecute(_:)(a1);
    if (v3)
    {
    }

    else
    {
      v24 = a1;
      v27 = v7;

LABEL_4:
      while (sqlite3_step(v8) == 100)
      {
        v30 = *(a2 + 32);
        v9 = *(a3 + 24);

        v9(&v29, &v30);
        if (v3)
        {

          return sub_1B2122A70();
        }

        v10 = v29;

        sub_1B2246D34(&v28, v10);
      }

      sub_1B21122DC();
      if (v19)
      {
        sub_1B21130F0(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23, v24, v27);
        swift_unownedRetainStrong();
        Database.statementDidExecute(_:)(v25, v20);
        if (!v3)
        {
          sub_1B2122A70();
        }
      }

      else
      {
        sub_1B21130F0(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23, v24, v27);
        swift_unownedRetainStrong();
        sub_1B2122700(v26);
      }
    }

    return sub_1B2122A70();
  }

  else
  {
    sub_1B2122A70();

    sub_1B2112EA0();
    sub_1B2117938();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B222FC88(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  type metadata accessor for SchedulingWatchdog();
  v9 = swift_unownedRetainStrong();
  if ((sub_1B2117B40(v9) & 1) == 0)
  {

    sub_1B2252EC0();
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(a1 + 16);
  if (sqlite3_stmt_busy(v5))
  {
    goto LABEL_7;
  }

  swift_unownedRetainStrong();
  Database.statementWillExecute(_:)(a1);
  if (!v4)
  {
LABEL_6:
    while (1)
    {

LABEL_7:
      v10 = sqlite3_step(v5);
      if (v10 != 100)
      {
        break;
      }

      v14 = *(a4 + 32);

      a2(&v14);
      if (v4)
      {
        goto LABEL_13;
      }
    }

    v11 = v10;
    if (v10 == 101)
    {
      swift_unownedRetainStrong();
      Database.statementDidExecute(_:)(a1, v12);
    }

    else
    {
      swift_unownedRetainStrong();
      Database.statementDidFail(_:withResultCode:)(a1, v11);
    }
  }

LABEL_13:
}

uint64_t sub_1B222FE44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for SchedulingWatchdog();
  v5 = swift_unownedRetainStrong();
  if (sub_1B2117B40(v5))
  {

    v6 = *(a1 + 16);
    if (sqlite3_stmt_busy(v6))
    {
      v21 = a1;
    }

    else
    {
      swift_unownedRetainStrong();
      Database.statementWillExecute(_:)(a1);
      if (v22)
      {
LABEL_14:
      }

      v21 = a1;
    }

    while (1)
    {
      v7 = sqlite3_step(v6);
      if (v7 != 100)
      {
        break;
      }

      v8 = sub_1B215A47C(v6);
      v10 = v9;
      v11 = *a3;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B21150D0();
        sub_1B214400C();
        v11 = v16;
        *a3 = v16;
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1B211156C(v13);
        sub_1B214400C();
        v11 = v17;
        *a3 = v17;
      }

      *(v11 + 16) = v14 + 1;
      v15 = v11 + 16 * v14;
      *(v15 + 32) = v8;
      *(v15 + 40) = v10;
    }

    v18 = v7;
    if (v7 == 101)
    {
      swift_unownedRetainStrong();
      Database.statementDidExecute(_:)(v21, v19);
      sub_1B211DA88();
    }

    swift_unownedRetainStrong();
    Database.statementDidFail(_:withResultCode:)(v21, v18);
    goto LABEL_14;
  }

  sub_1B2112EA0();
  sub_1B2117938();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B2230040(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for SchedulingWatchdog();
  v5 = swift_unownedRetainStrong();
  if (sub_1B2117B40(v5))
  {

    v6 = *(a1 + 16);
    if (sqlite3_stmt_busy(v6))
    {
      goto LABEL_3;
    }

    swift_unownedRetainStrong();
    Database.statementWillExecute(_:)(a1);
    if (!v2)
    {

LABEL_3:
      while (1)
      {
        v7 = sqlite3_step(v6);
        if (v7 != 100)
        {
          break;
        }

        a2();
        if (v2)
        {
        }
      }

      v8 = v7;
      if (v7 == 101)
      {
        swift_unownedRetainStrong();
        Database.statementDidExecute(_:)(a1, v9);
      }

      else
      {
        swift_unownedRetainStrong();
        Database.statementDidFail(_:withResultCode:)(a1, v8);
      }
    }
  }

  else
  {

    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B22301D0(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v8 = sub_1B211497C();
    Database.statementWillExecute(_:)(v8);
    v1 = v2;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  if (sqlite3_step(v3) == 100)
  {
    v9 = sub_1B2115468();
    sub_1B2231A08(v9, v10);
    if (!v2)
    {

      return v11;
    }
  }

  sub_1B21122DC();
  if (!v4)
  {
    sub_1B2118184();
    sub_1B2122398();
LABEL_11:
  }

  sub_1B2118184();
  v5 = sub_1B211497C();
  Database.statementDidExecute(_:)(v5, v6);
  sub_1B211DA88();

  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B22302C0(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v8 = sub_1B211497C();
    Database.statementWillExecute(_:)(v8);
    v1 = v2;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  if (sqlite3_step(v3) == 100)
  {
    v9 = sub_1B2115468();
    sub_1B22319EC(v9, v10);
    if (!v2)
    {

      return v11;
    }
  }

  sub_1B21122DC();
  if (!v4)
  {
    sub_1B2118184();
    sub_1B2122398();
LABEL_11:
  }

  sub_1B2118184();
  v5 = sub_1B211497C();
  Database.statementDidExecute(_:)(v5, v6);
  sub_1B211DA88();

  if (!v1)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1B2230398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  if (!sqlite3_stmt_busy(v6))
  {
    sub_1B2122070();
    v11 = sub_1B211E540();
    Database.statementWillExecute(_:)(v11);
    v3 = v2;
    if (v2)
    {
      goto LABEL_10;
    }
  }

  if (sqlite3_step(v6) == 100)
  {
    sub_1B2111BFC();
    sub_1B2231A24(v12);
  }

  sub_1B21122DC();
  if (!v7)
  {
    sub_1B2122070();
    sub_1B2122700(a1);
LABEL_10:
  }

  sub_1B2122070();
  v8 = sub_1B211E540();
  Database.statementDidExecute(_:)(v8, v9);
  sub_1B211DA88();

  if (!v3)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_1B2230528()
{
  sub_1B21115FC();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1B2230558(char a1)
{
  sub_1B2116AD0();
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1B22305DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2133BF0();
  if (!v1)
  {
    *a1 = result & 1;
  }

  return result;
}

BOOL sub_1B2230638()
{
  v1 = *(v0 + 64);
  if ((v1 - 1) < 2)
  {
    return 1;
  }

  if (v1 == 3)
  {
    return __PAIR128__((*(v0 + 48) != 0) + *(v0 + 56) - 1, *(v0 + 48) - 1) < 2;
  }

  return 0;
}

uint64_t sub_1B2230680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B211E17C(a1, v11, &qword_1EB7A0E30, &unk_1B2259360);
  v3 = v12;
  if (v12)
  {
    v4 = v13;
    sub_1B21139A0(v11, v12);
    (*(v4 + 24))(&v9, v3, v4);
    v8 = v9;
    v5 = v10;
    result = sub_1B2113208(v11);
    v7 = v8;
  }

  else
  {
    result = sub_1B2122B98(v11);
    v7 = 0uLL;
    v5 = 4;
  }

  *a2 = v7;
  *(a2 + 16) = v5;
  return result;
}

GRDBInternal::StatementArguments_optional __swiftcall StatementArguments.init(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v23 = v1;
  v3 = 0;
  v4 = *(a1._rawValue + 2);
  v5 = MEMORY[0x1E69E7CC0];
  for (i = a1._rawValue + 32; ; i += 32)
  {
    if (v4 == v3)
    {

      sub_1B2112554(v5, &v28, v19, v20, v21, v22);
      *v23 = v28;
      goto LABEL_13;
    }

    if (v3 >= rawValue[2])
    {
      break;
    }

    sub_1B21721B4(i, v31);
    sub_1B21721B4(v31, v27);
    sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1B2113208(v31);
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_1B2122B98(&v24);

      *v23 = 0;
      *(v23 + 8) = 0;
      goto LABEL_13;
    }

    sub_1B21217FC(&v24, &v28);
    v7 = v29;
    v8 = v30;
    sub_1B21139A0(&v28, v29);
    (*(v8 + 24))(&v24, v7, v8);
    sub_1B2113208(v31);
    v9 = v24;
    v10 = v25;
    sub_1B2113208(&v28);
    sub_1B2113A20(v9, *(&v9 + 1), v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21150D0();
      sub_1B2163040();
      v5 = v17;
    }

    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1B211156C(v11);
      sub_1B2163040();
      v5 = v18;
    }

    a1._rawValue = sub_1B2113A44(v9, *(&v9 + 1), v10);
    *(v5 + 16) = v12 + 1;
    v15 = v5 + 40 * v12;
    *(v15 + 32) = v9;
    *(v15 + 48) = v10;
    v16 = *(&v28 + 3);
    *(v15 + 49) = v28;
    *(v15 + 52) = v16;
    *(v15 + 56) = &type metadata for DatabaseValue;
    *(v15 + 64) = &protocol witness table for DatabaseValue;
    ++v3;
  }

  __break(1u);
LABEL_13:
  result.value.namedValues._rawValue = v13;
  result.value.values = a1;
  result.is_nil = v14;
  return result;
}

{
  v36 = v1;
  v2 = 0;
  v3 = a1._rawValue + 64;
  sub_1B21115A0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v9 = MEMORY[0x1E69E7CC8];
  v38 = v8;
  v39 = v3;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v10 = v2;
LABEL_7:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v10 << 6);
      sub_1B223182C(*(a1._rawValue + 6) + 40 * v12, &v43);
      sub_1B21721B4(*(a1._rawValue + 7) + 32 * v12, v42);
      __src[0] = v43;
      __src[1] = v44;
      *&__src[2] = v45;
      sub_1B2226E2C(v42, (&__src[2] + 8));
LABEL_8:
      memcpy(__dst, __src, 0x48uLL);
      if (!*(&__dst[1] + 1))
      {

        v35 = StatementArguments.init(_:)(v9);
        rawValue = v35.namedValues._rawValue;
        v32 = v35.values._rawValue;
        *v36 = __dst[0];
        goto LABEL_30;
      }

      sub_1B2226E2C((&__dst[2] + 8), v42);
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      *&__src[2] = *&__dst[2];
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1B2113208(v42);

        goto LABEL_25;
      }

      v13 = v43;
      sub_1B21721B4(v42, v41);
      sub_1B21721B4(v41, v40);
      sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1B21217FC(&v43, __src);
      v14 = *(&__src[1] + 1);
      v15 = *&__src[2];
      sub_1B21139A0(__src, *(&__src[1] + 1));
      (*(v15 + 24))(&v43, v14, v15);
      sub_1B2113208(v41);
      v16 = v43;
      v17 = v44;
      sub_1B2113208(__src);
      __src[0] = v16;
      LOBYTE(__src[1]) = v17;
      *(&__src[1] + 1) = &type metadata for DatabaseValue;
      *&__src[2] = &protocol witness table for DatabaseValue;
      sub_1B2113A20(v16, *(&v16 + 1), v17);
      swift_isUniquelyReferenced_nonNull_native();
      *&v43 = v9;
      sub_1B211E590();
      sub_1B2118304();
      if (__OFADD__(v20, v21))
      {
        goto LABEL_27;
      }

      v22 = v18;
      v23 = v19;
      sub_1B21619D8(&qword_1EB7A2238, &qword_1B226BA40);
      if (sub_1B2252E70())
      {
        v24 = sub_1B211E590();
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_29;
        }

        v22 = v24;
      }

      if (v23)
      {

        v9 = v43;
        sub_1B2231888(__src, *(v43 + 56) + 40 * v22);
        sub_1B2113A44(v16, *(&v16 + 1), v17);
        sub_1B2113208(v42);
      }

      else
      {
        v9 = v43;
        *(v43 + 8 * (v22 >> 6) + 64) |= 1 << v22;
        *(v9[6] + 16 * v22) = v13;
        v26 = v9[7] + 40 * v22;
        v27 = *&__src[2];
        v28 = __src[1];
        *v26 = __src[0];
        *(v26 + 16) = v28;
        *(v26 + 32) = v27;
        sub_1B2113A44(v16, *(&v16 + 1), v17);
        sub_1B2113208(v42);
        v29 = v9[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_28;
        }

        v9[2] = v31;
      }

      v8 = v38;
      v3 = v39;
      if (!v6)
      {
        goto LABEL_3;
      }
    }

    sub_1B2113208(v41);
    sub_1B2113208(v42);
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_1B2122B98(&v43);

LABEL_25:
    *v36 = 0;
    *(v36 + 8) = 0;
  }

  else
  {
LABEL_3:
    while (1)
    {
      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        v6 = 0;
        memset(__src, 0, 72);
        goto LABEL_8;
      }

      v6 = *&v3[8 * v10];
      ++v2;
      if (v6)
      {
        v2 = v10;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v32 = sub_1B2253390();
    __break(1u);
  }

LABEL_30:
  result.value.namedValues._rawValue = rawValue;
  result.value.values._rawValue = v32;
  result.is_nil = v34;
  return result;
}

GRDBInternal::StatementArguments __swiftcall StatementArguments.init(_:)(Swift::OpaquePointer a1)
{
  v31 = v1;
  sub_1B21619D8(&qword_1EB7A1900, &qword_1B2259370);
  v3 = sub_1B2252EE0();
  v4 = 0;
  rawValue = a1._rawValue;
  v5 = a1._rawValue + 64;
  sub_1B21115A0();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v32 = v6;
  v33 = v6 + 64;
  if ((v9 & v8) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_8:
      v16 = v13 | (v4 << 6);
      v17 = (rawValue[6] + 16 * v16);
      v35 = *v17;
      v36 = v17[1];
      sub_1B211E17C(rawValue[7] + 40 * v16, v42, &qword_1EB7A0E30, &unk_1B2259360);
      sub_1B211E17C(v42, v39, &qword_1EB7A0E30, &unk_1B2259360);
      v18 = v40;
      if (v40)
      {
        v19 = v41;
        sub_1B21139A0(v39, v40);
        v20 = v10;
        v21 = *(v19 + 24);

        v22 = v19;
        v3 = v32;
        v21(v37, v18, v22);
        v10 = v20;
        v23 = v37[0];
        v18 = v37[1];
        v24 = v38;
        sub_1B2113208(v39);
      }

      else
      {

        sub_1B2122B98(v39);
        v23 = 0;
        v24 = 4;
      }

      v6 = sub_1B2122B98(v42);
      *&v33[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
      v25 = (v3[6] + 16 * v16);
      *v25 = v35;
      v25[1] = v36;
      v26 = v3[7] + 24 * v16;
      *v26 = v23;
      *(v26 + 8) = v18;
      *(v26 + 16) = v24;
      v27 = v3[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v3[2] = v29;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v12)
      {

        *v31 = MEMORY[0x1E69E7CC0];
        v31[1] = v3;
        goto LABEL_17;
      }

      v15 = *&v5[8 * v4];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_17:
  result.namedValues._rawValue = v7;
  result.values._rawValue = v6;
  return result;
}

uint64_t sub_1B2230BAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = MEMORY[0x1B2741C60](*(a1 + 16), MEMORY[0x1E69E6158], &type metadata for DatabaseValue, MEMORY[0x1E69E6168]);
  v30 = *(v2 + 16);
  if (v30)
  {
    v28 = a2;
    v29 = v2;
    v5 = 0;
    v6 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      sub_1B211E17C(v6, v37, &qword_1EB7A3320, &qword_1B226ACC8);
      v7 = v37[1];
      v32 = v37[0];
      v35[0] = v38;
      v35[1] = v39;
      v36 = v40;
      v8 = *(&v39 + 1);
      if (*(&v39 + 1))
      {
        v9 = v36;
        sub_1B21139A0(v35, *(&v39 + 1));
        (*(v9 + 24))(v33, v8, v9);
        v11 = v33[0];
        v10 = v33[1];
        v31 = v34;
        sub_1B2113208(v35);
      }

      else
      {
        sub_1B2122B98(v35);
        v11 = 0;
        v10 = 0;
        v31 = 4;
      }

      swift_isUniquelyReferenced_nonNull_native();
      *&v35[0] = v4;
      v12 = sub_1B211E590();
      if (__OFADD__(v4[2], (v13 & 1) == 0))
      {
        goto LABEL_20;
      }

      v14 = v12;
      v15 = v13;
      sub_1B21619D8(&qword_1EB7A1918, &qword_1B226A9E0);
      if (sub_1B2252E70())
      {
        v16 = sub_1B211E590();
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_22;
        }

        v14 = v16;
      }

      if (v15)
      {

        v4 = *&v35[0];
        v18 = *(*&v35[0] + 56) + 24 * v14;
        v19 = *v18;
        v20 = *(v18 + 8);
        *v18 = v11;
        *(v18 + 8) = v10;
        v21 = *(v18 + 16);
        *(v18 + 16) = v31;
        sub_1B2113A44(v19, v20, v21);
      }

      else
      {
        v4 = *&v35[0];
        *(*&v35[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
        v22 = (v4[6] + 16 * v14);
        *v22 = v32;
        v22[1] = v7;
        v23 = v4[7] + 24 * v14;
        *v23 = v11;
        *(v23 + 8) = v10;
        *(v23 + 16) = v31;
        v24 = v4[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        v4[2] = v26;
      }

      ++v5;
      v6 += 56;
      v2 = v29;
      if (v30 == v5)
      {

        a2 = v28;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_1B2253390();
    __break(1u);
  }

  else
  {

LABEL_18:
    *a2 = MEMORY[0x1E69E7CC0];
    a2[1] = v4;
  }

  return result;
}