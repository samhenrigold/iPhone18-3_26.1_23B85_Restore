uint64_t sub_1D1B2C210(unsigned __int8 a1)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B2C258(unsigned __int8 a1)
{
  v1 = 0x746E756F63;
  v2 = 7889261;
  v3 = 0x65676172657661;
  if (a1 != 4)
  {
    v3 = 0x766564647473;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 7173491;
  if (a1 != 1)
  {
    v4 = 7235949;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D1B2C2F4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v12 = a2;
  v11[0] = v4;
  v11[1] = v3;
  v13[0] = v3;
  v13[1] = v4;
  _s14ElementMetricsV10CodingKeysOMa(255, v13);
  swift_getWitnessTable();
  v5 = sub_1D1E68F7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1E6930C();
  LOBYTE(v13[0]) = 0;
  v9 = v14;
  sub_1D1E68F0C();
  if (!v9)
  {
    LOBYTE(v13[0]) = 1;
    sub_1D1E68F1C();
    LOBYTE(v13[0]) = 2;
    sub_1D1E68F1C();
    LOBYTE(v13[0]) = 3;
    sub_1D1E68F1C();
    LOBYTE(v13[0]) = 4;
    sub_1D1E68F1C();
    LOBYTE(v13[0]) = 5;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D1B2C560(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1D3892850](*v2);
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D1E676EC();
  return sub_1D1E676EC();
}

uint64_t sub_1D1B2C624(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1B2C560(v3, a1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B2C66C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a6;
  v56 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v45 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v50 = &v45 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v51 = (&v45 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v45 - v19;
  v59 = v20;
  v60 = v21;
  v61 = v22;
  v62 = v23;
  _s14ElementMetricsV10CodingKeysOMa(255, &v59);
  swift_getWitnessTable();
  v58 = sub_1D1E68DEC();
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v25 = &v45 - v24;
  v53 = a2;
  v59 = a2;
  v60 = a3;
  v55 = a3;
  v61 = a4;
  v62 = a5;
  v26 = _s14ElementMetricsVMa(0, &v59);
  v46 = *(v26 - 1);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v45 - v27);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v57 = v25;
  v29 = v63;
  sub_1D1E692FC();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v52;
  v30 = v53;
  v32 = v28;
  v33 = v56;
  LOBYTE(v59) = 0;
  v34 = sub_1D1E68D6C();
  v63 = v32;
  *v32 = v34;
  LOBYTE(v59) = 1;
  sub_1D1E68D7C();
  v35 = v63 + v26[13];
  v52 = *(v33 + 32);
  (v52)(v35, v31, v30);
  LOBYTE(v59) = 2;
  v36 = v51;
  sub_1D1E68D7C();
  v37 = v54;
  (v52)(v63 + v26[14], v36, v30);
  LOBYTE(v59) = 3;
  v38 = v50;
  sub_1D1E68D7C();
  v51 = a1;
  (v52)(v63 + v26[15], v38, v30);
  LOBYTE(v59) = 4;
  v39 = v49;
  sub_1D1E68D7C();
  v40 = v26;
  v41 = v63;
  (v52)(v63 + v40[16], v39, v30);
  LOBYTE(v59) = 5;
  v42 = v48;
  sub_1D1E68D7C();
  (*(v37 + 8))(v57, v58);
  (v52)(v41 + v40[17], v42, v30);
  v43 = v46;
  (*(v46 + 16))(v47, v41, v40);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return (*(v43 + 8))(v41, v40);
}

uint64_t sub_1D1B2CD20(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1B2C1E8(v3, *v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B2CD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1B2BFE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1B2CDB0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D1B2D7C0();
  *a2 = result;
  return result;
}

uint64_t sub_1D1B2CDE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D1B2CE38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D1B2CE94(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1B2C560(v4, a2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B2CF28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1D1E6939C();
  if (v2)
  {
    v4 = a1 + 40;
    v5 = v2;
    do
    {
      sub_1D1E6936C();
      v4 += 16;
      --v5;
    }

    while (v5);
    sub_1D1B2D144();
    return sub_1D1E6933C();
  }

  return result;
}

void sub_1D1B2CFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    sub_1D1E6939C();
    return;
  }

  sub_1D1B2CF28(a1);
  v3 = sub_1D1E6931C();
  v5 = v3 * 1000000000.0 + v4 * 0.000000001;
  v6 = a1 + 40;
  v7 = 0.0;
  v8 = v1;
  do
  {
    v9 = sub_1D1E6931C();
    v11 = v9 * 1000000000.0 + v10 * 0.000000001 - v5;
    v12 = sub_1D1E6931C();
    v7 = v7 + v11 * (v12 * 1000000000.0 + v13 * 0.000000001 - v5);
    v6 += 16;
    --v8;
  }

  while (v8);
  v14 = round(sqrt(v7 / (v1 - 1)));
  if (v14 <= 9.22337204e18)
  {
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }
}

unint64_t sub_1D1B2D144()
{
  result = qword_1EE07A028;
  if (!qword_1EE07A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A028);
  }

  return result;
}

double sub_1D1B2D198(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    return 0.0;
  }

  if (v1 <= 3)
  {
    v2 = 0;
    v3 = 0.0;
LABEL_8:
    v7 = v1 - v2;
    v8 = (a1 + 8 * v2 + 32);
    do
    {
      v9 = *v8++;
      v3 = v3 + v9;
      --v7;
    }

    while (v7);
    goto LABEL_10;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v5 = (a1 + 48);
  v3 = 0.0;
  v6 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v3 = v3 + *(v5 - 2) + *(v5 - 1) + *v5 + v5[1];
    v5 += 4;
    v6 -= 4;
  }

  while (v6);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

LABEL_10:
  v10 = v3 / v1;
  if (v1 > 3)
  {
    v11 = v1 & 0x7FFFFFFFFFFFFFFCLL;
    v13 = vdupq_lane_s64(*&v10, 0);
    v14 = (a1 + 48);
    v12 = 0.0;
    v15 = v1 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v16 = vsubq_f64(v14[-1], v13);
      v17 = vsubq_f64(*v14, v13);
      v18 = vmulq_f64(v16, v16);
      v19 = vmulq_f64(v17, v17);
      v12 = v12 + v18.f64[0] + v18.f64[1] + v19.f64[0] + v19.f64[1];
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    if (v1 == v11)
    {
      return sqrt(v12 / (v1 - 1));
    }
  }

  else
  {
    v11 = 0;
    v12 = 0.0;
  }

  v20 = v1 - v11;
  v21 = (a1 + 8 * v11 + 32);
  do
  {
    v22 = *v21++;
    v12 = v12 + (v22 - v10) * (v22 - v10);
    --v20;
  }

  while (v20);
  return sqrt(v12 / (v1 - 1));
}

uint64_t sub_1D1B2D2C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1B2D354(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v6 + 8) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6) + v7;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

void sub_1D1B2D4D8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v8 + 8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v9;
  v11 = a3 >= v7;
  v12 = a3 - v7;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v7 < a2)
  {
    v14 = ~v7 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_39:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v19 = *(v6 + 56);
  v20 = &a1[v8 + 8] & ~v8;

  v19(v20);
}

void *sub_1D1B2D7C8(uint64_t a1, _BYTE *a2, void *a3)
{
  v65 = sub_1D1E66A7C();
  v6 = *(v65 - 8);
  v7 = MEMORY[0x1EEE9AC00](v65);
  v49 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v61 = v48 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v71 = v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437E0, &unk_1D1E96B80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v48 - v13;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v16 = MEMORY[0x1EEE9AC00](updated);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v68 = (v48 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v64 = v48 - v22;
  v69 = *(a1 + 16);
  if (v69)
  {
    v23 = 0;
    v63 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v67 = a1 + v63;
    v72 = *(v21 + 72);
    v58 = v6 + 16;
    v48[0] = v6;
    v62 = (v6 + 8);
    v66 = (v21 + 56);
    v55 = (v21 + 48);
    v24 = MEMORY[0x1E69E7CC0];
    v25 = v68;
    v53 = a2;
    v54 = a3;
    v51 = updated;
    v52 = v14;
    v50 = v18;
    while (1)
    {
      v26 = v67 + v72 * v23;
      sub_1D1B32C80(v26, v25, type metadata accessor for StateSnapshot.UpdateType);
      if (swift_getEnumCaseMultiPayload())
      {
        break;
      }

      v30 = *v25;
      if (!*v25)
      {
        goto LABEL_5;
      }

      if ((*a2 & 1) == 0)
      {
        v31 = *a3;

        v56 = v30;
        v32 = [v30 uniqueIdentifier];
        sub_1D1E66A5C();

        v70 = v31;
        if (!*(v31 + 2) || (v33 = v70, sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v34 = sub_1D1E676DC(), v35 = -1 << *(v33 + 32), v36 = v34 & ~v35, v60 = (v33 + 56), ((*(v33 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v36) & 1) == 0))
        {
LABEL_22:

          v70 = *v62;
          v42 = v65;
          v70(v71, v65);
          v43 = v56;
          v44 = [v56 uniqueIdentifier];
          v45 = v49;
          sub_1D1E66A5C();

          v46 = v61;
          a3 = v54;
          sub_1D1762CB8(v61, v45);

          v70(v46, v42);
          v14 = v52;
          a2 = v53;
          updated = v51;
          v18 = v50;
          goto LABEL_5;
        }

        v57 = ~v35;
        v59 = *(v48[0] + 72);
        v37 = *(v48[0] + 16);
        while (1)
        {
          v38 = v61;
          v39 = v65;
          v37(v61, *(v70 + 6) + v59 * v36, v65);
          sub_1D1B32DCC(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v40 = sub_1D1E6775C();
          v41 = *v62;
          (*v62)(v38, v39);
          if (v40)
          {
            break;
          }

          v36 = (v36 + 1) & v57;
          if (((*(v60 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v41(v71, v65);
        a2 = v53;
        a3 = v54;
        updated = v51;
        v14 = v52;
        v18 = v50;
        v25 = v68;
        v30 = v56;
      }

      (*v66)(v14, 1, 1, updated);

      if ((*v55)(v14, 1, updated) != 1)
      {
        goto LABEL_6;
      }

      sub_1D1741A30(v14, &qword_1EC6437E0, &unk_1D1E96B80);
LABEL_11:
      if (++v23 == v69)
      {
        return v24;
      }
    }

    sub_1D1B32C20(v25, type metadata accessor for StateSnapshot.UpdateType);
LABEL_5:
    sub_1D1B32C80(v26, v14, type metadata accessor for StateSnapshot.UpdateType);
    (*v66)(v14, 0, 1, updated);
LABEL_6:
    v27 = v64;
    sub_1D1B32BB8(v14, v64, type metadata accessor for StateSnapshot.UpdateType);
    sub_1D1B32BB8(v27, v18, type metadata accessor for StateSnapshot.UpdateType);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1D177E928(0, v24[2] + 1, 1, v24);
    }

    v29 = v24[2];
    v28 = v24[3];
    if (v29 >= v28 >> 1)
    {
      v24 = sub_1D177E928((v28 > 1), v29 + 1, 1, v24);
    }

    v24[2] = v29 + 1;
    sub_1D1B32BB8(v18, v24 + v63 + v29 * v72, type metadata accessor for StateSnapshot.UpdateType);
    v25 = v68;
    goto LABEL_11;
  }

  return MEMORY[0x1E69E7CC0];
}

void *static StateSnapshot.UpdateType.unique<A>(updates:in:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v8 = *(updated - 8);
  v9 = MEMORY[0x1EEE9AC00](updated);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v48 = (&v43 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  v59 = a2;
  sub_1D1E66A7C();
  sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v58 = sub_1D1E6757C();
  v53 = a3;
  v54 = a4;
  sub_1D1E67D1C();
  sub_1D1E6769C();
  swift_getWitnessTable();
  sub_1D1E67A9C();
  v50 = v60[0];
  v60[0] = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CC8];
  v59 = MEMORY[0x1E69E7CC8];
  v58 = sub_1D18D995C(MEMORY[0x1E69E7CC0]);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = *(v8 + 80);
    v49 = a1;
    v21 = a1 + ((v20 + 32) & ~v20);
    v47 = v8;
    v22 = *(v8 + 72);
    v23 = v19;
    v24 = v50;
    do
    {
      sub_1D1B2E5BC(v21, &v59, v60, v24, &v58, a3);
      v21 += v22;
      --v23;
    }

    while (v23);
    v18 = v59;
    a1 = v49;
    v8 = v47;
  }

  v46 = a3;
  v47 = a4;
  sub_1D1B32324(v18);
  v43 = 0;
  v25 = sub_1D1785BE4();
  v44 = v25;
  v45 = v18;
  v57[0] = 0;
  if (v19)
  {
    v26 = v8;
    v27 = 0;
    v49 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v28 = a1 + v49;
    v29 = *(v26 + 72);
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v50;
    while (1)
    {
      sub_1D1B32C80(v28, v17, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1B32C80(v17, v15, type metadata accessor for StateSnapshot.UpdateType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 13)
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_13;
        }

        v33 = v48;
        sub_1D1B32C80(v15, v48, type metadata accessor for StateSnapshot.UpdateType);
        if (*v33)
        {
          break;
        }
      }

      sub_1D1B32C20(v15, type metadata accessor for StateSnapshot.UpdateType);
      if ((v27 & 1) == 0)
      {
        v27 = 1;
        v57[0] = 1;
        goto LABEL_16;
      }

      v25 = sub_1D1B32C20(v17, type metadata accessor for StateSnapshot.UpdateType);
      v27 = 1;
LABEL_8:
      v28 += v29;
      if (!--v19)
      {
        goto LABEL_22;
      }
    }

LABEL_13:
    sub_1D1B32C20(v15, type metadata accessor for StateSnapshot.UpdateType);
LABEL_16:
    sub_1D1B32BB8(v17, v52, type metadata accessor for StateSnapshot.UpdateType);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D178D7B4(0, *(v30 + 16) + 1, 1);
      v30 = v56;
    }

    v36 = *(v30 + 16);
    v35 = *(v30 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1D178D7B4((v35 > 1), v36 + 1, 1);
      v30 = v56;
    }

    *(v30 + 16) = v36 + 1;
    v25 = sub_1D1B32BB8(v52, v30 + v49 + v36 * v29, type metadata accessor for StateSnapshot.UpdateType);
    v31 = v50;
    goto LABEL_8;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v31 = v50;
LABEL_22:
  v37 = MEMORY[0x1E69E7CD0];
  v56 = MEMORY[0x1E69E7CD0];
  MEMORY[0x1EEE9AC00](v25);
  v38 = v47;
  *(&v43 - 8) = v46;
  *(&v43 - 7) = v38;
  v39 = v44;
  *(&v43 - 6) = v60;
  *(&v43 - 5) = v39;
  *(&v43 - 4) = v31;
  *(&v43 - 3) = &v56;
  *(&v43 - 2) = &v58;
  v40 = sub_1D1788B20(sub_1D1B32B44, (&v43 - 10), v30);

  v55 = v37;
  v41 = sub_1D1B2D7C8(v40, v57, &v55);

  return v41;
}

uint64_t sub_1D1B2E470(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v6);
  (*(*(a4 + 16) + 128))(a3);
  sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E6769C();
  swift_unknownObjectRetain();
  return sub_1D1E676BC();
}

uint64_t sub_1D1B2E5BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v78 = a4;
  v79 = a6;
  v84 = a5;
  v82 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A760, &unk_1D1E96B70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = &v74 - v9;
  v90 = _s7MergeIdVMa(0);
  v87 = *(v90 - 8);
  v10 = MEMORY[0x1EEE9AC00](v90);
  v76 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v74 - v12);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v81 = *(updated - 8);
  v14 = MEMORY[0x1EEE9AC00](updated);
  v85 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v77 = (&v74 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v83 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v74 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v74 - v23;
  v25 = sub_1D1E66A7C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v75 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v80 = (&v74 - v30);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v74 - v31);
  v89 = a1;
  sub_1D1B2EF60(v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
    v32 = 0;
  }

  else
  {
    v74 = v13;
    (*(v26 + 32))(v32, v24, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *a2;
    v34 = v91;
    *a2 = 0x8000000000000000;
    v36 = sub_1D1742188();
    v37 = v34[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v40 = v35;
    if (v34[3] >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737900();
        v34 = v91;
      }
    }

    else
    {
      sub_1D1725FE8(v39, isUniquelyReferenced_nonNull_native);
      v34 = v91;
      v41 = sub_1D1742188();
      if ((v40 & 1) != (v42 & 1))
      {
        sub_1D1E690FC();
        __break(1u);
        goto LABEL_43;
      }

      v36 = v41;
    }

    v13 = v74;
    *a2 = v34;

    v43 = *a2;
    if ((v40 & 1) == 0)
    {
      sub_1D16EE93C(&v91);
      v34 = v80;
      (*(v26 + 16))(v80, v32, v25);
      sub_1D19DD7D8();
    }

    v44 = *(v43 + 56);
    v45 = *(v44 + 8 * v36);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      v34 = sub_1D177E928(0, v34[2] + 1, 1, v34);
      *(v26 + 8 * v36) = v34;
LABEL_34:
      v71 = v34[2];
      v70 = v34[3];
      if (v71 >= v70 >> 1)
      {
        *(v26 + 8 * v36) = sub_1D177E928((v70 > 1), v71 + 1, 1, v34);
      }

      sub_1D1B32C20(v21, _s7MergeIdVMa);
      v72 = *(v26 + 8 * v36);
      *(v72 + 16) = v71 + 1;
      sub_1D1B32BB8(v85, v72 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v71, type metadata accessor for StateSnapshot.UpdateType);
      return sub_1D17169C0(v32, 0);
    }

    *(v44 + 8 * v36) = v47;
    (*(v26 + 8))(v32, v25);
    v32 = sub_1D16EE93C;
  }

  v48 = v89;
  sub_1D1B32C80(v89, v21, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D1B32C20(v21, type metadata accessor for StateSnapshot.UpdateType);
  }

  else
  {
    v54 = *v21;
    if (*v21)
    {
      v55 = [*v21 uniqueIdentifier];
      v56 = v75;
      sub_1D1E66A5C();

      v21 = v80;
      sub_1D1762CB8(v80, v56);

      (*(v26 + 8))(v21, v25);
      v51 = v90;
      v52 = v88;
      goto LABEL_23;
    }
  }

  v21 = v13;
  v49 = v83;
  sub_1D1B32C80(v48, v83, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v51 = v90;
  v52 = v88;
  if (EnumCaseMultiPayload != 13)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_19:
      sub_1D1B32C20(v49, type metadata accessor for StateSnapshot.UpdateType);
      goto LABEL_23;
    }

    v53 = v77;
    sub_1D1B32C80(v49, v77, type metadata accessor for StateSnapshot.UpdateType);
    if (*v53)
    {

      goto LABEL_19;
    }
  }

  sub_1D1B32C20(v49, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  nullsub_2();
  v91 = v57;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E6763C();
  swift_getWitnessTable();
  sub_1D1E681EC();
LABEL_23:
  sub_1D1B2F234(v52);
  if ((*(v87 + 48))(v52, 1, v51) == 1)
  {
    sub_1D1741A30(v52, &qword_1EC64A760, &unk_1D1E96B70);
    return sub_1D17169C0(v32, 0);
  }

  sub_1D1B32BB8(v52, v13, _s7MergeIdVMa);
  sub_1D1B32C80(v48, v85, type metadata accessor for StateSnapshot.UpdateType);
  v58 = v84;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v58;
  v34 = v91;
  *v58 = 0x8000000000000000;
  v36 = sub_1D171D934(v13);
  v60 = v34[2];
  v61 = (v59 & 1) == 0;
  v62 = v60 + v61;
  if (__OFADD__(v60, v61))
  {
    goto LABEL_39;
  }

  v63 = v59;
  if (v34[3] >= v62)
  {
    if ((v26 & 1) == 0)
    {
      sub_1D173A630();
      v34 = v91;
    }

LABEL_31:
    v66 = v84;
    *v84 = v34;

    v67 = *v66;
    if ((v63 & 1) == 0)
    {
      sub_1D1716A4C(&v91);
      v68 = v76;
      sub_1D1B32C80(v13, v76, _s7MergeIdVMa);
      sub_1D19DBCF8(v36, v68, v91, v67);
    }

    v26 = v67[7];
    v34 = *(v26 + 8 * v36);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + 8 * v36) = v34;
    v21 = v13;
    if (v69)
    {
      goto LABEL_34;
    }

    goto LABEL_41;
  }

  sub_1D172AEA4(v62, v26);
  v34 = v91;
  v64 = sub_1D171D934(v13);
  if ((v63 & 1) == (v65 & 1))
  {
    v36 = v64;
    goto LABEL_31;
  }

LABEL_43:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1B2EF60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-1] - v5;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1B32C80(v2, v9, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);

    v13 = sub_1D1E66A7C();
    v14 = *(v13 - 8);
    (*(v14 + 32))(a1, v9, v13);
    return (*(v14 + 56))(a1, 0, 1, v13);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v11 = *v9;
    if (v9[16])
    {
      sub_1D1AC373C(*v9, *(v9 + 1), v9[16]);
      v12 = sub_1D1E66A7C();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    }

    else
    {
      v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE80, &unk_1D1EA2F80);
      v18[4] = sub_1D17D8EA8(&qword_1EC64AE88, &qword_1EC64AE80, &unk_1D1EA2F80, MEMORY[0x1E69E6508]);
      v18[0] = v11;
      sub_1D1B3212C(v18, v6);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    return sub_1D1778308(v6, a1);
  }

  else
  {
    v16 = sub_1D1E66A7C();
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return sub_1D1B32C20(v9, type metadata accessor for StateSnapshot.UpdateType);
  }
}

uint64_t sub_1D1B2F234@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v72 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v71 = &v71 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v71 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v71 - v10;
  v12 = sub_1D1E66A7C();
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v71 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v71 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v71 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v71 - v25;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1B32C80(v1, v29, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);

      v53 = v73;
      v52 = v74;
      (*(v73 + 32))(v15, v29, v74);
      v54 = v75;
      (*(v53 + 16))(v75, v15, v52);
      (*(v53 + 56))(v54, 0, 1, v52);
      (*(v53 + 8))(v15, v52);
      v55 = _s7MergeIdVMa(0);
      v48 = v55;
      v56 = (v54 + *(v55 + 20));
      v57 = 0x73656C69666F7270;
      v58 = 0xE800000000000000;
LABEL_11:
      *v56 = v57;
      v56[1] = v58;
      v50 = *(*(v55 - 8) + 56);
      v51 = v54;
      return v50(v51, 0, 1, v48);
    case 4:
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

      v41 = v73;
      v42 = v29;
      v43 = v74;
      (*(v73 + 32))(v15, v42, v74);
      v44 = v75;
      (*(v41 + 56))(v75, 1, 1, v43);
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_1D1E6884C();

      v76 = 0x6572617774666F73;
      v77 = 0xEF2D657461647055;
      v45 = sub_1D1E66A1C();
      MEMORY[0x1D3890F70](v45);

      v46 = v76;
      v47 = v77;
      (*(v41 + 8))(v15, v43);
      v48 = _s7MergeIdVMa(0);
      v49 = (v44 + *(v48 + 20));
      *v49 = v46;
      v49[1] = v47;
      v50 = *(*(v48 - 8) + 56);
      v51 = v44;
      return v50(v51, 0, 1, v48);
    case 1:
      v31 = *v29;
      v32 = *(v29 + 1);
      v33 = v29[16];
      if (v33 <= 1)
      {
        v61 = v74;
        if (!v33)
        {
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE80, &unk_1D1EA2F80);
          v79 = sub_1D17D8EA8(&qword_1EC64AE88, &qword_1EC64AE80, &unk_1D1EA2F80, MEMORY[0x1E69E6508]);
          v76 = v31;

          sub_1D1B3212C(&v76, v11);
          __swift_destroy_boxed_opaque_existential_1(&v76);
          v62 = v73;
          if ((*(v73 + 48))(v11, 1, v61) == 1)
          {
            sub_1D1AC373C(v31, v32, 0);
            v63 = v11;
LABEL_25:
            sub_1D1741A30(v63, &qword_1EC642590, qword_1D1E71260);
            goto LABEL_26;
          }

          (*(v62 + 32))(v26, v11, v61);
          v67 = v75;
          (*(v62 + 16))(v75, v26, v61);
          (*(v62 + 56))(v67, 0, 1, v61);
          sub_1D1AC373C(v31, v32, 0);
          (*(v62 + 8))(v26, v61);
          v68 = _s7MergeIdVMa(0);
          v48 = v68;
          v70 = (v67 + *(v68 + 20));
          *v70 = 0x68736572666572;
          v70[1] = 0xE700000000000000;
LABEL_30:
          v50 = *(*(v68 - 8) + 56);
          v51 = v67;
          return v50(v51, 0, 1, v48);
        }

        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE70, &qword_1D1E98EE0);
        v79 = sub_1D17D8EA8(&qword_1EC64AE78, &qword_1EC64AE70, &qword_1D1E98EE0, MEMORY[0x1E69E5D90]);
        v76 = v31;

        sub_1D1B3212C(&v76, v9);
        __swift_destroy_boxed_opaque_existential_1(&v76);
        v65 = v73;
        if ((*(v73 + 48))(v9, 1, v61) == 1)
        {
          sub_1D1AC373C(v31, v32, 1u);
          v63 = v9;
          goto LABEL_25;
        }

        (*(v65 + 32))(v24, v9, v61);
        v54 = v75;
        (*(v65 + 16))(v75, v24, v61);
        (*(v65 + 56))(v54, 0, 1, v61);
        sub_1D1AC373C(v31, v32, 1u);
        (*(v65 + 8))(v24, v61);
        v55 = _s7MergeIdVMa(0);
        v48 = v55;
        v56 = (v54 + *(v55 + 20));
        v57 = 0x53676E6964616F6CLL;
        v58 = 0xED00007365746174;
      }

      else
      {
        v34 = v74;
        if (v33 != 2)
        {
          if (v33 != 3)
          {
            sub_1D1AC373C(*v29, *(v29 + 1), 4u);
LABEL_26:
            v66 = _s7MergeIdVMa(0);
            return (*(*(v66 - 8) + 56))(v75, 1, 1, v66);
          }

          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE60, &unk_1D1EA2F70);
          v79 = sub_1D17D8EA8(&qword_1EC64AE68, &qword_1EC64AE60, &unk_1D1EA2F70, MEMORY[0x1E69E5D90]);
          v76 = v31;

          v35 = v72;
          sub_1D1B3212C(&v76, v72);
          __swift_destroy_boxed_opaque_existential_1(&v76);
          v36 = v73;
          if ((*(v73 + 48))(v35, 1, v34) == 1)
          {
            v37 = v31;
            v38 = v32;
            v39 = 3;
LABEL_21:
            sub_1D1AC373C(v37, v38, v39);
            v63 = v35;
            goto LABEL_25;
          }

          (*(v36 + 32))(v18, v35, v34);
          v67 = v75;
          (*(v36 + 16))(v75, v18, v34);
          (*(v36 + 56))(v67, 0, 1, v34);
          sub_1D1AC373C(v31, v32, 3u);
          (*(v36 + 8))(v18, v34);
          v68 = _s7MergeIdVMa(0);
          v48 = v68;
          v69 = (v67 + *(v68 + 20));
          *v69 = 0xD000000000000013;
          v69[1] = 0x80000001D1EC4F50;
          goto LABEL_30;
        }

        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE60, &unk_1D1EA2F70);
        v79 = sub_1D17D8EA8(&qword_1EC64AE68, &qword_1EC64AE60, &unk_1D1EA2F70, MEMORY[0x1E69E5D90]);
        v76 = v31;

        v35 = v71;
        sub_1D1B3212C(&v76, v71);
        __swift_destroy_boxed_opaque_existential_1(&v76);
        v64 = v73;
        if ((*(v73 + 48))(v35, 1, v34) == 1)
        {
          v37 = v31;
          v38 = v32;
          v39 = 2;
          goto LABEL_21;
        }

        (*(v64 + 32))(v21, v35, v34);
        v54 = v75;
        (*(v64 + 16))(v75, v21, v34);
        (*(v64 + 56))(v54, 0, 1, v34);
        sub_1D1AC373C(v31, v32, 2u);
        (*(v64 + 8))(v21, v34);
        v55 = _s7MergeIdVMa(0);
        v48 = v55;
        v56 = (v54 + *(v55 + 20));
        v57 = 0x656469727265766FLL;
        v58 = 0xEE007365756C6156;
      }

      goto LABEL_11;
  }

  v60 = _s7MergeIdVMa(0);
  (*(*(v60 - 8) + 56))(v75, 1, 1, v60);
  return sub_1D1B32C20(v29, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1B2FDF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v101 = a8;
  v90 = a4;
  v91 = a7;
  v94 = a6;
  v95 = a3;
  v97 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437E0, &unk_1D1E96B80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v89 = (&v85 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A760, &unk_1D1E96B70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v85 - v13;
  v15 = _s7MergeIdVMa(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v88 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v87 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v85 - v21;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v99 = *(updated - 8);
  v100 = updated;
  v23 = MEMORY[0x1EEE9AC00](updated);
  v86 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v85 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v85 - v27;
  v29 = sub_1D1E66A7C();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v92 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v85 - v33;
  v98 = a1;
  sub_1D1B2EF60(v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
    goto LABEL_3;
  }

  (*(v30 + 32))(v34, v28, v29);
  v39 = *a2;

  v40 = sub_1D1719534(v34, v39);

  if (v40)
  {
    (*(v30 + 8))(v34, v29);
    v41 = *(v99 + 56);
    v42 = v101;
    v43 = 1;
  }

  else
  {
    if ((sub_1D1719534(v34, v95) & 1) == 0)
    {
      (*(v30 + 8))(v34, v29);
LABEL_3:
      v35 = v98;
      sub_1D1B2F234(v14);
      v36 = (*(v16 + 48))(v14, 1, v15);
      v38 = v99;
      v37 = v100;
      if (v36 == 1)
      {
        sub_1D1741A30(v14, &qword_1EC64A760, &unk_1D1E96B70);
      }

      else
      {
        v44 = v96;
        sub_1D1B32BB8(v14, v96, _s7MergeIdVMa);
        v45 = *v97;

        v46 = sub_1D1719B44(v44, v45);

        if (v46)
        {
          sub_1D1B32C20(v44, _s7MergeIdVMa);
          return (*(v38 + 56))(v101, 1, 1, v37);
        }

        v54 = *v94;
        if (*(*v94 + 16) && (v55 = sub_1D171D934(v44), (v56 & 1) != 0) && *(*(*(v54 + 56) + 8 * v55) + 16) > 1uLL)
        {

          v58 = v89;
          sub_1D1B30840(v57, v89);

          if ((*(v38 + 48))(v58, 1, v37) != 1)
          {
            v81 = v86;
            sub_1D1B32BB8(v58, v86, type metadata accessor for StateSnapshot.UpdateType);
            v82 = v88;
            sub_1D1B32C80(v44, v88, _s7MergeIdVMa);
            v83 = v87;
            sub_1D1766F54(v87, v82);
            sub_1D1B32C20(v83, _s7MergeIdVMa);
            sub_1D1B32C20(v44, _s7MergeIdVMa);
            v84 = v101;
            sub_1D1B32BB8(v81, v101, type metadata accessor for StateSnapshot.UpdateType);
            v60 = *(v38 + 56);
            v61 = v84;
            return v60(v61, 0, 1, v37);
          }

          sub_1D1B32C20(v44, _s7MergeIdVMa);
          sub_1D1741A30(v58, &qword_1EC6437E0, &unk_1D1E96B80);
        }

        else
        {
          sub_1D1B32C20(v44, _s7MergeIdVMa);
        }
      }

      v59 = v101;
      sub_1D1B32C80(v35, v101, type metadata accessor for StateSnapshot.UpdateType);
      v60 = *(v38 + 56);
      v61 = v59;
      return v60(v61, 0, 1, v37);
    }

    sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676AC();
    v49 = v92;
    v48 = v93;
    if (v102)
    {
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (v50)
      {
        v51 = v50;
        (*(v30 + 8))(v34, v29);
        v52 = v101;
        *v101 = v51;
        v53 = v100;
        swift_storeEnumTagMultiPayload();
        return (*(v99 + 56))(v52, 0, 1, v53);
      }

      swift_unknownObjectRelease();
    }

    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v62 = sub_1D1E6709C();
    __swift_project_value_buffer(v62, qword_1EE07B5D8);
    (*(v30 + 16))(v49, v34, v29);
    sub_1D1B32C80(v98, v48, type metadata accessor for StateSnapshot.UpdateType);
    v63 = sub_1D1E6707C();
    v64 = sub_1D1E6833C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = v48;
      v66 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v102 = v97;
      *v66 = 136315394;
      sub_1D1B32DCC(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      LODWORD(v96) = v64;
      v67 = sub_1D1E68FAC();
      v68 = v49;
      v70 = v69;
      v71 = *(v30 + 8);
      v71(v68, v29);
      v72 = sub_1D1B1312C(v67, v70, &v102);

      *(v66 + 4) = v72;
      *(v66 + 12) = 2080;
      v73 = v65;
      v74 = StateSnapshot.UpdateType.description.getter();
      v76 = v75;
      sub_1D1B32C20(v73, type metadata accessor for StateSnapshot.UpdateType);
      v77 = sub_1D1B1312C(v74, v76, &v102);

      *(v66 + 14) = v77;
      _os_log_impl(&dword_1D16EC000, v63, v96, "Failed to find home for homeID (%s) from update: %s", v66, 0x16u);
      v78 = v97;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v78, -1, -1);
      MEMORY[0x1D3893640](v66, -1, -1);

      v71(v34, v29);
    }

    else
    {

      sub_1D1B32C20(v48, type metadata accessor for StateSnapshot.UpdateType);
      v79 = *(v30 + 8);
      v79(v49, v29);
      v79(v34, v29);
    }

    v80 = v101;
    sub_1D1B32C80(v98, v101, type metadata accessor for StateSnapshot.UpdateType);
    v41 = *(v99 + 56);
    v42 = v80;
    v43 = 0;
  }

  return v41(v42, v43, 1, v100);
}

uint64_t sub_1D1B30840@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  i = sub_1D1E66A7C();
  v4 = *(i - 8);
  v5 = MEMORY[0x1EEE9AC00](i);
  v7 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v198 = &v184 - v8;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v10 = MEMORY[0x1EEE9AC00](updated);
  v12 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v193 = &v184 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v192 = &v184 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v191 = &v184 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v184 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v184 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v27 = *(a1 + 16);
  if (v27)
  {
    v194 = v25;
    v195 = a2;
    v196 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v28 = &v184 - v26;
    sub_1D1B32C80(v196, &v184 - v26, type metadata accessor for StateSnapshot.UpdateType);
    v190 = v28;
    sub_1D1B32C80(v28, v24, type metadata accessor for StateSnapshot.UpdateType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v199 = updated;
    v200 = v27;
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

        v37 = v195;
        sub_1D1B32C80(v196 + *(v194 + 72) * (v27 - 1), v195, type metadata accessor for StateSnapshot.UpdateType);
        sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
        (*(v194 + 56))(v37, 0, 1, updated);
        return (*(v4 + 8))(v24, i);
      }

      if (EnumCaseMultiPayload != 1)
      {
        sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
        (*(v194 + 56))(v195, 1, 1, updated);
        return sub_1D1B32C20(v24, type metadata accessor for StateSnapshot.UpdateType);
      }

      v30 = *(v24 + 1);
      v31 = v24[16];
      if (v31 <= 1)
      {
        v184 = *v24;
        v185 = v30;
        if (v31)
        {
          v144 = 0;
          v186 = *(v194 + 72);
          v145 = MEMORY[0x1E69E7CC8];
          while (2)
          {
            v146 = v191;
            sub_1D1B32C80(v196 + v186 * v144, v191, type metadata accessor for StateSnapshot.UpdateType);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v147 = *v146;
              v148 = *(v146 + 16);
              if (v148 == 1)
              {
                v188 = *(v146 + 8);
                v189 = v144 + 1;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v201 = v145;
                v150 = *(v147 + 64);
                v193 = (v147 + 64);
                v151 = -1 << *(v147 + 32);
                if (-v151 < 64)
                {
                  v152 = ~(-1 << -v151);
                }

                else
                {
                  v152 = -1;
                }

                v153 = v152 & v150;
                v187 = -1 << *(v147 + 32);
                v192 = (63 - v151) >> 6;

                v154 = 0;
                for (i = v147; ; v147 = i)
                {
                  v161 = v154;
                  v198 = v153;
                  if (!v153)
                  {
                    v162 = v154;
                    while (1)
                    {
                      v161 = v162 + 1;
                      if (__OFADD__(v162, 1))
                      {
                        break;
                      }

                      if (v161 >= v192)
                      {
                        v198 = 0;
                        goto LABEL_106;
                      }

                      v153 = *&v193[8 * v161];
                      ++v162;
                      if (v153)
                      {
                        goto LABEL_95;
                      }
                    }

                    __break(1u);
LABEL_124:
                    __break(1u);
LABEL_125:
                    __break(1u);
LABEL_126:
                    __break(1u);
LABEL_127:
                    __break(1u);
LABEL_128:
                    __break(1u);
LABEL_129:
                    __break(1u);
LABEL_130:
                    __break(1u);
LABEL_131:
                    __break(1u);
LABEL_132:
                    sub_1D18C2060();
                    result = sub_1D1E690FC();
                    __break(1u);
                    return result;
                  }

LABEL_95:
                  v163 = __clz(__rbit64(v153)) | (v161 << 6);
                  v164 = *(*(v147 + 48) + 8 * v163);
                  v165 = *(v147 + 56) + 32 * v163;
                  v167 = *v165;
                  v166 = *(v165 + 8);
                  v168 = *(v165 + 16);
                  v169 = *(v165 + 24);
                  v170 = v164;
                  sub_1D17418FC(v167, v166, v168, v169);
                  v171 = v170;
                  sub_1D17418FC(v167, v166, v168, v169);

                  sub_1D1757A60(v167, v166, v168, v169);
                  if (!v171)
                  {
                    break;
                  }

                  v172 = sub_1D171D368(v171);
                  v174 = v145[2];
                  v175 = (v173 & 1) == 0;
                  v92 = __OFADD__(v174, v175);
                  v176 = v174 + v175;
                  if (v92)
                  {
                    goto LABEL_126;
                  }

                  v177 = v173;
                  if (v145[3] >= v176)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v198 = v172;
                      sub_1D1737AA0();
                      v172 = v198;
                    }
                  }

                  else
                  {
                    sub_1D172629C(v176, isUniquelyReferenced_nonNull_native & 1);
                    v172 = sub_1D171D368(v171);
                    if ((v177 & 1) != (v178 & 1))
                    {
                      goto LABEL_132;
                    }
                  }

                  v153 &= v153 - 1;
                  v145 = v201;
                  if (v177)
                  {
                    v155 = v172;

                    v156 = v145[7] + 32 * v155;
                    v157 = *v156;
                    v158 = *(v156 + 8);
                    v159 = *(v156 + 16);
                    *v156 = v167;
                    *(v156 + 8) = v166;
                    *(v156 + 16) = v168;
                    v160 = *(v156 + 24);
                    *(v156 + 24) = v169;
                    sub_1D1757A60(v157, v158, v159, v160);
                  }

                  else
                  {
                    v201[(v172 >> 6) + 8] |= 1 << v172;
                    *(v145[6] + 8 * v172) = v171;
                    v179 = v145[7] + 32 * v172;
                    *v179 = v167;
                    *(v179 + 8) = v166;
                    *(v179 + 16) = v168;
                    *(v179 + 24) = v169;
                    v180 = v145[2];
                    v92 = __OFADD__(v180, 1);
                    v181 = v180 + 1;
                    if (v92)
                    {
                      goto LABEL_130;
                    }

                    v145[2] = v181;
                  }

                  isUniquelyReferenced_nonNull_native = 1;
                  v154 = v161;
                }

LABEL_106:
                v182 = i;
                sub_1D1716918(i);
                sub_1D1AC373C(v182, v188, 1u);
                updated = v199;
                v144 = v189;
                if (v189 != v200)
                {
                  continue;
                }

                sub_1D1AC373C(v184, v185, 1u);
                sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
                v183 = v195;
                *v195 = v145;
                v183[1] = 0;
                *(v183 + 16) = 1;
                swift_storeEnumTagMultiPayload();
                v54 = *(v194 + 56);
                v55 = v183;
                v56 = 0;
                return v54(v55, v56, 1, updated);
              }

              sub_1D1AC373C(*v146, *(v146 + 8), v148);
              sub_1D1AC373C(v184, v185, 1u);
              sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
            }

            else
            {
              sub_1D1AC373C(v184, v185, 1u);
              sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);

              sub_1D1B32C20(v146, type metadata accessor for StateSnapshot.UpdateType);
            }

            break;
          }
        }

        else
        {
          v201 = MEMORY[0x1E69E7CD0];
          v50 = *(v194 + 72);
          v51 = v196;
          while (1)
          {
            sub_1D1B32C80(v51, v21, type metadata accessor for StateSnapshot.UpdateType);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              sub_1D1AC373C(v184, v185, 0);

              sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
              goto LABEL_110;
            }

            v52 = *v21;
            if (v21[16])
            {
              break;
            }

            sub_1D1930AA4(v52);
            v51 += v50;
            if (!--v27)
            {
              sub_1D1AC373C(v184, v185, 0);
              sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
              v53 = v195;
              *v195 = v201;
              v53[1] = 0;
              *(v53 + 16) = 0;
              swift_storeEnumTagMultiPayload();
              v54 = *(v194 + 56);
              v55 = v53;
              v56 = 0;
              return v54(v55, v56, 1, updated);
            }
          }

          sub_1D1AC373C(v52, *(v21 + 1), v21[16]);
          sub_1D1AC373C(v184, v185, 0);

          v21 = v190;
LABEL_110:
          sub_1D1B32C20(v21, type metadata accessor for StateSnapshot.UpdateType);
        }

        v55 = v195;
        v54 = *(v194 + 56);
        goto LABEL_121;
      }

      v32 = v196;
      if (v31 == 2)
      {
        v184 = *v24;
        v185 = v30;
        v58 = 0;
        v198 = MEMORY[0x1E69E7CC8];
        v187 = *(v194 + 72);
        v33 = v195;
        while (2)
        {
          v59 = v192;
          sub_1D1B32C80(v32 + v187 * v58, v192, type metadata accessor for StateSnapshot.UpdateType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v60 = *v59;
            v61 = *(v59 + 16);
            if (v61 == 2)
            {
              v189 = *(v59 + 8);
              v191 = v58 + 1;
              v62 = v198;
              v63 = swift_isUniquelyReferenced_nonNull_native();
              v201 = v62;
              v64 = *(v60 + 64);
              v193 = (v60 + 64);
              v65 = -1 << *(v60 + 32);
              if (-v65 < 64)
              {
                v66 = ~(-1 << -v65);
              }

              else
              {
                v66 = -1;
              }

              v67 = v66 & v64;
              v188 = -1 << *(v60 + 32);
              v68 = (63 - v65) >> 6;

              v69 = 0;
              for (i = v60; ; v60 = i)
              {
                v76 = v67;
                v77 = v69;
                if (!v67)
                {
                  v78 = v69;
                  do
                  {
                    v77 = v78 + 1;
                    if (__OFADD__(v78, 1))
                    {
                      goto LABEL_124;
                    }

                    if (v77 >= v68)
                    {
                      goto LABEL_52;
                    }

                    v76 = *&v193[8 * v77];
                    ++v78;
                  }

                  while (!v76);
                }

                v79 = __clz(__rbit64(v76)) | (v77 << 6);
                v80 = *(*(v60 + 48) + 8 * v79);
                v81 = *(v60 + 56) + 24 * v79;
                v83 = *v81;
                v82 = *(v81 + 8);
                v84 = *(v81 + 16);
                v85 = v80;
                sub_1D1741830(v83, v82, v84);
                v86 = v85;
                sub_1D1741830(v83, v82, v84);

                sub_1D1778940(v83, v82, v84);
                if (!v86)
                {
                  break;
                }

                v87 = v198;
                v88 = sub_1D171D368(v86);
                v90 = *(v87 + 2);
                v91 = (v89 & 1) == 0;
                v92 = __OFADD__(v90, v91);
                v93 = v90 + v91;
                if (v92)
                {
                  goto LABEL_127;
                }

                v94 = v89;
                if (*(v87 + 3) >= v93)
                {
                  if ((v63 & 1) == 0)
                  {
                    v198 = v88;
                    sub_1D1737914();
                    v88 = v198;
                  }
                }

                else
                {
                  sub_1D1725FFC(v93, v63 & 1);
                  v88 = sub_1D171D368(v86);
                  if ((v94 & 1) != (v95 & 1))
                  {
                    goto LABEL_132;
                  }
                }

                v67 = (v76 - 1) & v76;
                v96 = v201;
                v198 = v201;
                if (v94)
                {
                  v70 = v201;
                  v71 = v88;

                  v72 = v70[7] + 24 * v71;
                  v73 = *v72;
                  v74 = *(v72 + 8);
                  *v72 = v83;
                  *(v72 + 8) = v82;
                  v75 = *(v72 + 16);
                  *(v72 + 16) = v84;
                  sub_1D1778940(v73, v74, v75);
                }

                else
                {
                  v201[(v88 >> 6) + 8] |= 1 << v88;
                  *(v96[6] + 8 * v88) = v86;
                  v97 = v96[7] + 24 * v88;
                  *v97 = v83;
                  *(v97 + 8) = v82;
                  *(v97 + 16) = v84;
                  v98 = v96[2];
                  v92 = __OFADD__(v98, 1);
                  v99 = v98 + 1;
                  if (v92)
                  {
                    goto LABEL_129;
                  }

                  v96[2] = v99;
                }

                v63 = 1;
                v69 = v77;
              }

LABEL_52:
              v100 = i;
              sub_1D1716918(i);
              sub_1D1AC373C(v100, v189, 2u);
              updated = v199;
              v58 = v191;
              v33 = v195;
              v32 = v196;
              if (v191 != v200)
              {
                continue;
              }

              v101 = v195;
              v102 = 2;
              sub_1D1AC373C(v184, v185, 2u);
              sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
              *v101 = v198;
              goto LABEL_80;
            }

            sub_1D1AC373C(*v59, *(v59 + 8), v61);
            sub_1D1AC373C(v184, v185, 2u);
            sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
LABEL_117:

            goto LABEL_118;
          }

          break;
        }

        sub_1D1AC373C(v184, v185, 2u);
        sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
      }

      else
      {
        v33 = v195;
        if (v31 == 4)
        {
          sub_1D1AC373C(*v24, v30, 4u);
          sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
LABEL_118:
          v54 = *(v194 + 56);
          v55 = v33;
LABEL_121:
          v56 = 1;
          return v54(v55, v56, 1, updated);
        }

        v184 = *v24;
        v185 = v30;
        v103 = 0;
        v104 = MEMORY[0x1E69E7CC8];
        v187 = *(v194 + 72);
        v59 = v193;
        while (2)
        {
          sub_1D1B32C80(v32 + v187 * v103, v59, type metadata accessor for StateSnapshot.UpdateType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v105 = *v59;
            v106 = *(v59 + 16);
            if (v106 == 3)
            {
              v189 = *(v59 + 8);
              v191 = v103 + 1;
              v107 = swift_isUniquelyReferenced_nonNull_native();
              v198 = v104;
              v201 = v104;
              v108 = *(v105 + 64);
              v192 = v105 + 64;
              v109 = -1 << *(v105 + 32);
              if (-v109 < 64)
              {
                v110 = ~(-1 << -v109);
              }

              else
              {
                v110 = -1;
              }

              v111 = v110 & v108;
              v188 = -1 << *(v105 + 32);
              v112 = (63 - v109) >> 6;

              v113 = 0;
              for (i = v105; ; v105 = i)
              {
                v120 = v111;
                v121 = v113;
                if (!v111)
                {
                  v122 = v113;
                  do
                  {
                    v121 = v122 + 1;
                    if (__OFADD__(v122, 1))
                    {
                      goto LABEL_125;
                    }

                    if (v121 >= v112)
                    {
                      goto LABEL_78;
                    }

                    v120 = *(v192 + 8 * v121);
                    ++v122;
                  }

                  while (!v120);
                }

                v123 = __clz(__rbit64(v120)) | (v121 << 6);
                v124 = *(*(v105 + 48) + 8 * v123);
                v125 = *(v105 + 56) + 24 * v123;
                v127 = *v125;
                v126 = *(v125 + 8);
                v128 = *(v125 + 16);
                v129 = v124;
                sub_1D1741830(v127, v126, v128);
                v130 = v129;
                sub_1D1741830(v127, v126, v128);

                sub_1D1778940(v127, v126, v128);
                if (!v130)
                {
                  break;
                }

                v131 = v198;
                v132 = sub_1D171D368(v130);
                v134 = *(v131 + 2);
                v135 = (v133 & 1) == 0;
                v92 = __OFADD__(v134, v135);
                v136 = v134 + v135;
                if (v92)
                {
                  goto LABEL_128;
                }

                v137 = v133;
                if (*(v131 + 3) >= v136)
                {
                  if ((v107 & 1) == 0)
                  {
                    v198 = v132;
                    sub_1D1737914();
                    v132 = v198;
                  }
                }

                else
                {
                  sub_1D1725FFC(v136, v107 & 1);
                  v132 = sub_1D171D368(v130);
                  if ((v137 & 1) != (v138 & 1))
                  {
                    goto LABEL_132;
                  }
                }

                v111 = (v120 - 1) & v120;
                v139 = v201;
                v198 = v201;
                if (v137)
                {
                  v114 = v201;
                  v115 = v132;

                  v116 = v114[7] + 24 * v115;
                  v117 = *v116;
                  v118 = *(v116 + 8);
                  *v116 = v127;
                  *(v116 + 8) = v126;
                  v119 = *(v116 + 16);
                  *(v116 + 16) = v128;
                  sub_1D1778940(v117, v118, v119);
                }

                else
                {
                  v201[(v132 >> 6) + 8] |= 1 << v132;
                  *(v139[6] + 8 * v132) = v130;
                  v140 = v139[7] + 24 * v132;
                  *v140 = v127;
                  *(v140 + 8) = v126;
                  *(v140 + 16) = v128;
                  v141 = v139[2];
                  v92 = __OFADD__(v141, 1);
                  v142 = v141 + 1;
                  if (v92)
                  {
                    goto LABEL_131;
                  }

                  v139[2] = v142;
                }

                v107 = 1;
                v113 = v121;
              }

LABEL_78:
              v143 = i;
              sub_1D1716918(i);
              sub_1D1AC373C(v143, v189, 3u);
              updated = v199;
              v103 = v191;
              v33 = v195;
              v32 = v196;
              v59 = v193;
              v104 = v198;
              if (v191 != v200)
              {
                continue;
              }

              v101 = v195;
              v102 = 3;
              sub_1D1AC373C(v184, v185, 3u);
              sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
              *v101 = v104;
LABEL_80:
              v101[1] = 0;
              *(v101 + 16) = v102;
              swift_storeEnumTagMultiPayload();
              v54 = *(v194 + 56);
              v55 = v101;
              v56 = 0;
              return v54(v55, v56, 1, updated);
            }

            sub_1D1AC373C(*v59, *(v59 + 8), v106);
            sub_1D1AC373C(v184, v185, 3u);
            sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
            goto LABEL_117;
          }

          break;
        }

        sub_1D1AC373C(v184, v185, 3u);
        sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
      }

      v33 = v195;
      sub_1D1B32C20(v59, type metadata accessor for StateSnapshot.UpdateType);
      goto LABEL_118;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);

    v39 = *(v4 + 32);
    v40 = v24;
    v41 = i;
    v39(v198, v40, i);
    v201 = MEMORY[0x1E69E7CD0];
    v42 = (v4 + 8);
    v43 = v41;
    v44 = *(v194 + 72);
    v45 = v196;
    while (1)
    {
      sub_1D1B32C80(v45, v12, type metadata accessor for StateSnapshot.UpdateType);
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        (*v42)(v198, v43);
        sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
        goto LABEL_27;
      }

      v46 = *&v12[*(v38 + 48)];
      v39(v7, v12, v43);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      sub_1D1930C84(v46);
      v43 = i;
      (*v42)(v7, i);
      v45 += v44;
      if (!--v200)
      {
        sub_1D1B32C20(v190, type metadata accessor for StateSnapshot.UpdateType);
        v47 = *(v38 + 48);
        v48 = v195;
        v39(v195, v198, v43);
        *(v48 + v47) = v201;
        v49 = v199;
        swift_storeEnumTagMultiPayload();
        return (*(v194 + 56))(v48, 0, 1, v49);
      }
    }

    v57 = *v42;
    (*v42)(v7, v43);

    v57(v198, v43);
    v12 = v190;
LABEL_27:
    sub_1D1B32C20(v12, type metadata accessor for StateSnapshot.UpdateType);
    return (*(v194 + 56))(v195, 1, 1, v199);
  }

  else
  {
    v34 = *(v25 + 56);

    return v34(a2, 1, 1, updated);
  }
}

uint64_t sub_1D1B31B38()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_1D1E6920C();
  sub_1D17783E0(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  _s7MergeIdVMa(0);
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B31D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D17783E0(v3, &v12 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D1E6922C();
    sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1D1E678EC();
}

uint64_t sub_1D1B31F24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D1E6920C();
  sub_1D17783E0(v3, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D1E6922C();
    sub_1D1B32DCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B3212C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1E67A7C();
  if (v11)
  {
    v3 = [v11 service];
    if (v3 && (v4 = v3, v5 = [v3 accessory], v4, v5) && (v6 = objc_msgSend(v5, sel_home), v5, v6))
    {
      v7 = [v6 uniqueIdentifier];

      sub_1D1E66A5C();
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1D1E66A7C();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

BOOL sub_1D1B32290(id *a1)
{
  v1 = [*a1 service];
  v2 = [v1 accessory];

  v3 = [v2 home];
  if (v3)
  {
  }

  return v3 != 0;
}

void *sub_1D1B32324(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D1B32484(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D1B3273C(v8, v4, v2);
  result = MEMORY[0x1D3893640](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1D1B32484(unint64_t *a1, uint64_t a2, void *a3)
{
  v28 = a2;
  v29 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE90, &qword_1D1E98EE8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v28 - v4;
  v37 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v37);
  v35 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v6;
  v8 = 0;
  v40 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v30 = 0;
  v31 = (v12 + 63) >> 6;
  v34 = v6 + 16;
  v32 = v10;
  v33 = v6 + 8;
  while (v14)
  {
    v15 = __clz(__rbit64(v14));
    v41 = (v14 - 1) & v14;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = v40;
    v20 = v35;
    v21 = v36;
    v22 = *(v36 + 16);
    v23 = v37;
    v22(v35, v40[6] + *(v36 + 72) * v18, v37);
    v24 = v18;
    v25 = *(v19[7] + 8 * v18);
    v26 = v38;
    v22(v38, v20, v23);
    *(v26 + *(v39 + 48)) = v25;
    sub_1D1741A30(v26, &qword_1EC64AE90, &qword_1D1E98EE8);
    result = (*(v21 + 8))(v20, v23);
    v14 = v41;
    if (v25 >= 6)
    {
      *(v29 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        return sub_1D188D47C(v29, v28, v30, v40);
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v31)
    {
      return sub_1D188D47C(v29, v28, v30, v40);
    }

    v17 = v32[v8];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v41 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1B3273C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D1B32484(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1D1B327B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a2 + 32) = v6;
  *a2 = v2;
  *(a2 + 8) = v3;
  v7 = v2;

  return sub_1D17418FC(v3, v4, v5, v6);
}

uint64_t sub_1D1B32814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  v15 = *(v12 + 56);
  sub_1D17783E0(a1, &v25 - v13);
  sub_1D17783E0(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D17783E0(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1D1B32DCC(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = sub_1D1E6775C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
      if (v18)
      {
        goto LABEL_9;
      }

LABEL_7:
      v17 = 0;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1D1741A30(v14, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_7;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
LABEL_9:
  v20 = *(_s7MergeIdVMa(0) + 20);
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if (v21 == *v23 && v22 == v23[1])
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1D1E6904C();
  }

  return v17 & 1;
}

uint64_t _s7MergeIdVMa(uint64_t a1)
{
  result = qword_1EE07ABA0;
  if (!qword_1EE07ABA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1B32BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B32C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B32C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D1B32D10(uint64_t a1)
{
  sub_1D177868C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D1B32DCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1B32E14(uint64_t a1, unsigned __int8 a2)
{
  sub_1D1E678EC();
}

uint64_t sub_1D1B32EF0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D1E678EC();
}

uint64_t sub_1D1B33020(uint64_t a1, unsigned __int8 a2)
{
  sub_1D1E678EC();
}

uint64_t sub_1D1B33174(uint64_t a1, unsigned __int8 a2)
{
  sub_1D1E678EC();
}

uint64_t type metadata accessor for AnyStatusItem(uint64_t a1)
{
  result = qword_1EC64AEB0;
  if (!qword_1EC64AEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnyStatusItem.umbrellaCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AnyStatusItem(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AnyStatusItem.statusCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AnyStatusItem(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1D1B334C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AnyStatusItem.color.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AnyStatusItem(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

double sub_1D1B3357C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(a3 + 24))(a2, a3);
  v8 = *(a3 + 32);
  v9 = type metadata accessor for AnyStatusItem(0);
  v8(a2, a3);
  (*(a3 + 48))(&v12 + 1, a2, a3);
  *(a4 + v9[6]) = BYTE1(v12);
  (*(a3 + 56))(&v12, a2, a3);
  *(a4 + v9[7]) = v12;
  *(a4 + v9[8]) = (*(a3 + 64))(a2, a3);
  (*(a3 + 72))(a2, a3);
  (*(a3 + 80))(v11, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = v11[0];
  *(a4 + v9[10]) = *v11;
  return result;
}

uint64_t sub_1D1B337C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t AnyStatusItem.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for IconTextValueStringDataHolder(0);
  sub_1D1E678EC();
  if (*(v1 + *(v2 + 28) + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v3 = type metadata accessor for AnyStatusItem(0);
  sub_1D1E678EC();

  MEMORY[0x1D3892850](*(v1 + *(v3 + 28)));
  return MEMORY[0x1D3892850](*(v1 + *(v3 + 32)));
}

uint64_t AnyStatusItem.hashValue.getter()
{
  sub_1D1E6920C();
  AnyStatusItem.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B339AC()
{
  sub_1D1E6920C();
  AnyStatusItem.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B339F0(uint64_t a1)
{
  sub_1D1E6920C();
  AnyStatusItem.hash(into:)(v2);
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel13AnyStatusItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconTextValueStringDataHolder(0);
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 28);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = type metadata accessor for AnyStatusItem(0);
  if ((sub_1D179F48C(*(a1 + v16[6]), *(a2 + v16[6])) & 1) != 0 && *(a1 + v16[7]) == *(a2 + v16[7]))
  {
    return *(a1 + v16[8]) == *(a2 + v16[8]);
  }

  return 0;
}

uint64_t sub_1D1B33B24(uint64_t a1)
{
  result = sub_1D1B33C0C(&qword_1EC64AEA0, type metadata accessor for AnyStatusItem, &protocol conformance descriptor for AnyStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B33C0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1B33C7C(uint64_t a1)
{
  type metadata accessor for IconTextValueStringDataHolder(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TilesFilter(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for StatusItemLocation(319);
      if (v3 <= 0x3F)
      {
        sub_1D1B33D4C(319, v3, v4, v5);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1B33D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EC64AEC0)
  {
    v4 = type metadata accessor for DynamicColor(0, MEMORY[0x1E69815B8], MEMORY[0x1E6981570], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC64AEC0);
    }
  }
}

uint64_t sub_1D1B33E34(uint64_t a1)
{
  result = type metadata accessor for IconTextValueStringDataHolder(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TilesFilter(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 4)
      {
        return v14 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TilesFilter(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1B34130(uint64_t a1)
{
  result = type metadata accessor for IconTextValueStringDataHolder(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TilesFilter(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 5)
      {
        return v14 - 4;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_index_27Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TilesFilter(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 4;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1B344B8(uint64_t a1)
{
  result = type metadata accessor for IconTextValueStringDataHolder(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TilesFilter(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1B34554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v91 = a3;
  v86 = type metadata accessor for IconTextValueStringDataHolder(0);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v81 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticService(0);
  v99 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v92 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v79 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v79 - v14;
  v15 = type metadata accessor for TemperatureStatusItem(0);
  v88 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[*(v16 + 24)] = 0;
  v89 = v16;
  v19 = *(v16 + 28);
  v80 = v18;
  v18[v19] = 2;
  v20 = sub_1D1784388(&unk_1F4D65D00);

  sub_1D1B35634(v21);
  v23 = v22;

  v82 = sub_1D1B3A7D0(a1, v20);
  v79 = 0;
  v83 = a1;

  v98 = *(v23 + 16);
  if (v98)
  {
    v24 = 0;
    v25 = v20 + 56;
    v96 = MEMORY[0x1E69E7CC0];
    v26 = "takeSnaphotsWhenBusy";
    v94 = v6;
    v93 = v10;
    v95 = v23;
    while (v24 < *(v23 + 16))
    {
      v27 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      v100 = *(v99 + 72);
      sub_1D1B39250(v23 + v27 + v100 * v24, v10, type metadata accessor for StaticService);
      v28 = v10[*(v6 + 112)];
      if (v28 == 53)
      {
        v28 = v10[*(v6 + 104)];
      }

      if (*(v20 + 16))
      {
        v97 = v27;
        sub_1D1E6920C();
        v101 = v28;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v29 = sub_1D1E6926C();
        v30 = -1 << *(v20 + 32);
        v31 = v29 & ~v30;
        if ((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          while (1)
          {
            v33 = "takeSnaphotsWhenBusy";
            switch(*(*(v20 + 48) + v31))
            {
              case 1:
                v34 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 2:
                v34 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 3:
                v34 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 4:
                v34 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 5:
                v34 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 6:
                v34 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 7:
                v34 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 8:
                v34 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 9:
                v34 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xA:
                v34 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xB:
                v34 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xC:
                v34 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xD:
                v34 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xE:
                v34 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xF:
                v34 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x10:
                v34 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x11:
                v34 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x12:
                v34 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x13:
                v34 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x14:
                v34 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x15:
                v34 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x16:
                v34 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x17:
                v34 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x18:
                v34 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x19:
                v34 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1A:
                v34 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1B:
                v34 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1C:
                v34 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1D:
                v34 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1E:
                v34 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1F:
                v34 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x20:
                v34 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x21:
                v34 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x22:
                v34 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x23:
                v34 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x24:
                v34 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x25:
                v34 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x26:
                v34 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x27:
                v34 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x28:
                v34 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x29:
                v34 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2A:
                v34 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2B:
                v34 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2C:
                v34 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2D:
                v34 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2E:
                v34 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2F:
                v34 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x30:
                v34 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x31:
                v34 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x32:
                v34 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x33:
                v34 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x34:
                v34 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_64:
                v33 = v34 - 32;
                break;
              default:
                break;
            }

            v35 = v33 | 0x8000000000000000;
            v36 = "takeSnaphotsWhenBusy";
            switch(v28)
            {
              case 1:
                v37 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 2:
                v37 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 3:
                v37 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 4:
                v37 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 5:
                v37 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 6:
                v37 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 7:
                v37 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 8:
                v37 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 9:
                v37 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 10:
                v37 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 11:
                v37 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 12:
                v37 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 13:
                v37 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 14:
                v37 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 15:
                v37 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 16:
                v37 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 17:
                v37 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 18:
                v37 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 19:
                v37 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 20:
                v37 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 21:
                v37 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 22:
                v37 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 23:
                v37 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 24:
                v37 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 25:
                v37 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 26:
                v37 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 27:
                v37 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 28:
                v37 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 29:
                v37 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 30:
                v37 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 31:
                v37 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 32:
                v37 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 33:
                v37 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 34:
                v37 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 35:
                v37 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 36:
                v37 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 37:
                v37 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 38:
                v37 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 39:
                v37 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 40:
                v37 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 41:
                v37 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 42:
                v37 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 43:
                v37 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 44:
                v37 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 45:
                v37 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 46:
                v37 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 47:
                v37 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 48:
                v37 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 49:
                v37 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 50:
                v37 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 51:
                v37 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 52:
                v37 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_118:
                v36 = v37 - 32;
                break;
              default:
                break;
            }

            if (v35 == (v36 | 0x8000000000000000))
            {
              break;
            }

            inited = sub_1D1E6904C();

            if (inited)
            {
              goto LABEL_124;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_122;
            }
          }

LABEL_124:
          v10 = v93;
          sub_1D1B392B8(v93, v92, type metadata accessor for StaticService);
          v38 = v96;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = v38;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D17915E0(0, *(v38 + 16) + 1, 1);
            v38 = v103;
          }

          v6 = v94;
          v23 = v95;
          inited = *(v38 + 16);
          v40 = *(v38 + 24);
          v41 = v38;
          if (inited >= v40 >> 1)
          {
            sub_1D17915E0(v40 > 1, inited + 1, 1);
            v23 = v95;
            v41 = v103;
          }

          *(v41 + 16) = inited + 1;
          v96 = v41;
          sub_1D1B392B8(v92, v41 + v97 + inited * v100, type metadata accessor for StaticService);
        }

        else
        {
LABEL_122:
          v10 = v93;
          sub_1D1B3A990(v93, type metadata accessor for StaticService);
          v6 = v94;
          v23 = v95;
        }
      }

      else
      {
        sub_1D1B3A990(v10, type metadata accessor for StaticService);
      }

      if (++v24 == v98)
      {
        goto LABEL_130;
      }
    }

    __break(1u);
    goto LABEL_143;
  }

  v96 = MEMORY[0x1E69E7CC0];
LABEL_130:

  v42 = v82;

  v23 = sub_1D1785BE4();
  if (*(v96 + 16))
  {

    v26 = v87;
    v20 = v86;
  }

  else
  {
    v62 = *(v42 + 16);

    v26 = v87;
    v20 = v86;
    if (v62)
    {

      v63 = static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EBA230);
      v65 = v64;
      v66 = static String.hfLocalized(_:)(2965515565, 0xA400000000000000);
      v68 = v67;
      sub_1D1E66A6C();
      v69 = &v26[*(v20 + 20)];
      *v69 = 0xD000000000000012;
      *(v69 + 1) = 0x80000001D1EB6290;
      v70 = &v26[*(v20 + 24)];
      *v70 = v63;
      v70[1] = v65;
      v71 = &v26[*(v20 + 28)];
      *v71 = v66;
      v71[1] = v68;
      v53 = &v26[*(v20 + 32)];
      *v53 = 0;
      *(v53 + 1) = 0;
      goto LABEL_138;
    }
  }

  v43 = sub_1D1B35968(v96);

  if (!v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    if (qword_1EC642168 == -1)
    {
LABEL_135:
      v54 = *algn_1EC644B98;
      v55 = qword_1EC644BA0;
      v56 = unk_1EC644BA8;
      v57 = qword_1EC644BB0;
      *(inited + 32) = qword_1EC644B90;
      *(inited + 40) = v54;
      *(inited + 48) = v55;
      *(inited + 56) = v56;
      *(inited + 64) = v57;

      v58 = sub_1D182AE80(v83, 0);
      v59 = sub_1D182AEF4(v58, 1);

      v60 = sub_1D1829C68(inited, 1, v59);

      swift_setDeallocating();
      sub_1D182BAC0(inited + 32);
      LOBYTE(v102) = 1;
      static ClimateSummarizer._temperatureGaugeData(context:from:)(v60, v26);

      v61 = v85;
      goto LABEL_139;
    }

LABEL_143:
    swift_once();
    goto LABEL_135;
  }

  v44 = static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EBA230);
  v46 = v45;
  v47 = static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EC4FE0);
  v49 = v48;
  sub_1D1E66A6C();
  v50 = &v26[*(v20 + 20)];
  *v50 = 0xD000000000000012;
  *(v50 + 1) = 0x80000001D1EB6290;
  v51 = &v26[*(v20 + 24)];
  *v51 = v44;
  v51[1] = v46;
  v52 = &v26[*(v20 + 28)];
  *v52 = v47;
  v52[1] = v49;
  v53 = &v26[*(v20 + 32)];
  *v53 = xmmword_1D1E99070;
LABEL_138:
  *(v53 + 2) = 0x4049000000000000;
  v53[24] = 1;
  v61 = v85;
  (*(v85 + 56))(v26, 0, 1, v20);
LABEL_139:
  v72 = v84;
  sub_1D1741C08(v26, v84, &qword_1EC644C58, &unk_1D1E77530);
  if ((*(v61 + 48))(v72, 1, v20) == 1)
  {

    sub_1D1B3A990(v90, type metadata accessor for StatusItemLocation);
    sub_1D1741A30(v26, &qword_1EC644C58, &unk_1D1E77530);
    sub_1D1741A30(v72, &qword_1EC644C58, &unk_1D1E77530);
    return (*(v88 + 56))(v91, 1, 1, v89);
  }

  else
  {
    v74 = v81;
    sub_1D1B392B8(v72, v81, type metadata accessor for IconTextValueStringDataHolder);
    v75 = v80;
    v76 = sub_1D1B39250(v74, v80, type metadata accessor for IconTextValueStringDataHolder);
    v77 = v89;
    MEMORY[0x1EEE9AC00](v76);
    *(&v79 - 2) = v23;
    v102 = v6;
    sub_1D1E66C8C();

    sub_1D1B3A990(v90, type metadata accessor for StatusItemLocation);
    sub_1D1B3A990(v74, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1741A30(v26, &qword_1EC644C58, &unk_1D1E77530);
    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v78 = v91;
    sub_1D1B392B8(v75, v91, type metadata accessor for TemperatureStatusItem);
    return (*(v88 + 56))(v78, 0, 1, v77);
  }
}

void sub_1D1B35634(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v30 = *(v2 - 1);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
LABEL_11:
    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = *(v30 + 72);
      sub_1D1B39250(*(a1 + 56) + v18 * (v17 | (v14 << 6)), v7, type metadata accessor for StaticService);
      sub_1D1B392B8(v7, v9, type metadata accessor for StaticService);
      if (v9[v2[8]] == 1)
      {
        v19 = v9[v2[9]];
        if (v19 != 2 && (v19 & 1) != 0)
        {
          break;
        }

        v32 = *&v9[v2[32]];
        v31 = v9[v2[26]];

        v15 = StaticCharacteristicsBag.isReachable(for:)(&v31);

        if (v15)
        {
          break;
        }
      }

      sub_1D1B3A990(v9, type metadata accessor for StaticService);
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    sub_1D1B392B8(v9, v28, type metadata accessor for StaticService);
    v20 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D17915E0(0, *(v20 + 16) + 1, 1);
      v20 = v33;
    }

    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v29 = v23 + 1;
      v27 = v23;
      sub_1D17915E0(v22 > 1, v23 + 1, 1);
      v23 = v27;
      v24 = v29;
      v20 = v33;
    }

    *(v20 + 16) = v24;
    v25 = *(v30 + 80);
    v29 = v20;
    sub_1D1B392B8(v28, v20 + ((v25 + 32) & ~v25) + v23 * v18, type metadata accessor for StaticService);
  }

LABEL_7:
  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return;
    }

    v12 = *(a1 + 64 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

BOOL sub_1D1B35968(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v8 = v6 == v7;
    if (v6 == v7)
    {
      break;
    }

    sub_1D1B39250(a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v5, type metadata accessor for StaticService);
    v9 = v5[*(v2 + 36)];
    sub_1D1B3A990(v5, type metadata accessor for StaticService);
    if (v9 == 2)
    {
      break;
    }

    ++v7;
  }

  while ((v9 & 1) != 0);
  return v8;
}

uint64_t sub_1D1B35AA8(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF28, type metadata accessor for TemperatureStatusItem, &unk_1D1E99138);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B35B00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1B35B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v112 = a3;
  v107 = type metadata accessor for IconTextValueStringDataHolder(0);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v103 = v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticService(0);
  v121 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v114 = v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v101 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v105 = v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v101 - v14;
  v15 = type metadata accessor for HumidityStatusItem(0);
  v109 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[*(v16 + 24)] = 0;
  v110 = v16;
  v19 = *(v16 + 28);
  v102 = v18;
  v18[v19] = 2;
  v20 = sub_1D1784388(&unk_1F4D65D28);

  sub_1D1B35634(v21);
  v23 = v22;

  v104 = sub_1D1B3A7D0(a1, v20);
  v101[1] = 0;
  v113 = a1;

  v120 = *(v23 + 16);
  if (!v120)
  {
    v118 = MEMORY[0x1E69E7CC0];
LABEL_130:

    v40 = v104;

    v23 = sub_1D1785BE4();
    if (*(v118 + 16))
    {

      v10 = v108;
    }

    else
    {
      v66 = *(v40 + 16);

      v10 = v108;
      if (v66)
      {
        v20 = v6;

        v67 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
        v69 = v68;
        v70 = static String.hfLocalized(_:)(2436397, 0xE300000000000000);
        v72 = v71;
        sub_1D1E66A6C();
        v48 = 0;
        v73 = v107;
        v74 = &v10[*(v107 + 20)];
        strcpy(v74, "humidity.fill");
        *(v74 + 7) = -4864;
        v75 = &v10[v73[6]];
        *v75 = v67;
        v75[1] = v69;
        v52 = v73;
        v76 = &v10[v73[7]];
        *v76 = v70;
        v76[1] = v72;
        v54 = &v10[v73[8]];
        *v54 = 0;
        *(v54 + 1) = 0;
        goto LABEL_140;
      }
    }

    v41 = sub_1D1B35968(v118);

    v20 = v6;
    if (!v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      if (qword_1EC642178 == -1)
      {
        goto LABEL_135;
      }

      goto LABEL_152;
    }

    v42 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
    v44 = v43;
    v45 = static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EC4FE0);
    v47 = v46;
    sub_1D1E66A6C();
    v48 = 0;
    v49 = v107;
    v50 = &v10[*(v107 + 20)];
    strcpy(v50, "humidity.fill");
    *(v50 + 7) = -4864;
    v51 = &v10[v49[6]];
    *v51 = v42;
    v51[1] = v44;
    v52 = v49;
    v53 = &v10[v49[7]];
    *v53 = v45;
    v53[1] = v47;
    v54 = &v10[v49[8]];
    *v54 = xmmword_1D1E99080;
LABEL_140:
    *(v54 + 2) = 0x4059000000000000;
    v54[24] = 1;
    goto LABEL_148;
  }

  v24 = 0;
  v123 = v20 + 56;
  v118 = MEMORY[0x1E69E7CC0];
  v116 = v6;
  v115 = v10;
  v117 = v23;
  while (v24 < *(v23 + 16))
  {
    v25 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v122 = *(v121 + 72);
    sub_1D1B39250(v23 + v25 + v122 * v24, v10, type metadata accessor for StaticService);
    v26 = v10[*(v6 + 112)];
    if (v26 == 53)
    {
      v26 = v10[*(v6 + 104)];
    }

    if (*(v20 + 16))
    {
      v119 = v25;
      sub_1D1E6920C();
      v124 = v26;
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v27 = sub_1D1E6926C();
      v28 = -1 << *(v20 + 32);
      v29 = v27 & ~v28;
      if ((*(v123 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = "takeSnaphotsWhenBusy";
          switch(*(*(v20 + 48) + v29))
          {
            case 1:
              v32 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 2:
              v32 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 3:
              v32 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 4:
              v32 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 5:
              v32 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 6:
              v32 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 7:
              v32 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 8:
              v32 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 9:
              v32 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xA:
              v32 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xB:
              v32 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xC:
              v32 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xD:
              v32 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xE:
              v32 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0xF:
              v32 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x10:
              v32 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x11:
              v32 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x12:
              v32 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x13:
              v32 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x14:
              v32 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x15:
              v32 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x16:
              v32 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x17:
              v32 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x18:
              v32 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x19:
              v32 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1A:
              v32 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1B:
              v32 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1C:
              v32 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1D:
              v32 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1E:
              v32 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x1F:
              v32 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x20:
              v32 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x21:
              v32 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x22:
              v32 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x23:
              v32 = "0000007E-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x24:
              v32 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x25:
              v32 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x26:
              v32 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x27:
              v32 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x28:
              v32 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x29:
              v32 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2A:
              v32 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2B:
              v32 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2C:
              v32 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2D:
              v32 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2E:
              v32 = "0000004A-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x2F:
              v32 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x30:
              v32 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x31:
              v32 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x32:
              v32 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x33:
              v32 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_64;
            case 0x34:
              v32 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_64:
              v31 = v32 - 32;
              break;
            default:
              break;
          }

          v33 = v31 | 0x8000000000000000;
          v34 = "takeSnaphotsWhenBusy";
          switch(v26)
          {
            case 1:
              v35 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 2:
              v35 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 3:
              v35 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 4:
              v35 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 5:
              v35 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 6:
              v35 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 7:
              v35 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 8:
              v35 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 9:
              v35 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 10:
              v35 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 11:
              v35 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 12:
              v35 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 13:
              v35 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 14:
              v35 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 15:
              v35 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 16:
              v35 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 17:
              v35 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 18:
              v35 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 19:
              v35 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 20:
              v35 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 21:
              v35 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 22:
              v35 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 23:
              v35 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 24:
              v35 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 25:
              v35 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 26:
              v35 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 27:
              v35 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 28:
              v35 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 29:
              v35 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 30:
              v35 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 31:
              v35 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 32:
              v35 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 33:
              v35 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 34:
              v35 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 35:
              v35 = "0000007E-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 36:
              v35 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 37:
              v35 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 38:
              v35 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 39:
              v35 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 40:
              v35 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 41:
              v35 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 42:
              v35 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 43:
              v35 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 44:
              v35 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 45:
              v35 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 46:
              v35 = "0000004A-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 47:
              v35 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 48:
              v35 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 49:
              v35 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 50:
              v35 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 51:
              v35 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_118;
            case 52:
              v35 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_118:
              v34 = v35 - 32;
              break;
            default:
              break;
          }

          if (v33 == (v34 | 0x8000000000000000))
          {
            break;
          }

          inited = sub_1D1E6904C();

          if (inited)
          {
            goto LABEL_124;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v123 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_122;
          }
        }

LABEL_124:
        v10 = v115;
        sub_1D1B392B8(v115, v114, type metadata accessor for StaticService);
        v36 = v118;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D17915E0(0, *(v36 + 16) + 1, 1);
          v36 = v126;
        }

        v6 = v116;
        v23 = v117;
        inited = *(v36 + 16);
        v38 = *(v36 + 24);
        v39 = v36;
        if (inited >= v38 >> 1)
        {
          sub_1D17915E0(v38 > 1, inited + 1, 1);
          v23 = v117;
          v39 = v126;
        }

        *(v39 + 16) = inited + 1;
        v118 = v39;
        sub_1D1B392B8(v114, v39 + v119 + inited * v122, type metadata accessor for StaticService);
      }

      else
      {
LABEL_122:
        v10 = v115;
        sub_1D1B3A990(v115, type metadata accessor for StaticService);
        v6 = v116;
        v23 = v117;
      }
    }

    else
    {
      sub_1D1B3A990(v10, type metadata accessor for StaticService);
    }

    if (++v24 == v120)
    {
      goto LABEL_130;
    }
  }

  __break(1u);
LABEL_152:
  swift_once();
LABEL_135:
  v55 = *algn_1EC644BE8;
  v56 = qword_1EC644BF0;
  v57 = unk_1EC644BF8;
  v58 = qword_1EC644C00;
  *(inited + 32) = qword_1EC644BE0;
  *(inited + 40) = v55;
  *(inited + 48) = v56;
  *(inited + 56) = v57;
  *(inited + 64) = v58;

  v59 = sub_1D182AE80(v113, 0);
  v60 = sub_1D182AEF4(v59, 1);

  v61 = sub_1D1829C68(inited, 1, v60);

  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  v62 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v61);

  v63 = *(v62 + 2);
  if (!v63)
  {

    v48 = 1;
    v52 = v107;
    goto LABEL_148;
  }

  if (v63 >= 4)
  {
    v64 = v63 & 0x7FFFFFFFFFFFFFFCLL;
    v77 = (v62 + 48);
    v65 = 0.0;
    v78 = v63 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v65 = v65 + *(v77 - 2) + *(v77 - 1) + *v77 + v77[1];
      v77 += 4;
      v78 -= 4;
    }

    while (v78);
    if (v63 == v64)
    {
      goto LABEL_147;
    }
  }

  else
  {
    v64 = 0;
    v65 = 0.0;
  }

  v79 = v63 - v64;
  v80 = &v62[8 * v64 + 32];
  do
  {
    v81 = *v80++;
    v65 = v65 + v81;
    --v79;
  }

  while (v79);
LABEL_147:
  v82 = v65 / v63;
  v83 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
  v85 = v84;
  v86 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v62, 1);
  v88 = v87;

  sub_1D1E66A6C();

  v48 = 0;
  v52 = v107;
  v89 = &v10[*(v107 + 20)];
  strcpy(v89, "humidity.fill");
  *(v89 + 7) = -4864;
  v90 = &v10[v52[6]];
  *v90 = v83;
  v90[1] = v85;
  v91 = &v10[v52[7]];
  *v91 = v86;
  v91[1] = v88;
  v92 = &v10[v52[8]];
  *v92 = v82;
  *(v92 + 8) = xmmword_1D1E774F0;
  v92[24] = 1;
LABEL_148:
  v93 = v106;
  v94 = v105;
  (*(v106 + 56))(v10, v48, 1, v52);
  sub_1D1741C08(v10, v94, &qword_1EC644C58, &unk_1D1E77530);
  if ((*(v93 + 48))(v94, 1, v52) == 1)
  {

    sub_1D1B3A990(v111, type metadata accessor for StatusItemLocation);
    sub_1D1741A30(v10, &qword_1EC644C58, &unk_1D1E77530);
    sub_1D1741A30(v94, &qword_1EC644C58, &unk_1D1E77530);
    return (*(v109 + 56))(v112, 1, 1, v110);
  }

  else
  {
    v96 = v103;
    sub_1D1B392B8(v94, v103, type metadata accessor for IconTextValueStringDataHolder);
    v97 = v102;
    v98 = sub_1D1B39250(v96, v102, type metadata accessor for IconTextValueStringDataHolder);
    v99 = v110;
    MEMORY[0x1EEE9AC00](v98);
    v101[-2] = v23;
    v125 = v20;
    sub_1D1E66C8C();

    sub_1D1B3A990(v111, type metadata accessor for StatusItemLocation);
    sub_1D1B3A990(v96, type metadata accessor for IconTextValueStringDataHolder);
    sub_1D1741A30(v10, &qword_1EC644C58, &unk_1D1E77530);
    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v100 = v112;
    sub_1D1B392B8(v97, v112, type metadata accessor for HumidityStatusItem);
    return (*(v109 + 56))(v100, 0, 1, v99);
  }
}

uint64_t sub_1D1B36DCC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850, MEMORY[0x1E6968DA8]);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B39320();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860, MEMORY[0x1E6968D20]);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350, MEMORY[0x1E6968D58]);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360, MEMORY[0x1E69E6508]);
  sub_1D1B35B00(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v17 = v20;
  sub_1D1E6647C();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1D1B371B0(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF30, type metadata accessor for HumidityStatusItem, &unk_1D1E9918C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B37208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_1D1E66A7C();
  v64 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v62 - v7;
  v76 = type metadata accessor for StaticService(0);
  v72 = *(v76 - 8);
  v9 = MEMORY[0x1EEE9AC00](v76);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v62 - v16;
  v73 = type metadata accessor for IconTextValueStringDataHolder(0);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v67 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AirQualityStatusItem(0);
  v68 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[*(v20 + 24)] = 0;
  v69 = v20;
  v23 = *(v20 + 28);
  v65 = v22;
  v22[v23] = 2;
  v75 = sub_1D1B390E0(a1, sub_1D1B395F4, sub_1D1B395F4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  if (qword_1EC642170 != -1)
  {
LABEL_30:
    swift_once();
  }

  v25 = unk_1EC644BC0;
  v27 = qword_1EC644BC8;
  v26 = unk_1EC644BD0;
  v28 = qword_1EC644BD8;
  *(inited + 32) = qword_1EC644BB8;
  *(inited + 40) = v25;
  *(inited + 48) = v27;
  *(inited + 56) = v26;
  *(inited + 64) = v28;

  v29 = v75;
  v30 = sub_1D182AE80(v75, 0);
  v31 = sub_1D182AEF4(v30, 1);

  v32 = sub_1D1829C68(inited, 1, v31);

  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  static ClimateSummarizer._airQualityGaugeData(from:)(v17, v32);

  if ((*(v71 + 48))(v17, 1, v73) == 1)
  {

    sub_1D1741A30(v17, &qword_1EC644C58, &unk_1D1E77530);
    return (*(v68 + 56))(v70, 1, 1, v69);
  }

  else
  {
    sub_1D1B392B8(v17, v67, type metadata accessor for IconTextValueStringDataHolder);
    inited = 0;
    v34 = v29 + 64;
    v35 = 1 << v29[32];
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v29 + 8);
    v38 = (v35 + 63) >> 6;
    v73 = 0x80000001D1EB2D70;
    v66 = MEMORY[0x1E69E7CC0];
    v17 = v74;
LABEL_7:
    v39 = inited;
    if (!v37)
    {
      goto LABEL_9;
    }

    do
    {
      inited = v39;
LABEL_12:
      v40 = *(v29 + 7);
      v71 = *(v72 + 72);
      sub_1D1B39250(v40 + v71 * (__clz(__rbit64(v37)) | (inited << 6)), v17, type metadata accessor for StaticService);
      v41 = v17[*(v76 + 112)];
      if (v41 == 53)
      {
        LOBYTE(v41) = v17[*(v76 + 104)];
      }

      v37 &= v37 - 1;
      v77 = v41;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v73 == v42)
      {

LABEL_20:
        v17 = v74;
        sub_1D1B392B8(v74, v63, type metadata accessor for StaticService);
        v44 = v66;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D17915E0(0, *(v44 + 16) + 1, 1);
          v17 = v74;
          v44 = v78;
        }

        v46 = v44;
        v47 = *(v44 + 16);
        v48 = *(v46 + 24);
        v49 = v47 + 1;
        if (v47 >= v48 >> 1)
        {
          v66 = v47 + 1;
          sub_1D17915E0(v48 > 1, v47 + 1, 1);
          v49 = v66;
          v17 = v74;
          v46 = v78;
        }

        *(v46 + 16) = v49;
        v50 = *(v72 + 80);
        v66 = v46;
        sub_1D1B392B8(v63, v46 + ((v50 + 32) & ~v50) + v47 * v71, type metadata accessor for StaticService);
        v29 = v75;
        goto LABEL_7;
      }

      v43 = sub_1D1E6904C();

      if (v43)
      {
        goto LABEL_20;
      }

      v17 = v74;
      sub_1D1B3A990(v74, type metadata accessor for StaticService);
      v39 = inited;
      v29 = v75;
    }

    while (v37);
    while (1)
    {
LABEL_9:
      inited = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (inited >= v38)
      {
        break;
      }

      v37 = *&v34[8 * inited];
      ++v39;
      if (v37)
      {
        goto LABEL_12;
      }
    }

    v78 = MEMORY[0x1E69E7CD0];
    v51 = *(v66 + 16);
    if (v51)
    {
      v52 = v66 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v53 = *(v72 + 72);
      v54 = (v64 + 16);
      v55 = (v64 + 8);
      do
      {
        sub_1D1B39250(v52, v13, type metadata accessor for StaticService);
        (*v54)(v6, v13, v3);
        sub_1D1762CB8(v8, v6);
        (*v55)(v8, v3);
        sub_1D1B3A990(v13, type metadata accessor for StaticService);
        v52 += v53;
        --v51;
      }

      while (v51);
    }

    v56 = v78;
    v57 = v67;
    v58 = v65;
    v59 = sub_1D1B39250(v67, v65, type metadata accessor for IconTextValueStringDataHolder);
    v60 = v69;
    MEMORY[0x1EEE9AC00](v59);
    *(&v62 - 2) = v56;
    v78 = v76;
    sub_1D1E66C8C();

    sub_1D1B3A990(v57, type metadata accessor for IconTextValueStringDataHolder);
    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v61 = v70;
    sub_1D1B392B8(v58, v70, type metadata accessor for AirQualityStatusItem);
    return (*(v68 + 56))(v61, 0, 1, v60);
  }
}

uint64_t sub_1D1B37B48(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF38, type metadata accessor for AirQualityStatusItem, &unk_1D1E991E0);
  *(a1 + 8) = result;
  return result;
}

void sub_1D1B37BA0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v98 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v93 - v8;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v93 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v15 = MEMORY[0x1EEE9AC00](v112);
  v103 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v113 = &v93 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v109 = &v93 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v114 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v93 - v23;
  v24 = type metadata accessor for FanStatusItem(0);
  v100 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[v25[5]] = 3;
  v27[v25[7]] = 0;
  v101 = v25;
  v28 = v25[8];
  v96 = v27;
  v27[v28] = 3;
  v29 = sub_1D1784388(&unk_1F4D65D50);
  v119 = MEMORY[0x1E69E7CD0];
  v30 = a1 + 64;
  v31 = 1 << *(a1 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(a1 + 64);
  v34 = (v31 + 63) >> 6;
  v108 = v11 + 16;
  v115 = v29 + 56;
  v116 = v29;
  v110 = (v11 + 8);
  v111 = a1;

  v35 = 0;
  v107 = v10;
  v106 = v7;
  v105 = v11;
  v104 = v9;
  if (v33)
  {
    while (1)
    {
LABEL_9:
      v37 = __clz(__rbit64(v33)) | (v35 << 6);
      v38 = v111;
      v39 = *(v111 + 48) + *(v11 + 72) * v37;
      v40 = *(v11 + 16);
      v41 = v109;
      v40(v109, v39, v10);
      v42 = *(v38 + 56);
      v43 = type metadata accessor for StaticService(0);
      v44 = v42 + *(*(v43 - 8) + 72) * v37;
      v45 = v112;
      sub_1D1B39250(v44, v41 + *(v112 + 48), type metadata accessor for StaticService);
      v46 = v114;
      sub_1D182BEE0(v41, v114);
      v47 = v46;
      v48 = v113;
      sub_1D1741C08(v47, v113, &qword_1EC642DB0, &unk_1D1E6F360);
      v49 = v48 + *(v45 + 48);
      v50 = *(v49 + *(v43 + 112));
      if (v50 == 53)
      {
        LOBYTE(v50) = *(v49 + *(v43 + 104));
      }

      v33 &= v33 - 1;
      sub_1D1B3A990(v49, type metadata accessor for StaticService);
      if (*(v116 + 16) && (v51 = v116, sub_1D1E6920C(), v117 = v50, ServiceKind.rawValue.getter(), sub_1D1E678EC(), , v52 = sub_1D1E6926C(), v53 = -1 << *(v51 + 32), v54 = v52 & ~v53, ((*(v115 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0))
      {
        v55 = ~v53;
        while (1)
        {
          LOBYTE(v118) = *(*(v116 + 48) + v54);
          v117 = v50;
          v56 = ServiceKind.rawValue.getter();
          v58 = v57;
          if (v56 == ServiceKind.rawValue.getter() && v58 == v59)
          {
            break;
          }

          v61 = sub_1D1E6904C();

          if (v61)
          {
            goto LABEL_25;
          }

          v54 = (v54 + 1) & v55;
          if (((*(v115 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

LABEL_25:
        v62 = *v110;
        v10 = v107;
        (*v110)(v113, v107);
        v63 = v103;
        sub_1D1741C08(v114, v103, &qword_1EC642DB0, &unk_1D1E6F360);
        v64 = *(v112 + 48);
        v65 = StaticService.isActivated.getter();
        sub_1D1B3A990(&v63[v64], type metadata accessor for StaticService);
        v62(v63, v10);
        if (v65)
        {
          v66 = v94;
          sub_1D182BEE0(v114, v94);
          sub_1D1741C08(v66, v103, &qword_1EC642DB0, &unk_1D1E6F360);
          v93 = *(v112 + 48);
          v67 = v95;
          v68 = v103;
          sub_1D1762CB8(v95, v103);
          v62(v67, v10);
          sub_1D1741A30(v66, &qword_1EC642DB0, &unk_1D1E6F360);
          sub_1D1B3A990(&v68[v93], type metadata accessor for StaticService);
          goto LABEL_22;
        }
      }

      else
      {
LABEL_20:
        v10 = v107;
        (*v110)(v113, v107);
      }

      sub_1D1741A30(v114, &qword_1EC642DB0, &unk_1D1E6F360);
LABEL_22:
      v7 = v106;
      v11 = v105;
      v9 = v104;
      if (!v33)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      return;
    }

    if (v36 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v36);
    ++v35;
    if (v33)
    {
      v35 = v36;
      goto LABEL_9;
    }
  }

  v69 = v119;
  if (*(v119 + 16))
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    v70 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EC4FC0);
    v115 = v71;
    v116 = v70;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1D1E739C0;
    v73 = *(v69 + 16);
    v74 = MEMORY[0x1E69E65A8];
    *(v72 + 56) = MEMORY[0x1E69E6530];
    *(v72 + 64) = v74;
    *(v72 + 32) = v73;
    v75 = sub_1D1E6783C();
    v77 = v76;

    sub_1D1741C08(v9, v7, &qword_1EC642590, qword_1D1E71260);
    v78 = *(v11 + 48);
    if (v78(v7, 1, v10) == 1)
    {
      v79 = v9;
      v80 = v99;
      sub_1D1E66A6C();
      sub_1D1741A30(v79, &qword_1EC642590, qword_1D1E71260);
      if (v78(v7, 1, v10) != 1)
      {
        sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
      v80 = v99;
      (*(v11 + 32))(v99, v7, v10);
    }

    v81 = v97;
    (*(v11 + 32))(v97, v80, v10);
    v82 = v98;
    v83 = &v81[*(v98 + 20)];
    *v83 = 0x6B7365642E6E6166;
    *(v83 + 1) = 0xE800000000000000;
    v84 = &v81[v82[6]];
    v85 = v115;
    *v84 = v116;
    v84[1] = v85;
    v86 = &v81[v82[7]];
    *v86 = v75;
    v86[1] = v77;
    v87 = &v81[v82[8]];
    *v87 = 0;
    *(v87 + 1) = 0;
    *(v87 + 2) = 0;
    v87[24] = -1;
    v88 = v81;
    v89 = v96;
    v90 = sub_1D1B392B8(v88, v96, type metadata accessor for IconTextValueStringDataHolder);
    v91 = v101;
    MEMORY[0x1EEE9AC00](v90);
    *(&v93 - 2) = v69;
    v118 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v92 = v102;
    sub_1D1B392B8(v89, v102, type metadata accessor for FanStatusItem);
    (*(v100 + 56))(v92, 0, 1, v91);
  }

  else
  {

    (*(v100 + 56))(v102, 1, 1, v101);
  }
}

uint64_t sub_1D1B38748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v75 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v70 - v7;
  v88 = sub_1D1E66A7C();
  v9 = *(v88 - 8);
  v10 = MEMORY[0x1EEE9AC00](v88);
  v73 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v70 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v13 = MEMORY[0x1EEE9AC00](v83);
  v82 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v70 - v15;
  v16 = type metadata accessor for AirPurifierStatusItem(0);
  v76 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[v17[6]] = 3;
  v19[v17[7]] = 0;
  v77 = v17;
  v20 = v17[8];
  v72 = v19;
  v19[v20] = 3;
  v21 = sub_1D1B390E0(a1, sub_1D1B39AF8, sub_1D1B39AF8);
  v87 = v9;

  v89 = MEMORY[0x1E69E7CD0];
  v22 = v21 + 64;
  v23 = 1 << v21[32];
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 8);
  v26 = (v23 + 63) >> 6;
  v79 = v9 + 8;
  v80 = v9 + 16;
  v86 = v21;

  v28 = 0;
  v85 = v8;
  if (v25)
  {
    while (1)
    {
      v29 = v28;
LABEL_9:
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v31 = v30 | (v29 << 6);
      v32 = v86;
      v33 = v87;
      v34 = v81;
      (*(v87 + 16))(v81, *(v86 + 48) + *(v87 + 72) * v31, v88);
      v35 = *(v32 + 56);
      v36 = v35 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v31;
      v37 = v83;
      sub_1D1B39250(v36, v34 + *(v83 + 48), type metadata accessor for StaticService);
      v38 = v82;
      sub_1D1741C08(v34, v82, &qword_1EC642DB0, &unk_1D1E6F360);
      v39 = *(v37 + 48);
      v40 = v84;
      sub_1D1762CB8(v84, v38);
      (*(v33 + 8))(v40, v88);
      sub_1D1741A30(v34, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B3A990(&v38[v39], type metadata accessor for StaticService);
      v8 = v85;
      if (!v25)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return result;
    }

    if (v29 >= v26)
    {
      break;
    }

    v25 = *&v22[8 * v29];
    ++v28;
    if (v25)
    {
      v28 = v29;
      goto LABEL_9;
    }
  }

  v41 = v89;
  if (*(v89 + 16))
  {
    v42 = v87;
    v43 = v88;
    (*(v87 + 56))(v8, 1, 1, v88);
    v86 = 0x80000001D1EB5B00;
    v84 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC4F70);
    v45 = v44;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1D1E739C0;
    v47 = *(v41 + 16);
    v48 = MEMORY[0x1E69E65A8];
    *(v46 + 56) = MEMORY[0x1E69E6530];
    *(v46 + 64) = v48;
    *(v46 + 32) = v47;
    v49 = sub_1D1E6783C();
    v51 = v50;

    v52 = v43;
    v53 = v85;

    v54 = v71;
    sub_1D1741C08(v53, v71, &qword_1EC642590, qword_1D1E71260);
    v55 = *(v42 + 48);
    if (v55(v54, 1, v52) == 1)
    {
      v56 = v73;
      sub_1D1E66A6C();
      sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      v57 = v55(v54, 1, v52) == 1;
      v59 = v74;
      v58 = v75;
      v60 = v54;
      v62 = v77;
      v61 = v78;
      if (!v57)
      {
        sub_1D1741A30(v60, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
      v63 = *(v42 + 32);
      v56 = v73;
      v63(v73, v54, v52);
      v62 = v77;
      v61 = v78;
      v59 = v74;
      v58 = v75;
    }

    (*(v87 + 32))(v59, v56, v52);
    v64 = (v59 + v58[5]);
    *v64 = 0xD000000000000011;
    v64[1] = v86;
    v65 = (v59 + v58[6]);
    *v65 = v84;
    v65[1] = v45;
    v66 = (v59 + v58[7]);
    *v66 = v49;
    v66[1] = v51;
    v67 = v59 + v58[8];
    *v67 = 0;
    *(v67 + 8) = 0;
    *(v67 + 16) = 0;
    *(v67 + 24) = -1;
    v68 = v72;
    v69 = sub_1D1B392B8(v59, v72, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v69);
    *(&v70 - 2) = v41;
    v89 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B392B8(v68, v61, type metadata accessor for AirPurifierStatusItem);
    return (*(v76 + 56))(v61, 0, 1, v62);
  }

  else
  {

    return (*(v76 + 56))(v78, 1, 1, v77);
  }
}

uint64_t sub_1D1B38F80(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF40, type metadata accessor for BlindsStatusItem, &unk_1D1E99234);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B38FD8(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF48, type metadata accessor for BlindsStatusItem, &unk_1D1E9926C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B39030(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF50, type metadata accessor for FanStatusItem, &unk_1D1E992A4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B39088(uint64_t a1)
{
  result = sub_1D1B35B00(&qword_1EC64AF58, type metadata accessor for AirPurifierStatusItem, &unk_1D1E992F8);
  *(a1 + 8) = result;
  return result;
}

void *sub_1D1B390E0(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1D1B3A108(v12, v7, v5, a3);
  result = MEMORY[0x1D3893640](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1D1B39250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B392B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1B39320()
{
  result = qword_1EC64AF88;
  if (!qword_1EC64AF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64AF80, &unk_1D1E9A890);
    sub_1D1B393AC();
    sub_1D1B39544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AF88);
  }

  return result;
}

unint64_t sub_1D1B393AC()
{
  result = qword_1EC64AF90;
  if (!qword_1EC64AF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64AF70, &unk_1D1E9A860);
    sub_1D1B394A8(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
    sub_1D1B394A8(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AF90);
  }

  return result;
}

uint64_t sub_1D1B394A8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1B35B00(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1B39544()
{
  result = qword_1EC64AF98;
  if (!qword_1EC64AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64AF68, &unk_1D1E99350);
    sub_1D17D8EA8(&qword_1EC64AFA0, &qword_1EC64AF60, &unk_1D1E9A850, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AF98);
  }

  return result;
}

uint64_t sub_1D1B395F4(unint64_t *a1, uint64_t a2, void *a3)
{
  v43 = a2;
  v44 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = MEMORY[0x1EEE9AC00](v52);
  v61 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v42 - v6;
  v55 = type metadata accessor for StaticService(0);
  v51 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v60 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v58);
  v57 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v53 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v45 = 0;
  v46 = (v15 + 63) >> 6;
  v49 = v9 + 16;
  v50 = v9;
  v54 = 0x80000001D1EB2D70;
  v48 = (v9 + 8);
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v56 = (v17 - 1) & v17;
LABEL_12:
    v24 = v21 | (v11 << 6);
    v25 = v53;
    v26 = *(v50 + 16);
    v27 = v57;
    v28 = v58;
    v26(v57, v53[6] + *(v50 + 72) * v24, v58);
    v29 = v25[7];
    v30 = *(v51 + 72);
    v47 = v24;
    v31 = v29 + v30 * v24;
    v32 = v60;
    sub_1D1B39250(v31, v60, type metadata accessor for StaticService);
    v33 = v59;
    v26(v59, v27, v28);
    v34 = v52;
    sub_1D1B39250(v32, v33 + *(v52 + 48), type metadata accessor for StaticService);
    v35 = v61;
    sub_1D1741C08(v33, v61, &qword_1EC642DB0, &unk_1D1E6F360);
    v36 = v35 + *(v34 + 48);
    v37 = *(v36 + *(v55 + 112));
    if (v37 == 53)
    {
      LOBYTE(v37) = *(v36 + *(v55 + 104));
    }

    sub_1D1B3A990(v36, type metadata accessor for StaticService);
    v62 = v37;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v54 == v38)
    {

      sub_1D1741A30(v59, &qword_1EC642DB0, &unk_1D1E6F360);
      v39 = *v48;
      v40 = v58;
      (*v48)(v61, v58);
      sub_1D1B3A990(v60, type metadata accessor for StaticService);
      result = (v39)(v57, v40);
      v17 = v56;
      goto LABEL_17;
    }

    v18 = sub_1D1E6904C();

    sub_1D1741A30(v59, &qword_1EC642DB0, &unk_1D1E6F360);
    v19 = *v48;
    v20 = v58;
    (*v48)(v61, v58);
    sub_1D1B3A990(v60, type metadata accessor for StaticService);
    result = (v19)(v57, v20);
    v17 = v56;
    if (v18)
    {
LABEL_17:
      *(v44 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v45++, 1))
      {
        __break(1u);
        return sub_1D188B1C8(v44, v43, v45, v53);
      }
    }
  }

  v22 = v11;
  while (1)
  {
    v11 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v11 >= v46)
    {
      return sub_1D188B1C8(v44, v43, v45, v53);
    }

    v23 = v13[v11];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v56 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B39AF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = MEMORY[0x1EEE9AC00](v58);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v63 = &v44 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v44 - v8;
  v56 = type metadata accessor for StaticService(0);
  v53 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v61 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v10);
  v60 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v54 = a3;
  v15 = *(a3 + 64);
  v48 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v46 = 0;
  v47 = (v16 + 63) >> 6;
  v51 = v12 + 16;
  v52 = v12;
  v55 = 0x80000001D1EB2D40;
  v19 = (v12 + 8);
  v57 = result;
  while (v18)
  {
    v20 = v19;
    v21 = __clz(__rbit64(v18));
    v59 = (v18 - 1) & v18;
LABEL_12:
    v24 = v21 | (v14 << 6);
    v25 = v54;
    v26 = *(v52 + 16);
    v27 = v60;
    v26(v60, v54[6] + *(v52 + 72) * v24, v10);
    v28 = v25[7];
    v29 = *(v53 + 72);
    v50 = v24;
    v30 = v61;
    sub_1D1B39250(v28 + v29 * v24, v61, type metadata accessor for StaticService);
    v31 = v62;
    v26(v62, v27, v10);
    v32 = v58;
    sub_1D1B39250(v30, v31 + *(v58 + 48), type metadata accessor for StaticService);
    v33 = v63;
    sub_1D1741C08(v31, v63, &qword_1EC642DB0, &unk_1D1E6F360);
    v34 = v33 + *(v32 + 48);
    v35 = *(v34 + *(v56 + 112));
    if (v35 == 53)
    {
      LOBYTE(v35) = *(v34 + *(v56 + 104));
    }

    sub_1D1B3A990(v34, type metadata accessor for StaticService);
    v64 = v35;
    v19 = v20;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v55 == v36)
    {
      v37 = 1;
    }

    else
    {
      v37 = sub_1D1E6904C();
    }

    v10 = v57;

    v38 = *v20;
    (*v20)(v63, v10);
    if (v37)
    {
      v39 = v62;
      v40 = v49;
      sub_1D1741C08(v62, v49, &qword_1EC642DB0, &unk_1D1E6F360);
      v41 = *(v58 + 48);
      v42 = StaticService.isActivated.getter();
      sub_1D1741A30(v39, &qword_1EC642DB0, &unk_1D1E6F360);
      v10 = v57;
      sub_1D1B3A990(v40 + v41, type metadata accessor for StaticService);
      v38(v40, v10);
      sub_1D1B3A990(v61, type metadata accessor for StaticService);
      result = (v38)(v60, v10);
      v18 = v59;
      if (v42)
      {
        *(v45 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        if (__OFADD__(v46++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v45, v44, v46, v54);
        }
      }
    }

    else
    {
      sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B3A990(v61, type metadata accessor for StaticService);
      result = (v38)(v60, v10);
      v18 = v59;
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v47)
    {
      return sub_1D188B1C8(v45, v44, v46, v54);
    }

    v23 = *(v48 + 8 * v14);
    ++v22;
    if (v23)
    {
      v20 = v19;
      v21 = __clz(__rbit64(v23));
      v59 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1D1B3A06C(unint64_t *result, uint64_t a2, void *a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1D1B3A1AC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_1D1B3A108(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1D1B3A1AC(unint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v57 = a2;
  v58 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v6 = MEMORY[0x1EEE9AC00](v64);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - v9;
  v70 = type metadata accessor for StaticService(0);
  v63 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v73);
  v72 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v15 = 0;
  v69 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v61 = v13 + 16;
  v76 = a4;
  v62 = v13;
  v65 = (v13 + 8);
  v66 = v22;
  v75 = v8;
  v67 = v10;
  v60 = a4 + 7;
  while (v21)
  {
    v25 = __clz(__rbit64(v21));
    v71 = (v21 - 1) & v21;
LABEL_13:
    v28 = v25 | (v15 << 6);
    v29 = v69;
    v30 = *(v62 + 16);
    v32 = v72;
    v31 = v73;
    v30(v72, v69[6] + *(v62 + 72) * v28, v73);
    v33 = v29[7];
    v34 = *(v63 + 72);
    v68 = v28;
    v35 = v33 + v34 * v28;
    v36 = v74;
    sub_1D1B39250(v35, v74, type metadata accessor for StaticService);
    v30(v10, v32, v31);
    v37 = v64;
    sub_1D1B39250(v36, &v10[*(v64 + 48)], type metadata accessor for StaticService);
    v38 = v75;
    sub_1D1741C08(v10, v75, &qword_1EC642DB0, &unk_1D1E6F360);
    v39 = v38 + *(v37 + 48);
    v40 = *(v39 + *(v70 + 112));
    if (v40 == 53)
    {
      LOBYTE(v40) = *(v39 + *(v70 + 104));
    }

    sub_1D1B3A990(v39, type metadata accessor for StaticService);
    v41 = v60;
    if (v76[2] && (v42 = v76, sub_1D1E6920C(), v78 = v40, ServiceKind.rawValue.getter(), sub_1D1E678EC(), , v43 = sub_1D1E6926C(), v44 = -1 << *(v42 + 32), v45 = v43 & ~v44, ((*(v41 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0))
    {
      v46 = ~v44;
      while (1)
      {
        LOBYTE(v77[0]) = *(v76[6] + v45);
        v78 = v40;
        v47 = ServiceKind.rawValue.getter();
        v49 = v48;
        if (v47 == ServiceKind.rawValue.getter() && v49 == v50)
        {
          break;
        }

        v52 = sub_1D1E6904C();

        if (v52)
        {
          goto LABEL_26;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v41 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_26:
      v10 = v67;
      sub_1D1741A30(v67, &qword_1EC642DB0, &unk_1D1E6F360);
      v53 = *v65;
      v54 = v73;
      (*v65)(v75, v73);
      sub_1D1B3A990(v74, type metadata accessor for StaticService);
      result = (v53)(v72, v54);
      *(v58 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
      v55 = __OFADD__(v59++, 1);
      v22 = v66;
      v21 = v71;
      if (v55)
      {
        __break(1u);
        return sub_1D188B1C8(v58, v57, v59, v69);
      }
    }

    else
    {
LABEL_5:
      v10 = v67;
      sub_1D1741A30(v67, &qword_1EC642DB0, &unk_1D1E6F360);
      v23 = *v65;
      v24 = v73;
      (*v65)(v75, v73);
      sub_1D1B3A990(v74, type metadata accessor for StaticService);
      result = (v23)(v72, v24);
      v22 = v66;
      v21 = v71;
    }
  }

  v26 = v15;
  while (1)
  {
    v15 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_1D188B1C8(v58, v57, v59, v69);
    }

    v27 = v17[v15];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v71 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B3A7D0(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1D1B3A06C(v12, v7, a1, a2);
      MEMORY[0x1D3893640](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1D1B3A1AC((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1D1B3A990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B3AA18@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v22 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850, MEMORY[0x1E6968DA8]);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B39320();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860, MEMORY[0x1E6968D20]);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350, MEMORY[0x1E6968D58]);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360, MEMORY[0x1E69E6508]);
  sub_1D174A5FC(&qword_1EE07D170, MEMORY[0x1E69695C8]);
  v17 = v20;
  sub_1D1E6647C();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

void sub_1D1B3AE7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v92 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v89 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v87 - v7;
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v90 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v87 - v13;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v14 = MEMORY[0x1EEE9AC00](v106);
  v97 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v87 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v87 - v22;
  v23 = type metadata accessor for LightsStatusItem(0);
  v99 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[*(v24 + 24)] = 2;
  v100 = v24;
  v27 = *(v24 + 28);
  v88 = v26;
  v26[v27] = 3;
  v110 = MEMORY[0x1E69E7CD0];
  v28 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a1 + 64);
  v32 = (v29 + 63) >> 6;
  v102 = v10 + 16;
  v95 = (v10 + 8);
  v107 = a1;

  v33 = 0;
  v104 = v10;
  v105 = v9;
  v103 = v8;
  if (v31)
  {
    while (1)
    {
LABEL_8:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = v35 | (v33 << 6);
      v37 = v107;
      (*(v10 + 16))(v18, *(v107 + 48) + *(v10 + 72) * v36, v9);
      v38 = *(v37 + 56);
      v39 = type metadata accessor for StaticService(0);
      v40 = v38 + *(*(v39 - 8) + 72) * v36;
      v41 = v106;
      sub_1D1B39250(v40, &v18[*(v106 + 48)], type metadata accessor for StaticService);
      sub_1D182BEE0(v18, v21);
      v42 = &v21[*(v41 + 48)];
      v43 = v42[*(v39 + 104)];
      if (v43 != 28)
      {
        if (v43 != 41 && v43 != 34 || v42[*(v39 + 112)] == 53)
        {
LABEL_18:
          sub_1D1741A30(v21, &qword_1EC642DB0, &unk_1D1E6F360);
          v9 = v105;
          goto LABEL_19;
        }

        v109 = v42[*(v39 + 112)];
        v108 = 28;
        v44 = ServiceKind.rawValue.getter();
        v46 = v45;
        if (v44 == ServiceKind.rawValue.getter() && v46 == v47)
        {
        }

        else
        {
          v48 = sub_1D1E6904C();

          if ((v48 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      if ((StaticService.isActivated.getter() & 1) == 0)
      {
        goto LABEL_18;
      }

      v49 = v21;
      v93 = v21;
      v50 = v96;
      sub_1D182BEE0(v49, v96);
      v94 = v18;
      v51 = v97;
      sub_1D1741C08(v50, v97, &qword_1EC642DB0, &unk_1D1E6F360);
      v52 = *(v106 + 48);
      v53 = v98;
      sub_1D1762CB8(v98, v51);
      v9 = v105;
      (*v95)(v53, v105);
      v54 = v50;
      v21 = v93;
      sub_1D1741A30(v54, &qword_1EC642DB0, &unk_1D1E6F360);
      v55 = &v51[v52];
      v18 = v94;
      sub_1D1797870(v55);
LABEL_19:
      v8 = v103;
      v10 = v104;
      if (!v31)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      return;
    }

    if (v34 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
      goto LABEL_8;
    }
  }

  v56 = v110;
  if (*(v110 + 16))
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    v57 = static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EC5000);
    v58 = v9;
    v106 = v59;
    v107 = v57;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    v60 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1D1E739C0;
    v62 = *(v56 + 16);
    v63 = MEMORY[0x1E69E65A8];
    *(v61 + 56) = MEMORY[0x1E69E6530];
    *(v61 + 64) = v63;
    *(v61 + 32) = v62;
    v64 = sub_1D1E6783C();
    v65 = v10;
    v67 = v66;

    v68 = v89;
    sub_1D1741C08(v60, v89, &qword_1EC642590, qword_1D1E71260);
    v69 = *(v65 + 48);
    if (v69(v68, 1, v58) == 1)
    {
      v70 = v65;
      v71 = v90;
      sub_1D1E66A6C();
      sub_1D1741A30(v60, &qword_1EC642590, qword_1D1E71260);
      v72 = v69(v68, 1, v58) == 1;
      v73 = v101;
      v74 = v68;
      v76 = v91;
      v75 = v92;
      if (!v72)
      {
        sub_1D1741A30(v74, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v60, &qword_1EC642590, qword_1D1E71260);
      v70 = v65;
      v77 = *(v65 + 32);
      v71 = v90;
      v77(v90, v68, v58);
      v73 = v101;
      v76 = v91;
      v75 = v92;
    }

    (*(v70 + 32))(v76, v71, v58);
    v78 = &v76[v75[5]];
    strcpy(v78, "lightbulb.fill");
    v78[15] = -18;
    v79 = &v76[v75[6]];
    v80 = v106;
    *v79 = v107;
    v79[1] = v80;
    v81 = &v76[v75[7]];
    *v81 = v64;
    v81[1] = v67;
    v82 = &v76[v75[8]];
    *v82 = 0;
    *(v82 + 1) = 0;
    *(v82 + 2) = 0;
    v82[24] = -1;
    v83 = v76;
    v84 = v88;
    v85 = sub_1D1B3C5CC(v83, v88, type metadata accessor for IconTextValueStringDataHolder);
    v86 = v100;
    MEMORY[0x1EEE9AC00](v85);
    *(&v87 - 2) = v56;
    v110 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B3C5CC(v84, v73, type metadata accessor for LightsStatusItem);
    (*(v99 + 56))(v73, 0, 1, v86);
  }

  else
  {

    (*(v99 + 56))(v101, 1, 1, v100);
  }
}

uint64_t sub_1D1B3B7D8(uint64_t a1)
{
  result = sub_1D1B3B830(&qword_1EC64AFE0, type metadata accessor for LightsStatusItem, &unk_1D1E993E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B3B830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1B3B878(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v69 = sub_1D1E66A7C();
  v3 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = MEMORY[0x1EEE9AC00](v68);
  v63 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v56 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v56 - v12;
  v13 = type metadata accessor for AllOffLightsStatusItem(0);
  v57 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[*(v14 + 24)] = 2;
  v58 = v14;
  v17 = *(v14 + 28);
  v56 = v16;
  v16[v17] = 3;
  v72 = MEMORY[0x1E69E7CD0];
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v66 = v3;
  v67 = a1;
  v60 = (v3 + 8);

  v23 = 0;
  v61 = v3 + 16;
  while (v21)
  {
LABEL_10:
    while (1)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v26 = v25 | (v23 << 6);
      v27 = v67;
      v28 = v65;
      (*(v66 + 16))(v65, *(v67 + 48) + *(v66 + 72) * v26, v69);
      v29 = *(v27 + 56);
      v30 = type metadata accessor for StaticService(0);
      v31 = v29 + *(*(v30 - 8) + 72) * v26;
      v32 = v68;
      sub_1D1B39250(v31, v28 + *(v68 + 48), type metadata accessor for StaticService);
      sub_1D182BEE0(v28, v11);
      v33 = &v11[*(v32 + 48)];
      v34 = v33[*(v30 + 104)];
      if (v34 != 28)
      {
        break;
      }

LABEL_21:
      v45 = v62;
      sub_1D182BEE0(v11, v62);
      v46 = v63;
      sub_1D1741C08(v45, v63, &qword_1EC642DB0, &unk_1D1E6F360);
      v47 = *(v68 + 48);
      v48 = v64;
      sub_1D1762CB8(v64, v46);
      (*v60)(v48, v69);
      sub_1D1741A30(v45, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1797870(&v46[v47]);
      if (!v21)
      {
        goto LABEL_6;
      }
    }

    if (v34 == 41)
    {
      v40 = v33[*(v30 + 112)];
      if (v40 != 53)
      {
        v71 = v40;
        v70 = 28;
        v41 = ServiceKind.rawValue.getter();
        v43 = v42;
        if (v41 == ServiceKind.rawValue.getter() && v43 == v44)
        {
LABEL_20:

          goto LABEL_21;
        }

        v49 = sub_1D1E6904C();

        if (v49)
        {
          goto LABEL_21;
        }
      }
    }

    else if (v34 == 34)
    {
      v35 = v33[*(v30 + 112)];
      if (v35 != 53)
      {
        v71 = v35;
        v70 = 28;
        v36 = ServiceKind.rawValue.getter();
        v38 = v37;
        if (v36 == ServiceKind.rawValue.getter() && v38 == v39)
        {
          goto LABEL_20;
        }

        v50 = sub_1D1E6904C();

        if (v50)
        {
          goto LABEL_21;
        }
      }
    }

    sub_1D1741A30(v11, &qword_1EC642DB0, &unk_1D1E6F360);
  }

LABEL_6:
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      v51 = v72;
      v52 = v56;
      v53 = sub_1D1B3BE98(v56);
      v54 = v58;
      MEMORY[0x1EEE9AC00](v53);
      *(&v56 - 2) = v51;
      v72 = type metadata accessor for StaticService(0);
      sub_1D1E66C8C();

      type metadata accessor for TilesFilter(0);
      swift_storeEnumTagMultiPayload();
      v55 = v59;
      sub_1D1B3C5CC(v52, v59, type metadata accessor for AllOffLightsStatusItem);
      (*(v57 + 56))(v55, 0, 1, v54);
      return;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
}

int *sub_1D1B3BE98@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  (*(v3 + 56))(&v24 - v10, 1, 1, v2);
  v12 = static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EC5000);
  v24 = v13;
  v25 = v12;
  v14 = static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC5030);
  v16 = v15;
  sub_1D1741C08(v11, v9, &qword_1EC642590, qword_1D1E71260);
  v17 = *(v3 + 48);
  if (v17(v9, 1, v2) == 1)
  {
    sub_1D1E66A6C();
    sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
    if (v17(v9, 1, v2) != 1)
    {
      sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
    (*(v3 + 32))(v5, v9, v2);
  }

  (*(v3 + 32))(a1, v5, v2);
  result = type metadata accessor for IconTextValueStringDataHolder(0);
  v19 = (a1 + result[5]);
  strcpy(v19, "lightbulb.fill");
  v19[15] = -18;
  v20 = (a1 + result[6]);
  v21 = v24;
  *v20 = v25;
  v20[1] = v21;
  v22 = (a1 + result[7]);
  *v22 = v14;
  v22[1] = v16;
  v23 = a1 + result[8];
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = -1;
  return result;
}

uint64_t sub_1D1B3C190@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850, MEMORY[0x1E6968DA8]);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B39320();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860, MEMORY[0x1E6968D20]);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350, MEMORY[0x1E6968D58]);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360, MEMORY[0x1E69E6508]);
  sub_1D1B3B830(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v17 = v20;
  sub_1D1E6647C();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1D1B3C574(uint64_t a1)
{
  result = sub_1D1B3B830(&qword_1EC64AFE8, type metadata accessor for AllOffLightsStatusItem, &unk_1D1E99438);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B3C5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TilesFilter(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TilesFilter(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1D1B3C8FC(uint64_t a1)
{
  type metadata accessor for IconTextValueStringDataHolder(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TilesFilter(319);
    if (v2 <= 0x3F)
    {
      sub_1D1B33D4C(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D1B3C9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v183 = a1;
  v171 = a3;
  v168 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v166 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v165 = &v162 - v8;
  v177 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v177);
  v178 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v190 = &v162 - v11;
  v189 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v176 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v180 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for StaticMediaProfile(0);
  v182 = *(v195 - 1);
  v13 = MEMORY[0x1EEE9AC00](v195);
  v197 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v181 = &v162 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645460, &unk_1D1E799F0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v194 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v201 = &v162 - v19;
  v193 = type metadata accessor for StaticMediaSystem(0);
  v187 = *(v193 - 1);
  v20 = MEMORY[0x1EEE9AC00](v193);
  v22 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v185 = &v162 - v23;
  v24 = sub_1D1E66A7C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v163 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v179 = &v162 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v204 = &v162 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645470, &qword_1D1E79A00);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v162 - v35;
  v37 = type metadata accessor for SpeakerStatusItem(0);
  v169 = *(v37 - 8);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[v38[6]] = 3;
  v40[v38[7]] = 3;
  v170 = v38;
  v41 = v38[8];
  v164 = v40;
  v42 = &v40[v41];
  v43 = sub_1D1E673AC();
  result = sub_1D1E673CC();
  v45 = 0;
  v46 = MEMORY[0x1E69E7CD0];
  v188 = a2;
  v48 = a2 + 64;
  v47 = *(a2 + 64);
  v49 = 1 << *(a2 + 32);
  v50 = -1;
  *v42 = v43;
  v42[1] = result;
  v162 = v42;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v47;
  v211 = v46;
  v212 = v46;
  v210 = v46;
  v52 = (v49 + 63) >> 6;
  v199 = v24;
  v200 = (v25 + 32);
  v198 = v25;
  v202 = (v25 + 8);
  v203 = (v25 + 16);
  v186 = v22;
  v184 = v34;
  v196 = v36;
  v192 = a2 + 64;
  v191 = v52;
  while (2)
  {
    if (v51)
    {
      v54 = v45;
      goto LABEL_16;
    }

    if (v52 <= v45 + 1)
    {
      v55 = v45 + 1;
    }

    else
    {
      v55 = v52;
    }

    v56 = v55 - 1;
    do
    {
      v54 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        return result;
      }

      if (v54 >= v52)
      {
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
        (*(*(v74 - 8) + 56))(v34, 1, 1, v74);
        v51 = 0;
        v45 = v56;
        goto LABEL_17;
      }

      v51 = *(v48 + 8 * v54);
      ++v45;
    }

    while (!v51);
    v45 = v54;
LABEL_16:
    v57 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v58 = v57 | (v54 << 6);
    v59 = v188;
    v61 = v198;
    v60 = v199;
    v62 = v204;
    (*(v198 + 16))(v204, *(v188 + 48) + *(v198 + 72) * v58, v199);
    v63 = v185;
    sub_1D1B3F578(*(v59 + 56) + *(v187 + 72) * v58, v185, type metadata accessor for StaticMediaSystem);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
    v65 = *(v64 + 48);
    v66 = *(v61 + 32);
    v24 = v60;
    v67 = v184;
    v66(v184, v62, v24);
    v68 = v63;
    v34 = v67;
    sub_1D1B3F650(v68, &v67[v65], type metadata accessor for StaticMediaSystem);
    (*(*(v64 - 8) + 56))(v67, 0, 1, v64);
    v22 = v186;
    v36 = v196;
LABEL_17:
    sub_1D1741A90(v34, v36, &qword_1EC645470, &qword_1D1E79A00);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
    if ((*(*(v69 - 8) + 48))(v36, 1, v69) != 1)
    {
      sub_1D1B3F650(&v36[*(v69 + 48)], v22, type metadata accessor for StaticMediaSystem);

      sub_1D1930E94(v70);
      if (StaticMediaSystem.isActivated.getter())
      {
        v71 = v179;
        (*v203)(v179, v22, v24);
        v72 = v204;
        sub_1D1762CB8(v204, v71);
        v53 = *v202;
        v73 = v72;
        v36 = v196;
        (*v202)(v73, v24);
        sub_1D1B3F5E8(v22, type metadata accessor for StaticMediaSystem);
      }

      else
      {
        sub_1D1B3F5E8(v22, type metadata accessor for StaticMediaSystem);
        v53 = *v202;
      }

      v52 = v191;
      result = v53(v36, v24);
      v48 = v192;
      continue;
    }

    break;
  }

  v75 = 0;
  v76 = v183 + 64;
  v77 = 1 << *(v183 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v183 + 64);
  v80 = (v77 + 63) >> 6;
  v193 = (v176 + 48);
  v184 = "CapitalizedPlural";
  v176 = "ionSpeaker_NotPlaying";
  v175 = "StateDescriptionLoading";
  v174 = "StateDescriptionInterrupted";
  v173 = "StateDescriptionStopped";
  v172 = "StateDescriptionPaused";
  v81 = v194;
  v196 = (v183 + 64);
  v192 = v80;
  if (!v79)
  {
LABEL_25:
    if (v80 <= v75 + 1)
    {
      v83 = v75 + 1;
    }

    else
    {
      v83 = v80;
    }

    v84 = v83 - 1;
    while (1)
    {
      v82 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_85;
      }

      if (v82 >= v80)
      {
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
        (*(*(v112 - 8) + 56))(v81, 1, 1, v112);
        v79 = 0;
        v75 = v84;
        goto LABEL_34;
      }

      v79 = *(v76 + 8 * v82);
      ++v75;
      if (v79)
      {
        v75 = v82;
        goto LABEL_33;
      }
    }
  }

  while (2)
  {
    v82 = v75;
LABEL_33:
    v85 = __clz(__rbit64(v79));
    v79 &= v79 - 1;
    v86 = v85 | (v82 << 6);
    v87 = v183;
    v88 = v198;
    v24 = v199;
    v89 = v204;
    (*(v198 + 16))(v204, *(v183 + 48) + *(v198 + 72) * v86, v199);
    v90 = v181;
    sub_1D1B3F578(*(v87 + 56) + *(v182 + 72) * v86, v181, type metadata accessor for StaticMediaProfile);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
    v92 = *(v91 + 48);
    v81 = v194;
    (*(v88 + 32))(v194, v89, v24);
    sub_1D1B3F650(v90, v81 + v92, type metadata accessor for StaticMediaProfile);
    (*(*(v91 - 8) + 56))(v81, 0, 1, v91);
    v80 = v192;
LABEL_34:
    v93 = v201;
    sub_1D1741A90(v81, v201, &qword_1EC645460, &unk_1D1E799F0);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
    if ((*(*(v94 - 8) + 48))(v93, 1, v94) != 1)
    {
      v95 = v93 + *(v94 + 48);
      v96 = v197;
      sub_1D1B3F650(v95, v197, type metadata accessor for StaticMediaProfile);
      v97 = v190;
      sub_1D1741C08(v96 + v195[18], v190, &qword_1EC643C58, &unk_1D1E995D0);
      if ((*v193)(v97, 1, v189) == 1)
      {
        sub_1D1B3F5E8(v96, type metadata accessor for StaticMediaProfile);
        sub_1D1741A30(v97, &qword_1EC643C58, &unk_1D1E995D0);
        goto LABEL_39;
      }

      v98 = v97;
      v99 = v180;
      sub_1D1B3F650(v98, v180, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (sub_1D171A97C(v99, v210))
      {
        sub_1D1B3F5E8(v99, type metadata accessor for StaticAccessory.DeviceIdentifier);
        sub_1D1B3F5E8(v96, type metadata accessor for StaticMediaProfile);
LABEL_39:
        v100 = v201;
LABEL_69:
        result = (*v202)(v100, v24);
LABEL_70:
        v76 = v196;
        if (!v79)
        {
          goto LABEL_25;
        }

        continue;
      }

      v101 = v177;
      v102 = *(v177 + 44);
      v103 = sub_1D1E669FC();
      v104 = v178;
      (*(*(v103 - 8) + 56))(&v178[v102], 1, 1, v103);
      v105 = 0;
      *v104 = 257;
      v104[2] = 1;
      *(v104 + 3) = 0;
      v104[*(v101 + 48)] = 2;
      v106 = v197;
      v107 = &v104[*(v101 + 52)];
      v107[4] = 0;
      *v107 = 2;
      v108 = v195;
      v109 = *(v106 + v195[15]);
      v185 = v106 + v195[23];
      if (*(v185 + 8) == 1 && v109)
      {
        v105 = *(v106 + v195[16]) ^ 1;
      }

      LODWORD(v187) = *(v106 + v195[26]);
      v186 = v195[19];
      v110 = v186[v106];
      LODWORD(v191) = v105;
      LODWORD(v188) = v109;
      if (v110 <= 2)
      {
        if (!v110)
        {
          v114 = 0xD000000000000025;
          v115 = &v210;
          goto LABEL_57;
        }

        if (v110 != 1)
        {
          v114 = 0xD000000000000026;
          v115 = &v205;
          goto LABEL_57;
        }

        v111 = &v204;
      }

      else
      {
        if (v110 <= 4)
        {
          if (v110 == 3)
          {
            v111 = &v205 + 1;
            goto LABEL_53;
          }

          v114 = 0xD00000000000002BLL;
          v115 = &v206;
LABEL_57:
          v113 = *(v115 - 32) | 0x8000000000000000;
LABEL_58:
          v116 = static String.hfLocalized(_:)(v114, v113);
          v118 = v117;
LABEL_59:
          v119 = v108[25];
          v120 = v178;
          LOBYTE(v208[0]) = v178[4];
          v121 = v197;
          v122 = sub_1D1D32844(v197 + v119, v208);
          if (!v123)
          {
            v124 = *(v121 + v108[24]);
            LOBYTE(v208[0]) = v120[4];
            v122 = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v124, v208);
          }

          v125 = v201;
          LOBYTE(v205) = v188;
          BYTE1(v205) = v187;
          BYTE2(v205) = 2;
          BYTE3(v205) = v191 & 1;
          BYTE4(v205) = 2;
          *(&v205 + 1) = v116;
          *&v206 = v118;
          *(&v206 + 1) = v122;
          v207 = v123;
          StatusStrings.string(for:)(v120);
          v127 = v126;
          v208[0] = v205;
          v208[1] = v206;
          v209 = v207;
          sub_1D1A46590(v208);
          sub_1D1B3F5E8(v120, type metadata accessor for StatusStrings.Options);
          if (v127)
          {

            v128 = v180;
            v129 = v197;
            v81 = v194;
LABEL_68:
            sub_1D1B3F5E8(v128, type metadata accessor for StaticAccessory.DeviceIdentifier);
            sub_1D1B3F5E8(v129, type metadata accessor for StaticMediaProfile);
            v100 = v125;
            goto LABEL_69;
          }

          v129 = v197;
          v128 = v180;
          v81 = v194;
          if (v186[v197] != 1)
          {
            goto LABEL_68;
          }

          v130 = *(v185 + 8);
          if (v130 <= 1)
          {
            if (*(v185 + 8))
            {
              goto LABEL_67;
            }
          }

          else if (v130 == 2)
          {
            if (*(v185 + 1))
            {
              goto LABEL_67;
            }
          }

          else if (v130 == 3)
          {
LABEL_67:
            v131 = v180;
            v132 = v179;
            (*v203)(v179, v197, v24);
            v133 = v204;
            sub_1D1762CB8(v204, v132);
            v134 = v131;
            v135 = *v202;
            v136 = v133;
            v24 = v199;
            (*v202)(v136, v199);
            sub_1D1B3F5E8(v134, type metadata accessor for StaticAccessory.DeviceIdentifier);
            sub_1D1B3F5E8(v197, type metadata accessor for StaticMediaProfile);
            result = v135(v201, v24);
            goto LABEL_70;
          }

          sub_1D1B3F5E8(v180, type metadata accessor for StaticAccessory.DeviceIdentifier);
          sub_1D1B3F5E8(v129, type metadata accessor for StaticMediaProfile);
          result = (*v202)(v125, v24);
          goto LABEL_70;
        }

        if (v110 != 5)
        {
          v116 = 0;
          v118 = 0;
          goto LABEL_59;
        }

        v111 = &v206 + 1;
      }

LABEL_53:
      v113 = *(v111 - 32) | 0x8000000000000000;
      v114 = 0xD000000000000027;
      goto LABEL_58;
    }

    break;
  }

  v137 = sub_1D18C02C0(v211, v212);
  if (*(v137 + 16))
  {
    v138 = v198;
    v139 = v165;
    (*(v198 + 56))(v165, 1, 1, v24);
    v203 = 0x80000001D1EBDE00;
    v204 = static String.hfLocalized(_:)(0xD000000000000021, 0x80000001D1EC5090);
    v141 = v140;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_1D1E739C0;
    v143 = *(v137 + 16);
    v144 = MEMORY[0x1E69E65A8];
    *(v142 + 56) = MEMORY[0x1E69E6530];
    *(v142 + 64) = v144;
    *(v142 + 32) = v143;
    v145 = sub_1D1E6783C();
    v147 = v146;

    v148 = v166;
    sub_1D1741C08(v139, v166, &qword_1EC642590, qword_1D1E71260);
    v149 = *(v138 + 48);
    if (v149(v148, 1, v24) == 1)
    {
      v150 = v163;
      sub_1D1E66A6C();
      sub_1D1741A30(v139, &qword_1EC642590, qword_1D1E71260);
      if (v149(v148, 1, v24) != 1)
      {
        sub_1D1741A30(v148, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v139, &qword_1EC642590, qword_1D1E71260);
      v150 = v163;
      (*v200)(v163, v148, v24);
    }

    v151 = v167;
    (*v200)(v167, v150, v24);
    v152 = v168;
    v153 = (v151 + *(v168 + 20));
    v154 = v203;
    *v153 = 0xD000000000000010;
    v153[1] = v154;
    v155 = (v151 + v152[6]);
    *v155 = v204;
    v155[1] = v141;
    v156 = (v151 + v152[7]);
    *v156 = v145;
    v156[1] = v147;
    v157 = v151 + v152[8];
    *v157 = 0;
    *(v157 + 8) = 0;
    *(v157 + 16) = 0;
    *(v157 + 24) = -1;
    v158 = v164;
    v159 = sub_1D1B3F650(v151, v164, type metadata accessor for IconTextValueStringDataHolder);
    v160 = v170;
    MEMORY[0x1EEE9AC00](v159);
    *(&v162 - 2) = v137;
    *&v208[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v161 = v171;
    sub_1D1B3F578(v158, v171, type metadata accessor for SpeakerStatusItem);
    (*(v169 + 56))(v161, 0, 1, v160);
    return sub_1D1B3F5E8(v158, type metadata accessor for SpeakerStatusItem);
  }

  else
  {

    return (*(v169 + 56))(v171, 1, 1, v170);
  }
}

uint64_t sub_1D1B3E0DC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B020, &qword_1D1E995F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B028, &qword_1D1E995F8);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64B030, &qword_1EC64B020, &qword_1D1E995F0, MEMORY[0x1E6968DA8]);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B038, &qword_1D1E99628);
  a3[4] = sub_1D1B3F6B8(&qword_1EC64B040, &qword_1EC64B038, &qword_1D1E99628, sub_1D1B3F73C);
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860, MEMORY[0x1E6968D20]);
  sub_1D17D8EA8(&qword_1EC64B058, &qword_1EC64B028, &qword_1D1E995F8, MEMORY[0x1E6968D58]);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360, MEMORY[0x1E69E6508]);
  sub_1D1B3E544(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v17 = v20;
  sub_1D1E6647C();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1D1B3E4EC(uint64_t a1)
{
  result = sub_1D1B3E544(&qword_1EC64B010, type metadata accessor for SpeakerStatusItem, &unk_1D1E994F4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B3E544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1B3E58C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v104 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v101 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v99 = &v96 - v7;
  v120 = sub_1D1E66A7C();
  v8 = *(v120 - 8);
  v9 = MEMORY[0x1EEE9AC00](v120);
  v102 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v108 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v115 = &v96 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v119 = &v96 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v114 = &v96 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v96 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v96 - v24;
  v25 = type metadata accessor for TelevisionStatusItem(0);
  v105 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[v26[6]] = 3;
  v28[v26[7]] = 3;
  v106 = v26;
  v29 = v26[8];
  v100 = v28;
  v30 = &v28[v29];
  v31 = sub_1D1E6739C();
  v32 = sub_1D1E6739C();
  *v30 = v31;
  v30[1] = v32;
  v96 = v30;
  v122 = MEMORY[0x1E69E7CD0];
  v33 = a1 + 64;
  v34 = 1 << *(a1 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(a1 + 64);
  v37 = (v34 + 63) >> 6;
  v111 = v8 + 16;
  v117 = a1;
  v118 = (v8 + 8);
  v109 = 0x80000001D1EB34F0;

  v38 = 0;
  v112 = v37;
  v113 = a1 + 64;
  v116 = v8;
  v110 = v23;
  if (v36)
  {
LABEL_8:
    while (1)
    {
      v40 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v41 = v40 | (v38 << 6);
      v42 = v117;
      v43 = v114;
      v44 = v120;
      (*(v8 + 16))(v114, *(v117 + 48) + *(v8 + 72) * v41, v120);
      v45 = *(v42 + 56);
      v46 = type metadata accessor for StaticService(0);
      sub_1D1B3F578(v45 + *(*(v46 - 8) + 72) * v41, v43 + *(v12 + 48), type metadata accessor for StaticService);
      sub_1D1741A90(v43, v23, &qword_1EC642DB0, &unk_1D1E6F360);
      v47 = v119;
      sub_1D1741C08(v23, v119, &qword_1EC642DB0, &unk_1D1E6F360);
      v48 = v47 + *(v12 + 48);
      LODWORD(v41) = *(v48 + *(v46 + 96));
      sub_1D1B3F5E8(v48, type metadata accessor for StaticService);
      if (v41 != 1)
      {
        break;
      }

      v49 = v115;
      sub_1D1741C08(v23, v115, &qword_1EC642DB0, &unk_1D1E6F360);
      v50 = v49 + *(v12 + 48);
      v51 = *(v50 + *(v46 + 104));
      sub_1D1B3F5E8(v50, type metadata accessor for StaticService);
      v121 = v51;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v109 == v52)
      {
        v53 = 1;
      }

      else
      {
        v53 = sub_1D1E6904C();
      }

      v54 = v119;

      v55 = *v118;
      v56 = v120;
      (*v118)(v115, v120);
      v55(v54, v56);
      v23 = v110;
      if ((v53 & 1) == 0)
      {
        goto LABEL_17;
      }

      v57 = v108;
      sub_1D1741C08(v110, v108, &qword_1EC642DB0, &unk_1D1E6F360);
      v58 = *(v12 + 48);
      v59 = StaticService.isActivated.getter();
      sub_1D1B3F5E8(v57 + v58, type metadata accessor for StaticService);
      v60 = v57;
      v23 = v110;
      v55(v60, v120);
      if ((v59 & 1) == 0)
      {
        goto LABEL_17;
      }

      v61 = v97;
      sub_1D1741A90(v23, v97, &qword_1EC642DB0, &unk_1D1E6F360);
      v62 = v108;
      sub_1D1741C08(v61, v108, &qword_1EC642DB0, &unk_1D1E6F360);
      v63 = *(v12 + 48);
      v64 = v98;
      sub_1D1762CB8(v98, v62);
      v55(v64, v120);
      v23 = v110;
      sub_1D1741A30(v61, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B3F5E8(&v62[v63], type metadata accessor for StaticService);
LABEL_18:
      v8 = v116;
      v37 = v112;
      v33 = v113;
      if (!v36)
      {
        goto LABEL_4;
      }
    }

    (*v118)(v47, v44);
LABEL_17:
    sub_1D1741A30(v23, &qword_1EC642DB0, &unk_1D1E6F360);
    goto LABEL_18;
  }

  while (1)
  {
LABEL_4:
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      return;
    }

    if (v39 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v39);
    ++v38;
    if (v36)
    {
      v38 = v39;
      goto LABEL_8;
    }
  }

  v65 = v122;
  if (*(v122 + 16))
  {
    v66 = v99;
    v67 = v120;
    (*(v8 + 56))(v99, 1, 1, v120);
    v68 = static String.hfLocalized(_:)(0xD000000000000024, 0x80000001D1EC5060);
    v118 = v69;
    v119 = v68;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1D1E739C0;
    v71 = *(v65 + 16);
    v72 = MEMORY[0x1E69E65A8];
    *(v70 + 56) = MEMORY[0x1E69E6530];
    *(v70 + 64) = v72;
    *(v70 + 32) = v71;
    v73 = sub_1D1E6783C();
    v74 = v8;
    v76 = v75;

    v77 = v101;
    sub_1D1741C08(v66, v101, &qword_1EC642590, qword_1D1E71260);
    v78 = *(v74 + 48);
    if (v78(v77, 1, v67) == 1)
    {
      v79 = v66;
      v80 = v74;
      v81 = v102;
      sub_1D1E66A6C();
      sub_1D1741A30(v79, &qword_1EC642590, qword_1D1E71260);
      v82 = v78(v77, 1, v67) == 1;
      v84 = v106;
      v83 = v107;
      v85 = v77;
      v87 = v103;
      v86 = v104;
      if (!v82)
      {
        sub_1D1741A30(v85, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v66, &qword_1EC642590, qword_1D1E71260);
      v80 = v74;
      v88 = *(v74 + 32);
      v81 = v102;
      v88(v102, v77, v67);
      v84 = v106;
      v83 = v107;
      v87 = v103;
      v86 = v104;
    }

    (*(v80 + 32))(v87, v81, v67);
    v89 = (v87 + v86[5]);
    *v89 = 0x6C6C69662E7674;
    v89[1] = 0xE700000000000000;
    v90 = (v87 + v86[6]);
    v91 = v118;
    *v90 = v119;
    v90[1] = v91;
    v92 = (v87 + v86[7]);
    *v92 = v73;
    v92[1] = v76;
    v93 = v87 + v86[8];
    *v93 = 0;
    *(v93 + 8) = 0;
    *(v93 + 16) = 0;
    *(v93 + 24) = -1;
    v94 = v100;
    v95 = sub_1D1B3F650(v87, v100, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v95);
    *(&v96 - 2) = v65;
    v122 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B3F578(v94, v83, type metadata accessor for TelevisionStatusItem);
    (*(v105 + 56))(v83, 0, 1, v84);
    sub_1D1B3F5E8(v94, type metadata accessor for TelevisionStatusItem);
  }

  else
  {

    (*(v105 + 56))(v107, 1, 1, v106);
  }
}

uint64_t sub_1D1B3F0CC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850, MEMORY[0x1E6968DA8]);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B3F6B8(&qword_1EC64AF88, &qword_1EC64AF80, &unk_1D1E9A890, sub_1D1B39544);
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860, MEMORY[0x1E6968D20]);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350, MEMORY[0x1E6968D58]);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360, MEMORY[0x1E69E6508]);
  sub_1D1B3E544(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v17 = v20;
  sub_1D1E6647C();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1D1B3F4DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1D1B3F520(uint64_t a1)
{
  result = sub_1D1B3E544(&qword_1EC64B018, type metadata accessor for TelevisionStatusItem, &unk_1D1E99548);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B3F578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B3F5E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B3F650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B3F6B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1D1B393AC();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1B3F73C()
{
  result = qword_1EC64B048;
  if (!qword_1EC64B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B028, &qword_1D1E995F8);
    sub_1D17D8EA8(&qword_1EC64B050, &qword_1EC64B020, &qword_1D1E995F0, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B048);
  }

  return result;
}

uint64_t sub_1D1B3F800@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850, MEMORY[0x1E6968DA8]);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B39320();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860, MEMORY[0x1E6968D20]);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350, MEMORY[0x1E6968D58]);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360, MEMORY[0x1E69E6508]);
  sub_1D174A5FC(&qword_1EE07D170, MEMORY[0x1E69695C8]);
  v17 = v20;
  sub_1D1E6647C();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

void sub_1D1B3FEFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v83 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v76 - v7;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v81 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v76 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v13 = MEMORY[0x1EEE9AC00](v94);
  v86 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v76 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v76 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v76 - v21;
  v22 = type metadata accessor for IdleAlarmStatusItem(0);
  v89 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[v23[6]] = 3;
  v25[v23[7]] = 4;
  v90 = v23;
  v26 = v23[8];
  v79 = v25;
  v25[v26] = 4;
  v98 = MEMORY[0x1E69E7CD0];
  v27 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 64);
  v31 = (v28 + 63) >> 6;
  v92 = v9 + 16;
  v84 = (v9 + 8);
  v95 = a1;

  v32 = 0;
  v93 = v9;
  if (v30)
  {
    while (1)
    {
LABEL_10:
      while (1)
      {
        v34 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v35 = v34 | (v32 << 6);
        v36 = v95;
        (*(v9 + 16))(v17, *(v95 + 48) + *(v9 + 72) * v35, v8);
        v37 = *(v36 + 56);
        v38 = type metadata accessor for StaticService(0);
        v39 = v37 + *(*(v38 - 8) + 72) * v35;
        v40 = v94;
        sub_1D1B43A14(v39, &v17[*(v94 + 48)], type metadata accessor for StaticService);
        sub_1D1741A90(v17, v20, &qword_1EC642DB0, &unk_1D1E6F360);
        v41 = &v20[*(v40 + 48)];
        v42 = v41[*(v38 + 104)];
        if (v42 <= 0x19)
        {
          break;
        }

        if (v42 == 26)
        {
          v97 = *&v41[*(v38 + 128)];
          v43 = 74;
          goto LABEL_19;
        }

        if (v42 == 37)
        {
          v97 = *&v41[*(v38 + 128)];
          v43 = 127;
          goto LABEL_19;
        }

LABEL_5:
        sub_1D1741A30(v20, &qword_1EC642DB0, &unk_1D1E6F360);
        v9 = v93;
        if (!v30)
        {
          goto LABEL_6;
        }
      }

      if (v42 == 9)
      {
        v97 = *&v41[*(v38 + 128)];
        v43 = 18;
        goto LABEL_19;
      }

      if (v42 != 10)
      {
        goto LABEL_5;
      }

      v97 = *&v41[*(v38 + 128)];
      v43 = 21;
LABEL_19:
      v96 = v43;
      v99 = StaticCharacteristicsBag.int(for:)(&v96);
      if (v99.is_nil || v99.value)
      {
        goto LABEL_5;
      }

      v88 = v8;
      v44 = v85;
      sub_1D1741A90(v20, v85, &qword_1EC642DB0, &unk_1D1E6F360);
      v45 = v86;
      sub_1D1741C08(v44, v86, &qword_1EC642DB0, &unk_1D1E6F360);
      v77 = *(v94 + 48);
      v46 = v87;
      sub_1D1762CB8(v87, v45);
      (*v84)(v46, v88);
      v47 = v44;
      v8 = v88;
      sub_1D1741A30(v47, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B43A7C(&v45[v77], type metadata accessor for StaticService);
      v9 = v93;
      if (!v30)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return;
    }

    if (v33 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_10;
    }
  }

  v48 = v98;
  if (*(v98 + 16))
  {
    v49 = v78;
    (*(v9 + 56))(v78, 1, 1, v8);
    v50 = static String.hfLocalized(_:)(0x736D72616C414648, 0xED0000656C746954);
    v94 = v51;
    v95 = v50;
    static String.hfLocalized(_:)(0xD000000000000026, 0x80000001D1EC51E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v52 = swift_allocObject();
    v53 = v8;
    *(v52 + 16) = xmmword_1D1E739C0;
    v54 = *(v48 + 16);
    v55 = MEMORY[0x1E69E65A8];
    *(v52 + 56) = MEMORY[0x1E69E6530];
    *(v52 + 64) = v55;
    *(v52 + 32) = v54;
    v56 = sub_1D1E6783C();
    v58 = v57;

    v59 = v80;

    sub_1D1741C08(v49, v59, &qword_1EC642590, qword_1D1E71260);
    v60 = *(v9 + 48);
    if (v60(v59, 1, v53) == 1)
    {
      v61 = v49;
      v62 = v81;
      sub_1D1E66A6C();
      sub_1D1741A30(v61, &qword_1EC642590, qword_1D1E71260);
      v63 = v60(v59, 1, v53) == 1;
      v65 = v82;
      v64 = v83;
      v66 = v59;
      v68 = v90;
      v67 = v91;
      if (!v63)
      {
        sub_1D1741A30(v66, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v49, &qword_1EC642590, qword_1D1E71260);
      v62 = v81;
      (*(v9 + 32))(v81, v59, v53);
      v68 = v90;
      v67 = v91;
      v65 = v82;
      v64 = v83;
    }

    (*(v9 + 32))(v65, v62, v53);
    v69 = (v65 + v64[5]);
    *v69 = 0x662E726F736E6573;
    v69[1] = 0xEB000000006C6C69;
    v70 = (v65 + v64[6]);
    v71 = v94;
    *v70 = v95;
    v70[1] = v71;
    v72 = (v65 + v64[7]);
    *v72 = v56;
    v72[1] = v58;
    v73 = v65 + v64[8];
    *v73 = 0;
    *(v73 + 8) = 0;
    *(v73 + 16) = 0;
    *(v73 + 24) = -1;
    v74 = v79;
    v75 = sub_1D1B43958(v65, v79, type metadata accessor for IconTextValueStringDataHolder);
    MEMORY[0x1EEE9AC00](v75);
    *(&v76 - 2) = v48;
    v98 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B43958(v74, v67, type metadata accessor for IdleAlarmStatusItem);
    (*(v89 + 56))(v67, 0, 1, v68);
  }

  else
  {

    (*(v89 + 56))(v91, 1, 1, v90);
  }
}

uint64_t sub_1D1B40870(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B108, type metadata accessor for IdleAlarmStatusItem, &unk_1D1E99784);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B408C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1B40910(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B110, type metadata accessor for IdleOccupancySensorStatusItem, &unk_1D1E997D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B40968(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B118, type metadata accessor for IdleOccupancySensorStatusItem, &unk_1D1E99810);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B409C0(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B120, type metadata accessor for IdleMotionSensorStatusItem, &unk_1D1E99848);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B40A18(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B128, type metadata accessor for IdleMotionSensorStatusItem, &unk_1D1E99880);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B40A70(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B130, type metadata accessor for IdleContactSensorStatusItem, &unk_1D1E998B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B40AC8(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B138, type metadata accessor for IdleContactSensorStatusItem, &unk_1D1E998F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B40B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_1D1E66A7C();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B190, &qword_1D1E99BB8);
  v91 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v84 - v13;
  v14 = type metadata accessor for StaticCharacteristic(0);
  v101 = *(v14 - 8);
  v102 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for StaticService(0);
  v16 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v84 - v23;
  v25 = type metadata accessor for LightSensorStatusItem(0);
  v97 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[v26[6]] = 2;
  v28[v26[7]] = 2;
  v29 = v26[8];
  v89 = v28;
  v28[v29] = 4;
  v30 = sub_1D1B42E2C(a1);
  if (!v30[2])
  {

    v71 = v98;
    v72 = *(v97 + 56);

    return v72(v71, 1, 1, v25);
  }

  v88 = a1;
  v84 = v25;
  v85 = v7;
  v86 = v5;
  v87 = v12;
  v31 = (v30 + 8);
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v30[8];
  v35 = (v32 + 63) >> 6;
  v36 = (v16 + 56);
  v103 = v30;
  v104 = (v16 + 48);
  swift_retain_n();
  v37 = 0;
  v38 = 0.0;
  v39 = v105;
  v99 = v24;
  while (1)
  {
    if (!v34)
    {
      if (v35 <= v37 + 1)
      {
        v42 = v37 + 1;
      }

      else
      {
        v42 = v35;
      }

      v43 = v42 - 1;
      while (1)
      {
        v41 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v41 >= v35)
        {
          v34 = 0;
          v45 = 1;
          v37 = v43;
          goto LABEL_18;
        }

        v34 = *&v31[8 * v41];
        ++v37;
        if (v34)
        {
          v37 = v41;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

    v41 = v37;
LABEL_17:
    v44 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    sub_1D1B43A14(v103[7] + *(v16 + 72) * (v44 | (v41 << 6)), v24, type metadata accessor for StaticService);
    v45 = 0;
LABEL_18:
    (*v36)(v24, v45, 1, v39);
    sub_1D1741A90(v24, v22, &qword_1EC6436F0, &qword_1D1E99BC0);
    if ((*v104)(v22, 1, v39) == 1)
    {
      break;
    }

    sub_1D1B43958(v22, v18, type metadata accessor for StaticService);
    v46 = *&v18[*(v39 + 128)];
    if (*(v46 + 16))
    {
      v47 = sub_1D171D140(37);
      if (v48)
      {
        v49 = v18;
        v50 = v36;
        v51 = v16;
        v52 = v100;
        sub_1D1B43A14(*(v46 + 56) + *(v101 + 72) * v47, v100, type metadata accessor for StaticCharacteristic);
        v53 = v52 + *(v102 + 24);
        if (*(v53 + 16) == 7)
        {
          value = *v53;
          sub_1D1B43A7C(v52, type metadata accessor for StaticCharacteristic);
          v16 = v51;
          v36 = v50;
          v18 = v49;
          v24 = v99;
          goto LABEL_6;
        }

        sub_1D1B43A7C(v52, type metadata accessor for StaticCharacteristic);
        v16 = v51;
        v36 = v50;
        v18 = v49;
        v24 = v99;
      }
    }

    v107 = v46;
    v106 = 37;
    v109 = StaticCharacteristicsBag.int(for:)(&v106);
    value = 0.0;
    if (!v109.is_nil)
    {
      value = v109.value;
    }

LABEL_6:
    sub_1D1B43A7C(v18, type metadata accessor for StaticService);
    v38 = v38 + value;
    v39 = v105;
  }

  v54 = v103;

  v38 = v38 / v54[2];
  v55 = [objc_opt_self() lux];
  sub_1D1B439C0();
  v31 = v96;
  sub_1D1E65F9C();
  if (qword_1EC642360 == -1)
  {
    goto LABEL_27;
  }

LABEL_37:
  swift_once();
LABEL_27:
  v56 = [qword_1EC64B060 numberFormatter];
  v58 = v94;
  v57 = v95;
  v60 = v92;
  v59 = v93;
  result = v88;
  if (v56)
  {

    [v56 setMaximumFractionDigits_];

    v102 = sub_1D1E6844C();
    v104 = v62;
    (*(v58 + 56))(v60, 1, 1, v57);
    v63 = static String.hfLocalized(_:)(0xD000000000000018, 0x80000001D1EC5230);
    v65 = v64;
    sub_1D1741C08(v60, v59, &qword_1EC642590, qword_1D1E71260);
    v66 = v60;
    v67 = *(v58 + 48);
    if (v67(v59, 1, v57) == 1)
    {
      v68 = v90;
      sub_1D1E66A6C();
      sub_1D1741A30(v66, &qword_1EC642590, qword_1D1E71260);
      v69 = v67(v59, 1, v57);
      v70 = v68;
      v31 = v96;
      if (v69 != 1)
      {
        sub_1D1741A30(v59, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v66, &qword_1EC642590, qword_1D1E71260);
      v70 = v90;
      (*(v58 + 32))(v90, v59, v57);
    }

    v73 = v85;
    (*(v58 + 32))(v85, v70, v57);
    v74 = v86;
    v75 = (v73 + v86[5]);
    *v75 = 0xD000000000000013;
    v75[1] = 0x80000001D1EC5210;
    v76 = (v73 + v74[6]);
    *v76 = v63;
    v76[1] = v65;
    v77 = (v73 + v74[7]);
    v78 = v104;
    *v77 = v102;
    v77[1] = v78;
    v79 = v73 + v74[8];
    *v79 = 0;
    *(v79 + 8) = 0;
    *(v79 + 16) = 0;
    *(v79 + 24) = -1;
    v80 = v89;
    v81 = sub_1D1B43958(v73, v89, type metadata accessor for IconTextValueStringDataHolder);
    v82 = v84;
    MEMORY[0x1EEE9AC00](v81);
    *(&v84 - 2) = v103;
    v107 = v105;
    sub_1D1E66C8C();

    (*(v91 + 8))(v31, v87);
    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    v83 = v98;
    sub_1D1B43958(v80, v98, type metadata accessor for LightSensorStatusItem);
    return (*(v97 + 56))(v83, 0, 1, v82);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B41638@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1A0, &qword_1D1E99BC8);
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v12 = *(v11 - 8);
  v31 = v11;
  v32 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1A8, &qword_1D1E99BD0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B0, &qword_1D1E99BD8);
  v20 = *(v19 - 8);
  v33 = v19;
  v34 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - v21;
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850, MEMORY[0x1E6968DA8]);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v8 + 8))(v10, v7);
  type metadata accessor for StaticService(0);
  sub_1D17D8EA8(&qword_1EC64B1C0, &qword_1EC64B1A8, &qword_1D1E99BD0, MEMORY[0x1E6968D20]);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350, MEMORY[0x1E6968D58]);
  sub_1D1B408C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v23 = v31;
  sub_1D1E6648C();
  (*(v32 + 8))(v14, v23);
  (*(v16 + 8))(v18, v15);
  v24 = v35;
  sub_1D1E6649C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1C8, &qword_1D1E99BE8);
  v26 = v36;
  v36[3] = v25;
  v26[4] = sub_1D1B43ADC();
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_1D17D8EA8(&qword_1EC64B200, &qword_1EC64B1B0, &qword_1D1E99BD8, MEMORY[0x1E6968C90]);
  sub_1D17D8EA8(&qword_1EC64B208, &qword_1EC64B1A0, &qword_1D1E99BC8, MEMORY[0x1E6968B00]);
  sub_1D1B43E84();
  v27 = v33;
  v28 = v37;
  sub_1D1E6646C();
  (*(v38 + 8))(v24, v28);
  return (*(v34 + 8))(v22, v27);
}

void sub_1D1B41BD4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  v1 = [v0 numberFormatter];
  if (v1)
  {
    v2 = v1;
    [v1 setMaximumIntegerDigits_];

    v3 = [v0 numberFormatter];
    if (v3)
    {
      v4 = v3;
      [v3 setUsesSignificantDigits_];

      qword_1EC64B060 = v0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D1B41C84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v96 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v91 = &v91 - v7;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v94 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v91 - v12;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v13 = MEMORY[0x1EEE9AC00](v112);
  v104 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v91 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v107 = &v91 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v113 = &v91 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v91 - v22;
  v23 = type metadata accessor for OutletStatusItem(0);
  v97 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[*(v24 + 24)] = 7;
  v98 = v24;
  v27 = *(v24 + 28);
  v92 = v26;
  v26[v27] = 3;
  v115 = MEMORY[0x1E69E7CD0];
  v28 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a1 + 64);
  v32 = (v29 + 63) >> 6;
  v110 = a1;
  v111 = 0x80000001D1EB3310;
  v105 = (v9 + 8);
  v106 = v9 + 16;

  v33 = 0;
  v108 = v8;
  v109 = v9;
  v103 = v17;
  while (v31)
  {
LABEL_11:
    v35 = __clz(__rbit64(v31)) | (v33 << 6);
    v36 = v110;
    v37 = v107;
    (*(v9 + 16))(v107, *(v110 + 48) + *(v9 + 72) * v35, v8);
    v38 = *(v36 + 56);
    v39 = type metadata accessor for StaticService(0);
    v40 = v38 + *(*(v39 - 8) + 72) * v35;
    v41 = v112;
    sub_1D1B43A14(v40, &v37[*(v112 + 48)], type metadata accessor for StaticService);
    v42 = v37;
    v43 = v113;
    sub_1D1741A90(v42, v113, &qword_1EC642DB0, &unk_1D1E6F360);
    sub_1D1741C08(v43, v17, &qword_1EC642DB0, &unk_1D1E6F360);
    v44 = &v17[*(v41 + 48)];
    v45 = *(v44 + *(v39 + 112));
    if (v45 == 53)
    {
      LOBYTE(v45) = *(v44 + *(v39 + 104));
    }

    sub_1D1B43A7C(v44, type metadata accessor for StaticService);
    v114 = v45;
    v46 = ServiceKind.rawValue.getter();
    v48 = v105;
    if (v46 == 0xD000000000000024 && v111 == v47)
    {
      v49 = 1;
    }

    else
    {
      v49 = sub_1D1E6904C();
    }

    v31 &= v31 - 1;

    v50 = *v48;
    v51 = v108;
    (*v48)(v17, v108);
    if (v49 & 1) != 0 && (v52 = v104, sub_1D1741C08(v113, v104, &qword_1EC642DB0, &unk_1D1E6F360), v53 = *(v112 + 48), v54 = StaticService.isActivated.getter(), sub_1D1B43A7C(v52 + v53, type metadata accessor for StaticService), v55 = v52, v17 = v103, v50(v55, v51), (v54))
    {
      v56 = v102;
      sub_1D1741A90(v113, v102, &qword_1EC642DB0, &unk_1D1E6F360);
      v57 = v56;
      v58 = v104;
      sub_1D1741C08(v57, v104, &qword_1EC642DB0, &unk_1D1E6F360);
      v101 = *(v112 + 48);
      v59 = v100;
      sub_1D1762CB8(v100, v58);
      v50(v59, v51);
      sub_1D1741A30(v102, &qword_1EC642DB0, &unk_1D1E6F360);
      v17 = v103;
      sub_1D1B43A7C(&v58[v101], type metadata accessor for StaticService);
    }

    else
    {
      sub_1D1741A30(v113, &qword_1EC642DB0, &unk_1D1E6F360);
    }

    v8 = v51;
    v9 = v109;
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      return;
    }

    if (v34 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
      goto LABEL_11;
    }
  }

  v60 = v115;
  if (*(v115 + 16))
  {
    v61 = v91;
    (*(v9 + 56))(v91, 1, 1, v8);
    v111 = 0x80000001D1EB5F40;
    v62 = static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EC5250);
    v63 = v8;
    v64 = v61;
    v112 = v65;
    v113 = v62;
    static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC4FA0);
    v66 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1D1E739C0;
    v68 = *(v60 + 16);
    v69 = MEMORY[0x1E69E65A8];
    *(v67 + 56) = MEMORY[0x1E69E6530];
    *(v67 + 64) = v69;
    *(v67 + 32) = v68;
    v70 = sub_1D1E6783C();
    v72 = v71;

    v73 = v93;

    sub_1D1741C08(v64, v73, &qword_1EC642590, qword_1D1E71260);
    v74 = *(v9 + 48);
    if (v74(v73, 1, v63) == 1)
    {
      v75 = v66;
      v76 = v94;
      sub_1D1E66A6C();
      sub_1D1741A30(v64, &qword_1EC642590, qword_1D1E71260);
      v77 = v74(v73, 1, v63) == 1;
      v78 = v99;
      v79 = v73;
      v81 = v95;
      v80 = v96;
      if (!v77)
      {
        sub_1D1741A30(v79, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v64, &qword_1EC642590, qword_1D1E71260);
      v75 = v66;
      v82 = *(v66 + 32);
      v76 = v94;
      v82(v94, v73, v63);
      v78 = v99;
      v81 = v95;
      v80 = v96;
    }

    (*(v75 + 32))(v81, v76, v63);
    v83 = (v81 + v80[5]);
    *v83 = 0xD000000000000017;
    v83[1] = v111;
    v84 = (v81 + v80[6]);
    v85 = v112;
    *v84 = v113;
    v84[1] = v85;
    v86 = (v81 + v80[7]);
    *v86 = v70;
    v86[1] = v72;
    v87 = v81 + v80[8];
    *v87 = 0;
    *(v87 + 8) = 0;
    *(v87 + 16) = 0;
    *(v87 + 24) = -1;
    v88 = v92;
    v89 = sub_1D1B43958(v81, v92, type metadata accessor for IconTextValueStringDataHolder);
    v90 = v98;
    MEMORY[0x1EEE9AC00](v89);
    *(&v91 - 2) = v60;
    v115 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B43958(v88, v78, type metadata accessor for OutletStatusItem);
    (*(v97 + 56))(v78, 0, 1, v90);
  }

  else
  {

    (*(v97 + 56))(v99, 1, 1, v98);
  }
}

uint64_t sub_1D1B426D8@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850, MEMORY[0x1E6968DA8]);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B39320();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860, MEMORY[0x1E6968D20]);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350, MEMORY[0x1E6968D58]);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360, MEMORY[0x1E69E6508]);
  sub_1D1B408C8(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v17 = v20;
  sub_1D1E6647C();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1D1B42ABC(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B140, type metadata accessor for ClosedWindowStatusItem, &unk_1D1E99928);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42B14(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B148, type metadata accessor for ClosedWindowStatusItem, &unk_1D1E99960);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42B6C(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B150, type metadata accessor for ClosedDoorStatusItem, &unk_1D1E99998);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42BC4(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B158, type metadata accessor for ClosedDoorStatusItem, &unk_1D1E999D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42C1C(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B160, type metadata accessor for ClosedGarageDoorStatusItem, &unk_1D1E99A08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42C74(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B168, type metadata accessor for ClosedGarageDoorStatusItem, &unk_1D1E99A40);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42CCC(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B170, type metadata accessor for LightSensorStatusItem, &unk_1D1E99A78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42D24(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B178, type metadata accessor for OutletStatusItem, &unk_1D1E99ACC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42D7C(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B180, type metadata accessor for ClosedBlindsStatusItem, &unk_1D1E99B20);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B42DD4(uint64_t a1)
{
  result = sub_1D1B408C8(&qword_1EC64B188, type metadata accessor for ClosedBlindsStatusItem, &unk_1D1E99B58);
  *(a1 + 8) = result;
  return result;
}

void *sub_1D1B42E2C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D1B42F8C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D1B43478(v8, v4, v2);
  result = MEMORY[0x1D3893640](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1D1B42F8C(unint64_t *a1, uint64_t a2, void *a3)
{
  v43 = a2;
  v44 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = MEMORY[0x1EEE9AC00](v53);
  v61 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v42 - v6;
  v7 = type metadata accessor for StaticService(0);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v58);
  v57 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v54 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v45 = 0;
  v46 = (v16 + 63) >> 6;
  v49 = v10 + 16;
  v50 = v10;
  v55 = 0x80000001D1EB31C0;
  v48 = (v10 + 8);
  while (v18)
  {
    v22 = __clz(__rbit64(v18));
    v56 = (v18 - 1) & v18;
LABEL_12:
    v25 = v22 | (v12 << 6);
    v26 = v54;
    v27 = *(v50 + 16);
    v28 = v57;
    v29 = v58;
    v27(v57, v54[6] + *(v50 + 72) * v25, v58);
    v30 = v26[7];
    v31 = *(v51 + 72);
    v47 = v25;
    v32 = v30 + v31 * v25;
    v33 = v60;
    sub_1D1B43A14(v32, v60, type metadata accessor for StaticService);
    v34 = v59;
    v27(v59, v28, v29);
    v35 = v53;
    sub_1D1B43A14(v33, v34 + *(v53 + 48), type metadata accessor for StaticService);
    v36 = v61;
    sub_1D1741C08(v34, v61, &qword_1EC642DB0, &unk_1D1E6F360);
    v37 = v36 + *(v35 + 48);
    LOBYTE(v36) = *(v37 + *(v52 + 104));
    sub_1D1B43A7C(v37, type metadata accessor for StaticService);
    v62 = v36;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v55 == v38)
    {

      sub_1D1741A30(v59, &qword_1EC642DB0, &unk_1D1E6F360);
      v39 = *v48;
      v40 = v58;
      (*v48)(v61, v58);
      sub_1D1B43A7C(v60, type metadata accessor for StaticService);
      result = (v39)(v57, v40);
      v18 = v56;
      goto LABEL_15;
    }

    v19 = sub_1D1E6904C();

    sub_1D1741A30(v59, &qword_1EC642DB0, &unk_1D1E6F360);
    v20 = *v48;
    v21 = v58;
    (*v48)(v61, v58);
    sub_1D1B43A7C(v60, type metadata accessor for StaticService);
    result = (v20)(v57, v21);
    v18 = v56;
    if (v19)
    {
LABEL_15:
      *(v44 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v45++, 1))
      {
        __break(1u);
        return sub_1D188B1C8(v44, v43, v45, v54);
      }
    }
  }

  v23 = v12;
  while (1)
  {
    v12 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v12 >= v46)
    {
      return sub_1D188B1C8(v44, v43, v45, v54);
    }

    v24 = v14[v12];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v56 = (v24 - 1) & v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1B43478(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D1B42F8C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1D1B434F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for StaticService(0);
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D1E66A7C();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  result = MEMORY[0x1EEE9AC00](v10);
  v44 = result;
  v45 = v5;
  v39 = v5 + 32;
  v40 = v5 + 16;
  v13 = &v37 - v12;
  v49 = (v14 + 48);
  v50 = (v14 + 56);
  v41 = &v37 - v12;
  v42 = v9;
  while (1)
  {
    v15 = *v2;
    v16 = v2[1];
    v18 = v2[2];
    v17 = v2[3];
    v19 = v2[4];
    v52 = v18;
    if (!v19)
    {
      break;
    }

    v20 = v17;
LABEL_11:
    v51 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = v45;
    v25 = v46;
    v27 = v43;
    (*(v45 + 16))(v43, *(v15 + 48) + *(v45 + 72) * v24, v46);
    v28 = v47;
    sub_1D1B43A14(*(v15 + 56) + *(v48 + 72) * v24, v47, type metadata accessor for StaticService);
    v10 = v44;
    v29 = *(v44 + 48);
    v30 = *(v26 + 32);
    v9 = v42;
    v30(v42, v27, v25);
    sub_1D1B43958(v28, &v9[v29], type metadata accessor for StaticService);
    v31 = 0;
    v23 = v20;
    v13 = v41;
LABEL_12:
    v32 = *v50;
    (*v50)(v9, v31, 1, v10);
    *v2 = v15;
    v2[1] = v16;
    v33 = v51;
    v2[2] = v52;
    v2[3] = v23;
    v2[4] = v33;
    if ((*v49)(v9, 1, v10) == 1)
    {
      sub_1D1741A30(v9, &qword_1EC643C68, &unk_1D1E764C0);
      v34 = 1;
      v35 = v38;
      return (v32)(v35, v34, 1, v10);
    }

    sub_1D1741A90(v9, v13, &qword_1EC642DB0, &unk_1D1E6F360);
    if ((v2[5])(v13))
    {
      v36 = v13;
      v35 = v38;
      sub_1D1741A90(v36, v38, &qword_1EC642DB0, &unk_1D1E6F360);
      v34 = 0;
      return (v32)(v35, v34, 1, v10);
    }

    result = sub_1D1741A30(v13, &qword_1EC642DB0, &unk_1D1E6F360);
  }

  v21 = (v18 + 64) >> 6;
  if (v21 <= v17 + 1)
  {
    v22 = v17 + 1;
  }

  else
  {
    v22 = (v18 + 64) >> 6;
  }

  v23 = v22 - 1;
  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v21)
    {
      v51 = 0;
      v31 = 1;
      goto LABEL_12;
    }

    v19 = *(v16 + 8 * v20);
    ++v17;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B43958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1B439C0()
{
  result = qword_1EC64B198;
  if (!qword_1EC64B198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC64B198);
  }

  return result;
}

uint64_t sub_1D1B43A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B43A7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1B43ADC()
{
  result = qword_1EC64B1D0;
  if (!qword_1EC64B1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B1C8, &qword_1D1E99BE8);
    sub_1D1B43B94();
    sub_1D17D8EA8(&qword_1EC64B1F8, &qword_1EC64B1A0, &qword_1D1E99BC8, MEMORY[0x1E6968AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B1D0);
  }

  return result;
}

unint64_t sub_1D1B43B94()
{
  result = qword_1EC64B1D8;
  if (!qword_1EC64B1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B1B0, &qword_1D1E99BD8);
    sub_1D1B43C20();
    sub_1D1B39544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B1D8);
  }

  return result;
}

unint64_t sub_1D1B43C20()
{
  result = qword_1EC64B1E0;
  if (!qword_1EC64B1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B1A8, &qword_1D1E99BD0);
    sub_1D1B43CAC();
    sub_1D1B43D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B1E0);
  }

  return result;
}

unint64_t sub_1D1B43CAC()
{
  result = qword_1EC64B1E8;
  if (!qword_1EC64B1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B408C8(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D1B408C8(&qword_1EC644750, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B1E8);
  }

  return result;
}

unint64_t sub_1D1B43D98()
{
  result = qword_1EC64B1F0;
  if (!qword_1EC64B1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B408C8(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1B408C8(&qword_1EC6446F8, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B1F0);
  }

  return result;
}

unint64_t sub_1D1B43E84()
{
  result = qword_1EC64B210;
  if (!qword_1EC64B210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1B408C8(&qword_1EE07AB18, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B210);
  }

  return result;
}

uint64_t sub_1D1B4427C(uint64_t a1)
{
  result = type metadata accessor for IconTextValueStringDataHolder(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TilesFilter(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1B4431C@<X0>(int a2@<W1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B370, &unk_1D1E9A1E0);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B378, &qword_1D1E9A1F0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18[-v14];
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850, MEMORY[0x1E6968DA8]);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v9 + 8))(v11, v8);
  v22 = v19;
  sub_1D1E664BC();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B380, &qword_1D1E9A218);
  a3[4] = sub_1D1B45EB8();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64B3A0, &qword_1EC64B378, &qword_1D1E9A1F0, MEMORY[0x1E6968D58]);
  sub_1D17D8EA8(&qword_1EC64B3A8, &qword_1EC64B370, &unk_1D1E9A1E0, MEMORY[0x1E6968D20]);
  sub_1D18DF248();
  v16 = v20;
  sub_1D1E6644C();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1D1B4468C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v124 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v122 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v129 = &v121 - v7;
  v8 = type metadata accessor for StaticService(0);
  v139 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v138 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v125 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v121 - v14;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v15 = *(v149 - 8);
  v16 = MEMORY[0x1EEE9AC00](v149);
  v144 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v143 = &v121 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v147 = &v121 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v121 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v145 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v121 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v148 = &v121 - v29;
  v30 = type metadata accessor for SecuritySystemStatusItem(0);
  v126 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[v31[6]] = 4;
  v33[v31[7]] = 0;
  v131 = v31;
  v34 = v31[8];
  v155 = 35;
  v151 = v8;
  v158 = v8;
  sub_1D1E66C8C();
  type metadata accessor for TilesFilter(0);
  v130 = v33;
  v121 = v34;
  v35 = v28;
  swift_storeEnumTagMultiPayload();
  v132 = sub_1D18DB3A0(MEMORY[0x1E69E7CC0]);
  v36 = *(a1 + 64);
  v134 = a1 + 64;
  v37 = -1 << *(a1 + 32);
  if (-v37 < 64)
  {
    v38 = ~(-1 << -v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & v36;
  v128 = -1 << *(a1 + 32);
  v133 = (63 - v37) >> 6;
  v153 = (v15 + 56);
  v136 = v11 + 16;
  v140 = (v11 + 32);
  v154 = (v15 + 48);
  v135 = 0x80000001D1EB3340;
  v141 = a1;
  v142 = v11;
  v150 = (v11 + 8);

  v40 = 0;
  v152 = v10;
  while (1)
  {
    while (1)
    {
      if (!v39)
      {
        if (v133 <= v40 + 1)
        {
          v44 = v40 + 1;
        }

        else
        {
          v44 = v133;
        }

        v45 = v44 - 1;
        v42 = v148;
        v43 = v149;
        v46 = v153;
        while (1)
        {
          v41 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v41 >= v133)
          {
            v39 = 0;
            v55 = 1;
            v40 = v45;
            goto LABEL_17;
          }

          v39 = *(v134 + 8 * v41);
          ++v40;
          if (v39)
          {
            v40 = v41;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_62;
      }

      v41 = v40;
      v42 = v148;
      v43 = v149;
LABEL_16:
      v47 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v48 = v47 | (v41 << 6);
      v50 = v141;
      v49 = v142;
      v51 = v137;
      (*(v142 + 16))(v137, *(v141 + 48) + *(v142 + 72) * v48, v10);
      v52 = *(v50 + 56) + *(v139 + 72) * v48;
      v53 = v138;
      sub_1D1B45D80(v52, v138, type metadata accessor for StaticService);
      v54 = *(v43 + 48);
      (*(v49 + 32))(v35, v51, v10);
      sub_1D1B45DF0(v53, v35 + v54, type metadata accessor for StaticService);
      v55 = 0;
      v46 = v153;
LABEL_17:
      v56 = *v46;
      (*v46)(v35, v55, 1, v43);
      v57 = *v154;
      if ((*v154)(v35, 1, v43) == 1)
      {
        sub_1D1741A30(v35, &qword_1EC643C68, &unk_1D1E764C0);
        v56(v42, 1, 1, v43);
        goto LABEL_24;
      }

      v58 = v146;
      sub_1D1741A90(v35, v146, &qword_1EC642DB0, &unk_1D1E6F360);
      v59 = v58;
      v60 = v147;
      sub_1D1741C08(v59, v147, &qword_1EC642DB0, &unk_1D1E6F360);
      v61 = v60 + *(v43 + 48);
      v62 = *(v61 + *(v151 + 104));
      sub_1D1B45E58(v61, type metadata accessor for StaticService);
      LOBYTE(v157) = v62;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v135 == v63)
      {
        break;
      }

      v64 = sub_1D1E6904C();

      (*v150)(v147, v152);
      if (v64)
      {
        goto LABEL_23;
      }

      sub_1D1741A30(v146, &qword_1EC642DB0, &unk_1D1E6F360);
      v10 = v152;
    }

    (*v150)(v147, v152);
LABEL_23:
    sub_1D1741A90(v146, v42, &qword_1EC642DB0, &unk_1D1E6F360);
    v56(v42, 0, 1, v43);
LABEL_24:
    v65 = v145;
    sub_1D1741A90(v42, v145, &qword_1EC643C68, &unk_1D1E764C0);
    if (v57(v65, 1, v43) == 1)
    {
      break;
    }

    v66 = v43;
    v67 = v143;
    sub_1D1741A90(v65, v143, &qword_1EC642DB0, &unk_1D1E6F360);
    v68 = v144;
    sub_1D1741C08(v67, v144, &qword_1EC642DB0, &unk_1D1E6F360);
    v69 = v68 + *(v66 + 48);
    v157 = *(v69 + *(v151 + 128));
    v156 = 42;
    v159 = StaticCharacteristicsBag.int(for:)(&v156);
    value = v159.value;
    LOBYTE(v66) = v159.is_nil;
    sub_1D1B45E58(v69, type metadata accessor for StaticService);
    v10 = v152;
    (*v150)(v68, v152);
    sub_1D1741A30(v67, &qword_1EC642DB0, &unk_1D1E6F360);
    if ((v66 & 1) == 0)
    {
      v71 = v132;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v157 = v71;
      v74 = sub_1D171D128(value);
      v75 = v71[2];
      v76 = (v73 & 1) == 0;
      v77 = v75 + v76;
      if (__OFADD__(v75, v76))
      {
        goto LABEL_63;
      }

      v78 = v73;
      if (v71[3] >= v77)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v73)
          {
            goto LABEL_35;
          }

LABEL_34:
          sub_1D19DBF58(v74, value, 0, v71);
          goto LABEL_35;
        }

        sub_1D173CEA8();
        v71 = v157;
        if ((v78 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_1D172F93C(v77, isUniquelyReferenced_nonNull_native);
        type metadata accessor for HMCharacteristicValueCurrentSecuritySystemState(0);
        v71 = v157;
        v79 = sub_1D171D128(value);
        if ((v78 & 1) != (v80 & 1))
        {
          goto LABEL_65;
        }

        v74 = v79;
        if ((v78 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_35:
      v81 = v71[7];
      v82 = *(v81 + 8 * v74);
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v83)
      {
        goto LABEL_64;
      }

      v132 = v71;
      *(v81 + 8 * v74) = v84;
    }
  }

  v85 = v141;

  sub_1D1716918(v85);
  v86 = v132;
  if (!*(v132 + 16))
  {
    v92 = 0;
    v93 = 0;
    v88 = v152;
    v89 = v129;
    v90 = v142;
    goto LABEL_48;
  }

  v87 = sub_1D171D128(4);
  v88 = v152;
  v89 = v129;
  v90 = v142;
  if (v91)
  {
    v92 = *(*(v86 + 56) + 8 * v87);
    if (!*(v86 + 16))
    {
LABEL_47:
      v93 = 0;
      goto LABEL_48;
    }
  }

  else
  {
    v92 = 0;
    if (!*(v86 + 16))
    {
      goto LABEL_47;
    }
  }

  v94 = sub_1D171D128(3);
  if ((v95 & 1) == 0)
  {
    goto LABEL_47;
  }

  v93 = *(*(v86 + 56) + 8 * v94);
LABEL_48:

  if (__OFADD__(v92, v93))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  if (v92 + v93 < 1)
  {
    sub_1D1B45E58(&v130[v121], type metadata accessor for TilesFilter);
    return (*(v126 + 56))(v127, 1, 1, v131);
  }

  else
  {
    v96 = "dow_Short_MultipleOpen";
    v97 = v92 < 1;
    if (v92 < 1)
    {
      v98 = 0xD000000000000032;
    }

    else
    {
      v96 = "Garage Door Openers";
      v98 = 0xD000000000000033;
    }

    if (v92 >= 1)
    {
      v93 = v92;
    }

    static String.hfLocalized(_:)(v98, v96 | 0x8000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v99 = swift_allocObject();
    v100 = MEMORY[0x1E69E6530];
    *(v99 + 16) = xmmword_1D1E739C0;
    v101 = MEMORY[0x1E69E65A8];
    *(v99 + 56) = v100;
    *(v99 + 64) = v101;
    *(v99 + 32) = v93;
    v102 = sub_1D1E6783C();
    v104 = v103;

    v130[v131[5]] = v97;
    (*(v90 + 56))(v89, 1, 1, v88);
    v105 = static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5280);
    v107 = v106;
    v108 = v122;
    sub_1D1741C08(v89, v122, &qword_1EC642590, qword_1D1E71260);
    v109 = *(v90 + 48);
    if (v109(v108, 1, v88) == 1)
    {
      v154 = v107;
      v110 = v125;
      sub_1D1E66A6C();
      sub_1D1741A30(v89, &qword_1EC642590, qword_1D1E71260);
      v111 = v109(v108, 1, v88);
      v107 = v154;
      if (v111 != 1)
      {
        sub_1D1741A30(v108, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v89, &qword_1EC642590, qword_1D1E71260);
      v110 = v125;
      (*v140)(v125, v108, v88);
    }

    v113 = v123;
    (*v140)(v123, v110, v88);
    v114 = v124;
    v115 = (v113 + *(v124 + 20));
    *v115 = 0xD000000000000015;
    v115[1] = 0x80000001D1EB6120;
    v116 = (v113 + v114[6]);
    *v116 = v105;
    v116[1] = v107;
    v117 = (v113 + v114[7]);
    *v117 = v102;
    v117[1] = v104;
    v118 = v113 + v114[8];
    *v118 = 0;
    *(v118 + 8) = 0;
    *(v118 + 16) = 0;
    *(v118 + 24) = -1;
    v119 = v130;
    sub_1D1B45DF0(v113, v130, type metadata accessor for IconTextValueStringDataHolder);
    v120 = v127;
    sub_1D1B45D80(v119, v127, type metadata accessor for SecuritySystemStatusItem);
    (*(v126 + 56))(v120, 0, 1, v131);
    return sub_1D1B45E58(v119, type metadata accessor for SecuritySystemStatusItem);
  }
}