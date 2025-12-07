void sub_18E6FB400(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

double sub_18E6FB41C@<D0>(uint64_t a1@<X8>)
{
  sub_18E6FB400(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_18E6FB470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6FB4C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

void *sub_18E6FB518@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for ExpirationRecord(255, AssociatedTypeWitness, v9, v10);
  v55 = type metadata accessor for GestureOutput(0, v11, v12, v13);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v46 - v14;
  v50 = sub_18E72B438();
  v49 = *(v50 - 8);
  v15 = MEMORY[0x1EEE9AC00](v50);
  v17 = &v46 - v16;
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v46 - v18;
  v58 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v19, v20);
  v53 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v22 = &v46 - v21;
  v23 = a1[1];
  v64 = *a1;
  v24 = a1[2];
  v65 = v23;
  v66 = v24;
  v67 = *(a1 + 6);
  v25 = v3 + *(a2 + 36);
  if (*v25 > 0 && (!v66 ? (v26 = *(v25 + 48)) : (v26 = 0), v26 == 1))
  {
    *(v25 + 32) = v65;
    *(v25 + 48) = 0;
  }

  else if (*(v25 + 48))
  {
    v27 = v7;
    v28 = &v64;
    v29 = &v64 + 1;
    goto LABEL_10;
  }

  v27 = v7;
  v28 = (v25 + 32);
  v29 = (v25 + 40);
LABEL_10:
  v30 = *v29;
  *&v60 = *v28;
  *(&v60 + 1) = v30;
  v61 = v65;
  v62 = v66;
  v63 = v67;
  sub_18E6FBE70(&v64, v59);
  v31 = v68;
  GestureComponent.tracingUpdate(context:)(&v60, v6, v27, v22);
  v68 = v31;
  if (v31)
  {
  }

  else
  {
    v47 = v27;
    v48 = v3;
    GestureOutput.value.getter(v58, v17);
    v33 = v57;
    if ((*(v57 + 48))(v17, 1, AssociatedTypeWitness) == 1)
    {
      (*(v49 + 8))(v17, v50);
      v34 = v58;
      result = sub_18E6FF240(v58, v59);
      v35 = v59[0];
      if (v59[0] == 3)
      {
        __break(1u);
      }

      else
      {
        sub_18E6FED28(v34, &v60);

        (*(v53 + 8))(v22, v34);
        v36 = v54;
        *v54 = v35;
        v37 = v61;
        *(v36 + 8) = v60;
        *(v36 + 24) = v37;
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v38 = v56;
      (*(v33 + 32))(v56, v17, AssociatedTypeWitness);
      v39 = v51;
      sub_18E6FBB08(v48, v38, &v64, v6, v47, v51);
      sub_18E6FED28(v58, &v60);
      v41.i64[0] = 0;
      if (v60)
      {
        v42 = v60;
      }

      else
      {
        v42 = MEMORY[0x1E69E7CC0];
      }

      v40.i64[0] = v60;
      v43 = vandq_s8(v61, vdupq_lane_s64(vmvnq_s8(vceqq_s64(v40, v41)).i64[0], 0));
      if (v60)
      {
        v44 = *(&v60 + 1);
      }

      else
      {
        v44 = MEMORY[0x1E69E7CC0];
      }

      *&v60 = v42;
      *(&v60 + 1) = v44;
      v61 = v43;
      v45 = v55;
      sub_18E6FF750(&v60, v55, v54);

      (*(v52 + 8))(v39, v45);
      (*(v57 + 8))(v56, AssociatedTypeWitness);
      return (*(v53 + 8))(v22, v58);
    }
  }

  return result;
}

uint64_t sub_18E6FBB08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v31[1] = a3;
  v32 = a2;
  v33 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v31 - v15;
  v17 = GestureOutput.isFinal.getter(v14);
  result = type metadata accessor for RepeatComponent(0, a4, a5, v18);
  v21 = a1 + *(result + 36);
  if (v17)
  {
    v22 = *v21 + 1;
    if (__OFADD__(*v21, 1))
    {
      __break(1u);
      return result;
    }

    *v21 = v22;
    if (v22 >= *(a1 + *(result + 40)))
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v30 = &v16[*(swift_getTupleTypeMetadata2() + 48)];
      (*(*(AssociatedTypeWitness - 8) + 16))(v16, v32, AssociatedTypeWitness);
      *v30 = 0u;
      *(v30 + 1) = 0u;
      swift_storeEnumTagMultiPayload();
      sub_18E6AF478(v12, v33);
      return (*(v13 + 8))(v16, v12);
    }

    (*(a5 + 24))(a4, a5);
    *(v21 + 32) = 0;
    *(v21 + 40) = 0;
    *(v21 + 48) = 1;
    v23 = _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
    v25 = v24;
    *(v21 + 8) = v23;
    *(v21 + 16) = v24;
    *(v21 + 24) = 0;
    goto LABEL_10;
  }

  if (*(v21 + 24) != 1)
  {
    v23 = *(v21 + 8);
    v25 = *(v21 + 16);
LABEL_10:
    v28 = v32;
    v29 = v33;

    return sub_18E6AEDEC(v28, 0, v23, v25, 0xD000000000000017, 0x800000018E73AB80, AssociatedTypeWitness, v29);
  }

  v26 = v32;
  v27 = v33;

  return sub_18E6AEF20(v26, AssociatedTypeWitness, v20, v27);
}

__n128 sub_18E6FBDF0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 48);
  *a2 = *v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

__n128 sub_18E6FBE24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 48);
  v6 = v2 + *(a2 + 36);
  *v6 = *a1;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  result = *(a1 + 32);
  *(v6 + 32) = result;
  *(v6 + 48) = v5;
  return result;
}

uint64_t sub_18E6FBECC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E6FBEEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t sub_18E6FBF40(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E6FBFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }

  else
  {
    v12 = *(a1 + 16);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v12);
  }
}

uint64_t sub_18E6FC174@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(result + 8);
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4 & 1;
  *(a6 + 40) = a5;
  return result;
}

void sub_18E6FC198(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_18E6FC1A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6FC1FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

void *sub_18E6FC250@<X0>(char a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*(v3 + 32) == 1)
  {
    *(v3 + 16) = (*(*(*(*(a2 + 24) + 8) + 16) + 8))(*(a2 + 16));
    *(v3 + 24) = v7;
    *(v3 + 32) = 0;
  }

  v8 = *(v3 + 40);
  v11 = a2 + 16;
  v9 = *(a2 + 16);
  v10 = *(v11 + 8);
  if (v8)
  {
    (*(v10 + 16))(v9, v10);
  }

  else
  {
    (*(v10 + 24))(v9, v10);
  }

  v12.f64[1] = v13;
  v14 = vdup_n_s32((v8 & 2) == 0);
  v15.i64[0] = v14.u32[0];
  v15.i64[1] = v14.u32[1];
  *(v3 + 16) = vaddq_f64(*(v3 + 16), vbslq_s8(vcltzq_s64(vshlq_n_s64(v15, 0x3FuLL)), v12, vnegq_f64(v12)));
  result = (*(*(*(v10 + 8) + 8) + 16))(&v18, v9);
  if (*(v3 + 32))
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    *a3 = v18;
    *(a3 + 8) = *(v3 + 16);
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = v17;
  }

  return result;
}

__n128 sub_18E6FC3C4@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 sub_18E6FC3D8(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E6FC418(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6FC454(uint64_t a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1)
  {
    v3 = a1;
    v1 = sub_18E6ED4A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_18E6ED4A8((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    v6 = &v1[16 * v5];
    *(v6 + 4) = 0xD000000000000016;
    *(v6 + 5) = 0x800000018E73ABA0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v1 = MEMORY[0x1E69E7CC0];
  if ((a1 & 2) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_18E6ED4A8(0, *(v1 + 2) + 1, 1, v1);
    }

    v8 = *(v1 + 2);
    v7 = *(v1 + 3);
    if (v8 >= v7 >> 1)
    {
      v1 = sub_18E6ED4A8((v7 > 1), v8 + 1, 1, v1);
    }

    *(v1 + 2) = v8 + 1;
    v9 = &v1[16 * v8];
    *(v9 + 4) = 0x6944747265766E69;
    *(v9 + 5) = 0xEF6E6F6974636572;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
  sub_18E6A9E68();
  v10 = sub_18E72AF58();
  v12 = v11;

  MEMORY[0x193AD15C0](v10, v12);

  MEMORY[0x193AD15C0](32032, 0xE200000000000000);

  return 8315;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18E6FC678(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E6FC698(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_18E6FC6DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6FC740()
{
  result = qword_1EAC8F278;
  if (!qword_1EAC8F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F278);
  }

  return result;
}

unint64_t sub_18E6FC798()
{
  result = qword_1EAC8F280;
  if (!qword_1EAC8F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F280);
  }

  return result;
}

unint64_t sub_18E6FC7F0()
{
  result = qword_1EAC8F288;
  if (!qword_1EAC8F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F288);
  }

  return result;
}

unint64_t sub_18E6FC848()
{
  result = qword_1EAC8F290;
  if (!qword_1EAC8F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F290);
  }

  return result;
}

uint64_t GesturePhase.isIdle.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v2 + 8))(v4, a1);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 1;
    }
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v4);
  }

  return 0;
}

uint64_t GesturePhase.isTerminal.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      return 0;
    }

    (*(v2 + 8))(v4, a1);
    return 1;
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      (*(*(*(a1 + 16) - 8) + 8))(v4);
      return 0;
    }

    (*(*(*(a1 + 16) - 8) + 8))(v4);
    return 1;
  }
}

uint64_t GesturePhase.isBlocked.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v2 + 8))(v4, a1);
    }

    return 0;
  }

  else if (EnumCaseMultiPayload)
  {
    (*(*(*(a1 + 16) - 8) + 8))(v4);
    return 0;
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v4);
    return 1;
  }
}

uint64_t GesturePhase.failureReason.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if ((result - 4) >= 2)
    {
      v8 = *v5;
      goto LABEL_5;
    }
  }

  else
  {
    result = (*(*(*(a1 + 16) - 8) + 8))(v5);
  }

  v8 = 0xF000000000000000;
LABEL_5:
  *a2 = v8;
  return result;
}

uint64_t GesturePhase.isFailed.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v2 + 8))(v4, a1);
      return 1;
    }
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v4);
  }

  return 0;
}

uint64_t GesturePhase.value.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    if (EnumCaseMultiPayload - 4 >= 2)
    {
      (*(v4 + 8))(v7, a1);
    }

    v14 = 1;
  }

  else
  {
    v13 = *(v9 + 32);
    v13(v11, v7, v8);
    v13(a2, v11, v8);
    v14 = 0;
  }

  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t GesturePhase.isActive.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v2 + 8))(v4, a1);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(*(a1 + 16) - 8) + 8))(v4);
      return 1;
    }

    (*(*(*(a1 + 16) - 8) + 8))(v4);
  }

  return 0;
}

uint64_t GesturePhase.isRecognized.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v2 + 8))(v4, a1);
    }

    return 0;
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v4);
    return 1;
  }
}

uint64_t GesturePhase.isPossible.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v2 + 8))(v4, a1);
    }

    else if (EnumCaseMultiPayload != 4)
    {
      return 1;
    }
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v4);
  }

  return 0;
}

uint64_t GesturePhase.description.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = (v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = *v3;
      v15[0] = v12;
      v13 = sub_18E6FDC0C(v15, v6);
      sub_18E683B98(v12);
      return v13;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 1701602409;
    }

    else
    {
      return 0x656C626973736F70;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(*(a1 + 16) - 8) + 8))(v3);
      return 0x657669746361;
    }

    else
    {
      (*(*(*(a1 + 16) - 8) + 8))(v3);
      return 0x6465646E65;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = *(v3 + *(swift_getTupleTypeMetadata2() + 48));
    strcpy(v15, "blocked(by: ");
    BYTE5(v15[1]) = 0;
    HIWORD(v15[1]) = -5120;
    v14[3] = v9;
    v10 = sub_18E72B778();
    MEMORY[0x193AD15C0](v10);

    MEMORY[0x193AD15C0](41, 0xE100000000000000);
    v11 = v15[0];
    (*(*(v8 - 8) + 8))(v3, v8);
    return v11;
  }
}

uint64_t GesturePhase.isEnded.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (*(v2 + 8))(v4, a1);
    }

    return 0;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    (*(*(*(a1 + 16) - 8) + 8))(v4);
    return 0;
  }

  (*(*(*(a1 + 16) - 8) + 8))(v4);
  return 1;
}

uint64_t GesturePhase.mapValue<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *a4 = *v13;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v19 = *(v13 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v8 + 32))(v11, v13, v7);
    v20 = *(swift_getTupleTypeMetadata2() + 48);
    a1(v11);
    (*(v8 + 8))(v11, v7);
    *(a4 + v20) = v19;
  }

  type metadata accessor for GesturePhase(0, a3, v17, v18);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E6FDC0C(uint64_t a1, __n128 a2)
{
  v2 = GestureFailureReason.description.getter(a2);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    MEMORY[0x193AD15C0]();

    MEMORY[0x193AD15C0](41, 0xE100000000000000);
    return 0x2864656C696166;
  }

  else
  {

    return 0x64656C696166;
  }
}

void *sub_18E6FDCB0(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v5 > v6)
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if ((v8 & 0x1000F8) != 0 || (v7 + 1) > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));

    return v3;
  }

  v12 = a2[v7];
  v13 = v12 - 4;
  if (v12 >= 4)
  {
    if (v7 <= 3)
    {
      v14 = v7;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_27;
      }

      v15 = *a2;
    }

    else if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (a2[2] << 16);
    }

    else
    {
      v15 = *a2;
    }

    v16 = (v15 | (v13 << (8 * v7))) + 4;
    v12 = v15 + 4;
    if (v7 < 4)
    {
      v12 = v16;
    }
  }

LABEL_27:
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      (*(v4 + 16))(__dst);
      *(v3 + v7) = 2;
      return v3;
    }

    if (v12 == 3)
    {
      v17 = *a2;
      sub_18E683B80(*a2);
      *v3 = v17;
      *(v3 + v7) = 3;
      return v3;
    }
  }

  else
  {
    if (!v12)
    {
      (*(v4 + 16))(__dst);
      *((v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *(&a2[v5 + 3] & 0xFFFFFFFFFFFFFFFCLL);
      *(v3 + v7) = 0;
      return v3;
    }

    if (v12 == 1)
    {
      (*(v4 + 16))(__dst);
      *(v3 + v7) = 1;
      return v3;
    }
  }

  return memcpy(__dst, a2, v7 + 1);
}

unint64_t *sub_18E6FDEDC(unint64_t *__dst, unint64_t *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v7 > v8)
  {
    v8 = *(v6 + 64);
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = 8 * v9;
  v11 = *(__dst + v9);
  v12 = v11 - 4;
  if (v11 < 4)
  {
LABEL_21:
    if (v11 > 1)
    {
      goto LABEL_26;
    }

LABEL_22:
    if (v11 >= 2)
    {
      goto LABEL_30;
    }

LABEL_29:
    (*(v6 + 8))(__dst, v5);
    goto LABEL_30;
  }

  if (v9 <= 3)
  {
    v13 = v9;
  }

  else
  {
    v13 = 4;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *__dst;
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

    else if (v13 == 3)
    {
      v14 = *__dst | (*(__dst + 2) << 16);
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v14 = *__dst;
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

LABEL_20:
    v11 = v14 + 4;
    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = *__dst;
  if (v9 >= 4)
  {
    goto LABEL_20;
  }

LABEL_25:
  v11 = (v14 | (v12 << v10)) + 4;
  if (v11 <= 1)
  {
    goto LABEL_22;
  }

LABEL_26:
  if (v11 == 2)
  {
    goto LABEL_29;
  }

  if (v11 == 3)
  {
    sub_18E683B98(*__dst);
  }

LABEL_30:
  v15 = *(__src + v9);
  v16 = v15 - 4;
  if (v15 < 4)
  {
    goto LABEL_44;
  }

  if (v9 <= 3)
  {
    v17 = v9;
  }

  else
  {
    v17 = 4;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *__src;
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    else if (v17 == 3)
    {
      v18 = *__src | (*(__src + 2) << 16);
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v18 = *__src;
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_43;
  }

  if (!v17)
  {
    goto LABEL_44;
  }

  v18 = *__src;
  if (v9 >= 4)
  {
LABEL_43:
    v15 = v18 + 4;
LABEL_44:
    if (v15 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

LABEL_50:
  v15 = (v18 | (v16 << v10)) + 4;
  if (v15 > 1)
  {
LABEL_51:
    if (v15 == 2)
    {
      (*(v6 + 16))(__dst, __src, v5);
      v19 = 2;
      goto LABEL_58;
    }

    if (v15 == 3)
    {
      v20 = *__src;
      sub_18E683B80(v20);
      *__dst = v20;
      v19 = 3;
      goto LABEL_58;
    }

    goto LABEL_54;
  }

LABEL_45:
  if (!v15)
  {
    (*(v6 + 16))(__dst, __src, v5);
    *((__dst + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((__src + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *(__dst + v9) = 0;
    return __dst;
  }

  if (v15 == 1)
  {
    (*(v6 + 16))(__dst, __src, v5);
    v19 = 1;
LABEL_58:
    *(__dst + v9) = v19;
    return __dst;
  }

LABEL_54:

  return memcpy(__dst, __src, v9 + 1);
}

void *sub_18E6FE1F4(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v4 > v5)
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (v5 <= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  v7 = a2[v6];
  v8 = v7 - 4;
  if (v7 >= 4)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_20;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 4;
    v7 = v10 + 4;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_20:
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v12 = result;
      (*(v3 + 32))();
      result = v12;
      v13 = 2;
      goto LABEL_32;
    }

    if (v7 == 3)
    {
      *result = *a2;
      *(result + v6) = 3;
      return result;
    }
  }

  else
  {
    if (!v7)
    {
      v14 = result;
      (*(v3 + 32))();
      result = v14;
      *((v14 + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *(&a2[v4 + 3] & 0xFFFFFFFFFFFFFFFCLL);
      *(v14 + v6) = 0;
      return result;
    }

    if (v7 == 1)
    {
      v12 = result;
      (*(v3 + 32))();
      result = v12;
      v13 = 1;
LABEL_32:
      *(v12 + v6) = v13;
      return result;
    }
  }

  return memcpy(result, a2, v6 + 1);
}

uint64_t sub_18E6FE3D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= ((v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v3 = ((v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  v4 = 8;
  if (v3 > 8)
  {
    v4 = v3;
  }

  v5 = (1u >> (8 * v4)) ^ 0xFB;
  if (v4 > 3)
  {
    v5 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_29;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_29:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_29;
  }

LABEL_18:
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_18E6FE528(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v5 = ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFB;
  if (v5 > 3)
  {
    v6 = 251;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_39:
    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_39;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_43:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_18E6FE710(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= ((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v2 = ((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  v3 = 8;
  if (v2 > 8)
  {
    v3 = v2;
  }

  v4 = a1[v3];
  v5 = v4 - 4;
  if (v4 >= 4)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 4;
    LODWORD(v4) = v7 + 4;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void sub_18E6FE7C4(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= ((v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v3 = ((v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v3 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  if (a2 > 3)
  {
    v5 = a2 - 4;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 4;
      if (v4)
      {
        v7 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v7;
          a1[2] = BYTE2(v7);
        }

        else if (v4 == 2)
        {
          *a1 = v7;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 4;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

unint64_t GestureFailureReason.description.getter(__n128 a1)
{
  v2 = *v1;
  v3 = *v1 >> 62;
  if (v3 <= 1)
  {
    if (v3)
    {
      sub_18E72B5C8();

      v10[0] = 0xD000000000000016;
      v10[1] = 0x800000018E73A890;
      v5 = sub_18E72B778();
      MEMORY[0x193AD15C0](v5);

      MEMORY[0x193AD15C0](41, 0xE100000000000000);
    }

    else
    {
      strcpy(v10, "excluded(by: ");
      HIWORD(v10[1]) = -4864;
      v4 = sub_18E72B778();
      MEMORY[0x193AD15C0](v4);
    }

    return v10[0];
  }

  if (v3 == 2)
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    swift_getErrorValue();
    sub_18E72B798();
    return v10[0];
  }

  v7 = 0x64656C6261736964;
  if (v2 == 0xC000000000000003)
  {
    v8 = 0x646574726F6261;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (v2 == 0xC000000000000002)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v9 = v8;
  }

  if (v2 != 0xC000000000000000)
  {
    v7 = 0xD000000000000014;
  }

  if (v2 <= 0xC000000000000001)
  {
    return v7;
  }

  else
  {
    return v9;
  }
}

unint64_t *assignWithCopy for GestureFailureReason(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_18E683B80(*a2);
  v4 = *a1;
  *a1 = v3;
  sub_18E683B98(v4);
  return a1;
}

unint64_t *assignWithTake for GestureFailureReason(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_18E683B98(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for GestureFailureReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 8))
  {
    return (*a1 + 13);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GestureFailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_18E6FEBB8(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return *a1 + 3;
  }

  else
  {
    return v1;
  }
}

void *sub_18E6FEBE0(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_18E6FEC1C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
  v12 = (a5 + *(swift_getTupleTypeMetadata2() + 48));
  (*(*(a4 - 8) + 16))(a5, a1, a4);
  *v12 = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  type metadata accessor for GestureOutput(0, a4, v13, v14);
  swift_storeEnumTagMultiPayload();

  return sub_18E6A9F20(v8, v9, v10, v11);
}

uint64_t sub_18E6FED28@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    v8 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v9 = &v5[*(swift_getTupleTypeMetadata2() + 48)];
    v10 = *v9;
    v13 = *(v9 + 1);
    v14 = v10;
    result = (*(*(v8 - 8) + 8))(v5, v8);
    v12 = v13;
    v11 = v14;
  }

  else
  {
    v11 = *(v5 + 8);
    v12 = *(v5 + 24);
  }

  *a2 = v11;
  a2[1] = v12;
  return result;
}

uint64_t GestureOutput.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  if (swift_getEnumCaseMultiPayload())
  {
    v7 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_18E6AF804(*&v6[*(TupleTypeMetadata2 + 48)], *&v6[*(TupleTypeMetadata2 + 48) + 8], *&v6[*(TupleTypeMetadata2 + 48) + 16], *&v6[*(TupleTypeMetadata2 + 48) + 24]);
    v9 = *(v7 - 8);
    (*(v9 + 32))(a2, v6, v7);
    return (*(v9 + 56))(a2, 0, 1, v7);
  }

  else
  {
    (*(v4 + 8))(v6, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t GestureOutput.isFinal.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v6 = *(a1 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_18E6AF804(*&v4[*(TupleTypeMetadata2 + 48)], *&v4[*(TupleTypeMetadata2 + 48) + 8], *&v4[*(TupleTypeMetadata2 + 48) + 16], *&v4[*(TupleTypeMetadata2 + 48) + 24]);
      (*(*(v6 - 8) + 8))(v4, v6);
      return 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v9 = swift_getTupleTypeMetadata2();
      sub_18E6AF804(*&v4[*(v9 + 48)], *&v4[*(v9 + 48) + 8], *&v4[*(v9 + 48) + 16], *&v4[*(v9 + 48) + 24]);
      (*(*(v6 - 8) + 8))(v4, v6);
      return 1;
    }
  }

  else
  {
    (*(v2 + 8))(v4, a1);
    return 0;
  }
}

uint64_t sub_18E6FF240@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  if (swift_getEnumCaseMultiPayload())
  {
    v7 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_18E6AF804(*&v5[*(TupleTypeMetadata2 + 48)], *&v5[*(TupleTypeMetadata2 + 48) + 8], *&v5[*(TupleTypeMetadata2 + 48) + 16], *&v5[*(TupleTypeMetadata2 + 48) + 24]);
    result = (*(*(v7 - 8) + 8))(v5, v7);
    v10 = 3;
  }

  else
  {
    v10 = *v5;
    result = sub_18E6AF804(*(v5 + 1), *(v5 + 2), *(v5 + 3), *(v5 + 4));
  }

  *a2 = v10;
  return result;
}

uint64_t GestureOutput.isEmpty.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_18E6AF804(*&v4[*(TupleTypeMetadata2 + 48)], *&v4[*(TupleTypeMetadata2 + 48) + 8], *&v4[*(TupleTypeMetadata2 + 48) + 16], *&v4[*(TupleTypeMetadata2 + 48) + 24]);
    (*(*(v5 - 8) + 8))(v4, v5);
    return 0;
  }

  else
  {
    (*(v2 + 8))(v4, a1);
    return 1;
  }
}

uint64_t sub_18E6FF508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  if (swift_getEnumCaseMultiPayload())
  {
    v7 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_18E6AF804(*&v5[*(TupleTypeMetadata2 + 48)], *&v5[*(TupleTypeMetadata2 + 48) + 8], *&v5[*(TupleTypeMetadata2 + 48) + 16], *&v5[*(TupleTypeMetadata2 + 48) + 24]);
    v9 = (a2 + *(TupleTypeMetadata2 + 48));
    (*(*(v7 - 8) + 32))(a2, v5, v7);
    *v9 = 0u;
    v9[1] = 0u;
  }

  else
  {
    v10 = *v5;
    sub_18E6AF804(*(v5 + 1), *(v5 + 2), *(v5 + 3), *(v5 + 4));
    *a2 = v10;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E6FF750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 8);
  v52 = *v10;
  v14 = *(v10 + 24);
  v54 = *(v10 + 16);
  (*(v15 + 16))(v12, v3, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v18 = &v12[*(TupleTypeMetadata2 + 48)];
      v19 = *v18;
      v20 = *(v18 + 1);
      v51 = a2;
      v21 = v52;
      v23 = *(v18 + 2);
      v22 = *(v18 + 3);
      v50 = v23;
      v47 = v19;
      v48 = v22;
      (*(v6 + 32))(v9, v12, v5);
      v49 = *(TupleTypeMetadata2 + 48);
      v24 = v53;
      (*(v6 + 16))(v53, v9, v5);
      v25 = v47;
      *&v63 = v47;
      *(&v63 + 1) = v20;
      *&v64 = v23;
      v26 = v48;
      *(&v64 + 1) = v48;
      v59 = v21;
      v60 = v13;
      v61 = v54;
      v62 = v14;

      sub_18E702B5C(&v63, &v59, &v24[v49]);
      sub_18E6AF804(v59, v60, v61, v62);
      (*(v6 + 8))(v9, v5);
      sub_18E6AF804(v25, v20, v50, v26);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v34 = swift_getTupleTypeMetadata2();
      v35 = &v12[*(v34 + 48)];
      v36 = v35[1];
      v47 = *v35;
      v48 = v13;
      v37 = v9;
      v39 = v35[2];
      v38 = v35[3];
      v50 = v36;
      v51 = v38;
      v40 = v5;
      v41 = v6;
      v42 = *(v6 + 32);
      v43 = v37;
      v42();
      v49 = *(v34 + 48);
      v44 = v53;
      (*(v41 + 16))(v53, v43, v40);
      v45 = v47;
      *&v63 = v47;
      *(&v63 + 1) = v36;
      *&v64 = v39;
      *(&v64 + 1) = v38;
      v59 = v52;
      v60 = v48;
      v61 = v54;
      v62 = v14;

      sub_18E702B5C(&v63, &v59, &v44[v49]);
      sub_18E6AF804(v59, v60, v61, v62);
      (*(v41 + 8))(v43, v40);
      sub_18E6AF804(v45, v50, v39, v51);
    }
  }

  else
  {
    v27 = *v12;
    v28 = *(v12 + 1);
    v29 = *(v12 + 2);
    v31 = *(v12 + 3);
    v30 = *(v12 + 4);
    v59 = v28;
    v60 = v29;
    v61 = v31;
    v62 = v30;
    v55 = v52;
    v56 = v13;
    v57 = v54;
    v58 = v14;

    sub_18E702B5C(&v59, &v55, &v63);
    sub_18E6AF804(v55, v56, v57, v58);
    sub_18E6AF804(v28, v29, v31, v30);
    v32 = v53;
    *v53 = v27;
    v33 = v64;
    *(v32 + 8) = v63;
    *(v32 + 24) = v33;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t GestureOutputEmptyReason.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

unint64_t sub_18E6FFC3C()
{
  result = qword_1EAC8F298;
  if (!qword_1EAC8F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F298);
  }

  return result;
}

unint64_t sub_18E6FFC90(uint64_t a1)
{
  *(a1 + 8) = sub_18E6FFCC0();
  result = sub_18E6FFD14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6FFCC0()
{
  result = qword_1EAC8F2A0;
  if (!qword_1EAC8F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F2A0);
  }

  return result;
}

unint64_t sub_18E6FFD14()
{
  result = qword_1EAC8F2A8[0];
  if (!qword_1EAC8F2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8F2A8);
  }

  return result;
}

uint64_t sub_18E6FFD74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = sub_18E72B438();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v3, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_18E6AF804(*&v13[*(TupleTypeMetadata2 + 48)], *&v13[*(TupleTypeMetadata2 + 48) + 8], *&v13[*(TupleTypeMetadata2 + 48) + 16], *&v13[*(TupleTypeMetadata2 + 48) + 24]);
      GestureOutput.value.getter(a2, v10);
      v16 = 0x65756C6176;
      v17 = v10;
      v18 = 0xE500000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v19 = swift_getTupleTypeMetadata2();
      sub_18E6AF804(*&v13[*(v19 + 48)], *&v13[*(v19 + 48) + 8], *&v13[*(v19 + 48) + 16], *&v13[*(v19 + 48) + 24]);
      GestureOutput.value.getter(a2, v10);
      v16 = 0x6C61566C616E6966;
      v17 = v10;
      v18 = 0xEA00000000006575;
    }

    sub_18E6C9080(v17, v16, v18, v5);
    (*(v7 + 8))(v10, v6);
    (*(*(v5 - 8) + 8))(v13, v5);
  }

  else
  {
    (*(v11 + 8))(v13, a2);
    sub_18E6FF240(a2, &v29);
    sub_18E6A695C(v29, 0x6165527974706D65, 0xEB000000006E6F73);
  }

  result = sub_18E6FED28(a2, &v29);
  v21 = v29;
  if (v29)
  {
    v22 = *(&v29 + 1);
    v23 = v30;
    v24 = v31;
    if (*(v29 + 16) || *(*(&v29 + 1) + 16) | v31)
    {
      sub_18E6A728C(v29, *(&v29 + 1), v30, v31, 0x617461646174656DLL, 0xE800000000000000);
      v25 = v21;
      v26 = v22;
      v27 = v23;
      v28 = v24;
    }

    else
    {
      v26 = *(&v29 + 1);
      v25 = v29;
      v27 = v30;
      v28 = 0;
    }

    return sub_18E6AF804(v25, v26, v27, v28);
  }

  return result;
}

uint64_t sub_18E7000F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E700154(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E7001A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E7001FC(uint64_t a1)
{
  v5 = "(";
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v6 = &v4;
    swift_getTupleTypeLayout2();
    v7 = &v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_18E7002D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 80) & 0xF8;
  v4 = *a2;
  *a1 = *a2;
  v5 = (v3 + 23) & ~v3 & 0x1F8;

  return v4 + v5;
}

unint64_t sub_18E700338(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 16) - 8) + 64);
  v4 = 40;
  if (((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x28)
  {
    v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v5 = *(a1 + v4);
  if (v5 >= 3 && v4 != 0)
  {
    v5 = *a1 + 3;
  }

  if (v5 == 2 || v5 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))(a1);
    result = *((a1 + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (result < 0xFFFFFFFF)
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 8);
    if (!result)
    {
      return result;
    }
  }
}

uint64_t sub_18E700460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v6 = 40;
  }

  else
  {
    v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v7 = *(a2 + v6);
  if (v7 >= 3 && v6 != 0)
  {
    v7 = *a2 + 3;
  }

  if (v7 == 2)
  {
    (*(v4 + 16))(a1);
    v14 = (a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v15 < 0xFFFFFFFFuLL)
    {
      v22 = *(v15 + 16);
      *v14 = *v15;
      *(v14 + 16) = v22;
    }

    else
    {
      *v14 = *v15;
      *(v14 + 8) = *(v15 + 8);
      *(v14 + 16) = *(v15 + 16);
      *(v14 + 24) = *(v15 + 24);
    }

    v12 = 2;
  }

  else if (v7 == 1)
  {
    (*(v4 + 16))(a1);
    v10 = (a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v11 < 0xFFFFFFFFuLL)
    {
      v21 = *(v11 + 16);
      *v10 = *v11;
      *(v10 + 16) = v21;
    }

    else
    {
      *v10 = *v11;
      *(v10 + 8) = *(v11 + 8);
      *(v10 + 16) = *(v11 + 16);
      *(v10 + 24) = *(v11 + 24);
    }

    v12 = 1;
  }

  else
  {
    *a1 = *a2;
    v16 = (a1 + 8);
    v17 = *(a2 + 8);
    if (v17)
    {
      v19 = *(a2 + 16);
      v18 = *(a2 + 24);
      *(a1 + 8) = v17;
      *(a1 + 16) = v19;
      v20 = *(a2 + 32);
      *(a1 + 24) = v18;
      *(a1 + 32) = v20;

      v12 = 0;
    }

    else
    {
      v12 = 0;
      v23 = *(a2 + 24);
      *v16 = *(a2 + 8);
      *(a1 + 24) = v23;
    }
  }

  *(a1 + v6) = v12;
  return a1;
}

uint64_t sub_18E700678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v9 = *(a1 + v8);
  if (v9 >= 3 && v8 != 0)
  {
    v9 = *a1 + 3;
  }

  if (v9 == 2 || v9 == 1)
  {
    (*(v6 + 8))(a1, v5);
    if (*((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
    {
      goto LABEL_15;
    }
  }

  else if (*(a1 + 8))
  {
LABEL_15:
  }

  v11 = *(a2 + v8);
  if (v8)
  {
    v12 = v11 >= 3;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v11 = *a2 + 3;
  }

  if (v11 == 2)
  {
    (*(v6 + 16))(a1, a2, v5);
    v16 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v17 < 0xFFFFFFFFuLL)
    {
      v20 = *(v17 + 16);
      *v16 = *v17;
      *(v16 + 16) = v20;
    }

    else
    {
      *v16 = *v17;
      *(v16 + 8) = *(v17 + 8);
      *(v16 + 16) = *(v17 + 16);
      *(v16 + 24) = *(v17 + 24);
    }

    v15 = 2;
  }

  else if (v11 == 1)
  {
    (*(v6 + 16))(a1, a2, v5);
    v13 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v14 < 0xFFFFFFFFuLL)
    {
      v19 = *(v14 + 16);
      *v13 = *v14;
      *(v13 + 16) = v19;
    }

    else
    {
      *v13 = *v14;
      *(v13 + 8) = *(v14 + 8);
      *(v13 + 16) = *(v14 + 16);
      *(v13 + 24) = *(v14 + 24);
    }

    v15 = 1;
  }

  else
  {
    *a1 = *a2;
    v18 = *(a2 + 8);
    if (v18)
    {
      *(a1 + 8) = v18;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);

      v15 = 0;
    }

    else
    {
      v15 = 0;
      v21 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v21;
    }
  }

  *(a1 + v8) = v15;
  return a1;
}

uint64_t sub_18E700954(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v5 = 40;
  }

  else
  {
    v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v6 = *(a2 + v5);
  if (v6 >= 3 && v5 != 0)
  {
    v6 = *a2 + 3;
  }

  if (v6 == 2)
  {
    v14 = result;
    (*(v3 + 32))();
    result = v14;
    v16 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16[1];
    v18 = ((v14 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v16;
    v18[1] = v17;
    v13 = 2;
  }

  else if (v6 == 1)
  {
    v8 = result;
    (*(v3 + 32))();
    result = v8;
    v10 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v8 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
    v13 = 1;
  }

  else
  {
    v13 = 0;
    v19 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v19;
    *(result + 32) = *(a2 + 32);
  }

  *(result + v5) = v13;
  return result;
}

uint64_t sub_18E700AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v9 = *(a1 + v8);
  if (v9 >= 3 && v8 != 0)
  {
    v9 = *a1 + 3;
  }

  if (v9 == 2 || v9 == 1)
  {
    (*(v6 + 8))(a1, v5);
    if (*((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
    {
      goto LABEL_15;
    }
  }

  else if (*(a1 + 8))
  {
LABEL_15:
  }

  v11 = *(a2 + v8);
  if (v8)
  {
    v12 = v11 >= 3;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v11 = *a2 + 3;
  }

  if (v11 == 2)
  {
    (*(v6 + 32))(a1, a2, v5);
    v17 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v18 = v17[1];
    v19 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v17;
    v19[1] = v18;
    v16 = 2;
  }

  else if (v11 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v13 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v14 = v13[1];
    v15 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v13;
    v15[1] = v14;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + v8) = v16;
  return a1;
}

uint64_t sub_18E700CAC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v3 <= 0x28)
  {
    v3 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v4 = v3 | 1;
  if ((v3 | 1) <= 3)
  {
    v5 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (v5 < 0x100)
  {
    v6 = 1;
  }

  if (v5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *&a1[v4];
      if (*&a1[v4])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = *&a1[v4];
      if (v8)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v12 = a1[v3];
    if (v12 >= 3)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = a1[v4];
  if (!a1[v4])
  {
    goto LABEL_27;
  }

LABEL_23:
  v10 = (v8 - 1) << (8 * v4);
  if (v4 <= 3)
  {
    v11 = *a1;
  }

  else
  {
    v10 = 0;
    v11 = *a1;
  }

  return (v11 | v10) + 254;
}

void sub_18E700D98(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 | 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v6] = 0;
    }

    else if (v9)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v5] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v6 <= 3)
  {
    v7 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_16:
  v10 = a2 - 254;
  v11 = (a2 - 254) >> 8;
  bzero(a1, v5 | 1);
  if (v6 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v6 <= 3)
  {
    *a1 = v10;
    if (v9 > 1)
    {
LABEL_21:
      if (v9 == 2)
      {
        *&a1[v6] = v12;
      }

      else
      {
        *&a1[v6] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v10;
    if (v9 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v9)
  {
    a1[v6] = v12;
  }
}

uint64_t sub_18E700EE4(_DWORD *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 40;
  if (((*(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x28)
  {
    v3 = ((*(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v4 = *(a1 + v3);
  if (v4 >= 3 && v3 != 0)
  {
    return (*a1 + 3);
  }

  return v4;
}

void sub_18E700F38(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v3 <= 0x28)
  {
    v3 = 40;
  }

  if (a2 > 2)
  {
    if (v3)
    {
      v4 = 3;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + v3) = v4;
    if (v3)
    {
      v5 = a2 - 3;
      bzero(a1, v3);
      *a1 = v5;
    }
  }

  else
  {
    *(a1 + v3) = a2;
  }
}

uint64_t destroy for GestureOutputMetadata(void *a1)
{
}

uint64_t *initializeWithCopy for GestureOutputMetadata(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for GestureOutputMetadata(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for GestureOutputMetadata(void *a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v4;

  return a1;
}

char *sub_18E70116C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_18E6EDD58(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_18E701264(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_18E6EDC4C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_18E701358(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_18E6ED4A8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_18E70144C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_18E6EE18C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[24 * v7 + 32], v6 + 32, 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18E70155C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v63 = a3;
  v71 = sub_18E72B438();
  v11 = *(v71 - 8);
  v12 = MEMORY[0x1EEE9AC00](v71);
  v82 = &v59 - v13;
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v59 - v17;
  v20 = type metadata accessor for GestureOutput(0, a4, v18, v19);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v88 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v59 - v24;
  v64 = a4;
  v93 = sub_18E72AEB8();
  if (sub_18E72B228())
  {
    v60 = a2;
    v61 = v5;
    v62 = a5;
    v25 = 0;
    v26 = 0;
    v87 = 0;
    v83 = 0;
    v27 = 0;
    v85 = 0;
    v80 = (v21 + 16);
    v76 = (v14 + 48);
    v77 = (v21 + 32);
    v68 = (v14 + 32);
    v67 = (v14 + 16);
    v66 = (v14 + 8);
    v65 = (v11 + 8);
    v79 = v21;
    v75 = (v21 + 8);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = v64;
    v78 = a1;
    while (1)
    {
      v35 = v26;
      v36 = sub_18E72B208();
      sub_18E72B1A8();
      if (v36)
      {
        v37 = v81;
        result = (*(v79 + 16))(v81, a1 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v25, v20);
      }

      else
      {
        result = sub_18E72B5F8();
        if (v59 != 8)
        {
          goto LABEL_33;
        }

        *&v90 = result;
        v37 = v81;
        (*v80)(v81, &v90, v20);
        result = swift_unknownObjectRelease();
      }

      v39 = v82;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v74 = v35;
      (*v77)(v88, v37, v20);
      GestureOutput.value.getter(v20, v39);
      if ((*v76)(v39, 1, v29) == 1)
      {
        (*v65)(v39, v71);
      }

      else
      {
        v40 = v28;
        v41 = v69;
        (*v68)(v69, v39, v29);
        (*v67)(v70, v41, v29);
        sub_18E72B278();
        sub_18E72B238();
        v42 = v41;
        v28 = v40;
        (*v66)(v42, v29);
      }

      v43 = sub_18E702C68(v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_18E6EDE80(0, *(v28 + 2) + 1, 1, v28);
      }

      v45 = *(v28 + 2);
      v44 = *(v28 + 3);
      v84 = v27;
      v86 = v25 + 1;
      if (v45 >= v44 >> 1)
      {
        v28 = sub_18E6EDE80((v44 > 1), v45 + 1, 1, v28);
      }

      *(v28 + 2) = v45 + 1;
      v28[v45 + 32] = v43;
      sub_18E6FED28(v20, &v90);
      v46 = v90;
      v27 = v91;
      v47 = v92;
      if (v87)
      {
        if (v90)
        {
          v73 = v28;
          v48 = v87;
          v89 = v87;

          sub_18E70116C(v49);
          v72 = v89;
          v50 = v83;
          v89 = v83;

          sub_18E70116C(v51);
          sub_18E6AF804(v46, *(&v46 + 1), v27, v47);
          v52 = v48;
          v28 = v73;
          sub_18E6AF804(v52, v50, v84, v85);
          v27 = 0;
          v85 = 0;
          v83 = v89;
          v87 = v72;
          v29 = v64;
        }

        else
        {
          v30 = v87;

          v31 = v83;

          sub_18E6AF804(v30, v31, v84, v85);
          v27 = 0;
          v85 = 0;
        }
      }

      else if (v90)
      {

        sub_18E6AF804(v46, *(&v46 + 1), v27, v47);
        v27 = 0;
        v85 = 0;
        v83 = *(&v46 + 1);
        v87 = v46;
      }

      else
      {
        v87 = 0;
        v83 = *(&v90 + 1);
        v85 = v92;
      }

      v32 = v88;
      sub_18E6FF240(v20, &v90);
      (*v75)(v32, v20);
      v33 = v90;
      a1 = v78;
      v34 = sub_18E72B228();
      ++v25;
      v26 = 1;
      if (v86 == v34)
      {
        v53 = v28;
        v54 = v74 & 1 | (v33 != 3);
        a5 = v62;
        v6 = v61;
        a2 = v60;
        v55 = v85;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v87 = 0;
  v83 = 0;
  v27 = 0;
  v55 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  v54 = 3;
LABEL_25:
  result = a2(v53);
  if (v6)
  {

    sub_18E6AF804(v87, v83, v27, v55);
  }

  if (result)
  {
    v56 = result;

    v57 = v93;
LABEL_31:
    *a5 = v57;
    v58 = v83;
    *(a5 + 8) = v87;
    *(a5 + 16) = v58;
    *(a5 + 24) = v27;
    *(a5 + 32) = v55;
    *(a5 + 40) = v56;
    return result;
  }

  if (v54 != 3)
  {
    v56 = result;

    v57 = v54;
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_18E701D38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a1;
  v5 = *(a2 + 16);
  v138 = a2;
  v129 = a3;
  if (v5 == 1)
  {
    TupleTypeMetadata = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v10 = 0;
      v11 = *(v7 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v5 != v10)
      {
LABEL_9:
        v16 = v5 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v21 = &v123;
  v126 = TupleTypeMetadata;
  v123 = *(TupleTypeMetadata - 8);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v139 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (v5 - 1);
  v141 = v5;
  v137 = v3;
  if (v5 == 1)
  {
    v26 = v23;
    v27 = sub_18E72B438();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v22);
    if (v5)
    {
      v29 = *(v138 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v30 = (&v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = v141;
      do
      {
        v29 += 8;
        *v30++ = sub_18E72B438();
        --v31;
      }

      while (v31);
    }

    v5 = v141;
    v27 = swift_getTupleTypeMetadata();
    v26 = v138;
  }

  v32 = &v123;
  v127 = *(v27 - 8);
  v33 = MEMORY[0x1EEE9AC00](v27);
  v140 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = &v123;
  v128 = *(v26 + 32);
  v125 = *(v128 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v130 = &v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = &v123;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v124 = &v123 - v40;
  v131 = v37;
  if (v5)
  {
    v133 = &v123;
    v132 = &v123;
    LODWORD(v145) = 0;
    v41 = 0;
    v146 = 0;
    v42 = (*(v26 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v43 = MEMORY[0x1E69E7CC0];
    v142 = v4;
    v44 = v4;
    while (1)
    {
      v148 = v42;
      v45 = type metadata accessor for GestureOutput(0, *v42, v38, v39);
      v149 = &v123;
      v46 = *(v45 - 8);
      MEMORY[0x1EEE9AC00](v45);
      v48 = &v123 - v47;
      v147 = v44;
      (*(v46 + 16))(&v123 - v47, *v44, v45);
      v49 = sub_18E702C68(v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_18E6EDE80(0, *(v43 + 2) + 1, 1, v43);
      }

      v51 = *(v43 + 2);
      v50 = *(v43 + 3);
      v150 = v25;
      if (v51 >= v50 >> 1)
      {
        v43 = sub_18E6EDE80((v50 > 1), v51 + 1, 1, v43);
      }

      *(v43 + 2) = v51 + 1;
      v151 = v43;
      v43[v51 + 32] = v49;
      sub_18E6FED28(v45, &v152);
      v52 = *(&v152 + 1);
      v53 = v152;
      v54 = v153;
      v55 = v154;
      if (v41)
      {
        if (v152)
        {
          v155 = v41;

          sub_18E70116C(v56);
          v143 = v41;
          v144 = v155;
          v57 = v146;
          v155 = v146;

          sub_18E70116C(v58);
          sub_18E6AF804(v53, v52, v54, v55);
          sub_18E6AF804(v143, v57, 0, 0);
          v52 = v155;
          v53 = v144;
        }

        else
        {

          v52 = v146;

          sub_18E6AF804(v41, v52, 0, 0);
          v53 = v41;
        }
      }

      else if (v152)
      {

        sub_18E6AF804(v53, v52, v54, v55);
      }

      else
      {
        v52 = 0;
      }

      sub_18E6FF240(v45, &v152);
      (*(v46 + 8))(v48, v45);
      if (!v150)
      {
        break;
      }

      v25 = v150 - 1;
      v44 = v147 + 1;
      v42 = v148 + 1;
      LODWORD(v145) = 1;
      v41 = v53;
      v146 = v52;
      v43 = v151;
    }

    v59 = v145 & 1 | (v152 != 3);
    v21 = v132;
    v32 = v133;
    v4 = v142;
    v60 = v136;
    v61 = v151;
  }

  else
  {
    v53 = 0;
    v52 = 0;
    v61 = MEMORY[0x1E69E7CC0];
    v59 = 3;
    v60 = v136;
  }

  v62 = v137;
  v63 = (*(v137 + 32))(v61);
  if (v60)
  {
    sub_18E6AF804(v53, v52, 0, 0);
  }

  v151 = v61;
  v146 = 0;
  v65 = v141;
  if (!v63)
  {
    if (v59 != 3)
    {
      v87 = v52;

      v88 = v129;
      *v129 = v59;
      v88[1] = v53;
      v88[2] = v87;
      type metadata accessor for GestureOutput(0, v128, v89, v90);
      v88[3] = 0;
      v88[4] = 0;
      return swift_storeEnumTagMultiPayload();
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v66 = *(v62 + 16);
  v147 = v53;
  v149 = v66;
  v132 = v21;
  v133 = v32;
  v145 = v52;
  LODWORD(v143) = v63;
  if (v66)
  {
    v142 = v4;
    v148 = *(v62 + 24);

    v144 = &v123;
    MEMORY[0x1EEE9AC00](v67);
    v150 = (&v123 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v65)
    {
      v71 = (*(v138 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v72 = (v131 + 32);
      v73 = v150;
      v74 = v65;
      do
      {
        if (v65 == 1)
        {
          v75 = 0;
        }

        else
        {
          v75 = *v72;
        }

        v76 = *v71++;
        v77 = &v140[v75];
        v78 = *v142++;
        v79 = type metadata accessor for GestureOutput(0, v76, v68, v69);
        v151 = &v123;
        v80 = *(v79 - 8);
        MEMORY[0x1EEE9AC00](v79);
        v82 = &v123 - v81;
        (*(v80 + 16))(&v123 - v81, v78, v79);
        GestureOutput.value.getter(v79, v77);
        (*(v80 + 8))(v82, v79);
        *v73++ = v77;
        v72 += 4;
        --v74;
        v65 = v141;
        v53 = v147;
      }

      while (v74);
    }

    v83 = v130;
    v84 = v149;
    v85 = v148;
    v86 = v146;
    (v149)(v150);
    if (v86)
    {
      sub_18E6AF804(v53, v145, 0, 0);
      sub_18E6826D0(v84, v85);
      return (*(v127 + 8))(v140, v131);
    }

    sub_18E6826D0(v84, v85);
    (*(v127 + 8))(v140, v131);
LABEL_61:
    v116 = *(v125 + 32);
    v117 = v124;
    v118 = v128;
    v116(v124, v83, v128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v119 = &v129[*(swift_getTupleTypeMetadata2() + 48)];
    v116(v129, v117, v118);
    v120 = v145;
    *v119 = v147;
    v119[1] = v120;
    type metadata accessor for GestureOutput(0, v118, v121, v122);
    v119[2] = 0;
    v119[3] = 0;
    return swift_storeEnumTagMultiPayload();
  }

  v136 = *v62;
  if (v136)
  {
    v144 = &v123;
    v91 = MEMORY[0x1EEE9AC00](*(v62 + 8));
    v140 = &v123 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
    v137 = v91;

    if (!v65)
    {
LABEL_57:

      v83 = v130;
      v113 = v136;
      v114 = v137;
      v115 = v146;
      v136(v140);
      if (v115)
      {
        sub_18E6AF804(v147, v145, 0, 0);
        sub_18E6826D0(v113, v114);
        return (*(v123 + 8))(v139, v126);
      }

      sub_18E6826D0(v113, v114);
      (*(v123 + 8))(v139, v126);
      goto LABEL_61;
    }

    v95 = (*(v138 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v96 = (v126 + 32);
    v97 = v140;
    v98 = v141;
    while (1)
    {
      v149 = v98;
      v150 = v97;
      v103 = *v95;
      v142 = v4;
      v104 = *v4;
      v105 = type metadata accessor for GestureOutput(0, v103, v93, v94);
      v148 = &v123;
      v106 = *(v105 - 8);
      MEMORY[0x1EEE9AC00](v105);
      v108 = &v123 - v107;
      (*(v106 + 16))(&v123 - v107, v104, v105);
      v109 = sub_18E72B438();
      MEMORY[0x1EEE9AC00](v109 - 8);
      v111 = &v123 - v110;
      GestureOutput.value.getter(v105, &v123 - v110);
      (*(v106 + 8))(v108, v105);
      v112 = *(v103 - 8);
      if ((*(v112 + 48))(v111, 1, v103) == 1)
      {
        break;
      }

      if (v141 == 1)
      {
        v99 = 0;
      }

      else
      {
        v99 = *v96;
      }

      v101 = v149;
      v100 = v150;
      v102 = &v139[v99];
      (*(v112 + 32))(&v139[v99], v111, v103);
      *v100 = v102;
      v97 = (v100 + 1);
      v96 += 4;
      v4 = v142 + 1;
      ++v95;
      v98 = (v101 - 1);
      if (!v98)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

LABEL_64:
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

char *sub_18E702B5C@<X0>(char **a1@<X0>, char **a2@<X1>, char **a3@<X8>)
{
  result = *a1;
  v6 = *a2;
  v7 = *(a2 + 1);
  if (result)
  {
    v8 = a1[1];
    if (v6)
    {
      v12 = result;

      sub_18E70116C(v9);

      result = sub_18E70116C(v10);
      *a3 = v12;
      a3[1] = v8;
      a3[2] = 0;
      a3[3] = 0;
      return result;
    }

    *a3 = result;
    a3[1] = v8;
    a3[2] = 0;
    a3[3] = 0;
  }

  else
  {
    if (!v6)
    {
      v11 = a2[3];
      *a3 = 0;
      *(a3 + 1) = v7;
      a3[3] = v11;
      return result;
    }

    *a3 = v6;
    a3[1] = v7;
    a3[2] = 0;
    a3[3] = 0;
  }
}

uint64_t sub_18E702C68(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v6 = *(a1 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_18E6AF804(*&v4[*(TupleTypeMetadata2 + 48)], *&v4[*(TupleTypeMetadata2 + 48) + 8], *&v4[*(TupleTypeMetadata2 + 48) + 16], *&v4[*(TupleTypeMetadata2 + 48) + 24]);
      (*(*(v6 - 8) + 8))(v4, v6);
      return 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v9 = swift_getTupleTypeMetadata2();
      sub_18E6AF804(*&v4[*(v9 + 48)], *&v4[*(v9 + 48) + 8], *&v4[*(v9 + 48) + 16], *&v4[*(v9 + 48) + 24]);
      (*(*(v6 - 8) + 8))(v4, v6);
      return 2;
    }
  }

  else
  {
    (*(v2 + 8))(v4, a1);
    return 0;
  }
}

uint64_t sub_18E702E54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 2;
  }

  v2 = 0;
  v3 = a1 + 32;
  result = 2;
  do
  {
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_14;
      }

      if (*(v3 + i) != 2)
      {
        break;
      }

      if (v2 == v1)
      {
        return result;
      }
    }

    result = *(v3 + i);
    if (!*(v3 + i))
    {
      break;
    }

    result = 1;
  }

  while (v2 != v1);
  return result;
}

uint64_t sub_18E702EC0(uint64_t a1)
{
  result = 0;
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }

    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_10;
    }

    v7 = *(v5 + v3++);
    if (v7)
    {
      result = v7;
      if (v7 == 1)
      {
        return result;
      }

      v3 = v6;
    }
  }

  return result;
}

void *sub_18E702F38(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_18E702F8C(void *a1)
{
  if (*a1)
  {
  }

  if (a1[2])
  {
  }
}

void *sub_18E702FE0(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    *a1 = *a2;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = a2[3];
    a1[2] = v5;
    a1[3] = v6;
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
  }

  v7 = a2[5];
  a1[4] = a2[4];
  a1[5] = v7;

  return a1;
}

void *sub_18E703058(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;

    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (!a1[2])
  {
    if (v7)
    {
      v9 = a2[3];
      a1[2] = v7;
      a1[3] = v9;

      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 1) = *(a2 + 1);
    goto LABEL_15;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[3];
  a1[2] = v7;
  a1[3] = v8;

LABEL_15:
  v10 = a2[5];
  a1[4] = a2[4];
  a1[5] = v10;

  return a1;
}

uint64_t sub_18E703148(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      *(a1 + 8) = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    *(a1 + 8) = v6;
    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (!*(a1 + 16))
  {
    if (v7)
    {
      v9 = a2[3];
      *(a1 + 16) = v7;
      *(a1 + 24) = v9;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 16) = *(a2 + 1);
    goto LABEL_15;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[3];
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;

LABEL_15:
  *(a1 + 32) = *(a2 + 2);

  return a1;
}

uint64_t sub_18E703218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E703260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18E7032C8()
{
  result = qword_1EAC8F430[0];
  if (!qword_1EAC8F430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8F430);
  }

  return result;
}

uint64_t sub_18E70332C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    v5 = *(a1 + 40);
    v7 = result;
    v8 = *(a1 + 24);
    v9 = v5;
    v10 = v4 + 64;
    result = type metadata accessor for VelocityComponent.State(319, &v7);
    if (v6 <= 0x3F)
    {
      v11 = *(result - 8) + 64;
      v12 = MEMORY[0x1E69E5D08] + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E703418(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 84))
  {
    v11 = *(v9 + 64);
  }

  else
  {
    v11 = *(v9 + 64) + 1;
  }

  v12 = v11 + v10;
  v13 = v10 | *(v6 + 80) & 0xF8;
  if (v13 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || (((v10 | 7) + v7) & ~(v10 | 7)) + ((v11 + ((v11 + v10) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    v17 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v18 = AssociatedTypeWitness;
    v31 = *(v9 + 64);
    v32 = (v11 + ((v11 + v10) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = *(v9 + 84);
    v19 = ~v10;
    (*(v6 + 16))(a1, a2, v5);
    v34 = a1;
    v30 = a1 + v7 + 7;
    v20 = (v30 & 0xFFFFFFFFFFFFFFF8);
    v29 = a2 + v7 + 7;
    v21 = (v29 & 0xFFFFFFFFFFFFFFF8);
    v22 = *(v9 + 48);
    if (v22(v29 & 0xFFFFFFFFFFFFFFF8, 1, v18))
    {
      memcpy(v20, v21, v11);
    }

    else
    {
      (*(v9 + 16))(v20, v21, v18);
      (*(v9 + 56))(v20, 0, 1, v18);
    }

    if (v22((v21 + v12) & v19, 1, v18))
    {
      memcpy(((v20 + v12) & v19), ((v21 + v12) & v19), v11);
    }

    else
    {
      (*(v9 + 16))((v20 + v12) & v19, (v21 + v12) & v19, v18);
      (*(v9 + 56))((v20 + v12) & v19, 0, 1, v18);
    }

    v17 = v34;
    v23 = 7;
    if (!v33)
    {
      v23 = 8;
    }

    v24 = v31 + v23;
    v25 = (v24 + ((v20 + v12) & v19)) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v24 + ((v21 + v12) & v19)) & 0xFFFFFFFFFFFFFFF8;
    v27 = *v26;
    *(v25 + 16) = *(v26 + 16);
    *v25 = v27;
    *((v30 | 7) + v32 + 17) = *((v29 | 7) + v32 + 17);
  }

  return v17;
}

uint64_t sub_18E703754(uint64_t a1, void *a2)
{
  v3 = *(a2[2] - 8) + 8;
  (*v3)(a1, a2[2]);
  v4 = *(v3 + 56) + a1;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + (v7 | 7)) & ~(v7 | 7);
  v14 = v6;
  v9 = *(v6 + 48);
  if (!v9(v8, 1, AssociatedTypeWitness))
  {
    (*(v14 + 8))(v8, AssociatedTypeWitness);
  }

  v10 = *(v14 + 64);
  if (*(v14 + 84))
  {
    v11 = v8 + v7 + v10;
  }

  else
  {
    v11 = v8 + v7 + v10 + 1;
  }

  result = (v9)(v11 & ~v7, 1, AssociatedTypeWitness);
  if (!result)
  {
    v13 = *(v14 + 8);

    return v13(v11 & ~v7, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_18E7038FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 16;
  (*v5)(a1, a2, a3[2]);
  v6 = *(v5 + 48);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v27 = a1;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v25 = *(v8 + 48);
  if (v25(v12, 1, AssociatedTypeWitness))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = *(v8 + 64);
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    (*(v8 + 16))(v11, v12, AssociatedTypeWitness);
    (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
  }

  if (v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = v14 + 1;
  }

  v26 = v11;
  v17 = (&v11[v9 + v16] & ~v9);
  if (v25((&v12[v9 + v16] & ~v9), 1, AssociatedTypeWitness))
  {
    memcpy(v17, (&v12[v9 + v16] & ~v9), v16);
  }

  else
  {
    (*(v8 + 16))(v17, &v12[v9 + v16] & ~v9, AssociatedTypeWitness);
    (*(v8 + 56))(v17, 0, 1, AssociatedTypeWitness);
  }

  v18 = 7;
  if (!v13)
  {
    v18 = 8;
  }

  v19 = v14 + v18;
  v20 = (v17 + v19) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + (&v12[v9 + v16] & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 16) = *(v21 + 16);
  *v20 = v22;
  v23 = ((v16 + ((v16 + v9) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  result = v27;
  *&v26[v23 + 7] = *&v12[v23 + 7];
  return result;
}

double sub_18E703BA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 24;
  (*v5)(a1, a2, a3[2]);
  v6 = *(v5 + 40);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, AssociatedTypeWitness);
  v15 = v13(v12, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 16))(v11, v12, AssociatedTypeWitness);
      (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 24))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, AssociatedTypeWitness);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  v19 = *(v8 + 84);
  v32 = *(v8 + 64);
  if (v19)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  v33 = v12;
  v34 = v11;
  v21 = (&v11[v9 + v20] & ~v9);
  v22 = (&v12[v9 + v20] & ~v9);
  v23 = v13(v21, 1, AssociatedTypeWitness);
  v24 = v13(v22, 1, AssociatedTypeWitness);
  if (v23)
  {
    if (!v24)
    {
      (*(v8 + 16))(v21, v22, AssociatedTypeWitness);
      (*(v8 + 56))(v21, 0, 1, AssociatedTypeWitness);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v24)
  {
    (*(v8 + 8))(v21, AssociatedTypeWitness);
LABEL_20:
    memcpy(v21, v22, v20);
    goto LABEL_21;
  }

  (*(v8 + 24))(v21, v22, AssociatedTypeWitness);
LABEL_21:
  v25 = 7;
  if (!v19)
  {
    v25 = 8;
  }

  v26 = v32 + v25;
  v27 = &v21[v26] & 0xFFFFFFFFFFFFFFF8;
  v28 = &v22[v26] & 0xFFFFFFFFFFFFFFF8;
  v29 = *v28;
  *(v27 + 16) = *(v28 + 16);
  *v27 = v29;
  v30 = ((v20 + ((v20 + v9) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  result = *&v33[v30 + 7];
  *&v34[v30 + 7] = result;
  return result;
}

uint64_t sub_18E703F10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 32;
  (*v5)(a1, a2, a3[2]);
  v6 = *(v5 + 32);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v27 = a1;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v25 = *(v8 + 48);
  if (v25(v12, 1, AssociatedTypeWitness))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = *(v8 + 64);
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    (*(v8 + 32))(v11, v12, AssociatedTypeWitness);
    (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
  }

  if (v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = v14 + 1;
  }

  v26 = v11;
  v17 = (&v11[v9 + v16] & ~v9);
  if (v25((&v12[v9 + v16] & ~v9), 1, AssociatedTypeWitness))
  {
    memcpy(v17, (&v12[v9 + v16] & ~v9), v16);
  }

  else
  {
    (*(v8 + 32))(v17, &v12[v9 + v16] & ~v9, AssociatedTypeWitness);
    (*(v8 + 56))(v17, 0, 1, AssociatedTypeWitness);
  }

  v18 = 7;
  if (!v13)
  {
    v18 = 8;
  }

  v19 = v14 + v18;
  v20 = (v17 + v19) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + (&v12[v9 + v16] & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 16) = *(v21 + 16);
  *v20 = v22;
  v23 = ((v16 + ((v16 + v9) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  result = v27;
  *&v26[v23 + 7] = *&v12[v23 + 7];
  return result;
}

double sub_18E7041B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 40;
  (*v5)(a1, a2, a3[2]);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, AssociatedTypeWitness);
  v15 = v13(v12, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 32))(v11, v12, AssociatedTypeWitness);
      (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 40))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, AssociatedTypeWitness);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  v19 = *(v8 + 84);
  v32 = *(v8 + 64);
  if (v19)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  v33 = v12;
  v34 = v11;
  v21 = (&v11[v9 + v20] & ~v9);
  v22 = (&v12[v9 + v20] & ~v9);
  v23 = v13(v21, 1, AssociatedTypeWitness);
  v24 = v13(v22, 1, AssociatedTypeWitness);
  if (v23)
  {
    if (!v24)
    {
      (*(v8 + 32))(v21, v22, AssociatedTypeWitness);
      (*(v8 + 56))(v21, 0, 1, AssociatedTypeWitness);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v24)
  {
    (*(v8 + 8))(v21, AssociatedTypeWitness);
LABEL_20:
    memcpy(v21, v22, v20);
    goto LABEL_21;
  }

  (*(v8 + 40))(v21, v22, AssociatedTypeWitness);
LABEL_21:
  v25 = 7;
  if (!v19)
  {
    v25 = 8;
  }

  v26 = v32 + v25;
  v27 = &v21[v26] & 0xFFFFFFFFFFFFFFF8;
  v28 = &v22[v26] & 0xFFFFFFFFFFFFFFF8;
  v29 = *v28;
  *(v27 + 16) = *(v28 + 16);
  *v27 = v29;
  v30 = ((v20 + ((v20 + v9) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  result = *&v33[v30 + 7];
  *&v34[v30 + 7] = result;
  return result;
}

uint64_t sub_18E704524(int *a1, unsigned int a2, void *a3)
{
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v13 | 7;
  v16 = (v13 | 7) + *(v6 + 64);
  if (v12 < a2)
  {
    v17 = (v16 & ~v15) + ((v14 + ((v14 + v13) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v12 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    v21 = v19 >= 2 ? v20 : 0;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v17);
      if (v22)
      {
LABEL_26:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v11)
  {
    v27 = *(v6 + 48);

    return v27(a1, v7, v5);
  }

  else
  {
    v25 = (*(v9 + 48))((a1 + v16) & ~v15);
    if (v25 >= 2)
    {
      return v25 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_18E70479C(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[2];
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  swift_getAssociatedTypeWitness();
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = v15 | 7;
  v17 = (v15 | 7) + *(v8 + 64);
  v18 = *(v11 + 64);
  if (!v12)
  {
    ++v18;
  }

  v19 = ((v18 + v15) & ~v15) + v18;
  v20 = (v17 & ~(v15 | 7)) + ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v14 < a3)
  {
    if ((v17 & ~(v15 | 7)) + ((v19 + 7) & 0xFFFFFFF8) == -32)
    {
      v21 = a3 - v14 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v10 = v22;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v14)
  {
    if (v20)
    {
      v23 = 1;
    }

    else
    {
      v23 = a2 - v14;
    }

    if (v20)
    {
      v24 = ~v14 + a2;
      bzero(a1, v20);
      *a1 = v24;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v20) = v23;
      }

      else
      {
        *(a1 + v20) = v23;
      }
    }

    else if (v10)
    {
      *(a1 + v20) = v23;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v20) = 0;
  }

  else if (v10)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v9 >= v13)
  {
    v28 = *(v30 + 56);

    v28(a1, a2, v9, v7);
  }

  else
  {
    v25 = ((a1 + v17) & ~v16);
    if (v13 >= a2)
    {
      v29 = *(v11 + 56);

      v29(v25, (a2 + 1));
    }

    else
    {
      v26 = ((v19 + 7) & 0xFFFFFFF8) + 17;
      v27 = ~v13 + a2;
      bzero(v25, v26);
      if (v26 <= 3)
      {
        *v25 = v27;
      }

      else
      {
        *v25 = v27;
      }
    }
  }
}

uint64_t sub_18E704AD0(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  result = sub_18E72B438();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E704BAC(uint64_t *a1, uint64_t *a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  v9 = v7 + v8;
  v10 = v7 + 7;
  if (v8 > 7 || (*(v6 + 80) & 0x100000) != 0 || ((v7 + 7 + ((v7 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    v14 = AssociatedTypeWitness;
    v15 = ~v8;
    v21 = *(v6 + 48);
    if (v21(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v14);
      (*(v6 + 56))(a1, 0, 1, v14);
    }

    v16 = ((a2 + v9) & v15);
    if (v21(v16, 1, v14))
    {
      memcpy(((a1 + v9) & v15), v16, v7);
    }

    else
    {
      (*(v6 + 16))((a1 + v9) & v15, v16, v14);
      (*(v6 + 56))((a1 + v9) & v15, 0, 1, v14);
    }

    v17 = (v16 + v10) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v19 = (v10 + ((a1 + v9) & v15)) & 0xFFFFFFFFFFFFFFF8;
    *(v19 + 16) = *(v17 + 16);
    *v19 = v18;
  }

  return a1;
}

uint64_t sub_18E704E10(uint64_t a1, void *a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v4 = *(v10 + 48);
  if (!v4(a1, 1, AssociatedTypeWitness))
  {
    (*(v10 + 8))(a1, AssociatedTypeWitness);
  }

  v5 = *(v10 + 80);
  v6 = *(v10 + 64) + a1;
  if (!*(v10 + 84))
  {
    ++v6;
  }

  v7 = v6 + v5;
  result = (v4)((v6 + v5) & ~v5, 1, AssociatedTypeWitness);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(v7 & ~v5, AssociatedTypeWitness);
  }

  return result;
}

void *sub_18E704F74(void *a1, const void *a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 48);
  if (v7(a2, 1, AssociatedTypeWitness))
  {
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
    if (v8)
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = *(v6 + 80);
  v13 = ((a1 + v11 + v12) & ~v12);
  v14 = ((a2 + v11 + v12) & ~v12);
  if (v7(v14, 1, AssociatedTypeWitness))
  {
    memcpy(v13, v14, v11);
  }

  else
  {
    (*(v6 + 16))(v13, v14, AssociatedTypeWitness);
    (*(v6 + 56))(v13, 0, 1, AssociatedTypeWitness);
  }

  v15 = (v14 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  v17 = (v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v17 + 16) = *(v15 + 16);
  *v17 = v16;
  return a1;
}

void *sub_18E705164(void *a1, void *a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, AssociatedTypeWitness);
  v9 = v7(a2, 1, AssociatedTypeWitness);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, AssociatedTypeWitness);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = *(v6 + 80);
  v15 = ((a1 + v13 + v14) & ~v14);
  v16 = ((a2 + v13 + v14) & ~v14);
  v17 = v7(v15, 1, AssociatedTypeWitness);
  v18 = v7(v16, 1, AssociatedTypeWitness);
  if (!v17)
  {
    if (!v18)
    {
      (*(v6 + 24))(v15, v16, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v6 + 8))(v15, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v18)
  {
LABEL_20:
    memcpy(v15, v16, v13);
    goto LABEL_21;
  }

  (*(v6 + 16))(v15, v16, AssociatedTypeWitness);
  (*(v6 + 56))(v15, 0, 1, AssociatedTypeWitness);
LABEL_21:
  v19 = (v16 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = (v15 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v21 + 16) = *(v19 + 16);
  *v21 = v20;
  return a1;
}

void *sub_18E705428(void *a1, const void *a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 48);
  if (v7(a2, 1, AssociatedTypeWitness))
  {
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
    if (v8)
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
    (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = *(v6 + 80);
  v13 = ((a1 + v11 + v12) & ~v12);
  v14 = ((a2 + v11 + v12) & ~v12);
  if (v7(v14, 1, AssociatedTypeWitness))
  {
    memcpy(v13, v14, v11);
  }

  else
  {
    (*(v6 + 32))(v13, v14, AssociatedTypeWitness);
    (*(v6 + 56))(v13, 0, 1, AssociatedTypeWitness);
  }

  v15 = (v14 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  v17 = (v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v17 + 16) = *(v15 + 16);
  *v17 = v16;
  return a1;
}

void *sub_18E705618(void *a1, void *a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, AssociatedTypeWitness);
  v9 = v7(a2, 1, AssociatedTypeWitness);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
      (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, AssociatedTypeWitness);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = *(v6 + 80);
  v15 = ((a1 + v13 + v14) & ~v14);
  v16 = ((a2 + v13 + v14) & ~v14);
  v17 = v7(v15, 1, AssociatedTypeWitness);
  v18 = v7(v16, 1, AssociatedTypeWitness);
  if (!v17)
  {
    if (!v18)
    {
      (*(v6 + 40))(v15, v16, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v6 + 8))(v15, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v18)
  {
LABEL_20:
    memcpy(v15, v16, v13);
    goto LABEL_21;
  }

  (*(v6 + 32))(v15, v16, AssociatedTypeWitness);
  (*(v6 + 56))(v15, 0, 1, AssociatedTypeWitness);
LABEL_21:
  v19 = (v16 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = (v15 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v21 + 16) = *(v19 + 16);
  *v21 = v20;
  return a1;
}

uint64_t sub_18E7058DC(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + ((v9 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 <= 3)
  {
    v11 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v10];
      if (*&a1[v10])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = *&a1[v10];
      if (v14)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v13 || (v14 = a1[v10]) == 0)
  {
LABEL_28:
    if (v7 >= 2)
    {
      v18 = (*(v6 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v15 = (v14 - 1) << (8 * v10);
  if (v10 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v8 + (v16 | v15) + 1;
}

void sub_18E705A94(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  swift_getAssociatedTypeWitness();
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = v9 - 1;
  if (!v9)
  {
    v11 = 0;
    ++v10;
  }

  v12 = ((v10 + ((v10 + *(v8 + 80)) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v11 < a3)
  {
    if (v12 <= 3)
    {
      v13 = ((a3 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v7 = v14;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v11 >= a2)
  {
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v9 >= 2)
        {
          v17 = *(v8 + 56);

          v17(a1, a2 + 1);
        }

        return;
      }

      *&a1[v12] = 0;
    }

    else if (v7)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v15 = ~v11 + a2;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v12 <= 3)
  {
    *a1 = v15;
    if (v7 > 1)
    {
LABEL_21:
      if (v7 == 2)
      {
        *&a1[v12] = v16;
      }

      else
      {
        *&a1[v12] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v7 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v7)
  {
    a1[v12] = v16;
  }
}

uint64_t sub_18E705CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<D0>, uint64_t a6@<X8>)
{
  v7 = v6;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v14 = type metadata accessor for VelocityComponent.State(0, v22);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v22 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v7, a1);
  sub_18E705F0C(a1, a2, a3, a4, v17);
  return sub_18E705E10(v19, v17, a1, a2, a3, a4, a6, a5);
}

uint64_t sub_18E705E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v15 = type metadata accessor for VelocityComponent(0, &v19);
  v16 = *(v15 + 52);
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v17 = type metadata accessor for VelocityComponent.State(0, &v19);
  result = (*(*(v17 - 8) + 32))(a7 + v16, a2, v17);
  *(a7 + *(v15 + 56)) = a8;
  return result;
}

uint64_t sub_18E705F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 56);
  v11(a5, 1, 1, AssociatedTypeWitness);
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v12 = type metadata accessor for VelocityComponent.State(0, v15);
  result = (v11)(a5 + *(v12 + 52), 1, 1, AssociatedTypeWitness);
  v14 = a5 + *(v12 + 56);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  return result;
}

uint64_t sub_18E706038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E70608C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E7060E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E706140@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a5;
  v107 = a1;
  v108 = a3;
  v95 = a2;
  v6 = *(a4 + 16);
  v98 = *(a4 + 24);
  v101 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(a4 + 32);
  v9 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v93 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v92 = v75 - v10;
  v11 = sub_18E72B438();
  v103 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v91 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v90 = v75 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v75 - v17;
  v19 = *(v9 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v83 = v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v80 = v75 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v81 = v75 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v82 = v75 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v75 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = v75 - v31;
  v33 = *(v108 + 16);
  v99 = *(v108 + 24);
  v100 = v33;
  v108 = v8;
  v97 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = *(AssociatedConformanceWitness + 8);
  v35 = *(v34 + 16);
  v106 = v32;
  v36 = v103;
  v35(v9, v34);
  v37 = v104 + *(a4 + 52);
  v38 = *(v36 + 16);
  v89 = v36 + 16;
  v88 = v38;
  v38(v18, v37, v11);
  v87 = *(v19 + 48);
  v86 = v19 + 48;
  v39 = v87(v18, 1, v9);
  v84 = a4;
  v102 = v19;
  v105 = v37;
  if (v39 == 1)
  {
    (*(v36 + 8))(v18, v11);
    v40 = *(a4 + 40);
    v41 = v11;
    v42 = v36;
    v43 = v9;
    v44 = v98;
    v45 = v101;
    v46 = v90;
  }

  else
  {
    v47 = *(v19 + 32);
    v78 = v19 + 32;
    v77 = v47;
    v47(v30, v18, v9);
    v48 = *(a4 + 40);
    v45 = v101;
    v44 = v98;
    *&v109 = v101;
    *(&v109 + 1) = v98;
    *&v110 = v108;
    *(&v110 + 1) = v48;
    v79 = v48;
    if (*(v37 + *(type metadata accessor for VelocityComponent.State(0, &v109) + 56) + 16) == 1)
    {
      (*(v19 + 8))(v30, v9);
      v41 = v11;
      v42 = v103;
      v43 = v9;
    }

    else
    {
      v76 = v9;
      _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
      v50 = v49;
      v41 = v11;
      if (_s8Gestures9TimestampV1loiySbAC_ACtFZ_0())
      {
        v43 = v76;
        (*(v102 + 8))(v30, v76);
        v42 = v103;
        v44 = v98;
        v45 = v101;
      }

      else
      {
        v51 = *(v108 + 24);
        v52 = v80;
        v75[1] = v50;
        v51(v97);
        v53 = v81;
        v43 = v76;
        (*(v34 + 40))(v52, v30, v76, v34);
        v54 = *(v102 + 8);
        v54(v52, v43);
        v55 = sub_18E72B938();
        sub_18E72B938();
        v57 = v82;
        sub_18E6D54B0(v56 / 1.0e18 + v55, v53, v43, AssociatedConformanceWitness);
        v54(v53, v43);
        v54(v30, v43);
        v58 = v106;
        v54(v106, v43);
        v77(v58, v57, v43);
        v42 = v103;
        v44 = v98;
        v45 = v101;
      }
    }

    v46 = v90;
    v40 = v79;
  }

  *&v109 = v45;
  *(&v109 + 1) = v44;
  *&v110 = v108;
  *(&v110 + 1) = v40;
  v103 = type metadata accessor for VelocityComponent.State(0, &v109);
  v101 = *(v103 + 52);
  v88(v46, v105 + v101, v41);
  if (v87(v46, 1, v43) == 1)
  {
    (*(v42 + 8))(v46, v41);
    v59 = v41;
    v60 = v102;
  }

  else
  {
    v61 = v40;
    v60 = v102;
    v62 = v83;
    (*(v102 + 32))(v83, v46, v43);
    sub_18E6BE7E4(v62, v43, v61, *(v104 + *(v84 + 56)));
    (*(v60 + 8))(v62, v43);
    v59 = v41;
  }

  v63 = v91;
  v64 = v97;
  (*(v108 + 24))(v97);
  v65 = *(v60 + 56);
  v65(v63, 0, 1, v43);
  v66 = v105;
  (*(v42 + 40))(v105, v63, v59);
  v67 = v101;
  (*(v42 + 8))(v66 + v101, v59);
  v68 = v106;
  (*(v60 + 16))(v66 + v67, v106, v43);
  v65((v66 + v67), 0, 1, v43);
  v69 = v66 + *(v103 + 56);
  v70 = v99;
  *v69 = v100;
  *(v69 + 8) = v70;
  *(v69 + 16) = 0;
  v71 = TupleTypeMetadata2;
  v72 = *(TupleTypeMetadata2 + 48);
  v73 = v92;
  (*(*(v64 - 8) + 16))(v92, v107, v64);
  (*(v60 + 32))(v73 + v72, v68, v43);
  v109 = 0u;
  v110 = 0u;
  sub_18E6FEC1C(v73, &v109, v71, v96);
  return (*(v93 + 8))(v73, v71);
}

uint64_t sub_18E706AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for VelocityComponent.State(0, v8);
  return (*(*(v6 - 8) + 16))(a2, v2 + v4, v6);
}

uint64_t sub_18E706B68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *(a2 + 32);
  v8[0] = *(a2 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for VelocityComponent.State(0, v8);
  return (*(*(v6 - 8) + 40))(v2 + v4, a1, v6);
}

uint64_t sub_18E706C14(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s8Gestures14AnyGestureNodeC1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 192))();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = (*(*a2 + 192))();
    if (v8)
    {
      v10 = v8;
      v11 = v9;
      ObjectType = swift_getObjectType();
      if (v6 == v10)
      {
        v13 = swift_getObjectType();
        v14 = (*(v7 + 8))(a1, v13, v7);
        if (v15)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return 0;
        }

        else
        {
          v18 = v14;
          v19 = (*(v11 + 8))(a2, ObjectType, v11);
          v21 = v20;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return (v21 & 1) == 0 && v18 < v19;
        }
      }

      else
      {
        v17 = (*(v11 + 24))(v6, v7, a1, ObjectType, v11);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v17 & 1;
      }
    }

    v4 = swift_unknownObjectRelease();
  }

  result = (*(*a2 + 192))(v4);
  if (result)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return result;
}

uint64_t *sub_18E706EB4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((v7 + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = *a2;
    v11 = a2 + 15;
    *a1 = v12;
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *(v11 & 0xFFFFFFFFFFFFFFF8);
    v14 = (((v11 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v14;
    v16 = *(v5 + 16);

    v16(v15 + 1, v14 + 1, v4);
    v17 = ((v15 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v14 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    *((v17 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

void *sub_18E707024(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 15;
  *a1 = v6;
  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = (((v5 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;

  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v8 + v12 + 8) & ~v12;
  v14 = (v9 + v12 + 8) & ~v12;
  (*(v10 + 24))(v13, v14);
  v15 = *(v11 + 40) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_18E707114(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 8) & ~v10;
  v12 = (v7 + v10 + 8) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E7071E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_18E707348(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_18E707530(uint64_t a1)
{
  v3 = a1 < 1;
  result = a1 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(v1 + 8) < a1)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_18E707554(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (*(v1 + 8) > result)
  {
    return ++result;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E707574@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18E707530(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18E7075A0(uint64_t *a1)
{
  result = sub_18E707530(*a1);
  *a1 = result;
  return result;
}

void (*sub_18E7075D8(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_18E707660(v6, *a2, a3);
  return sub_18E6C287C;
}

void (*sub_18E707660(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  sub_18E68BD30(a2, a3);
  return sub_18E6C2994;
}

uint64_t sub_18E707730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_18E72AF38();
}

uint64_t sub_18E7077AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_18E72AF28();
}

uint64_t sub_18E707830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_18E72AF48();
}

uint64_t sub_18E70791C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18E707554(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18E707948(uint64_t *a1)
{
  result = sub_18E707554(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_18E707974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18E68065C(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_18E7079D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_18E707A28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_18E707F08(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_18E707AB4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = 0;
  v6 = 0xE000000000000000;
  (*(v2 + 16))(v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getWitnessTable();
  v4[1] = sub_18E72B288();
  sub_18E72B278();
  swift_getWitnessTable();
  sub_18E72B7A8();

  return v5;
}

uint64_t sub_18E707D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_18E72AF68();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_18E72B3C8();
  result = sub_18E72AF68();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_18E707E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_18E72AF68();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t *sub_18E707F0C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((((v7 + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || (((v8 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    *a1 = *a2;
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v14;
    v16 = *(v5 + 16);

    v16(v15 + 1, v14 + 1, v4);
    v17 = ((v15 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v14 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    *((v17 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v3 + v8) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + v8) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    *((v19 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

void *sub_18E7080C8(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;

  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  (*(v10 + 24))((v8 + v12 + 8) & ~v12, (v9 + v12 + 8) & ~v12);
  v13 = *(v11 + 40) + 7;
  v14 = ((v13 + ((v8 + v12 + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + ((v9 + v12 + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((((v13 + ((v12 + 24) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v17 = ((a1 + v16) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((a2 + v16) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  *((v17 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_18E70820C(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 8) & ~v11;
  v13 = (v8 + v11 + 8) & ~v11;
  (*(v9 + 32))(v12, v13);
  v14 = *(v10 + 32) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((((v14 + ((v11 + 24) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v18 = ((a1 + v17) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((a2 + v17) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_18E708334(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;

  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 40))(v13, (v9 + v12 + 8) & ~v12);
  v14 = *(v11 + 24) + 7;
  v15 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + ((v9 + v12 + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((((v14 + ((v12 + 24) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v18 = ((a1 + v17) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((a2 + v17) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E708470(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_18E7085E0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_18E7087D4(uint64_t a1)
{
  v13[3] = &type metadata for GestureTraitCollection;
  v13[0] = a1;
  v12 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v13, v11);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));

  __swift_destroy_boxed_opaque_existential_0(v13);
  sub_18E70E5F0(v14);
  v17 = v12;
  memset(v14, 0, sizeof(v14));
  v15 = v11[0];
  v16 = v11[1];
  *&v14[0] = 9;

  *(v14 + 8) = xmmword_18E72CA30;

  *(&v14[1] + 8) = xmmword_18E72CA30;

  sub_18E6A6314(v1, 0, 0);

  v2 = sub_18E6C96B4();
  sub_18E6C9B94();
  v4 = v3;
  v6 = v5;

  MEMORY[0x193AD15C0](v4, v6);

  v7 = sub_18E6C9D10();
  v9 = v8;

  MEMORY[0x193AD15C0](v7, v9);

  sub_18E6A9C8C(v14);
  return v2;
}

Gestures::GestureTraitCollection static GestureTraitCollection.withTrait(_:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  v3 = a1[1];
  *(inited + 32) = *a1;
  *(inited + 40) = v3;

  return GestureTraitCollection.init(traits:)(inited);
}

Gestures::GestureTraitID __swiftcall GestureTraitID.init(_:)(Swift::String a1)
{
  v2 = v1;
  if (qword_1EAC8D960 != -1)
  {
LABEL_10:
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
  }

  v3 = qword_1EAC8F538;
  do
  {
    v4 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit(&qword_1EAC8F538, &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
  }

  while (!v6);
  if (qword_1EAC8D968 != -1)
  {
    v11 = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = v11;
  }

  v7 = *(off_1EAC8F540 + 3);
  v8 = MEMORY[0x1EEE9AC00](a1._countAndFlagsBits);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v7 + 4);
  sub_18E70ABD8();
  os_unfair_lock_unlock(v7 + 4);

  *v2 = v4;
  return result;
}

Gestures::GestureTrait __swiftcall GestureTrait.init(id:attributes:)(Gestures::GestureTraitID id, Swift::OpaquePointer attributes)
{
  v2->_rawValue = *id.rawValue;
  v2[1]._rawValue = attributes._rawValue;
  result.attributes = attributes;
  result.id = id;
  return result;
}

Gestures::GestureTrait::AttributeKey __swiftcall GestureTrait.AttributeKey.init(_:)(Swift::String a1)
{
  v2 = v1;
  if (qword_1EAC8D960 != -1)
  {
LABEL_10:
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
  }

  v3 = qword_1EAC8F538;
  do
  {
    v4 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit(&qword_1EAC8F538, &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
  }

  while (!v6);
  if (qword_1EAC8D968 != -1)
  {
    v11 = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = v11;
  }

  v7 = *(off_1EAC8F540 + 3);
  v8 = MEMORY[0x1EEE9AC00](a1._countAndFlagsBits);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v7 + 4);
  sub_18E70E70C();
  os_unfair_lock_unlock(v7 + 4);

  *v2 = v4;
  return result;
}

uint64_t GestureTrait.AttributeKey.label.getter(uint64_t a1)
{
  if (qword_1EAC8D968 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EAC8F540 + 3);
  v2 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_18E70DCA0(&v4);
  os_unfair_lock_unlock(v1 + 4);
  if (*(&v4 + 1))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t GestureTrait.AttributeValue.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x193AD1DF0](1);
      return MEMORY[0x193AD1DF0](v1);
    }

    else
    {
      MEMORY[0x193AD1DF0](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      return MEMORY[0x193AD1E30](v3);
    }
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    return sub_18E72B8A8();
  }
}

uint64_t GestureTrait.AttributeValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18E72B888();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x193AD1DF0](1);
      MEMORY[0x193AD1DF0](v1);
    }

    else
    {
      MEMORY[0x193AD1DF0](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      MEMORY[0x193AD1E30](v3);
    }
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8A8();
  }

  return sub_18E72B8E8();
}

uint64_t sub_18E708F5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_18E72B888();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x193AD1DF0](1);
      MEMORY[0x193AD1DF0](v2);
    }

    else
    {
      MEMORY[0x193AD1DF0](2);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

      MEMORY[0x193AD1E30](v4);
    }
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8A8();
  }

  return sub_18E72B8E8();
}

uint64_t GestureTrait.attributes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t GestureTrait.label.getter(uint64_t a1)
{
  if (qword_1EAC8D968 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EAC8F540 + 3);
  v2 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_18E70E6D0(&v4);
  os_unfair_lock_unlock(v1 + 4);
  if (*(&v4 + 1))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL sub_18E70917C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  if (*(v3 + 16))
  {
    v5 = sub_18E6EBF18();
    if (v6)
    {
      v7 = *(v3 + 56) + 16 * v5;
      v8 = *v7;
      v9 = *(v7 + 8);
    }

    else
    {
      v8 = 0.0;
      v9 = 255;
    }
  }

  else
  {
    v8 = 0.0;
    v9 = 255;
  }

  v10 = v2 == 255;
  if (v9 != 255)
  {
    v10 = 0;
  }

  if (v2 != 255)
  {
    v11 = LOBYTE(v8) ^ LOBYTE(v4) ^ 1;
    if (v9)
    {
      v11 = 0;
    }

    v13 = v9 == 1 && *&v4 == *&v8;
    v14 = v4 == v8;
    if (v9 != 2)
    {
      v14 = 0;
    }

    if (v2 == 1)
    {
      v14 = v13;
    }

    if (!v2)
    {
      v14 = v11;
    }

    if (v9 != 255)
    {
      return v14;
    }
  }

  return v10;
}

uint64_t sub_18E70926C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = *(a3 + 56) + 16 * v14;
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    v18[0] = v15;
    v18[1] = v17;
    v19 = v16;
    result = a1(v18);
    if (v3)
    {
      goto LABEL_13;
    }

    v9 &= v9 - 1;
    if ((result & 1) == 0)
    {
      LOBYTE(a1) = 0;
LABEL_13:

      return a1 & 1;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      LOBYTE(a1) = 1;
      goto LABEL_13;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t GestureTraitCollection._traits.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

Gestures::GestureTraitCollection __swiftcall GestureTraitCollection.init(traits:)(Swift::OpaquePointer traits)
{
  v3 = *(traits._rawValue + 2);
  v25 = v1;
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC8];
LABEL_17:

    *v25 = v6;
    return result;
  }

  v4 = 0;
  v5 = (traits._rawValue + 40);
  v6 = MEMORY[0x1E69E7CC8];
  while (v4 < *(traits._rawValue + 2))
  {
    v10 = *(v5 - 1);
    v9 = *v5;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_18E6EBF14();
    v14 = v6[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_19;
    }

    v18 = v13;
    if (v6[3] < v17)
    {
      sub_18E70BA38(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_18E6EBF14();
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v12;
    sub_18E70D188();
    v12 = v23;
    if (v18)
    {
LABEL_3:
      v7 = 16 * v12;

      v8 = (v6[7] + v7);
      *v8 = v10;
      v8[1] = v9;
      goto LABEL_4;
    }

LABEL_12:
    v6[(v12 >> 6) + 8] |= 1 << v12;
    *(v6[6] + 8 * v12) = v10;
    v20 = (v6[7] + 16 * v12);
    *v20 = v10;
    v20[1] = v9;
    v21 = v6[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v6[2] = v22;
LABEL_4:
    ++v4;
    v5 += 2;
    if (v3 == v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result._traits._rawValue = sub_18E72B818();
  __break(1u);
  return result;
}

void *GestureTraitCollection.allTraits.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_18E70AC1C(v2, 0);
  v4 = sub_18E6A1D10(&v7, v3 + 4, v2, v1);
  v5 = v7;

  sub_18E687EE8(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

Swift::Bool __swiftcall GestureTraitCollection.containsSubtraits(from:)(Gestures::GestureTraitCollection from)
{
  v1 = *from._traits._rawValue;
  v2 = *from._traits._rawValue + 64;
  v3 = 1 << *(*from._traits._rawValue + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*from._traits._rawValue + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = *(*(v1 + 48) + 8 * v10);
      v12 = (*(v1 + 56) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];

      if (!v13)
      {
        goto LABEL_15;
      }

      v15 = *v23[5];
      v23[7] = v11;
      if (!*(v15 + 16))
      {
        break;
      }

      v16 = sub_18E6EBF18();
      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = (*(v15 + 56) + 16 * v16);
      v19 = v18[1];
      v24[0] = *v18;
      v20 = v24[0];
      v24[1] = v19;

      if (v14 != v20)
      {

        return 0;
      }

      MEMORY[0x1EEE9AC00](v21);
      v23[2] = v24;

      v22 = sub_18E70926C(sub_18E70DD30, v23, v13);
      swift_bridgeObjectRelease_n();

      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }

      v5 &= v5 - 1;
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_17:

    return 0;
  }

LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
LABEL_15:

      return 1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

double GestureTraitCollection.makeIterator()@<D0>(uint64_t a1@<X8>)
{
  sub_18E70DD50(&v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  sub_18E6D4CCC(v8, &v4, &qword_1EAC8F548, &qword_18E7309D8);
  result = *&v5;
  v3 = v6;
  *a1 = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_18E7098C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = (*(v3 + 56) + 16 * (v9 | (v4 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v15 = v13 == 0;

    if (!v13)
    {
      return v15;
    }

    v16 = sub_18E6EBF14();
    if ((v17 & 1) == 0 || (v18 = (*(a2 + 56) + 16 * v16), *v18 != v14))
    {

      return 0;
    }

    v19 = sub_18E709A1C(v18[1], v13);

    if ((v19 & 1) == 0)
    {
      return v15;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E709A1C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = *(v3 + 56) + 16 * (v9 | (v4 << 6));
    v13 = *(v12 + 8);
    v14 = v13 == 255;
    if (v13 == 255)
    {
      return v14;
    }

    v15 = *v12;
    result = sub_18E6EBF14();
    if ((v16 & 1) == 0)
    {
      return v14;
    }

    v17 = *(a2 + 56) + 16 * result;
    v18 = *v17;
    v19 = *(v17 + 8);
    if (v19)
    {
      if (v19 == 1)
      {
        if (v13 != 1 || *&v18 != *&v15)
        {
          return v14;
        }
      }

      else if (v13 != 2 || v18 != v15)
      {
        return v14;
      }
    }

    else if (v13 || ((LODWORD(v18) ^ LODWORD(v15)) & 1) != 0)
    {
      return v14;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t GestureTraitCollection.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  sub_18E70D89C(v3, v1);
  return sub_18E72B8E8();
}

double sub_18E709BDC@<D0>(uint64_t a1@<X8>)
{
  sub_18E70DD50(v5);
  sub_18E6D4CCC(v5, &v4, &qword_1EAC8F578, &qword_18E730B50);

  result = *v5;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v6;
  return result;
}

char *sub_18E709C48()
{
  v1 = sub_18E725914(*v0);

  return v1;
}

uint64_t sub_18E709C88()
{
  v1 = *v0;
  sub_18E72B888();
  sub_18E70D89C(v3, v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E709CD8(uint64_t a1)
{
  v2 = *v1;
  sub_18E72B888();
  sub_18E70D89C(v4, v2);
  return sub_18E72B8E8();
}

uint64_t static GestureTrait.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_18E709A1C(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t GestureTrait.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  MEMORY[0x193AD1DF0](*v1);

  return sub_18E70DB2C(a1, v3);
}

uint64_t sub_18E709D98(uint64_t *a1)
{
  v2 = a1;
  v3 = *(v1 + 8);
  v4 = *a1;
  if ((~*a1 & 9) != 0)
  {
    *a1 = v4 | 9;
  }

  *(v2 + 1) = xmmword_18E72CA30;

  *(v2 + 3) = xmmword_18E72CA30;
  if ((v4 & 2) == 0)
  {
    *v2 = v4 | 0xB;
  }

  v6 = qword_1EAC8D968;
  if (*(v3 + 16))
  {

    if (v6 != -1)
    {
LABEL_42:
      v7 = swift_once();
    }

    v8 = *(off_1EAC8F540 + 3);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v35 = v10;
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock(v8 + 4);
    sub_18E70E6D0(&v39);
    os_unfair_lock_unlock(v8 + 4);
    v11 = v39;
    if (*(&v39 + 1))
    {
      v12 = *(&v39 + 1);
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    *&v39 = v11;
    *(&v39 + 1) = v12;

    MEMORY[0x193AD15C0](31520, 0xE200000000000000);

    v14 = 0;
    v15 = *(&v39 + 1);
    v2[1] = v39;
    v2[2] = v15;
    v37 = v2;
    *(v2 + 3) = xmmword_18E7309C0;
    v16 = v3 + 64;
    v17 = 1 << *(v3 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v3 + 64);
    v2 = ((v17 + 63) >> 6);
    for (i = v3; v19; v3 = i)
    {
      while (1)
      {
LABEL_19:
        v19 &= v19 - 1;
        v21 = *(v35 + 24);
        v22 = MEMORY[0x1EEE9AC00](v13);
        MEMORY[0x1EEE9AC00](v22);
        os_unfair_lock_lock(v21 + 4);
        sub_18E70E6D0(&v39);
        os_unfair_lock_unlock(v21 + 4);
        v23 = v39;
        if (*(&v39 + 1))
        {
          v24 = *(&v39 + 1);
        }

        else
        {
          v23 = 0;
          v24 = 0xE000000000000000;
        }

        *&v39 = 0;
        *(&v39 + 1) = 0xE000000000000000;
        v38 = v23;

        MEMORY[0x193AD15C0](8250, 0xE200000000000000);
        MEMORY[0x193AD15C0](v38, v24);

        sub_18E72B6C8();
        MEMORY[0x193AD15C0](0, 0xE000000000000000);

        v25 = v39;
        v26 = HIBYTE(*(&v39 + 1)) & 0xFLL;
        if ((*(&v39 + 1) & 0x2000000000000000) == 0)
        {
          v26 = v39 & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          break;
        }

        v3 = i;
        if (!v19)
        {
          goto LABEL_15;
        }
      }

      v27 = v37[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_18E6ED4A8(0, *(v27 + 2) + 1, 1, v27);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_18E6ED4A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      *&v27[16 * v29 + 32] = v25;
      v37[10] = v27;
    }

    while (1)
    {
LABEL_15:
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v20 >= v2)
      {
      }

      v19 = *(v16 + 8 * v20);
      ++v14;
      if (v19)
      {
        v14 = v20;
        goto LABEL_19;
      }
    }
  }

  else
  {
    if (qword_1EAC8D968 != -1)
    {
      v5 = swift_once();
    }

    v31 = *(off_1EAC8F540 + 3);
    v32 = MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v32);
    os_unfair_lock_lock(v31 + 4);
    sub_18E70E6D0(&v39);
    os_unfair_lock_unlock(v31 + 4);
    if (*(&v39 + 1))
    {
      v33 = v39;
    }

    else
    {
      v33 = 0;
    }

    if (*(&v39 + 1))
    {
      v34 = *(&v39 + 1);
    }

    else
    {
      v34 = 0xE000000000000000;
    }

    sub_18E6A647C(v33, v34, 0, 0);
  }
}

uint64_t GestureTrait.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  sub_18E70DB2C(v4, v2);
  return sub_18E72B8E8();
}

uint64_t sub_18E70A308()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  sub_18E70DB2C(v4, v2);
  return sub_18E72B8E8();
}

uint64_t sub_18E70A364(uint64_t a1)
{
  v3 = v1[1];
  MEMORY[0x193AD1DF0](*v1);

  return sub_18E70DB2C(a1, v3);
}

uint64_t sub_18E70A3B0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v2);
  sub_18E70DB2C(v5, v3);
  return sub_18E72B8E8();
}

uint64_t sub_18E70A40C(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_18E709A1C(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t GestureTrait.AttributeKey.description.getter(uint64_t a1)
{
  v1 = 0xE000000000000000;
  v7 = 0;
  v8 = 0xE000000000000000;
  if (qword_1EAC8D968 != -1)
  {
    a1 = swift_once();
  }

  v2 = *(off_1EAC8F540 + 3);
  v3 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v2 + 4);
  sub_18E70E6D0(&v6);
  os_unfair_lock_unlock(v2 + 4);
  if (*(&v6 + 1))
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  if (*(&v6 + 1))
  {
    v1 = *(&v6 + 1);
  }

  MEMORY[0x193AD15C0](v4, v1);

  return v7;
}

uint64_t GestureTrait.AttributeValue.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      return sub_18E72B778();
    }

    sub_18E72B2A8();
  }

  else
  {
    if (v1)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    MEMORY[0x193AD15C0](v3, v4);
  }

  return 0;
}

uint64_t sub_18E70A628@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v5;
  sub_18E70E37C(v4, sub_18E70DCB8, 0, isUniquelyReferenced_nonNull_native, &v9);

  v7 = v9;

  *a2 = v7;
  return result;
}

uint64_t sub_18E70A6D4(uint64_t a1)
{
  if ((~*a1 & 9) != 0)
  {
    *a1 |= 9uLL;
  }

  *(a1 + 8) = xmmword_18E72CA30;

  *(a1 + 24) = xmmword_18E72CA30;

  sub_18E6A6314(v2, 0, 0);
}

uint64_t sub_18E70A78C()
{
  type metadata accessor for TraitLabelStore();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_18E6CE35C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8F600, &qword_18E730EE8);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 24) = result;
  off_1EAC8F540 = v0;
  return result;
}

unint64_t sub_18E70A800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  result = sub_18E6B7544(a3, a4, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_18E70A8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (*(v4 + 16))
  {
    v5 = sub_18E6EB450(a2);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 16 * v5);
    }

    else
    {
      v7 = 0;
      result = 0;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

  *a3 = v7;
  a3[1] = result;
  return result;
}

uint64_t sub_18E70A920()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_18E70A960(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = result;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *v8 = a4;
    v8[1] = a5;
    v8[2] = a6;
    v8[3] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a6 + 16);
    if (v9)
    {
      v10 = a2;
      v18 = a3;
      v19 = a4;
      v11 = 0;
      v12 = (a5 + 48);
      v13 = a3 - 1;
      while (v11 < *(a5 + 16))
      {
        if (v11 >= *(a6 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v12 - 2);
        v15 = *(v12 - 1);
        v16 = *(a6 + 32 + 8 * v11);
        v17 = *v12;
        *v10 = v14;
        *(v10 + 8) = v15;
        *(v10 + 16) = v17;
        *(v10 + 24) = v16;
        if (v13 == v11)
        {
          sub_18E67EEC4(v14, v15, v17);

          a3 = v18;
          a4 = v19;
          goto LABEL_14;
        }

        sub_18E67EEC4(v14, v15, v17);

        ++v11;
        v12 += 24;
        v10 += 32;
        if (v9 == v11)
        {
          a3 = v9;
          a4 = v19;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    a3 = 0;
    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_18E70AA78(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_18E67EEC4(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_18E67EEC4(v19, v20, v21);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_18E70AC1C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_18E70ACA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5C0, &qword_18E730E80);
  result = sub_18E72B728();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_18E70AF2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5B8, &qword_18E730E78);
  v35 = v4;
  result = sub_18E72B728();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 3 * v20);
      v23 = *v22;
      v36 = v22[1];
      v24 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_18E72B888();
      MEMORY[0x193AD1DF0](v23);
      MEMORY[0x193AD1DF0](v36);
      sub_18E72B8A8();
      if (v24 != 2)
      {
        MEMORY[0x193AD1DF0](v24 & 1);
      }

      result = sub_18E72B8E8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 3 * v15);
      *v16 = v23;
      v16[1] = v36;
      v16[2] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_18E70B220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5F0, &qword_18E730ED0);
  v35 = v4;
  result = sub_18E72B728();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 56 * v20;
      v23 = *v22;
      v36 = *(v22 + 24);
      v37 = *(v22 + 8);
      v24 = *(v22 + 40);
      v25 = *(v22 + 48);
      v38 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v23;
      *(v16 + 8) = v37;
      *(v16 + 24) = v36;
      *(v16 + 40) = v24;
      *(v16 + 48) = v25;
      *(*(v7 + 56) + 8 * v15) = v38;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_18E70B4EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E918, &qword_18E72EA30);
  result = sub_18E72B728();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 2 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x193AD1DC0](*(v7 + 40), v20, 2);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 2 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_18E70B760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E910, &qword_18E72EA28);
  v34 = v4;
  result = sub_18E72B728();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 2 * v20);
      v22 = *(v5 + 56) + 56 * v20;
      v23 = *v22;
      v36 = *(v22 + 24);
      v37 = *(v22 + 8);
      v24 = *(v22 + 40);
      v35 = *(v22 + 48);
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x193AD1DC0](*(v7 + 40), v21, 2);
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
      *(*(v7 + 48) + 2 * v15) = v21;
      v16 = *(v7 + 56) + 56 * v15;
      *v16 = v23;
      *(v16 + 8) = v37;
      *(v16 + 24) = v36;
      *(v16 + 40) = v24;
      *(v16 + 48) = v35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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