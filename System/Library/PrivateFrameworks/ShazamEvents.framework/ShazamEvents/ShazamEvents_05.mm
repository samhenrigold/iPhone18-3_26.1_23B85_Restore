void sub_1E104B6CC(uint64_t a1)
{
  sub_1E104BB70(319, &qword_1ECE8A490, type metadata accessor for ResponseData, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E104B784(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void sub_1E104B908(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
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

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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

      goto LABEL_31;
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

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
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

    *a1 = v19;
  }
}

void sub_1E104BB70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E104BBD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E104BD8C(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 1701869940;
  v3 = 0x7475626972747461;
  if (a1 != 3)
  {
    v3 = 0x6E6F6974616C6572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1717924456;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E104BE1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v5 = v4;
  v7 = *(a2 + 24);
  v19 = *(a2 + 16);
  v20 = v7;
  type metadata accessor for Resource.CodingKeys(255, v19, v7, a4);
  swift_getWitnessTable();
  v8 = sub_1E10AE8BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA5C();
  v28 = 0;
  v14 = v22;
  sub_1E10AE86C();
  if (v14)
  {
    return (*(v9 + 8))(v13, v8);
  }

  v16 = v9;
  v17 = v21;
  v27 = 1;
  sub_1E10ADBBC();
  sub_1E104E840(&qword_1ECE88CC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1E10AE85C();
  v26 = 2;
  sub_1E10AE86C();
  v25 = 3;
  sub_1E10AE85C();
  v23 = *(v5 + *(v17 + 48));
  v24 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE8A408, qword_1E10B5BA8);
  sub_1E104E6CC(&qword_1ECE8A538, sub_1E104E750, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1E10AE85C();
  return (*(v16 + 8))(v13, 0);
}

uint64_t sub_1E104C13C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v50 = sub_1E10AE4EC();
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v48 = v44 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  MEMORY[0x1EEE9AC00](v10, v11);
  v51 = v44 - v12;
  type metadata accessor for Resource.CodingKeys(255, a2, a3, v13);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1E10AE81C();
  v15 = *(v14 - 8);
  v53 = v14;
  v54 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v44 - v18;
  v49 = a2;
  v47 = a3;
  v21 = type metadata accessor for Resource(0, a2, a3, v20);
  v45 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = (v44 - v25);
  v27 = *(v24 + 36);
  v28 = sub_1E10ADBBC();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v55 = v19;
  v29 = v57;
  sub_1E10AEA3C();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1E104E5A0(v26 + v27);
  }

  else
  {
    WitnessTable = v21;
    v57 = v27;
    v30 = v51;
    v31 = v52;
    v63 = 0;
    v32 = v53;
    v33 = v26;
    *v26 = sub_1E10AE7BC();
    v26[1] = v34;
    v44[1] = v34;
    v62 = 1;
    sub_1E104E840(&qword_1ECE88D38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1E10AE7AC();
    sub_1E104E608(v30, v26 + v57);
    v61 = 2;
    v35 = sub_1E10AE7BC();
    v36 = v31;
    v37 = WitnessTable;
    v38 = (v33 + *(WitnessTable + 40));
    *v38 = v35;
    v38[1] = v39;
    v60 = 3;
    v40 = v48;
    sub_1E10AE7AC();
    (*(v36 + 32))(v33 + *(v37 + 44), v40, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE8A408, qword_1E10B5BA8);
    v59 = 4;
    sub_1E104E6CC(&qword_1ECE8A528, sub_1E104E678, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1E10AE7AC();
    v41 = *(v37 + 48);
    (*(v54 + 8))(v55, v32);
    *(v33 + v41) = v58;
    v42 = v45;
    (*(v45 + 16))(v46, v33, v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v42 + 8))(v33, v37);
  }
}

uint64_t sub_1E104C788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E104BBD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E104C7B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E104C80C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E104C898(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E104C96C(char a1)
{
  if (a1)
  {
    return 0x656372756F736572;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1E104C9A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = v6;
  type metadata accessor for MapJSON.CodingKeys(255, v6, v17, a4);
  swift_getWitnessTable();
  v7 = sub_1E10AE8BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v19;
  sub_1E10AEA5C();
  v23 = *v13;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4A0, &qword_1E10B5E10);
  sub_1E104E7A4(&qword_1ECE8A548, qword_1ECE8A550, &unk_1E10B5CB8, MEMORY[0x1E69E6300]);
  v14 = v20;
  sub_1E10AE8AC();
  if (!v14)
  {
    v21 = 1;
    sub_1E10AE8AC();
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1E104CBA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>)
{
  v33 = a4;
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a5, a6);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapJSON.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v38 = sub_1E10AE81C();
  v34 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v31 - v15;
  v36 = a3;
  v18 = type metadata accessor for MapJSON(0, a2, a3, v17);
  v31 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v31 - v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v16;
  v23 = v39;
  sub_1E10AEA3C();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v22;
  v39 = v18;
  v25 = a1;
  v27 = v34;
  v26 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4A0, &qword_1E10B5E10);
  v41 = 0;
  sub_1E104E7A4(&qword_1ECE8A4A8, &qword_1ECE8A4B0, &unk_1E10B5CE0, MEMORY[0x1E69E6330]);
  sub_1E10AE7FC();
  *v22 = v42;
  v40 = 1;
  sub_1E10AE7FC();
  (*(v27 + 8))(v37, v38);
  v28 = v39;
  (*(v32 + 32))(v22 + *(v39 + 36), v26, a2);
  v29 = v31;
  (*(v31 + 16))(v33, v24, v28);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return (*(v29 + 8))(v24, v28);
}

uint64_t sub_1E104CF74(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A520, &qword_1E10B5E48);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E474();
  sub_1E10AEA5C();
  v10[15] = 0;
  sub_1E10AE86C();
  if (!v1)
  {
    type metadata accessor for ResponseData(0);
    v10[14] = 1;
    sub_1E10ADBBC();
    sub_1E104E840(&qword_1ECE88CC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E10AE8AC();
    v10[13] = 2;
    sub_1E10AE86C();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1E104D160@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = sub_1E10ADBBC();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A510, &qword_1E10B5E40);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v29 - v10;
  v12 = type metadata accessor for ResponseData(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E474();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v12;
  v31 = a1;
  v18 = v34;
  v17 = v35;
  v39 = 0;
  v19 = v16;
  *v16 = sub_1E10AE7BC();
  v16[1] = v20;
  v29[2] = v20;
  v38 = 1;
  sub_1E104E840(&qword_1ECE88D38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E10AE7FC();
  v21 = v30;
  (*(v33 + 32))(v19 + *(v30 + 20), v7, v17);
  v37 = 2;
  v29[1] = 0;
  v22 = sub_1E10AE7BC();
  v29[0] = v23;
  v24 = v31;
  v25 = v22;
  (*(v18 + 8))(v11, v36);
  v26 = (v19 + *(v21 + 24));
  v27 = v29[0];
  *v26 = v25;
  v26[1] = v27;
  sub_1E104E4C8(v19, v32);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1E104E52C(v19);
}

uint64_t sub_1E104D538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E104C898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E104D568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E104D5BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

unint64_t sub_1E104D64C()
{
  result = qword_1ECE8A498;
  if (!qword_1ECE8A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A498);
  }

  return result;
}

uint64_t sub_1E104D6A0()
{
  v1 = 1717924456;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1E104D6E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E104DE04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E104D708(uint64_t a1)
{
  v2 = sub_1E104E474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E104D744(uint64_t a1)
{
  v2 = sub_1E104E474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E104D7B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A508, &qword_1E10B5E38);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E420();
  sub_1E10AEA5C();
  v16 = 0;
  sub_1E10AE86C();
  if (!v5)
  {
    v15 = 1;
    sub_1E10AE86C();
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1E104D944(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4E0, &qword_1E10B5E28);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E2AC();
  sub_1E10AEA5C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4C8, &qword_1E10B5E20);
  sub_1E104E300(&qword_1ECE8A4E8, sub_1E104E3CC, MEMORY[0x1E69E6300]);
  sub_1E10AE8AC();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1E104DAD0()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1E104DAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E104DBCC(uint64_t a1)
{
  v2 = sub_1E104E420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E104DC08(uint64_t a1)
{
  v2 = sub_1E104E420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E104DC44@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E104DF14(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1E104DCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E104DD2C(uint64_t a1)
{
  v2 = sub_1E104E2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E104DD68(uint64_t a1)
{
  v2 = sub_1E104E2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E104DDA4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E104E0F8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E104DE04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E104DF14(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4F8, &qword_1E10B5E30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E420();
  sub_1E10AEA3C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1E10AE7BC();
    v12 = 1;
    sub_1E10AE7BC();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1E104E0F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4B8, &qword_1E10B5E18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E104E2AC();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A4C8, &qword_1E10B5E20);
    sub_1E104E300(&qword_1ECE8A4D0, sub_1E104E378, MEMORY[0x1E69E6330]);
    sub_1E10AE7FC();
    (*(v4 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_1E104E2AC()
{
  result = qword_1ECE8A4C0;
  if (!qword_1ECE8A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A4C0);
  }

  return result;
}

uint64_t sub_1E104E300(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A4C8, &qword_1E10B5E20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E104E378()
{
  result = qword_1ECE8A4D8;
  if (!qword_1ECE8A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A4D8);
  }

  return result;
}

unint64_t sub_1E104E3CC()
{
  result = qword_1ECE8A4F0;
  if (!qword_1ECE8A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A4F0);
  }

  return result;
}

unint64_t sub_1E104E420()
{
  result = qword_1ECE8A500;
  if (!qword_1ECE8A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A500);
  }

  return result;
}

unint64_t sub_1E104E474()
{
  result = qword_1ECE8A518;
  if (!qword_1ECE8A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A518);
  }

  return result;
}

uint64_t sub_1E104E4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E104E52C(uint64_t a1)
{
  v2 = type metadata accessor for ResponseData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E104E5A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E104E608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E104E678()
{
  result = qword_1ECE8A530;
  if (!qword_1ECE8A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A530);
  }

  return result;
}

uint64_t sub_1E104E6CC(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECE8A408, qword_1E10B5BA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E104E750()
{
  result = qword_1ECE8A540;
  if (!qword_1ECE8A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A540);
  }

  return result;
}

uint64_t sub_1E104E7A4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A4A0, &qword_1E10B5E10);
    sub_1E104E840(a2, type metadata accessor for ResponseData, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E104E840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E104E8D8()
{
  result = qword_1ECE8A658;
  if (!qword_1ECE8A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A658);
  }

  return result;
}

unint64_t sub_1E104E930()
{
  result = qword_1ECE8A660;
  if (!qword_1ECE8A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A660);
  }

  return result;
}

unint64_t sub_1E104E988()
{
  result = qword_1ECE8A668;
  if (!qword_1ECE8A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A668);
  }

  return result;
}

unint64_t sub_1E104EA34()
{
  result = qword_1ECE8A670;
  if (!qword_1ECE8A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A670);
  }

  return result;
}

unint64_t sub_1E104EA8C()
{
  result = qword_1ECE8A678;
  if (!qword_1ECE8A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A678);
  }

  return result;
}

unint64_t sub_1E104EAE4()
{
  result = qword_1ECE8A680;
  if (!qword_1ECE8A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A680);
  }

  return result;
}

unint64_t sub_1E104EB3C()
{
  result = qword_1ECE8A688;
  if (!qword_1ECE8A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A688);
  }

  return result;
}

unint64_t sub_1E104EB94()
{
  result = qword_1ECE8A690;
  if (!qword_1ECE8A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A690);
  }

  return result;
}

unint64_t sub_1E104EBEC()
{
  result = qword_1ECE8A698;
  if (!qword_1ECE8A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A698);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E104EC8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E104ECD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Nightlife.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Nightlife.category.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Nightlife.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t type metadata accessor for Nightlife(uint64_t a1)
{
  result = qword_1EE17E588;
  if (!qword_1EE17E588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Nightlife.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Nightlife(0) + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t Nightlife.tickets.getter()
{
  type metadata accessor for Nightlife(0);
}

uint64_t sub_1E104EFC8(uint64_t a1)
{
  v2 = sub_1E1050E8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E104F004(uint64_t a1)
{
  v2 = sub_1E1050E8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Nightlife.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A6A0, &qword_1E10B6428);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1050E8C();
  sub_1E10AEA5C();
  v11 = *(v3 + 8);
  *&v40 = *v3;
  *(&v40 + 1) = v11;
  LOBYTE(v30) = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v12 = *(v3 + 24);
    *&v40 = *(v3 + 16);
    *(&v40 + 1) = v12;
    v41 = *(v3 + 32);
    LOBYTE(v30) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A6B0, &qword_1E10B6430);
    sub_1E1050EE0(&qword_1ECE8A6B8, &protocol conformance descriptor for EventCategory<A>);
    sub_1E10AE8AC();
    LOBYTE(v40) = 2;
    sub_1E10AE86C();
    v13 = type metadata accessor for Nightlife(0);
    v50[0] = 3;
    type metadata accessor for Time(0);
    sub_1E1051250(&qword_1ECE88CB0, type metadata accessor for Time, &protocol conformance descriptor for Time);
    sub_1E10AE8AC();
    v14 = (v3 + *(v13 + 32));
    v15 = v14[7];
    v16 = v14[5];
    v46 = v14[6];
    v47 = v15;
    v17 = v14[7];
    v18 = v14[9];
    v48 = v14[8];
    v49 = v18;
    v19 = v14[3];
    v20 = v14[1];
    v42 = v14[2];
    v43 = v19;
    v21 = v14[3];
    v22 = v14[5];
    v44 = v14[4];
    v45 = v22;
    v23 = v14[1];
    v40 = *v14;
    v41 = v23;
    v36 = v46;
    v37 = v17;
    v24 = v14[9];
    v38 = v48;
    v39 = v24;
    v32 = v42;
    v33 = v21;
    v34 = v44;
    v35 = v16;
    v30 = v40;
    v31 = v20;
    v29 = 4;
    sub_1E0FE6720(&v40, v28);
    sub_1E0FEDA64();
    sub_1E10AE8AC();
    v28[6] = v36;
    v28[7] = v37;
    v28[8] = v38;
    v28[9] = v39;
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v28[5] = v35;
    v28[0] = v30;
    v28[1] = v31;
    sub_1E0FEDAB8(v28);
    LOBYTE(v27) = 5;
    type metadata accessor for EventAttribution(0);
    sub_1E1051250(&qword_1ECE88CB8, type metadata accessor for EventAttribution, &protocol conformance descriptor for EventAttribution);
    sub_1E10AE85C();
    LOBYTE(v27) = 6;
    type metadata accessor for TicketAttribution(0);
    sub_1E1051250(&qword_1ECE88CE8, type metadata accessor for TicketAttribution, &protocol conformance descriptor for TicketAttribution);
    sub_1E10AE85C();
    v27 = *(v3 + *(v13 + 44));
    v26[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E1050F30(&qword_1ECE88CF8, &qword_1ECE88D00, &protocol conformance descriptor for Ticket, MEMORY[0x1E69E6300]);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t Nightlife.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for TicketAttribution(0);
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v31 = &v30 - v9;
  v10 = type metadata accessor for EventAttribution(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v30 - v18;
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v20 = type metadata accessor for Nightlife(0);
  sub_1E10ADACC();
  sub_1E1051250(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  type metadata accessor for Time(0);
  sub_1E10ADE6C();
  sub_1E1051250(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E10ADFFC();
  v21 = (v1 + v20[8]);
  v22 = v21[7];
  v40 = v21[6];
  v41 = v22;
  v23 = v21[9];
  v42 = v21[8];
  v43 = v23;
  v24 = v21[3];
  v36 = v21[2];
  v37 = v24;
  v25 = v21[5];
  v38 = v21[4];
  v39 = v25;
  v26 = v21[1];
  v34 = *v21;
  v35 = v26;
  Venue.hash(into:)(a1);
  sub_1E0FEDC50(v1 + v20[9], v19, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    sub_1E0FEDD58(v19, v15, type metadata accessor for EventAttribution);
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    sub_1E10ADBBC();
    sub_1E1051250(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E10ADFFC();
    sub_1E1051034(v15, type metadata accessor for EventAttribution);
  }

  v27 = v31;
  sub_1E0FEDC50(v2 + v20[10], v31, &qword_1ECE88C80, &qword_1E10AF9D0);
  if ((*(v32 + 48))(v27, 1, v33) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v28 = v30;
    sub_1E0FEDD58(v27, v30, type metadata accessor for TicketAttribution);
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    sub_1E10ADBBC();
    sub_1E1051250(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E10ADFFC();
    sub_1E1051034(v28, type metadata accessor for TicketAttribution);
  }

  return sub_1E0FEBCA4(a1, *(v2 + v20[11]));
}

uint64_t Nightlife.hashValue.getter()
{
  sub_1E10AE9CC();
  Nightlife.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Nightlife.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v48 = v45 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v45 - v8;
  v10 = type metadata accessor for Time(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A6C0, &qword_1E10B6438);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v45 - v17;
  v19 = type metadata accessor for Nightlife(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E1050E8C();
  v51 = v18;
  v25 = v52;
  sub_1E10AEA3C();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v45[1] = v10;
  v46 = v14;
  v26 = v49;
  v52 = v19;
  LOBYTE(v54) = 0;
  sub_1E0FEDD04();
  v27 = v50;
  sub_1E10AE7FC();
  v28 = *(&v56 + 1);
  v29 = v23;
  *v23 = v56;
  v23[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A6B0, &qword_1E10B6430);
  LOBYTE(v54) = 1;
  sub_1E1050EE0(&qword_1ECE8A6C8, &protocol conformance descriptor for EventCategory<A>);
  sub_1E10AE7FC();
  v30 = v26;
  v31 = *(&v56 + 1);
  *(v29 + 16) = v56;
  *(v29 + 24) = v31;
  *(v29 + 32) = v57;
  LOBYTE(v56) = 2;
  *(v29 + 48) = sub_1E10AE7BC();
  *(v29 + 56) = v32;
  LOBYTE(v56) = 3;
  sub_1E1051250(&qword_1EE17EE88, type metadata accessor for Time, &protocol conformance descriptor for Time);
  v33 = v46;
  sub_1E10AE7FC();
  v34 = v52;
  sub_1E0FEDD58(v33, v29 + v52[7], type metadata accessor for Time);
  v55 = 4;
  sub_1E0FEDDC0();
  sub_1E10AE7FC();
  LODWORD(v46) = 1;
  v35 = (v29 + v34[8]);
  v36 = v63;
  v37 = v64;
  v35[6] = v62;
  v35[7] = v36;
  v38 = v65;
  v35[8] = v37;
  v35[9] = v38;
  v39 = v59;
  v35[2] = v58;
  v35[3] = v39;
  v40 = v61;
  v35[4] = v60;
  v35[5] = v40;
  v41 = v57;
  *v35 = v56;
  v35[1] = v41;
  type metadata accessor for EventAttribution(0);
  LOBYTE(v54) = 5;
  sub_1E1051250(&qword_1ECE88D30, type metadata accessor for EventAttribution, &protocol conformance descriptor for EventAttribution);
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v9, v29 + v34[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  type metadata accessor for TicketAttribution(0);
  LOBYTE(v54) = 6;
  sub_1E1051250(&qword_1ECE88D50, type metadata accessor for TicketAttribution, &protocol conformance descriptor for TicketAttribution);
  v42 = v48;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v42, v29 + v34[10], &qword_1ECE88C80, &qword_1E10AF9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
  v53 = 7;
  sub_1E1050F30(&qword_1ECE88D58, &qword_1ECE88D60, &protocol conformance descriptor for Ticket, MEMORY[0x1E69E6330]);
  v43 = v51;
  sub_1E10AE7FC();
  (*(v30 + 8))(v43, v27);
  *(v29 + v34[11]) = v54;
  sub_1E1050FCC(v29, v47, type metadata accessor for Nightlife);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return sub_1E1051034(v29, type metadata accessor for Nightlife);
}

uint64_t sub_1E1050420()
{
  sub_1E10AE9CC();
  Nightlife.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E1050464(uint64_t a1)
{
  sub_1E10AE9CC();
  Nightlife.hash(into:)(v2);
  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents9NightlifeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TicketAttribution(0);
  v85 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v82 = (&v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v83 = (&v79 - v10);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F40, &qword_1E10B0600);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v79 - v13;
  v15 = type metadata accessor for EventAttribution(0);
  v86 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v79 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F50, &qword_1E10B0610);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v79 - v27;
  if (*a1 != *a2 && (sub_1E10AE8FC() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_31;
  }

  v79 = v4;
  v80 = v14;
  v81 = type metadata accessor for Nightlife(0);
  v29 = v81[7];
  v30 = a1 + v29;
  v31 = a2 + v29;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    goto LABEL_31;
  }

  v32 = type metadata accessor for Time(0);
  if ((MEMORY[0x1E12ED5E0](&v30[*(v32 + 20)], &v31[*(v32 + 20)]) & 1) == 0)
  {
    goto LABEL_31;
  }

  v33 = v81;
  v34 = (a1 + v81[8]);
  v35 = v34[5];
  v36 = v34[7];
  v113 = v34[6];
  v114 = v36;
  v37 = v34[9];
  v38 = v34[7];
  v115 = v34[8];
  v116 = v37;
  v39 = v34[3];
  v40 = v34[1];
  v109 = v34[2];
  v110 = v39;
  v41 = v34[5];
  v42 = v34[3];
  v111 = v34[4];
  v112 = v41;
  v43 = v34[1];
  v108[0] = *v34;
  v108[1] = v43;
  v102 = v111;
  v103 = v35;
  v100 = v109;
  v101 = v42;
  v44 = v34[9];
  v106 = v115;
  v107 = v44;
  v104 = v113;
  v105 = v38;
  v98 = v108[0];
  v99 = v40;
  v45 = (a2 + v81[8]);
  v46 = v45[7];
  v47 = v45[5];
  v122 = v45[6];
  v123 = v46;
  v48 = v45[7];
  v49 = v45[9];
  v124 = v45[8];
  v125 = v49;
  v50 = v45[3];
  v51 = v45[1];
  v118 = v45[2];
  v119 = v50;
  v52 = v45[3];
  v53 = v45[5];
  v120 = v45[4];
  v121 = v53;
  v54 = v45[1];
  v117[0] = *v45;
  v117[1] = v54;
  v94 = v122;
  v95 = v48;
  v55 = v45[9];
  v96 = v124;
  v97 = v55;
  v90 = v118;
  v91 = v52;
  v92 = v120;
  v93 = v47;
  v88 = v117[0];
  v89 = v51;
  sub_1E0FE6720(v108, v87);
  sub_1E0FE6720(v117, v87);
  v56 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v98, &v88);
  v126[6] = v94;
  v126[7] = v95;
  v126[8] = v96;
  v126[9] = v97;
  v126[2] = v90;
  v126[3] = v91;
  v126[4] = v92;
  v126[5] = v93;
  v126[0] = v88;
  v126[1] = v89;
  sub_1E0FEDAB8(v126);
  v127[6] = v104;
  v127[7] = v105;
  v127[8] = v106;
  v127[9] = v107;
  v127[2] = v100;
  v127[3] = v101;
  v127[4] = v102;
  v127[5] = v103;
  v127[0] = v98;
  v127[1] = v99;
  sub_1E0FEDAB8(v127);
  if (!v56)
  {
    goto LABEL_31;
  }

  v57 = v33[9];
  v58 = *(v24 + 48);
  sub_1E0FEDC50(a1 + v57, v28, &qword_1ECE88C70, &qword_1E10AF9C8);
  v59 = a2 + v57;
  v60 = v58;
  sub_1E0FEDC50(v59, &v28[v58], &qword_1ECE88C70, &qword_1E10AF9C8);
  v61 = *(v86 + 48);
  if (v61(v28, 1, v15) != 1)
  {
    sub_1E0FEDC50(v28, v23, &qword_1ECE88C70, &qword_1E10AF9C8);
    v86 = v60;
    v64 = v61(&v28[v60], 1, v15);
    v63 = v80;
    if (v64 != 1)
    {
      sub_1E0FEDD58(&v28[v86], v19, type metadata accessor for EventAttribution);
      if (*v23 == *v19 && v23[1] == v19[1] || (sub_1E10AE8FC() & 1) != 0)
      {
        v68 = sub_1E10ADB8C();
        sub_1E1051034(v19, type metadata accessor for EventAttribution);
        sub_1E1051034(v23, type metadata accessor for EventAttribution);
        sub_1E0FF0440(v28, &qword_1ECE88C70, &qword_1E10AF9C8);
        if ((v68 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_23;
      }

      sub_1E1051034(v19, type metadata accessor for EventAttribution);
      sub_1E1051034(v23, type metadata accessor for EventAttribution);
      v65 = &qword_1ECE88C70;
      v66 = &qword_1E10AF9C8;
LABEL_18:
      v67 = v28;
LABEL_30:
      sub_1E0FF0440(v67, v65, v66);
      goto LABEL_31;
    }

    sub_1E1051034(v23, type metadata accessor for EventAttribution);
LABEL_17:
    v65 = &qword_1ECE88F50;
    v66 = &qword_1E10B0610;
    goto LABEL_18;
  }

  v62 = v61(&v28[v60], 1, v15);
  v63 = v80;
  if (v62 != 1)
  {
    goto LABEL_17;
  }

  sub_1E0FF0440(v28, &qword_1ECE88C70, &qword_1E10AF9C8);
LABEL_23:
  v69 = v81[10];
  v70 = *(v84 + 48);
  sub_1E0FEDC50(a1 + v69, v63, &qword_1ECE88C80, &qword_1E10AF9D0);
  sub_1E0FEDC50(a2 + v69, v63 + v70, &qword_1ECE88C80, &qword_1E10AF9D0);
  v71 = *(v85 + 48);
  v72 = v79;
  if (v71(v63, 1, v79) == 1)
  {
    if (v71(v63 + v70, 1, v72) == 1)
    {
      sub_1E0FF0440(v63, &qword_1ECE88C80, &qword_1E10AF9D0);
LABEL_37:
      v74 = sub_1E0FFE0A4(*(a1 + v81[11]), *(a2 + v81[11]));
      return v74 & 1;
    }

    goto LABEL_28;
  }

  v73 = v83;
  sub_1E0FEDC50(v63, v83, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v71(v63 + v70, 1, v72) == 1)
  {
    sub_1E1051034(v73, type metadata accessor for TicketAttribution);
LABEL_28:
    v65 = &qword_1ECE88F40;
    v66 = &qword_1E10B0600;
LABEL_29:
    v67 = v63;
    goto LABEL_30;
  }

  v76 = v63 + v70;
  v77 = v82;
  sub_1E0FEDD58(v76, v82, type metadata accessor for TicketAttribution);
  if ((*v73 != *v77 || v73[1] != v77[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    sub_1E1051034(v77, type metadata accessor for TicketAttribution);
    sub_1E1051034(v73, type metadata accessor for TicketAttribution);
    v65 = &qword_1ECE88C80;
    v66 = &qword_1E10AF9D0;
    goto LABEL_29;
  }

  v78 = sub_1E10ADB8C();
  sub_1E1051034(v77, type metadata accessor for TicketAttribution);
  sub_1E1051034(v73, type metadata accessor for TicketAttribution);
  sub_1E0FF0440(v63, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v78)
  {
    goto LABEL_37;
  }

LABEL_31:
  v74 = 0;
  return v74 & 1;
}

unint64_t sub_1E1050E8C()
{
  result = qword_1ECE8A6A8;
  if (!qword_1ECE8A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A6A8);
  }

  return result;
}

uint64_t sub_1E1050EE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A6B0, &qword_1E10B6430);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1050F30(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E1051250(a2, type metadata accessor for Ticket, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1050FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E1051034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E1051094(uint64_t a1)
{
  result = sub_1E1051250(&qword_1EE17E598, type metadata accessor for Nightlife, &protocol conformance descriptor for Nightlife);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E1051134(void *a1)
{
  a1[1] = sub_1E1051250(&qword_1EE17E5B0, type metadata accessor for Nightlife, &protocol conformance descriptor for Nightlife);
  a1[2] = sub_1E1051250(qword_1EE17E5C8, type metadata accessor for Nightlife, &protocol conformance descriptor for Nightlife);
  a1[3] = sub_1E1051250(&qword_1EE17E5C0, type metadata accessor for Nightlife, &protocol conformance descriptor for Nightlife);
  result = sub_1E1051250(&qword_1EE17E5A8, type metadata accessor for Nightlife, &protocol conformance descriptor for Nightlife);
  a1[4] = result;
  return result;
}

uint64_t sub_1E1051250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E10512C0(uint64_t a1)
{
  sub_1E105143C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Time(319);
    if (v2 <= 0x3F)
    {
      sub_1E100EF28(319, &qword_1ECE88DE0, type metadata accessor for EventAttribution, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E100EF28(319, qword_1ECE88DE8, type metadata accessor for TicketAttribution, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E100EF28(319, &qword_1EE17E428, type metadata accessor for Ticket, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E105143C(uint64_t a1)
{
  if (!qword_1ECE8A6D0)
  {
    v2 = type metadata accessor for Nightlife(255);
    v3 = sub_1E1051250(&qword_1EE17E5A0, type metadata accessor for Nightlife, &protocol conformance descriptor for Nightlife);
    v5 = type metadata accessor for EventCategory(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECE8A6D0);
    }
  }
}

unint64_t sub_1E10514E4()
{
  result = qword_1ECE8A6D8;
  if (!qword_1ECE8A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A6D8);
  }

  return result;
}

unint64_t sub_1E105153C()
{
  result = qword_1ECE8A6E0;
  if (!qword_1ECE8A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A6E0);
  }

  return result;
}

unint64_t sub_1E1051594()
{
  result = qword_1ECE8A6E8;
  if (!qword_1ECE8A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A6E8);
  }

  return result;
}

void sub_1E1051630(uint64_t a1)
{
  sub_1E105170C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EventAttributes.Time(319);
    if (v2 <= 0x3F)
    {
      sub_1E105175C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E105170C()
{
  if (!qword_1ECE8A700)
  {
    v0 = sub_1E10AE4EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE8A700);
    }
  }
}

void sub_1E105175C(uint64_t a1)
{
  if (!qword_1ECE8A708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A710, &qword_1E10B66E8);
    v1 = sub_1E10AE4EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE8A708);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E10517F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E105183C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1E1051898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E10518E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1E105193C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = 0;
  v60 = *(type metadata accessor for PartialEventResource(0) - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v72 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v59 - v11);
  v13 = &qword_1ECE89878;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v65 = &v59 - v20;
  v21 = a2 + 64;
  v22 = 1 << *(a2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a2 + 64);
  v25 = (v22 + 63) >> 6;
  v69 = a2;

  v62 = MEMORY[0x1E69E7CC0];
  v63 = v25;
  v26 = 0;
  v71 = v12;
  v64 = v21;
  v68 = a1;
  v66 = 0;
LABEL_4:
  v27 = v26;
  if (!v24)
  {
    goto LABEL_6;
  }

  do
  {
    v28 = v13;
    v26 = v27;
LABEL_10:
    v29 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v30 = v29 | (v26 << 6);
    v31 = v69;
    v32 = *(v69 + 48);
    v33 = sub_1E10ADCFC();
    v34 = *(v33 - 8);
    v35 = v34;
    v36 = v32 + *(v34 + 72) * v30;
    v37 = *(v34 + 16);
    v38 = v65;
    v70 = v33;
    v37(v65, v36);
    v39 = (*(v31 + 56) + 16 * v30);
    v40 = *v39;
    v41 = v39[1];
    v42 = (v38 + *(v67 + 48));
    *v42 = v40;
    v42[1] = v41;
    sub_1E0FEDC50(v38, v17, v28, &unk_1E10B6A20);

    v43 = sub_1E10AE74C();

    if (v43 < 8)
    {
      sub_1E0FF0440(v38, v28, &unk_1E10B6A20);
      (*(v35 + 8))(v17, v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1 = v68;
      v13 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v62 = sub_1E1058E04(0, *(v62 + 2) + 1, 1, v62);
      }

      v5 = v66;
      v25 = v63;
      v46 = *(v62 + 2);
      v45 = *(v62 + 3);
      if (v46 >= v45 >> 1)
      {
        v62 = sub_1E1058E04((v45 > 1), v46 + 1, 1, v62);
      }

      v47 = v62;
      *(v62 + 2) = v46 + 1;
      v47[v46 + 32] = v43;
      v12 = v71;
      v21 = v64;
      goto LABEL_4;
    }

    sub_1E0FF0440(v38, v28, &unk_1E10B6A20);
    (*(v35 + 8))(v17, v70);
    v27 = v26;
    a1 = v68;
    v12 = v71;
    v13 = v28;
    v5 = v66;
    v25 = v63;
    v21 = v64;
  }

  while (v24);
  while (1)
  {
LABEL_6:
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_32:

      sub_1E1058490(v12, type metadata accessor for PartialEventResource);

      __break(1u);
      return result;
    }

    if (v26 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v26);
    ++v27;
    if (v24)
    {
      v28 = v13;
      goto LABEL_10;
    }
  }

  v48 = sub_1E102736C(v62);

  v49 = *(v61 + 16);
  if (v49)
  {
    v50 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v51 = *(v60 + 72);
    v52 = v61 + v50;
    v53 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1E105BCD0(v52, v12, type metadata accessor for PartialEventResource);
      v54 = sub_1E1057B14(v12, v48, a1);
      if (v5)
      {
        goto LABEL_32;
      }

      if (v54)
      {
        sub_1E105BC68(v12, v72, type metadata accessor for PartialEventResource);
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v53;
        if ((v55 & 1) == 0)
        {
          sub_1E1059D6C(0, *(v53 + 16) + 1, 1);
          v53 = v73;
        }

        v57 = *(v53 + 16);
        v56 = *(v53 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1E1059D6C((v56 > 1), v57 + 1, 1);
          v53 = v73;
        }

        *(v53 + 16) = v57 + 1;
        sub_1E105BC68(v72, v53 + v50 + v57 * v51, type metadata accessor for PartialEventResource);
        v12 = v71;
      }

      else
      {
        sub_1E1058490(v12, type metadata accessor for PartialEventResource);
      }

      v52 += v51;
      if (!--v49)
      {
        goto LABEL_30;
      }
    }
  }

  v53 = MEMORY[0x1E69E7CC0];
LABEL_30:

  return v53;
}

char *sub_1E1051EE4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A930, &unk_1E10B6BE0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v262 = &v236 - v4;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A938, &qword_1E10BCC00);
  v254 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v239 = &v236 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v238 = &v236 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A940, &unk_1E10B6BF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v279 = &v236 - v13;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A948, &qword_1E10BCC10);
  v255 = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v241 = &v236 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v240 = &v236 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A950, &unk_1E10B6C00);
  MEMORY[0x1EEE9AC00](v20, v21);
  v265 = &v236 - v22;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A958, &qword_1E10BCC20);
  v256 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v243 = &v236 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v242 = &v236 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A960, &unk_1E10B6C10);
  MEMORY[0x1EEE9AC00](v29, v30);
  v267 = &v236 - v31;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A968, &qword_1E10BCC50);
  v257 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v245 = &v236 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v244 = &v236 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A970, &unk_1E10B6C20);
  MEMORY[0x1EEE9AC00](v38, v39);
  v270 = &v236 - v40;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A978, &qword_1E10BCC40);
  v258 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v41, v42);
  v247 = &v236 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v246 = &v236 - v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A980, &unk_1E10B6C30);
  MEMORY[0x1EEE9AC00](v47, v48);
  v273 = &v236 - v49;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A988, &qword_1E10BCC30);
  v259 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v50, v51);
  v249 = &v236 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v248 = &v236 - v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A990, &unk_1E10B6C40);
  MEMORY[0x1EEE9AC00](v56, v57);
  v277 = &v236 - v58;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A998, &qword_1E10BCC60);
  v260 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v59, v60);
  v251 = &v236 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v250 = &v236 - v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A9A0, &unk_1E10B6C50);
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v236 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A9A8, &qword_1E10BCC70);
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v71, v72);
  v253 = &v236 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74, v75);
  v252 = &v236 - v76;
  v77 = *(type metadata accessor for PartialEventResource(0) - 8);
  MEMORY[0x1EEE9AC00](v78, v79);
  v280 = &v236 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81, v82);
  v281 = &v236 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v271 = &v236 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v283 = &v236 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v285 = (&v236 - v92);
  MEMORY[0x1EEE9AC00](v93, v94);
  v96 = &v236 - v95;
  MEMORY[0x1EEE9AC00](v97, v98);
  v100 = (&v236 - v99);
  MEMORY[0x1EEE9AC00](v101, v102);
  v104 = &v236 - v103;
  v105 = MEMORY[0x1E69E7CC0];
  v106 = sub_1E1058EF8(0, 8, 0, MEMORY[0x1E69E7CC0], &qword_1ECE8AA38, &qword_1E10B6CB0, &_s20PartialEventResponseV9ValueTypeON);
  v278 = v106;
  v287 = a1;
  v107 = *(a1 + 16);
  if (!v107)
  {
    v268 = v105;
    goto LABEL_20;
  }

  v274 = v69;
  v108 = v70;
  v109 = 0;
  v237 = v108;
  v110 = (v108 + 56);
  v111 = MEMORY[0x1E69E7CC0];
  v268 = MEMORY[0x1E69E7CC0];
  v275 = v68;
  v282 = v100;
  do
  {
    v112 = v109;
    while (1)
    {
      if (v112 >= v107)
      {
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }

      v106 = sub_1E105BCD0(v287 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v112, v104, type metadata accessor for PartialEventResource);
      v109 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        goto LABEL_216;
      }

      v113 = v107;
      v114 = v77;
      v115 = v96;
      v116 = v110;
      sub_1E10AE06C();
      v105 = sub_1E10AE74C();

      if (v105 - 1 >= 7)
      {
        break;
      }

      v106 = sub_1E1058490(v104, type metadata accessor for PartialEventResource);
LABEL_5:
      v110 = v116;
      ++v112;
      v126 = v109 == v113;
      v96 = v115;
      v77 = v114;
      v107 = v113;
      v100 = v282;
      if (v126)
      {
        goto LABEL_20;
      }
    }

    if (v105)
    {
      sub_1E1031F0C();
      swift_allocError();
      *v224 = 2;
      swift_willThrow();
      sub_1E1058490(v104, type metadata accessor for PartialEventResource);

      goto LABEL_213;
    }

    v117 = v284;
    sub_1E1055D50(&v286);
    v284 = v117;
    if (v117)
    {
      sub_1E1058490(v104, type metadata accessor for PartialEventResource);

      goto LABEL_213;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
    v118 = v274;
    v105 = v275;
    v119 = swift_dynamicCast();
    v120 = *v116;
    if ((v119 & 1) == 0)
    {
      v120(v105, 1, 1, v118);
      sub_1E1058490(v104, type metadata accessor for PartialEventResource);
      v106 = sub_1E0FF0440(v105, &qword_1ECE8A9A0, &unk_1E10B6C50);
      goto LABEL_5;
    }

    v120(v105, 0, 1, v118);
    v121 = v252;
    sub_1E0FEDEF4(v105, v252, &qword_1ECE8A9A8, &qword_1E10BCC70);
    sub_1E0FEDC50(v121, v253, &qword_1ECE8A9A8, &qword_1E10BCC70);
    v110 = v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v268 = sub_1E1059860(0, v268[2] + 1, 1, v268, &qword_1ECE8A9E8, &qword_1E10B6CA0, &qword_1ECE8A9A8, &qword_1E10BCC70);
    }

    v96 = v115;
    v105 = v268[2];
    v122 = v268[3];
    v77 = v114;
    v236 = v105 + 1;
    if (v105 >= v122 >> 1)
    {
      v268 = sub_1E1059860((v122 > 1), v105 + 1, 1, v268, &qword_1ECE8A9E8, &qword_1E10B6CA0, &qword_1ECE8A9A8, &qword_1E10BCC70);
    }

    v107 = v113;
    sub_1E0FF0440(v252, &qword_1ECE8A9A8, &qword_1E10BCC70);
    v123 = v268;
    v268[2] = v236;
    sub_1E0FEDEF4(v253, v123 + ((*(v237 + 80) + 32) & ~*(v237 + 80)) + *(v237 + 72) * v105, &qword_1ECE8A9A8, &qword_1E10BCC70);
    v106 = sub_1E1058490(v104, type metadata accessor for PartialEventResource);
    v100 = v282;
  }

  while (v109 != v107);
LABEL_20:
  v106 = v268;
  if (!v268[2])
  {

    v109 = v278;
    if (!v107)
    {
      goto LABEL_67;
    }

LABEL_23:
    v105 = 0;
    v111 = v260 + 56;
    v278 = (v260 + 56);
    v106 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v275 = v106;
    v125 = v105;
    while (1)
    {
      if (v125 >= v107)
      {
        goto LABEL_217;
      }

      v106 = sub_1E105BCD0(v287 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v125, v100, type metadata accessor for PartialEventResource);
      v105 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        goto LABEL_218;
      }

      sub_1E10AE06C();
      v104 = sub_1E10AE74C();

      v126 = v104 - 2 < 6 || v104 == 0;
      if (v126)
      {
        v106 = sub_1E1058490(v100, type metadata accessor for PartialEventResource);
      }

      else
      {
        if (v104 != 1)
        {
          sub_1E1031F0C();
          swift_allocError();
          *v226 = 2;
          swift_willThrow();
          sub_1E1058490(v100, type metadata accessor for PartialEventResource);

          goto LABEL_213;
        }

        v127 = v284;
        sub_1E1055D50(&v286);
        v284 = v127;
        if (v127)
        {
          sub_1E1058490(v100, type metadata accessor for PartialEventResource);

          goto LABEL_213;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
        v128 = v276;
        v104 = v277;
        v129 = swift_dynamicCast();
        v130 = *v278;
        if (v129)
        {
          v130(v104, 0, 1, v128);
          v131 = v104;
          v132 = v250;
          sub_1E0FEDEF4(v131, v250, &qword_1ECE8A998, &qword_1E10BCC60);
          sub_1E0FEDC50(v132, v251, &qword_1ECE8A998, &qword_1E10BCC60);
          v133 = v275;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v133 = sub_1E1059860(0, *(v133 + 2) + 1, 1, v133, &qword_1ECE8A9E0, &qword_1E10B6C98, &qword_1ECE8A998, &qword_1E10BCC60);
          }

          v135 = *(v133 + 2);
          v134 = *(v133 + 3);
          v136 = v133;
          v275 = (v135 + 1);
          if (v135 >= v134 >> 1)
          {
            v136 = sub_1E1059860((v134 > 1), v135 + 1, 1, v133, &qword_1ECE8A9E0, &qword_1E10B6C98, &qword_1ECE8A998, &qword_1E10BCC60);
          }

          v104 = &qword_1ECE8A998;
          sub_1E0FF0440(v250, &qword_1ECE8A998, &qword_1E10BCC60);
          *(v136 + 2) = v275;
          sub_1E0FEDEF4(v251, &v136[((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v135], &qword_1ECE8A998, &qword_1E10BCC60);
          sub_1E1058490(v100, type metadata accessor for PartialEventResource);
          v106 = v136;
          if (v105 != v107)
          {
            goto LABEL_24;
          }

          goto LABEL_44;
        }

        v130(v104, 1, 1, v128);
        sub_1E1058490(v100, type metadata accessor for PartialEventResource);
        v106 = sub_1E0FF0440(v104, &qword_1ECE8A990, &unk_1E10B6C40);
      }

      ++v125;
      if (v105 == v107)
      {
        v106 = v275;
LABEL_44:
        if (!*(v106 + 2))
        {
          goto LABEL_68;
        }

        goto LABEL_45;
      }
    }
  }

  v109 = v278;
  v104 = *(v278 + 2);
  v111 = *(v278 + 3);
  v105 = v104 + 1;
  if (v104 >= v111 >> 1)
  {
    goto LABEL_231;
  }

  while (2)
  {
    *(v109 + 16) = v105;
    v124 = (v109 + 16 * v104);
    *(v124 + 4) = v106;
    v124[40] = 0;
    if (v107)
    {
      goto LABEL_23;
    }

LABEL_67:
    v106 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_45:
      v104 = *(v109 + 16);
      v137 = *(v109 + 24);
      if (v104 >= v137 >> 1)
      {
        v234 = v106;
        v109 = sub_1E1058EF8((v137 > 1), v104 + 1, 1, v109, &qword_1ECE8AA38, &qword_1E10B6CB0, &_s20PartialEventResponseV9ValueTypeON);
        v106 = v234;
      }

      *(v109 + 16) = v104 + 1;
      v138 = (v109 + 16 * v104);
      *(v138 + 4) = v106;
      v138[40] = 1;
      if (!v107)
      {
        break;
      }

      goto LABEL_48;
    }

LABEL_68:

    if (v107)
    {
LABEL_48:
      v105 = 0;
      v139 = (v259 + 56);
      v111 = MEMORY[0x1E69E7CC0];
      v282 = MEMORY[0x1E69E7CC0];
      v100 = &unk_1F5BED160;
      v278 = v109;
LABEL_49:
      v109 = v105;
      while (v109 < v107)
      {
        v106 = sub_1E105BCD0(v287 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v109, v96, type metadata accessor for PartialEventResource);
        v105 = v109 + 1;
        if (__OFADD__(v109, 1))
        {
          goto LABEL_220;
        }

        sub_1E10AE06C();
        v104 = sub_1E10AE74C();

        if (v104 > 7)
        {
          sub_1E1031F0C();
          swift_allocError();
          *v227 = 2;
          swift_willThrow();
          sub_1E1058490(v96, type metadata accessor for PartialEventResource);

          goto LABEL_213;
        }

        if (v104 == 4)
        {
          v140 = v284;
          sub_1E1055D50(&v286);
          v284 = v140;
          if (v140)
          {
            sub_1E1058490(v96, type metadata accessor for PartialEventResource);

            goto LABEL_213;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
          v141 = v272;
          v104 = v273;
          v142 = swift_dynamicCast();
          v143 = *v139;
          if (v142)
          {
            v143(v104, 0, 1, v141);
            v144 = v104;
            v145 = v248;
            sub_1E0FEDEF4(v144, v248, &qword_1ECE8A988, &qword_1E10BCC30);
            sub_1E0FEDC50(v145, v249, &qword_1ECE8A988, &qword_1E10BCC30);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v282 = sub_1E1059860(0, v282[2] + 1, 1, v282, &qword_1ECE8A9D8, &qword_1E10B6C90, &qword_1ECE8A988, &qword_1E10BCC30);
            }

            v109 = v278;
            v147 = v282[2];
            v146 = v282[3];
            v277 = (v147 + 1);
            if (v147 >= v146 >> 1)
            {
              v282 = sub_1E1059860((v146 > 1), v147 + 1, 1, v282, &qword_1ECE8A9D8, &qword_1E10B6C90, &qword_1ECE8A988, &qword_1E10BCC30);
            }

            v104 = &qword_1ECE8A988;
            sub_1E0FF0440(v248, &qword_1ECE8A988, &qword_1E10BCC30);
            v148 = v282;
            v282[2] = v277;
            sub_1E0FEDEF4(v249, v148 + ((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v147, &qword_1ECE8A988, &qword_1E10BCC30);
            v106 = sub_1E1058490(v96, type metadata accessor for PartialEventResource);
            if (v105 != v107)
            {
              goto LABEL_49;
            }

            goto LABEL_70;
          }

          v143(v104, 1, 1, v141);
          sub_1E1058490(v96, type metadata accessor for PartialEventResource);
          v106 = sub_1E0FF0440(v104, &qword_1ECE8A980, &unk_1E10B6C30);
        }

        else
        {
          v106 = sub_1E1058490(v96, type metadata accessor for PartialEventResource);
        }

        ++v109;
        if (v105 == v107)
        {
          v109 = v278;
          goto LABEL_70;
        }
      }

LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      v233 = v106;
      v109 = sub_1E1058EF8((v111 > 1), v105, 1, v109, &qword_1ECE8AA38, &qword_1E10B6CB0, &_s20PartialEventResponseV9ValueTypeON);
      v106 = v233;
      continue;
    }

    break;
  }

  v282 = MEMORY[0x1E69E7CC0];
LABEL_70:
  v106 = v282;
  if (v282[2])
  {
    v150 = *(v109 + 16);
    v149 = *(v109 + 24);
    if (v150 >= v149 >> 1)
    {
      v235 = v282;
      v109 = sub_1E1058EF8((v149 > 1), v150 + 1, 1, v109, &qword_1ECE8AA38, &qword_1E10B6CB0, &_s20PartialEventResponseV9ValueTypeON);
      v106 = v235;
    }

    *(v109 + 16) = v150 + 1;
    v151 = (v109 + 16 * v150);
    *(v151 + 4) = v106;
    v151[40] = 4;
    v104 = v285;
    if (v107)
    {
LABEL_74:
      v96 = 0;
      v111 = v258;
      v152 = (v258 + 56);
      v105 = MEMORY[0x1E69E7CC0];
      v100 = &unk_1F5BED160;
      v278 = v109;
      while (1)
      {
        v109 = v96;
        while (1)
        {
          if (v109 >= v107)
          {
            goto LABEL_221;
          }

          v106 = sub_1E105BCD0(v287 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v109, v104, type metadata accessor for PartialEventResource);
          v96 = (v109 + 1);
          if (__OFADD__(v109, 1))
          {
            goto LABEL_222;
          }

          sub_1E10AE06C();
          v153 = sub_1E10AE74C();

          if (v153 > 7)
          {
            sub_1E1031F0C();
            swift_allocError();
            *v228 = 2;
            swift_willThrow();
            v231 = v285;
            goto LABEL_212;
          }

          if (v153 == 3)
          {
            break;
          }

          v106 = sub_1E1058490(v285, type metadata accessor for PartialEventResource);
LABEL_77:
          ++v109;
          v104 = v285;
          if (v96 == v107)
          {
            v109 = v278;
            goto LABEL_92;
          }
        }

        v154 = v284;
        sub_1E1055D50(&v286);
        v284 = v154;
        if (v154)
        {
          v231 = v285;
          goto LABEL_212;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
        v155 = v270;
        v156 = v269;
        v157 = swift_dynamicCast();
        v158 = *v152;
        if ((v157 & 1) == 0)
        {
          break;
        }

        v158(v155, 0, 1, v156);
        v159 = v155;
        v160 = v246;
        sub_1E0FEDEF4(v159, v246, &qword_1ECE8A978, &qword_1E10BCC40);
        sub_1E0FEDC50(v160, v247, &qword_1ECE8A978, &qword_1E10BCC40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1E1059860(0, *(v105 + 16) + 1, 1, v105, &qword_1ECE8A9D0, &qword_1E10B6C88, &qword_1ECE8A978, &qword_1E10BCC40);
        }

        v109 = v278;
        v162 = *(v105 + 16);
        v161 = *(v105 + 24);
        v282 = (v162 + 1);
        if (v162 >= v161 >> 1)
        {
          v105 = sub_1E1059860((v161 > 1), v162 + 1, 1, v105, &qword_1ECE8A9D0, &qword_1E10B6C88, &qword_1ECE8A978, &qword_1E10BCC40);
        }

        sub_1E0FF0440(v246, &qword_1ECE8A978, &qword_1E10BCC40);
        *(v105 + 16) = v282;
        sub_1E0FEDEF4(v247, v105 + ((*(v258 + 80) + 32) & ~*(v258 + 80)) + *(v258 + 72) * v162, &qword_1ECE8A978, &qword_1E10BCC40);
        v104 = v285;
        v106 = sub_1E1058490(v285, type metadata accessor for PartialEventResource);
        if (v96 == v107)
        {
LABEL_92:
          if (*(v105 + 16))
          {
            goto LABEL_93;
          }

LABEL_120:

          v104 = v283;
          if (!v107)
          {
            goto LABEL_121;
          }

LABEL_96:
          v166 = 0;
          v111 = v257;
          v96 = (v257 + 56);
          v105 = MEMORY[0x1E69E7CC0];
          v100 = &unk_1F5BED160;
          v278 = v109;
LABEL_97:
          v109 = v166;
          while (1)
          {
            if (v109 >= v107)
            {
              goto LABEL_223;
            }

            v106 = sub_1E105BCD0(v287 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v109, v104, type metadata accessor for PartialEventResource);
            v166 = (v109 + 1);
            if (__OFADD__(v109, 1))
            {
              goto LABEL_224;
            }

            sub_1E10AE06C();
            v167 = sub_1E10AE74C();

            if (v167 > 7)
            {
              sub_1E1031F0C();
              swift_allocError();
              *v229 = 2;
              swift_willThrow();
              v231 = v283;
              goto LABEL_212;
            }

            if (v167 == 2)
            {
              v168 = v284;
              sub_1E1055D50(&v286);
              v284 = v168;
              if (v168)
              {
                v231 = v283;
                goto LABEL_212;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
              v169 = v267;
              v170 = v266;
              v171 = swift_dynamicCast();
              v172 = *v96;
              if (v171)
              {
                v172(v169, 0, 1, v170);
                v173 = v169;
                v174 = v244;
                sub_1E0FEDEF4(v173, v244, &qword_1ECE8A968, &qword_1E10BCC50);
                sub_1E0FEDC50(v174, v245, &qword_1ECE8A968, &qword_1E10BCC50);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v105 = sub_1E1059860(0, *(v105 + 16) + 1, 1, v105, &qword_1ECE8A9C8, &qword_1E10B6C80, &qword_1ECE8A968, &qword_1E10BCC50);
                }

                v109 = v278;
                v176 = *(v105 + 16);
                v175 = *(v105 + 24);
                v285 = (v176 + 1);
                if (v176 >= v175 >> 1)
                {
                  v105 = sub_1E1059860((v175 > 1), v176 + 1, 1, v105, &qword_1ECE8A9C8, &qword_1E10B6C80, &qword_1ECE8A968, &qword_1E10BCC50);
                }

                sub_1E0FF0440(v244, &qword_1ECE8A968, &qword_1E10BCC50);
                *(v105 + 16) = v285;
                sub_1E0FEDEF4(v245, v105 + ((*(v257 + 80) + 32) & ~*(v257 + 80)) + *(v257 + 72) * v176, &qword_1ECE8A968, &qword_1E10BCC50);
                v104 = v283;
                v106 = sub_1E1058490(v283, type metadata accessor for PartialEventResource);
                if (v166 != v107)
                {
                  goto LABEL_97;
                }

                goto LABEL_114;
              }

              v172(v169, 1, 1, v170);
              sub_1E1058490(v283, type metadata accessor for PartialEventResource);
              v106 = sub_1E0FF0440(v169, &qword_1ECE8A960, &unk_1E10B6C10);
            }

            else
            {
              v106 = sub_1E1058490(v283, type metadata accessor for PartialEventResource);
            }

            ++v109;
            v104 = v283;
            if (v166 == v107)
            {
              v109 = v278;
LABEL_114:
              if (!*(v105 + 16))
              {
                goto LABEL_122;
              }

              goto LABEL_115;
            }
          }
        }
      }

      v158(v155, 1, 1, v156);
      sub_1E1058490(v285, type metadata accessor for PartialEventResource);
      v106 = sub_1E0FF0440(v155, &qword_1ECE8A970, &unk_1E10B6C20);
      goto LABEL_77;
    }
  }

  else
  {

    v104 = v285;
    if (v107)
    {
      goto LABEL_74;
    }
  }

  v105 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_120;
  }

LABEL_93:
  v164 = *(v109 + 16);
  v163 = *(v109 + 24);
  if (v164 >= v163 >> 1)
  {
    v106 = sub_1E1058EF8((v163 > 1), v164 + 1, 1, v109, &qword_1ECE8AA38, &qword_1E10B6CB0, &_s20PartialEventResponseV9ValueTypeON);
    v109 = v106;
  }

  *(v109 + 16) = v164 + 1;
  v165 = (v109 + 16 * v164);
  *(v165 + 4) = v105;
  v165[40] = 3;
  v104 = v283;
  if (v107)
  {
    goto LABEL_96;
  }

LABEL_121:
  v105 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_115:
    v178 = *(v109 + 16);
    v177 = *(v109 + 24);
    v104 = v178 + 1;
    v179 = v281;
    if (v178 >= v177 >> 1)
    {
      v106 = sub_1E1058EF8((v177 > 1), v178 + 1, 1, v109, &qword_1ECE8AA38, &qword_1E10B6CB0, &_s20PartialEventResponseV9ValueTypeON);
      v109 = v106;
    }

    *(v109 + 16) = v104;
    v180 = (v109 + 16 * v178);
    *(v180 + 4) = v105;
    v180[40] = 2;
  }

  else
  {
LABEL_122:

    v179 = v281;
  }

  v278 = v109;
  v105 = v271;
  if (!v107)
  {
    v181 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_188;
    }

LABEL_143:
    v191 = v278;
    v193 = *(v278 + 2);
    v192 = *(v278 + 3);
    v104 = v193 + 1;
    if (v193 >= v192 >> 1)
    {
      v106 = sub_1E1058EF8((v192 > 1), v193 + 1, 1, v278, &qword_1ECE8AA38, &qword_1E10B6CB0, &_s20PartialEventResponseV9ValueTypeON);
      v191 = v106;
    }

    *(v191 + 2) = v104;
    v194 = &v191[16 * v193];
    *(v194 + 4) = v181;
    v194[40] = 5;
    v278 = v191;
    if (v107)
    {
      goto LABEL_146;
    }

LABEL_189:
    v105 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_166:
      v204 = v278;
      v206 = *(v278 + 2);
      v205 = *(v278 + 3);
      v104 = v206 + 1;
      if (v206 >= v205 >> 1)
      {
        v106 = sub_1E1058EF8((v205 > 1), v206 + 1, 1, v278, &qword_1ECE8AA38, &qword_1E10B6CB0, &_s20PartialEventResponseV9ValueTypeON);
        v204 = v106;
      }

      *(v204 + 2) = v104;
      v207 = &v204[16 * v206];
      *(v207 + 4) = v105;
      v207[40] = 6;
      v278 = v204;
      if (!v107)
      {
LABEL_191:
        v208 = MEMORY[0x1E69E7CC0];
LABEL_192:
        if (v208[2])
        {
LABEL_193:
          v220 = v278;
          v222 = *(v278 + 2);
          v221 = *(v278 + 3);
          if (v222 >= v221 >> 1)
          {
            v220 = sub_1E1058EF8((v221 > 1), v222 + 1, 1, v278, &qword_1ECE8AA38, &qword_1E10B6CB0, &_s20PartialEventResponseV9ValueTypeON);
          }

          *(v220 + 2) = v222 + 1;
          v223 = &v220[16 * v222];
          *(v223 + 4) = v208;
          v223[40] = 7;
        }

        else
        {
LABEL_197:

          return v278;
        }

        return v220;
      }
    }

    else
    {
LABEL_190:

      if (!v107)
      {
        goto LABEL_191;
      }
    }

    v109 = 0;
    v111 = v254;
    v96 = (v254 + 56);
    v208 = MEMORY[0x1E69E7CC0];
    v100 = &unk_1F5BED160;
LABEL_170:
    v285 = v208;
    v209 = v109;
    v105 = v280;
    while (v209 < v107)
    {
      v106 = sub_1E105BCD0(v287 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v209, v105, type metadata accessor for PartialEventResource);
      v109 = v209 + 1;
      if (__OFADD__(v209, 1))
      {
        goto LABEL_230;
      }

      sub_1E10AE06C();
      v104 = v210;
      v211 = sub_1E10AE74C();

      v212 = v211 == 7;
      if (v211 < 7)
      {
        v106 = sub_1E1058490(v105, type metadata accessor for PartialEventResource);
      }

      else
      {
        v213 = v262;
        if (!v212)
        {
          sub_1E1031F0C();
          swift_allocError();
          *v230 = 2;
          swift_willThrow();
          v231 = v280;
          goto LABEL_212;
        }

        v214 = v284;
        sub_1E1055D50(&v286);
        v284 = v214;
        if (v214)
        {
          v231 = v280;
          goto LABEL_212;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
        v104 = v261;
        v215 = swift_dynamicCast();
        v216 = *v96;
        if (v215)
        {
          v216(v213, 0, 1, v104);
          v217 = v238;
          sub_1E0FEDEF4(v213, v238, &qword_1ECE8A938, &qword_1E10BCC00);
          sub_1E0FEDC50(v217, v239, &qword_1ECE8A938, &qword_1E10BCC00);
          v208 = v285;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v208 = sub_1E1059860(0, v208[2] + 1, 1, v208, &qword_1ECE8A9B0, &qword_1E10B6C68, &qword_1ECE8A938, &qword_1E10BCC00);
          }

          v219 = v208[2];
          v218 = v208[3];
          v104 = v219 + 1;
          if (v219 >= v218 >> 1)
          {
            v208 = sub_1E1059860((v218 > 1), v219 + 1, 1, v208, &qword_1ECE8A9B0, &qword_1E10B6C68, &qword_1ECE8A938, &qword_1E10BCC00);
          }

          sub_1E0FF0440(v238, &qword_1ECE8A938, &qword_1E10BCC00);
          v208[2] = v104;
          sub_1E0FEDEF4(v239, v208 + ((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v219, &qword_1ECE8A938, &qword_1E10BCC00);
          v106 = sub_1E1058490(v280, type metadata accessor for PartialEventResource);
          if (v109 != v107)
          {
            goto LABEL_170;
          }

          goto LABEL_192;
        }

        v216(v213, 1, 1, v104);
        sub_1E1058490(v280, type metadata accessor for PartialEventResource);
        v106 = sub_1E0FF0440(v213, &qword_1ECE8A930, &unk_1E10B6BE0);
      }

      ++v209;
      v105 = v280;
      if (v109 == v107)
      {
        v208 = v285;
        if (v285[2])
        {
          goto LABEL_193;
        }

        goto LABEL_197;
      }
    }

    goto LABEL_229;
  }

  v109 = 0;
  v111 = v256;
  v96 = (v256 + 56);
  v181 = MEMORY[0x1E69E7CC0];
  v100 = &unk_1F5BED160;
  while (2)
  {
    v285 = v181;
    v182 = v109;
    while (2)
    {
      if (v182 >= v107)
      {
        goto LABEL_225;
      }

      v106 = sub_1E105BCD0(v287 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v182, v105, type metadata accessor for PartialEventResource);
      v109 = v182 + 1;
      if (__OFADD__(v182, 1))
      {
        goto LABEL_226;
      }

      sub_1E10AE06C();
      v104 = sub_1E10AE74C();

      if (v104 > 7)
      {
LABEL_200:
        sub_1E1031F0C();
        swift_allocError();
        *v225 = 2;
        swift_willThrow();
        v231 = v105;
        goto LABEL_212;
      }

      v179 = v281;
      if (v104 != 5)
      {
        v106 = sub_1E1058490(v105, type metadata accessor for PartialEventResource);
LABEL_127:
        ++v182;
        if (v109 == v107)
        {
          v181 = v285;
          goto LABEL_142;
        }

        continue;
      }

      break;
    }

    v183 = v284;
    sub_1E1055D50(&v286);
    v284 = v183;
    if (!v183)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
      v104 = v265;
      v184 = v264;
      v185 = swift_dynamicCast();
      v186 = *v96;
      if (v185)
      {
        v186(v104, 0, 1, v184);
        v187 = v104;
        v188 = v242;
        v104 = &qword_1ECE8A958;
        sub_1E0FEDEF4(v187, v242, &qword_1ECE8A958, &qword_1E10BCC20);
        sub_1E0FEDC50(v188, v243, &qword_1ECE8A958, &qword_1E10BCC20);
        v181 = v285;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_1E1059860(0, v181[2] + 1, 1, v181, &qword_1ECE8A9C0, &qword_1E10B6C78, &qword_1ECE8A958, &qword_1E10BCC20);
        }

        v105 = v271;
        v190 = v181[2];
        v189 = v181[3];
        v285 = (v190 + 1);
        if (v190 >= v189 >> 1)
        {
          v181 = sub_1E1059860((v189 > 1), v190 + 1, 1, v181, &qword_1ECE8A9C0, &qword_1E10B6C78, &qword_1ECE8A958, &qword_1E10BCC20);
        }

        sub_1E0FF0440(v242, &qword_1ECE8A958, &qword_1E10BCC20);
        v181[2] = v285;
        sub_1E0FEDEF4(v243, v181 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v190, &qword_1ECE8A958, &qword_1E10BCC20);
        v106 = sub_1E1058490(v105, type metadata accessor for PartialEventResource);
        v179 = v281;
        if (v109 == v107)
        {
LABEL_142:
          if (v181[2])
          {
            goto LABEL_143;
          }

LABEL_188:

          if (!v107)
          {
            goto LABEL_189;
          }

LABEL_146:
          v109 = 0;
          v111 = v255;
          v96 = (v255 + 56);
          v105 = MEMORY[0x1E69E7CC0];
          v100 = &unk_1F5BED160;
          while (2)
          {
            v285 = v105;
            v195 = v109;
LABEL_151:
            if (v195 >= v107)
            {
              goto LABEL_227;
            }

            v106 = sub_1E105BCD0(v287 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v195, v179, type metadata accessor for PartialEventResource);
            v109 = v195 + 1;
            if (__OFADD__(v195, 1))
            {
              goto LABEL_228;
            }

            sub_1E10AE06C();
            v105 = v179;
            v104 = sub_1E10AE74C();
            v196 = v279;

            if (v104 >= 6)
            {
              if (v104 == 6)
              {
                v197 = v284;
                sub_1E1055D50(&v286);
                v284 = v197;
                if (v197)
                {
                  v231 = v281;
                  goto LABEL_212;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A068, &qword_1E10B6C60);
                v104 = v263;
                v198 = swift_dynamicCast();
                v199 = *v96;
                if (v198)
                {
                  v199(v196, 0, 1, v104);
                  v201 = v240;
                  sub_1E0FEDEF4(v196, v240, &qword_1ECE8A948, &qword_1E10BCC10);
                  sub_1E0FEDC50(v201, v241, &qword_1ECE8A948, &qword_1E10BCC10);
                  v105 = v285;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v105 = sub_1E1059860(0, *(v105 + 16) + 1, 1, v105, &qword_1ECE8A9B8, &qword_1E10B6C70, &qword_1ECE8A948, &qword_1E10BCC10);
                  }

                  v203 = *(v105 + 16);
                  v202 = *(v105 + 24);
                  v104 = v203 + 1;
                  if (v203 >= v202 >> 1)
                  {
                    v105 = sub_1E1059860((v202 > 1), v203 + 1, 1, v105, &qword_1ECE8A9B8, &qword_1E10B6C70, &qword_1ECE8A948, &qword_1E10BCC10);
                  }

                  sub_1E0FF0440(v240, &qword_1ECE8A948, &qword_1E10BCC10);
                  *(v105 + 16) = v104;
                  sub_1E0FEDEF4(v241, v105 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v203, &qword_1ECE8A948, &qword_1E10BCC10);
                  v179 = v281;
                  v106 = sub_1E1058490(v281, type metadata accessor for PartialEventResource);
                  if (v109 != v107)
                  {
                    continue;
                  }

                  goto LABEL_165;
                }

                v199(v196, 1, 1, v104);
                v105 = v281;
                sub_1E1058490(v281, type metadata accessor for PartialEventResource);
                v200 = v196;
                v179 = v105;
                v106 = sub_1E0FF0440(v200, &qword_1ECE8A940, &unk_1E10B6BF0);
                goto LABEL_150;
              }

              v105 = v281;
              if (v104 != 7)
              {
                goto LABEL_200;
              }
            }

            break;
          }

          v106 = sub_1E1058490(v105, type metadata accessor for PartialEventResource);
          v179 = v105;
LABEL_150:
          ++v195;
          if (v109 == v107)
          {
            v105 = v285;
LABEL_165:
            if (!*(v105 + 16))
            {
              goto LABEL_190;
            }

            goto LABEL_166;
          }

          goto LABEL_151;
        }

        continue;
      }

      v186(v104, 1, 1, v184);
      v105 = v271;
      sub_1E1058490(v271, type metadata accessor for PartialEventResource);
      v106 = sub_1E0FF0440(v104, &qword_1ECE8A950, &unk_1E10B6C00);
      goto LABEL_127;
    }

    break;
  }

  v231 = v105;
LABEL_212:
  sub_1E1058490(v231, type metadata accessor for PartialEventResource);

LABEL_213:

  return v220;
}

uint64_t sub_1E1054A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1E10AEA0C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1E10AE8FC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1E1054B80(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1E109CC6C(*(a2 + 40), a1), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v28 = ~v5;
    v7 = 0x74726F7073;
    v8 = 0x65636E6164;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      if (v9 > 3)
      {
        if (*(*(a2 + 48) + v6) > 5u)
        {
          if (v9 == 6)
          {
            v13 = 0xD000000000000011;
            v14 = 0x80000001E10BF070;
          }

          else
          {
            v13 = 0x66696C746867696ELL;
            v14 = 0xE900000000000065;
          }
        }

        else
        {
          if (v9 == 4)
          {
            v13 = 0x72657461656874;
          }

          else
          {
            v13 = 0x657665656C707061;
          }

          if (v9 == 4)
          {
            v14 = 0xE700000000000000;
          }

          else
          {
            v14 = 0xEA0000000000746ELL;
          }
        }
      }

      else
      {
        if (v9 == 2)
        {
          v10 = 0x6D646E6173747261;
        }

        else
        {
          v10 = v8;
        }

        if (v9 == 2)
        {
          v11 = 0xEE00736D75657375;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v6))
        {
          v12 = v7;
        }

        else
        {
          v12 = 0x636973756DLL;
        }

        if (*(*(a2 + 48) + v6) <= 1u)
        {
          v13 = v12;
        }

        else
        {
          v13 = v10;
        }

        if (*(*(a2 + 48) + v6) <= 1u)
        {
          v14 = 0xE500000000000000;
        }

        else
        {
          v14 = v11;
        }
      }

      v15 = 0xD000000000000011;
      if (a1 != 6)
      {
        v15 = 0x66696C746867696ELL;
      }

      v16 = 0xE900000000000065;
      if (a1 == 6)
      {
        v16 = 0x80000001E10BF070;
      }

      v17 = 0x657665656C707061;
      if (a1 == 4)
      {
        v17 = 0x72657461656874;
      }

      v18 = 0xEA0000000000746ELL;
      if (a1 == 4)
      {
        v18 = 0xE700000000000000;
      }

      if (a1 <= 5u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a1 == 2)
      {
        v19 = 0x6D646E6173747261;
      }

      else
      {
        v19 = v8;
      }

      if (a1 == 2)
      {
        v20 = 0xEE00736D75657375;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a1)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a1 <= 1u)
      {
        v19 = v21;
        v20 = 0xE500000000000000;
      }

      v22 = a1 <= 3u ? v19 : v15;
      v23 = a1 <= 3u ? v20 : v16;
      if (v13 == v22 && v14 == v23)
      {
        break;
      }

      v24 = v8;
      v25 = v7;
      v26 = sub_1E10AE8FC();

      if ((v26 & 1) == 0)
      {
        v6 = (v6 + 1) & v28;
        v7 = v25;
        v8 = v24;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v26 & 1;
    }

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_1E1054E58(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A800, &qword_1E10B6A18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BC14();
  sub_1E10AEA5C();
  v13[0] = *v3;
  v14 = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    v11 = v3[2];
    v13[0] = v3[1];
    v13[1] = v11;
    v14 = 1;
    sub_1E10584F0();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E1054FEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AAC8, &qword_1E10B72E8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105C7EC();
  sub_1E10AEA5C();
  v16 = 0;
  sub_1E10AE86C();
  if (!v5)
  {
    v15 = 1;
    sub_1E10AE83C();
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1E1055180(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7E0, &qword_1E10B6A08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BB18();
  sub_1E10AEA5C();
  LOBYTE(v14) = 0;
  sub_1E10AE83C();
  if (!v2)
  {
    v11 = *(v3 + 32);
    v14 = *(v3 + 16);
    v15 = v11;
    v13[15] = 1;
    sub_1E105BBC0();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E10552FC(uint64_t a1)
{
  v2 = sub_1E105BC14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1055338(uint64_t a1)
{
  v2 = sub_1E105BC14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E1055374@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1E105ADBC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1E10553D0()
{
  if (*v0)
  {
    return 0x657A696C61636F6CLL;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_1E1055414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E10554F4(uint64_t a1)
{
  v2 = sub_1E105C7EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1055530(uint64_t a1)
{
  v2 = sub_1E105C7EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E105556C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E105AFC0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1E10555BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E105569C(uint64_t a1)
{
  v2 = sub_1E105BB18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10556D8(uint64_t a1)
{
  v2 = sub_1E105BB18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E1055714@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1E105B1A4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1E1055770(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7C0, &qword_1E10B69F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BAC4();
  sub_1E10AEA5C();
  v14 = *v3;
  v13 = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1E10AE83C();
    v14 = v3[2];
    v13 = 2;
    sub_1E10AE8AC();
    v14 = v3[3];
    v13 = 3;
    sub_1E10348C0();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E10559A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7A8, &qword_1E10B69E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BA70();
  sub_1E10AEA5C();
  LOBYTE(v14) = 0;
  sub_1E10AE86C();
  if (!v2)
  {
    v11 = *(v3 + 32);
    v14 = *(v3 + 16);
    v15 = v11;
    v13[15] = 1;
    sub_1E10584F0();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_1E1055B1C()
{
  v1 = 25705;
  v2 = 1701667182;
  if (*v0 != 2)
  {
    v2 = 7300455;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E1055B80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E105B394(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E1055BA8(uint64_t a1)
{
  v2 = sub_1E105BAC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1055BE4(uint64_t a1)
{
  v2 = sub_1E105BAC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E1055C20@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1E105B4F8(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1E1055C7C(uint64_t a1)
{
  v2 = sub_1E105BA70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1055CB8(uint64_t a1)
{
  v2 = sub_1E105BA70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E1055CF4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1E105B868(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1E1055D50@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  type metadata accessor for Time(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v90 = *v1;
  v8 = v1[11];
  v89 = v1[10];
  v9 = v1[15];
  v10 = v1[16];
  v11 = v1[17];
  if (v9 && v2[13])
  {
    v12 = sub_1E10AE06C();
    v92 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v92 = 0xE000000000000000;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
LABEL_6:
  v87 = v16;
  v88 = v14;
  v18 = v2[4];
  v17 = v2[5];
  v19 = type metadata accessor for PartialEventResource(0);

  v20 = v102;
  sub_1E103E918(v6);
  if (v20)
  {
  }

  v82 = v8;
  v84 = v6;
  v83 = v19;
  v80 = v18;
  v85 = v15;
  v86 = v7;
  v22 = v2[19];
  v23 = v2[20];
  v24 = v2[23];
  *&v93 = v2[18];
  *(&v93 + 1) = v22;
  *&v94[8] = *(v2 + 21);
  if (*&v94[8])
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  *v94 = v25;
  *&v94[24] = v24;
  v95 = xmmword_1E10B3A30;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = *(v2 + 12);
  v26 = sub_1E10AE06C();
  v28 = v27;

  result = sub_1E10A215C(v26, v28);
  v81 = v17;
  if (result > 3u)
  {
    v29 = v83;
    v30 = v84;
    if (result > 5u)
    {
      if (result == 6)
      {
        v31 = &qword_1ECE8A948;
        v32 = &qword_1E10BCC10;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A948, &qword_1E10BCC10);
        v34 = v91;
        v91[3] = v33;
        v35 = &unk_1ECE8A9F8;
      }

      else
      {
        if (result != 7)
        {

          sub_1E0FEDAB8(&v93);
          sub_1E1031F0C();
          swift_allocError();
          *v60 = 2;
          swift_willThrow();
          return sub_1E1058490(v30, type metadata accessor for Time);
        }

        v31 = &qword_1ECE8A938;
        v32 = &qword_1E10BCC00;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A938, &qword_1E10BCC00);
        v34 = v91;
        v91[3] = v33;
        v35 = &unk_1ECE8A9F0;
      }

      v46 = sub_1E105BD38(v35, v31, v32);
      v39 = 0;
      v47 = 0;
      goto LABEL_49;
    }

    if (result == 4)
    {
      v57 = &qword_1ECE8A988;
      v58 = &qword_1E10BCC30;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A988, &qword_1E10BCC30);
      v34 = v91;
      v91[3] = v33;
      v59 = &unk_1ECE8AA18;
    }

    else
    {
      v57 = &qword_1ECE8A958;
      v58 = &qword_1E10BCC20;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A958, &qword_1E10BCC20);
      v34 = v91;
      v91[3] = v33;
      v59 = &unk_1ECE8AA00;
    }

    goto LABEL_47;
  }

  v29 = v83;
  v30 = v84;
  if (result > 1u)
  {
    v34 = v91;
    if (result == 2)
    {
      v57 = &qword_1ECE8A968;
      v58 = &qword_1E10BCC50;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A968, &qword_1E10BCC50);
      v34[3] = v33;
      v59 = &unk_1ECE8AA08;
    }

    else
    {
      v57 = &qword_1ECE8A978;
      v58 = &qword_1E10BCC40;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A978, &qword_1E10BCC40);
      v34[3] = v33;
      v59 = &unk_1ECE8AA10;
    }

LABEL_47:
    v46 = sub_1E105BD38(v59, v57, v58);
    v39 = 0;
LABEL_48:
    v47 = 0;
LABEL_49:
    v34[4] = v46;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    result = sub_1E105BC68(v30, boxed_opaque_existential_1 + v33[12], type metadata accessor for Time);
    v62 = *(v2 + *(v29 + 48));
    v63 = v86;
    *boxed_opaque_existential_1 = v90;
    boxed_opaque_existential_1[1] = v63;
    v64 = v82;
    boxed_opaque_existential_1[2] = v89;
    boxed_opaque_existential_1[3] = v64;
    v65 = v92;
    boxed_opaque_existential_1[4] = v87;
    boxed_opaque_existential_1[5] = v65;
    v66 = v85;
    boxed_opaque_existential_1[6] = v88;
    boxed_opaque_existential_1[7] = v66;
    v67 = v81;
    boxed_opaque_existential_1[8] = v80;
    boxed_opaque_existential_1[9] = v67;
    v68 = (boxed_opaque_existential_1 + v33[13]);
    v69 = *v94;
    *v68 = v93;
    v68[1] = v69;
    v70 = v96;
    v71 = v97;
    v72 = v95;
    v68[2] = *&v94[16];
    v68[3] = v72;
    v68[4] = v70;
    v68[5] = v71;
    v73 = v101;
    v74 = v99;
    v75 = v98;
    v68[8] = v100;
    v68[9] = v73;
    v68[6] = v75;
    v68[7] = v74;
    *(boxed_opaque_existential_1 + v33[14]) = v62;
    *(boxed_opaque_existential_1 + v33[15]) = v39;
    *(boxed_opaque_existential_1 + v33[16]) = v47;
    return result;
  }

  v34 = v91;
  if (result)
  {
    v48 = *(v2 + *(v83 + 44));
    if (v48)
    {
      v77 = 0;
      v79 = *(v48 + 16);
      if (v79)
      {
        v49 = 0;
        v50 = (v48 + 72);
        v47 = MEMORY[0x1E69E7CC0];
        v78 = v48;
        while (v49 < *(v48 + 16))
        {
          v51 = *(v50 - 4);
          v102 = *(v50 - 5);
          v52 = *(v50 - 1);
          v53 = *v50;

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1E1059A48(0, *(v47 + 16) + 1, 1, v47);
            v47 = result;
          }

          v55 = *(v47 + 16);
          v54 = *(v47 + 24);
          if (v55 >= v54 >> 1)
          {
            result = sub_1E1059A48((v54 > 1), v55 + 1, 1, v47);
            v47 = result;
          }

          ++v49;
          *(v47 + 16) = v55 + 1;
          v56 = v47 + (v55 << 6);
          *(v56 + 32) = v102;
          *(v56 + 40) = v51;
          *(v56 + 48) = v52;
          *(v56 + 56) = v53;
          v50 += 6;
          *(v56 + 64) = 0u;
          *(v56 + 80) = 0u;
          v48 = v78;
          if (v79 == v49)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_59;
      }

      v47 = MEMORY[0x1E69E7CC0];
LABEL_56:
      v30 = v84;
      v34 = v91;
      v29 = v83;
    }

    else
    {
      v47 = 0;
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A998, &qword_1E10BCC60);
    v34[3] = v33;
    v46 = sub_1E105BD38(&qword_1ECE8AA20, &qword_1ECE8A998, &qword_1E10BCC60);
    v39 = 0;
    goto LABEL_49;
  }

  v36 = *(v2 + *(v83 + 40));
  if (!v36)
  {
    v39 = 0;
LABEL_54:
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A9A8, &qword_1E10BCC70);
    v34[3] = v33;
    v46 = sub_1E105BD38(&qword_1ECE8AA28, &qword_1ECE8A9A8, &qword_1E10BCC70);
    goto LABEL_48;
  }

  v77 = 0;
  v79 = *(v36 + 16);
  if (!v79)
  {
    v39 = MEMORY[0x1E69E7CC0];
LABEL_53:
    v30 = v84;
    v34 = v91;
    v29 = v83;
    goto LABEL_54;
  }

  v37 = 0;
  v38 = (v36 + 72);
  v39 = MEMORY[0x1E69E7CC0];
  v78 = v36;
  while (v37 < *(v36 + 16))
  {
    v40 = *(v38 - 4);
    v102 = *(v38 - 5);
    v41 = *(v38 - 1);
    v42 = *v38;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E1059B54(0, *(v39 + 16) + 1, 1, v39);
      v39 = result;
    }

    v44 = *(v39 + 16);
    v43 = *(v39 + 24);
    if (v44 >= v43 >> 1)
    {
      result = sub_1E1059B54((v43 > 1), v44 + 1, 1, v39);
      v39 = result;
    }

    ++v37;
    *(v39 + 16) = v44 + 1;
    v45 = v39 + 104 * v44;
    *(v45 + 32) = v102;
    *(v45 + 40) = v40;
    *(v45 + 48) = v41;
    *(v45 + 56) = v42;
    *(v45 + 64) = 0u;
    *(v45 + 80) = 0u;
    *(v45 + 96) = 0u;
    *(v45 + 112) = 0u;
    *(v45 + 128) = 0;
    v38 += 6;
    v36 = v78;
    if (v79 == v37)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1E10565FC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 1684957547;
    if (a1 != 2)
    {
      v6 = 0x646E694B627573;
    }

    if (a1)
    {
      v5 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x73747369747261;
    v2 = 0x74697465706D6F63;
    if (a1 != 7)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65756E6576;
    if (a1 != 4)
    {
      v3 = 1701669236;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E1056700(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A760, &qword_1E10B69D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10581D0();
  sub_1E10AEA5C();
  v11 = *(v3 + 8);
  *&v34 = *v3;
  *(&v34 + 1) = v11;
  LOBYTE(v30) = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v13 = v6;
  v14 = *(v3 + 32);
  v15 = *(v3 + 40);
  v34 = *(v3 + 16);
  *&v35 = v14;
  *(&v35 + 1) = v15;
  LOBYTE(v30) = 1;
  sub_1E10584F0();
  sub_1E10AE8AC();
  v16 = *(v3 + 64);
  v17 = *(v3 + 80);
  v18 = *(v3 + 88);
  v34 = *(v3 + 48);
  v35 = v16;
  *&v36 = v17;
  *(&v36 + 1) = v18;
  LOBYTE(v30) = 2;
  sub_1E1058544();
  sub_1E10AE8AC();
  v19 = *(v3 + 112);
  v39[0] = *(v3 + 96);
  v39[1] = v19;
  v39[2] = *(v3 + 128);
  v38 = 3;
  sub_1E1058598();
  sub_1E10AE85C();
  v20 = *(v3 + 144);
  v21 = *(v3 + 176);
  v35 = *(v3 + 160);
  v36 = v21;
  v22 = *(v3 + 176);
  v37 = *(v3 + 192);
  v30 = v20;
  v31 = v35;
  v23 = *(v3 + 144);
  v32 = v22;
  v33 = *(v3 + 192);
  v34 = v23;
  v29 = 4;
  sub_1E10585EC(&v34, v28);
  sub_1E1058624();
  sub_1E10AE8AC();
  v28[0] = v30;
  v28[1] = v31;
  v28[2] = v32;
  v28[3] = v33;
  sub_1E1058224(v28);
  v24 = type metadata accessor for PartialEventResource(0);
  LOBYTE(v27) = 5;
  type metadata accessor for EventAttributes.Time(0);
  sub_1E10583F4(&qword_1ECE8A2C0, type metadata accessor for EventAttributes.Time, &unk_1E10B4D9C);
  sub_1E10AE8AC();
  v27 = *(v3 + *(v24 + 40));
  HIBYTE(v26) = 6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A710, &qword_1E10B66E8);
  sub_1E1058678(&qword_1ECE8A788, sub_1E10586F0, MEMORY[0x1E69E6300]);
  v40 = v25;
  sub_1E10AE85C();
  v27 = *(v3 + *(v24 + 44));
  HIBYTE(v26) = 7;
  sub_1E10AE85C();
  LOBYTE(v27) = 8;
  sub_1E10AE87C();
  return (*(v13 + 8))(v10, v5);
}

void sub_1E1056B7C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for EventAttributes.Time(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A720, &qword_1E10B69D0);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for PartialEventResource(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10581D0();
  v36 = v12;
  v18 = v37;
  sub_1E10AEA3C();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v32 = v3;
    v19 = v7;
    v20 = v34;
    v37 = v13;
    LOBYTE(v38) = 0;
    sub_1E0FF4EE4();
    v21 = v35;
    sub_1E10AE7FC();
    v22 = *(&v39 + 1);
    *v17 = v39;
    *(v17 + 1) = v22;
    LOBYTE(v38) = 1;
    sub_1E10582A4();
    sub_1E10AE7FC();
    v23 = v40;
    *(v17 + 1) = v39;
    *(v17 + 2) = v23;
    LOBYTE(v38) = 2;
    sub_1E10582F8();
    v31 = 0;
    sub_1E10AE7FC();
    v24 = v40;
    v25 = v41;
    *(v17 + 3) = v39;
    *(v17 + 4) = v24;
    *(v17 + 5) = v25;
    LOBYTE(v38) = 3;
    sub_1E105834C();
    sub_1E10AE7AC();
    v26 = v40;
    *(v17 + 6) = v39;
    *(v17 + 7) = v26;
    *(v17 + 8) = v41;
    v44 = 4;
    sub_1E10583A0();
    sub_1E10AE7FC();
    v27 = v40;
    *(v17 + 9) = v39;
    *(v17 + 10) = v27;
    v28 = v42;
    *(v17 + 11) = v41;
    *(v17 + 12) = v28;
    LOBYTE(v38) = 5;
    sub_1E10583F4(&qword_1ECE8A298, type metadata accessor for EventAttributes.Time, &unk_1E10B4DC4);
    sub_1E10AE7FC();
    LODWORD(v32) = 1;
    sub_1E105BC68(v19, &v17[v37[9]], type metadata accessor for EventAttributes.Time);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A710, &qword_1E10B66E8);
    v43 = 6;
    sub_1E1058678(&qword_1ECE8A750, sub_1E105843C, MEMORY[0x1E69E6330]);
    sub_1E10AE7AC();
    *&v17[v37[10]] = v38;
    v43 = 7;
    sub_1E10AE7AC();
    v29 = v37;
    *&v17[v37[11]] = v38;
    LOBYTE(v38) = 8;
    v30 = sub_1E10AE7CC();
    (*(v20 + 8))(v36, v21);
    v17[v29[12]] = v30 & 1;
    sub_1E105BCD0(v17, v33, type metadata accessor for PartialEventResource);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1E1058490(v17, type metadata accessor for PartialEventResource);
  }
}

uint64_t sub_1E1057318(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AAD8, &qword_1E10B72F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105C840();
  sub_1E10AEA5C();
  LOBYTE(v16) = 0;
  sub_1E10ADCBC();
  sub_1E10583F4(&qword_1EE17FF68, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1E10AE8AC();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for PartialEventResource.Version(0) + 20));
    v13 = *v11;
    v12 = v11[1];
    v16 = v13;
    v17 = v12;
    v15[15] = 1;
    sub_1E0FF4F38();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E10574EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v35 = sub_1E10ADCBC();
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AAD0, &qword_1E10B72F0);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for PartialEventResource.Version(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105C840();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v14;
  v19 = v18;
  v20 = v32;
  LOBYTE(v36) = 0;
  sub_1E10583F4(&qword_1EE180178, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v21 = v35;
  v22 = v33;
  sub_1E10AE7FC();
  v23 = *(v20 + 32);
  v29 = v19;
  v23(v19, v7, v21);
  v38 = 1;
  sub_1E0FF4EE4();
  sub_1E10AE7FC();
  (*(v34 + 8))(v13, v22);
  v24 = v37;
  v25 = v29;
  v26 = (v29 + *(v30 + 20));
  *v26 = v36;
  v26[1] = v24;
  sub_1E105BCD0(v25, v31, type metadata accessor for PartialEventResource.Version);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E1058490(v25, type metadata accessor for PartialEventResource.Version);
}

uint64_t sub_1E1057880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E105C510(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E10578B4(uint64_t a1)
{
  v2 = sub_1E10581D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10578F0(uint64_t a1)
{
  v2 = sub_1E10581D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E105795C()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1E1057990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E1057A6C(uint64_t a1)
{
  v2 = sub_1E105C840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1057AA8(uint64_t a1)
{
  v2 = sub_1E105C840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1057B14(double *a1, uint64_t a2, _BYTE *a3)
{
  v78 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A808, &qword_1E10B6A30);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68[-v8];
  v80 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = sub_1E10ADCBC();
  v81 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v79 = &v68[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v68[-v19];
  MEMORY[0x1EEE9AC00](v21, v22);
  v84 = &v68[-v23];
  v24 = sub_1E10ADACC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v82 = &v68[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v68[-v31];
  v33 = sub_1E10AE06C();
  v35 = sub_1E10A215C(v33, v34);
  if (v35 == 8)
  {
    return 0;
  }

  v77 = v3;
  v69 = sub_1E1054B80(v35, a2);
  v37 = a1[24];
  v38 = a1[25];
  v39 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  v73 = a1;
  v40 = [v39 initWithLatitude:v37 longitude:v38];
  v83 = v24;
  v41 = &v78[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload];
  v74 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*&v78[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload] longitude:*&v78[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload + 8]];
  v75 = v40;
  [v40 distanceFromLocation_];
  v43 = v42;
  v44 = *(v41 + 16);
  v76 = v32;
  v71 = type metadata accessor for GeoXPCRequestContainer.Payload;
  sub_1E105BCD0(v41, v13, type metadata accessor for GeoXPCRequestContainer.Payload);
  v78 = v9;
  v45 = v80;
  v46 = *(v80 + 28);
  sub_1E10ADAAC();
  v72 = v25;
  v48 = (v25 + 8);
  v47 = *(v25 + 8);
  v47(&v13[v46], v83);
  sub_1E10ADC2C();
  v49 = v81;
  v70 = *(v81 + 8);
  v70(v20, v85);
  sub_1E105BCD0(v41, v13, v71);
  v50 = *(v45 + 28);
  v51 = v79;
  sub_1E10ADA8C();
  v52 = &v13[v50];
  v53 = v83;
  v80 = v47;
  v71 = v48;
  v47(v52, v83);
  sub_1E10ADC2C();
  v54 = v51;
  v55 = v85;
  v70(v54, v85);
  v56 = v78;
  v57 = v76;
  v58 = v84;
  sub_1E10ADA9C();
  v59 = v73 + *(type metadata accessor for PartialEventResource(0) + 36);
  v60 = *(v49 + 16);
  v60(v58, v59, v55);
  v61 = type metadata accessor for EventAttributes.Time(0);
  v60(v20, &v59[*(v61 + 20)], v55);
  v62 = v82;
  sub_1E10ADA9C();
  sub_1E10ADA6C();
  if ((*(v72 + 48))(v56, 1, v53) == 1)
  {

    v63 = v80;
    (v80)(v62, v53);
    v63(v57, v53);
    sub_1E0FF0440(v56, &qword_1ECE8A808, &qword_1E10B6A30);
    return 0;
  }

  else
  {
    v64 = v43 <= v44;
    sub_1E10ADABC();
    v66 = v65;

    v67 = v80;
    (v80)(v62, v53);
    v67(v57, v53);
    v67(v56, v53);
    if (v66 > 0.0)
    {
      return v69 & v64;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E10580CC()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1058118(uint64_t a1)
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1058158(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E10AE8FC();
  }
}

unint64_t sub_1E10581D0()
{
  result = qword_1ECE8A728;
  if (!qword_1ECE8A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A728);
  }

  return result;
}

void sub_1E1058254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }
}

unint64_t sub_1E10582A4()
{
  result = qword_1ECE8A730;
  if (!qword_1ECE8A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A730);
  }

  return result;
}

unint64_t sub_1E10582F8()
{
  result = qword_1ECE8A738;
  if (!qword_1ECE8A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A738);
  }

  return result;
}

unint64_t sub_1E105834C()
{
  result = qword_1ECE8A740;
  if (!qword_1ECE8A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A740);
  }

  return result;
}

unint64_t sub_1E10583A0()
{
  result = qword_1ECE8A748;
  if (!qword_1ECE8A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A748);
  }

  return result;
}

uint64_t sub_1E10583F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E105843C()
{
  result = qword_1ECE8A758;
  if (!qword_1ECE8A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A758);
  }

  return result;
}

uint64_t sub_1E1058490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E10584F0()
{
  result = qword_1ECE8A768;
  if (!qword_1ECE8A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A768);
  }

  return result;
}

unint64_t sub_1E1058544()
{
  result = qword_1ECE8A770;
  if (!qword_1ECE8A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A770);
  }

  return result;
}

unint64_t sub_1E1058598()
{
  result = qword_1ECE8A778;
  if (!qword_1ECE8A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A778);
  }

  return result;
}

unint64_t sub_1E1058624()
{
  result = qword_1ECE8A780;
  if (!qword_1ECE8A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A780);
  }

  return result;
}

uint64_t sub_1E1058678(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8A710, &qword_1E10B66E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E10586F0()
{
  result = qword_1ECE8A790;
  if (!qword_1ECE8A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A790);
  }

  return result;
}

char *sub_1E1058744(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89768, &qword_1E10B3278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E1058850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A918, &qword_1E10B6BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E1058AB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1E1058CF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C98, &qword_1E10B6BD0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E1058E04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A810, &qword_1E10B6A38);
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

char *sub_1E1058EF8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1E1059020(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1E1059150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A870, &qword_1E10B6AA0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E1059280(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A890, &qword_1E10B6AD8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E10593D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8A8, &qword_1E10B6B00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E1059518(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8B8, &qword_1E10B6B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E1059680(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8D8, &qword_1E10B6B48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CE0, &qword_1E10B6B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E1059860(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1E1059A48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AA30, &qword_1E10B6CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E1059B54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A888, &qword_1E10B6AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E1059C7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E1059EF8(a1, a2, a3, *v3, &qword_1ECE8A818, &qword_1E10B6A40, &_s13EventResponseVN);
  *v3 = result;
  return result;
}

char *sub_1E1059CB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E1059EF8(a1, a2, a3, *v3, &qword_1ECE8A928, &qword_1E10B6BD8, &_s20PartialEventResponseVN);
  *v3 = result;
  return result;
}

char *sub_1E1059CEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105A004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E1059D0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105A124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059D2C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105A314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059D4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105A420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E1059D6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105A52C(a1, a2, a3, *v3, &qword_1ECE89760, &qword_1E10B3270, type metadata accessor for PartialEventResource);
  *v3 = result;
  return result;
}

void *sub_1E1059DB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105A52C(a1, a2, a3, *v3, &qword_1ECE8A860, &qword_1E10B6A88, type metadata accessor for Ticket);
  *v3 = result;
  return result;
}

char *sub_1E1059DF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105A730(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059E14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105A858(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059E34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105A964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059E54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105AA70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059E74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105AB90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E1059E94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105ACB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E1059EB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E105A52C(a1, a2, a3, *v3, &qword_1ECE8A858, &qword_1E10B6A80, type metadata accessor for Music);
  *v3 = result;
  return result;
}

char *sub_1E1059EF8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1E105A004(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A920, &qword_1E10B6BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E105A124(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A910, &unk_1E10B6BB0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

char *sub_1E105A314(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A908, &qword_1E10B6BA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E105A420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89768, &qword_1E10B3278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E105A52C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1E105A730(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A888, &qword_1E10B6AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E105A858(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A870, &qword_1E10B6AA0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E105A964(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A890, &qword_1E10B6AD8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E105AA70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8A8, &qword_1E10B6B00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E105AB90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8B8, &qword_1E10B6B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E105ACB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8C8, &qword_1E10B6B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E105ADBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7F0, &qword_1E10B6A10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BC14();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_1E0FF4EE4();
  sub_1E10AE7FC();
  v11 = v16;
  v19 = 1;
  sub_1E10582A4();
  sub_1E10AE7FC();
  (*(v6 + 8))(v10, v5);
  v15 = v16;
  v12 = v17;
  v13 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  *(a2 + 16) = v15;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  return result;
}

uint64_t sub_1E105AFC0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AAB8, &qword_1E10B72E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105C7EC();
  sub_1E10AEA3C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1E10AE7BC();
    v12 = 1;
    sub_1E10AE78C();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1E105B1A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7C8, &qword_1E10B6A00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BB18();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19) = 0;
  v11 = sub_1E10AE78C();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  sub_1E105BB6C();
  sub_1E10AE7FC();
  (*(v6 + 8))(v10, v5);
  v18 = v19;
  v15 = v20;
  v16 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_1E105B394(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E10C0110 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7300455 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E105B4F8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7B0, &qword_1E10B69F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BAC4();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29) = 0;
  sub_1E0FF4EE4();
  sub_1E10AE7FC();
  v11 = v33;
  v28 = v34;
  LOBYTE(v33) = 1;
  v12 = sub_1E10AE78C();
  v27 = v13;
  v25 = v12;
  v26 = v11;
  LOBYTE(v29) = 2;
  sub_1E10AE7FC();
  v14 = v34;
  v24 = v33;
  v41 = 3;
  sub_1E10347B0();
  sub_1E10AE7FC();
  (*(v6 + 8))(v10, v5);
  v15 = v40;
  v16 = v26;
  v17 = v28;
  *&v29 = v26;
  *(&v29 + 1) = v28;
  v18 = v25;
  v19 = v27;
  *&v30 = v25;
  *(&v30 + 1) = v27;
  v20 = v24;
  *&v31 = v24;
  *(&v31 + 1) = v14;
  v32 = v40;
  sub_1E10585EC(&v29, &v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v14;
  v39 = v15;
  result = sub_1E1058224(&v33);
  v22 = v30;
  *a2 = v29;
  a2[1] = v22;
  v23 = v32;
  a2[2] = v31;
  a2[3] = v23;
  return result;
}

uint64_t sub_1E105B868@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A798, &qword_1E10B69E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BA70();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19) = 0;
  v11 = sub_1E10AE7BC();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  sub_1E10582A4();
  sub_1E10AE7FC();
  (*(v6 + 8))(v10, v5);
  v18 = v19;
  v15 = v20;
  v16 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

unint64_t sub_1E105BA70()
{
  result = qword_1ECE8A7A0;
  if (!qword_1ECE8A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7A0);
  }

  return result;
}

unint64_t sub_1E105BAC4()
{
  result = qword_1ECE8A7B8;
  if (!qword_1ECE8A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7B8);
  }

  return result;
}

unint64_t sub_1E105BB18()
{
  result = qword_1ECE8A7D0;
  if (!qword_1ECE8A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7D0);
  }

  return result;
}

unint64_t sub_1E105BB6C()
{
  result = qword_1ECE8A7D8;
  if (!qword_1ECE8A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7D8);
  }

  return result;
}

unint64_t sub_1E105BBC0()
{
  result = qword_1ECE8A7E8;
  if (!qword_1ECE8A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7E8);
  }

  return result;
}

unint64_t sub_1E105BC14()
{
  result = qword_1ECE8A7F8;
  if (!qword_1ECE8A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7F8);
  }

  return result;
}

uint64_t sub_1E105BC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E105BCD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E105BD38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E105BDD4(uint64_t a1)
{
  result = sub_1E10ADCBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartialEventResource.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialEventResource.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E105BFEC()
{
  result = qword_1ECE8AA40;
  if (!qword_1ECE8AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA40);
  }

  return result;
}

unint64_t sub_1E105C044()
{
  result = qword_1ECE8AA48;
  if (!qword_1ECE8AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA48);
  }

  return result;
}

unint64_t sub_1E105C09C()
{
  result = qword_1ECE8AA50;
  if (!qword_1ECE8AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA50);
  }

  return result;
}

unint64_t sub_1E105C0F4()
{
  result = qword_1ECE8AA58;
  if (!qword_1ECE8AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA58);
  }

  return result;
}

unint64_t sub_1E105C14C()
{
  result = qword_1ECE8AA60;
  if (!qword_1ECE8AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA60);
  }

  return result;
}

unint64_t sub_1E105C1A4()
{
  result = qword_1ECE8AA68;
  if (!qword_1ECE8AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA68);
  }

  return result;
}

unint64_t sub_1E105C1FC()
{
  result = qword_1ECE8AA70;
  if (!qword_1ECE8AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA70);
  }

  return result;
}

unint64_t sub_1E105C254()
{
  result = qword_1ECE8AA78;
  if (!qword_1ECE8AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA78);
  }

  return result;
}

unint64_t sub_1E105C2AC()
{
  result = qword_1ECE8AA80;
  if (!qword_1ECE8AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA80);
  }

  return result;
}

unint64_t sub_1E105C304()
{
  result = qword_1ECE8AA88;
  if (!qword_1ECE8AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA88);
  }

  return result;
}

unint64_t sub_1E105C35C()
{
  result = qword_1ECE8AA90;
  if (!qword_1ECE8AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA90);
  }

  return result;
}

unint64_t sub_1E105C3B4()
{
  result = qword_1ECE8AA98;
  if (!qword_1ECE8AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA98);
  }

  return result;
}

unint64_t sub_1E105C40C()
{
  result = qword_1ECE8AAA0;
  if (!qword_1ECE8AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAA0);
  }

  return result;
}

unint64_t sub_1E105C464()
{
  result = qword_1ECE8AAA8;
  if (!qword_1ECE8AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAA8);
  }

  return result;
}

unint64_t sub_1E105C4BC()
{
  result = qword_1ECE8AAB0;
  if (!qword_1ECE8AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAB0);
  }

  return result;
}

uint64_t sub_1E105C510(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E694B627573 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756E6576 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73747369747261 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74697465706D6F63 && a2 == 0xEB0000000073726FLL || (sub_1E10AE8FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E10C00F0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1E105C7EC()
{
  result = qword_1ECE8AAC0;
  if (!qword_1ECE8AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAC0);
  }

  return result;
}

unint64_t sub_1E105C840()
{
  result = qword_1EE17F3D8[0];
  if (!qword_1EE17F3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17F3D8);
  }

  return result;
}

unint64_t sub_1E105C8B8()
{
  result = qword_1ECE8AAE0;
  if (!qword_1ECE8AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAE0);
  }

  return result;
}

unint64_t sub_1E105C910()
{
  result = qword_1ECE8AAE8;
  if (!qword_1ECE8AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAE8);
  }

  return result;
}

unint64_t sub_1E105C968()
{
  result = qword_1EE17F3C8;
  if (!qword_1EE17F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F3C8);
  }

  return result;
}

unint64_t sub_1E105C9C0()
{
  result = qword_1EE17F3D0;
  if (!qword_1EE17F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F3D0);
  }

  return result;
}

unint64_t sub_1E105CA18()
{
  result = qword_1ECE8AAF0;
  if (!qword_1ECE8AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAF0);
  }

  return result;
}

unint64_t sub_1E105CA70()
{
  result = qword_1ECE8AAF8;
  if (!qword_1ECE8AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAF8);
  }

  return result;
}

uint64_t Ticket.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Ticket.vendor.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Ticket.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Ticket(0) + 24);
  v4 = sub_1E10ADBBC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Ticket(uint64_t a1)
{
  result = qword_1EE17E818;
  if (!qword_1EE17E818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E105CC00()
{
  v1 = 0x726F646E6576;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1E105CC44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E105DAD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E105CC6C(uint64_t a1)
{
  v2 = sub_1E105CFB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E105CCA8(uint64_t a1)
{
  v2 = sub_1E105CFB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static Ticket.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Ticket(0);

  return sub_1E10ADB8C();
}

uint64_t Ticket.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB00, &qword_1E10B7510);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105CFB4();
  sub_1E10AEA5C();
  v11 = v3[1];
  v14 = *v3;
  v15 = v11;
  v13[15] = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1E10AE86C();
    type metadata accessor for Ticket(0);
    LOBYTE(v14) = 2;
    sub_1E10ADBBC();
    sub_1E105D8C8(&qword_1ECE88CC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_1E105CFB4()
{
  result = qword_1ECE8AB08;
  if (!qword_1ECE8AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB08);
  }

  return result;
}

uint64_t Ticket.hash(into:)(uint64_t a1)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for Ticket(0);
  sub_1E10ADBBC();
  sub_1E105D8C8(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1E10ADFFC();
}

uint64_t Ticket.hashValue.getter()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for Ticket(0);
  sub_1E10ADBBC();
  sub_1E105D8C8(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t Ticket.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1E10ADBBC();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB10, &qword_1E10B7518);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v28 - v11;
  v13 = type metadata accessor for Ticket(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E105CFB4();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v29 = v17;
  v19 = v8;
  v20 = v31;
  v21 = v32;
  v37 = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v22 = v36;
  v23 = v29;
  *v29 = v35;
  v23[1] = v22;
  v28[1] = v22;
  LOBYTE(v35) = 1;
  v23[2] = sub_1E10AE7BC();
  v23[3] = v24;
  LOBYTE(v35) = 2;
  sub_1E105D8C8(&qword_1ECE88D38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v28[0] = v19;
  v25 = v33;
  sub_1E10AE7FC();
  (*(v20 + 8))(v12, v25);
  v26 = v29;
  (*(v21 + 32))(v29 + *(v13 + 24), v28[0], v4);
  sub_1E105D7C0(v26, v30);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_1E105D824(v26);
}

uint64_t sub_1E105D4F0()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10ADBBC();
  sub_1E105D8C8(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E105D5A4(uint64_t a1)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10ADBBC();
  sub_1E105D8C8(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1E10ADFFC();
}

uint64_t sub_1E105D63C(uint64_t a1)
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10ADBBC();
  sub_1E105D8C8(&qword_1ECE88D18, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E105D71C(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  return sub_1E10ADB8C();
}

uint64_t sub_1E105D7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Ticket(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E105D824(uint64_t a1)
{
  v2 = type metadata accessor for Ticket(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E105D8C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E105D938(uint64_t a1)
{
  result = sub_1E10ADBBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E105D9D0()
{
  result = qword_1ECE8AB20;
  if (!qword_1ECE8AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB20);
  }

  return result;
}

unint64_t sub_1E105DA28()
{
  result = qword_1ECE8AB28;
  if (!qword_1ECE8AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB28);
  }

  return result;
}

unint64_t sub_1E105DA80()
{
  result = qword_1ECE8AB30;
  if (!qword_1ECE8AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB30);
  }

  return result;
}

uint64_t sub_1E105DAD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F646E6576 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1E105DBF4()
{
  result = qword_1ECE8AB38;
  if (!qword_1ECE8AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB38);
  }

  return result;
}

uint64_t sub_1E105DC58(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_1E10ADD4C();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_1E10ADD9C();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E105DD80, 0, 0);
}

uint64_t sub_1E105DD80()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_1E105DE20;

  return sub_1E1060714(v1);
}

uint64_t sub_1E105DE20(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[10] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = v2;
  v5 = *v3;
  v4[24] = a2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E105DF8C, 0, 0);
  }
}

uint64_t sub_1E105DF8C()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_1E105E02C;

  return sub_1E1061E28(v1);
}

uint64_t sub_1E105E02C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[26] = a1;
  v4[27] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E105E190, 0, 0);
  }
}

uint64_t sub_1E105E190()
{
  v24 = v0[26];
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v22 = v0[27];
  v23 = v3;
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = 1735287148;
  *(inited + 40) = 0xE400000000000000;
  sub_1E10ADD5C();
  sub_1E10AC394(v1);
  v9 = *(v4 + 8);
  v9(v2, v3);
  (*(v5 + 104))(v6, *MEMORY[0x1E6969640], v7);
  v10 = sub_1E10ADD1C();
  v12 = v11;
  (*(v5 + 8))(v6, v7);
  v9(v1, v23);
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = sub_1E1017200(inited);
  swift_setDeallocating();
  sub_1E0FF0440(inited + 32, &unk_1ECE8B230, &qword_1E10B78A8);
  if (!v24 && v22 == 0xE000000000000000 || (v14 = sub_1E10AE8FC(), v15 = v0[27], (v14 & 1) != 0))
  {

    v16 = 0;
    v15 = 0;
  }

  else
  {
    v16 = v0[26];
  }

  v17 = v0[24];
  v18 = v0[11];
  v19 = v0[14];

  *v19 = v18;
  v19[1] = v17;
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v13;
  v20 = v0[1];

  return v20();
}

uint64_t sub_1E105E3BC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1E105E468(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1E10ADE9C();
  v2[4] = swift_task_alloc();
  v3 = sub_1E10ADEBC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E105E58C, 0, 0);
}

uint64_t sub_1E105E58C()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1E105E62C;

  return sub_1E1060F8C(v1);
}

uint64_t sub_1E105E62C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v7 = sub_1E105E92C;
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v7 = sub_1E105E760;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E105E760()
{
  v1 = v0[8];
  sub_1E10ADBAC();

  v2 = sub_1E10ADBBC();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[7];
    v5 = v0[5];
    v6 = v0[6];
    sub_1E0FF0440(v0[8], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E106299C();
    sub_1E10ADB6C();
    sub_1E10ADEAC();
    (*(v6 + 8))(v4, v5);
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[8], v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E105E92C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E105E9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  sub_1E10ADE9C();
  v4[42] = swift_task_alloc();
  v5 = sub_1E10ADEBC();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  v4[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E105EAD4, 0, 0);
}

uint64_t sub_1E105EAD4()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 328), *(*(v0 + 328) + 24));
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  *v2 = v0;
  v2[1] = sub_1E105EB74;

  return sub_1E1060034(v1);
}

uint64_t sub_1E105EB74(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[48] = a1;
  v4[49] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E105ECD0, 0, 0);
  }
}

uint64_t sub_1E105ECD0()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 328), *(*(v0 + 328) + 24));
  v2 = swift_task_alloc();
  *(v0 + 400) = v2;
  *v2 = v0;
  v2[1] = sub_1E105ED70;

  return sub_1E1061340(v1);
}

uint64_t sub_1E105ED70(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[51] = a1;
  v4[52] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E105EED4, 0, 0);
  }
}

uint64_t sub_1E105EED4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = xmmword_1E10B0870;
  *(inited + 32) = 0x6F726665726F7473;
  *(inited + 40) = 0xEA0000000000746ELL;
  v2 = [objc_allocWithZone(MEMORY[0x1E69CDFE8]) init];
  v0[54] = v2;
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_1E105F054;
  v3 = swift_continuation_init();
  v0[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB60, &qword_1E10B78A0);
  v0[22] = MEMORY[0x1E69E9820];
  v0[23] = 1107296256;
  v0[24] = sub_1E105FFCC;
  v0[25] = &block_descriptor_30;
  v0[26] = v3;
  [v2 storefrontCountryCode_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E105F054()
{

  return MEMORY[0x1EEE6DFA0](sub_1E105F134, 0, 0);
}

uint64_t sub_1E105F134()
{
  v1 = v0[53];
  v2 = v0[54];
  v4 = v0[39];
  v3 = v0[40];
  v5 = sub_1E10AE07C();
  v7 = v6;

  v1[6] = v5;
  v1[7] = v7;
  v1[8] = 0x64695F746E657665;
  v1[9] = 0xE800000000000000;
  v1[10] = v4;
  v1[11] = v3;

  v8 = sub_1E1017200(v1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  v0[37] = v8;
  v9 = sub_1E1062A58();
  if (v10)
  {
    sub_1E1074334(v9, v10, 1735287148, 0xE400000000000000);
    v8 = v0[37];
  }

  if (!v0[51] && v0[52] == 0xE000000000000000 || (v11 = sub_1E10AE8FC(), v12 = v0[52], (v11 & 1) != 0))
  {

    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = v0[51];
  }

  v14 = v0[49];
  v15 = v0[46];
  v0[30] = v0[48];
  v0[31] = v14;
  v0[32] = v13;
  v0[33] = v12;
  v0[34] = v8;
  sub_1E1081D8C(v15);

  v16 = sub_1E10ADBBC();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  v19 = v0[45];
  if (v18 == 1)
  {
    v20 = v0[43];
    v21 = v0[44];
    sub_1E0FF0440(v0[46], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E106299C();
    sub_1E10ADB6C();
    sub_1E10ADEAC();
    (*(v21 + 8))(v19, v20);
    swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v0[38], v0[46], v16);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1E105F41C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1E10ADE9C();
  v3[5] = swift_task_alloc();
  v4 = sub_1E10ADEBC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB40, &unk_1E10B7850);
  v3[9] = swift_task_alloc();
  v5 = sub_1E10ADB2C();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = sub_1E10ADBBC();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E105F64C, 0, 0);
}

uint64_t sub_1E105F64C()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_1E105F6EC;

  return sub_1E1060BD8(v1);
}

uint64_t sub_1E105F6EC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[20] = a1;
  v4[21] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E105F894, 0, 0);
  }
}

uint64_t sub_1E105F894()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_1E105F934;

  return sub_1E10622E4(v1);
}

uint64_t sub_1E105F934(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 184) = a2;
    *(v6 + 192) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E105FAEC, 0, 0);
  }
}

uint64_t sub_1E105FAEC()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  sub_1E10ADBAC();

  sub_1E10ADB9C();

  sub_1E0FF0440(v4, &qword_1ECE88C78, &qword_1E10B5E50);
  v5 = *(v2 + 48);
  if (v5(v3, 1, v1) == 1)
  {
    v6 = v0[15];
    v7 = &qword_1ECE88C78;
    v8 = &qword_1E10B5E50;
LABEL_5:
    sub_1E0FF0440(v6, v7, v8);
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E106299C();
    sub_1E10ADB6C();
    sub_1E10ADEAC();
    (*(v15 + 8))(v14, v16);
    swift_willThrow();
LABEL_6:

    v17 = v0[1];
    goto LABEL_7;
  }

  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[9];
  v12 = *(v0[17] + 32);
  v12(v0[18], v0[15], v0[16]);
  sub_1E10ADB0C();
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v13 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = &qword_1ECE8AB40;
    v8 = &unk_1E10B7850;
    v6 = v13;
    goto LABEL_5;
  }

  v33 = v0[16];
  v19 = v0[13];
  (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB48, &qword_1E10B7870);
  sub_1E10ADAEC();
  *(swift_allocObject() + 16) = xmmword_1E10B2E70;
  sub_1E10ADADC();
  sub_1E10ADAFC();
  sub_1E10ADB1C();
  if (v5(v19, 1, v33) == 1)
  {
    v20 = v0[17];
    v32 = v0[16];
    v34 = v0[18];
    v21 = v0[12];
    v23 = v0[10];
    v22 = v0[11];
    v25 = v0[7];
    v24 = v0[8];
    v26 = v0[6];
    sub_1E0FF0440(v0[13], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E106299C();
    sub_1E10ADB6C();
    sub_1E10ADEAC();
    (*(v25 + 8))(v24, v26);
    swift_willThrow();
    (*(v22 + 8))(v21, v23);
    (*(v20 + 8))(v34, v32);
    goto LABEL_6;
  }

  v28 = v0[17];
  v27 = v0[18];
  v29 = v0[16];
  v30 = v0[13];
  v31 = v0[2];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v28 + 8))(v27, v29);
  v12(v31, v30, v29);

  v17 = v0[1];
LABEL_7:

  return v17();
}

uint64_t sub_1E105FFCC(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = sub_1E10AE05C();
  v4 = *(*(v2 + 64) + 40);
  *v4 = v3;
  v4[1] = v5;

  return MEMORY[0x1EEE6DED8](v2);
}

uint64_t sub_1E1060054()
{
  v1 = v0[28];
  v0[2] = v0;
  v0[3] = sub_1E1060168;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89150, &qword_1E10B1490);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E105E3BC;
  v0[21] = &block_descriptor_38;
  v0[22] = v2;
  [v1 loadBaseDictionary_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1060168()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1E1060564;
  }

  else
  {
    v2 = sub_1E1060278;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1060278()
{
  v1 = v0[28];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[30] = v3;

  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1E10603E4;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E1060640;
  v0[21] = &block_descriptor_41;
  v0[22] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E10603E4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1E10605D0;
  }

  else
  {
    v2 = sub_1E10604F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E10604F4()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1E1060564(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1E10605D0(uint64_t a1)
{
  v2 = *(v1 + 240);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1E1060640(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1E10AE05C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}