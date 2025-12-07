uint64_t Match.description.getter(uint64_t a1)
{
  sub_1DD6408D8();

  v3 = sub_1DD636AD4(v1, *(a1 + 16));
  MEMORY[0x1E12B2260](v3);

  MEMORY[0x1E12B2260](0x736C616E6769730ALL, 0xEA0000000000203ALL);
  v4 = sub_1DD636AD4(v1 + *(a1 + 36), *(a1 + 24));
  MEMORY[0x1E12B2260](v4);

  return 0x203A65756C6176;
}

uint64_t sub_1DD51360C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C616E676973 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD5136D0(char a1)
{
  if (a1)
  {
    return 0x736C616E676973;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DD513738(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD3AA564(v3, *v1);
  return sub_1DD640E78();
}

uint64_t sub_1DD513790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD51360C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5137E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD3B20A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD513818(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DD51386C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Match<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[4] = a4;
  v17[2] = a6;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v17[0] = a2;
  v17[1] = v7;
  type metadata accessor for Match.CodingKeys(255, v8, v7, a4);
  OUTLINED_FUNCTION_1_81();
  swift_getWitnessTable();
  v9 = sub_1DD640C88();
  OUTLINED_FUNCTION_7_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD640EF8();
  v19 = 0;
  v15 = v17[5];
  sub_1DD640C68();
  if (!v15)
  {
    v18 = 1;
    sub_1DD640C68();
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t Match<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v42 = a5;
  v46 = a4;
  v40 = a6;
  OUTLINED_FUNCTION_7_0();
  v39 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v41 = v11;
  OUTLINED_FUNCTION_7_0();
  v44 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v47 = v14;
  type metadata accessor for Match.CodingKeys(255, v15, v16, v17);
  OUTLINED_FUNCTION_1_81();
  swift_getWitnessTable();
  v48 = sub_1DD640BA8();
  OUTLINED_FUNCTION_7_0();
  v43 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v45 = a2;
  v21 = type metadata accessor for Match(0, a2, a3, v20);
  OUTLINED_FUNCTION_7_0();
  v38 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v49;
  sub_1DD640ED8();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v25;
  v49 = v21;
  v28 = v44;
  v51 = 0;
  v29 = v45;
  sub_1DD640B78();
  v30 = *(v28 + 32);
  v46 = v27;
  v30(v27, v47, v29);
  v50 = 1;
  v31 = v41;
  sub_1DD640B78();
  v32 = OUTLINED_FUNCTION_4_56();
  v33(v32);
  v34 = v49;
  v35 = v46;
  (*(v39 + 32))(&v46[*(v49 + 36)], v31, a3);
  v36 = v38;
  (*(v38 + 16))(v40, v35, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v36 + 8))(v35, v34);
}

uint64_t static Match<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1DD63FD98() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Match(0, a3, a4, v8);
  return sub_1DD63FD98() & 1;
}

uint64_t sub_1DD513F34(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD513FC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1DD514188(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1DD51441C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for MeCardContactGenerator(uint64_t a1)
{
  result = qword_1EE161800;
  if (!qword_1EE161800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD5145C0(uint64_t a1)
{
  sub_1DD514644();
  if (v1 <= 0x3F)
  {
    sub_1DD63D168();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD514644()
{
  if (!qword_1EE1602D0)
  {
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1602D0);
    }
  }
}

uint64_t sub_1DD5146A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = [a1 contactRelations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC248, &qword_1DD657600);
  v7 = sub_1DD640118();

  v42 = v7;
  result = sub_1DD3CC020();
  v38 = a3;
  v39 = a2;
  v37 = a1;
  if (result)
  {
    v9 = result;
    if (result >= 1)
    {
      v10 = 0;
      v41 = v7 & 0xC000000000000001;
      v11 = MEMORY[0x1E69E7CC0];
      v40 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v12 = v41 ? MEMORY[0x1E12B2C10](v10, v42) : *(v42 + 8 * v10 + 32);
        v13 = v12;
        v14 = [v12 label];
        if (v14)
        {
          break;
        }

LABEL_23:
        if (v9 == ++v10)
        {
          goto LABEL_26;
        }
      }

      v15 = v14;
      v16 = sub_1DD63FDD8();
      v18 = v17;

      v19 = [v13 value];
      v20 = [v19 name];

      v21 = sub_1DD63FDD8();
      v23 = v22;

      if (sub_1DD640008())
      {
        v24 = sub_1DD640018();

        if (v24)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3BF620();
            v40 = v32;
          }

          v26 = *(v40 + 16);
          v25 = *(v40 + 24);
          if (v26 >= v25 >> 1)
          {
            OUTLINED_FUNCTION_14_34(v25);
            sub_1DD3BF620();
            v40 = v33;
          }

          *(v40 + 16) = v26 + 1;
          v27 = (v40 + 32 * v26);
LABEL_22:
          v27[4] = v16;
          v27[5] = v18;
          v27[6] = v21;
          v27[7] = v23;
          goto LABEL_23;
        }
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BF620();
        v11 = v30;
      }

      v29 = *(v11 + 16);
      v28 = *(v11 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_14_34(v28);
        sub_1DD3BF620();
        v11 = v31;
      }

      *(v11 + 16) = v29 + 1;
      v27 = (v11 + 32 * v29);
      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    v40 = MEMORY[0x1E69E7CC0];
LABEL_26:

    *v38 = v40;
    *(v38 + 1) = v11;
    v34 = *(type metadata accessor for MeCardContactGenerator(0) + 24);
    v35 = sub_1DD63D168();
    v36 = *(*(v35 - 8) + 32);

    return v36(&v38[v34], v39, v35);
  }

  return result;
}

uint64_t sub_1DD5149D0(void *a1)
{
  v3 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for StringTokenizer(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[23];
  if (v15)
  {
    v16 = a1[22];
  }

  else
  {
    v16 = a1[3];
    v15 = a1[4];
  }

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v32 = v14;
    v18 = type metadata accessor for MeCardContactGenerator(0);
    v19 = *(v5 + 16);
    v19(v11, v33 + *(v18 + 24), v3);
    v20 = (v19)(v8, v11, v3);
    if (sub_1DD4F9BB8(v20))
    {
      v21 = 1;
    }

    else
    {
      v36[0] = sub_1DD63D118();
      v36[1] = v23;
      v34 = 24938;
      v35 = 0xE200000000000000;
      sub_1DD3B52B8();
      v31 = a1;
      sub_1DD3B530C();
      a1 = v31;
      v21 = sub_1DD63FD48();
    }

    v24 = v32;
    sub_1DD5E8D74(v8, v21 & 1, v32);
    (*(v5 + 8))(v11, v3);
    memcpy(v36, a1, 0x108uLL);
    v25 = sub_1DD586B64(v24, 0, v36);
    v26 = sub_1DD514E60(v16, v15);

    if (v26[2])
    {
      MEMORY[0x1EEE9AC00](v27);
      *(&v31 - 2) = v25;
      *(&v31 - 1) = v24;
      sub_1DD516838(sub_1DD51701C, &v31 - 4, v26);

      MEMORY[0x1EEE9AC00](v28);
      *(&v31 - 2) = a1;
      sub_1DD604ECC();
      v22 = v29;
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
      v22 = OUTLINED_FUNCTION_15_34();
      *(v22 + 16) = xmmword_1DD643F90;
      sub_1DD4BF298(a1, v24 + v22);
    }

    sub_1DD4BF460(v24);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
    v22 = OUTLINED_FUNCTION_15_34();
    *(v22 + 16) = xmmword_1DD643F90;
    sub_1DD4BF298(a1, v22 + v1);
  }

  return v22;
}

unint64_t *sub_1DD514E60(void *a1, unint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v97 - v8;
  v117 = a2;
  v118 = MEMORY[0x1E69E7CD0];
  v107 = a1;
  v116 = a1;
  v10 = *(type metadata accessor for MeCardContactGenerator(0) + 24);
  v11 = sub_1DD63D168();
  (*(*(v11 - 8) + 16))(v9, v4 + v10, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  v12 = sub_1DD3B7F10();
  v13 = sub_1DD640648();
  sub_1DD401EB8(v9);
  v99 = sub_1DD532D04(v13);
  v97 = v4;
  v15 = *(v4 + 8);
  v16 = *(v15 + 16);
  v105 = a2;
  if (v16)
  {
    v3 = (v15 + 56);
    *&v14 = 136315394;
    v111 = v14;
    v113 = v12;
    do
    {
      v9 = *(v3 - 3);
      v17 = *(v3 - 2);
      v18 = *(v3 - 1);
      v19 = *v3;
      v116 = v9;
      v117 = v17;
      v114 = v107;
      v115 = a2;

      if (sub_1DD640698())
      {
      }

      else
      {
        if (qword_1EE165FB0 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v20 = sub_1DD63F9F8();
        __swift_project_value_buffer(v20, qword_1EE16F068);

        v21 = sub_1DD63F9D8();
        v22 = sub_1DD640368();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *v23 = v111;

          v24 = sub_1DD39565C(v9, v17, &v116);

          *(v23 + 4) = v24;
          *(v23 + 12) = 2080;

          v9 = sub_1DD39565C(v18, v19, &v116);

          *(v23 + 14) = v9;
          _os_log_impl(&dword_1DD38D000, v21, v22, "adding relative via customRelations into matchingNames: label=%s -> %s", v23, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          a2 = v105;
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        sub_1DD56CE00(&v116, v18, v19, v25, v26, v27, v28, v29, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, *(&v108 + 1), v109, v110, v111, *(&v111 + 1), v112, v113, v114, v115, v116, v117);
      }

      v3 += 4;
      --v16;
    }

    while (v16);
  }

  if (v99 == 376)
  {
    v3 = v118;
    if (!v118[2])
    {
LABEL_57:
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v87 = sub_1DD63F9F8();
      __swift_project_value_buffer(v87, qword_1EE16F068);

      v54 = sub_1DD63F9D8();
      v88 = sub_1DD640368();

      if (os_log_type_enabled(v54, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v116 = v90;
        *v89 = 136315138;
        *(v89 + 4) = sub_1DD39565C(v107, a2, &v116);
        _os_log_impl(&dword_1DD38D000, v54, v88, "found no relatives. label=%s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
LABEL_61:
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        goto LABEL_62;
      }

      goto LABEL_62;
    }

LABEL_33:
    if (qword_1EE165FB0 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

  v30 = sub_1DD534E3C(v99);
  v104 = *(v30 + 16);
  if (v104)
  {
    v31 = OUTLINED_FUNCTION_9_43(v30);
    *&v33 = 136315394;
    v108 = v33;
    v102 = v9;
    v103 = v31;
    while (v32 < *(v31 + 16))
    {
      if (v9)
      {
        v106 = v32;
        v34 = (v101 + 16 * v32);
        v35 = *v34;
        v36 = v34[1];

        v37 = v100;
        do
        {
          v3 = *(v37 - 1);
          v38 = *v37;
          v39 = *(v37 - 3) == v35 && *(v37 - 2) == v36;
          if (v39 || (sub_1DD640CD8() & 1) != 0)
          {
            v40 = qword_1EE165FB0;

            if (v40 != -1)
            {
              OUTLINED_FUNCTION_0_2();
              swift_once();
            }

            v41 = sub_1DD63F9F8();
            __swift_project_value_buffer(v41, qword_1EE16F068);

            v42 = sub_1DD63F9D8();
            v43 = sub_1DD640368();

            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              LODWORD(v111) = v43;
              v45 = v44;
              v113 = swift_slowAlloc();
              v116 = v113;
              *v45 = v108;
              *(v45 + 4) = sub_1DD39565C(v35, v36, &v116);
              *(v45 + 12) = 2080;

              v46 = sub_1DD39565C(v3, v38, &v116);
              v110 = v3;
              v47 = v46;

              *(v45 + 14) = v47;
              v3 = v110;
              _os_log_impl(&dword_1DD38D000, v42, v111, "adding relative into matchingNames: label=%s -> %s", v45, 0x16u);
              OUTLINED_FUNCTION_16_35();
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0]();
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0]();
            }

            sub_1DD56CE00(&v116, v3, v38, v48, v49, v50, v51, v52, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, *(&v108 + 1), v109, v110, v111, *(&v111 + 1), v112, v113, v114, v115, v116, v117);
          }

          v37 += 4;
          --v9;
        }

        while (v9);

        a2 = v105;
        v32 = v106;
        v9 = v102;
        v31 = v103;
      }

      if (++v32 == v104)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_32:

    v3 = v118;
    if (v118[2])
    {
      goto LABEL_33;
    }

    v63 = sub_1DD538AD0(v99);
    v104 = *(v63 + 16);
    if (!v104)
    {
LABEL_56:

      goto LABEL_57;
    }

    v64 = OUTLINED_FUNCTION_9_43(v63);
    *&v66 = 136315394;
    v108 = v66;
    v102 = v9;
    v103 = v64;
    while (v65 < *(v64 + 16))
    {
      if (v9)
      {
        v106 = v65;
        v67 = (v101 + 16 * v65);
        v69 = *v67;
        v68 = v67[1];

        v70 = v100;
        do
        {
          v72 = *(v70 - 1);
          v71 = *v70;
          v73 = *(v70 - 3) == v69 && *(v70 - 2) == v68;
          if (v73 || (sub_1DD640CD8() & 1) != 0)
          {
            v74 = qword_1EE165FB0;

            if (v74 != -1)
            {
              OUTLINED_FUNCTION_0_2();
              swift_once();
            }

            v75 = sub_1DD63F9F8();
            __swift_project_value_buffer(v75, qword_1EE16F068);

            v76 = sub_1DD63F9D8();
            v77 = sub_1DD640368();

            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              LODWORD(v111) = v77;
              v79 = v78;
              v113 = swift_slowAlloc();
              v116 = v113;
              *v79 = v108;
              *(v79 + 4) = sub_1DD39565C(v69, v68, &v116);
              *(v79 + 12) = 2080;

              v80 = sub_1DD39565C(v72, v71, &v116);
              v110 = v72;
              v81 = v80;

              *(v79 + 14) = v81;
              v72 = v110;
              _os_log_impl(&dword_1DD38D000, v76, v111, "adding relative via fallback semantic labels into matchingNames: label=%s -> %s", v79, 0x16u);
              OUTLINED_FUNCTION_16_35();
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0]();
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0]();
            }

            sub_1DD56CE00(&v116, v72, v71, v82, v83, v84, v85, v86, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, *(&v108 + 1), v109, v110, v111, *(&v111 + 1), v112, v113, v114, v115, v116, v117);
          }

          v70 += 4;
          --v9;
        }

        while (v9);

        v3 = v118;
        a2 = v105;
        v65 = v106;
        v9 = v102;
        v64 = v103;
      }

      if (v3[2])
      {

        if (qword_1EE165FB0 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v92 = sub_1DD63F9F8();
        __swift_project_value_buffer(v92, qword_1EE16F068);
        v54 = sub_1DD63F9D8();
        v55 = sub_1DD640368();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v116 = v57;
          *v56 = 136315138;

          v93 = sub_1DD640278();
          v95 = v94;

          v96 = sub_1DD39565C(v93, v95, &v116);

          *(v56 + 4) = v96;
          v62 = "found relatives via fallback semantic labels. names=%s";
          goto LABEL_36;
        }

        goto LABEL_62;
      }

      if (++v65 == v104)
      {
        goto LABEL_56;
      }
    }
  }

  __break(1u);
LABEL_69:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_34:
  v53 = sub_1DD63F9F8();
  __swift_project_value_buffer(v53, qword_1EE16F068);
  v54 = sub_1DD63F9D8();
  v55 = sub_1DD640368();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v116 = v57;
    *v56 = 136315138;

    v58 = sub_1DD640278();
    v60 = v59;

    v61 = sub_1DD39565C(v58, v60, &v116);

    *(v56 + 4) = v61;
    v62 = "found relatives via exact label matches. names=%s";
LABEL_36:
    _os_log_impl(&dword_1DD38D000, v54, v55, v62, v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    goto LABEL_61;
  }

LABEL_62:

  return v3;
}

uint64_t sub_1DD5159EC(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = 1;
    v4 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(*a1, a1[1], 1, 1);
    v5 = sub_1DD41859C(v4);
    if ((sub_1DD5839F8(v5, a2) & 1) == 0)
    {
      v3 = sub_1DD5839F8(a2, v5);
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1DD515A74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_1DD4BF298(a2, a3);

  a3[7] = v5;
  a3[8] = v4;

  a3[9] = 0;
  a3[10] = 0xE000000000000000;

  a3[11] = 0;
  a3[12] = 0xE000000000000000;
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) + 36);
  result = type metadata accessor for ContactResolver.SignalSet(0);
  v6[*(result + 140)] = 1;
  return result;
}

void *sub_1DD515B18(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void sub_1DD515BB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE400, &unk_1DD6575E0);
      v7 = sub_1DD640888();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v29 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v16 = (*(v4 + 48) + 16 * (v12 | (v10 << 6)));
        v17 = *v16;
        v18 = v16[1];
        sub_1DD640E28();

        sub_1DD63FD28();
        sub_1DD640E78();
        OUTLINED_FUNCTION_1_82();
        if (((v21 << v20) & ~*(v11 + 8 * v19)) == 0)
        {
          OUTLINED_FUNCTION_4_3();
          while (++v23 != v25 || (v24 & 1) == 0)
          {
            v26 = v23 == v25;
            if (v23 == v25)
            {
              v23 = 0;
            }

            v24 |= v26;
            if (*(v11 + 8 * v23) != -1)
            {
              OUTLINED_FUNCTION_8_41();
              goto LABEL_25;
            }
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_25:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v8 + 48) + 16 * v22);
        *v27 = v17;
        v27[1] = v18;
        OUTLINED_FUNCTION_5_60();
        if (v28)
        {
          goto LABEL_29;
        }

        v4 = v29;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_14_3();
          v9 = v15 & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1DD515D8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1DD63C868();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE418, &qword_1DD657608);
  result = sub_1DD640888();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1DD51705C();
    result = sub_1DD63FCE8();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_27:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_27;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1DD51607C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE410, &qword_1DD6575F8);
      v7 = sub_1DD640888();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v16 = *(*(a4 + 48) + 8 * (v12 | (v10 << 6)));
        sub_1DD640E28();

        sub_1DD48E664(v28);
        sub_1DD640E78();
        OUTLINED_FUNCTION_1_82();
        if (((v19 << v18) & ~*(v11 + 8 * v17)) == 0)
        {
          OUTLINED_FUNCTION_4_3();
          while (++v20 != v22 || (v21 & 1) == 0)
          {
            v23 = v20 == v22;
            if (v20 == v22)
            {
              v20 = 0;
            }

            v21 |= v23;
            if (*(v11 + 8 * v20) != -1)
            {
              OUTLINED_FUNCTION_8_41();
              goto LABEL_25;
            }
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_25:
        OUTLINED_FUNCTION_7_39();
        *(v11 + v24) |= v25;
        *(*(v8 + 48) + 8 * v26) = v16;
        OUTLINED_FUNCTION_5_60();
        if (v27)
        {
          goto LABEL_29;
        }
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_14_3();
          v9 = v15 & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1DD516230(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE408, &qword_1DD6575F0);
      v7 = sub_1DD640888();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v12 = 48;
      v54 = v4;
      while (v9)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v17 = *(v4 + 48) + (v13 | (v10 << 6)) * v12;
        v18 = *(v17 + 8);
        v57 = *(v17 + 16);
        v58 = *v17;
        v56 = *(v17 + 24);
        v55 = *(v17 + 32);
        v19 = *(v17 + 40);
        sub_1DD640E28();
        if (v19)
        {
          if (v19 == 1)
          {
            MEMORY[0x1E12B3140](1);

            OUTLINED_FUNCTION_10_38(v20, v21, v22, v23, v24, v25, v26);
            MEMORY[0x1E12B3140](v57);
          }

          else
          {
            MEMORY[0x1E12B3140](2);

            OUTLINED_FUNCTION_10_38(v34, v35, v36, v37, v38, v39, v40);
            sub_1DD63FD28();
          }
        }

        else
        {
          MEMORY[0x1E12B3140](0);

          OUTLINED_FUNCTION_10_38(v27, v28, v29, v30, v31, v32, v33);
          MEMORY[0x1E12B3140](v57);
          sub_1DD640E48();
          if (v55)
          {
            sub_1DD63FD28();
          }
        }

        sub_1DD640E78();
        OUTLINED_FUNCTION_1_82();
        if (((v43 << v42) & ~*(v11 + 8 * v41)) == 0)
        {
          OUTLINED_FUNCTION_4_3();
          while (++v44 != v46 || (v45 & 1) == 0)
          {
            v47 = v44 == v46;
            if (v44 == v46)
            {
              v44 = 0;
            }

            v45 |= v47;
            if (*(v11 + 8 * v44) != -1)
            {
              OUTLINED_FUNCTION_8_41();
              goto LABEL_31;
            }
          }

          goto LABEL_34;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_31:
        OUTLINED_FUNCTION_7_39();
        *(v11 + v48) |= v49;
        v51 = *(v8 + 48) + 48 * v50;
        *v51 = v58;
        *(v51 + 8) = v18;
        *(v51 + 16) = v57;
        *(v51 + 24) = v56;
        *(v51 + 32) = v52;
        *(v51 + 40) = v19;
        OUTLINED_FUNCTION_5_60();
        if (v53)
        {
          goto LABEL_35;
        }

        v4 = v54;
      }

      v14 = v10;
      while (1)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_14_3();
          v9 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void *sub_1DD5164E8(uint64_t (*a1)(uint64_t), void *a2, uint64_t a3)
{
  v42 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v5 = sub_1DD63C868();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a3 + 32);
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  if ((v10 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v11;
    v41 = v5;
    v36 = &v33;
    MEMORY[0x1EEE9AC00](v9);
    v34 = v12;
    v35 = (&v33 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v12, v35);
    v13 = 0;
    v43 = a3;
    OUTLINED_FUNCTION_8_47();
    v16 = v15 & v14;
    v11 = ((v17 + 63) >> 6);
    v37 = 0;
    v38 = v7 + 16;
    v39 = v7 + 8;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v44 = (v16 - 1) & v16;
LABEL_10:
      v22 = v18 | (v13 << 6);
      v12 = v7;
      v5 = v40;
      (*(v7 + 16))(v40, *(v43 + 48) + *(v7 + 72) * v22, v41);
      v23 = v45;
      v24 = v42(v5);
      v45 = v23;
      if (v23)
      {
        v30 = OUTLINED_FUNCTION_13_35();
        v31(v30);

        swift_willThrow();
        return a2;
      }

      v25 = v24;
      v26 = OUTLINED_FUNCTION_13_35();
      v27(v26);
      v16 = v44;
      if (v25)
      {
        *(v35 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        if (__OFADD__(v37++, 1))
        {
          __break(1u);
          return sub_1DD515D8C(v35, v34, v37, v43);
        }
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        return sub_1DD515D8C(v35, v34, v37, v43);
      }

      ++v19;
      if (*(a3 + 8 * v13))
      {
        OUTLINED_FUNCTION_14_3();
        v44 = v21 & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();
  a2 = sub_1DD515B18(v32, v12, a3, v42, a2, sub_1DD516AFC);

  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1E12B3DA0]();
  return a2;
}

void *sub_1DD516838(uint64_t (*a1)(void *), void *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v32 = a1;
  v34[2] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v33 = v4;
    v30 = &v27;
    MEMORY[0x1EEE9AC00](a1);
    v28 = v8;
    v29 = (&v27 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v8, v29);
    v31 = 0;
    v10 = 0;
    v8 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v9 = v12 & *(v5 + 56);
    v13 = (v11 + 63) >> 6;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v4 = v5;
      v18 = (*(v5 + 48) + 16 * v17);
      v19 = v18[1];
      v34[0] = *v18;
      v34[1] = v19;

      v20 = v33;
      v21 = v32(v34);
      v33 = v20;
      if (v20)
      {

        swift_willThrow();
        return a2;
      }

      v22 = v21;

      v5 = v4;
      if (v22)
      {
        *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_17:
          sub_1DD515BB8(v29, v28, v31, v5);
          return v24;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(v8 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  a2 = sub_1DD515B18(v26, v8, v5, v32, a2, sub_1DD516D5C);

  MEMORY[0x1E12B3DA0](v26, -1, -1);
  return a2;
}

void sub_1DD516AFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_1DD63C868();
  v7 = MEMORY[0x1EEE9AC00](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v6 + 16;
  v34 = v6;
  v31 = 0;
  v32 = (v6 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19, v7);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      (*v32)(v20, v19);
      return;
    }

    v25 = v23;
    (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        sub_1DD515D8C(v30, v29, v31, v27);
        return;
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DD516D5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        sub_1DD515BB8(a1, a2, v22, v19);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DD516ED0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v21 = 0;
  v6 = 0;
  OUTLINED_FUNCTION_8_47();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_9:
    v16 = v12 | (v6 << 6);
    v24 = *(*(a3 + 48) + 8 * v16);

    v17 = a4(&v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_14:

        sub_1DD51607C(a1, a2, v21, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_14;
    }

    ++v13;
    if (*(a3 + 8 * v6))
    {
      OUTLINED_FUNCTION_14_3();
      v9 = v15 & v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1DD51705C()
{
  result = qword_1ECCDC180;
  if (!qword_1ECCDC180)
  {
    sub_1DD63C868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC180);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_1DD63FD28();
}

uint64_t sub_1DD517124(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001DD66C400 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000029 && 0x80000001DD66F0A0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000021 && 0x80000001DD66C3A0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000026 && 0x80000001DD66C3D0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

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

unint64_t sub_1DD517280(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5172FC(void *a1, unsigned int a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE430, &qword_1DD6576C8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD51780C();
  sub_1DD640EF8();
  v16 = 0;
  OUTLINED_FUNCTION_1_83(a2 & 1, &v16);
  if (!v2)
  {
    v15 = 1;
    OUTLINED_FUNCTION_1_83((a2 >> 8) & 1, &v15);
    v14 = 2;
    OUTLINED_FUNCTION_1_83(HIWORD(a2) & 1, &v14);
    v13 = 3;
    sub_1DD640C38();
  }

  return (*(v7 + 8))(v10, v5);
}

double sub_1DD517488(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE420, &qword_1DD6576C0);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD51780C();
  sub_1DD640ED8();
  v11[15] = 0;
  OUTLINED_FUNCTION_0_103();
  sub_1DD640B38();
  v11[14] = 1;
  OUTLINED_FUNCTION_0_103();
  sub_1DD640B38();
  v11[13] = 2;
  OUTLINED_FUNCTION_0_103();
  sub_1DD640B38();
  v11[12] = 3;
  OUTLINED_FUNCTION_0_103();
  sub_1DD640B48();
  v10 = v9;
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1DD517684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD517124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5176AC(uint64_t a1)
{
  v2 = sub_1DD51780C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5176E8(uint64_t a1)
{
  v2 = sub_1DD51780C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD517724(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DD517488(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 1) = BYTE1(v4) & 1;
    *(a2 + 2) = BYTE2(v4) & 1;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_1DD517768(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *v1;
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_1DD5172FC(a1, v3 | v4);
}

uint64_t sub_1DD5177B0(double *a1, double *a2)
{
  if (*(a1 + 1))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *a1;
  if (*(a1 + 2))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(a2 + 1))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *a2;
  if (*(a2 + 2))
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  return sub_1DD517108(v3 | v4, v6 | v7, a1[1], a2[1]);
}

unint64_t sub_1DD51780C()
{
  result = qword_1ECCDE428;
  if (!qword_1ECCDE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE428);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MegadomeECRTrialFactors.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD517940()
{
  result = qword_1ECCDE438;
  if (!qword_1ECCDE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE438);
  }

  return result;
}

unint64_t sub_1DD517998()
{
  result = qword_1ECCDE440;
  if (!qword_1ECCDE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE440);
  }

  return result;
}

unint64_t sub_1DD5179F0()
{
  result = qword_1ECCDE448;
  if (!qword_1ECCDE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE448);
  }

  return result;
}

uint64_t sub_1DD517A44(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v53 = v10;
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v13 = (v12 - v11);
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v14 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v14, qword_1EE16F068);
    v15 = sub_1DD63F9D8();
    v16 = sub_1DD640368();
    v51 = a1;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_54();
      v55 = OUTLINED_FUNCTION_62();
      *v17 = 136315138;
      v18 = OUTLINED_FUNCTION_1_84();
      *(v17 + 4) = sub_1DD39565C(v18, v19, &v55);
      _os_log_impl(&dword_1DD38D000, v15, v16, "%s Running MegadomeSignalProvider.addSignals()...", v17, 0xCu);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_0_1();
    }

    v52 = v13;
    sub_1DD63D068();
    if (qword_1EE166460 != -1)
    {
      OUTLINED_FUNCTION_4_2(&qword_1EE166460);
    }

    v20 = qword_1EE16F0C0;
    v21 = v8 + *(v4 + 20);
    *v21 = "ContactResolver.MegadomeSignalProvider.addSignals";
    *(v21 + 8) = 49;
    *(v21 + 16) = 2;
    v22 = v20;
    sub_1DD63F9B8();
    *(v8 + *(v4 + 24)) = v22;
    v23 = v22;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DD643F90;
    v25 = sub_1DD6408F8();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1DD392BD8();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_1DD63F998();

    v28 = 256;
    if (!v2[49])
    {
      v28 = 0;
    }

    v29 = sub_1DD517EC0(v2[40], v28 | v2[48]);
    v30 = sub_1DD63F9D8();
    v31 = sub_1DD640368();
    v32 = OUTLINED_FUNCTION_9_0(v31);
    if ((v29 & 1) == 0)
    {
      break;
    }

    if (v32)
    {
      OUTLINED_FUNCTION_54();
      v55 = OUTLINED_FUNCTION_5_36();
      *v29 = 136315138;
      v33 = OUTLINED_FUNCTION_1_84();
      *(v29 + 4) = sub_1DD39565C(v33, v34, &v55);
      OUTLINED_FUNCTION_27_20();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_23_0();
    }

    v4 = *a1;
    v13 = *(*a1 + 16);
    if (!v13)
    {
      goto LABEL_21;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD586A30();
      v4 = v49;
    }

    a1 = 0;
    v40 = (v4 + 32);
    while (a1 < *(v4 + 16))
    {
      a1 = (a1 + 1);
      sub_1DD5186C8(v40++);
      if (v13 == a1)
      {
        *v51 = v4;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  if (v32)
  {
    OUTLINED_FUNCTION_54();
    v55 = OUTLINED_FUNCTION_5_36();
    *v29 = 136315138;
    v41 = OUTLINED_FUNCTION_1_84();
    *(v29 + 4) = sub_1DD39565C(v41, v42, &v55);
    OUTLINED_FUNCTION_27_20();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_23_0();
  }

LABEL_21:
  sub_1DD51CB58(v8, v52, "%s MegadomeSignalProvider addSignals overall took %f secs.", v50, *&v51);
  sub_1DD41BFFC(v8);
  return (*(v53 + 8))(v52, v54);
}

uint64_t sub_1DD517EC0(char a1, __int16 a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v11 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v11, qword_1EE16F068);
    v4 = sub_1DD63F9D8();
    v12 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v12))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_32_16();
    *v2 = 136315138;
    v13 = OUTLINED_FUNCTION_1_84();
    *(v2 + 4) = sub_1DD39565C(v13, v14, &v31);
    v10 = "%s ❌ Skip due to SiriInference/contact_resolver_search_ecr OFF";
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v3 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v3, qword_1EE16F068);
    v4 = sub_1DD63F9D8();
    v5 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v5))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_32_16();
    *v2 = 136315138;
    v6 = OUTLINED_FUNCTION_1_84();
    *(v2 + 4) = sub_1DD39565C(v6, v7, &v31);
    v10 = "%s ❌ Skip due to megadomeECRTrialFactors nil";
LABEL_11:
    OUTLINED_FUNCTION_15_35(&dword_1DD38D000, v8, v9, v10);
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_23_0();
LABEL_12:

    return 0;
  }

  if ((a2 & 1) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v20, qword_1EE16F068);
    v4 = sub_1DD63F9D8();
    v21 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v21))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_32_16();
    *v2 = 136315138;
    v22 = OUTLINED_FUNCTION_1_84();
    *(v2 + 4) = sub_1DD39565C(v22, v23, &v31);
    v10 = "%s ❌ Skip due to Trial SIRI_VALUE_INFERENCE_MEGADOME_ECR.isMegadomeECREnabled OFF";
    goto LABEL_11;
  }

  if ((a2 & 0x100) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v16 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v16, qword_1EE16F068);
    v4 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v17))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_32_16();
    *v2 = 136315138;
    v18 = OUTLINED_FUNCTION_1_84();
    *(v2 + 4) = sub_1DD39565C(v18, v19, &v31);
    v10 = "%s ❌ Skip due to Trial SIRI_VALUE_INFERENCE_CONTACT_RESOLUTION.isMegadomeECREnabled OFF";
    goto LABEL_11;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v24 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v24, qword_1EE16F068);
  v25 = sub_1DD63F9D8();
  v26 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v26))
  {
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_32_16();
    *v2 = 136315138;
    v27 = OUTLINED_FUNCTION_1_84();
    *(v2 + 4) = sub_1DD39565C(v27, v28, &v31);
    OUTLINED_FUNCTION_15_35(&dword_1DD38D000, v29, v30, "%s ✅ isMegadomeECREnabled returning true");
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_23_0();
  }

  return 1;
}

double sub_1DD5181C0(void *a1, double a2)
{
  if (!a1)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v27 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v27, qword_1EE16F068);
    v28 = sub_1DD63F9D8();
    v29 = sub_1DD640378();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_62();
      v31 = swift_slowAlloc();
      *&v63[0] = OUTLINED_FUNCTION_62();
      *v30 = 136315650;
      v32 = OUTLINED_FUNCTION_1_84();
      *(v30 + 4) = sub_1DD39565C(v32, v33, v63);
      *(v30 + 12) = 2112;
      *(v30 + 14) = 0;
      *v31 = 0;
      *(v30 + 22) = 2048;
      *(v30 + 24) = 0x4002666666666666;
      _os_log_impl(&dword_1DD38D000, v28, v29, "%s Invalid UserDefaults passed in %@. Returning default %f", v30, 0x20u);
      sub_1DD390754(v31, &qword_1ECCDBF90, &qword_1DD6445B0);
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_7_44();
      OUTLINED_FUNCTION_0_1();
    }

    return 2.3;
  }

  v3 = a1;
  v4 = sub_1DD63FDA8();
  v5 = [v3 valueForKey_];

  if (!v5)
  {
    memset(v63, 0, sizeof(v63));
    sub_1DD390754(v63, &qword_1ECCDB980, &unk_1DD643DC0);
    if (a2 != 999.999)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v54 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v54, qword_1EE16F068);
      v9 = sub_1DD63F9D8();
      v55 = sub_1DD640368();
      if (!OUTLINED_FUNCTION_9_0(v55))
      {
        goto LABEL_8;
      }

      v56 = OUTLINED_FUNCTION_43_2();
      *&v63[0] = OUTLINED_FUNCTION_62();
      *v56 = 136315394;
      v57 = OUTLINED_FUNCTION_1_84();
      *(v56 + 4) = sub_1DD39565C(v57, v58, v63);
      *(v56 + 12) = 2048;
      *(v56 + 14) = a2;
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v59, v60, v61, v62, v56, 0x16u);
      OUTLINED_FUNCTION_3_1();
      goto LABEL_7;
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v34 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v34, qword_1EE16F068);
    v35 = sub_1DD63F9D8();
    v36 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v36))
    {
      v37 = swift_slowAlloc();
      *&v63[0] = OUTLINED_FUNCTION_41_11();
      *v37 = 136315906;
      v38 = OUTLINED_FUNCTION_1_84();
      *(v37 + 4) = sub_1DD39565C(v38, v39, v63);
      *(v37 + 12) = 2080;
      v40 = OUTLINED_FUNCTION_40_9("com.apple.siri.inference", *&v63[0]);
      *(v37 + 24) = OUTLINED_FUNCTION_30_15(v40, v41, v42, v43, v44, v45, v46, v47, *&v63[0]);
      *(v37 + 32) = 2048;
      *(v37 + 34) = 0x4002666666666666;
      OUTLINED_FUNCTION_27_20();
      _os_log_impl(v48, v49, v50, v51, v52, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_23_0();
    }

    return 2.3;
  }

  sub_1DD6406F8();
  swift_unknownObjectRelease();
  sub_1DD390754(v63, &qword_1ECCDB980, &unk_1DD643DC0);
  v6 = sub_1DD63FDA8();
  [v3 doubleForKey_];
  a2 = v7;

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v8 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v8, qword_1EE16F068);
  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640378();
  if (!OUTLINED_FUNCTION_9_0(v10))
  {
    goto LABEL_8;
  }

  v11 = swift_slowAlloc();
  *&v63[0] = OUTLINED_FUNCTION_41_11();
  *v11 = 136315906;
  v12 = OUTLINED_FUNCTION_1_84();
  *(v11 + 4) = sub_1DD39565C(v12, v13, v63);
  *(v11 + 12) = 2080;
  v14 = OUTLINED_FUNCTION_40_9("com.apple.siri.inference", *&v63[0]);
  *(v11 + 24) = OUTLINED_FUNCTION_30_15(v14, v15, v16, v17, v18, v19, v20, v21, *&v63[0]);
  *(v11 + 32) = 2048;
  *(v11 + 34) = a2;
  OUTLINED_FUNCTION_27_20();
  _os_log_impl(v22, v23, v24, v25, v26, 0x2Au);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_4_6();
LABEL_7:
  OUTLINED_FUNCTION_0_1();
LABEL_8:

  return a2;
}

void sub_1DD5186C8(uint64_t *a1)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD63F9F8();
    __swift_project_value_buffer(v10, qword_1EE16F068);
    v22 = sub_1DD63F9D8();
    v11 = sub_1DD640368();
    if (!os_log_type_enabled(v22, v11))
    {
      goto LABEL_20;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v23);
    v14 = "%s Skip as candidateSet.isEmpty";
    goto LABEL_13;
  }

  type metadata accessor for MegadomeClient();
  sub_1DD63F488();
  v4 = sub_1DD63F478();
  sub_1DD518AAC(v2, v4);
  v22 = v5;

  if (!v22)
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1EE16F068);
    v22 = sub_1DD63F9D8();
    v11 = sub_1DD640368();
    if (!os_log_type_enabled(v22, v11))
    {
      goto LABEL_20;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v23);
    v14 = "%s Skip calling ECR b/c of invalid GDEntityResolutionRequest, i.e. all contacts have no handle";
LABEL_13:
    _os_log_impl(&dword_1DD38D000, v22, v11, v14, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12B3DA0](v13, -1, -1);
    MEMORY[0x1E12B3DA0](v12, -1, -1);
LABEL_14:

    return;
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1DD51C44C(v22, v6, v7);
  if (!v8)
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD63F9F8();
    __swift_project_value_buffer(v16, qword_1EE16F068);
    v17 = sub_1DD63F9D8();
    v18 = sub_1DD640378();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v23);
      _os_log_impl(&dword_1DD38D000, v17, v18, "%s No GDEntityResolutionResult returned", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
      MEMORY[0x1E12B3DA0](v19, -1, -1);

      goto LABEL_14;
    }

LABEL_20:
    v9 = v22;
    goto LABEL_21;
  }

  v21 = v8;
  sub_1DD519534(v8, a1);

  v9 = v21;
LABEL_21:
}

void sub_1DD518AAC(uint64_t a1, const char *a2)
{
  v113 = a2;
  v3 = OUTLINED_FUNCTION_57_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_1_4();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_0();
  v115 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v113 - v13;
  v15 = 0;
  v16 = *(a1 + 16);
  v116 = a1;
  v117 = MEMORY[0x1E69E7CC0];
  v114 = v16;
  while (v16 != v15)
  {
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = *(v6 + 72);
    sub_1DD3C68F8(a1 + v17 + v18 * v15, v14);
    if (*(*&v14[*(type metadata accessor for Contact(0) + 80)] + 16))
    {
      sub_1DD51D234(v14, v115, &qword_1ECCDBBE8, &qword_1DD644470);
      v19 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118[0] = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42B4F8(0, *(v19 + 16) + 1, 1);
        v16 = v114;
        v19 = v118[0];
      }

      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v24 = v22 + 1;
        v117 = v22;
        sub_1DD42B4F8(v21 > 1, v22 + 1, 1);
        v23 = v24;
        v22 = v117;
        v19 = v118[0];
        v16 = v114;
      }

      ++v15;
      *(v19 + 16) = v23;
      v117 = v19;
      sub_1DD51D234(v115, v19 + v17 + v22 * v18, &qword_1ECCDBBE8, &qword_1DD644470);
      a1 = v116;
    }

    else
    {
      sub_1DD390754(v14, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v15;
    }
  }

  v25 = v117;
  v26 = *(v117 + 16);
  if (v26)
  {
    v118[0] = MEMORY[0x1E69E7CC0];
    sub_1DD640988();
    v27 = v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v28 = *(v6 + 72);
    do
    {
      sub_1DD3C68F8(v27, v9);
      v29 = *v9;
      v30 = v9[1];
      v31 = objc_allocWithZone(MEMORY[0x1E69A9EA0]);

      sub_1DD51CDC8(v29, v30, 0x6361746E6F434E43, 0xE900000000000074);
      sub_1DD390754(v9, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD640958();
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      v27 += v28;
      --v26;
    }

    while (v26);

    v32 = v118[0];
    a1 = v116;
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v33 = 0xEE005D5243452065;
  v34 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v34, qword_1EE16F068);

  v35 = sub_1DD63F9D8();
  v36 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v36))
  {
    v37 = swift_slowAlloc();
    v118[0] = OUTLINED_FUNCTION_28_11();
    *v37 = 136315906;
    *(v37 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, v118);
    *(v37 + 12) = 2048;
    *(v37 + 14) = v114;

    *(v37 + 22) = 2048;
    *(v37 + 24) = sub_1DD3CC020();

    *(v37 + 32) = 2080;
    v38 = sub_1DD39638C(0, &qword_1ECCDE488, 0x1E69A9EA0);
    v39 = MEMORY[0x1E12B2430](v32, v38);
    v41 = v32;
    v42 = sub_1DD39565C(v39, v40, v118);

    *(v37 + 34) = v42;
    v32 = v41;
    _os_log_impl(&dword_1DD38D000, v35, v36, "%s Converted CandidateContact (size=%ld)\n-> GDEntitySourceIDs (size=%ld): %s", v37, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  if (sub_1DD3CC020())
  {
    sub_1DD63F448();
    v43 = sub_1DD63F768();
    v45 = v44;

    v117 = v32;
    if (!v45)
    {
      sub_1DD63F448();
      v46 = sub_1DD63F748();

      if (v46)
      {
        v47 = [v46 recognition];

        if (!v47)
        {
          __break(1u);
          return;
        }

        v43 = sub_1DD51D160(v47);
        v45 = v48;
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      v55 = sub_1DD63F9D8();
      v56 = sub_1DD640368();
      if (OUTLINED_FUNCTION_9_0(v56))
      {
        v57 = v43;
        v58 = OUTLINED_FUNCTION_54();
        v33 = OUTLINED_FUNCTION_62();
        v118[0] = v33;
        *v58 = 136315138;
        v59 = OUTLINED_FUNCTION_1_84();
        *(v58 + 4) = sub_1DD39565C(v59, v60, v61);
        OUTLINED_FUNCTION_37_0();
        _os_log_impl(v62, v63, v64, v65, v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        OUTLINED_FUNCTION_13_36();
        v43 = v57;
        OUTLINED_FUNCTION_0_1();
      }

      if (!v45)
      {
        v103 = sub_1DD63F9D8();
        v104 = sub_1DD640378();
        v72 = v43;
        if (OUTLINED_FUNCTION_9_0(v104))
        {
          v105 = OUTLINED_FUNCTION_54();
          v33 = OUTLINED_FUNCTION_62();
          v118[0] = v33;
          *v105 = 136315138;
          v106 = OUTLINED_FUNCTION_1_84();
          *(v105 + 4) = sub_1DD39565C(v106, v107, v108);
          OUTLINED_FUNCTION_37_0();
          _os_log_impl(v109, v110, v111, v112, v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v33);
          OUTLINED_FUNCTION_13_36();
          OUTLINED_FUNCTION_0_1();
        }

        v45 = 0;
        a1 = v116;
        goto LABEL_37;
      }

      a1 = v116;
    }

    v66 = sub_1DD63F9D8();
    v67 = sub_1DD640368();

    if (os_log_type_enabled(v66, v67))
    {
      OUTLINED_FUNCTION_43_2();
      v119 = OUTLINED_FUNCTION_26_22();
      *v33 = 136315394;
      v68 = OUTLINED_FUNCTION_1_84();
      v71 = sub_1DD39565C(v68, v69, v70);
      OUTLINED_FUNCTION_16_36(v71);
      v72 = v43;
      v118[0] = v43;
      v118[1] = v45;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
      v73 = sub_1DD63FE38();
      v75 = sub_1DD39565C(v73, v74, &v119);

      *(v33 + 14) = v75;
      a1 = v116;
      OUTLINED_FUNCTION_34_14(&dword_1DD38D000, v66, v67, "%s For use in GDEntityResolutionRequest, utterance: %s", v113, v114);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_13_36();
    }

    else
    {
      v72 = v43;
    }

LABEL_37:
    v76 = sub_1DD51AFA4(a1);

    v77 = sub_1DD63F9D8();
    v78 = sub_1DD640368();

    if (os_log_type_enabled(v77, v78))
    {
      OUTLINED_FUNCTION_43_2();
      v118[0] = OUTLINED_FUNCTION_26_22();
      *v33 = 136315394;
      v79 = OUTLINED_FUNCTION_1_84();
      v82 = sub_1DD39565C(v79, v80, v81);
      OUTLINED_FUNCTION_16_36(v82);
      v119 = v76;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE480, &qword_1DD657848);
      v83 = sub_1DD63FE38();
      v85 = sub_1DD39565C(v83, v84, v118);

      *(v33 + 14) = v85;
      OUTLINED_FUNCTION_34_14(&dword_1DD38D000, v77, v78, "%s For use in GDEntityResolutionRequest, spans: %s", v113, v114);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_13_36();
    }

    v86 = v117;
    v87 = objc_allocWithZone(MEMORY[0x1E69A9E88]);
    v88 = sub_1DD51CE5C(v86, v72, v45, v76, 5, 1);
    v89 = sub_1DD63F9D8();
    v90 = sub_1DD640368();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = OUTLINED_FUNCTION_62();
      v118[0] = OUTLINED_FUNCTION_41_11();
      *v91 = 136315650;
      v92 = OUTLINED_FUNCTION_1_84();
      *(v91 + 4) = sub_1DD39565C(v92, v93, v94);
      *(v91 + 12) = 2080;
      v119 = [v88 mode];
      type metadata accessor for GDEntityResolutionMode(0);
      v95 = sub_1DD63FE38();
      v97 = sub_1DD39565C(v95, v96, v118);

      *(v91 + 14) = v97;
      *(v91 + 22) = 2080;
      v98 = [v88 includeFeatures];
      v99 = v98 == 0;
      if (v98)
      {
        v100 = 1702195828;
      }

      else
      {
        v100 = 0x65736C6166;
      }

      if (v99)
      {
        v101 = 0xE500000000000000;
      }

      else
      {
        v101 = 0xE400000000000000;
      }

      v102 = sub_1DD39565C(v100, v101, v118);

      *(v91 + 24) = v102;
      _os_log_impl(&dword_1DD38D000, v89, v90, "%s Created GDEntityResolutionRequest, request:\nmode=%s\nincludeFeatures=%s", v91, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_4_6();
    }

    return;
  }

  v49 = sub_1DD63F9D8();
  v50 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v50))
  {
    OUTLINED_FUNCTION_54();
    v118[0] = OUTLINED_FUNCTION_5_36();
    *v32 = 136315138;
    v51 = OUTLINED_FUNCTION_2_71();
    *(v32 + 4) = sub_1DD39565C(v51, 0xEE005D5243452065, v52);
    OUTLINED_FUNCTION_15_35(&dword_1DD38D000, v53, v54, "%s Skip creation of GDEntityResolutionRequest as all the contacts got filtered out");
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_23_0();
  }
}

void sub_1DD519534(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_39_13();
  v3 = v2;
  v5 = v4;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v169 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v9);
  v164 = (&v158 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  v168 = (&v158 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_1_4();
  v17 = v15 - v16;
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v180 = (&v158 - v20);
  v163 = v3;
  v167 = *v3;
  if (!*(v167 + 16) || (v21 = [v5 rankedResults], sub_1DD39638C(0, &qword_1ECCDE450, 0x1E69A9EE0), sub_1DD640118(), v21, v22 = sub_1DD3CC020(), , !v22))
  {
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_112;
    }

    goto LABEL_41;
  }

  v179 = v17;
  v175 = v11;
  v23 = [v5 rankedResults];
  v24 = sub_1DD640118();

  v25 = sub_1DD3CC020();
  v26 = 0;
  v159 = 0;
  v178 = v24 & 0xC000000000000001;
  *&v177 = v24 & 0xFFFFFFFFFFFFFF8;
  v27 = MEMORY[0x1E69E7CC0];
  v160 = v24;
  v176 = v24 + 32;
  v165 = v25;
  while (1)
  {
    if (v26 == v25)
    {

      v57 = sub_1DD3CC020();
      if (v57)
      {
        v58 = v57;
        v181[0] = MEMORY[0x1E69E7CC0];
        sub_1DD42B91C(0, v57 & ~(v57 >> 63), 0);
        if (v58 < 0)
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
          return;
        }

        v59 = 0;
        v60 = v181[0];
        v178 = v27 & 0xC000000000000001;
        v61 = v175;
        v62 = v27;
        do
        {
          if (v178)
          {
            v63 = MEMORY[0x1E12B2C10](v59, v27);
          }

          else
          {
            v63 = *(v27 + 8 * v59 + 32);
          }

          v64 = v63;
          v65 = [v63 sourceID];
          if (v65)
          {
            v66 = v65;
            v67 = [v65 value];

            v17 = sub_1DD63FDD8();
            v69 = v68;

            v61 = v175;
          }

          else
          {
            v17 = 0;
            v69 = 0;
          }

          v181[0] = v60;
          v71 = *(v60 + 16);
          v70 = *(v60 + 24);
          if (v71 >= v70 >> 1)
          {
            sub_1DD42B91C(v70 > 1, v71 + 1, 1);
            v60 = v181[0];
          }

          ++v59;
          *(v60 + 16) = v71 + 1;
          v72 = (v60 + 24 * v71);
          v72[4] = v17;
          v72[5] = v69;
          v72[6] = v64;
          v27 = v62;
        }

        while (v58 != v59);
      }

      else
      {

        v60 = MEMORY[0x1E69E7CC0];
        v61 = v175;
      }

      v75 = sub_1DD51A580(v60);
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v76 = OUTLINED_FUNCTION_33_11();
      OUTLINED_FUNCTION_130(v76, qword_1EE16F068);

      v178 = v60;
      v77 = sub_1DD63F9D8();
      v78 = sub_1DD640368();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = OUTLINED_FUNCTION_43_2();
        v181[0] = OUTLINED_FUNCTION_28_11();
        *v79 = 136315394;
        v80 = sub_1DD39565C(v17, 0xEE005D5243452065, v181);
        OUTLINED_FUNCTION_29_18(v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
        sub_1DD39638C(0, &qword_1ECCDE458, 0x1E69A9ED8);
        sub_1DD51D290();
        v81 = sub_1DD63FC68();
        v83 = sub_1DD39565C(v81, v82, v181);

        *(v79 + 14) = v83;
        _os_log_impl(&dword_1DD38D000, v77, v78, "%s sourceIdRankerItemDict: %s", v79, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_25_12();
      }

      v84 = v164;
      v85 = v167;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v85;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD586A18();
        v88 = v157;
      }

      v89 = 0;
      v90 = *(v85 + 16);
      v176 = v88;
      *v163 = v88;
      *&v87 = 136315650;
      v177 = v87;
      *&v87 = 136315394;
      v174 = v87;
      while (1)
      {
        while (1)
        {
          if (v89 == v90)
          {
            v91 = 1;
            v89 = v90;
            v92 = v179;
          }

          else
          {
            if ((v89 & 0x8000000000000000) != 0)
            {
              goto LABEL_106;
            }

            if (v89 >= *(v85 + 16))
            {
              goto LABEL_107;
            }

            OUTLINED_FUNCTION_22_25();
            v95 = v93 + v94 * v89;
            v96 = *(v61 + 48);
            v97 = v168;
            *v168 = v89;
            sub_1DD3C68F8(v95, v97 + v96);
            v98 = v97;
            v92 = v179;
            sub_1DD51D234(v98, v179, &qword_1ECCDC238, &unk_1DD654E40);
            v91 = 0;
            ++v89;
          }

          v99 = v180;
          __swift_storeEnumTagSinglePayload(v92, v91, 1, v61);
          sub_1DD51D234(v92, v99, &qword_1ECCDC240, &qword_1DD645AA0);
          if (__swift_getEnumTagSinglePayload(v99, 1, v61) == 1)
          {
LABEL_100:

LABEL_101:
            OUTLINED_FUNCTION_31_17();
            return;
          }

          isa = v99->isa;
          sub_1DD51D234(v99 + *(v61 + 48), v84, &qword_1ECCDBBE8, &qword_1DD644470);
          if (*(v75 + 16))
          {
            v102 = *v84;
            v101 = v84[1];

            sub_1DD3FE8AC();
            v104 = v103;

            if (v104)
            {
              break;
            }
          }

          sub_1DD390754(v84, &qword_1ECCDBBE8, &qword_1DD644470);
        }

        v181[0] = v102;
        v181[1] = v101;

        sub_1DD640048();
        if (!*(v75 + 16))
        {
          break;
        }

        v105 = sub_1DD3FE8AC();
        v107 = v106;

        if ((v107 & 1) == 0)
        {
          goto LABEL_86;
        }

        v108 = *(*(v75 + 56) + 8 * v105);
        [v108 score];
        v110 = v109;
        v111 = v176;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((isa & 0x8000000000000000) != 0)
          {
            goto LABEL_99;
          }
        }

        else
        {
          sub_1DD586A18();
          v111 = v156;
          if ((isa & 0x8000000000000000) != 0)
          {
LABEL_99:
            __break(1u);
            goto LABEL_100;
          }
        }

        if (isa >= *(v111 + 16))
        {
          goto LABEL_114;
        }

        OUTLINED_FUNCTION_22_25();
        v114 = v112 + v113 * isa;
        v115 = v114 + *(v162 + 36);
        *(v115 + *(type metadata accessor for ContactResolver.SignalSet(0) + 240)) = v110;
        *v163 = v111;
        v116 = [v108 features];
        v117 = v111;
        v176 = v111;
        if (!v116)
        {
          v147 = v108;
          v132 = sub_1DD63F9D8();
          v148 = sub_1DD640378();

          if (os_log_type_enabled(v132, v148))
          {
            v149 = OUTLINED_FUNCTION_43_2();
            v150 = swift_slowAlloc();
            v151 = OUTLINED_FUNCTION_62();
            v181[0] = v151;
            *v149 = v174;
            v152 = OUTLINED_FUNCTION_1_84();
            *(v149 + 4) = sub_1DD39565C(v152, v153, v154);
            *(v149 + 12) = 2112;
            *(v149 + 14) = v147;
            *v150 = v147;
            v155 = v147;
            _os_log_impl(&dword_1DD38D000, v132, v148, "%s Missing features for this? %@", v149, 0x16u);
            sub_1DD390754(v150, &qword_1ECCDBF90, &qword_1DD6445B0);
            OUTLINED_FUNCTION_0_1();
            __swift_destroy_boxed_opaque_existential_1(v151);
            v61 = v175;
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();

LABEL_88:
          }

          else
          {
          }

          v146 = v84;
          goto LABEL_91;
        }

        if (isa >= *(v111 + 16))
        {
          goto LABEL_115;
        }

        v118 = v116;
        sub_1DD51A618(v116, v114 + *(v162 + 36));
        *v163 = v117;
        v119 = v161;
        sub_1DD3C68F8(v84, v161);
        v120 = sub_1DD63F9D8();
        v121 = sub_1DD640368();
        if (OUTLINED_FUNCTION_9_0(v121))
        {
          OUTLINED_FUNCTION_43_2();
          v173 = OUTLINED_FUNCTION_26_22();
          v181[0] = v173;
          *isa = v174;
          v122 = OUTLINED_FUNCTION_1_84();
          v125 = sub_1DD39565C(v122, v123, v124);
          OUTLINED_FUNCTION_16_36(v125);
          v172 = v120;

          v84 = v164;
          sub_1DD390754(v119, &qword_1ECCDBBE8, &qword_1DD644470);
          v126 = OUTLINED_FUNCTION_15_0();
          v129 = sub_1DD39565C(v126, v127, v128);

          *(isa + 14) = v129;
          v130 = v172;
          OUTLINED_FUNCTION_34_14(&dword_1DD38D000, v172, v121, "%s setSignalSet for %s", v158, v159);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_13_36();
        }

        else
        {

          sub_1DD390754(v119, &qword_1ECCDBBE8, &qword_1DD644470);
        }

        sub_1DD390754(v84, &qword_1ECCDBBE8, &qword_1DD644470);
        v61 = v175;
LABEL_92:
        v85 = v167;
      }

LABEL_86:
      v131 = v166;
      sub_1DD3C68F8(v84, v166);

      v132 = sub_1DD63F9D8();
      v133 = sub_1DD640378();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = OUTLINED_FUNCTION_62();
        v181[0] = OUTLINED_FUNCTION_41_11();
        *v134 = v177;
        v135 = OUTLINED_FUNCTION_1_84();
        v138 = sub_1DD39565C(v135, v136, v137);
        OUTLINED_FUNCTION_29_18(v138);
        v139 = *v131;
        v140 = v131[1];

        sub_1DD390754(v131, &qword_1ECCDBBE8, &qword_1DD644470);
        v141 = v139;
        v84 = v164;
        v142 = sub_1DD39565C(v141, v140, v181);

        *(v134 + 14) = v142;
        *(v134 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
        sub_1DD39638C(0, &qword_1ECCDE458, 0x1E69A9ED8);
        sub_1DD51D290();
        v143 = sub_1DD63FC68();
        v145 = sub_1DD39565C(v143, v144, v181);

        *(v134 + 24) = v145;
        v61 = v175;
        _os_log_impl(&dword_1DD38D000, v132, v133, "%s Missing key? %s in this dict? %s", v134, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_36();
        OUTLINED_FUNCTION_25_12();
        goto LABEL_88;
      }

      sub_1DD390754(v131, &qword_1ECCDBBE8, &qword_1DD644470);
      v146 = v84;
LABEL_91:
      sub_1DD390754(v146, &qword_1ECCDBBE8, &qword_1DD644470);
      goto LABEL_92;
    }

    if (v178)
    {
      v28 = MEMORY[0x1E12B2C10](v26, v160);
    }

    else
    {
      if (v26 >= *(v177 + 16))
      {
        goto LABEL_103;
      }

      v28 = *(v176 + 8 * v26);
    }

    v29 = v28;
    v30 = __OFADD__(v26++, 1);
    if (v30)
    {
      break;
    }

    v31 = [v28 rankedItems];
    sub_1DD39638C(0, &qword_1ECCDE458, 0x1E69A9ED8);
    v17 = sub_1DD640118();

    if (v17 >> 62)
    {
      v32 = sub_1DD6407B8();
    }

    else
    {
      v32 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v27 >> 62;
    if (v27 >> 62)
    {
      v34 = sub_1DD6407B8();
    }

    else
    {
      v34 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = v32 + v34;
    if (__OFADD__(v34, v32))
    {
      goto LABEL_104;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v33)
      {
LABEL_19:
        sub_1DD6407B8();
      }

LABEL_20:
      v27 = sub_1DD640918();
      v36 = v27 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v33)
    {
      goto LABEL_19;
    }

    v36 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v35 > *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

LABEL_21:
    v37 = *(v36 + 16);
    v38 = (*(v36 + 24) >> 1) - v37;
    v39 = v36 + 8 * v37;
    if (v17 >> 62)
    {
      v41 = sub_1DD6407B8();
      if (!v41)
      {
        goto LABEL_35;
      }

      v42 = v41;
      v43 = sub_1DD6407B8();
      if (v38 < v43)
      {
        goto LABEL_110;
      }

      if (v42 < 1)
      {
        goto LABEL_111;
      }

      v170 = v43;
      v171 = v36;
      v172 = v32;
      v173 = v26;
      *&v174 = v27;
      v44 = v39 + 32;
      sub_1DD51D1D0();
      for (i = 0; i != v42; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE460, &unk_1DD657830);
        v46 = sub_1DD5B6064(v181, i, v17);
        v48 = *v47;
        v46(v181, 0);
        *(v44 + 8 * i) = v48;
      }

      v26 = v173;
      v27 = v174;
      v25 = v165;
      v36 = v171;
      v32 = v172;
      v40 = v170;
LABEL_31:

      if (v40 < v32)
      {
        goto LABEL_105;
      }

      if (v40 > 0)
      {
        v49 = *(v36 + 16);
        v30 = __OFADD__(v49, v40);
        v50 = v49 + v40;
        if (v30)
        {
          goto LABEL_108;
        }

        *(v36 + 16) = v50;
      }
    }

    else
    {
      v40 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
        if (v38 < v40)
        {
          goto LABEL_109;
        }

        swift_arrayInitWithCopy();
        goto LABEL_31;
      }

LABEL_35:

      if (v32 > 0)
      {
        goto LABEL_105;
      }
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_41:
  v51 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v51, qword_1EE16F068);
  v180 = sub_1DD63F9D8();
  v52 = sub_1DD640368();
  if (os_log_type_enabled(v180, v52))
  {
    v53 = OUTLINED_FUNCTION_54();
    v54 = OUTLINED_FUNCTION_62();
    v181[0] = v54;
    *v53 = 136315138;
    v55 = OUTLINED_FUNCTION_1_84();
    *(v53 + 4) = sub_1DD39565C(v55, v56, v181);
    _os_log_impl(&dword_1DD38D000, v180, v52, "%s Early exit as either result.rankedResults or candidates is empty", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_0_1();

    goto LABEL_101;
  }

  OUTLINED_FUNCTION_31_17();
}

uint64_t sub_1DD51A580(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD90, &qword_1DD654CE8);
    v3 = sub_1DD640A78();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1DD51CF7C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

id sub_1DD51A618(void *a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for ContactResolver.SignalSet(0) + 244));
  [a1 candidateNameScore];
  v3[2] = v4;
  [a1 candidateCommunicationScore];
  v3[3] = v5;
  [a1 candidateOrganizationScore];
  v3[4] = v6;
  [a1 candidateLocationScore];
  v3[5] = v7;
  [a1 candidateEventLocationScore];
  v3[6] = v8;
  [a1 candidateEventNameScore];
  v3[7] = v9;
  [a1 topicScore];
  v3[8] = v10;
  [a1 messagePopularityGivenTimeOfDay];
  v3[9] = v11;
  [a1 callPopularityGivenTimeOfDay];
  v3[10] = v12;
  [a1 facetimePopularityGivenTimeOfDay];
  v3[11] = v13;
  [a1 timeOfDayGivenMessageWithEntity];
  v3[12] = v14;
  [a1 timeOfDayGivenCallWithEntity];
  v3[13] = v15;
  [a1 timeOfDayGivenFacetimeWithEntity];
  v3[14] = v16;
  [a1 messageWithEntityGivenTimeOfDay];
  v3[15] = v17;
  [a1 callWithEntityGivenTimeOfDay];
  v3[16] = v18;
  [a1 facetimeWithEntityGivenTimeOfDay];
  v3[17] = v19;
  [a1 messagePopularityGivenCoarseTimeOfDay];
  v3[18] = v20;
  [a1 callPopularityGivenCoarseTimeOfDay];
  v3[19] = v21;
  [a1 facetimePopularityGivenCoarseTimeOfDay];
  v3[20] = v22;
  [a1 coarseTimeOfDayGivenMessageWithEntity];
  v3[21] = v23;
  [a1 coarseTimeOfDayGivenCallWithEntity];
  v3[22] = v24;
  [a1 coarseTimeOfDayGivenFacetimeWithEntity];
  v3[23] = v25;
  [a1 messageWithEntityGivenCoarseTimeOfDay];
  v3[24] = v26;
  [a1 callWithEntityGivenCoarseTimeOfDay];
  v3[25] = v27;
  [a1 facetimeWithEntityGivenCoarseTimeOfDay];
  v3[26] = v28;
  [a1 messagePopularityGivenDayOfWeek];
  v3[27] = v29;
  [a1 callPopularityGivenDayOfWeek];
  v3[28] = v30;
  [a1 facetimePopularityGivenDayOfWeek];
  v3[29] = v31;
  [a1 dayOfWeekGivenMessageWithEntity];
  v3[30] = v32;
  [a1 dayOfWeekGivenCallWithEntity];
  v3[31] = v33;
  [a1 dayOfWeekGivenFacetimeWithEntity];
  v3[32] = v34;
  [a1 messageWithEntityGivenDayOfWeek];
  v3[33] = v35;
  [a1 callWithEntityGivenDayOfWeek];
  v3[34] = v36;
  [a1 facetimeWithEntityGivenDayOfWeek];
  v3[35] = v37;
  [a1 messagePopularityGivenFocusMode];
  v3[36] = v38;
  [a1 callPopularityGivenFocusMode];
  v3[37] = v39;
  [a1 facetimePopularityGivenFocusMode];
  v3[38] = v40;
  [a1 focusModeGivenMessageWithEntity];
  v3[39] = v41;
  [a1 focusModeGivenCallWithEntity];
  v3[40] = v42;
  [a1 focusModeGivenFacetimeWithEntity];
  v3[41] = v43;
  [a1 messageWithEntityGivenFocusMode];
  v3[42] = v44;
  [a1 callWithEntityGivenFocusMode];
  v3[43] = v45;
  [a1 facetimeWithEntityGivenFocusMode];
  v3[44] = v46;
  [a1 messagePopularityGivenLOI];
  v3[45] = v47;
  [a1 callPopularityGivenLOI];
  v3[46] = v48;
  [a1 facetimePopularityGivenLOI];
  v3[47] = v49;
  [a1 LOIGivenMessageWithEntity];
  v3[48] = v50;
  [a1 LOIGivenCallWithEntity];
  v3[49] = v51;
  [a1 LOIGivenFacetimeWithEntity];
  v3[50] = v52;
  [a1 messageWithEntityGivenLOI];
  v3[51] = v53;
  [a1 callWithEntityGivenLOI];
  v3[52] = v54;
  [a1 facetimeWithEntityGivenLOI];
  v3[53] = v55;
  [a1 messagePopularityGivenSpecificGeoHash];
  v3[54] = v56;
  [a1 callPopularityGivenSpecificGeoHash];
  v3[55] = v57;
  [a1 facetimePopularityGivenSpecificGeoHash];
  v3[56] = v58;
  [a1 specificGeoHashGivenMessageWithEntity];
  v3[57] = v59;
  [a1 specificGeoHashGivenCallWithEntity];
  v3[58] = v60;
  [a1 specificGeoHashGivenFacetimeWithEntity];
  v3[59] = v61;
  [a1 messageWithEntityGivenSpecificGeoHash];
  v3[60] = v62;
  [a1 callWithEntityGivenSpecificGeoHash];
  v3[61] = v63;
  [a1 facetimeWithEntityGivenSpecificGeoHash];
  v3[62] = v64;
  [a1 messagePopularityGivenCoarseGeoHash];
  v3[63] = v65;
  [a1 callPopularityGivenCoarseGeoHash];
  v3[64] = v66;
  [a1 facetimePopularityGivenCoarseGeoHash];
  v3[65] = v67;
  [a1 coarseGeoHashGivenMessageWithEntity];
  v3[66] = v68;
  [a1 coarseGeoHashGivenCallWithEntity];
  v3[67] = v69;
  [a1 coarseGeoHashGivenFacetimeWithEntity];
  v3[68] = v70;
  [a1 messageWithEntityGivenCoarseGeoHash];
  v3[69] = v71;
  [a1 callWithEntityGivenCoarseGeoHash];
  v3[70] = v72;
  [a1 facetimeWithEntityGivenCoarseGeoHash];
  v3[71] = v73;
  [a1 messagePopularityGivenLargeGeoHash];
  v3[72] = v74;
  [a1 callPopularityGivenLargeGeoHash];
  v3[73] = v75;
  [a1 facetimePopularityGivenLargeGeoHash];
  v3[74] = v76;
  [a1 largeGeoHashGivenMessageWithEntity];
  v3[75] = v77;
  [a1 largeGeoHashGivenCallWithEntity];
  v3[76] = v78;
  [a1 largeGeoHashGivenFacetimeWithEntity];
  v3[77] = v79;
  [a1 messageWithEntityGivenLargeGeoHash];
  v3[78] = v80;
  [a1 callWithEntityGivenLargeGeoHash];
  v3[79] = v81;
  [a1 facetimeWithEntityGivenLargeGeoHash];
  v3[80] = v82;
  [a1 messagePopularityGivenMicroLocation];
  v3[81] = v83;
  [a1 callPopularityGivenMicroLocation];
  v3[82] = v84;
  [a1 facetimePopularityGivenMicroLocation];
  v3[83] = v85;
  [a1 microLocationGivenMessageWithEntity];
  v3[84] = v86;
  [a1 microLocationGivenCallWithEntity];
  v3[85] = v87;
  [a1 microLocationGivenFacetimeWithEntity];
  v3[86] = v88;
  [a1 messageWithEntityGivenMicroLocation];
  v3[87] = v89;
  [a1 callWithEntityGivenMicroLocation];
  v3[88] = v90;
  [a1 facetimeWithEntityGivenMicroLocation];
  v3[89] = v91;
  [a1 messagePopularityGivenMotionState];
  v3[90] = v92;
  [a1 callPopularityGivenMotionState];
  v3[91] = v93;
  [a1 facetimePopularityGivenMotionState];
  v3[92] = v94;
  [a1 motionStateGivenMessageWithEntity];
  v3[93] = v95;
  [a1 motionStateGivenCallWithEntity];
  v3[94] = v96;
  [a1 motionStateGivenFacetimeWithEntity];
  v3[95] = v97;
  [a1 messageWithEntityGivenMotionState];
  v3[96] = v98;
  [a1 callWithEntityGivenMotionState];
  v3[97] = v99;
  [a1 facetimeWithEntityGivenMotionState];
  v3[98] = v100;
  [a1 messagePopularityGivenWiFi];
  v3[99] = v101;
  [a1 callPopularityGivenWiFi];
  v3[100] = v102;
  [a1 facetimePopularityGivenWiFi];
  v3[101] = v103;
  [a1 wiFiGivenMessageWithEntity];
  v3[102] = v104;
  [a1 wiFiGivenCallWithEntity];
  v3[103] = v105;
  [a1 wiFiGivenFacetimeWithEntity];
  v3[104] = v106;
  [a1 messageWithEntityGivenWiFi];
  v3[105] = v107;
  [a1 callWithEntityGivenWiFi];
  v3[106] = v108;
  [a1 facetimeWithEntityGivenWiFi];
  v3[107] = v109;
  [a1 messagePopularityGivenSequence];
  v3[108] = v110;
  [a1 callPopularityGivenSequence];
  v3[109] = v111;
  [a1 facetimePopularityGivenSequence];
  v3[110] = v112;
  [a1 sequenceGivenMessageWithEntity];
  v3[111] = v113;
  [a1 sequenceGivenCallWithEntity];
  v3[112] = v114;
  [a1 sequenceGivenFacetimeWithEntity];
  v3[113] = v115;
  v3[114] = [a1 lastExecutionAge];
  v3[115] = [a1 medianTimeIntervalBetweenExecution];
  v3[116] = [a1 dailyDoseL1Error];
  [a1 dailyDoseL2Error];
  v3[117] = v116;
  [a1 shortTermTrendingPopularity];
  v3[118] = v117;
  [a1 trendingPopularity];
  v3[119] = v118;
  result = [a1 longTermTrendingPopularity];
  v3[120] = v120;
  return result;
}

uint64_t sub_1DD51AFA4(uint64_t a1)
{
  v116 = type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v115 = v5 - v4;
  v114 = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v113 = v8 - v7;
  v126 = sub_1DD63DE08();
  OUTLINED_FUNCTION_0();
  v118 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v108 - v17;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  MEMORY[0x1EEE9AC00](v128);
  v112 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v124 = &v108 - v21;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v108 - v24;
  v27 = *(a1 + 16);
  if (!v27)
  {
LABEL_28:
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v75 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v75, qword_1EE16F068);
    v76 = sub_1DD63F9D8();
    v77 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v77))
    {
      OUTLINED_FUNCTION_54();
      v129 = OUTLINED_FUNCTION_5_36();
      *v1 = 136315138;
      v78 = OUTLINED_FUNCTION_1_84();
      *(v1 + 4) = sub_1DD39565C(v78, v79, v80);
      OUTLINED_FUNCTION_15_35(&dword_1DD38D000, v81, v82, "%s Unable to find a suitable UsoEntitySpan for span indicies. Defaulting to span=nil.");
      OUTLINED_FUNCTION_7_44();
      OUTLINED_FUNCTION_23_0();
    }

    return 0;
  }

  v1 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v127 = v26 + 264;
  v121 = v118 + 16;
  v117 = (v118 + 8);
  v125 = *(v23 + 72);
  v25.n128_u64[0] = 136315394;
  v122 = v25;
  v123 = v18;
  v119 = &v108 - v24;
  v120 = v13;
  while (1)
  {
    sub_1DD3C68F8(v1, v26);
    v28 = *&v127[*(v128 + 36)];
    if (!v28)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v47 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v47, qword_1EE16F068);
      sub_1DD3C68F8(v26, v124);
      v48 = sub_1DD63F9D8();
      v49 = sub_1DD640368();
      if (os_log_type_enabled(v48, v49))
      {
        OUTLINED_FUNCTION_43_2();
        v131 = OUTLINED_FUNCTION_26_22();
        MEMORY[0] = v122.n128_u32[0];
        v50 = OUTLINED_FUNCTION_1_84();
        v53 = sub_1DD39565C(v50, v51, v52);
        OUTLINED_FUNCTION_16_36(v53);
        v54 = v112;
        sub_1DD3C68F8(v124, v112);
        v129 = 0;
        v130 = 0xE000000000000000;
        sub_1DD6408D8();

        v129 = 0x203A65756C6176;
        v130 = 0xE700000000000000;
        sub_1DD51D30C(v54, v113, type metadata accessor for Contact);
        v55 = sub_1DD63FE38();
        MEMORY[0x1E12B2260](v55);

        MEMORY[0x1E12B2260](0x736C616E6769730ALL, 0xEA0000000000203ALL);
        sub_1DD51D30C(v54 + *(v128 + 36), v115, type metadata accessor for ContactResolver.SignalSet);
        v56 = sub_1DD63FE38();
        MEMORY[0x1E12B2260](v56);

        sub_1DD390754(v54, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD390754(v124, &qword_1ECCDBBE8, &qword_1DD644470);
        v57 = OUTLINED_FUNCTION_15_0();
        v60 = sub_1DD39565C(v57, v58, v59);

        MEMORY[0xE] = v60;
        OUTLINED_FUNCTION_34_14(&dword_1DD38D000, v48, v49, "%s Unable to get candidate's usoNode from %s", v108, v109);
        swift_arrayDestroy();
        v18 = v123;
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_13_36();
      }

      else
      {

        sub_1DD390754(v124, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      v61 = v26;
      goto LABEL_27;
    }

    v29 = sub_1DD63E308();
    if (!v29)
    {
      goto LABEL_19;
    }

    if (!*(v29 + 16))
    {

LABEL_19:
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v62 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v62, qword_1EE16F068);

      v63 = sub_1DD63F9D8();
      v64 = sub_1DD640368();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = OUTLINED_FUNCTION_43_2();
        v129 = OUTLINED_FUNCTION_28_11();
        *v65 = v122.n128_u32[0];
        v66 = OUTLINED_FUNCTION_1_84();
        *(v65 + 4) = sub_1DD39565C(v66, v67, v68);
        *(v65 + 12) = 2080;
        v131 = v28;
        sub_1DD63E6B8();
        sub_1DD51D368();
        v69 = sub_1DD640CB8();
        v71 = sub_1DD39565C(v69, v70, &v129);

        *(v65 + 14) = v71;
        v26 = v119;
        _os_log_impl(&dword_1DD38D000, v63, v64, "%s Skip ones without UsoEntitySpan %s", v65, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        v18 = v123;
        OUTLINED_FUNCTION_0_1();
      }

      else
      {
      }

      goto LABEL_26;
    }

    v30 = *(v118 + 16);
    v30(v18, v29 + ((*(v118 + 80) + 32) & ~*(v118 + 80)), v126);

    v31 = sub_1DD63DDB8();
    if ((v31 & 0x100000000) == 0)
    {
      v32 = v31;
      v33 = sub_1DD63DDE8();
      if ((v33 & 0x100000000) == 0)
      {
        break;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v34 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v34, qword_1EE16F068);
    v35 = v120;
    v30(v120, v18, v126);
    v36 = sub_1DD63F9D8();
    v37 = sub_1DD640378();
    if (OUTLINED_FUNCTION_9_0(v37))
    {
      v38 = OUTLINED_FUNCTION_43_2();
      v111 = OUTLINED_FUNCTION_28_11();
      v129 = v111;
      *v38 = v122.n128_u32[0];
      v39 = OUTLINED_FUNCTION_1_84();
      v42 = sub_1DD39565C(v39, v40, v41);
      OUTLINED_FUNCTION_29_18(v42);
      v30(v109, v120, v126);
      v43 = sub_1DD63FE38();
      v45 = v44;
      v110 = *v117;
      v110(v120, v126);
      v46 = sub_1DD39565C(v43, v45, &v129);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_1DD38D000, v36, v37, "%s No startIndex or endIndex? %s", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_25_12();

      v18 = v123;
      v110(v123, v126);
    }

    else
    {

      v72 = *v117;
      v73 = v35;
      v74 = v126;
      (*v117)(v73, v126);
      v18 = v123;
      v72(v123, v74);
    }

    v26 = v119;
LABEL_26:
    v61 = v26;
LABEL_27:
    sub_1DD390754(v61, &qword_1ECCDBBE8, &qword_1DD644470);
    v1 += v125;
    if (!--v27)
    {
      goto LABEL_28;
    }
  }

  v85 = v33;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v86 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v86, qword_1EE16F068);
  v87 = v108;
  v30(v108, v18, v126);
  v88 = sub_1DD63F9D8();
  v89 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v89))
  {
    v90 = OUTLINED_FUNCTION_43_2();
    v128 = OUTLINED_FUNCTION_28_11();
    v129 = v128;
    *v90 = v122.n128_u32[0];
    v91 = OUTLINED_FUNCTION_1_84();
    *(v90 + 4) = sub_1DD39565C(v91, v92, v93);
    *(v90 + 12) = 2080;
    v94 = v126;
    v30(v109, v87, v126);
    v95 = sub_1DD63FE38();
    v97 = v96;
    v98 = v94;
    v99 = *v117;
    (*v117)(v87, v98);
    v100 = sub_1DD39565C(v95, v97, &v129);

    *(v90 + 14) = v100;
    OUTLINED_FUNCTION_27_20();
    _os_log_impl(v101, v102, v103, v104, v105, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_23_0();
  }

  else
  {

    v99 = *v117;
    (*v117)(v87, v126);
  }

  v106 = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  result = swift_allocObject();
  *(result + 16) = xmmword_1DD643B80;
  v107 = v123;
  if (v85 >= v32)
  {
    v83 = result;
    *(result + 32) = [objc_opt_self() valueWithRange_];

    v99(v107, v126);
    sub_1DD390754(v106, &qword_1ECCDBBE8, &qword_1DD644470);
    return v83;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD51BB84(uint64_t a1)
{
  type metadata accessor for MegadomeClient();
  swift_allocObject();
  result = sub_1DD51BBC0();
  qword_1EE16EFD8 = result;
  return result;
}

uint64_t sub_1DD51BBC0()
{
  v0 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1DD63D078();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v56 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v56 - v13;
  sub_1DD63D068();
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE16F0C0;
  v15 = &v2[*(v0 + 20)];
  *v15 = "ContactResolver.MegadomeClient.init";
  *(v15 + 1) = 35;
  v15[16] = 2;
  v16 = v14;
  sub_1DD63F9B8();
  *&v2[*(v0 + 24)] = v16;
  v17 = v16;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DD643F90;
  v19 = sub_1DD6408F8();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1DD392BD8();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_1DD63F998();

  if (__OFADD__(qword_1EE16EFD0, 1))
  {
    __break(1u);
    swift_once();
    v24 = sub_1DD63F9F8();
    __swift_project_value_buffer(v24, qword_1EE16F068);
    v25 = "ContactResolver.MegadomeClient.init";
    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640378();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v66[0] = v30;
      *v28 = 136315394;
      *(v28 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, v66);
      *(v28 + 12) = 2112;
      v31 = "ContactResolver.MegadomeClient.init";
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v32;
      *v29 = v32;
      _os_log_impl(&dword_1DD38D000, v26, v27, "%s Failed to create EntityResolutionTextClient: %@", v28, 0x16u);
      sub_1DD390754(v29, &qword_1ECCDBF90, &qword_1DD6445B0);
      v33 = v29;
      v18 = v65;
      MEMORY[0x1E12B3DA0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E12B3DA0](v30, -1, -1);
      MEMORY[0x1E12B3DA0](v28, -1, -1);
    }

    else
    {
    }

    *(v19 + 16) = 0;
  }

  else
  {
    ++qword_1EE16EFD0;
    sub_1DD63D068();
    v22 = objc_allocWithZone(sub_1DD63F7C8());
    v23 = sub_1DD63F7B8();
    v19 = v64;
    v18 = v65;
    *(v64 + 16) = v23;
    v34 = v63;
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v35 = sub_1DD63F9F8();
    v36 = __swift_project_value_buffer(v35, qword_1EE16F068);
    v58 = *(v34 + 16);
    v58(v8, v11, v18);
    v59 = v36;
    v37 = sub_1DD63F9D8();
    v38 = sub_1DD640368();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v66[0] = v57;
      *v39 = 136315394;
      *(v39 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, v66);
      *(v39 + 12) = 2048;
      v40 = v60;
      sub_1DD63D068();
      sub_1DD63CF88();
      v42 = v41;
      v21 = *(v34 + 8);
      v21(v40, v65);
      v21(v8, v65);
      *(v39 + 14) = v42;
      _os_log_impl(&dword_1DD38D000, v37, v38, "%s EntityResolutionTextClient(for: .structuredSearch, viaXPC: false, warmup: true)\ntook %f secs.", v39, 0x16u);
      v43 = v57;
      __swift_destroy_boxed_opaque_existential_1(v57);
      v19 = v64;
      MEMORY[0x1E12B3DA0](v43, -1, -1);
      v44 = v39;
      v18 = v65;
      MEMORY[0x1E12B3DA0](v44, -1, -1);
    }

    else
    {

      v21 = *(v34 + 8);
      v21(v8, v18);
    }

    v45 = v61;
    v58(v61, v11, v18);
    v46 = sub_1DD63F9D8();
    v47 = sub_1DD640368();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v45;
      v49 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v66[0] = v59;
      *v49 = 136315394;
      *(v49 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, v66);
      *(v49 + 12) = 2048;
      v50 = v60;
      sub_1DD63D068();
      sub_1DD63CF88();
      v52 = v51;
      v21(v50, v65);
      v21(v48, v65);
      *(v49 + 14) = v52;
      _os_log_impl(&dword_1DD38D000, v46, v47, "%s EntityResolutionTextClient() took %f secs.", v49, 0x16u);
      v53 = v59;
      __swift_destroy_boxed_opaque_existential_1(v59);
      v18 = v65;
      MEMORY[0x1E12B3DA0](v53, -1, -1);
      MEMORY[0x1E12B3DA0](v49, -1, -1);

      v21(v11, v18);
      v19 = v64;
    }

    else
    {

      v21(v45, v18);
      v21(v11, v18);
    }
  }

  v54 = v62;
  sub_1DD51CB58(v2, v62, "%s MegadomeClient.init took %f secs.", v56, *&v57);
  sub_1DD41BFFC(v2);
  v21(v54, v18);
  return v19;
}

void sub_1DD51C44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_39_13();
  v80 = v3;
  v77 = v4;
  v5 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v81 = v10;
  v82 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  *&v76 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  sub_1DD63D068();
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v78 = v16;
  v20 = qword_1EE16F0C0;
  v21 = v9 + *(v5 + 20);
  *v21 = "ContactResolver.MegadomeSignalProvider.callMegadomeECR";
  *(v21 + 8) = 54;
  *(v21 + 16) = 2;
  v22 = v20;
  sub_1DD63F9B8();
  *(v9 + *(v5 + 24)) = v22;
  v23 = v22;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DD643F90;
  v25 = sub_1DD6408F8();
  v27 = v26;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1DD392BD8();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v79 = v19;
  v28 = OUTLINED_FUNCTION_33_11();
  __swift_project_value_buffer(v28, qword_1EE16F068);
  v29 = sub_1DD63F9D8();
  v30 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v30))
  {
    OUTLINED_FUNCTION_54();
    v83 = OUTLINED_FUNCTION_5_36();
    *v25 = 136315138;
    *(v25 + 4) = sub_1DD39565C(v27, 0xEE005D5243452065, &v83);
    OUTLINED_FUNCTION_27_20();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    OUTLINED_FUNCTION_7_44();
    OUTLINED_FUNCTION_23_0();
  }

  v36 = v82;
  v37 = *(v80 + 16);
  v38 = v78;
  if (v37)
  {
    v39 = v37;
    v50 = sub_1DD63F7A8();
    v51 = v79;
    v52 = v81;
    (*(v36 + 16))(v38, v79, v81);
    v53 = v50;
    v54 = sub_1DD63F9D8();
    v55 = sub_1DD640368();

    if (os_log_type_enabled(v54, v55))
    {
      v57 = OUTLINED_FUNCTION_62();
      v80 = OUTLINED_FUNCTION_28_11();
      v83 = v80;
      *v57 = 136315650;
      v58 = OUTLINED_FUNCTION_1_84();
      *(v57 + 4) = sub_1DD39565C(v58, v59, v60);
      *(v57 + 12) = 2048;
      LODWORD(v77) = v55;
      v61 = v76;
      sub_1DD63D068();
      v75 = v54;
      sub_1DD63CF88();
      v63 = v62;
      v64 = *(v36 + 8);
      (v64)(*&v61, v52);
      v65 = OUTLINED_FUNCTION_57_3();
      v64(v65);
      *(v57 + 14) = v63;
      *(v57 + 22) = 2080;
      v66 = v53;
      v67 = [v66 description];
      sub_1DD63FDD8();

      v36 = v82;
      v68 = OUTLINED_FUNCTION_57_3();
      v71 = sub_1DD39565C(v68, v69, v70);
      v52 = v81;

      *(v57 + 24) = v71;
      v72 = v75;
      _os_log_impl(&dword_1DD38D000, v75, v77, "%s EntityResolutionTextClient.resolveEntitiesSync\ntook %f secs and returned GDEntityResolutionResult: %s", v57, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      v73 = OUTLINED_FUNCTION_57_3();
      v74(v73);
    }
  }

  else
  {
    v40 = sub_1DD63F9D8();
    v41 = sub_1DD640378();
    if (OUTLINED_FUNCTION_9_0(v41))
    {
      v42 = OUTLINED_FUNCTION_54();
      v43 = OUTLINED_FUNCTION_62();
      v83 = v43;
      *v42 = 136315138;
      v44 = OUTLINED_FUNCTION_2_71();
      *(v42 + 4) = sub_1DD39565C(v44, 0xEE005D5243452065, v45);
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v46, v47, v48, v49, v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_0_1();
      v36 = v82;
      OUTLINED_FUNCTION_0_1();
    }

    v52 = v81;
    v51 = v79;
  }

  sub_1DD51CB58(v9, v51, "%s MegadomeSignalProvider callMegadomeECR took %f secs.", v75, v76);
  sub_1DD41BFFC(v9);
  (*(v36 + 8))(v51, v52);
  OUTLINED_FUNCTION_31_17();
}

void sub_1DD51CB58(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_39_13();
  v4 = v3;
  v6 = v5;
  v7 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  sub_1DD6404C8();
  type metadata accessor for Signpost(0);
  sub_1DD63F9A8();
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v17 = sub_1DD63F9F8();
  __swift_project_value_buffer(v17, qword_1EE16F068);
  (*(v9 + 16))(v16, v6, v7);
  v18 = sub_1DD63F9D8();
  v19 = sub_1DD640368();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_43_2();
    v21 = OUTLINED_FUNCTION_62();
    v28 = v21;
    *v20 = 136315394;
    v22 = OUTLINED_FUNCTION_1_84();
    *(v20 + 4) = sub_1DD39565C(v22, v23, &v28);
    *(v20 + 12) = 2048;
    sub_1DD63D068();
    sub_1DD63CF88();
    v25 = v24;
    v26 = *(v9 + 8);
    v26(v13, v7);
    v26(v16, v7);
    *(v20 + 14) = v25;
    OUTLINED_FUNCTION_34_14(&dword_1DD38D000, v18, v19, v4);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_13_36();
  }

  else
  {

    (*(v9 + 8))(v16, v7);
  }

  OUTLINED_FUNCTION_31_17();
}

id sub_1DD51CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DD63FDA8();

  if (a4)
  {
    v7 = sub_1DD63FDA8();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithValue:v6 source:v7];

  return v8;
}

id sub_1DD51CE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1)
  {
    sub_1DD39638C(0, &qword_1ECCDE488, 0x1E69A9EA0);
    v11 = sub_1DD6400F8();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v11 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = sub_1DD63FDA8();

  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1DD39638C(0, &qword_1ECCDE490, 0x1E696B098);
  v13 = sub_1DD6400F8();

LABEL_8:
  v14 = [v6 initWithSourceIDs:v11 text:v12 spans:v13 mode:a5 includeFeatures:a6 & 1];

  return v14;
}

uint64_t sub_1DD51CF7C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_1DD3FE8AC();
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v15 = v11;
    if (v9[3] >= v13 + v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE478, &qword_1DD657840);
        sub_1DD640A18();
      }
    }

    else
    {
      sub_1DD4E6BB8();
      v16 = sub_1DD3FE8AC();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v12 = v16;
    }

    v18 = *a3;
    if (v15)
    {
      v19 = *(v18[7] + 8 * v12);

      v20 = v18[7];
      v21 = *(v20 + 8 * v12);
      *(v20 + 8 * v12) = v19;
    }

    else
    {
      v18[(v12 >> 6) + 8] |= 1 << v12;
      v22 = (v18[6] + 16 * v12);
      *v22 = v7;
      v22[1] = v6;
      *(v18[7] + 8 * v12) = v10;
      v23 = v18[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v18[2] = v25;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD51D160(void *a1)
{
  v2 = [a1 oneBestTranscript];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

unint64_t sub_1DD51D1D0()
{
  result = qword_1ECCDE468;
  if (!qword_1ECCDE468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDE460, &unk_1DD657830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE468);
  }

  return result;
}

uint64_t sub_1DD51D234(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return a2;
}

unint64_t sub_1DD51D290()
{
  result = qword_1ECCDE470;
  if (!qword_1ECCDE470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFDF0, &unk_1DD644950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE470);
  }

  return result;
}

uint64_t sub_1DD51D30C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_15_0();
  v5(v4);
  return a2;
}

unint64_t sub_1DD51D368()
{
  result = qword_1ECCDE498;
  if (!qword_1ECCDE498)
  {
    sub_1DD63E6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE498);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD51D3D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1DD51D414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_13_36()
{

  JUMPOUT(0x1E12B3DA0);
}

uint64_t OUTLINED_FUNCTION_26_22()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_18(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

unint64_t OUTLINED_FUNCTION_30_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 14) = a1;
  *(v9 + 22) = v11;

  return sub_1DD39565C(0xD000000000000019, v10 | 0x8000000000000000, &a9);
}

uint64_t OUTLINED_FUNCTION_33_11()
{

  return sub_1DD63F9F8();
}

void OUTLINED_FUNCTION_34_14(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

unint64_t OUTLINED_FUNCTION_40_9@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1DD39565C(v2 - 1, (a1 - 32) | 0x8000000000000000, &a2);
}

uint64_t OUTLINED_FUNCTION_41_11()
{

  return swift_slowAlloc();
}

uint64_t DateTime.Time.Meridiem.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD51D608()
{
  result = qword_1ECCDE4A0;
  if (!qword_1ECCDE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE4A0);
  }

  return result;
}

uint64_t sub_1DD51D664@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Time.Meridiem.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s8MeridiemOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD51D818()
{
  result = qword_1ECCDE4A8;
  if (!qword_1ECCDE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE4A8);
  }

  return result;
}

void sub_1DD51D8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_1DD63D2D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48) == 1)
  {
    v13 = *(a1 + 24);
    v14 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    swift_beginAccess();
    v15 = (*(v10 + 16))(v12, a3 + v14, v9);
    MEMORY[0x1EEE9AC00](v15);
    *(&v17 - 4) = a1;
    *(&v17 - 3) = v12;
    *(&v17 - 16) = v13 & 1;
    sub_1DD3EBFB8();
    *a6 = v16;
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1DD51DA38(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v23 = a4;
  v21[1] = a3;
  v22 = sub_1DD63D2B8();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = sub_1DD63D078();
  v9 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DD63C868();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, *a1 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval, v12, v14);
  if (!*(a2 + 49))
  {

    goto LABEL_5;
  }

  v17 = sub_1DD640CD8();

  if (v17)
  {
LABEL_5:
    sub_1DD63C848();
    goto LABEL_6;
  }

  sub_1DD63C828();
LABEL_6:
  v18 = v22;
  (*(v6 + 104))(v8, *MEMORY[0x1E6969A58], v22);
  v19 = sub_1DD63D2C8();
  (*(v6 + 8))(v8, v18);
  (*(v9 + 8))(v11, v21[0]);
  (*(v13 + 8))(v16, v12);
  return ((v23 & 1) == 0) ^ (v19 > 11);
}

void sub_1DD51DD94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4D8, &unk_1DD657A10);
  swift_allocObject();
  sub_1DD54EDA4();
  off_1EE160C78 = v0;
}

uint64_t sub_1DD51DDF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4D0, &unk_1DD65A7D0);
  swift_allocObject();
  result = sub_1DD54EB20(0);
  qword_1EE160C90 = result;
  return result;
}

uint64_t sub_1DD51DE48()
{
  v7 = sub_1DD640478();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DD640438();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DD63FBD8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1DD406E2C();
  sub_1DD63FBC8();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1DD47EAB0(&qword_1EE166488, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD640718();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1DD6404A8();
  qword_1EE160C68 = result;
  return result;
}

uint64_t sub_1DD51E098()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v1 = sub_1DD63F9F8();
  v2 = OUTLINED_FUNCTION_11(v1, qword_1EE16EFB8);
  v3 = sub_1DD640368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_9();
    *v4 = 0;
    _os_log_impl(&dword_1DD38D000, v2, v3, "MessagesAppSelectionModelCache#getMessagesAppSelectionSplashModel", v4, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD51E370();
  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v6))
  {
    v7 = OUTLINED_FUNCTION_9();
    *v7 = 0;
    _os_log_impl(&dword_1DD38D000, v5, v6, "MessagesAppSelectionModelCache#getMessagesAppSelectionSplashModel: Returning model", v7, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE160C70 != -1)
  {
    OUTLINED_FUNCTION_3_60(&qword_1EE160C70);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF80, &unk_1DD657A00);
  sub_1DD640488();
}

uint64_t sub_1DD51E238()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v0 = sub_1DD63F9F8();
  v1 = OUTLINED_FUNCTION_11(v0, qword_1EE16EFB8);
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_9();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "MessagesAppSelectionModelCache#getMessagesAppSelectionTrialManager", v3, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD51E370();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v5))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v6, v7, "MessagesAppSelectionModelCache#getMessagesAppSelectionTrialManager: Returning TrialManager");
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE160C88 != -1)
  {
    OUTLINED_FUNCTION_2_72(&qword_1EE160C88);
  }

  v8 = sub_1DD508C14();

  return v8;
}

uint64_t sub_1DD51E370()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v0 = sub_1DD63F9F8();
  v1 = OUTLINED_FUNCTION_11(v0, qword_1EE16EFB8);
  v2 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v2))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v3, v4, "MessagesAppSelectionModelCache#initializeAssets");
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE160C60 != -1)
  {
    OUTLINED_FUNCTION_1_85(&qword_1EE160C60);
  }

  v5 = qword_1EE160C68;
  v9[4] = sub_1DD51DD90;
  v9[5] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DD5FFDB0;
  v9[3] = &block_descriptor_5;
  v6 = _Block_copy(v9);
  v7 = v5;

  dispatch_sync(v7, v6);

  _Block_release(v6);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD51E4EC()
{
  if (qword_1EE160C70 != -1)
  {
    OUTLINED_FUNCTION_3_60(&qword_1EE160C70);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF80, &unk_1DD657A00);
  sub_1DD640488();

  v0 = v23;
  result = sub_1DD51EF94(aBlock);
  if (!v0)
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v2 = sub_1DD63F9F8();
    v3 = OUTLINED_FUNCTION_11(v2, qword_1EE16EFB8);
    v4 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v4))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v5, v6, "MessagesAppSelectionModelCache#loadAssets messagesAppSelectionSplashModel is nil");
      OUTLINED_FUNCTION_0_1();
    }

    v7 = [objc_opt_self() clientWithIdentifier_];
    v8 = qword_1ECCDE4B0;
    v9 = off_1ECCDE4B8;
    type metadata accessor for TrialManager();
    v10 = swift_allocObject();
    v11 = v7;

    v12 = sub_1DD5506B4(v11, v8, v9, v10);
    v13 = qword_1ECCDE4C0;
    v14 = off_1ECCDE4C8;
    type metadata accessor for MessagesAppSelectionModelManager();
    swift_allocObject();
    v15 = sub_1DD51F0DC(v12, v13, v14);

    v16 = sub_1DD63FDA8();

    if (qword_1EE160C60 != -1)
    {
      OUTLINED_FUNCTION_1_85(&qword_1EE160C60);
    }

    v17 = qword_1EE160C68;
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *(v18 + 24) = v15;
    v24 = sub_1DD51EFFC;
    v25 = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD54F324;
    v23 = &block_descriptor_8;
    v19 = _Block_copy(aBlock);

    v20 = v17;

    v21 = [v11 addUpdateHandlerForNamespaceName:v16 queue:v20 usingBlock:v19];
    _Block_release(v19);
    swift_unknownObjectRelease();

    if (qword_1EE160C88 != -1)
    {
      OUTLINED_FUNCTION_2_72(&qword_1EE160C88);
    }

    sub_1DD5FFB04();

    sub_1DD5FFBF0();
  }

  return result;
}

uint64_t static MessagesAppSelectionModelCache.prewarm()()
{
  v0 = sub_1DD63FB78();
  OUTLINED_FUNCTION_0();
  v20 = v1;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DD63FBD8();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v10 = sub_1DD63F9F8();
  v11 = OUTLINED_FUNCTION_11(v10, qword_1EE16EFB8);
  v12 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v12))
  {
    v13 = OUTLINED_FUNCTION_9();
    *v13 = 0;
    _os_log_impl(&dword_1DD38D000, v11, v12, "MessagesAppSelectionModelCache#prewarm", v13, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE160C60 != -1)
  {
    OUTLINED_FUNCTION_1_85(&qword_1EE160C60);
  }

  v14 = qword_1EE160C68;
  aBlock[4] = sub_1DD51DD90;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD3CBCD0;
  aBlock[3] = &block_descriptor_10;
  v15 = _Block_copy(aBlock);
  v16 = v14;
  sub_1DD63FBA8();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DD47EAB0(&qword_1EE163978, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD3CBFCC(&qword_1EE1638E0, &qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v9, v4, v15);
  _Block_release(v15);

  (*(v20 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v19);
}

uint64_t sub_1DD51EBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE162D98 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD63F9F8();
  __swift_project_value_buffer(v3, qword_1EE16EFB8);
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD38D000, v4, v5, "MessagesAppSelectionModelCache#loadAssets Trial update handler invoked", v6, 2u);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
  }

  sub_1DD600008();
  if (qword_1EE160C88 != -1)
  {
    swift_once();
  }

  sub_1DD5FFB04();

  if (qword_1EE160C70 != -1)
  {
    swift_once();
  }

  sub_1DD5FFBF0();
}

double sub_1DD51ED94(void *a1, uint64_t a2)
{

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v4 = sub_1DD63F9F8();
  v5 = OUTLINED_FUNCTION_11(v4, qword_1EE16EFB8);
  v6 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v6))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_8_48(&dword_1DD38D000);
    OUTLINED_FUNCTION_0_1();
  }

  *a1 = a2;

  return result;
}

void sub_1DD51EE58(uint64_t a1)
{
  sub_1DD51EF94(a1);
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v1 = sub_1DD63F9F8();
  v2 = OUTLINED_FUNCTION_11(v1, qword_1EE16EFB8);
  v3 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v3))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_8_48(&dword_1DD38D000);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD54E51C();
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DD51EF94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF80, &unk_1DD657A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_60(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1DD51F0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = "MessagesAppSelectionDefaultModelLoad";
  *(v3 + 24) = 36;
  *(v3 + 32) = 2;
  *(v3 + 40) = "MessagesAppSelectionTrialModelLoad";
  *(v3 + 48) = 34;
  *(v3 + 56) = 2;
  *(v3 + 72) = a3;
  *(v3 + 80) = a1;
  *(v3 + 64) = a2;
  return v3;
}

uint64_t sub_1DD51F118@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v27 = *v1;
  v4 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[2];
  v8 = v2[3];
  v9 = *(v2 + 32);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v10 = qword_1EE16F0C0;
  v11 = &v6[*(v4 + 20)];
  *v11 = v7;
  *(v11 + 1) = v8;
  v11[16] = v9;
  v12 = v10;
  sub_1DD63F9B8();
  *&v6[*(v4 + 24)] = v12;
  v13 = v12;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DD643F90;
  v15 = sub_1DD6408F8();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1DD392BD8();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  OUTLINED_FUNCTION_3_61();
  OUTLINED_FUNCTION_2_73();
  sub_1DD63F998();

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v18 = sub_1DD63F9F8();
  __swift_project_value_buffer(v18, qword_1EE16EFB8);
  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640398();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DD38D000, v19, v20, "MessagesAppSelectionModelManager#defaultModel Loading default messages CoreML model", v21, 2u);
    MEMORY[0x1E12B3DA0](v21, -1, -1);
  }

  v22 = type metadata accessor for MessageAppPredictorPeopleCentric();
  v23 = sub_1DD3C5588();
  v24 = sub_1DD63AD90(v23);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_2_73();
  sub_1DD63F9A8();
  result = sub_1DD41BFFC(v6);
  if (v24)
  {
    v26 = &off_1F58BB690;
  }

  else
  {
    v22 = 0;
    v26 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v24;
  a1[3] = v22;
  a1[4] = v26;
  return result;
}

uint64_t sub_1DD51F404@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v59 = a1;
  v53 = *v2;
  v3 = sub_1DD63CE68();
  v60 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v47 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v47 - v8;
  v9 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[5];
  v13 = v2[6];
  v14 = *(v2 + 56);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v15 = qword_1EE16F0C0;
  v16 = &v11[*(v9 + 20)];
  *v16 = v12;
  *(v16 + 1) = v13;
  v16[16] = v14;
  v17 = v15;
  sub_1DD63F9B8();
  *&v11[*(v9 + 24)] = v17;
  v18 = v17;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD643F90;
  v20 = sub_1DD6408F8();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1DD392BD8();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  OUTLINED_FUNCTION_3_61();
  v51 = v18;
  v56 = v13;
  v57 = v12;
  v55 = v14;
  sub_1DD63F998();

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v23 = sub_1DD63F9F8();
  __swift_project_value_buffer(v23, qword_1EE16EFB8);
  v24 = v60;
  v25 = *(v60 + 16);
  v26 = v50;
  v25(v50, v59, v3);
  v27 = sub_1DD63F9D8();
  v28 = sub_1DD640398();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v61 = v30;
    *v29 = 136315138;
    v31 = sub_1DD63CDC8();
    v49 = v11;
    v33 = v32;
    v34 = *(v60 + 8);
    v47 = v31;
    v48 = v34;
    v34(v26, v3);
    v35 = sub_1DD39565C(v47, v33, &v61);
    v11 = v49;

    *(v29 + 4) = v35;
    _os_log_impl(&dword_1DD38D000, v27, v28, "MessagesAppSelectionModelManager#compiledModel Loading compiled messages CoreML model from url: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12B3DA0](v30, -1, -1);
    MEMORY[0x1E12B3DA0](v29, -1, -1);

    v36 = v48;
  }

  else
  {

    v36 = *(v24 + 8);
    v36(v26, v3);
  }

  v37 = v54;
  v25(v54, v59, v3);
  v38 = sub_1DD3C5588();
  sub_1DD51FA60();
  v39 = v52;
  v25(v52, v37, v3);
  v40 = sub_1DD551650(v39, v38);
  v36(v37, v3);
  type metadata accessor for MessageAppPredictorPeopleCentric();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  sub_1DD6404C8();
  sub_1DD63F9A8();
  if (v41)
  {
    v42 = type metadata accessor for MessageAppPredictorPeopleCentric();
    result = sub_1DD41BFFC(v11);
    v44 = &off_1F58BB690;
  }

  else
  {
    result = sub_1DD41BFFC(v11);
    v42 = 0;
    v44 = 0;
    v45 = v58;
    v58[1] = 0;
    v45[2] = 0;
  }

  v46 = v58;
  *v58 = v41;
  v46[3] = v42;
  v46[4] = v44;
  return result;
}

uint64_t sub_1DD51F958()
{

  return v0;
}

uint64_t sub_1DD51F980()
{
  sub_1DD51F958();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD51F9E4()
{
  v1 = *(*v0 + 64);

  return v1;
}

unint64_t sub_1DD51FA60()
{
  result = qword_1EE163888;
  if (!qword_1EE163888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE163888);
  }

  return result;
}

uint64_t static MetricsService.log(metric:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  return sub_1DD51FAEC(&v2);
}

uint64_t sub_1DD51FAEC(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1DD63C7D8();
  swift_allocObject();
  sub_1DD63C7C8();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  sub_1DD51FF5C();
  v4 = sub_1DD63C7B8();
  v6 = v5;
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD63F9F8();
  __swift_project_value_buffer(v7, qword_1EE16F0C8);

  v8 = sub_1DD63F9D8();
  v9 = sub_1DD640368();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    v17 = 0xD000000000000019;
    v18 = 0x80000001DD66CE50;
    MEMORY[0x1E12B2260](v1, v2);
    v12 = sub_1DD39565C(0xD000000000000019, 0x80000001DD66CE50, &v16);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_1DD38D000, v8, v9, "sending metric %{public}s to Core Analytics", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12B3DA0](v11, -1, -1);
    MEMORY[0x1E12B3DA0](v10, -1, -1);
  }

  v13 = sub_1DD5B1470(1, sub_1DD51FFB0, 0);
  v14 = sub_1DD63CF08();
  [v13 logCoreAnalyticsMetricWithMetricsData_];
  swift_unknownObjectRelease();

  return sub_1DD3AD790(v4, v6);
}

_BYTE *storeEnumTagSinglePayload for MetricsService(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD51FF5C()
{
  result = qword_1ECCDE4E0;
  if (!qword_1ECCDE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE4E0);
  }

  return result;
}

void sub_1DD51FFB0(void *a1)
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F0C8);
  v3 = a1;
  oslog = sub_1DD63F9D8();
  v4 = sub_1DD640378();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_1DD640D88();
    v9 = sub_1DD39565C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DD38D000, oslog, v4, "Error in XPC connection: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD520148(uint64_t a1, uint64_t a2)
{
  result = sub_1DD4061B8(0xD000000000000049, 0x80000001DD66F3A0, MEMORY[0x1E69E7CC0]);
  if (!v2)
  {

    v6 = sub_1DD5204D0();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = *(a2 + 16);
    if (v9)
    {
      v27 = a1;
      v10 = (a2 + 64);
      v24 = a2;
      v28 = v8;
      v26 = v6;
      do
      {
        v11 = *(v10 - 4);
        v12 = *(v10 - 3);
        v13 = *(v10 - 16);
        v14 = *(v10 - 1);
        v15 = *v10;
        *&v29 = v11;
        *(&v29 + 1) = v12;
        v30 = v13;
        v31 = v14;
        v32 = v15;
        if (v6 != v11 || v8 != v12)
        {
          if (sub_1DD640CD8())
          {

            if (v13)
            {
              sub_1DD4061B8(0xD000000000000019, 0x80000001DD66F410, MEMORY[0x1E69E7CC0]);
            }

            sub_1DD4062C8(0, v27, &v29, v27, a2);
            if (v13)
            {
              sub_1DD4061B8(0xD000000000000018, 0x80000001DD66F3F0, MEMORY[0x1E69E7CC0]);
            }

            if (qword_1EE160538 != -1)
            {
              swift_once();
            }

            v17 = sub_1DD63F9F8();
            __swift_project_value_buffer(v17, qword_1EE16EEE8);

            v18 = sub_1DD63F9D8();
            v19 = sub_1DD640368();

            if (os_log_type_enabled(v18, v19))
            {
              log = v18;
              v20 = swift_slowAlloc();
              v21 = swift_slowAlloc();
              v33 = v21;
              *v20 = 136315138;

              v22 = sub_1DD39565C(v11, v12, &v33);

              *(v20 + 4) = v22;
              _os_log_impl(&dword_1DD38D000, log, v19, "ran migration id=%s", v20, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v21);
              v23 = v21;
              a2 = v24;
              MEMORY[0x1E12B3DA0](v23, -1, -1);
              MEMORY[0x1E12B3DA0](v20, -1, -1);
            }

            else
            {
            }
          }

          v8 = v28;
          v6 = v26;
        }

        v10 += 5;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_1DD5204D0()
{
  result = sub_1DD406240(0xD000000000000037, 0x80000001DD66F460, MEMORY[0x1E69E7CC0], v3);
  if (!v0)
  {
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
      if (swift_dynamicCast())
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1DD5206B4(v3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD52058C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a1 + 24))(a2);
  if (!v3)
  {
    return sub_1DD5205E0(*a1, *(a1 + 8));
  }

  return result;
}

uint64_t sub_1DD5205E0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1DD4061B8(0xD00000000000002BLL, 0x80000001DD66F430, inited);
  if (!v2)
  {
  }

  swift_setDeallocating();
  return sub_1DD46CB4C();
}

uint64_t sub_1DD5206B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MKMapItem.toLocation()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = sub_1DD63D328();
  v4 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v73 - v9;
  v11 = [v2 placemark];
  [v11 coordinate];

  v12 = sub_1DD640218();
  v99 = v13;
  v100 = v12;
  v14 = [v2 placemark];
  [v14 coordinate];

  v15 = sub_1DD640218();
  v97 = v16;
  v98 = v15;
  sub_1DD520E2C([v2 placemark], &selRef_countryCode);
  if (!v17 || (Country.Value.init(rawValue:)(v104), v104[0] == 255))
  {
    v18 = 4;
  }

  else
  {
    v18 = (v104[0] << 16) | 0x303;
  }

  v96 = v18;
  v95 = sub_1DD520DC8(v2);
  v101 = v19;
  v20 = [v2 timeZone];
  if (v20)
  {
    v21 = v20;
    sub_1DD63D308();

    v22 = v92;
    v23 = (*(v4 + 32))(v10, v6, v92);
    v24 = MEMORY[0x1E12AF600](v23);
    v93 = v25;
    v94 = v24;
    (*(v4 + 8))(v10, v22);
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v26 = [v2 pointOfInterestCategory];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1DD63FDD8();
    v91 = v29;
    v92 = v28;

    v89 = 0;
    v90 = 12;
  }

  else
  {
    v91 = 0;
    v92 = 0;
    v90 = 0;
    v89 = 1;
  }

  v30 = OUTLINED_FUNCTION_0_104();
  v88 = sub_1DD520E2C(v30, &selRef_locality);
  v32 = v31;
  v33 = OUTLINED_FUNCTION_0_104();
  v87 = sub_1DD520E2C(v33, &selRef_administrativeArea);
  v35 = v34;
  v36 = OUTLINED_FUNCTION_0_104();
  v81 = sub_1DD520E2C(v36, &selRef_subAdministrativeArea);
  v38 = v37;
  v39 = OUTLINED_FUNCTION_0_104();
  v80 = sub_1DD520E2C(v39, &selRef_postalCode);
  v41 = v40;
  v42 = OUTLINED_FUNCTION_0_104();
  v43 = sub_1DD520E2C(v42, &selRef_thoroughfare);
  if (v44)
  {
    v83 = v44;
    v85 = v43;
    v86 = 1;
    v84 = 2304;
    v82 = 5124;
  }

  else
  {
    v85 = 0;
    v82 = 0;
    v84 = 0;
    v86 = 0;
    v83 = 1;
  }

  result = [v2 _geoMapItem];
  if (!result)
  {
    __break(1u);
    goto LABEL_49;
  }

  v46 = result;
  sub_1DD3AD724(v103);
  memcpy(v102, v103, sizeof(v102));
  swift_bridgeObjectRelease_n();
  sub_1DD3AD738(0, 0, 0, 0);
  memcpy(v104, v102, 0x106uLL);
  sub_1DD3ADFD0(v104, &qword_1ECCDB838, &qword_1DD6570C0);
  memcpy(v102, v103, sizeof(v102));
  v79 = xmmword_1DD642F70;
  v105[0] = xmmword_1DD642F70;
  memset(&v105[1], 0, 80);
  v106 = 0;
  sub_1DD3ADFD0(v105, &qword_1ECCDB840, &qword_1DD642FC8);
  v107[0] = v79;
  memset(&v107[1], 0, 64);
  v108 = 0;
  sub_1DD3ADFD0(v107, &qword_1ECCDB848, &qword_1DD642FD0);
  swift_bridgeObjectRelease_n();
  result = [objc_opt_self() mapItemStorageForGEOMapItem_];
  if (!result)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v47 = result;
  *&v79 = a1 + 553;
  v48 = [result data];

  if (v48)
  {
    v49 = sub_1DD63CF28();
    v77 = v50;
    v78 = v49;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v77 = 0xF000000000000000;
    v78 = 0;
  }

  if (v41)
  {
    v51 = v80;
  }

  else
  {
    v51 = 0;
  }

  if (v41)
  {
    v52 = 3;
  }

  else
  {
    v52 = 0;
  }

  v74 = v52;
  v75 = v51;
  v76 = v38;
  if (v38)
  {
    v53 = 771;
  }

  else
  {
    v53 = 0;
  }

  LODWORD(v80) = v53;
  v54 = v81;
  if (!v38)
  {
    v54 = 0;
  }

  v81 = v54;
  if (v35)
  {
    v55 = v87;
  }

  else
  {
    v55 = 0;
  }

  if (v35)
  {
    v56 = 771;
  }

  else
  {
    v56 = 0;
  }

  if (v32)
  {
    v57 = v88;
  }

  else
  {
    v57 = 0;
  }

  if (v32)
  {
    v58 = 771;
  }

  else
  {
    v58 = 0;
  }

  if (v101)
  {
    v59 = 3;
  }

  else
  {
    v59 = 0;
  }

  LODWORD(v88) = v59;
  v60 = v95;
  if (!v101)
  {
    v60 = 0;
  }

  v95 = v60;
  sub_1DD3AD77C(0, 0xF000000000000000);
  *a1 = 0;
  *(a1 + 10) = 0;
  *(a1 + 8) = 4;
  v61 = v96;
  *(a1 + 13) = BYTE2(v96);
  *(a1 + 11) = v61;
  v62 = v75;
  *(a1 + 16) = v74;
  *(a1 + 24) = v62;
  *(a1 + 32) = v41;
  *(a1 + 40) = v56;
  *(a1 + 48) = v55;
  *(a1 + 56) = v35;
  *(a1 + 64) = v58;
  *(a1 + 72) = v57;
  v64 = v99;
  v63 = v100;
  *(a1 + 80) = v32;
  *(a1 + 88) = v63;
  v65 = v97;
  v66 = v98;
  *(a1 + 96) = v64;
  *(a1 + 104) = v66;
  *(a1 + 112) = v65;
  result = memcpy((a1 + 120), v102, 0x106uLL);
  v67 = v93;
  *(a1 + 384) = v94;
  *(a1 + 392) = v67;
  *(a1 + 400) = 5;
  v68 = v89;
  *(a1 + 408) = 0;
  *(a1 + 416) = v68;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v69 = v91;
  *(a1 + 488) = v92;
  *(a1 + 496) = v69;
  *(a1 + 504) = v90;
  *(a1 + 512) = v85;
  *(a1 + 520) = v83;
  *(a1 + 528) = v82;
  *(a1 + 530) = 0u;
  *(a1 + 545) = 0;
  v70 = v84;
  v71 = v79;
  *v79 = v84;
  *(a1 + 569) = 0;
  *(a1 + 555) = 0u;
  *(v71 + 24) = v70;
  *(a1 + 579) = v86;
  *(a1 + 580) = 0u;
  *(a1 + 596) = 0x2040000000000;
  *(a1 + 608) = v95;
  *(a1 + 616) = v101;
  *(a1 + 624) = v88;
  *(a1 + 632) = 0u;
  *(a1 + 648) = v81;
  *(a1 + 656) = v76;
  *(a1 + 664) = v80;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 515;
  v72 = v77;
  *(a1 + 696) = v78;
  *(a1 + 704) = v72;
  return result;
}

uint64_t sub_1DD520DC8(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD520E2C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1DD63FDD8();

  return v4;
}

void sub_1DD520E98(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD643B80;
  sub_1DD5210EC();
  *(v5 + 32) = sub_1DD640598();
  v6 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v7 = sub_1DD521130(v5, 65568);
  if (!v2)
  {
    v8 = v7;
    v9 = sub_1DD6402C8();
    [v8 setObject:v9 atIndexedSubscript:0];

    v10 = sub_1DD63C044(a1, v8);
    a2[3] = type metadata accessor for PhoneAppPredictorOutput();
    a2[4] = &off_1F58BB718;

    *a2 = v10;
  }
}

uint64_t sub_1DD521034@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = a1();
  if (!v4)
  {
    v9 = result;
    result = a2(0);
    a4[3] = result;
    a4[4] = a3;
    *a4 = v9;
  }

  return result;
}

unint64_t sub_1DD5210EC()
{
  result = qword_1EE163880;
  if (!qword_1EE163880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE163880);
  }

  return result;
}

id sub_1DD521130(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_1DD5210EC();
  v4 = sub_1DD6400F8();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  return v5;
}

void sub_1DD52121C(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v124 = a4;
  v122 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v121 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v115 - v10;
  v14 = (v12 + 16);
  v13 = *(v12 + 16);
  v16 = v13(v15, v12, v9);
  v17 = [v16 count];

  if (v17 != 1)
  {
    if (qword_1EE162D98 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_10;
  }

  v120 = a1;
  isa = a1[2].isa;
  v19 = OUTLINED_FUNCTION_1_86();
  v126 = v21;
  v127 = v20;
  v22 = v21(v19);
  v23 = [v22 count];

  v123 = isa;
  if (isa == v23)
  {
    v119 = v11;
    sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
    v24 = OUTLINED_FUNCTION_1_86();
    v25 = (v13)(v24);
    v26 = [v25 objectAtIndexedSubscript_];

    v27 = sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
    v28 = sub_1DD640598();
    v29 = v13;
    LOBYTE(v25) = OUTLINED_FUNCTION_7_45(v28);

    if (v25)
    {
      v30 = v124;
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      }

      v31 = sub_1DD63F9F8();
      v32 = OUTLINED_FUNCTION_11(v31, qword_1EE16EFB8);
      v33 = sub_1DD640368();
      if (OUTLINED_FUNCTION_6_55(v33))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_18(&dword_1DD38D000, v34, v35, "MLAppPredictionOutput#getPrediction: model defaults to default app");
        OUTLINED_FUNCTION_0_1();
      }

      *v30 = 0;
      v30[1] = 0;
      *(v30 + 16) = 3;
      return;
    }

    v45 = OUTLINED_FUNCTION_1_86();
    v117 = v14;
    v46 = (v13)(v45);
    v47 = [v46 objectAtIndexedSubscript_];

    v48 = v27;
    v49 = sub_1DD640598();
    v50 = OUTLINED_FUNCTION_7_45(v49);

    v51 = OUTLINED_FUNCTION_1_86();
    v52 = v126(v51);
    v53 = [v52 count];

    if ((v53 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_62;
    }

    v118 = v50;
    v125 = a2;
    v116 = v29;
    if (v53)
    {
      v54 = 0;
      v55 = v120 + 5;
      v29 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v56 = v48;
        v57 = (v126)(v125, a3);
        v58 = [v57 objectAtIndexedSubscript_];

        v59 = sub_1DD640598();
        LOBYTE(v57) = sub_1DD6405B8();

        if (v57)
        {
          if (v54 >= v123)
          {
            __break(1u);
LABEL_60:
            OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
LABEL_10:
            v36 = sub_1DD63F9F8();
            v37 = OUTLINED_FUNCTION_11(v36, qword_1EE16EFB8);
            v38 = sub_1DD640378();
            if (OUTLINED_FUNCTION_6_55(v38))
            {
              *swift_slowAlloc() = 0;
              v41 = "MLAppPredictionOutput#getPrediction: model output does not contain the appConfidence value of size 1";
              goto LABEL_16;
            }

            goto LABEL_17;
          }

          v61 = v55[-1].isa;
          v60 = v55->isa;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3BE2A4();
            v29 = v66;
          }

          v62 = v29;
          v63 = *(v29 + 2);
          v64 = v62;
          if (v63 >= *(v62 + 3) >> 1)
          {
            sub_1DD3BE2A4();
            v64 = v67;
          }

          *(v64 + 2) = v63 + 1;
          v65 = (v64 + 16 * v63);
          v29 = v64;
          v65[4] = v61;
          v65[5] = v60;
        }

        v54 = (v54 + 1);
        v55 += 2;
        v48 = v56;
        if (v53 == v54)
        {
          goto LABEL_31;
        }
      }
    }

    v29 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v68 = *(v29 + 2);
    if (v68 == 1)
    {
      v50 = v124;
      if (v118)
      {
        if (qword_1EE162D98 == -1)
        {
LABEL_34:
          v69 = sub_1DD63F9F8();
          v70 = OUTLINED_FUNCTION_11(v69, qword_1EE16EFB8);
          v71 = sub_1DD640368();
          if (OUTLINED_FUNCTION_6_55(v71))
          {
            swift_slowAlloc();
            v72 = OUTLINED_FUNCTION_4_57();
            v128 = v72;
            *v48 = 136315138;
            if (!*(v29 + 2))
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v73 = v72;

            v74 = OUTLINED_FUNCTION_5_61();

            *(v48 + 4) = v74;
            OUTLINED_FUNCTION_2_74(&dword_1DD38D000, v75, v76, "MLAppPredictionOutput#getPrediction Direct execution on %s");
            __swift_destroy_boxed_opaque_existential_1(v73);
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();
          }

          if (*(v29 + 2))
          {
            v78 = *(v29 + 4);
            v77 = *(v29 + 5);

            *v50 = v78;
            *(v50 + 8) = v77;
            *(v50 + 16) = 0;
            return;
          }

          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_62:
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
        goto LABEL_34;
      }

      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      }

      v95 = sub_1DD63F9F8();
      v96 = OUTLINED_FUNCTION_11(v95, qword_1EE16EFB8);
      v97 = sub_1DD640368();
      if (OUTLINED_FUNCTION_6_55(v97))
      {
        swift_slowAlloc();
        v98 = OUTLINED_FUNCTION_4_57();
        v128 = v98;
        *v48 = 136315138;
        if (!*(v29 + 2))
        {
LABEL_66:
          __break(1u);
          return;
        }

        v99 = v98;

        v100 = OUTLINED_FUNCTION_5_61();

        *(v48 + 4) = v100;
        OUTLINED_FUNCTION_2_74(&dword_1DD38D000, v101, v102, "MLAppPredictionOutput#getPrediction confirmation on %s");
        __swift_destroy_boxed_opaque_existential_1(v99);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      if (!*(v29 + 2))
      {
        goto LABEL_64;
      }

      v104 = *(v29 + 4);
      v103 = *(v29 + 5);

      *v50 = v104;
      *(v50 + 8) = v103;
      v105 = 1;
LABEL_56:
      *(v50 + 16) = v105;
      return;
    }

    v50 = v124;
    if (!((v68 == 0) | v118 & 1))
    {
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      }

      v106 = sub_1DD63F9F8();
      v107 = OUTLINED_FUNCTION_11(v106, qword_1EE16EFB8);
      v108 = sub_1DD640368();
      if (OUTLINED_FUNCTION_6_55(v108))
      {
        swift_slowAlloc();
        v109 = OUTLINED_FUNCTION_4_57();
        v128 = v109;
        *v48 = 136315138;

        MEMORY[0x1E12B2430](v110, MEMORY[0x1E69E6158]);

        v111 = OUTLINED_FUNCTION_5_61();

        *(v48 + 4) = v111;
        OUTLINED_FUNCTION_2_74(&dword_1DD38D000, v112, v113, "MLAppPredictionOutput#getPrediction disambigutaion on %s");
        __swift_destroy_boxed_opaque_existential_1(v109);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      *v50 = v29;
      *(v50 + 8) = 0;
      v105 = 2;
      goto LABEL_56;
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v79 = sub_1DD63F9F8();
    __swift_project_value_buffer(v79, qword_1EE16EFB8);
    v80 = v122;
    v81 = *(v122 + 16);
    v82 = v119;
    v83 = v125;
    v81(v119, v48, v125);
    v84 = v121;
    v81(v121, v48, v83);
    v85 = sub_1DD63F9D8();
    v86 = sub_1DD640378();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v123 = v29;
      v88 = v87;
      v89 = swift_slowAlloc();
      *v88 = 138412546;
      v120 = v85;
      v90 = (v126)(v83, a3);
      v91 = *(v80 + 8);
      v91(v82, v83);
      *(v88 + 4) = v90;
      *v89 = v90;
      *(v88 + 12) = 2112;
      v92 = v116(v83, a3);
      v91(v84, v83);
      *(v88 + 14) = v92;
      v89[1] = v92;
      v93 = v120;
      _os_log_impl(&dword_1DD38D000, v120, v86, "MLAppPredictionOutput#getPrediction: Unexpected output from model %@ & %@", v88, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF90, &qword_1DD6445B0);
      swift_arrayDestroy();
      v94 = v124;
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      v114 = *(v80 + 8);
      v114(v84, v83);
      v114(v82, v83);

      v94 = v124;
    }

    *v94 = 0;
    v94[1] = 0;
    *(v94 + 16) = 3;
  }

  else
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v42 = sub_1DD63F9F8();
    v37 = OUTLINED_FUNCTION_11(v42, qword_1EE16EFB8);
    v43 = sub_1DD640378();
    if (OUTLINED_FUNCTION_6_55(v43))
    {
      *swift_slowAlloc() = 0;
      v41 = "MLAppPredictionOutput#getPrediction: model output does not contain appsShowToUser value for all eligible candidate apps";
LABEL_16:
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v39, v40, v41);
      OUTLINED_FUNCTION_0_1();
    }

LABEL_17:

    v44 = v124;
    *v124 = 0;
    v44[1] = 0;
    *(v44 + 16) = 3;
  }
}

uint64_t type metadata accessor for MLContactRecommender(uint64_t a1)
{
  result = qword_1EE161E08;
  if (!qword_1EE161E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD521CF8(uint64_t a1)
{
  result = type metadata accessor for ContactInference_v3_24_0_enlife();
  if (v2 <= 0x3F)
  {
    result = sub_1DD63D168();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DD521D8C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = type metadata accessor for Contact(0);
  v100 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_1_4();
  v99 = v8 - v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v92 - v14);
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  if (!*(a1 + 16))
  {
    v27 = *v4;
    v28 = sub_1DD522978();
    v30 = v29;
    type metadata accessor for ContactResolverRunTimeData(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v12);
    sub_1DD63D0F8();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    sub_1DD63D0E8();
    *a2 = 0;
    *(a2 + 8) = 0xE000000000000000;
    *(a2 + 16) = 0;
    OUTLINED_FUNCTION_13_37(0xE000000000000000);
    v38 = MEMORY[0x1E69E7CC0];
    *(a2 + 232) = 0;
    *(a2 + 240) = v38;
    *(a2 + 248) = 1;
    *(a2 + 256) = 0;
    *(a2 + 264) = v27;
    *(a2 + 272) = v28;
    *(a2 + 280) = v30;
    *(a2 + 288) = 0;
    *(a2 + 296) = v38;
    OUTLINED_FUNCTION_16_37();
    OUTLINED_FUNCTION_10_39(v39, v40, xmmword_1DD642F70);
    return;
  }

  v101 = v19;
  v96 = v15;
  MEMORY[0x1EEE9AC00](v18);
  *(&v92 - 2) = v4;
  sub_1DD604500();
  v24 = v23;

  v26 = sub_1DD522F24(v25);

  if (v3)
  {

    return;
  }

  v94 = sub_1DD63AC28(v26);
  v95 = 0;
  v92 = v26;
  v93 = v4;
  v41 = *(v24 + 16);
  v97 = v12;
  v98 = v41;
  if (v41)
  {
    v42 = 0;
    v43 = v101;
    while (1)
    {
      sub_1DD63A9BC();
      v45 = v44;
      v46 = [v44 objectAtIndexedSubscript_];

      [v46 doubleValue];
      v48 = v47;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD5869D0();
        v24 = v52;
      }

      if (v42 >= *(v24 + 16))
      {
        break;
      }

      v45 = (v24 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + v43[9] * v42);
      *&v45[*(matched + 32)] = v48;
      sub_1DD63A9D0();
      v50 = v49;
      v51 = [v49 objectAtIndexedSubscript_];

      v43 = [v51 BOOLValue];
      if (v42 >= *(v24 + 16))
      {
        goto LABEL_29;
      }

      ++v42;
      v45[*(matched + 36)] = v43;
      v43 = v101;
      if (v98 == v42)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v43 = v101;
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v95;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }
  }

  sub_1DD5869D0();
  v24 = v91;
LABEL_15:
  v54 = *(v24 + 16);
  v55 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v104[0] = v24 + v55;
  v104[1] = v54;
  sub_1DD5261D8(v104);
  v95 = v45;
  v56 = sub_1DD3CC024(v24, 0, 0, 1, 100);

  sub_1DD63AA6C();
  v58 = v57;
  v59 = [v57 objectAtIndexedSubscript_];

  LODWORD(v98) = [v59 BOOLValue];
  v60 = v56;
  v61 = *(v56 + 16);
  v62 = MEMORY[0x1E69E7CC0];
  v101 = v60;
  if (v61)
  {
    v63 = *(matched + 36);
    v64 = v60 + v55;
    v65 = v43[9];
    v66 = v97;
    do
    {
      sub_1DD527BC4(v64, v22, type metadata accessor for ContactMatchRuntimeData);
      if (*(v22 + v63))
      {
        v67 = v99;
        sub_1DD527BC4(v22, v99, type metadata accessor for Contact);
        OUTLINED_FUNCTION_4_58();
        sub_1DD527C20(v22, v68);
        OUTLINED_FUNCTION_0_38();
        sub_1DD527AF8(v67, v102, v69);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3BFE14();
          v62 = v74;
        }

        v70 = *(v62 + 16);
        if (v70 >= *(v62 + 24) >> 1)
        {
          sub_1DD3BFE14();
          v62 = v75;
        }

        *(v62 + 16) = v70 + 1;
        OUTLINED_FUNCTION_0_38();
        sub_1DD527AF8(v102, v71, v72);
        v66 = v97;
      }

      else
      {
        OUTLINED_FUNCTION_4_58();
        sub_1DD527C20(v22, v73);
      }

      v64 += v65;
      --v61;
    }

    while (v61);
  }

  else
  {
    v66 = v97;
  }

  v76 = v96;
  v77 = v98;
  sub_1DD4273F4(v62, v96);

  v102 = sub_1DD522978();
  v100 = v78;
  v79 = v101;

  v80 = type metadata accessor for ContactResolverRunTimeData(0);
  sub_1DD4B69D8(v76, a2 + *(v80 + 40), &qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v66);
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
  sub_1DD63D0E8();

  sub_1DD390754(v76, &qword_1ECCDBEE0, &unk_1DD645510);
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 17) = v104[0];
  *(a2 + 20) = *(v104 + 3);
  OUTLINED_FUNCTION_13_37(0xE000000000000000);
  *(a2 + 232) = 0;
  *(a2 + 240) = MEMORY[0x1E69E7CC0];
  *(a2 + 248) = 1;
  *(a2 + 252) = *&v103[3];
  *(a2 + 249) = *v103;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  v88 = v100;
  *(a2 + 272) = v102;
  *(a2 + 280) = v88;
  *(a2 + 288) = 0;
  *(a2 + 289) = v77;
  *(a2 + 296) = v79;
  OUTLINED_FUNCTION_16_37();
  OUTLINED_FUNCTION_10_39(v89, v90, xmmword_1DD642F70);
}

uint64_t sub_1DD5224F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v30 = a2;
  v6 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v28 = a3;
  *a3 = 0;
  v16 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  [v16 setComputeUnits_];
  v17 = *(v8 + 16);
  v29 = a1;
  v17(v15, a1, v6);
  sub_1DD39638C(0, &qword_1EE163888, 0x1E695FE90);
  v17(v12, v15, v6);
  v18 = sub_1DD551650(v12, v16);
  if (v3)
  {
    v19 = *(v8 + 8);
    v19(v15, v6);
    sub_1DD63D168();
    OUTLINED_FUNCTION_7();
    (*(v20 + 8))(v30);
    return (v19)(v29, v6);
  }

  else
  {
    v22 = v18;
    v23 = *(v8 + 8);
    v23(v15, v6);
    type metadata accessor for ContactInference_v3_24_0_enlife();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    v23(v29, v6);
    v25 = v28;
    *(v28 + 1) = v24;
    v26 = *(type metadata accessor for MLContactRecommender(0) + 24);
    sub_1DD63D168();
    OUTLINED_FUNCTION_7();
    return (*(v27 + 32))(&v25[v26], v30);
  }
}

uint64_t sub_1DD522770(uint64_t a1)
{
  v2 = MEMORY[0x1E12B1F80](166, MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0], MEMORY[0x1E69E6168]);
  v3 = a1 + 64;
  OUTLINED_FUNCTION_4_1();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v29 = a1;

  v9 = 0;
  v28 = a1 + 64;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_6:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = *(*(v29 + 56) + 8 * v11);
      v13 = sub_1DD525218(*(*(v29 + 48) + v11));
      v15 = v14;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_20_28();
      v16 = sub_1DD3978DC();
      if (__OFADD__(*(v2 + 16), (v17 & 1) == 0))
      {
        break;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB50, &unk_1DD643ED0);
      if (sub_1DD640A08())
      {
        OUTLINED_FUNCTION_20_28();
        v20 = sub_1DD3978DC();
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_20;
        }

        v18 = v20;
      }

      v6 &= v6 - 1;
      if (v19)
      {

        *(*(v2 + 56) + 8 * v18) = v12;
      }

      else
      {
        OUTLINED_FUNCTION_14_5(v2 + 8 * (v18 >> 6));
        v23 = (v22 + 16 * v18);
        *v23 = v13;
        v23[1] = v15;
        *(*(v2 + 56) + 8 * v18) = v12;
        v24 = *(v2 + 16);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_19;
        }

        *(v2 + 16) = v26;
      }

      v9 = v10;
      v3 = v28;
      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

unint64_t sub_1DD522978()
{
  v1 = [*(*(v0 + 8) + 16) modelDescription];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_1DD527AA0();
  v3 = sub_1DD63FC58();

  sub_1DD59B8A0(v3, &v6);

  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1DD390754(&v6, &qword_1ECCDB980, &unk_1DD643DC0);
  }

  return 0xD000000000000010;
}

uint64_t sub_1DD522A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v5 = sub_1DD63D168();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD527BC4(a1, a3, type metadata accessor for Contact);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) + 36);
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  sub_1DD527BC4(a1 + v12, a3 + matched[5], type metadata accessor for ContactResolver.SignalSet);
  sub_1DD527BC4(a1 + v12, v11, type metadata accessor for ContactResolver.SignalSet);
  v14 = type metadata accessor for MLContactRecommender(0);
  (*(v6 + 16))(v8, v19 + *(v14 + 24), v5);
  result = sub_1DD522C90(v11, v8);
  v16 = a3 + matched[6];
  *v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 8) = 0;
  *(v16 + 16) = v17;
  *(a3 + matched[7]) = result;
  *(a3 + matched[8]) = 0;
  *(a3 + matched[9]) = 1;
  return result;
}

uint64_t sub_1DD522C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolver.SignalSet(0);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = type metadata accessor for PrivatizedSignalSet(0);
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = sub_1DD3CE274();
  v15 = MEMORY[0x1E12B1F80](166, &type metadata for ContactRankerFeature, MEMORY[0x1E69E63B0], v14);
  v31 = a1;
  sub_1DD527BC4(a1, v8, type metadata accessor for ContactResolver.SignalSet);
  sub_1DD55DD00(v8, v13);
  v16 = 0x20u;
  while (1)
  {
    v17 = byte_1F58AAFD8[v16];
    v18 = sub_1DD52341C(v13, a2, v17);
    swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1DD3FE6CC(v17);
    if (__OFADD__(*(v15 + 16), (v20 & 1) == 0))
    {
      break;
    }

    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4E8, &unk_1DD657C00);
    if (sub_1DD640A08())
    {
      v23 = sub_1DD3FE6CC(v17);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_14;
      }

      v21 = v23;
    }

    if (v22)
    {
      *(*(v15 + 56) + 8 * v21) = v18;
    }

    else
    {
      OUTLINED_FUNCTION_14_5(v15 + 8 * (v21 >> 6));
      *(v25 + v21) = v17;
      *(*(v15 + 56) + 8 * v21) = v18;
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_13;
      }

      *(v15 + 16) = v28;
    }

    if (++v16 == 198)
    {
      sub_1DD63D168();
      OUTLINED_FUNCTION_7();
      (*(v29 + 8))(a2);
      sub_1DD527C20(v31, type metadata accessor for ContactResolver.SignalSet);
      sub_1DD527C20(v13, type metadata accessor for PrivatizedSignalSet);
      return v15;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD522F24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4F0, &qword_1DD657C10);
  v3 = OUTLINED_FUNCTION_3(v2);
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4F8, &qword_1DD657C18);
  v6 = OUTLINED_FUNCTION_3(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v58 = v7 - v8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v53 - v10);
  v12 = OUTLINED_FUNCTION_15_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_0();
  v56 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v54 = (v17 - v18);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v53 - v20;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  v24 = *(a1 + 16);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD48, &qword_1DD6440D8);
  v25 = swift_allocObject();
  v60 = xmmword_1DD643F80;
  *(v25 + 16) = xmmword_1DD643F80;
  *(v25 + 32) = 166;
  *(v25 + 40) = v24;
  v66 = 0;
  v62 = sub_1DD3FAC5C(&qword_1EE160330, &qword_1ECCDE500, &qword_1DD657C20, MEMORY[0x1E695FCF0]);
  v63 = v23;
  v64 = v14;
  sub_1DD63FA98();
  v67 = 0;
  v68 = 0;
  v66 = a1;

  v57 = v11;
LABEL_2:
  v26 = v58;
  sub_1DD5836DC(v58);
  sub_1DD527B54(v26, v11);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  if (__swift_getEnumTagSinglePayload(v11, 1, v27) == 1)
  {

    v46 = v55;
    v45 = v56;
    v47 = *(v56 + 16);
    v49 = v63;
    v48 = v64;
    v47(v55, v63, v64);
    sub_1DD39638C(0, &qword_1EE160238, 0x1E695FED0);
    v47(v54, v46, v48);
    v50 = sub_1DD640338();
    v51 = *(v45 + 8);
    v51(v46, v48);
    type metadata accessor for ContactInference_v3_24_0_enlifeInput();
    v52 = swift_allocObject();
    *(v52 + 16) = v50;
    v51(v49, v48);
    return v52;
  }

  else
  {
    v28 = *v11;
    v29 = v11 + *(v27 + 48);
    v30 = *(v29 + *(type metadata accessor for ContactMatchRuntimeData(0) + 28));

    OUTLINED_FUNCTION_4_58();
    result = sub_1DD527C20(v29, v31);
    v33 = 0;
    v34 = 1 << *(v30 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & *(v30 + 64);
    v37 = (v34 + 63) >> 6;
    if (v36)
    {
      while (1)
      {
        v38 = v33;
LABEL_11:
        v39 = __clz(__rbit64(v36)) | (v38 << 6);
        v40 = *(*(v30 + 48) + v39);
        v41 = *(*(v30 + 56) + 8 * v39);
        result = swift_allocObject();
        v42 = result;
        *(result + 16) = v60;
        if (qword_1EE161EB8 != -1)
        {
          result = swift_once();
        }

        v43 = off_1EE161EC0;
        if (!*(off_1EE161EC0 + 2))
        {
          break;
        }

        result = sub_1DD3FE6CC(v40);
        if ((v44 & 1) == 0)
        {
          goto LABEL_21;
        }

        v36 &= v36 - 1;
        *(v42 + 32) = *(v43[7] + 8 * result);
        *(v42 + 40) = v28;
        v65 = v41;
        sub_1DD63FA88();
        result = sub_1DD63FAA8();
        v33 = v38;
        if (!v36)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      while (1)
      {
        v38 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v38 >= v37)
        {

          v11 = v57;
          goto LABEL_2;
        }

        v36 = *(v30 + 64 + 8 * v38);
        ++v33;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

double sub_1DD52341C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v313 = a3;
  v314 = a1;
  v310[0] = a2;
  sub_1DD63F1B8();
  OUTLINED_FUNCTION_0();
  v311 = v3;
  v312 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v310[1] = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v310 - v12);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v310 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v310 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v310 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v310 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v310 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v310 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v310 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v310 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v310 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v49 = v310 - v48;
  switch(v313)
  {
    case 1:
      v50 = *(v314 + 81);
      goto LABEL_206;
    case 2:
      v50 = *(v314 + 82);
      goto LABEL_206;
    case 3:
      v50 = *(v314 + 83);
      goto LABEL_206;
    case 4:
      return *(v314 + 88);
    case 5:
      return *(v314 + 96);
    case 6:
      return *(v314 + 104);
    case 7:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      if (*v255 >= 2 && *(v255 + 8) == 1)
      {
        v52 = 1.0;
        if (*(v255 + 9))
        {
          return v52;
        }
      }

      if (*(v314 + *(v254 + 188)) == 1 && *(v314 + *(v254 + 108)) == 1 && *(v255 + 8) == 1)
      {
        v52 = 1.0;
        if (*(v255 + 14) != 1)
        {
          return v52;
        }
      }

      return 0.0;
    case 8:
      v55 = *(type metadata accessor for PrivatizedSignalSet(0) + 148);
      goto LABEL_31;
    case 9:
      v55 = *(type metadata accessor for PrivatizedSignalSet(0) + 112);
      goto LABEL_31;
    case 10:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      v50 = *(v86 + 14);
      goto LABEL_206;
    case 11:
      return *(v314 + 16);
    case 12:
      return *(v314 + 24);
    case 13:
      return *(v314 + 32);
    case 14:
      v93 = type metadata accessor for PrivatizedSignalSet(0);
      v94 = OUTLINED_FUNCTION_11_40(*(v93 + 96));
      sub_1DD4B69D8(v94, v49, v95, v96);
      v97 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v49);
      if (!v61)
      {
        v269 = OUTLINED_FUNCTION_8_49();
        v270(v269);
        v271 = sub_1DD63F388();
        v272 = OUTLINED_FUNCTION_20_28();
        v273(v272);
        OUTLINED_FUNCTION_6_56();
        (*(v274 + 8))(v49, v97);
        return v271;
      }

      v62 = v49;
      goto LABEL_194;
    case 15:
      v152 = type metadata accessor for PrivatizedSignalSet(0);
      v153 = OUTLINED_FUNCTION_11_40(*(v152 + 96));
      sub_1DD4B69D8(v153, v40, v154, v155);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v40);
      if (!v61)
      {
        v280 = OUTLINED_FUNCTION_8_49();
        v281(v280);
        v258 = sub_1DD63F388();
        v282 = OUTLINED_FUNCTION_20_28();
        v283(v282);
        OUTLINED_FUNCTION_6_56();
        v262 = *(v284 + 8);
        v263 = v40;
        goto LABEL_211;
      }

      v62 = v40;
      goto LABEL_194;
    case 16:
      v56 = type metadata accessor for PrivatizedSignalSet(0);
      v57 = OUTLINED_FUNCTION_11_40(*(v56 + 96));
      sub_1DD4B69D8(v57, v37, v58, v59);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v37);
      if (!v61)
      {
        v256 = OUTLINED_FUNCTION_2_75();
        v257(v256);
        v258 = v37;
        sub_1DD63F388();
        v259 = OUTLINED_FUNCTION_7_46();
        v260(v259);
        OUTLINED_FUNCTION_6_56();
        v262 = *(v261 + 8);
        v263 = v37;
        goto LABEL_211;
      }

      v62 = v37;
      goto LABEL_194;
    case 17:
      v120 = type metadata accessor for PrivatizedSignalSet(0);
      v121 = OUTLINED_FUNCTION_11_40(*(v120 + 96));
      sub_1DD4B69D8(v121, v34, v122, v123);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v34);
      if (!v61)
      {
        v275 = OUTLINED_FUNCTION_2_75();
        v276(v275);
        v258 = v34;
        sub_1DD63F388();
        v277 = OUTLINED_FUNCTION_7_46();
        v278(v277);
        OUTLINED_FUNCTION_6_56();
        v262 = *(v279 + 8);
        v263 = v34;
        goto LABEL_211;
      }

      v62 = v34;
      goto LABEL_194;
    case 18:
      v63 = type metadata accessor for PrivatizedSignalSet(0);
      v64 = OUTLINED_FUNCTION_11_40(*(v63 + 96));
      sub_1DD4B69D8(v64, v31, v65, v66);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v31);
      if (!v61)
      {
        v264 = OUTLINED_FUNCTION_2_75();
        v265(v264);
        v258 = v31;
        sub_1DD63F388();
        v266 = OUTLINED_FUNCTION_7_46();
        v267(v266);
        OUTLINED_FUNCTION_6_56();
        v262 = *(v268 + 8);
        v263 = v31;
        goto LABEL_211;
      }

      v62 = v31;
      goto LABEL_194;
    case 19:
      v244 = type metadata accessor for PrivatizedSignalSet(0);
      v245 = OUTLINED_FUNCTION_11_40(*(v244 + 96));
      sub_1DD4B69D8(v245, v28, v246, v247);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v28);
      if (!v61)
      {
        v299 = OUTLINED_FUNCTION_2_75();
        v300(v299);
        v258 = v28;
        sub_1DD63F388();
        v301 = OUTLINED_FUNCTION_7_46();
        v302(v301);
        OUTLINED_FUNCTION_6_56();
        v262 = *(v303 + 8);
        v263 = v28;
        goto LABEL_211;
      }

      v62 = v28;
      goto LABEL_194;
    case 20:
      v209 = type metadata accessor for PrivatizedSignalSet(0);
      v210 = OUTLINED_FUNCTION_11_40(*(v209 + 96));
      sub_1DD4B69D8(v210, v25, v211, v212);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v25);
      if (!v61)
      {
        v290 = v311;
        v289 = v312;
        v291 = OUTLINED_FUNCTION_23_26();
        v292(v291);
        v258 = sub_1DD63F388();
        (*(v289 + 8))(v19, v290);
        OUTLINED_FUNCTION_6_56();
        v262 = *(v293 + 8);
        v263 = v25;
        goto LABEL_211;
      }

      v62 = v25;
      goto LABEL_194;
    case 21:
      v184 = type metadata accessor for PrivatizedSignalSet(0);
      v185 = OUTLINED_FUNCTION_11_40(*(v184 + 96));
      sub_1DD4B69D8(v185, v22, v186, v187);
      v188 = sub_1DD63F378();
      if (__swift_getEnumTagSinglePayload(v22, 1, v188) == 1)
      {
        v62 = v22;
        goto LABEL_194;
      }

      v285 = OUTLINED_FUNCTION_8_49();
      v286(v285);
      v258 = sub_1DD63F388();
      v287 = OUTLINED_FUNCTION_20_28();
      v288(v287);
      (*(*(v188 - 8) + 8))(v22, v188);
      return v258;
    case 22:
      v99 = type metadata accessor for PrivatizedSignalSet(0);
      v100 = OUTLINED_FUNCTION_11_40(*(v99 + 100));
      sub_1DD4B69D8(v100, v19, v101, v102);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v19);
      if (!v61)
      {
        goto LABEL_210;
      }

      goto LABEL_193;
    case 23:
      v224 = type metadata accessor for PrivatizedSignalSet(0);
      v225 = OUTLINED_FUNCTION_11_40(*(v224 + 100));
      sub_1DD4B69D8(v225, v16, v226, v227);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v16);
      if (!v61)
      {
        v294 = OUTLINED_FUNCTION_23_26();
        v295(v294);
        v258 = sub_1DD63F388();
        v296 = OUTLINED_FUNCTION_20_28();
        v297(v296);
        OUTLINED_FUNCTION_6_56();
        v262 = *(v298 + 8);
        v263 = v16;
        goto LABEL_211;
      }

      v62 = v16;
      goto LABEL_194;
    case 24:
      v19 = v44;
      v240 = type metadata accessor for PrivatizedSignalSet(0);
      v241 = OUTLINED_FUNCTION_11_40(*(v240 + 100));
      sub_1DD4B69D8(v241, v19, v242, v243);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v19);
      if (!v61)
      {
        goto LABEL_210;
      }

      goto LABEL_193;
    case 25:
      v19 = v43;
      v250 = type metadata accessor for PrivatizedSignalSet(0);
      v251 = OUTLINED_FUNCTION_11_40(*(v250 + 100));
      sub_1DD4B69D8(v251, v19, v252, v253);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v19);
      if (!v61)
      {
        goto LABEL_210;
      }

      goto LABEL_193;
    case 26:
      v19 = v42;
      v116 = type metadata accessor for PrivatizedSignalSet(0);
      v117 = OUTLINED_FUNCTION_11_40(*(v116 + 100));
      sub_1DD4B69D8(v117, v19, v118, v119);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v19);
      if (!v61)
      {
        goto LABEL_210;
      }

      goto LABEL_193;
    case 27:
      v19 = v47;
      v68 = type metadata accessor for PrivatizedSignalSet(0);
      v69 = OUTLINED_FUNCTION_11_40(*(v68 + 100));
      sub_1DD4B69D8(v69, v19, v70, v71);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v19);
      if (!v61)
      {
        goto LABEL_210;
      }

      goto LABEL_193;
    case 28:
      v19 = v46;
      v75 = type metadata accessor for PrivatizedSignalSet(0);
      v76 = OUTLINED_FUNCTION_11_40(*(v75 + 100));
      sub_1DD4B69D8(v76, v19, v77, v78);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v19);
      if (!v61)
      {
        goto LABEL_210;
      }

      goto LABEL_193;
    case 29:
      v19 = v45;
      v214 = type metadata accessor for PrivatizedSignalSet(0);
      v215 = OUTLINED_FUNCTION_11_40(*(v214 + 100));
      sub_1DD4B69D8(v215, v19, v216, v217);
      v60 = sub_1DD63F378();
      OUTLINED_FUNCTION_1_87(v19);
      if (v61)
      {
LABEL_193:
        v62 = v19;
LABEL_194:
        sub_1DD390754(v62, &qword_1ECCDE510, &qword_1DD65BA20);
        return 0.0;
      }

      else
      {
LABEL_210:
        v304 = OUTLINED_FUNCTION_2_75();
        v305(v304);
        v258 = v19;
        sub_1DD63F388();
        v306 = OUTLINED_FUNCTION_7_46();
        v307(v306);
        OUTLINED_FUNCTION_6_56();
        v262 = *(v308 + 8);
        v263 = v19;
LABEL_211:
        v262(v263, v60);
        return v258;
      }

    case 30:
      v50 = *(v314 + 49);
      goto LABEL_206;
    case 31:
      v50 = *(v314 + 52);
      goto LABEL_206;
    case 32:
      v50 = *(v314 + 53);
      goto LABEL_206;
    case 33:
      v50 = *(v314 + 54);
      goto LABEL_206;
    case 34:
      v51 = sub_1DD4F9BB8(v42);
      v52 = 1.0;
      if (v51 & 1) != 0 || (sub_1DD4F9C90(v51))
      {
        return v52;
      }

      return *(v314 + *(type metadata accessor for PrivatizedSignalSet(0) + 156));
    case 35:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      v50 = *(v127 + 8);
      goto LABEL_206;
    case 36:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      v50 = *(v136 + 9);
      goto LABEL_206;
    case 37:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      v50 = *(v190 + 10);
      goto LABEL_206;
    case 38:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      v50 = *(v144 + 11);
      goto LABEL_206;
    case 39:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      v50 = *(v189 + 12);
      goto LABEL_206;
    case 40:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      v50 = *(v157 + 13);
      goto LABEL_206;
    case 41:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      v50 = *(v220 + 15);
      goto LABEL_206;
    case 42:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      v50 = *(v54 + 16);
      goto LABEL_206;
    case 43:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      v50 = *(v72 + 17);
      goto LABEL_206;
    case 44:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_3_62();
      v50 = *(v139 + 18);
      goto LABEL_206;
    case 45:
      v55 = *(type metadata accessor for PrivatizedSignalSet(0) + 120);
LABEL_31:
      v50 = *(v314 + v55);
      goto LABEL_206;
    case 46:
      return *(v314 + *(type metadata accessor for PrivatizedSignalSet(0) + 192));
    case 47:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v196 + 16);
    case 48:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v134 + 24);
    case 49:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v205 + 32);
    case 50:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v194 + 40);
    case 51:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v98 + 48);
    case 52:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v104 + 56);
    case 53:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v195 + 64);
    case 54:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v213 + 72);
    case 55:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v67 + 80);
    case 56:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v74 + 88);
    case 57:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v103 + 96);
    case 58:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v110 + 104);
    case 59:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v81 + 112);
    case 60:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v84 + 120);
    case 61:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v230 + 128);
    case 62:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v232 + 136);
    case 63:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v92 + 144);
    case 64:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v234 + 152);
    case 65:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v237 + 160);
    case 66:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v249 + 168);
    case 67:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v164 + 176);
    case 68:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v248 + 184);
    case 69:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v83 + 192);
    case 70:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v236 + 200);
    case 71:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v167 + 208);
    case 72:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v88 + 216);
    case 73:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v163 + 224);
    case 74:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v80 + 232);
    case 75:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v238 + 240);
    case 76:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v239 + 248);
    case 77:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v90 + 256);
    case 78:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v228 + 264);
    case 79:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v193 + 272);
    case 80:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v191 + 280);
    case 81:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v73 + 288);
    case 82:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v79 + 296);
    case 83:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v137 + 304);
    case 84:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v140 + 312);
    case 85:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v106 + 320);
    case 86:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v82 + 328);
    case 87:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v233 + 336);
    case 88:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v87 + 344);
    case 89:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v169 + 352);
    case 90:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v113 + 360);
    case 91:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v229 + 368);
    case 92:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v223 + 376);
    case 93:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v218 + 384);
    case 94:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v107 + 392);
    case 95:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v85 + 400);
    case 96:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v124 + 408);
    case 97:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v235 + 416);
    case 98:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v129 + 424);
    case 99:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v105 + 432);
    case 100:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v173 + 440);
    case 101:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v146 + 448);
    case 102:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v158 + 456);
    case 103:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v174 + 464);
    case 104:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v171 + 472);
    case 105:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v145 + 480);
    case 106:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v201 + 488);
    case 107:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v135 + 496);
    case 108:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v199 + 504);
    case 109:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v112 + 512);
    case 110:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v219 + 520);
    case 111:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v208 + 528);
    case 112:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v109 + 536);
    case 113:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v221 + 544);
    case 114:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v231 + 552);
    case 115:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v89 + 560);
    case 116:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v141 + 568);
    case 117:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v133 + 576);
    case 118:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v111 + 584);
    case 119:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v222 + 592);
    case 120:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v183 + 600);
    case 121:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v130 + 608);
    case 122:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v91 + 616);
    case 123:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v200 + 624);
    case 124:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v168 + 632);
    case 125:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v143 + 640);
    case 126:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v197 + 648);
    case 127:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v206 + 656);
    case -128:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v108 + 664);
    case -127:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v115 + 672);
    case -126:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v114 + 680);
    case -125:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v126 + 688);
    case -124:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v132 + 696);
    case -123:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v182 + 704);
    case -122:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v165 + 712);
    case -121:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v181 + 720);
    case -120:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v204 + 728);
    case -119:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v203 + 736);
    case -118:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v125 + 744);
    case -117:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v207 + 752);
    case -116:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v149 + 760);
    case -115:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v150 + 768);
    case -114:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v202 + 776);
    case -113:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v192 + 784);
    case -112:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v175 + 792);
    case -111:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v170 + 800);
    case -110:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v198 + 808);
    case -109:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v178 + 816);
    case -108:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v166 + 824);
    case -107:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v128 + 832);
    case -106:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v156 + 840);
    case -105:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v131 + 848);
    case -104:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v176 + 856);
    case -103:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v147 + 864);
    case -102:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v138 + 872);
    case -101:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v179 + 880);
    case -100:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v148 + 888);
    case -99:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v180 + 896);
    case -98:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v160 + 904);
    case -97:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v177 + 912);
    case -96:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v172 + 920);
    case -95:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v142 + 928);
    case -94:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v159 + 936);
    case -93:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v151 + 944);
    case -92:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v161 + 952);
    case -91:
      type metadata accessor for PrivatizedSignalSet(0);
      OUTLINED_FUNCTION_0_105();
      return *(v162 + 960);
    default:
      v50 = *(v314 + 80);
LABEL_206:
      if (v50)
      {
        return 1.0;
      }

      else
      {
        return 0.0;
      }
  }
}

uint64_t sub_1DD524C14()
{
  sub_1DD3CE274();
  v0 = sub_1DD63FC88();
  v1 = 0;
  while (1)
  {
    v2 = byte_1F58AAFD8[v1 + 32];
    swift_isUniquelyReferenced_nonNull_native();
    v3 = sub_1DD3FE6CC(v2);
    if (__OFADD__(*(v0 + 16), (v4 & 1) == 0))
    {
      break;
    }

    v5 = v3;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE508, &qword_1DD657C28);
    result = sub_1DD640A08();
    if (result)
    {
      result = sub_1DD3FE6CC(v2);
      if ((v6 & 1) != (v8 & 1))
      {
        goto LABEL_14;
      }

      v5 = result;
    }

    if (v6)
    {
      *(*(v0 + 56) + 8 * v5) = v1;
    }

    else
    {
      *(v0 + 8 * (v5 >> 6) + 64) |= 1 << v5;
      *(*(v0 + 48) + v5) = v2;
      *(*(v0 + 56) + 8 * v5) = v1;
      v9 = *(v0 + 16);
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_13;
      }

      *(v0 + 16) = v11;
    }

    if (++v1 == 166)
    {
      off_1EE161EC0 = v0;
      return result;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD524D98(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD640D18();

  v3 = 0;
  result = 73;
  switch(v2)
  {
    case 0:
      goto LABEL_125;
    case 1:
      v3 = 1;
      goto LABEL_125;
    case 2:
      v3 = 2;
      goto LABEL_125;
    case 3:
      v3 = 3;
      goto LABEL_125;
    case 4:
      v3 = 4;
      goto LABEL_125;
    case 5:
      v3 = 5;
      goto LABEL_125;
    case 6:
      v3 = 6;
      goto LABEL_125;
    case 7:
      v3 = 7;
      goto LABEL_125;
    case 8:
      v3 = 8;
      goto LABEL_125;
    case 9:
      v3 = 9;
      goto LABEL_125;
    case 10:
      v3 = 10;
      goto LABEL_125;
    case 11:
      v3 = 11;
      goto LABEL_125;
    case 12:
      v3 = 12;
      goto LABEL_125;
    case 13:
      v3 = 13;
      goto LABEL_125;
    case 14:
      v3 = 14;
      goto LABEL_125;
    case 15:
      v3 = 15;
      goto LABEL_125;
    case 16:
      v3 = 16;
      goto LABEL_125;
    case 17:
      v3 = 17;
      goto LABEL_125;
    case 18:
      v3 = 18;
      goto LABEL_125;
    case 19:
      v3 = 19;
      goto LABEL_125;
    case 20:
      v3 = 20;
      goto LABEL_125;
    case 21:
      v3 = 21;
      goto LABEL_125;
    case 22:
      v3 = 22;
      goto LABEL_125;
    case 23:
      v3 = 23;
      goto LABEL_125;
    case 24:
      v3 = 24;
      goto LABEL_125;
    case 25:
      v3 = 25;
      goto LABEL_125;
    case 26:
      v3 = 26;
      goto LABEL_125;
    case 27:
      v3 = 27;
      goto LABEL_125;
    case 28:
      v3 = 28;
      goto LABEL_125;
    case 29:
      v3 = 29;
      goto LABEL_125;
    case 30:
      v3 = 30;
      goto LABEL_125;
    case 31:
      v3 = 31;
      goto LABEL_125;
    case 32:
      v3 = 32;
      goto LABEL_125;
    case 33:
      v3 = 33;
      goto LABEL_125;
    case 34:
      v3 = 34;
      goto LABEL_125;
    case 35:
      v3 = 35;
      goto LABEL_125;
    case 36:
      v3 = 36;
      goto LABEL_125;
    case 37:
      v3 = 37;
      goto LABEL_125;
    case 38:
      v3 = 38;
      goto LABEL_125;
    case 39:
      v3 = 39;
      goto LABEL_125;
    case 40:
      v3 = 40;
      goto LABEL_125;
    case 41:
      v3 = 41;
      goto LABEL_125;
    case 42:
      v3 = 42;
      goto LABEL_125;
    case 43:
      v3 = 43;
      goto LABEL_125;
    case 44:
      v3 = 44;
      goto LABEL_125;
    case 45:
      v3 = 45;
      goto LABEL_125;
    case 46:
      v3 = 46;
      goto LABEL_125;
    case 47:
      v3 = 47;
      goto LABEL_125;
    case 48:
      v3 = 48;
      goto LABEL_125;
    case 49:
      v3 = 49;
      goto LABEL_125;
    case 50:
      v3 = 50;
      goto LABEL_125;
    case 51:
      v3 = 51;
      goto LABEL_125;
    case 52:
      v3 = 52;
      goto LABEL_125;
    case 53:
      v3 = 53;
      goto LABEL_125;
    case 54:
      v3 = 54;
      goto LABEL_125;
    case 55:
      v3 = 55;
      goto LABEL_125;
    case 56:
      v3 = 56;
      goto LABEL_125;
    case 57:
      v3 = 57;
      goto LABEL_125;
    case 58:
      v3 = 58;
      goto LABEL_125;
    case 59:
      v3 = 59;
      goto LABEL_125;
    case 60:
      v3 = 60;
      goto LABEL_125;
    case 61:
      v3 = 61;
      goto LABEL_125;
    case 62:
      v3 = 62;
      goto LABEL_125;
    case 63:
      v3 = 63;
      goto LABEL_125;
    case 64:
      v3 = 64;
      goto LABEL_125;
    case 65:
      v3 = 65;
      goto LABEL_125;
    case 66:
      v3 = 66;
      goto LABEL_125;
    case 67:
      v3 = 67;
      goto LABEL_125;
    case 68:
      v3 = 68;
      goto LABEL_125;
    case 69:
      v3 = 69;
      goto LABEL_125;
    case 70:
      v3 = 70;
      goto LABEL_125;
    case 71:
      v3 = 71;
      goto LABEL_125;
    case 72:
      v3 = 72;
LABEL_125:
      result = v3;
      break;
    case 73:
      return result;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v2 - 128) >= 0x26)
      {
        result = 4294967206;
      }

      else
      {
        result = v2;
      }

      break;
  }

  return result;
}

uint64_t sub_1DD525218(char a1)
{
  result = 0x746E656365527369;
  switch(a1)
  {
    case 1:
    case 17:
      OUTLINED_FUNCTION_21_25();
      result = v3 - 12;
      break;
    case 2:
    case 18:
    case 25:
      OUTLINED_FUNCTION_21_25();
      result = v22 - 11;
      break;
    case 3:
      OUTLINED_FUNCTION_21_25();
      result = v19 - 13;
      break;
    case 4:
      result = 0x5279636E65636572;
      break;
    case 5:
    case 10:
    case 15:
    case 20:
    case 22:
    case 24:
    case 27:
    case 29:
    case 40:
    case 46:
    case 52:
    case -111:
    case -108:
    case -105:
      OUTLINED_FUNCTION_21_25();
      result = v17 - 9;
      break;
    case 6:
    case 23:
    case 28:
      OUTLINED_FUNCTION_21_25();
      result = v12 - 8;
      break;
    case 7:
    case 90:
    case 93:
    case 96:
      OUTLINED_FUNCTION_21_25();
      result = v21 - 7;
      break;
    case 8:
      result = 0x69726F7661467369;
      break;
    case 9:
    case 34:
    case 37:
    case -97:
    case -95:
    case -94:
      OUTLINED_FUNCTION_21_25();
      result = v6 - 16;
      break;
    case 11:
    case 108:
    case 111:
    case 114:
    case 119:
    case 122:
    case 125:
    case 126:
    case -127:
    case -124:
      OUTLINED_FUNCTION_21_25();
      result = v13 | 3;
      break;
    case 12:
    case 13:
    case 110:
    case 113:
    case 116:
    case -128:
    case -125:
    case -122:
      OUTLINED_FUNCTION_21_25();
      result = v10 | 4;
      break;
    case 14:
    case 16:
    case 19:
    case 21:
    case 26:
    case 32:
    case 50:
    case 91:
    case 94:
    case 97:
      OUTLINED_FUNCTION_21_25();
      result = v20 - 10;
      break;
    case 30:
      result = 0x7365676775537369;
      break;
    case 31:
      result = 0x6F636F7079487369;
      break;
    case 33:
    case 47:
    case -92:
      OUTLINED_FUNCTION_21_25();
      result = v7 - 14;
      break;
    case 35:
      result = 0x79726575516C6C61;
      break;
    case 36:
    case -120:
    case -117:
    case -114:
    case -103:
    case -100:
      OUTLINED_FUNCTION_21_25();
      result = v9 - 2;
      break;
    case 38:
    case 39:
    case 42:
    case 43:
    case 44:
      OUTLINED_FUNCTION_21_25();
      result = v5 - 15;
      break;
    case 41:
      result = 0x616E6B63694E7369;
      break;
    case 45:
      result = 0x6974616C65527369;
      break;
    case 48:
    case 51:
    case -110:
    case -107:
    case -104:
    case -102:
    case -99:
    case -93:
      OUTLINED_FUNCTION_21_25();
      result = v8 - 5;
      break;
    case 49:
    case 92:
    case 95:
    case 98:
    case -112:
    case -109:
    case -106:
    case -91:
      OUTLINED_FUNCTION_21_25();
      result = v11 - 6;
      break;
    case 53:
      result = 0x6F63536369706F74;
      break;
    case 54:
    case 57:
    case 60:
    case 72:
    case 75:
    case 78:
    case 81:
    case 84:
    case 87:
    case 118:
    case 121:
    case 124:
    case -101:
    case -98:
      OUTLINED_FUNCTION_21_25();
      result = v15 - 1;
      break;
    case 55:
    case 58:
    case 61:
    case 73:
    case 76:
    case 79:
    case 82:
    case 85:
    case 88:
      OUTLINED_FUNCTION_21_25();
      result = v16 - 4;
      break;
    case 56:
      result = 0xD000000000000020;
      break;
    case 59:
      result = 0xD000000000000020;
      break;
    case 62:
      result = 0xD000000000000020;
      break;
    case 63:
    case 66:
    case 69:
    case 99:
    case 102:
    case 105:
      result = 0xD000000000000025;
      break;
    case 64:
    case 67:
    case 70:
    case 100:
    case 103:
    case 106:
    case 117:
    case 120:
    case 123:
    case -119:
    case -116:
    case -113:
    case -96:
      OUTLINED_FUNCTION_21_25();
      result = v14 | 2;
      break;
    case 65:
    case 68:
    case 71:
    case 101:
    case 104:
    case 107:
      OUTLINED_FUNCTION_21_25();
      result = v18 | 6;
      break;
    case 74:
      result = 0xD000000000000020;
      break;
    case 77:
      result = 0xD000000000000020;
      break;
    case 80:
      result = 0xD000000000000020;
      break;
    case 83:
      result = 0xD000000000000020;
      break;
    case 86:
      result = 0xD000000000000020;
      break;
    case 89:
      result = 0xD000000000000020;
      break;
    case 109:
      result = 0xD000000000000020;
      break;
    case 112:
      result = 0xD000000000000020;
      break;
    case 115:
      result = 0xD000000000000020;
      break;
    case 127:
      result = 0xD000000000000020;
      break;
    case -126:
      result = 0xD000000000000020;
      break;
    case -123:
      result = 0xD000000000000020;
      break;
    case -121:
    case -118:
    case -115:
      OUTLINED_FUNCTION_21_25();
      result = v4 | 1;
      break;
    default:
      return result;
  }

  return result;
}