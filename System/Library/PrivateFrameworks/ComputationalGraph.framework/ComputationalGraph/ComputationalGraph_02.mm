_WORD *storeEnumTagSinglePayload for TextOutputContainerError(_WORD *result, int a2, int a3)
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

unint64_t sub_1C6E0E788()
{
  result = qword_1EC1F7870;
  if (!qword_1EC1F7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7870);
  }

  return result;
}

uint64_t sub_1C6E0E7DC()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF8460 = result;
  return result;
}

uint64_t sub_1C6E0E848()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF8F78 = result;
  return result;
}

uint64_t sub_1C6E0E8B0()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF66D0 = result;
  return result;
}

uint64_t sub_1C6E0E918()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF8FA8 = result;
  return result;
}

id sub_1C6E0E97C(uint64_t a1, unint64_t a2)
{
  v5 = 131104;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v9 = v2[1];
  v11 = *(v2 + 16);
  v12 = (v9 >> 60) & 3;
  if (v11)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 | v13;
  if ((v12 | v13) > 3)
  {
    if (v14 != 4 && v14 != 5 || a1 != 65552)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v14 - 2) < 2)
    {
      goto LABEL_26;
    }

    v15 = 65568;
    if (v14)
    {
      v15 = 131104;
    }

    if (v15 != a1)
    {
LABEL_26:
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v28 = qword_1EDEF8F88;
      v29 = sub_1C6EE4EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1C6EE6B40;
      v47 = 0;
      v48 = 0xE000000000000000;
      v50 = a1;
      type metadata accessor for MLMultiArrayDataType(0);
      sub_1C6EE52F0();
      v31 = v47;
      v32 = v48;
      v33 = MEMORY[0x1E69E6158];
      *(v30 + 56) = MEMORY[0x1E69E6158];
      v34 = sub_1C6DF10E0();
      *(v30 + 64) = v34;
      *(v30 + 32) = v31;
      *(v30 + 40) = v32;
      v47 = 0;
      v48 = 0xE000000000000000;
      if (v14 <= 2)
      {
        if (!v14)
        {
          v35 = 0;
          v5 = 65568;
          goto LABEL_39;
        }

        if (v14 != 1)
        {
          goto LABEL_37;
        }

        v35 = 0;
      }

      else
      {
        if (v14 > 4)
        {
          if (v14 != 5)
          {
LABEL_37:
            v5 = 0;
            v35 = 1;
            goto LABEL_39;
          }
        }

        else if (v14 == 3)
        {
          goto LABEL_37;
        }

        v35 = 0;
        v5 = 65552;
      }

LABEL_39:
      v50 = v5;
      v51 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AA0, &qword_1C6EE7848);
      v36 = sub_1C6EE4AF0();
      MEMORY[0x1CCA57F60](v36);

      v37 = v47;
      v38 = v48;
      *(v30 + 96) = v33;
      *(v30 + 104) = v34;
      *(v30 + 72) = v37;
      *(v30 + 80) = v38;
      sub_1C6EE4730("Asked to get tensor for dType %{public}@, but Feature dataType is %{public}@", 76, 2, &dword_1C6DE9000, v28, v29, v30);
LABEL_40:

      return 0;
    }
  }

  v47 = v10;
  v48 = v9;
  v49 = v11;
  sub_1C6E0F330(v8);
  v16 = sub_1C6E12B64();
  sub_1C6E1842C(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  if (v16)
  {
    v17 = sub_1C6DFD948([v16 count], a2);
    if (!v17)
    {
      if (qword_1EDEF8F80 == -1)
      {
LABEL_43:
        sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1C6EE6B40;
        v41 = [v16 count];
        v42 = MEMORY[0x1E69E65A8];
        *(v40 + 56) = MEMORY[0x1E69E6530];
        *(v40 + 64) = v42;
        *(v40 + 32) = v41;
        *(v40 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
        *(v40 + 104) = sub_1C6E185A4(&qword_1EC1F7AA8, &qword_1EC1F7918, &qword_1C6EE6BD0, MEMORY[0x1E6969E28]);
        *(v40 + 72) = a2;

        sub_1C6EE4730("Failed to compute shape from input data length %d, input shape %ld", v45, v46);

        goto LABEL_40;
      }

LABEL_50:
      swift_once();
      goto LABEL_43;
    }

    v18 = v17;
    v19 = [v16 shape];
    sub_1C6E184F4(0, &qword_1EDEF6758, 0x1E696AD98);
    a2 = sub_1C6EE4CA0();

    if (a2 >> 62)
    {
      v20 = sub_1C6EE5110();
      if (v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_17:
        v46 = v18;
        v47 = MEMORY[0x1E69E7CC0];
        sub_1C6E15A90(0, v20 & ~(v20 >> 63), 0);
        if ((v20 & 0x8000000000000000) == 0)
        {
          v21 = 0;
          v22 = v47;
          do
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x1CCA585E0](v21, a2);
            }

            else
            {
              v23 = *(a2 + 8 * v21 + 32);
            }

            v24 = v23;
            v25 = [v23 integerValue];

            v47 = v22;
            v27 = *(v22 + 16);
            v26 = *(v22 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_1C6E15A90((v26 > 1), v27 + 1, 1);
              v22 = v47;
            }

            ++v21;
            *(v22 + 16) = v27 + 1;
            *(v22 + 8 * v27 + 32) = v25;
          }

          while (v20 != v21);

          v18 = v46;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_50;
      }
    }

LABEL_46:
    v43 = sub_1C6E6F90C();

    if (v43)
    {
    }

    else
    {
      v44 = sub_1C6E13734(v18);

      return v44;
    }
  }

  return v16;
}

uint64_t Feature.init(stringList:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = sub_1C6EE4AE0();
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v23 = a2;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C6E15AB0(0, v8, 0);
    v9 = 0;
    v10 = v26;
    v24 = (v5 + 8);
    v11 = (a1 + 40);
    while (1)
    {
      if (v9 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v2 = *(v11 - 1);
      v5 = *v11;

      sub_1C6EE4AD0();
      v12 = sub_1C6EE4AA0();
      v14 = v13;
      (*v24)(v7, v25);
      if (v14 >> 60 == 15)
      {
        break;
      }

      v26 = v10;
      v2 = *(v10 + 16);
      v15 = *(v10 + 24);
      v5 = v2 + 1;
      if (v2 >= v15 >> 1)
      {
        sub_1C6E15AB0((v15 > 1), v2 + 1, 1);
        v10 = v26;
      }

      ++v9;
      *(v10 + 16) = v5;
      v16 = v10 + 16 * v2;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      v11 += 2;
      if (v8 == v9)
      {

        a2 = v23;
        goto LABEL_12;
      }
    }

    if (qword_1EDEF8F80 == -1)
    {
      goto LABEL_11;
    }

LABEL_15:
    swift_once();
LABEL_11:
    v17 = qword_1EDEF8F88;
    v18 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C6EE6590;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1C6DF10E0();
    *(v19 + 32) = v2;
    *(v19 + 40) = v5;

    sub_1C6EE4730("Failed to encode string %{public}@ as data", 42, 2, &dword_1C6DE9000, v17, v18, v19);

    v10 = 0;
    v20 = 1;
    v21 = 0x2000000000000000;
    a2 = v23;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v20 = 0;
    v21 = 0x3000000000000000;
  }

  *a2 = v10;
  *(a2 + 8) = v21;
  *(a2 + 16) = v20;
  return result;
}

uint64_t sub_1C6E0F330@<X0>(uint64_t a1@<X8>)
{
  v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  MEMORY[0x1EEE9AC00](v41);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + 8);
  v42 = *v1;
  v16 = *(v1 + 16);
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v44 = v17;
  v45 = v19;
  v43 = v18 + 56;
  (v19)(a1, 1, 1);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  result = sub_1C6EE4420();
  if (v16)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v15 >> 60) & 3 | v21;
  if (v22 <= 2)
  {
    if (v22)
    {
      v26 = v42;
      if (v22 == 1)
      {

        sub_1C6EE4420();
        *v11 = v26;
        sub_1C6E1848C(a1);
        sub_1C6E1853C(v11, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
        v27 = v44;
        swift_storeEnumTagMultiPayload();
        v45(a1, 0, 1, v27);
        v28 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
        v29 = v11;
      }

      else
      {

        sub_1C6EE4420();
        *v8 = v26;
        sub_1C6E1848C(a1);
        sub_1C6E1853C(v8, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v33 = v44;
        swift_storeEnumTagMultiPayload();
        v45(a1, 0, 1, v33);
        v28 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
        v29 = v8;
      }
    }

    else
    {
      v31 = v42;

      sub_1C6EE4420();
      *v14 = v31;
      sub_1C6E1848C(a1);
      sub_1C6E1853C(v14, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      v32 = v44;
      swift_storeEnumTagMultiPayload();
      v45(a1, 0, 1, v32);
      v28 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList;
      v29 = v14;
    }

    return sub_1C6E1842C(v29, v28);
  }

  if (v22 > 4)
  {
    if (v22 != 5)
    {
      return result;
    }

    *v4 = xmmword_1C6EE6B50;
    v30 = v42;
    sub_1C6E00D18(v42, v15 & 0xCFFFFFFFFFFFFFFFLL);
    sub_1C6EE4420();
    sub_1C6DF1134(*v4, *(v4 + 1));
    *v4 = v30;
    *(v4 + 1) = v15 & 0xCFFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  if (v22 != 3)
  {
    *v4 = xmmword_1C6EE6B50;
    sub_1C6EE4420();
    v34 = sub_1C6E10650(v42);
    v36 = v35;
    sub_1C6DF1134(*v4, *(v4 + 1));
    *v4 = v34;
    *(v4 + 1) = v36;
LABEL_16:
    sub_1C6E1848C(a1);
    sub_1C6E1853C(v4, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v37 = v44;
    swift_storeEnumTagMultiPayload();
    v45(a1, 0, 1, v37);
    v25 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    goto LABEL_17;
  }

  v23 = v42;

  v4 = v40;
  sub_1C6EE4420();
  *v4 = v23;
  sub_1C6E1848C(a1);
  sub_1C6E1853C(v4, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  v24 = v44;
  swift_storeEnumTagMultiPayload();
  v45(a1, 0, 1, v24);
  v25 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
LABEL_17:
  v28 = v25;
  v29 = v4;
  return sub_1C6E1842C(v29, v28);
}

uint64_t sub_1C6E0F908(uint64_t a1)
{
  v2 = sub_1C6E18754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E0F944(uint64_t a1)
{
  v2 = sub_1C6E18754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E0F980(void *a1, int a2)
{
  LODWORD(v54) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B68, &qword_1C6EE7988);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B70, &qword_1C6EE7990);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B78, &qword_1C6EE7998);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B80, &qword_1C6EE79A0);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B88, &qword_1C6EE79A8);
  v53 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v52 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B90, &qword_1C6EE79B0);
  v51 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B98, &qword_1C6EE79B8);
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7BA0, &qword_1C6EE79C0);
  v18 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v20 = &v37 - v19;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1C6E18658();
  v55 = v20;
  sub_1C6EE55C0();
  v21 = (v18 + 8);
  v22 = v54;
  if (v54 <= 2u)
  {
    v28 = v50;
    v29 = v51;
    v54 = v12;
    v31 = v52;
    v30 = v53;
    if (v22)
    {
      if (v22 != 1)
      {
        v59 = 2;
        sub_1C6E187FC();
        v35 = v55;
        v36 = v56;
        sub_1C6EE53F0();
        (*(v30 + 8))(v31, v37);
        return (*v21)(v35, v36);
      }

      v58 = 1;
      sub_1C6E18850();
      v33 = v55;
      v32 = v56;
      sub_1C6EE53F0();
      (*(v29 + 8))(v14, v54);
    }

    else
    {
      v57 = 0;
      sub_1C6E188A4();
      v33 = v55;
      v32 = v56;
      sub_1C6EE53F0();
      (*(v28 + 8))(v17, v15);
    }

    return (*v21)(v33, v32);
  }

  if (v54 > 4u)
  {
    if (v54 == 5)
    {
      v62 = 5;
      sub_1C6E18700();
      v23 = v44;
      v24 = v55;
      v25 = v56;
      sub_1C6EE53F0();
      v27 = v45;
      v26 = v46;
    }

    else
    {
      v63 = 6;
      sub_1C6E186AC();
      v23 = v47;
      v24 = v55;
      v25 = v56;
      sub_1C6EE53F0();
      v27 = v48;
      v26 = v49;
    }
  }

  else if (v54 == 3)
  {
    v60 = 3;
    sub_1C6E187A8();
    v23 = v38;
    v24 = v55;
    v25 = v56;
    sub_1C6EE53F0();
    v27 = v39;
    v26 = v40;
  }

  else
  {
    v61 = 4;
    sub_1C6E18754();
    v23 = v41;
    v24 = v55;
    v25 = v56;
    sub_1C6EE53F0();
    v27 = v42;
    v26 = v43;
  }

  (*(v27 + 8))(v23, v26);
  return (*v21)(v24, v25);
}

uint64_t sub_1C6E10074()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x363174616F6C66;
  if (v1 != 5)
  {
    v3 = 0x5F363174616F6C66;
  }

  v4 = 0x74616F6C66;
  if (v1 != 3)
  {
    v4 = 0x7365747962;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x3233746E69;
  if (v1 != 1)
  {
    v5 = 0x3436746E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C6E10140@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C6E168E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C6E10174(uint64_t a1)
{
  v2 = sub_1C6E18658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E101B0(uint64_t a1)
{
  v2 = sub_1C6E18658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E10204(uint64_t a1)
{
  v2 = sub_1C6E18700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E10240(uint64_t a1)
{
  v2 = sub_1C6E18700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E10294(uint64_t a1)
{
  v2 = sub_1C6E186AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E102D0(uint64_t a1)
{
  v2 = sub_1C6E186AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E10324(uint64_t a1)
{
  v2 = sub_1C6E187A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E10360(uint64_t a1)
{
  v2 = sub_1C6E187A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E103B4(uint64_t a1)
{
  v2 = sub_1C6E18850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E103F0(uint64_t a1)
{
  v2 = sub_1C6E18850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E10444(uint64_t a1)
{
  v2 = sub_1C6E187FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E10480(uint64_t a1)
{
  v2 = sub_1C6E187FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E104D4(uint64_t a1)
{
  v2 = sub_1C6E188A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E10510(uint64_t a1)
{
  v2 = sub_1C6E188A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E1054C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C6E16B24(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t Feature.count.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  v4 = (v2 >> 60) & 3 | v3;
  if (v4 <= 2)
  {
    return *(v1 + 16);
  }

  if (v4 <= 4)
  {
    return *(v1 + 16);
  }

  if (v4 != 5)
  {
    return 0;
  }

  v6 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v6)
    {
      return BYTE6(v2);
    }

    v10 = __OFSUB__(HIDWORD(v1), v1);
    v11 = HIDWORD(v1) - v1;
    if (!v10)
    {
      return v11;
    }

    goto LABEL_19;
  }

  if (v6 != 2)
  {
    return 0;
  }

  v9 = v1 + 16;
  v7 = *(v1 + 16);
  v8 = *(v9 + 8);
  result = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6E10650(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  if ((v1 + 0x4000000000000000) < 0)
  {
    __break(1u);
  }

  if (v1)
  {
    if ((2 * v1) < 15)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v2 = a1;
      sub_1C6EE3FE0();
      swift_allocObject();
      v3 = sub_1C6EE3FD0();
      v4 = v3;
      v5 = v1 >> 30;
      if (v1 >> 30)
      {
        sub_1C6EE41D0();
        v5 = swift_allocObject();
        v6 = v4 | 0x8000000000000000;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
      }

      else
      {
        v6 = v3 | 0x4000000000000000;
      }

      a1 = v2;
    }

    v18 = v5;
    v19 = v6;
    v9 = (a1 + 32);
    do
    {
      v11 = *v9++;
      v10 = HIBYTE(v11);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AD0, &qword_1C6EE7870);
      v16 = v12;
      v13 = sub_1C6E185A4(qword_1EDEF5D30, &qword_1EC1F7AD0, &qword_1C6EE7870, MEMORY[0x1E696A0B0]);
      v17 = v13;
      LOBYTE(v15[0]) = v11;
      __swift_project_boxed_opaque_existential_1Tm(v15, v12);
      sub_1C6EE41E0();
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v16 = v12;
      v17 = v13;
      LOBYTE(v15[0]) = v10;
      __swift_project_boxed_opaque_existential_1Tm(v15, v12);
      sub_1C6EE41E0();
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      --v1;
    }

    while (v1);
    v7 = v18;
    v8 = v19;
  }

  else
  {
    v7 = 0;
    v8 = 0xC000000000000000;
  }

  sub_1C6E00D18(v7, v8);
  sub_1C6DF1134(v7, v8);
  return v7;
}

uint64_t sub_1C6E108D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v32 - v22;
  sub_1C6E18354(a1, &v32 - v22);
  sub_1C6E1842C(a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  v24 = 1;
  result = (*(v18 + 48))(v23, 1, v17);
  if (result == 1)
  {
    v26 = 0;
    goto LABEL_3;
  }

  sub_1C6E183C4(v23, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1C6E183C4(v20, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v26 = *v7;

        result = sub_1C6E1842C(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v24 = 0;
        v27 = 0x3000000000000000;
      }

      else
      {
        v30 = v32;
        sub_1C6E183C4(v20, v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v26 = *v30;
        v31 = v30[1];
        sub_1C6E00D18(*v30, v31);
        result = sub_1C6E1842C(v30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v27 = v31 | 0x1000000000000000;
        v24 = 1;
      }

      goto LABEL_4;
    }

    sub_1C6E183C4(v20, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    v26 = *v10;

    result = sub_1C6E1842C(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    v24 = 0;
LABEL_3:
    v27 = 0x2000000000000000;
LABEL_4:
    v28 = v33;
    goto LABEL_5;
  }

  v28 = v33;
  if (EnumCaseMultiPayload)
  {
    sub_1C6E183C4(v20, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    v26 = *v13;

    result = sub_1C6E1842C(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    v24 = 0;
    v27 = 0x1000000000000000;
  }

  else
  {
    sub_1C6E183C4(v20, v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    v26 = *v16;

    result = sub_1C6E1842C(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    v27 = 0;
    v24 = 0;
  }

LABEL_5:
  *v28 = v26;
  *(v28 + 8) = v27;
  *(v28 + 16) = v24;
  return result;
}

uint64_t sub_1C6E10DB8(uint64_t a1)
{
  v2 = sub_1C6E1622C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E10DF4(uint64_t a1)
{
  v2 = sub_1C6E1622C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E10E30()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E10E78(uint64_t a1)
{
  v2 = *v1;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v2);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E10EBC()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x4C363174616F6C66;
  if (v1 != 5)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x73694C3436746E69;
  if (v1 != 3)
  {
    v4 = 0x73694C7365747962;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0x73694C74616F6C66;
  if (v1 != 1)
  {
    v5 = 0x73694C3233746E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1C6E10FA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C6E17434(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C6E10FD8(uint64_t a1)
{
  v2 = sub_1C6E16018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E11014(uint64_t a1)
{
  v2 = sub_1C6E16018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E11070(uint64_t a1)
{
  v2 = sub_1C6E16114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E110AC(uint64_t a1)
{
  v2 = sub_1C6E16114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E11108(uint64_t a1)
{
  v2 = sub_1C6E1606C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E11144(uint64_t a1)
{
  v2 = sub_1C6E1606C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E111A0(uint64_t a1)
{
  v2 = sub_1C6E16420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E111DC(uint64_t a1)
{
  v2 = sub_1C6E16420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E11238(uint64_t a1)
{
  v2 = sub_1C6E16350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E11274(uint64_t a1)
{
  v2 = sub_1C6E16350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E112B8()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E112FC(uint64_t a1)
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E11348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C6EE54B0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C6E113D4(uint64_t a1)
{
  v2 = sub_1C6E16280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E11410(uint64_t a1)
{
  v2 = sub_1C6E16280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E11464(uint64_t a1)
{
  v2 = sub_1C6E164F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E114A0(uint64_t a1)
{
  v2 = sub_1C6E164F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Feature.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7878, &qword_1C6EE6B78);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7880, &qword_1C6EE6B80);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7888, &qword_1C6EE6B88);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7890, &qword_1C6EE6B90);
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7898, &qword_1C6EE6B98);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78A0, &qword_1C6EE6BA0);
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78A8, &qword_1C6EE6BA8);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78B0, &qword_1C6EE6BB0);
  v19 = *(v18 - 8);
  v68 = v18;
  v69 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v1[1];
  v67 = *v1;
  v21 = *(v1 + 16);
  v22 = a1[3];
  v23 = a1;
  v25 = &v48 - v24;
  __swift_project_boxed_opaque_existential_1Tm(v23, v22);
  sub_1C6E16018();
  v72 = v25;
  sub_1C6EE55C0();
  if (v21)
  {
    v26 = 4;
  }

  else
  {
    v26 = 0;
  }

  v27 = (v20 >> 60) & 3 | v26;
  if (v27 <= 2)
  {
    v33 = v60;
    v32 = v61;
    v35 = v62;
    v34 = v63;
    v37 = v64;
    v36 = v65;
    v38 = v66;
    if (v27)
    {
      v28 = v68;
      if (v27 == 1)
      {
        LOBYTE(v70) = 2;
        sub_1C6E16350();
        v30 = v72;
        sub_1C6EE53F0();
        v70 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
        sub_1C6E163A4();
        sub_1C6EE5440();
        (*(v35 + 8))(v32, v34);
        return (*(v69 + 8))(v30, v28);
      }

      LOBYTE(v70) = 3;
      sub_1C6E16280();
      v46 = v72;
      sub_1C6EE53F0();
      v70 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7900, &qword_1C6EE6BC8);
      sub_1C6E162D4();
      sub_1C6EE5440();
      (*(v36 + 8))(v37, v38);
      return (*(v69 + 8))(v46, v28);
    }

    else
    {
      LOBYTE(v70) = 1;
      sub_1C6E16420();
      v43 = v15;
      v44 = v68;
      v45 = v72;
      sub_1C6EE53F0();
      v70 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7930, &qword_1C6EE6BD8);
      sub_1C6E16474();
      sub_1C6EE5440();
      (*(v33 + 8))(v43, v13);
      return (*(v69 + 8))(v45, v44);
    }
  }

  else
  {
    if (v27 > 4)
    {
      v28 = v68;
      if (v27 != 5)
      {
        LOBYTE(v70) = 0;
        sub_1C6E164F0();
        v47 = v72;
        sub_1C6EE53F0();
        (*(v49 + 8))(v17, v50);
        return (*(v69 + 8))(v47, v28);
      }

      LOBYTE(v70) = 6;
      sub_1C6E1606C();
      v40 = v57;
      sub_1C6EE53F0();
      v70 = v67;
      v71 = v20 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1C6E160C0();
      v41 = v59;
      sub_1C6EE5440();
      v42 = v58;
    }

    else
    {
      v28 = v68;
      if (v27 == 3)
      {
        LOBYTE(v70) = 4;
        sub_1C6E1622C();
        v29 = v51;
        v30 = v72;
        sub_1C6EE53F0();
        v70 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78E8, &qword_1C6EE6BC0);
        sub_1C6E16614(&qword_1EC1F78F0, sub_1C6E160C0, MEMORY[0x1E69E6300]);
        v31 = v53;
        sub_1C6EE5440();
        (*(v52 + 8))(v29, v31);
        return (*(v69 + 8))(v30, v28);
      }

      LOBYTE(v70) = 5;
      sub_1C6E16114();
      v40 = v54;
      sub_1C6EE53F0();
      v70 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78D0, &qword_1C6EE6BB8);
      sub_1C6E16168();
      v41 = v56;
      sub_1C6EE5440();
      v42 = v55;
    }

    (*(v42 + 8))(v40, v41);
    return (*(v69 + 8))(v72, v28);
  }
}

uint64_t Feature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7948, &qword_1C6EE6BE0);
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v57 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7950, &qword_1C6EE6BE8);
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v76 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7958, &qword_1C6EE6BF0);
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7960, &qword_1C6EE6BF8);
  v10 = *(v9 - 8);
  v65 = v9;
  v66 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7968, &qword_1C6EE6C00);
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7970, &qword_1C6EE6C08);
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7978, &qword_1C6EE6C10);
  v60 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7980, &qword_1C6EE6C18);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v24);
  sub_1C6E16018();
  v25 = v82;
  sub_1C6EE55B0();
  if (!v25)
  {
    v58 = v17;
    v26 = v75;
    v59 = 0;
    v28 = v76;
    v27 = v77;
    v82 = v21;
    v29 = v78;
    v30 = sub_1C6EE53E0();
    if (*(v30 + 16) != 1 || (v31 = *(v30 + 32), v31 == 7))
    {
      v35 = sub_1C6EE5210();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7988, &unk_1C6EE6C20);
      *v37 = &type metadata for Feature;
      sub_1C6EE5380();
      sub_1C6EE5200();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v82 + 8))(v23, v20);
    }

    else
    {
      if (*(v30 + 32) <= 2u)
      {
        if (*(v30 + 32))
        {
          v77 = v30;
          v40 = v59;
          if (v31 == 1)
          {
            LOBYTE(v80) = 1;
            sub_1C6E16420();
            sub_1C6EE5370();
            if (!v40)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7930, &qword_1C6EE6BD8);
              sub_1C6E16784();
              v41 = v62;
              sub_1C6EE53D0();
              (*(v61 + 8))(v16, v41);
              (*(v82 + 8))(v23, v20);
              swift_unknownObjectRelease();
              v56 = 0;
              v54 = 0;
              v55 = v80;
              goto LABEL_31;
            }
          }

          else
          {
            LOBYTE(v80) = 2;
            sub_1C6E16350();
            v45 = v73;
            sub_1C6EE5370();
            if (!v40)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
              sub_1C6E16708();
              v46 = v64;
              sub_1C6EE53D0();
              (*(v63 + 8))(v45, v46);
              (*(v82 + 8))(v23, v20);
              swift_unknownObjectRelease();
              v54 = 0;
              v55 = v80;
              v56 = 0x1000000000000000;
              goto LABEL_31;
            }
          }
        }

        else
        {
          LOBYTE(v80) = 0;
          sub_1C6E164F0();
          v44 = v59;
          sub_1C6EE5370();
          if (!v44)
          {
            (*(v60 + 8))(v19, v58);
            (*(v82 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v55 = 0;
            v54 = 1;
            v56 = 0x2000000000000000;
            goto LABEL_31;
          }
        }
      }

      else if (*(v30 + 32) > 4u)
      {
        if (v31 == 5)
        {
          LOBYTE(v80) = 5;
          sub_1C6E16114();
          v42 = v59;
          sub_1C6EE5370();
          if (!v42)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78D0, &qword_1C6EE6BB8);
            sub_1C6E16598();
            v43 = v67;
            sub_1C6EE53D0();
            (*(v70 + 8))(v28, v43);
            (*(v82 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v56 = 0;
            v55 = v80;
            v54 = 1;
            goto LABEL_31;
          }
        }

        else
        {
          v49 = v29;
          LOBYTE(v80) = 6;
          sub_1C6E1606C();
          v50 = v27;
          v51 = v59;
          sub_1C6EE5370();
          if (!v51)
          {
            sub_1C6E16544();
            v52 = v71;
            sub_1C6EE53D0();
            v53 = v82;
            (*(v72 + 8))(v50, v52);
            (*(v53 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v55 = v80;
            v56 = v81 | 0x1000000000000000;
            v54 = 1;
            v38 = v79;
LABEL_32:
            *v49 = v55;
            *(v49 + 8) = v56;
            *(v49 + 16) = v54;
            return __swift_destroy_boxed_opaque_existential_1Tm(v38);
          }
        }
      }

      else if (v31 == 3)
      {
        LOBYTE(v80) = 3;
        sub_1C6E16280();
        v32 = v59;
        sub_1C6EE5370();
        if (!v32)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7900, &qword_1C6EE6BC8);
          sub_1C6E1668C();
          v33 = v65;
          v34 = v74;
          sub_1C6EE53D0();
          (*(v66 + 8))(v34, v33);
          (*(v82 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v54 = 0;
          v55 = v80;
          v56 = 0x2000000000000000;
LABEL_31:
          v38 = v79;
          v49 = v29;
          goto LABEL_32;
        }
      }

      else
      {
        LOBYTE(v80) = 4;
        sub_1C6E1622C();
        v47 = v59;
        sub_1C6EE5370();
        if (!v47)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78E8, &qword_1C6EE6BC0);
          sub_1C6E16614(&qword_1EC1F79A0, sub_1C6E16544, MEMORY[0x1E69E6330]);
          v48 = v69;
          sub_1C6EE53D0();
          (*(v68 + 8))(v26, v48);
          (*(v82 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v54 = 0;
          v55 = v80;
          v56 = 0x3000000000000000;
          goto LABEL_31;
        }
      }

      (*(v82 + 8))(v23, v20);
    }

    swift_unknownObjectRelease();
  }

  v38 = v79;
  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

id sub_1C6E12B64()
{
  v1 = v0;
  v81 = *MEMORY[0x1E69E9840];
  v67 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  MEMORY[0x1EEE9AC00](v67);
  v70 = (&v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AB0, &qword_1C6EE7850);
  v77 = *(v3 - 8);
  *&v78 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v75 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v66 - v6;
  v68 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AB8, &qword_1C6EE7858);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v71 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v66 - v11;
  v66 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  MEMORY[0x1EEE9AC00](v66);
  v13 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v66 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v66 - v24;
  sub_1C6E18354(v1, &v66 - v24);
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v27 = *(*(v26 - 8) + 48);
  v28 = 0;
  if (v27(v25, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v25;
    if (EnumCaseMultiPayload > 1)
    {
      if ((EnumCaseMultiPayload - 2) < 2)
      {
        v31 = v25;
        v28 = 0;
LABEL_40:
        sub_1C6E1842C(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        return v28;
      }

      sub_1C6E18354(v1, v17);
      if (v27(v17, 1, v26) == 1)
      {
        sub_1C6E1848C(v17);
        v33 = v70;
      }

      else
      {
        v34 = swift_getEnumCaseMultiPayload();
        v33 = v70;
        if (v34 == 4)
        {
          sub_1C6E183C4(v17, v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          goto LABEL_22;
        }

        sub_1C6E1842C(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      }

      *v33 = xmmword_1C6EE6B50;
      sub_1C6EE4420();
LABEL_22:
      v44 = *v33;
      v45 = v33[1];
      sub_1C6E00D18(*v33, v45);
      sub_1C6E1842C(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v46 = sub_1C6EE4210();
      v47 = [v46 bytes];
      v48 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC0, &unk_1C6EE7860);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1C6EE6B60;
      v50 = v45 >> 62;
      v78 = xmmword_1C6EE6B60;
      if ((v45 >> 62) > 1)
      {
        if (v50 != 2)
        {
          v31 = v30;
LABEL_31:
          *(v49 + 32) = sub_1C6EE4E30();
          v51 = swift_allocObject();
          *(v51 + 16) = v78;
          sub_1C6E184F4(0, &qword_1EDEF6758, 0x1E696AD98);
          *(v51 + 32) = sub_1C6EE4F90();
          v52 = objc_allocWithZone(MEMORY[0x1E695FED0]);
          v53 = sub_1C6EE4C90();

          v54 = sub_1C6EE4C90();

          v79 = 0;
          v28 = [v52 initWithDataPointer:v47 shape:v53 dataType:65552 strides:v54 deallocator:0 error:&v79];

          v55 = v79;
          if (v28)
          {
            sub_1C6DF1134(v44, v45);
          }

          else
          {
            v56 = v55;
            v57 = sub_1C6EE4050();

            swift_willThrow();
            sub_1C6DF1134(v44, v45);
            if (qword_1EDEF8F80 != -1)
            {
              swift_once();
            }

            v58 = qword_1EDEF8F88;
            v59 = sub_1C6EE4EC0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v60 = swift_allocObject();
            *(v60 + 16) = xmmword_1C6EE6590;
            v79 = 0;
            v80 = 0xE000000000000000;
            swift_getErrorValue();
            sub_1C6EE5480();
            v61 = v79;
            v62 = v80;
            *(v60 + 56) = MEMORY[0x1E69E6158];
            *(v60 + 64) = sub_1C6DF10E0();
            *(v60 + 32) = v61;
            *(v60 + 40) = v62;
            sub_1C6EE4730("Error creating MLMultiArray from underlying Float16List. %{public}@", 67, 2, &dword_1C6DE9000, v58, v59, v60);

            v28 = 0;
          }

          goto LABEL_40;
        }

        if (!__OFSUB__(*(v44 + 24), *(v44 + 16)))
        {
          v31 = v30;
          goto LABEL_31;
        }

        __break(1u);
      }

      else
      {
        if (!v50)
        {
          v31 = v30;
          goto LABEL_31;
        }

        if (!__OFSUB__(HIDWORD(v44), v44))
        {
          v31 = v30;
          goto LABEL_31;
        }
      }

      __break(1u);
    }

    if (!EnumCaseMultiPayload)
    {
      sub_1C6E18354(v1, v20);
      if (v27(v20, 1, v26) == 1)
      {
        sub_1C6E1848C(v20);
        v32 = v69;
      }

      else
      {
        v35 = swift_getEnumCaseMultiPayload();
        v32 = v69;
        if (!v35)
        {
          v31 = v30;
          sub_1C6E183C4(v20, v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          goto LABEL_17;
        }

        sub_1C6E1842C(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      }

      v31 = v30;
      *v32 = MEMORY[0x1E69E7CC0];
      sub_1C6EE4420();
LABEL_17:
      v36 = *v32;

      sub_1C6E1842C(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      v79 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC8, &qword_1C6EF6BE0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1C6EE6590;
      *(v37 + 32) = v36[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7930, &qword_1C6EE6BD8);
      sub_1C6E185A4(&qword_1EDEF67B0, &qword_1EC1F7930, &qword_1C6EE6BD8, MEMORY[0x1E69E6328]);
      v38 = v76;
      sub_1C6EE4800();
      sub_1C6E184F4(0, &qword_1EDEF6788, 0x1E695FED0);
      v40 = v77;
      v39 = v78;
      (*(v77 + 16))(v75, v38, v78);
      v41 = &qword_1EDEF6868;
      v42 = &qword_1EC1F7AB0;
      v43 = &qword_1C6EE7850;
LABEL_39:
      sub_1C6E185A4(v41, v42, v43, MEMORY[0x1E695FCF0]);
      v28 = sub_1C6EE4E80();
      (*(v40 + 8))(v38, v39);
      goto LABEL_40;
    }

    sub_1C6E18354(v1, v23);
    if (v27(v23, 1, v26) == 1)
    {
      sub_1C6E1848C(v23);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v25;
        sub_1C6E183C4(v23, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
LABEL_38:
        v63 = *v13;

        sub_1C6E1842C(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
        v79 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC8, &qword_1C6EF6BE0);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1C6EE6590;
        *(v64 + 32) = v63[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
        sub_1C6E185A4(&qword_1EDEF6798, &qword_1EC1F7918, &qword_1C6EE6BD0, MEMORY[0x1E69E6328]);
        v38 = v72;
        sub_1C6EE4800();
        sub_1C6E184F4(0, &qword_1EDEF6788, 0x1E695FED0);
        v40 = v73;
        v39 = v74;
        (*(v73 + 16))(v71, v38, v74);
        v41 = &unk_1EDEF6860;
        v42 = &qword_1EC1F7AB8;
        v43 = &qword_1C6EE7858;
        goto LABEL_39;
      }

      sub_1C6E1842C(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    v31 = v25;
    *v13 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
    goto LABEL_38;
  }

  return v28;
}

id sub_1C6E13734(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_23:
    if ([v1 count] == 1)
    {
      __break(1u);
    }

    goto LABEL_25;
  }

  v4 = 0;
  v5 = (a1 + 32);
  v6 = 1;
  do
  {
    v7 = v5[v4];
    v8 = v6 * v7;
    if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
    {
      __break(1u);
      goto LABEL_21;
    }

    ++v4;
    v6 *= v7;
  }

  while (v2 != v4);
  if (v8 != [v1 count])
  {
LABEL_25:
    __break(1u);
  }

  v9 = sub_1C6EE4D00();
  *(v9 + 16) = v2;
  v10 = (v9 + 16);
  v11 = (v9 + 32);
  bzero((v9 + 32), 8 * v2);
  *(8 * v2 + v9 + 32 - 8) = 1;
  if (v2 != 1)
  {
    v12 = 1;
    v13 = v2;
    while (1)
    {
      v14 = v13 - 1;
      if (v13 - 1 >= *v10)
      {
        break;
      }

      v15 = *(a1 + 24 + 8 * v13);
      if ((v12 * v15) >> 64 != (v12 * v15) >> 63)
      {
        goto LABEL_22;
      }

      v10[v13--] = v12 * v15;
      v12 *= v15;
      if (v14 <= 1)
      {
        goto LABEL_11;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_11:
  v28[0] = MEMORY[0x1E69E7CC0];
  sub_1C6EE5290();
  do
  {
    v16 = *v5++;
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1C6EE5260();
    sub_1C6EE52A0();
    sub_1C6EE52B0();
    sub_1C6EE5270();
    --v2;
  }

  while (v2);
  v17 = *v10;
  if (*v10)
  {
    v28[0] = MEMORY[0x1E69E7CC0];
    sub_1C6EE5290();
    do
    {
      v18 = *v11++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C6EE5260();
      sub_1C6EE52A0();
      sub_1C6EE52B0();
      sub_1C6EE5270();
      --v17;
    }

    while (v17);
  }

  v19 = [v1 dataPointer];
  v20 = [v1 dataType];
  v21 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  sub_1C6E184F4(0, &qword_1EDEF6758, 0x1E696AD98);
  v22 = sub_1C6EE4C90();

  v23 = sub_1C6EE4C90();

  v28[0] = 0;
  v24 = [v21 initWithDataPointer:v19 shape:v22 dataType:v20 strides:v23 deallocator:0 error:v28];

  if (v24)
  {
    v25 = v28[0];
  }

  else
  {
    v26 = v28[0];
    sub_1C6EE4050();

    swift_willThrow();
  }

  return v24;
}

uint64_t Feature.floatList.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(v0 + 8) >> 60) & 3 | v1;
  if (v2 > 2)
  {
    v3 = 768;
    if (v2 == 5)
    {
      v3 = 774;
    }

    v4 = 772;
    if (v2 != 3)
    {
      v4 = 773;
    }

    if (v2 <= 4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_16;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 769;
    }

    else
    {
      v5 = 770;
    }

LABEL_16:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    *(v6 + 16) = 3;
    return swift_willThrow();
  }
}

uint64_t Feature.int32List.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(v0 + 8) >> 60) & 3 | v1;
  if (v2 > 2)
  {
    v3 = 256;
    if (v2 == 5)
    {
      v3 = 262;
    }

    v4 = 260;
    if (v2 != 3)
    {
      v4 = 261;
    }

    if (v2 <= 4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_12;
  }

  if (!v2)
  {
    v5 = 259;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    *(v6 + 16) = 3;
    return swift_willThrow();
  }

  if (v2 != 1)
  {
    v5 = 258;
    goto LABEL_12;
  }
}

uint64_t Feature.int64List.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(v0 + 8) >> 60) & 3 | v1;
  if (v2 > 2)
  {
    v3 = 512;
    if (v2 == 5)
    {
      v3 = 518;
    }

    v4 = 516;
    if (v2 != 3)
    {
      v4 = 517;
    }

    if (v2 <= 4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_12;
  }

  if (!v2)
  {
    v5 = 515;
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    v5 = 513;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    *(v6 + 16) = 3;
    return swift_willThrow();
  }
}

uint64_t Feature.bytesList.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(v0 + 8) >> 60) & 3 | v1;
  if (v2 <= 2)
  {
    v4 = 1025;
    if (v2 != 1)
    {
      v4 = 1026;
    }

    if (v2)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1027;
    }
  }

  else if (v2 > 4)
  {
    if (v2 == 5)
    {
      v5 = 1030;
    }

    else
    {
      v5 = 1024;
    }
  }

  else
  {
    if (v2 == 3)
    {
    }

    v5 = 1029;
  }

  sub_1C6E16800();
  swift_allocError();
  *v6 = v5;
  *(v6 + 8) = 0;
  *(v6 + 16) = 3;
  return swift_willThrow();
}

uint64_t Feature.float16List.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(v0 + 8) >> 60) & 3 | v1;
  if (v2 <= 2)
  {
    v4 = 1281;
    if (v2 != 1)
    {
      v4 = 1282;
    }

    if (v2)
    {
      v3 = v4;
    }

    else
    {
      v3 = 1283;
    }

    goto LABEL_16;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      v3 = 1286;
    }

    else
    {
      v3 = 1280;
    }

    goto LABEL_16;
  }

  if (v2 == 3)
  {
    v3 = 1284;
LABEL_16:
    sub_1C6E16800();
    swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 0;
    *(v5 + 16) = 3;
    return swift_willThrow();
  }
}

uint64_t Feature.float16LittleEndianBytes.getter()
{
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = (v1 >> 60) & 3 | v2;
  if (v3 <= 2)
  {
    v5 = 1537;
    if (v3 != 1)
    {
      v5 = 1538;
    }

    if (v3)
    {
      v4 = v5;
    }

    else
    {
      v4 = 1539;
    }
  }

  else if (v3 > 4)
  {
    if (v3 != 6)
    {
      v4 = *v0;
      sub_1C6E00D18(v4, v1 & 0xCFFFFFFFFFFFFFFFLL);
      return v4;
    }

    v4 = 1536;
  }

  else if (v3 == 3)
  {
    v4 = 1540;
  }

  else
  {
    v4 = 1541;
  }

  sub_1C6E16800();
  swift_allocError();
  *v6 = v4;
  *(v6 + 8) = 0;
  *(v6 + 16) = 3;
  swift_willThrow();
  return v4;
}

uint64_t Feature.stringList.getter()
{
  v2 = sub_1C6EE4AE0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  if (*(v0 + 16))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (v4 >> 60) & 3 | v6;
  if (v7 <= 2)
  {
    v23 = 1025;
    if (v7 != 1)
    {
      v23 = 1026;
    }

    if (v7)
    {
      v10 = v23;
    }

    else
    {
      v10 = 1027;
    }

    goto LABEL_24;
  }

  if (v7 > 4)
  {
    if (v7 == 5)
    {
      v10 = 1030;
    }

    else
    {
      v10 = 1024;
    }

    goto LABEL_24;
  }

  if (v7 != 3)
  {
    v10 = 1029;
LABEL_24:
    sub_1C6E16800();
    swift_allocError();
    *v24 = v10;
    *(v24 + 8) = 0;
    *(v24 + 16) = 3;
    swift_willThrow();
    return v10;
  }

  v8 = *v0;
  v9 = *(*v0 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v26 = v1;
  v27 = v4;
  v28 = v5;
  v30 = MEMORY[0x1E69E7CC0];

  result = sub_1C6E15A10(0, v9, 0);
  v12 = 0;
  v10 = v30;
  v13 = (v8 + 40);
  while (v12 < *(v8 + 16))
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    sub_1C6E00D18(v14, *v13);
    sub_1C6EE4AD0();
    v16 = sub_1C6EE4AB0();
    if (!v17)
    {
      sub_1C6E00C60(v8, v27, v28);
      sub_1C6E16800();
      swift_allocError();
      *v25 = v14;
      *(v25 + 8) = v15;
      *(v25 + 16) = 1;
      swift_willThrow();

      return v10;
    }

    v18 = v16;
    v19 = v17;
    result = sub_1C6DF1134(v14, v15);
    v30 = v10;
    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_1C6E15A10((v20 > 1), v21 + 1, 1);
      v10 = v30;
    }

    ++v12;
    *(v10 + 16) = v21 + 1;
    v22 = v10 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
    v13 += 2;
    if (v9 == v12)
    {
      sub_1C6E00C60(v8, v27, v28);
      return v10;
    }
  }

  __break(1u);
  return result;
}

void sub_1C6E1423C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 dataType];
  if (v4 != 65552)
  {
    if (v4 == 131104)
    {
      v14 = [a1 count];
      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = v14;
        if (v14)
        {
          v29 = MEMORY[0x1E69E7CC0];
          sub_1C6E15AD0(0, v14, 0);
          v16 = 0;
          v8 = v29;
          do
          {
            v17 = [a1 objectAtIndexedSubscript_];
            v18 = [v17 intValue];

            v20 = *(v29 + 16);
            v19 = *(v29 + 24);
            if (v20 >= v19 >> 1)
            {
              sub_1C6E15AD0((v19 > 1), v20 + 1, 1);
            }

            ++v16;
            *(v29 + 16) = v20 + 1;
            *(v29 + 4 * v20 + 32) = v18;
          }

          while (v15 != v16);

          v27 = 0;
          v26 = 0x1000000000000000;
          goto LABEL_24;
        }

        v27 = 0;
        v26 = 0x1000000000000000;
LABEL_23:
        v8 = MEMORY[0x1E69E7CC0];
        goto LABEL_24;
      }

      __break(1u);
    }

    else
    {
      if (v4 != 65568)
      {
        if (qword_1EDEF8F80 == -1)
        {
LABEL_20:
          v21 = qword_1EDEF8F88;
          v22 = sub_1C6EE4EC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1C6EE6590;
          [a1 dataType];
          type metadata accessor for MLMultiArrayDataType(0);
          sub_1C6EE52F0();
          *(v23 + 56) = MEMORY[0x1E69E6158];
          *(v23 + 64) = sub_1C6DF10E0();
          *(v23 + 32) = 0;
          *(v23 + 40) = 0xE000000000000000;
          sub_1C6EE4730("Asked to build a ProtoFeature from a tensor with an unsupport DType %{public}@", 78, 2, &dword_1C6DE9000, v21, v22, v23);

          v24 = [a1 dataType];
          sub_1C6E16800();
          swift_allocError();
          *v25 = v24;
          *(v25 + 8) = 0;
          *(v25 + 16) = 2;
          swift_willThrow();

          return;
        }

LABEL_27:
        swift_once();
        goto LABEL_20;
      }

      v5 = [a1 count];
      if ((v5 & 0x8000000000000000) == 0)
      {
        v6 = v5;
        if (v5)
        {
          v28 = MEMORY[0x1E69E7CC0];
          sub_1C6E15AF0(0, v5, 0);
          v7 = 0;
          v8 = v28;
          do
          {
            v9 = [a1 objectAtIndexedSubscript_];
            [v9 floatValue];
            v11 = v10;

            v13 = *(v28 + 16);
            v12 = *(v28 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_1C6E15AF0((v12 > 1), v13 + 1, 1);
            }

            ++v7;
            *(v28 + 16) = v13 + 1;
            *(v28 + 4 * v13 + 32) = v11;
          }

          while (v6 != v7);

          v26 = 0;
          v27 = 0;
          goto LABEL_24;
        }

        v26 = 0;
        v27 = 0;
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v8 = sub_1C6E14628();

  v26 = 0;
  v27 = 1;
LABEL_24:
  *a2 = v8;
  *(a2 + 8) = v26;
  *(a2 + 16) = v27;
}

uint64_t sub_1C6E14628()
{
  v1 = v0;
  if ([v0 dataType] == 65552)
  {
    v2 = [v0 count];
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = v2;
      if (v2)
      {
        v4 = sub_1C6EE4D00();
        *(v4 + 16) = v3;
        bzero((v4 + 32), 2 * v3);
      }

      else
      {
        v4 = MEMORY[0x1E69E7CC0];
      }

      v5 = [v1 dataPointer];
      if (!v3)
      {
        return v4;
      }

      if (v3 <= *(v4 + 16))
      {
        if (v3 < 4 || (v4 - v5) >= 0xFFFFFFFFFFFFFFE0)
        {
          v6 = 0;
LABEL_11:
          v7 = v3 - v6;
          v8 = 2 * v6;
          v9 = (2 * v6 + v4 + 32);
          v10 = &v5[v8];
          do
          {
            v11 = *v10;
            v10 += 2;
            *v9++ = v11;
            --v7;
          }

          while (v7);
          return v4;
        }

        if (v3 >= 0x10)
        {
          v6 = v3 & 0x7FFFFFFFFFFFFFF0;
          v13 = (v5 + 16);
          v14 = (v4 + 48);
          v15 = v3 & 0x7FFFFFFFFFFFFFF0;
          do
          {
            v16 = *v13;
            *(v14 - 1) = *(v13 - 1);
            *v14 = v16;
            v13 += 2;
            v14 += 2;
            v15 -= 16;
          }

          while (v15);
          if (v3 == v6)
          {
            return v4;
          }

          if ((v3 & 0xC) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v6 = 0;
        }

        v17 = v6;
        v6 = v3 & 0x7FFFFFFFFFFFFFFCLL;
        v18 = &v5[2 * v17];
        v19 = (2 * v17 + v4 + 32);
        v20 = v17 - (v3 & 0x7FFFFFFFFFFFFFFCLL);
        do
        {
          v21 = *v18;
          v18 += 8;
          *v19++ = v21;
          v20 += 4;
        }

        while (v20);
        if (v3 == v6)
        {
          return v4;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
  }

  result = sub_1C6EE5300();
  __break(1u);
  return result;
}

uint64_t Feature.prettyJSONString.getter()
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = sub_1C6EE4AE0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = objc_opt_self();
  sub_1C6E14B38(v2, v3, v4, &v25);
  __swift_project_boxed_opaque_existential_1Tm(&v25, v28);
  v6 = sub_1C6EE54A0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  v25 = 0;
  v7 = [v5 dataWithJSONObject:v6 options:3 error:&v25];
  swift_unknownObjectRelease();
  v8 = v25;
  if (v7)
  {
    v9 = sub_1C6EE4220();
    v11 = v10;

    sub_1C6EE4AD0();
    v12 = sub_1C6EE4AB0();
    v14 = v13;
    sub_1C6DF1134(v9, v11);
    if (!v14)
    {
      v22 = sub_1C6EE4EC0();
      sub_1C6E184F4(0, &qword_1EDEF6750, 0x1E69E9BF8);
      v23 = sub_1C6EE4FC0();
      sub_1C6EE4730("Failed to get string from Feature json object", 45, 2, &dword_1C6DE9000, v23, v22, MEMORY[0x1E69E7CC0]);

      v25 = v2;
      v26 = v3;
      v27 = v4;
      sub_1C6E00CBC(v2, v3, v4);
      return sub_1C6EE4AF0();
    }
  }

  else
  {
    v15 = v8;
    v16 = sub_1C6EE4050();

    swift_willThrow();
    v17 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C6EE6590;
    v25 = 0;
    v26 = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v19 = v25;
    v20 = v26;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1C6DF10E0();
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    sub_1C6E184F4(0, &qword_1EDEF6750, 0x1E69E9BF8);
    v21 = sub_1C6EE4FC0();
    sub_1C6EE4730("Failed to serialize Features message: %{public}@", 48, 2, &dword_1C6DE9000, v21, v17, v18);

    v25 = v2;
    v26 = v3;
    v27 = v4;
    sub_1C6E00CBC(v2, v3, v4);
    v12 = sub_1C6EE4AF0();
  }

  return v12;
}

uint64_t sub_1C6E14B38@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = sub_1C6EE4AE0();
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (a2 >> 60) & 3 | (4 * (a3 & 1));
  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v22 = &qword_1EC1F7918;
        v23 = &qword_1C6EE6BD0;
      }

      else
      {
        v22 = &qword_1EC1F7900;
        v23 = &qword_1C6EE6BC8;
      }
    }

    else
    {
      v22 = &qword_1EC1F7930;
      v23 = &qword_1C6EE6BD8;
    }

LABEL_20:
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    *a4 = a1;
  }

  if (v10 <= 4)
  {
    if (v10 == 3)
    {
      v11 = *(a1 + 16);
      v12 = MEMORY[0x1E69E7CC0];
      if (v11)
      {
        v24 = MEMORY[0x1E69E7CC0];
        sub_1C6E15B10(0, v11, 0);
        v12 = v24;
        v13 = (a1 + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = *v13;
          sub_1C6E00D18(v14, *v13);
          sub_1C6EE4AD0();
          v16 = sub_1C6EE4AB0();
          v18 = v17;
          sub_1C6DF1134(v14, v15);
          v20 = *(v24 + 16);
          v19 = *(v24 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1C6E15B10((v19 > 1), v20 + 1, 1);
          }

          v13 += 2;
          *(v24 + 16) = v20 + 1;
          v21 = v24 + 16 * v20;
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
          --v11;
        }

        while (v11);
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AD8, &qword_1C6EE7878);
      a4[3] = result;
      *a4 = v12;
      return result;
    }

    v22 = &qword_1EC1F78D0;
    v23 = &qword_1C6EE6BB8;
    goto LABEL_20;
  }

  if (v10 == 5)
  {
    a4[3] = MEMORY[0x1E6969080];
    *a4 = a1;
    a4[1] = a2 & 0xCFFFFFFFFFFFFFFFLL;

    return sub_1C6E00D18(a1, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else
  {
    a4[3] = MEMORY[0x1E69E6158];
    *a4 = 1701736302;
    a4[1] = 0xE400000000000000;
  }

  return result;
}

char *static Feature.intList(_:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 2);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = result;
    v11 = MEMORY[0x1E69E7CC0];
    result = sub_1C6E15AD0(0, v3, 0);
    v4 = v11;
    v6 = (v5 + 32);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v7 > 0x7FFFFFFF)
      {
        goto LABEL_10;
      }

      v12 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_1C6E15AD0((v9 > 1), v10 + 1, 1);
        v4 = v12;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 4 * v10 + 32) = v7;
      if (!--v3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    *a2 = v4;
    *(a2 + 8) = 0x1000000000000000;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t static Feature.int(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C6EE6590;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    *(result + 32) = a1;
    *a2 = result;
    *(a2 + 8) = 0x1000000000000000;
    *(a2 + 16) = 0;
    return result;
  }

  __break(1u);
  return result;
}

double static Feature.float(_:)@<D0>(uint64_t a1@<X8>, float a2@<S0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AD0, &qword_1C6EE6C30);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C6EE6590;
  *(v4 + 32) = a2;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

double static Feature.int32(_:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C6EE6590;
  *(v4 + 32) = a1;
  *a2 = v4;
  *(a2 + 8) = 0x1000000000000000;
  *(a2 + 16) = 0;
  return result;
}

double static Feature.int64(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79C8, &qword_1C6EE6C38);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C6EE6590;
  *(v4 + 32) = a1;
  *a2 = v4;
  *(a2 + 8) = 0x2000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t static Feature.bytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE6590;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *a3 = v6;
  *(a3 + 8) = 0x3000000000000000;
  *(a3 + 16) = 0;

  return sub_1C6E00D18(a1, a2);
}

uint64_t static Feature.string(_:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1C6EE4AE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EE4AD0();
  v8 = sub_1C6EE4AA0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    result = 0;
    v12 = -1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
    result = swift_allocObject();
    v12 = 0;
    *(result + 16) = xmmword_1C6EE6590;
    *(result + 32) = v8;
    *(result + 40) = v10;
  }

  *a3 = result;
  *(a3 + 8) = 0x3000000000000000;
  *(a3 + 16) = v12;
  return result;
}

double static Feature.float16(_:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2 = a2.n128_u16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D8, &qword_1C6EE6C48);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C6EE6590;
  *(v4 + 32) = v2;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t Feature.intList.getter(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = (v1[1] >> 60) & 3 | v2;
  if (v3 > 2)
  {
    v4 = 256;
    if (v3 == 5)
    {
      v4 = 262;
    }

    v5 = 260;
    if (v3 != 3)
    {
      v5 = 261;
    }

    if (v3 <= 4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    goto LABEL_12;
  }

  if (!v3)
  {
    v6 = 259;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0;
    *(v7 + 16) = 3;
    return swift_willThrow();
  }

  if (v3 != 1)
  {
    v6 = 258;
    goto LABEL_12;
  }

  v9 = *v1;
  v10 = *(*v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A90(0, v10, 0);
    result = v16;
    v11 = (v9 + 32);
    v12 = *(v16 + 16);
    do
    {
      v14 = *v11++;
      v13 = v14;
      v17 = result;
      v15 = *(result + 24);
      if (v12 >= v15 >> 1)
      {
        sub_1C6E15A90((v15 > 1), v12 + 1, 1);
        result = v17;
      }

      *(result + 16) = v12 + 1;
      *(result + 8 * v12++ + 32) = v13;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t Feature.int.getter(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(v1 + 8) >> 60) & 3 | v2;
  if (v3 > 2)
  {
    v4 = 256;
    if (v3 == 5)
    {
      v4 = 262;
    }

    v5 = 260;
    if (v3 != 3)
    {
      v5 = 261;
    }

    if (v3 <= 4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    goto LABEL_12;
  }

  if (!v3)
  {
    v6 = 259;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0;
    *(v7 + 16) = 3;
    return swift_willThrow();
  }

  if (v3 != 1)
  {
    v6 = 258;
    goto LABEL_12;
  }

  if (!*(*v1 + 16))
  {
    v6 = 257;
    goto LABEL_12;
  }

  return *(*v1 + 32);
}

void Feature.float.getter(uint64_t result)
{
  if (*(v1 + 16))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(v1 + 8) >> 60) & 3 | v2;
  if (v3 > 2)
  {
    v4 = 768;
    if (v3 == 5)
    {
      v4 = 774;
    }

    v5 = 772;
    if (v3 != 3)
    {
      v5 = 773;
    }

    if (v3 <= 4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    goto LABEL_16;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v6 = 769;
    }

    else
    {
      v6 = 770;
    }

LABEL_16:
    sub_1C6E16800();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0;
    v8 = 3;
LABEL_17:
    *(v7 + 16) = v8;
    swift_willThrow();
    return;
  }

  if (!*(*v1 + 16))
  {
    sub_1C6E16800();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    v8 = 4;
    goto LABEL_17;
  }
}

uint64_t Feature.int32.getter(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(v1 + 8) >> 60) & 3 | v2;
  if (v3 > 2)
  {
    v4 = 256;
    if (v3 == 5)
    {
      v4 = 262;
    }

    v5 = 260;
    if (v3 != 3)
    {
      v5 = 261;
    }

    if (v3 <= 4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    goto LABEL_12;
  }

  if (!v3)
  {
    v6 = 259;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0;
    v8 = 3;
LABEL_13:
    *(v7 + 16) = v8;
    return swift_willThrow();
  }

  if (v3 != 1)
  {
    v6 = 258;
    goto LABEL_12;
  }

  if (!*(*v1 + 16))
  {
    sub_1C6E16800();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    v8 = 4;
    goto LABEL_13;
  }

  return *(*v1 + 32);
}

uint64_t Feature.int64.getter(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(v1 + 8) >> 60) & 3 | v2;
  if (v3 > 2)
  {
    v4 = 512;
    if (v3 == 5)
    {
      v4 = 518;
    }

    v5 = 516;
    if (v3 != 3)
    {
      v5 = 517;
    }

    if (v3 <= 4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    goto LABEL_12;
  }

  if (!v3)
  {
    v6 = 515;
    goto LABEL_12;
  }

  if (v3 == 1)
  {
    v6 = 513;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0;
    v8 = 3;
LABEL_13:
    *(v7 + 16) = v8;
    return swift_willThrow();
  }

  if (!*(*v1 + 16))
  {
    sub_1C6E16800();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    v8 = 4;
    goto LABEL_13;
  }

  return *(*v1 + 32);
}

uint64_t Feature.bytes.getter()
{
  result = sub_1C6E17698();
  if (!v0)
  {
    v3 = result;
    sub_1C6E00D18(result, v2);
    return v3;
  }

  return result;
}

char *Feature.string.getter()
{
  v2 = sub_1C6EE4AE0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v3) = *(v0 + 16);
  v10 = *v0;
  v11 = v3;
  v5 = sub_1C6E17698();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_1C6E00D18(v5, v6);
    sub_1C6EE4AD0();
    v4 = sub_1C6EE4AB0();
    sub_1C6DF1134(v7, v8);
  }

  return v4;
}

void Feature.float16.getter(uint64_t result)
{
  if (*(v1 + 16))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(v1 + 8) >> 60) & 3 | v2;
  if (v3 <= 2)
  {
    v5 = 1281;
    if (v3 != 1)
    {
      v5 = 1282;
    }

    if (v3)
    {
      v4 = v5;
    }

    else
    {
      v4 = 1283;
    }

    goto LABEL_16;
  }

  if (v3 > 4)
  {
    if (v3 == 5)
    {
      v4 = 1286;
    }

    else
    {
      v4 = 1280;
    }

    goto LABEL_16;
  }

  if (v3 == 3)
  {
    v4 = 1284;
LABEL_16:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v4;
    *(v6 + 8) = 0;
    v7 = 3;
LABEL_17:
    *(v6 + 16) = v7;
    swift_willThrow();
    return;
  }

  if (!*(*v1 + 16))
  {
    sub_1C6E16800();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    v7 = 4;
    goto LABEL_17;
  }
}

char *sub_1C6E15A10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECCD94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15A30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECCEA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15A50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECCEC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15A70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECCEE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6E15A90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECD040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6E15AB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECD144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6E15AD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECD250(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6E15AF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECD354(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15B10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECD458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15B30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECD58C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15B50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECD5B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15B70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECD6F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15B90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECD71C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15BB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECD860(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15BD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECCD6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15BF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECD884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6E15C10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECDA88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15C30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6ECDB94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _s18ComputationalGraph7FeatureO2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = *(result + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = (v2 >> 60) & 3 | v8;
  if (v9 > 2)
  {
    if (v9 > 4)
    {
      if (v9 == 5)
      {
        if (*(a2 + 16))
        {
          v17 = 4;
        }

        else
        {
          v17 = 0;
        }

        if (((v5 >> 60) & 3 | v17) == 5)
        {
          sub_1C6E00CBC(*a2, *(a2 + 8), v7);
          sub_1C6E00CBC(v3, v2, v4);
          v11 = sub_1C6E6B56C(v3, v2 & 0xCFFFFFFFFFFFFFFFLL, v6, v5 & 0xCFFFFFFFFFFFFFFFLL);
          goto LABEL_34;
        }

        goto LABEL_84;
      }

      if (*(a2 + 16))
      {
        v34 = 4;
      }

      else
      {
        v34 = 0;
      }

      if (((v5 >> 60) & 3 | v34) == 6 && v6 == 0 && v5 == 0x2000000000000000)
      {
        sub_1C6E00C60(*result, v2, v4);
        v32 = 0;
        v33 = 0x2000000000000000;
        goto LABEL_86;
      }
    }

    else
    {
      if (v9 == 3)
      {
        if (*(a2 + 16))
        {
          v10 = 4;
        }

        else
        {
          v10 = 0;
        }

        if (((v5 >> 60) & 3 | v10) == 3)
        {
          sub_1C6E00CBC(*a2, *(a2 + 8), v7);
          sub_1C6E00CBC(v3, v2, v4);
          v11 = sub_1C6E597C0(v3, v6);
LABEL_34:
          v18 = v11;
          sub_1C6E00C60(v3, v2, v4);
          sub_1C6E00C60(v6, v5, v7);
          return v18 & 1;
        }

        goto LABEL_84;
      }

      if (*(a2 + 16))
      {
        v29 = 4;
      }

      else
      {
        v29 = 0;
      }

      if (((v5 >> 60) & 3 | v29) == 4)
      {
        v30 = *(v3 + 16);
        if (v30 == *(v6 + 16))
        {
          if (v30)
          {
            v31 = v3 == v6;
          }

          else
          {
            v31 = 1;
          }

          if (!v31)
          {
            v37 = (v3 + 32);
            v38 = (v6 + 32);
            while (v30)
            {
              if (*v37 != *v38)
              {
                goto LABEL_84;
              }

              ++v37;
              ++v38;
              if (!--v30)
              {
                goto LABEL_73;
              }
            }

            goto LABEL_93;
          }

          goto LABEL_73;
        }
      }
    }

LABEL_84:
    sub_1C6E00CBC(*a2, *(a2 + 8), v7);
    sub_1C6E00CBC(v3, v2, v4);
    sub_1C6E00C60(v3, v2, v4);
    sub_1C6E00C60(v6, v5, v7);
    return 0;
  }

  if (!v9)
  {
    if (*(a2 + 16))
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    if ((v5 >> 60) & 3 | v19)
    {
      goto LABEL_84;
    }

    v20 = *(v3 + 16);
    if (v20 != *(v6 + 16))
    {
      goto LABEL_84;
    }

    if (v20)
    {
      v21 = v3 == v6;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = (v3 + 32);
      v23 = (v6 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_84;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_94;
    }

    goto LABEL_73;
  }

  if (v9 != 1)
  {
    if (*(a2 + 16))
    {
      v24 = 4;
    }

    else
    {
      v24 = 0;
    }

    if (((v5 >> 60) & 3 | v24) != 2)
    {
      goto LABEL_84;
    }

    v25 = *(v3 + 16);
    if (v25 != *(v6 + 16))
    {
      goto LABEL_84;
    }

    if (v25)
    {
      v26 = v3 == v6;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v27 = (v3 + 32);
      v28 = (v6 + 32);
      while (v25)
      {
        if (*v27 != *v28)
        {
          goto LABEL_84;
        }

        ++v27;
        ++v28;
        if (!--v25)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_92;
    }

LABEL_73:
    sub_1C6E00CBC(*a2, *(a2 + 8), v7);
    sub_1C6E00CBC(v3, v2, v4);
    sub_1C6E00C60(v3, v2, v4);
    v32 = v6;
    v33 = v5;
LABEL_86:
    sub_1C6E00C60(v32, v33, v7);
    return 1;
  }

  if (*(a2 + 16))
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  if (((v5 >> 60) & 3 | v12) != 1)
  {
    goto LABEL_84;
  }

  v13 = *(v3 + 16);
  if (v13 != *(v6 + 16))
  {
    goto LABEL_84;
  }

  if (v13)
  {
    v14 = v3 == v6;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_73;
  }

  v15 = (v3 + 32);
  v16 = (v6 + 32);
  while (v13)
  {
    if (*v15 != *v16)
    {
      goto LABEL_84;
    }

    ++v15;
    ++v16;
    if (!--v13)
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

unint64_t sub_1C6E16018()
{
  result = qword_1EC1F78B8;
  if (!qword_1EC1F78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78B8);
  }

  return result;
}

unint64_t sub_1C6E1606C()
{
  result = qword_1EC1F78C0;
  if (!qword_1EC1F78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78C0);
  }

  return result;
}

unint64_t sub_1C6E160C0()
{
  result = qword_1EDEF61D0;
  if (!qword_1EDEF61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF61D0);
  }

  return result;
}

unint64_t sub_1C6E16114()
{
  result = qword_1EC1F78C8;
  if (!qword_1EC1F78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78C8);
  }

  return result;
}

unint64_t sub_1C6E16168()
{
  result = qword_1EC1F78D8;
  if (!qword_1EC1F78D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F78D0, &qword_1C6EE6BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78D8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C6E1622C()
{
  result = qword_1EC1F78E0;
  if (!qword_1EC1F78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78E0);
  }

  return result;
}

unint64_t sub_1C6E16280()
{
  result = qword_1EC1F78F8;
  if (!qword_1EC1F78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78F8);
  }

  return result;
}

unint64_t sub_1C6E162D4()
{
  result = qword_1EC1F7908;
  if (!qword_1EC1F7908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7900, &qword_1C6EE6BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7908);
  }

  return result;
}

unint64_t sub_1C6E16350()
{
  result = qword_1EC1F7910;
  if (!qword_1EC1F7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7910);
  }

  return result;
}

unint64_t sub_1C6E163A4()
{
  result = qword_1EC1F7920;
  if (!qword_1EC1F7920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7920);
  }

  return result;
}

unint64_t sub_1C6E16420()
{
  result = qword_1EC1F7928;
  if (!qword_1EC1F7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7928);
  }

  return result;
}

unint64_t sub_1C6E16474()
{
  result = qword_1EC1F7938;
  if (!qword_1EC1F7938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7930, &qword_1C6EE6BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7938);
  }

  return result;
}

unint64_t sub_1C6E164F0()
{
  result = qword_1EC1F7940;
  if (!qword_1EC1F7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7940);
  }

  return result;
}

unint64_t sub_1C6E16544()
{
  result = qword_1EC1F7990;
  if (!qword_1EC1F7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7990);
  }

  return result;
}

unint64_t sub_1C6E16598()
{
  result = qword_1EC1F7998;
  if (!qword_1EC1F7998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F78D0, &qword_1C6EE6BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7998);
  }

  return result;
}

uint64_t sub_1C6E16614(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F78E8, &qword_1C6EE6BC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6E1668C()
{
  result = qword_1EC1F79A8;
  if (!qword_1EC1F79A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7900, &qword_1C6EE6BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79A8);
  }

  return result;
}

unint64_t sub_1C6E16708()
{
  result = qword_1EC1F79B0;
  if (!qword_1EC1F79B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79B0);
  }

  return result;
}

unint64_t sub_1C6E16784()
{
  result = qword_1EC1F79B8;
  if (!qword_1EC1F79B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7930, &qword_1C6EE6BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79B8);
  }

  return result;
}

unint64_t sub_1C6E16800()
{
  result = qword_1EC1F79C0;
  if (!qword_1EC1F79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79C0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_1C6E168E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3233746E69 && a2 == 0xE500000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365747962 && a2 == 0xE500000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x363174616F6C66 && a2 == 0xE700000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5F363174616F6C66 && a2 == 0xEE0079636167656CLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1C6EE54B0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1C6E16B24(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AE8, &qword_1C6EE7948);
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v62 = &v43[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AF0, &qword_1C6EE7950);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v43[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AF8, &qword_1C6EE7958);
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v43[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B00, &qword_1C6EE7960);
  v10 = *(v9 - 8);
  v52 = v9;
  v53 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v43[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B08, &qword_1C6EE7968);
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v43[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B10, &qword_1C6EE7970);
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B18, &qword_1C6EE7978);
  v47 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B20, &qword_1C6EE7980);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v43[-v22];
  v24 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v24);
  sub_1C6E18658();
  v25 = v66;
  sub_1C6EE55B0();
  if (v25)
  {
    goto LABEL_18;
  }

  v45 = v17;
  v26 = v63;
  v27 = v64;
  v46 = v21;
  v66 = v23;
  v28 = sub_1C6EE53E0();
  if (*(v28 + 16) != 1 || (v29 = *(v28 + 32), v29 == 7))
  {
    v33 = sub_1C6EE5210();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7988, &unk_1C6EE6C20);
    *v35 = &type metadata for Feature.DataType;
    v36 = v66;
    sub_1C6EE5380();
    sub_1C6EE5200();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v46 + 8))(v36, v20);
    swift_unknownObjectRelease();
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    return 0;
  }

  v44 = *(v28 + 32);
  if (v29 <= 2)
  {
    if (v29)
    {
      if (v29 == 1)
      {
        v68 = 1;
        sub_1C6E18850();
        v37 = v66;
        sub_1C6EE5370();
        (*(v48 + 8))(v16, v49);
      }

      else
      {
        v69 = 2;
        sub_1C6E187FC();
        v37 = v66;
        sub_1C6EE5370();
        (*(v50 + 8))(v26, v51);
      }
    }

    else
    {
      v67 = 0;
      sub_1C6E188A4();
      v37 = v66;
      sub_1C6EE5370();
      (*(v47 + 8))(v19, v45);
    }

    (*(v46 + 8))(v37, v20);
  }

  else if (v29 > 4)
  {
    v38 = v46;
    if (v29 == 5)
    {
      v72 = 5;
      sub_1C6E18700();
      v39 = v66;
      sub_1C6EE5370();
      (*(v56 + 8))(v27, v57);
    }

    else
    {
      v73 = 6;
      sub_1C6E186AC();
      v41 = v62;
      v39 = v66;
      sub_1C6EE5370();
      (*(v58 + 8))(v41, v59);
    }

    (*(v38 + 8))(v39, v20);
  }

  else
  {
    v30 = v46;
    if (v29 == 3)
    {
      v70 = 3;
      sub_1C6E187A8();
      v31 = v60;
      v32 = v66;
      sub_1C6EE5370();
      (*(v53 + 8))(v31, v52);
    }

    else
    {
      v71 = 4;
      sub_1C6E18754();
      v40 = v61;
      v32 = v66;
      sub_1C6EE5370();
      (*(v55 + 8))(v40, v54);
    }

    (*(v30 + 8))(v32, v20);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  return v44;
}

uint64_t sub_1C6E17434(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73694C74616F6C66 && a2 == 0xE900000000000074 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73694C3233746E69 && a2 == 0xE900000000000074 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73694C3436746E69 && a2 == 0xE900000000000074 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73694C7365747962 && a2 == 0xE900000000000074 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C363174616F6C66 && a2 == 0xEB00000000747369 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C6EF7DF0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1C6EE54B0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1C6E17698()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(v0 + 8) >> 60) & 3 | v1;
  if (v2 <= 2)
  {
    v4 = 1025;
    if (v2 != 1)
    {
      v4 = 1026;
    }

    if (v2)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1027;
    }

    goto LABEL_18;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      v5 = 1030;
    }

    else
    {
      v5 = 1024;
    }

    goto LABEL_18;
  }

  if (v2 != 3)
  {
    v5 = 1029;
LABEL_18:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    v7 = 3;
    goto LABEL_19;
  }

  if (*(*v0 + 16))
  {
    return *(*v0 + 32);
  }

  sub_1C6E16800();
  swift_allocError();
  *v6 = 0;
  *(v6 + 8) = 0;
  v7 = 4;
LABEL_19:
  *(v6 + 16) = v7;
  return swift_willThrow();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph7FeatureO(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 60) & 3 | (4 * (*(a1 + 16) & 1));
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C6E177F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FA && *(a1 + 17))
  {
    return (*a1 + 1018);
  }

  v3 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
  if (v3 >= 0x3F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6E17844(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 16) = 0;
    *result = a2 - 1018;
    *(result + 8) = 0;
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1C6E178A4(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 16) = a2 > 3;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0x2000000000000000;
    *(result + 16) = 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph7FeatureO6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1C6E178F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6E17940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6E17988(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C6E17A80(unsigned int *a1, int a2)
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

_WORD *sub_1C6E17AD0(_WORD *result, int a2, int a3)
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

unint64_t sub_1C6E17B70()
{
  result = qword_1EC1F79E0;
  if (!qword_1EC1F79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79E0);
  }

  return result;
}

unint64_t sub_1C6E17BC8()
{
  result = qword_1EC1F79E8;
  if (!qword_1EC1F79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79E8);
  }

  return result;
}

unint64_t sub_1C6E17C20()
{
  result = qword_1EC1F79F0;
  if (!qword_1EC1F79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79F0);
  }

  return result;
}

unint64_t sub_1C6E17C78()
{
  result = qword_1EC1F79F8;
  if (!qword_1EC1F79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79F8);
  }

  return result;
}

unint64_t sub_1C6E17CD0()
{
  result = qword_1EC1F7A00;
  if (!qword_1EC1F7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A00);
  }

  return result;
}

unint64_t sub_1C6E17D28()
{
  result = qword_1EC1F7A08;
  if (!qword_1EC1F7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A08);
  }

  return result;
}

unint64_t sub_1C6E17D80()
{
  result = qword_1EC1F7A10;
  if (!qword_1EC1F7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A10);
  }

  return result;
}

unint64_t sub_1C6E17DD8()
{
  result = qword_1EC1F7A18;
  if (!qword_1EC1F7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A18);
  }

  return result;
}

unint64_t sub_1C6E17E30()
{
  result = qword_1EC1F7A20;
  if (!qword_1EC1F7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A20);
  }

  return result;
}

unint64_t sub_1C6E17E88()
{
  result = qword_1EC1F7A28;
  if (!qword_1EC1F7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A28);
  }

  return result;
}

unint64_t sub_1C6E17EE0()
{
  result = qword_1EC1F7A30;
  if (!qword_1EC1F7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A30);
  }

  return result;
}

unint64_t sub_1C6E17F38()
{
  result = qword_1EC1F7A38;
  if (!qword_1EC1F7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A38);
  }

  return result;
}

unint64_t sub_1C6E17F90()
{
  result = qword_1EC1F7A40;
  if (!qword_1EC1F7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A40);
  }

  return result;
}

unint64_t sub_1C6E17FE8()
{
  result = qword_1EC1F7A48;
  if (!qword_1EC1F7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A48);
  }

  return result;
}

unint64_t sub_1C6E18040()
{
  result = qword_1EC1F7A50;
  if (!qword_1EC1F7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A50);
  }

  return result;
}

unint64_t sub_1C6E18098()
{
  result = qword_1EC1F7A58;
  if (!qword_1EC1F7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A58);
  }

  return result;
}

unint64_t sub_1C6E180F0()
{
  result = qword_1EC1F7A60;
  if (!qword_1EC1F7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A60);
  }

  return result;
}

unint64_t sub_1C6E18148()
{
  result = qword_1EC1F7A68;
  if (!qword_1EC1F7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A68);
  }

  return result;
}

unint64_t sub_1C6E181A0()
{
  result = qword_1EC1F7A70;
  if (!qword_1EC1F7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A70);
  }

  return result;
}

unint64_t sub_1C6E181F8()
{
  result = qword_1EC1F7A78;
  if (!qword_1EC1F7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A78);
  }

  return result;
}

unint64_t sub_1C6E18250()
{
  result = qword_1EC1F7A80;
  if (!qword_1EC1F7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A80);
  }

  return result;
}

unint64_t sub_1C6E182A8()
{
  result = qword_1EC1F7A88;
  if (!qword_1EC1F7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A88);
  }

  return result;
}

unint64_t sub_1C6E18300()
{
  result = qword_1EC1F7A90;
  if (!qword_1EC1F7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A90);
  }

  return result;
}

uint64_t sub_1C6E18354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E183C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E1842C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E1848C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6E184F4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1C6E1853C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E185A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1C6E18604()
{
  result = qword_1EC1F7AE0;
  if (!qword_1EC1F7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7AE0);
  }

  return result;
}

unint64_t sub_1C6E18658()
{
  result = qword_1EC1F7B28;
  if (!qword_1EC1F7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B28);
  }

  return result;
}

unint64_t sub_1C6E186AC()
{
  result = qword_1EC1F7B30;
  if (!qword_1EC1F7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B30);
  }

  return result;
}

unint64_t sub_1C6E18700()
{
  result = qword_1EC1F7B38;
  if (!qword_1EC1F7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B38);
  }

  return result;
}

unint64_t sub_1C6E18754()
{
  result = qword_1EC1F7B40;
  if (!qword_1EC1F7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B40);
  }

  return result;
}

unint64_t sub_1C6E187A8()
{
  result = qword_1EC1F7B48;
  if (!qword_1EC1F7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B48);
  }

  return result;
}

unint64_t sub_1C6E187FC()
{
  result = qword_1EC1F7B50;
  if (!qword_1EC1F7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B50);
  }

  return result;
}

unint64_t sub_1C6E18850()
{
  result = qword_1EC1F7B58;
  if (!qword_1EC1F7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B58);
  }

  return result;
}

unint64_t sub_1C6E188A4()
{
  result = qword_1EC1F7B60;
  if (!qword_1EC1F7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B60);
  }

  return result;
}

uint64_t sub_1C6E188F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C6E18988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6E18AC0()
{
  result = qword_1EC1F7BA8;
  if (!qword_1EC1F7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BA8);
  }

  return result;
}

unint64_t sub_1C6E18B18()
{
  result = qword_1EC1F7BB0;
  if (!qword_1EC1F7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BB0);
  }

  return result;
}

unint64_t sub_1C6E18B70()
{
  result = qword_1EC1F7BB8;
  if (!qword_1EC1F7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BB8);
  }

  return result;
}

unint64_t sub_1C6E18BC8()
{
  result = qword_1EC1F7BC0;
  if (!qword_1EC1F7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BC0);
  }

  return result;
}

unint64_t sub_1C6E18C20()
{
  result = qword_1EC1F7BC8;
  if (!qword_1EC1F7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BC8);
  }

  return result;
}

unint64_t sub_1C6E18C78()
{
  result = qword_1EC1F7BD0;
  if (!qword_1EC1F7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BD0);
  }

  return result;
}

unint64_t sub_1C6E18CD0()
{
  result = qword_1EC1F7BD8;
  if (!qword_1EC1F7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BD8);
  }

  return result;
}

unint64_t sub_1C6E18D28()
{
  result = qword_1EC1F7BE0;
  if (!qword_1EC1F7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BE0);
  }

  return result;
}

unint64_t sub_1C6E18D80()
{
  result = qword_1EC1F7BE8;
  if (!qword_1EC1F7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BE8);
  }

  return result;
}

unint64_t sub_1C6E18DD8()
{
  result = qword_1EC1F7BF0;
  if (!qword_1EC1F7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BF0);
  }

  return result;
}

unint64_t sub_1C6E18E30()
{
  result = qword_1EC1F7BF8;
  if (!qword_1EC1F7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BF8);
  }

  return result;
}

unint64_t sub_1C6E18E88()
{
  result = qword_1EC1F7C00;
  if (!qword_1EC1F7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C00);
  }

  return result;
}

unint64_t sub_1C6E18EE0()
{
  result = qword_1EC1F7C08;
  if (!qword_1EC1F7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C08);
  }

  return result;
}

unint64_t sub_1C6E18F38()
{
  result = qword_1EC1F7C10;
  if (!qword_1EC1F7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C10);
  }

  return result;
}

unint64_t sub_1C6E18F90()
{
  result = qword_1EC1F7C18;
  if (!qword_1EC1F7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C18);
  }

  return result;
}

unint64_t sub_1C6E18FE8()
{
  result = qword_1EC1F7C20;
  if (!qword_1EC1F7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C20);
  }

  return result;
}

unint64_t sub_1C6E19040()
{
  result = qword_1EC1F7C28;
  if (!qword_1EC1F7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C28);
  }

  return result;
}

uint64_t sub_1C6E191F4(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_1C6E1E694(v5, v7) & 1;
}

uint64_t sub_1C6E19240(char *a1, void *a2)
{
  v5 = sub_1C6EE42F0();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0);
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C30, &qword_1C6EEC710);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v70 - v14;
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0) - 8;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v81 = &v70 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v70 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v27 = *a2;
  if (*(*a2 + 16) == 1)
  {
    v79 = a1;
    v74 = v2;
    v28 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v29 = &v70 - v26;
    sub_1C6E1EAFC(v27 + v28, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    sub_1C6E1EC68(v24, v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    v30 = a2[1];
    if (*(v30 + 16) == 1)
    {
      v75 = v29;
      sub_1C6E1EAFC(v30 + v28, v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v31 = v81;
      sub_1C6E1EC68(v19, v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v32 = *(v31 + 16);
      if (*(v32 + 16) == 1)
      {
        v33 = *(v75 + 3);
        v34 = v75[32];
        v35 = *(v31 + 24);
        v36 = *(v31 + 32);
        v71 = *(v32 + 32);
        v72 = v35;
        v73 = v36;
        if (sub_1C6E6F844(v33, v34, v35))
        {
          v70 = v34;
          v72 = v33;
          v37 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec(0);
          v38 = v79;
          v73 = *(v37 + 20);
          sub_1C6E1E460(&v79[v73], v15, &qword_1EC1F7C30, &qword_1C6EEC710);
          v39 = *(v80 + 48);
          v40 = v39(v15, 1, v7);
          sub_1C6E1ED14(v15, &qword_1EC1F7C30, &qword_1C6EEC710);
          if (v40 == 1)
          {
            goto LABEL_18;
          }

          sub_1C6E1E460(&v38[v73], v13, &qword_1EC1F7C30, &qword_1C6EEC710);
          if (v39(v13, 1, v7) == 1)
          {
            *v9 = xmmword_1C6EE7FC0;
            v9[16] = -1;
            sub_1C6EE4420();
            if (v39(v13, 1, v7) != 1)
            {
              sub_1C6E1ED14(v13, &qword_1EC1F7C30, &qword_1C6EEC710);
            }
          }

          else
          {
            sub_1C6E1EC68(v13, v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
          }

          v51 = *v9;
          v50 = *(v9 + 1);
          v52 = v9[16];
          sub_1C6E1E3E0(*v9, v50, v9[16]);
          sub_1C6E1EC08(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
          if ((~v50 & 0x3000000000000000) == 0 && v52 == 255)
          {
LABEL_18:
            sub_1C6E1E38C();
            swift_allocError();
            *v54 = 0u;
            *(v54 + 16) = 0u;
            *(v54 + 32) = -64;
            swift_willThrow();
            v55 = v38;
          }

          else
          {
            v56 = v52 & 1;
            v57 = v72;
            v58 = v70;
            if (sub_1C6E19C60(v72, v70, v53, v50, v52 & 1))
            {
              if (sub_1C6E19CB8(v51, v50, v52 & 1))
              {
                v46 = v82;
                sub_1C6E1EAFC(v75, v82 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
                v59 = v46 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
                v60 = v81;
                sub_1C6E1EAFC(v81, v46 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
                v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
                *(v59 + *(v61 + 48)) = v71;
                v62 = v46 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue;
                *v62 = v51;
                *(v62 + 8) = v50;
                *(v62 + 16) = v52 & 1;
                sub_1C6E1E408(v51, v50);
                v63 = v76;
                sub_1C6EE42E0();
                v80 = sub_1C6EE42D0();
                v65 = v64;
                sub_1C6E1E420(v51, v50, v52);
                sub_1C6E1EC08(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);
                (*(v77 + 8))(v63, v78);
                sub_1C6E1EC08(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
                sub_1C6E1EC08(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
                sub_1C6E1EAFC(a2, v46 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
                v66 = OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy;
                v67 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
                (*(*(v67 - 8) + 56))(v46 + v66, 1, 1, v67);
                *(v46 + 16) = v80;
                *(v46 + 24) = v65;
                sub_1C6E1EC08(a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
                return v46;
              }

              sub_1C6E1E38C();
              swift_allocError();
              *v69 = v51;
              *(v69 + 8) = v50;
              *(v69 + 16) = v56;
              *(v69 + 24) = 0;
              *(v69 + 32) = 0;
            }

            else
            {
              sub_1C6E1E38C();
              swift_allocError();
              *v68 = v57;
              *(v68 + 8) = v58;
              *(v68 + 16) = v51;
              *(v68 + 24) = v50;
              *(v68 + 32) = v56 | 0x80;
            }

            swift_willThrow();
            v55 = v79;
          }

          sub_1C6E1EC08(v55, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);
          sub_1C6E1EC08(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v43 = v81;
        }

        else
        {
          sub_1C6E1E38C();
          swift_allocError();
          *v48 = v33;
          *(v48 + 8) = v34;
          v49 = v73;
          *(v48 + 16) = v72;
          *(v48 + 24) = v49;
          *(v48 + 32) = 64;
          swift_willThrow();
          sub_1C6E1EC08(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);
          sub_1C6E1EC08(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v43 = v31;
        }

        v42 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO;
      }

      else
      {
        sub_1C6E0E478();
        swift_allocError();
        *v45 = 1;
        swift_willThrow();
        sub_1C6E1EC08(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);
        sub_1C6E1EC08(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        v43 = v31;
        v42 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO;
      }
    }

    else
    {
      sub_1C6E0E478();
      swift_allocError();
      *v44 = 0;
      swift_willThrow();
      sub_1C6E1EC08(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);
      v42 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO;
      v43 = v29;
    }
  }

  else
  {
    sub_1C6E0E478();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
    v42 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec;
    v43 = a1;
  }

  sub_1C6E1EC08(v43, v42);
  sub_1C6E1EC08(a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  type metadata accessor for FeaturePreprocessingContainer(0);
  v46 = v82;
  swift_deallocPartialClassInstance();
  return v46;
}

BOOL sub_1C6E19C60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v5 = (a4 >> 60) & 3 | (4 * (a5 & 1));
  v6 = a1 == 2;
  v7 = a1 == 3;
  if (v5 != 3)
  {
    v7 = a1 == 6;
  }

  if (v5 != 2)
  {
    v6 = v7;
  }

  v8 = a1 == 7;
  v10 = a1 == 4 || a1 == 5;
  if (v5)
  {
    v8 = v10;
  }

  if (v5 <= 1)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

BOOL sub_1C6E19CB8(_BOOL8 result, unint64_t a2, char a3)
{
  v3 = (a2 >> 60) & 3 | (4 * (a3 & 1));
  if ((v3 - 1) < 3)
  {
    return 1;
  }

  if (v3)
  {
    v5 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      v6 = v5 == 0;
      if (v5)
      {
        v7 = result >> 32;
      }

      else
      {
        v7 = BYTE6(a2);
      }

      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = result;
      }

      return v8 != v7;
    }

LABEL_18:
    if (v5 == 2)
    {
      v8 = *(result + 16);
      v7 = *(result + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    return v8 != v7;
  }

  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      return v5 == 2;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    v11 = __OFSUB__(v9, v10);
    v5 = v9 - v10;
    if (!v11)
    {
      return v5 == 2;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!v4)
  {
    v5 = BYTE6(a2);
    return v5 == 2;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    return v5 == 2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C6E19D7C(unint64_t a1)
{
  v2 = sub_1C6EE4760();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6EE4790();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDEF8F88;
  sub_1C6EE4770();
  sub_1C6EE4780();
  sub_1C6EE4740();
  v9 = swift_slowAlloc();
  *v9 = 0;
  v10 = sub_1C6EE4780();
  v11 = sub_1C6EE4F80();
  v12 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v10, v11, v12, "FeaturePreprocessingContainer.doCall", "", v9, 2u);
  sub_1C6E19FFC(a1, v17[1], &v22);
  v13 = sub_1C6EE4F70();
  v14 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v10, v13, v14, "FeaturePreprocessingContainer.doCall", "", v9, 2u);

  v15 = v22;
  MEMORY[0x1CCA59290](v9, -1, -1);
  (*(v20 + 8))(v4, v21);
  (*(v18 + 8))(v7, v19);
  return v15;
}

uint64_t sub_1C6E19FFC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v82 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = (&v78 - v6);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v78 - v12;
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v78 - v18;
  if (!*(a1 + 16) || (v19 = a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input, v20 = *(a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input + 8), v78 = *(a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input), v79 = v20, v21 = sub_1C6DEC784(v78, v20), (v22 & 1) == 0))
  {
    *v82 = a1;
  }

  v23 = *(a1 + 56) + 24 * v21;
  v24 = *(v23 + 16);
  v84 = *v23;
  v85 = v24;
  sub_1C6E0F330(v17);
  v25 = v81;
  sub_1C6E1EC68(v17, v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  sub_1C6E1E460(v25, v13, &qword_1EC1F7A98, &qword_1C6EE7840);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_1C6E1ED14(v13, &qword_1EC1F7A98, &qword_1C6EE7840);
    LOBYTE(v26) = 0;
    LOBYTE(v27) = 0;
    LOBYTE(v28) = 6;
  }

  else
  {
    sub_1C6E1EAFC(v13, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1C6E1EC08(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6E1EC08(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v26 = 0x10u >> EnumCaseMultiPayload;
    v27 = 8u >> EnumCaseMultiPayload;
    v28 = 0x403010002uLL >> (8 * EnumCaseMultiPayload);
  }

  v31 = *(v19 + 24);
  v32 = *(v19 + 32);
  if (v32 != 1)
  {
    goto LABEL_26;
  }

  if (v31 <= 3)
  {
    if (v31 < 2)
    {
      goto LABEL_26;
    }

    v33 = v31 != 2;
    goto LABEL_17;
  }

  if (v31 <= 5)
  {
    if (v31 != 4)
    {
      goto LABEL_26;
    }

    v33 = 2;
LABEL_17:
    if (v33 == v28)
    {
      goto LABEL_18;
    }

LABEL_26:
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v46 = qword_1EDEF8F88;
    v47 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1C6EE65B0;
    v49 = MEMORY[0x1E69E6158];
    *(v48 + 56) = MEMORY[0x1E69E6158];
    v50 = sub_1C6DF10E0();
    *(v48 + 64) = v50;
    v51 = v79;
    *(v48 + 32) = v78;
    *(v48 + 40) = v51;
    LOBYTE(v84) = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C48, &qword_1C6EE8018);
    v52 = sub_1C6EE4AF0();
    *(v48 + 96) = v49;
    *(v48 + 104) = v50;
    *(v48 + 72) = v52;
    *(v48 + 80) = v53;
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    v54 = 0x403050201000505uLL >> (8 * v31);
    if (!v32)
    {
      LOBYTE(v54) = 5;
    }

    v83 = v54;
    sub_1C6EE52F0();
    v55 = v84;
    *(v48 + 136) = v49;
    *(v48 + 144) = v50;
    *(v48 + 112) = v55;
    sub_1C6EE4730("Observed input feature %{public}@ with dType %{public}@ but expected dType %{public}@", 85, 2, &dword_1C6DE9000, v46, v47, v48);

    result = sub_1C6E1EC08(v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    *v82 = MEMORY[0x1E69E7CC8];
    return result;
  }

  if (v31 != 6)
  {
    if (v26)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  if ((v27 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  v34 = a2;
  v35 = a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue;
  v36 = *(a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue);
  v37 = *(a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue + 8);
  if (*(v35 + 16))
  {
    v38 = 4;
  }

  else
  {
    v38 = 0;
  }

  v39 = (v37 >> 60) & 3 | v38;
  if (v39 > 1)
  {
    if (v39 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C6EE6590;
      v62 = v80;
      sub_1C6E1E460(v34 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v80, &qword_1EC1F7C40, &qword_1C6EE8010);
      v64 = *v62;
      v63 = v62[1];

      sub_1C6E1EC08(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      *(inited + 32) = v64;
      v44 = inited + 32;
      *(inited + 40) = v63;
      v45 = v81;
      sub_1C6E1A9AC(v81, v34, v36, (inited + 48));
      goto LABEL_34;
    }

    if (v39 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C6EE6590;
      v41 = v80;
      sub_1C6E1E460(v34 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v80, &qword_1EC1F7C40, &qword_1C6EE8010);
      v43 = *v41;
      v42 = v41[1];

      sub_1C6E1EC08(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      *(inited + 32) = v43;
      v44 = inited + 32;
      *(inited + 40) = v42;
      v45 = v81;
      sub_1C6E1B484(v81, v34, v36, (inited + 48));
LABEL_34:
      v65 = sub_1C6E0BC8C(inited);
      swift_setDeallocating();
      sub_1C6E1ED14(v44, &qword_1EC1F7C58, &qword_1C6EF6BC0);
      result = sub_1C6E1EC08(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      *v82 = v65;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_1C6EE6590;
    v66 = v80;
    sub_1C6E1E460(v34 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v80, &qword_1EC1F7C40, &qword_1C6EE8010);
    v68 = *v66;
    v67 = v66[1];
    sub_1C6E1E408(v36, v37);

    sub_1C6E1EC08(v66, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    *(v56 + 32) = v68;
    v60 = v56 + 32;
    *(v56 + 40) = v67;
    v61 = v81;
    sub_1C6E1CA08(v81, v34, v36, v37, (v56 + 48));
    goto LABEL_36;
  }

  if (!v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_1C6EE6590;
    v57 = v80;
    sub_1C6E1E460(v34 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v80, &qword_1EC1F7C40, &qword_1C6EE8010);
    v59 = *v57;
    v58 = v57[1];
    sub_1C6E1E408(v36, v37);

    sub_1C6E1EC08(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    *(v56 + 32) = v59;
    v60 = v56 + 32;
    *(v56 + 40) = v58;
    v61 = v81;
    sub_1C6E1D494(v81, v34, v36, v37, (v56 + 48));
LABEL_36:
    v69 = sub_1C6E0BC8C(v56);
    swift_setDeallocating();
    sub_1C6E1ED14(v60, &qword_1EC1F7C58, &qword_1C6EF6BC0);
    sub_1C6E1E448(v36, v37);
    result = sub_1C6E1EC08(v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    *v82 = v69;
    return result;
  }

  v70 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_1C6EE6590;
  v72 = v80;
  sub_1C6E1E460(v34 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v80, &qword_1EC1F7C40, &qword_1C6EE8010);
  v74 = *v72;
  v73 = v72[1];

  sub_1C6E1EC08(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  *(v71 + 32) = v74;
  *(v71 + 40) = v73;
  v75 = v81;
  v76.n128_u32[0] = v70;
  sub_1C6E1BF5C(v81, v34, v71 + 48, v76);
  v77 = sub_1C6E0BC8C(v71);
  swift_setDeallocating();
  sub_1C6E1ED14(v71 + 32, &qword_1EC1F7C58, &qword_1C6EF6BC0);
  result = sub_1C6E1EC08(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  *v82 = v77;
  return result;
}

uint64_t sub_1C6E1A9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v90 = a2;
  v84 = a4;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  v8 = MEMORY[0x1EEE9AC00](v89);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v78 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v79 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v78 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v82 = &v78 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - v23;
  v88 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v25 = MEMORY[0x1EEE9AC00](v88);
  v78 = (&v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v78 - v28);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v81 = &v78 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v78 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = (&v78 - v35);
  v85 = a1;
  sub_1C6E1E460(a1, v24, &qword_1EC1F7A98, &qword_1C6EE7840);
  v37 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v86 = v38 + 48;
  v87 = v39;
  if (v39(v24, 1, v37) == 1)
  {
    sub_1C6E1ED14(v24, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C6E1EC68(v24, v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      goto LABEL_7;
    }

    sub_1C6E1EC08(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v36 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
LABEL_7:
  v40 = *v36;

  sub_1C6E1EC08(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  v41 = *(v40 + 16);

  v42 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
  sub_1C6E1E460(v90 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v11, &qword_1EC1F7C40, &qword_1C6EE8010);
  v43 = *&v11[*(v89 + 48)];
  sub_1C6E1EC08(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v41 < v43)
  {
    v44 = v85;
    sub_1C6E1E460(v85, v22, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v87(v22, 1, v37) == 1)
    {
      sub_1C6E1ED14(v22, &qword_1EC1F7A98, &qword_1C6EE7840);
      v45 = v83;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v45 = v83;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1C6E1EC68(v22, v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
        goto LABEL_18;
      }

      sub_1C6E1EC08(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v34 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
LABEL_18:
    v48 = v81;
    v49 = *v34;

    sub_1C6E1EC08(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    sub_1C6E1E460(v90 + v42, v45, &qword_1EC1F7C40, &qword_1C6EE8010);
    v50 = *(v45 + *(v89 + 48));
    v51 = v82;
    sub_1C6E1E460(v44, v82, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v87(v51, 1, v37) == 1)
    {
      sub_1C6E1ED14(v51, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1C6E1EC68(v51, v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
LABEL_30:
        v58 = *v48;

        sub_1C6E1EC08(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
        v59 = *(v58 + 16);

        v60 = v50 - v59;
        if (__OFSUB__(v50, v59))
        {
          __break(1u);
        }

        else
        {
          sub_1C6E1EC08(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          if ((v60 & 0x8000000000000000) == 0)
          {
            if (v60)
            {
              v61 = sub_1C6EE4D00();
              *(v61 + 16) = v60;
              v62 = (v61 + 32);
              if (v60 > 7)
              {
                v63 = v60 & 0x7FFFFFFFFFFFFFF8;
                v62 += v60 & 0x7FFFFFFFFFFFFFF8;
                v64 = vdupq_n_s32(a3);
                v65 = (v61 + 48);
                v66 = v60 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v65[-1] = v64;
                  *v65 = v64;
                  v65 += 2;
                  v66 -= 8;
                }

                while (v66);
                if (v60 == v63)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v63 = 0;
              }

              v67 = v63 + v59 - v50;
              do
              {
                *v62++ = a3;
              }

              while (!__CFADD__(v67++, 1));
            }

            else
            {
              v61 = MEMORY[0x1E69E7CC0];
            }

LABEL_42:
            v91 = v49;
            result = sub_1C6ED1B98(v61);
            v69 = v84;
            *v84 = v91;
            v69[1] = 0x1000000000000000;
            *(v69 + 16) = 0;
            return result;
          }
        }

        __break(1u);
        goto LABEL_63;
      }

      sub_1C6E1EC08(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v48 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
    goto LABEL_30;
  }

  v46 = v85;
  sub_1C6E1E460(v85, v17, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v87(v17, 1, v37) == 1)
  {
    sub_1C6E1ED14(v17, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C6E1EC68(v17, v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      goto LABEL_24;
    }

    sub_1C6E1EC08(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v29 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
LABEL_24:
  v52 = *v29;

  sub_1C6E1EC08(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  v53 = *(v52 + 16);

  sub_1C6E1E460(v90 + v42, v11, &qword_1EC1F7C40, &qword_1C6EE8010);
  v54 = *&v11[*(v89 + 48)];
  sub_1C6E1EC08(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v54 >= v53)
  {
    v56 = v80;
    sub_1C6E1EAFC(v46, v80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    return sub_1C6E108D4(v56, v84);
  }

  v55 = v79;
  sub_1C6E1E460(v46, v79, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v87(v55, 1, v37) == 1)
  {
    sub_1C6E1ED14(v55, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v60 = v78;
      sub_1C6E1EC68(v55, v78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      goto LABEL_47;
    }

    sub_1C6E1EC08(v55, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v60 = v78;
  *v78 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
LABEL_47:
  v49 = *v60;

  sub_1C6E1EC08(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  sub_1C6E1E460(v90 + v42, v11, &qword_1EC1F7C40, &qword_1C6EE8010);
  v70 = *&v11[*(v89 + 48)];
  if ((v70 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    swift_unknownObjectRelease_n();
    sub_1C6EC8A98(v49, v49 + 32, 0, v60);
    v75 = v77;
    goto LABEL_58;
  }

  v71 = *(v49 + 16);
  if (v71 >= v70)
  {
    v71 = *&v11[*(v89 + 48)];
  }

  v72 = 2 * v71;
  if (v70)
  {
    v60 = v72 + 1;
  }

  else
  {
    v60 = 1;
  }

  sub_1C6E1EC08(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6EE54C0();
  swift_unknownObjectRetain_n();
  v73 = swift_dynamicCastClass();
  if (!v73)
  {
    swift_unknownObjectRelease();
    v73 = MEMORY[0x1E69E7CC0];
  }

  v74 = *(v73 + 16);

  if (v74 != v60 >> 1)
  {
    goto LABEL_64;
  }

  v75 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  if (!v75)
  {
    v75 = MEMORY[0x1E69E7CC0];
LABEL_58:
    result = swift_unknownObjectRelease();
  }

  v76 = v84;
  *v84 = v75;
  v76[1] = 0x1000000000000000;
  *(v76 + 16) = 0;
  return result;
}

uint64_t sub_1C6E1B484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v90 = a2;
  v84 = a4;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  v8 = MEMORY[0x1EEE9AC00](v89);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v78 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v79 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v78 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v82 = &v78 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - v23;
  v88 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v25 = MEMORY[0x1EEE9AC00](v88);
  v78 = (&v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v78 - v28);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v81 = &v78 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v78 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = (&v78 - v35);
  v85 = a1;
  sub_1C6E1E460(a1, v24, &qword_1EC1F7A98, &qword_1C6EE7840);
  v37 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v86 = v38 + 48;
  v87 = v39;
  if (v39(v24, 1, v37) == 1)
  {
    sub_1C6E1ED14(v24, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C6E1EC68(v24, v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      goto LABEL_7;
    }

    sub_1C6E1EC08(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v36 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
LABEL_7:
  v40 = *v36;

  sub_1C6E1EC08(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  v41 = *(v40 + 16);

  v42 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
  sub_1C6E1E460(v90 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v11, &qword_1EC1F7C40, &qword_1C6EE8010);
  v43 = *&v11[*(v89 + 48)];
  sub_1C6E1EC08(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v41 < v43)
  {
    v44 = v85;
    sub_1C6E1E460(v85, v22, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v87(v22, 1, v37) == 1)
    {
      sub_1C6E1ED14(v22, &qword_1EC1F7A98, &qword_1C6EE7840);
      v45 = v83;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v45 = v83;
      if (EnumCaseMultiPayload == 2)
      {
        sub_1C6E1EC68(v22, v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        goto LABEL_18;
      }

      sub_1C6E1EC08(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v34 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
LABEL_18:
    v48 = v81;
    v49 = *v34;

    sub_1C6E1EC08(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    sub_1C6E1E460(v90 + v42, v45, &qword_1EC1F7C40, &qword_1C6EE8010);
    v50 = *(v45 + *(v89 + 48));
    v51 = v82;
    sub_1C6E1E460(v44, v82, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v87(v51, 1, v37) == 1)
    {
      sub_1C6E1ED14(v51, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1C6E1EC68(v51, v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
LABEL_30:
        v58 = *v48;

        sub_1C6E1EC08(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v59 = *(v58 + 16);

        v60 = v50 - v59;
        if (__OFSUB__(v50, v59))
        {
          __break(1u);
        }

        else
        {
          sub_1C6E1EC08(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          if ((v60 & 0x8000000000000000) == 0)
          {
            if (v60)
            {
              v61 = sub_1C6EE4D00();
              *(v61 + 16) = v60;
              v62 = (v61 + 32);
              if (v60 > 3)
              {
                v63 = v60 & 0x7FFFFFFFFFFFFFFCLL;
                v62 += v60 & 0x7FFFFFFFFFFFFFFCLL;
                v64 = vdupq_n_s64(a3);
                v65 = (v61 + 48);
                v66 = v60 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v65[-1] = v64;
                  *v65 = v64;
                  v65 += 2;
                  v66 -= 4;
                }

                while (v66);
                if (v60 == v63)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v63 = 0;
              }

              v67 = v63 + v59 - v50;
              do
              {
                *v62++ = a3;
              }

              while (!__CFADD__(v67++, 1));
            }

            else
            {
              v61 = MEMORY[0x1E69E7CC0];
            }

LABEL_42:
            v91 = v49;
            result = sub_1C6ED1C84(v61);
            v69 = v84;
            *v84 = v91;
            v69[1] = 0x2000000000000000;
            *(v69 + 16) = 0;
            return result;
          }
        }

        __break(1u);
        goto LABEL_63;
      }

      sub_1C6E1EC08(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v48 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
    goto LABEL_30;
  }

  v46 = v85;
  sub_1C6E1E460(v85, v17, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v87(v17, 1, v37) == 1)
  {
    sub_1C6E1ED14(v17, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C6E1EC68(v17, v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      goto LABEL_24;
    }

    sub_1C6E1EC08(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v29 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
LABEL_24:
  v52 = *v29;

  sub_1C6E1EC08(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  v53 = *(v52 + 16);

  sub_1C6E1E460(v90 + v42, v11, &qword_1EC1F7C40, &qword_1C6EE8010);
  v54 = *&v11[*(v89 + 48)];
  sub_1C6E1EC08(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v54 >= v53)
  {
    v56 = v80;
    sub_1C6E1EAFC(v46, v80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    return sub_1C6E108D4(v56, v84);
  }

  v55 = v79;
  sub_1C6E1E460(v46, v79, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v87(v55, 1, v37) == 1)
  {
    sub_1C6E1ED14(v55, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v60 = v78;
      sub_1C6E1EC68(v55, v78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      goto LABEL_47;
    }

    sub_1C6E1EC08(v55, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v60 = v78;
  *v78 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
LABEL_47:
  v49 = *v60;

  sub_1C6E1EC08(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  sub_1C6E1E460(v90 + v42, v11, &qword_1EC1F7C40, &qword_1C6EE8010);
  v70 = *&v11[*(v89 + 48)];
  if ((v70 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    swift_unknownObjectRelease_n();
    sub_1C6EC8B68(v49, v49 + 32, 0, v60);
    v75 = v77;
    goto LABEL_58;
  }

  v71 = *(v49 + 16);
  if (v71 >= v70)
  {
    v71 = *&v11[*(v89 + 48)];
  }

  v72 = 2 * v71;
  if (v70)
  {
    v60 = v72 + 1;
  }

  else
  {
    v60 = 1;
  }

  sub_1C6E1EC08(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6EE54C0();
  swift_unknownObjectRetain_n();
  v73 = swift_dynamicCastClass();
  if (!v73)
  {
    swift_unknownObjectRelease();
    v73 = MEMORY[0x1E69E7CC0];
  }

  v74 = *(v73 + 16);

  if (v74 != v60 >> 1)
  {
    goto LABEL_64;
  }

  v75 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  if (!v75)
  {
    v75 = MEMORY[0x1E69E7CC0];
LABEL_58:
    result = swift_unknownObjectRelease();
  }

  v76 = v84;
  *v84 = v75;
  v76[1] = 0x2000000000000000;
  *(v76 + 16) = 0;
  return result;
}

uint64_t sub_1C6E1BF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v82 = a4;
  v91 = a2;
  v86 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v81 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  v7 = MEMORY[0x1EEE9AC00](v90);
  v85 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v78 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v84 = &v78 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v78 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v78 - v22;
  v24 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v79 = (&v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v78 - v28);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v83 = (&v78 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v78 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = (&v78 - v35);
  v87 = a1;
  sub_1C6E1E460(a1, v23, &qword_1EC1F7A98, &qword_1C6EE7840);
  v37 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v88 = v38 + 48;
  v89 = v39;
  if (v39(v23, 1, v37) == 1)
  {
    sub_1C6E1ED14(v23, &qword_1EC1F7A98, &qword_1C6EE7840);
LABEL_5:
    *v36 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6E1EC08(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_5;
  }

  sub_1C6E1EC68(v23, v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_6:
  v40 = *v36;

  sub_1C6E1EC08(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v41 = *(v40 + 16);

  v42 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
  sub_1C6E1E460(v91 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v10, &qword_1EC1F7C40, &qword_1C6EE8010);
  v43 = *&v10[*(v90 + 48)];
  sub_1C6E1EC08(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v41 >= v43)
  {
    sub_1C6E1E460(v87, v16, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v89(v16, 1, v37) == 1)
    {
      sub_1C6E1ED14(v16, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1C6E1EC68(v16, v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_19:
        v49 = *v29;

        sub_1C6E1EC08(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
        v50 = *(v49 + 16);

        sub_1C6E1E460(v91 + v42, v10, &qword_1EC1F7C40, &qword_1C6EE8010);
        v51 = *&v10[*(v90 + 48)];
        sub_1C6E1EC08(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if (v51 >= v50)
        {
          v61 = v81;
          sub_1C6E1EAFC(v87, v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
          return sub_1C6E108D4(v61, v86);
        }

        v52 = v80;
        sub_1C6E1E460(v87, v80, &qword_1EC1F7A98, &qword_1C6EE7840);
        if (v89(v52, 1, v37) == 1)
        {
          sub_1C6E1ED14(v52, &qword_1EC1F7A98, &qword_1C6EE7840);
        }

        else
        {
          if (!swift_getEnumCaseMultiPayload())
          {
            v76 = v52;
            v47 = v79;
            sub_1C6E1EC68(v76, v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_43:
            v56 = *v47;

            sub_1C6E1EC08(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            sub_1C6E1E460(v91 + v42, v10, &qword_1EC1F7C40, &qword_1C6EE8010);
            v69 = *&v10[*(v90 + 48)];
            if ((v69 & 0x8000000000000000) == 0)
            {
              v70 = *(v56 + 16);
              if (v70 >= v69)
              {
                v70 = *&v10[*(v90 + 48)];
              }

              v71 = 2 * v70;
              if (v69)
              {
                v47 = v71 + 1;
              }

              else
              {
                v47 = 1;
              }

              sub_1C6E1EC08(v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
              sub_1C6EE54C0();
              swift_unknownObjectRetain_n();
              v72 = swift_dynamicCastClass();
              if (!v72)
              {
                swift_unknownObjectRelease();
                v72 = MEMORY[0x1E69E7CC0];
              }

              v73 = *(v72 + 16);

              if (v73 == v47 >> 1)
              {
                v74 = swift_dynamicCastClass();
                result = swift_unknownObjectRelease_n();
                v68 = v86;
                if (v74)
                {
LABEL_55:
                  *v68 = v74;
                  goto LABEL_56;
                }

                v74 = MEMORY[0x1E69E7CC0];
LABEL_54:
                result = swift_unknownObjectRelease();
                goto LABEL_55;
              }

LABEL_65:
              swift_unknownObjectRelease_n();
              sub_1C6EC8C38(v56, v56 + 32, 0, v47);
              v74 = v77;
              v68 = v86;
              goto LABEL_54;
            }

LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          sub_1C6E1EC08(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        }

        v47 = v79;
        *v79 = MEMORY[0x1E69E7CC0];
        sub_1C6EE4420();
        goto LABEL_43;
      }

      sub_1C6E1EC08(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v29 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
    goto LABEL_19;
  }

  v44 = v87;
  sub_1C6E1E460(v87, v21, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v89(v21, 1, v37) == 1)
  {
    sub_1C6E1ED14(v21, &qword_1EC1F7A98, &qword_1C6EE7840);
LABEL_13:
    *v34 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6E1EC08(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_13;
  }

  sub_1C6E1EC68(v21, v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_14:
  v45 = v84;
  v46 = v85;
  v47 = *v34;

  sub_1C6E1EC08(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  sub_1C6E1E460(v91 + v42, v46, &qword_1EC1F7C40, &qword_1C6EE8010);
  v48 = *(v46 + *(v90 + 48));
  sub_1C6E1E460(v44, v45, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v89(v45, 1, v37) == 1)
  {
    sub_1C6E1ED14(v45, &qword_1EC1F7A98, &qword_1C6EE7840);
LABEL_24:
    v53 = v83;
    *v83 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
    goto LABEL_25;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6E1EC08(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_24;
  }

  v75 = v45;
  v53 = v83;
  sub_1C6E1EC68(v75, v83, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_25:
  v54 = *v53;

  sub_1C6E1EC08(v53, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v55 = *(v54 + 16);

  v56 = v48 - v55;
  if (__OFSUB__(v48, v55))
  {
    __break(1u);
    goto LABEL_63;
  }

  sub_1C6E1EC08(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if ((v56 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v56)
  {
    v57 = sub_1C6EE4D00();
    *(v57 + 16) = v56;
    v58 = (v57 + 32);
    if (v56 > 7)
    {
      v59 = v56 & 0x7FFFFFFFFFFFFFF8;
      v58 += v56 & 0x7FFFFFFFFFFFFFF8;
      v60 = v82.n128_u32[0];
      v63 = vdupq_lane_s32(v82.n128_u64[0], 0);
      v64 = (v57 + 48);
      v65 = v56 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v64[-1] = v63;
        *v64 = v63;
        v64 += 2;
        v65 -= 8;
      }

      while (v65);
      if (v56 == v59)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v59 = 0;
      v60 = v82.n128_u32[0];
    }

    v66 = v59 + v55 - v48;
    do
    {
      *v58++ = v60;
    }

    while (!__CFADD__(v66++, 1));
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

LABEL_39:
  v68 = v86;
  v92 = v47;
  result = sub_1C6ED1D80(v57);
  *v68 = v92;
LABEL_56:
  *(v68 + 8) = 0;
  *(v68 + 16) = 0;
  return result;
}

uint64_t sub_1C6E1CA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v78 = a3;
  v79 = a4;
  v88 = a2;
  v83 = a5;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v77 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  v8 = MEMORY[0x1EEE9AC00](v87);
  v82 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v74 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v74 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v81 = &v74 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v74 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v74 - v23;
  v86 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v25 = MEMORY[0x1EEE9AC00](v86);
  v75 = (&v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v74 - v28);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v80 = (&v74 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v74 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = (&v74 - v35);
  v85 = a1;
  sub_1C6E1E460(a1, v24, &qword_1EC1F7A98, &qword_1C6EE7840);
  v37 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v38 = *(*(v37 - 8) + 48);
  if (v38(v24, 1, v37) == 1)
  {
    sub_1C6E1ED14(v24, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C6E1EC68(v24, v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      goto LABEL_7;
    }

    sub_1C6E1EC08(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v36 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
LABEL_7:
  v39 = *v36;

  sub_1C6E1EC08(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  v40 = *(v39 + 16);

  v84 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
  sub_1C6E1E460(v88 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v11, &qword_1EC1F7C40, &qword_1C6EE8010);
  v41 = *&v11[*(v87 + 48)];
  sub_1C6E1EC08(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v40 < v41)
  {
    v42 = v85;
    sub_1C6E1E460(v85, v22, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v38(v22, 1, v37) == 1)
    {
      sub_1C6E1ED14(v22, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_1C6E1EC68(v22, v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        goto LABEL_18;
      }

      sub_1C6E1EC08(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v34 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
LABEL_18:
    v44 = v82;
    v45 = *v34;

    sub_1C6E1EC08(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6E1E460(v88 + v84, v44, &qword_1EC1F7C40, &qword_1C6EE8010);
    v46 = *(v44 + *(v87 + 48));
    v47 = v42;
    v48 = v81;
    sub_1C6E1E460(v47, v81, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v38(v48, 1, v37) == 1)
    {
      sub_1C6E1ED14(v48, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v49 = v48;
        v50 = v80;
        sub_1C6E1EC68(v49, v80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
LABEL_30:
        v58 = *v50;

        sub_1C6E1EC08(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v59 = *(v58 + 16);

        v60 = v46 - v59;
        if (!__OFSUB__(v46, v59))
        {
          sub_1C6E1EC08(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v62 = v78;
          v61 = v79;
          sub_1C6E00D18(v78, v79);
          v63 = sub_1C6E1EB64(v62, v61, v60);
          sub_1C6DF1134(v62, v61);
          v89 = v45;
          result = sub_1C6ED1E6C(v63);
          v64 = v83;
          *v83 = v89;
          v64[1] = 0x3000000000000000;
          *(v64 + 16) = 0;
          return result;
        }

        __break(1u);
        goto LABEL_51;
      }

      sub_1C6E1EC08(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    v50 = v80;
    *v80 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
    goto LABEL_30;
  }

  v43 = v85;
  sub_1C6E1E460(v85, v17, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v38(v17, 1, v37) == 1)
  {
    sub_1C6E1ED14(v17, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C6E1EC68(v17, v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      goto LABEL_24;
    }

    sub_1C6E1EC08(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v29 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
LABEL_24:
  v51 = *v29;

  sub_1C6E1EC08(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  v52 = *(v51 + 16);

  v53 = v84;
  sub_1C6E1E460(v88 + v84, v11, &qword_1EC1F7C40, &qword_1C6EE8010);
  v54 = *&v11[*(v87 + 48)];
  sub_1C6E1EC08(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v54 >= v52)
  {
    v56 = v77;
    sub_1C6E1EAFC(v43, v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    return sub_1C6E108D4(v56, v83);
  }

  v55 = v76;
  sub_1C6E1E460(v43, v76, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v38(v55, 1, v37) == 1)
  {
    sub_1C6E1ED14(v55, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v65 = v55;
      v46 = v75;
      sub_1C6E1EC68(v65, v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      goto LABEL_36;
    }

    sub_1C6E1EC08(v55, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v46 = v75;
  *v75 = MEMORY[0x1E69E7CC0];
  sub_1C6EE4420();
LABEL_36:
  v60 = *v46;

  sub_1C6E1EC08(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  sub_1C6E1E460(v88 + v53, v11, &qword_1EC1F7C40, &qword_1C6EE8010);
  v66 = *&v11[*(v87 + 48)];
  if ((v66 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    swift_unknownObjectRelease_n();
    sub_1C6EC8D08(v60, v60 + 32, 0, v46);
    v71 = v73;
    v72 = v83;
    goto LABEL_47;
  }

  v67 = *(v60 + 16);
  if (v67 >= v66)
  {
    v67 = *&v11[*(v87 + 48)];
  }

  v68 = 2 * v67;
  if (v66)
  {
    v46 = v68 + 1;
  }

  else
  {
    v46 = 1;
  }

  sub_1C6E1EC08(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6EE54C0();
  swift_unknownObjectRetain_n();
  v69 = swift_dynamicCastClass();
  if (!v69)
  {
    swift_unknownObjectRelease();
    v69 = MEMORY[0x1E69E7CC0];
  }

  v70 = *(v69 + 16);

  if (v70 != v46 >> 1)
  {
    goto LABEL_52;
  }

  v71 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  v72 = v83;
  if (!v71)
  {
    v71 = MEMORY[0x1E69E7CC0];
LABEL_47:
    result = swift_unknownObjectRelease();
  }

  *v72 = v71;
  v72[1] = 0x3000000000000000;
  *(v72 + 16) = 0;
  return result;
}

uint64_t sub_1C6E1D494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v116 = a3;
  v117 = a4;
  v123 = a5;
  v124 = a2;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v115 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v122 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v112 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v114 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v119 = &v112 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v121 = &v112 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v118 = &v112 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v112 - v22;
  v24 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v113 = (&v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v112 - v28);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v120 = (&v112 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v112 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = (&v112 - v35);
  v128 = a1;
  sub_1C6E1E460(a1, v23, &qword_1EC1F7A98, &qword_1C6EE7840);
  v37 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v126 = v38 + 48;
  v127 = v39;
  v40 = v39(v23, 1, v37);
  v41 = &off_1C6EE6000;
  v125 = v37;
  if (v40 == 1)
  {
    sub_1C6E1ED14(v23, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C6E1EC68(v23, v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_7;
    }

    sub_1C6E1EC08(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v36 = xmmword_1C6EE6B50;
  sub_1C6EE4420();
LABEL_7:
  v42 = *v36;
  v43 = v36[1];
  sub_1C6E00D18(*v36, v43);
  sub_1C6E1EC08(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v44 = v43 >> 62;
  if ((v43 >> 62) > 1)
  {
    if (v44 != 2)
    {
      v45 = 0;
      goto LABEL_16;
    }

    v46 = v8;
    v47 = v124;
    v49 = *(v42 + 16);
    v48 = *(v42 + 24);
    result = sub_1C6DF1134(v42, v43);
    v45 = v48 - v49;
    if (__OFSUB__(v48, v49))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v51 = v47;
    v8 = v46;
    v41 = &off_1C6EE6000;
    v52 = v51;
  }

  else
  {
    if (!v44)
    {
      v45 = BYTE6(v43);
LABEL_16:
      v52 = v124;
      goto LABEL_17;
    }

    result = sub_1C6DF1134(v42, v43);
    LODWORD(v45) = HIDWORD(v42) - v42;
    v52 = v124;
    if (__OFSUB__(HIDWORD(v42), v42))
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v45 = v45;
  }

LABEL_17:
  v53 = v45;
  v54 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
  sub_1C6E1E460(v52 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v12, &qword_1EC1F7C40, &qword_1C6EE8010);
  v55 = *&v12[*(v8 + 48)];
  sub_1C6E1EC08(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v55 <= v53 / 2)
  {
    v57 = v119;
    sub_1C6E1E460(v128, v119, &qword_1EC1F7A98, &qword_1C6EE7840);
    v58 = v125;
    if (v127(v57, 1, v125) == 1)
    {
      sub_1C6E1ED14(v57, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_1C6E1EC68(v57, v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        goto LABEL_34;
      }

      sub_1C6E1EC08(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v29 = *(v41 + 181);
    sub_1C6EE4420();
LABEL_34:
    v69 = *v29;
    v70 = v29[1];
    sub_1C6E00D18(*v29, v70);
    sub_1C6E1EC08(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v71 = v70 >> 62;
    if ((v70 >> 62) > 1)
    {
      if (v71 == 2)
      {
        v73 = v52;
        v75 = *(v69 + 16);
        v74 = *(v69 + 24);
        result = sub_1C6DF1134(v69, v70);
        v72 = v74 - v75;
        if (__OFSUB__(v74, v75))
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v52 = v73;
        v58 = v125;
      }

      else
      {
        v72 = 0;
      }
    }

    else if (v71)
    {
      result = sub_1C6DF1134(v69, v70);
      LODWORD(v72) = HIDWORD(v69) - v69;
      if (__OFSUB__(HIDWORD(v69), v69))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v72 = v72;
    }

    else
    {
      v72 = BYTE6(v70);
    }

    v82 = v72;
    sub_1C6E1E460(v52 + v54, v12, &qword_1EC1F7C40, &qword_1C6EE8010);
    v83 = *&v12[*(v8 + 48)];
    sub_1C6E1EC08(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    if (v83 >= v82 / 2)
    {
      v86 = v115;
      sub_1C6E1EAFC(v128, v115, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      return sub_1C6E108D4(v86, v123);
    }

    v84 = v114;
    sub_1C6E1E460(v128, v114, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v127(v84, 1, v58) == 1)
    {
      sub_1C6E1ED14(v84, &qword_1EC1F7A98, &qword_1C6EE7840);
      v85 = v113;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v85 = v113;
      if (EnumCaseMultiPayload == 4)
      {
        sub_1C6E1EC68(v84, v113, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_70:
        v104 = *v85;
        v105 = v85[1];
        sub_1C6E00D18(*v85, v105);
        sub_1C6E1EC08(v85, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        result = sub_1C6E1E460(v52 + v54, v12, &qword_1EC1F7C40, &qword_1C6EE8010);
        v106 = *&v12[*(v8 + 48)];
        if (v106 + 0x4000000000000000 < 0)
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v107 = 2 * v106;
        result = sub_1C6E1EC08(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if (v107 < 0)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v108 = sub_1C6EE4200();
        v110 = v109;
        result = sub_1C6DF1134(v104, v105);
        v111 = v123;
        *v123 = v108;
        v111[1] = v110 | 0x1000000000000000;
        *(v111 + 16) = 1;
        return result;
      }

      sub_1C6E1EC08(v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v85 = *(v41 + 181);
    sub_1C6EE4420();
    goto LABEL_70;
  }

  v56 = v118;
  sub_1C6E1E460(v128, v118, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v127(v56, 1, v125) == 1)
  {
    sub_1C6E1ED14(v56, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v59 = v52;
      sub_1C6E1EC68(v56, v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_28;
    }

    sub_1C6E1EC08(v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v59 = v52;
  *v34 = *(v41 + 181);
  sub_1C6EE4420();
LABEL_28:
  v60 = *v34;
  v61 = v34[1];
  sub_1C6E00D18(*v34, v61);
  sub_1C6E1EC08(v34, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v62 = v59 + v54;
  v63 = v122;
  sub_1C6E1E460(v62, v122, &qword_1EC1F7C40, &qword_1C6EE8010);
  v64 = *(v63 + *(v8 + 48));
  v65 = v121;
  sub_1C6E1E460(v128, v121, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v127(v65, 1, v125) == 1)
  {
    sub_1C6E1ED14(v65, &qword_1EC1F7A98, &qword_1C6EE7840);
LABEL_41:
    v66 = v41;
    v68 = v120;
    *v120 = *(v41 + 181);
    sub_1C6EE4420();
    goto LABEL_42;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C6E1EC08(v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_41;
  }

  v66 = v41;
  v67 = v65;
  v68 = v120;
  sub_1C6E1EC68(v67, v120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_42:
  v76 = *v68;
  v77 = v68[1];
  sub_1C6E00D18(*v68, v77);
  result = sub_1C6E1EC08(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v78 = v77 >> 62;
  if ((v77 >> 62) > 1)
  {
    if (v78 == 2)
    {
      v81 = *(v76 + 16);
      v80 = *(v76 + 24);
      result = sub_1C6DF1134(v76, v77);
      v79 = v80 - v81;
      if (__OFSUB__(v80, v81))
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v63 = v122;
    }

    else
    {
      v79 = 0;
    }
  }

  else if (v78)
  {
    result = sub_1C6DF1134(v76, v77);
    LODWORD(v79) = HIDWORD(v76) - v76;
    if (__OFSUB__(HIDWORD(v76), v76))
    {
LABEL_83:
      __break(1u);
      return result;
    }

    v79 = v79;
  }

  else
  {
    v79 = BYTE6(v77);
  }

  v87 = v64 - v79 / 2;
  if (__OFSUB__(v64, v79 / 2))
  {
    goto LABEL_75;
  }

  sub_1C6E1EC08(v63, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  v89 = v116;
  v88 = v117;
  sub_1C6E00D18(v116, v117);
  v90 = sub_1C6E1EB64(v89, v88, v87);
  result = sub_1C6DF1134(v89, v88);
  v129 = *(v66 + 181);
  v91 = v90[2];
  if (v91)
  {
    v92 = 0;
    v93 = v90 + 5;
    while (v92 < v90[2])
    {
      ++v92;
      v95 = *(v93 - 1);
      v94 = *v93;
      sub_1C6E00D18(v95, *v93);
      sub_1C6EE4240();
      result = sub_1C6DF1134(v95, v94);
      v93 += 2;
      if (v91 == v92)
      {
        v97 = *(&v129 + 1);
        v96 = v129;
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v96 = 0;
  v97 = 0xC000000000000000;
LABEL_65:

  v132 = v60;
  v133 = v61;
  v130 = MEMORY[0x1E6969080];
  v131 = MEMORY[0x1E6969078];
  *&v129 = v96;
  *(&v129 + 1) = v97;
  v98 = __swift_project_boxed_opaque_existential_1(&v129, MEMORY[0x1E6969080]);
  v99 = *v98;
  v100 = v98[1];
  sub_1C6E00D18(v60, v61);
  sub_1C6E00D18(v96, v97);
  sub_1C6E1E4C8(v99, v100, &v132);
  sub_1C6DF1134(v96, v97);
  sub_1C6DF1134(v60, v61);
  result = __swift_destroy_boxed_opaque_existential_1(&v129);
  v101 = v133 | 0x1000000000000000;
  v102 = v123;
  *v123 = v132;
  v102[1] = v101;
  *(v102 + 16) = 1;
  return result;
}

uint64_t sub_1C6E1E0F8()
{
  sub_1C6E1EC08(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6E1E448(*(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue), *(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue + 8));
  return sub_1C6E1ED14(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, &qword_1EC1F7C40, &qword_1C6EE8010);
}

uint64_t sub_1C6E1E168()
{

  sub_1C6E1EC08(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E1ED14(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);
  v1 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input;

  sub_1C6E1EC08(v0 + v1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6E1E448(*(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue), *(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue + 8));
  sub_1C6E1ED14(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, &qword_1EC1F7C40, &qword_1C6EE8010);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeaturePreprocessingContainer(uint64_t a1)
{
  result = qword_1EDEF6360;
  if (!qword_1EDEF6360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E1E2D8(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(319);
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    v5 = &unk_1C6EE7FF0;
    swift_getTupleTypeLayout2();
    v6 = &v3;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C6E1E38C()
{
  result = qword_1EC1F7C38;
  if (!qword_1EC1F7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C38);
  }

  return result;
}

uint64_t sub_1C6E1E3E0(uint64_t result, unint64_t a2, char a3)
{
  if ((~a2 & 0x3000000000000000) != 0 || ~a3 != 0)
  {
    return sub_1C6E1E408(result, a2);
  }

  return result;
}

uint64_t sub_1C6E1E408(uint64_t result, unint64_t a2)
{
  if (((a2 >> 60) & 3 | 4) == 4)
  {
    return sub_1C6E00D18(result, a2);
  }

  return result;
}

uint64_t sub_1C6E1E420(uint64_t result, unint64_t a2, char a3)
{
  if ((~a2 & 0x3000000000000000) != 0 || ~a3 != 0)
  {
    return sub_1C6E1E448(result, a2);
  }

  return result;
}

uint64_t sub_1C6E1E448(uint64_t result, unint64_t a2)
{
  if (((a2 >> 60) & 3 | 4) == 4)
  {
    return sub_1C6DF1134(result, a2);
  }

  return result;
}

uint64_t sub_1C6E1E460(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E1E4C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1C6EE41F0();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1C6E1E600(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1C6E1E600(v4, v5);
  }

  return sub_1C6EE41F0();
}

uint64_t sub_1C6E1E600(uint64_t a1, uint64_t a2)
{
  result = sub_1C6EE3F90();
  if (!result || (result = sub_1C6EE3FC0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C6EE3FB0();
      return sub_1C6EE41F0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E1E694(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  result = a1[2];
  v5 = *(a1 + 32);
  v6 = v5 >> 6;
  if (v5 >> 6 > 1)
  {
    if (v6 != 2)
    {
      v26 = a2[2].u8[0];
      if (v26 < 0xC0)
      {
        return 0;
      }

      v27 = vorrq_s8(*a2, a2[1]);
      v28 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
      return v26 == 192 && *&v28 == 0;
    }

    v17 = a2[2].i8[0];
    if ((v17 & 0xC0) != 0x80)
    {
      return 0;
    }

    v18 = *(a1 + 24);
    v19 = *(a1 + 31);
    v20 = *(a1 + 29);
    v21 = *(a1 + 25);
    v22 = a2->i64[0];
    v9 = a2[1].i64[0];
    v23 = a2[1].u64[1];
    if (a2->i8[8])
    {
      if (v22 > 3)
      {
        if (v22 > 5)
        {
          if (v22 == 6)
          {
            if (v3 != 6)
            {
              return 0;
            }
          }

          else if (v3 != 7)
          {
            return 0;
          }
        }

        else if (v22 == 4)
        {
          if (v3 != 4)
          {
            return 0;
          }
        }

        else if (v3 != 5)
        {
          return 0;
        }
      }

      else if (v22 > 1)
      {
        if (v22 == 2)
        {
          if (v3 != 2)
          {
            return 0;
          }
        }

        else if (v3 != 3)
        {
          return 0;
        }
      }

      else if (v22)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3)
      {
        return 0;
      }
    }

    else if (v3 != v22)
    {
      return 0;
    }

    v30 = v21 | ((v20 | (v19 << 16)) << 32);
    v31 = v18 | (v30 << 8);
    v32 = (v30 >> 52) & 3;
    if (v5)
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33 | v32;
    if (v34 <= 1)
    {
      if (v34)
      {
        if (v17)
        {
          v40 = 4;
        }

        else
        {
          v40 = 0;
        }

        if ((v40 | (v23 >> 60) & 3) != 1)
        {
          return 0;
        }

        v36 = *&result;
        return v36 == *&v9;
      }

      if (v17)
      {
        v37 = 4;
      }

      else
      {
        v37 = 0;
      }

      if (v37 | (v23 >> 60) & 3)
      {
        return 0;
      }
    }

    else
    {
      if (v34 == 2)
      {
        if (v17)
        {
          v38 = 4;
        }

        else
        {
          v38 = 0;
        }

        return (v38 | (v23 >> 60) & 3) == 2 && result == v9;
      }

      if (v34 == 3)
      {
        if (v17)
        {
          v35 = 4;
        }

        else
        {
          v35 = 0;
        }

        return (v35 | (v23 >> 60) & 3) == 3 && result == v9;
      }

      if (v17)
      {
        v39 = 4;
      }

      else
      {
        v39 = 0;
      }

      if ((v39 | (v23 >> 60) & 3) != 4)
      {
        return 0;
      }
    }

    return sub_1C6E6B56C(result, v31, v9, v23);
  }

  if (!v6)
  {
    if (a2[2].u8[0] > 0x3Fu)
    {
      return 0;
    }

    v7 = *(a1 + 8);
    v8 = *(a1 + 9) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 32);
    v9 = a2->i64[0];
    v10 = a2->u64[1];
    v11 = v7 | (v8 << 8);
    v12 = (v8 >> 52) & 3;
    if (result)
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 | v12;
    if (a2[1].i32[0])
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 | (v10 >> 60) & 3;
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        return v16 == 2 && v3 == v9;
      }

      if (v14 == 3)
      {
        return v16 == 3 && v3 == v9;
      }

      if (v16 == 4)
      {
LABEL_75:
        if (sub_1C6E6B56C(v3, v11 & 0xCFFFFFFFFFFFFFFFLL, v9, v10 & 0xCFFFFFFFFFFFFFFFLL))
        {
          return 1;
        }
      }

      return 0;
    }

    if (!v14)
    {
      if (v16)
      {
        return 0;
      }

      goto LABEL_75;
    }

    if (v16 != 1)
    {
      return 0;
    }

    v36 = *&v3;
    return v36 == *&v9;
  }

  if ((a2[2].i8[0] & 0xC0) != 0x40)
  {
    return 0;
  }

  v24 = a2->i64[0];
  v25 = a2[1].i64[0];
  if (a2->i8[8])
  {
    if (v24 > 3)
    {
      if (v24 > 5)
      {
        if (v24 == 6)
        {
          if (v3 != 6)
          {
            return 0;
          }
        }

        else if (v3 != 7)
        {
          return 0;
        }
      }

      else if (v24 == 4)
      {
        if (v3 != 4)
        {
          return 0;
        }
      }

      else if (v3 != 5)
      {
        return 0;
      }
    }

    else if (v24 > 1)
    {
      if (v24 == 2)
      {
        if (v3 != 2)
        {
          return 0;
        }
      }

      else if (v3 != 3)
      {
        return 0;
      }
    }

    else if (v24)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v24)
  {
    return 0;
  }

  if ((a2[1].i8[8] & 1) == 0)
  {
    return result == v25;
  }

  if (v25 > 3)
  {
    if (v25 > 5)
    {
      if (v25 == 6)
      {
        if (result == 6)
        {
          return 1;
        }
      }

      else if (result == 7)
      {
        return 1;
      }
    }

    else if (v25 == 4)
    {
      if (result == 4)
      {
        return 1;
      }
    }

    else if (result == 5)
    {
      return 1;
    }

    return 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      if (result == 2)
      {
        return 1;
      }
    }

    else if (result == 3)
    {
      return 1;
    }

    return 0;
  }

  if (!v25)
  {
    return !result;
  }

  if (result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C6E1EAFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1C6E1EB64(void *result, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1C6EE4D00();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        sub_1C6E00D18(v4, a2);
        *(v9 - 1) = v4;
        *v9 = a2;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    sub_1C6E00D18(v4, a2);
    return v7;
  }

  return result;
}

uint64_t sub_1C6E1EC08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E1EC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C6E1ED14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph29FeaturePreprocessingContainerC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 32) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6E1EDB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 33))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6E1EE0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1C6E1EE78(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 32) = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -64;
  }

  return result;
}

uint64_t sub_1C6E1EEB8(uint64_t a1)
{
  v2 = sub_1C6E34EEC(*(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_input), *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_input + 8), a1);
  v3 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_codesLength);
  v5 = sub_1C6E95554(v2, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC0, &unk_1C6EE7860);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE83C0;
  *(v6 + 32) = sub_1C6EE4E30();
  *(v6 + 40) = sub_1C6EE4E30();
  v7 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v8 = sub_1C6E35C78(v6, 131104);
  v25 = v3;
  v28 = *(v5 + 16);
  if (v28)
  {
    v9 = 0;
    v26 = v5;
    v27 = v5 + 32;
    while (v9 < *(v5 + 16))
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (v4)
      {
        if (v4 > *(*(v27 + 8 * v9) + 16))
        {
          goto LABEL_15;
        }

        v10 = 0;
        do
        {
          v11 = v10 + 1;
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_1C6EE83C0;
          *(v12 + 32) = sub_1C6EE4E30();
          *(v12 + 40) = sub_1C6EE4E30();
          v13 = sub_1C6EE5550();
          sub_1C6E1F61C();
          v14 = sub_1C6EE4C90();

          [v8 setObject:v13 forKeyedSubscript:v14];

          v10 = v11;
        }

        while (v4 != v11);

        v5 = v26;
      }

      if (++v9 == v28)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    swift_once();
    v21 = qword_1EDEF8F88;
    v22 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v23 = swift_allocObject();
    *(v23 + 16) = v8[89];
    swift_getErrorValue();
    sub_1C6EE5480();
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1C6DF10E0();
    *(v23 + 32) = 0;
    *(v23 + 40) = 0xE000000000000000;
    sub_1C6EE4730("Failed to make MLMultiArray with error %{public}@", 49, 2, &dword_1C6DE9000, v21, v22, v23);

    return MEMORY[0x1E69E7CC8];
  }

  else
  {
LABEL_11:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C70, &unk_1C6EE8400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6EE6590;
    v16 = *(v25 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_output + 8);
    *(inited + 32) = *(v25 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_output);
    *(inited + 40) = v16;
    *(inited + 48) = v8;

    v17 = v8;
    v18 = sub_1C6E0BB74(inited);
    swift_setDeallocating();
    sub_1C6E1F6C8(inited + 32, &qword_1EC1F7C78, &unk_1C6EE91B0);
    sub_1C6E2AAA8(v18);
    v20 = v19;
  }

  return v20;
}

uint64_t sub_1C6E1F2E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 112);
  v6[6] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 96);
  v6[7] = v1;
  v7[0] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 128);
  *(v7 + 13) = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 141);
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 48);
  v6[2] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 32);
  v6[3] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 80);
  v6[4] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 64);
  v6[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 16);
  v6[0] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer);
  v6[1] = v4;
  sub_1C6E1F5C8(v6);
  sub_1C6E1F668(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  return sub_1C6E1F668(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
}

uint64_t sub_1C6E1F38C()
{

  sub_1C6E1F668(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E1F6C8(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);
  v1 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 112);
  v6[6] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 96);
  v6[7] = v1;
  v7[0] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 128);
  *(v7 + 13) = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 141);
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 48);
  v6[2] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 32);
  v6[3] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 80);
  v6[4] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 64);
  v6[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer + 16);
  v6[0] = *(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_wordPieceTokenizer);
  v6[1] = v4;

  sub_1C6E1F5C8(v6);
  sub_1C6E1F668(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6E1F668(v0 + OBJC_IVAR____TtC18ComputationalGraph23WordPieceModelContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WordPieceModelContainer(uint64_t a1)
{
  result = qword_1EC1F7C60;
  if (!qword_1EC1F7C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E1F51C(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(319);
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

unint64_t sub_1C6E1F61C()
{
  result = qword_1EDEF6758;
  if (!qword_1EDEF6758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEF6758);
  }

  return result;
}

uint64_t sub_1C6E1F668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E1F6C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E1F728(uint64_t a1)
{
  v2 = v1;
  v41 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AB0, &qword_1C6EE7850);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v33 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1C6E15B30(0, v7, 0);
    v8 = v40;
    v37 = v5 + 32;
    v9 = (a1 + 40);
    v34 = v5;
    v35 = v4;
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *v9 >> 62;
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          memset(v39, 0, 14);
          v13 = v39;
          goto LABEL_20;
        }

        v36 = v8;
        v15 = *(v11 + 16);
        v14 = *(v11 + 24);

        v16 = sub_1C6EE3F90();
        if (v16)
        {
          v17 = sub_1C6EE3FC0();
          if (__OFSUB__(v15, v17))
          {
            goto LABEL_39;
          }

          v18 = v14;
          v19 = v2;
          v16 += v15 - v17;
          v20 = v18 - v15;
          if (__OFSUB__(v18, v15))
          {
            goto LABEL_38;
          }
        }

        else
        {
          v26 = v14;
          v19 = v2;
          v20 = v26 - v15;
          if (__OFSUB__(v26, v15))
          {
            goto LABEL_38;
          }
        }

        v8 = v10 & 0x3FFFFFFFFFFFFFFFLL;
        v27 = sub_1C6EE3FB0();
        if (v27 >= v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v27;
        }
      }

      else
      {
        if (!v12)
        {
          v39[0] = *(v9 - 1);
          LOWORD(v39[1]) = v10;
          BYTE2(v39[1]) = BYTE2(v10);
          BYTE3(v39[1]) = BYTE3(v10);
          BYTE4(v39[1]) = BYTE4(v10);
          BYTE5(v39[1]) = BYTE5(v10);
          v13 = v39 + BYTE6(v10);
LABEL_20:
          sub_1C6E1FAE4(v39, v13, v11, v10);
          v24 = v11;
          v25 = v10;
          if (v2)
          {
            goto LABEL_35;
          }

          sub_1C6DF1134(v11, v10);
          goto LABEL_31;
        }

        v19 = v2;
        if (v11 >> 32 < v11)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
        }

        v36 = v8;

        v16 = sub_1C6EE3F90();
        if (v16)
        {
          v21 = sub_1C6EE3FC0();
          if (__OFSUB__(v11, v21))
          {
            goto LABEL_40;
          }

          v16 += v11 - v21;
        }

        v8 = v10 & 0x3FFFFFFFFFFFFFFFLL;
        v22 = sub_1C6EE3FB0();
        if (v22 >= (v11 >> 32) - v11)
        {
          v23 = (v11 >> 32) - v11;
        }

        else
        {
          v23 = v22;
        }
      }

      v28 = v23 + v16;
      if (v16)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      sub_1C6E1FAE4(v16, v29, v11, v10);
      v2 = v19;
      v24 = v11;
      v25 = v10;
      if (v19)
      {
LABEL_35:
        sub_1C6DF1134(v24, v25);

        return v8;
      }

      sub_1C6DF1134(v11, v10);
      v4 = v35;
      v8 = v36;
      v5 = v34;
LABEL_31:
      v40 = v8;
      v31 = *(v8 + 16);
      v30 = *(v8 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1C6E15B30((v30 > 1), v31 + 1, 1);
        v8 = v40;
      }

      v9 += 2;
      *(v8 + 16) = v31 + 1;
      (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31, v38, v4);
      --v7;
    }

    while (v7);
  }

  return v8;
}

void sub_1C6E1FAE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC0, &unk_1C6EE7860);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6EE6B60;
  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2 || !__OFSUB__(*(a3 + 24), *(a3 + 16)))
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v8)
  {
LABEL_9:
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

LABEL_10:
  *(v7 + 32) = sub_1C6EE4E30();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6EE6B60;
  sub_1C6E20190(0, &qword_1EDEF6758, 0x1E696AD98);
  *(v9 + 32) = sub_1C6EE4F90();
  v10 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v11 = sub_1C6EE4C90();

  v12 = sub_1C6EE4C90();

  v21[0] = 0;
  v13 = [v10 initWithDataPointer:a1 shape:v11 dataType:65552 strides:v12 deallocator:0 error:v21];

  v14 = v21[0];
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C6EE6B60;
    *(v15 + 32) = v13;
    sub_1C6E20190(0, &qword_1EDEF6788, 0x1E695FED0);
    v16 = v14;
    v17 = v13;
    v18 = sub_1C6EE4C90();

    v19 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v18 alongAxis:0 dataType:65568];

    sub_1C6EE4820();
  }

  else
  {
    v20 = v21[0];
    sub_1C6EE4050();

    swift_willThrow();
  }
}

char *sub_1C6E1FDB0(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AB0, &qword_1C6EE7850);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
  inited = swift_initStackObject();
  v22 = xmmword_1C6EE6590;
  *(inited + 16) = xmmword_1C6EE6590;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_1C6E00D18(a1, a2);
  v13 = sub_1C6E1F728(inited);
  swift_setDeallocating();
  sub_1C6E200D8(inited + 32);
  if (v2)
  {
    return v9;
  }

  if (!*(v13 + 16))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v21[1] = 0;
  (*(v6 + 16))(v9, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  (*(v6 + 32))(v11, v9, v5);
  v14 = sub_1C6EE47F0();
  result = sub_1C6EE4810();
  if (result < v14)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v21[0] = v6;
    if (v14 == result)
    {
      v9 = MEMORY[0x1E69E7CC0];
LABEL_6:
      (*(v21[0] + 8))(v11, v5);
      return v9;
    }

    if (v14 < result)
    {
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC8, &qword_1C6EF6BE0);
        v17 = swift_allocObject();
        *(v17 + 16) = v22;
        *(v17 + 32) = v14;
        sub_1C6E2012C();
        sub_1C6EE4830();

        v18 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1C6ED95D8(0, *(v9 + 2) + 1, 1, v9);
        }

        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v20 >= v19 >> 1)
        {
          v9 = sub_1C6ED95D8((v19 > 1), v20 + 1, 1, v9);
        }

        ++v14;
        *(v9 + 2) = v20 + 1;
        *&v9[4 * v20 + 32] = v18;
      }

      while (v16 != v14);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C6E2012C()
{
  result = qword_1EDEF6868;
  if (!qword_1EDEF6868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7AB0, &qword_1C6EE7850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6868);
  }

  return result;
}

uint64_t sub_1C6E20190(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1C6E201D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
  v9 = MEMORY[0x1E69E7CC8];
  v83 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (i >= *(v8 + 16))
      {
        goto LABEL_33;
      }

      sub_1C6E00BFC(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i, v7);
      sub_1C6E207D0(&v83, v7, a1, v2);
      sub_1C6E20D64(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    }

    v9 = v83;
  }

  v12 = (*(**(v2 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_modelContainer) + 120))(v9);

  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v78 = OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_outputAliasMap;
  v79 = v12;
  v17 = (v14 + 63) >> 6;

  v7 = 0;
  v73 = MEMORY[0x1E69E7CC8];
  v74 = xmmword_1C6EE6590;
  v75 = v17;
  v76 = v12 + 64;
  v77 = v2;
  if (v16)
  {
    while (1)
    {
      v18 = v2;
LABEL_14:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v7 << 6);
      v22 = (*(v79 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v79 + 56) + 24 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v18 + v78);
      v30 = *(v29 + 16);

      sub_1C6E00CBC(v26, v27, v28);

      v80 = v26;
      v31 = v26;
      v32 = v24;
      v82 = v27;
      v81 = v28;
      sub_1C6E00CBC(v31, v27, v28);
      if (!v30 || (v33 = sub_1C6DEC784(v23, v24), (v34 & 1) == 0))
      {
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        v35 = qword_1EDEF8F88;
        v36 = sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v37 = swift_allocObject();
        *(v37 + 16) = v74;
        *(v37 + 56) = MEMORY[0x1E69E6158];
        *(v37 + 64) = sub_1C6DF10E0();
        *(v37 + 32) = v23;
        *(v37 + 40) = v32;
        sub_1C6EE4730("AliasedModelContainer missing output alias for name %{public}@", 62, 2, &dword_1C6DE9000, v35, v36, v37);

        v38 = v80;
        v39 = v82;
        v40 = v81;
        sub_1C6E00C60(v80, v82, v81);

        sub_1C6E00C60(v38, v39, v40);
        v2 = v77;
        goto LABEL_19;
      }

      v41 = v33;

      v42 = (*(v29 + 56) + 16 * v41);
      v44 = *v42;
      v43 = v42[1];
      v45 = v80;
      v46 = v81;
      sub_1C6E00CBC(v80, v82, v81);

      v47 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v47;
      v49 = sub_1C6DEC784(v44, v43);
      v51 = *(v47 + 16);
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_34;
      }

      v55 = *(v47 + 24);
      v72 = v44;
      if (v55 < v54)
      {
        break;
      }

      v2 = v77;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      v63 = v49;
      v64 = v50;
      sub_1C6E09928();
      v49 = v63;
      v46 = v81;
      if (v64)
      {
LABEL_27:
        v57 = v49;

        v73 = v83;
        v58 = v83[7] + 24 * v57;
        v59 = *v58;
        v60 = *(v58 + 8);
        v61 = *(v58 + 16);
        v62 = v82;
        *v58 = v45;
        *(v58 + 8) = v62;
        *(v58 + 16) = v46;
        sub_1C6E00C60(v59, v60, v61);
        sub_1C6E00C60(v45, v62, v46);

        sub_1C6E00C60(v45, v62, v46);
        goto LABEL_19;
      }

LABEL_29:
      v65 = v83;
      v83[(v49 >> 6) + 8] |= 1 << v49;
      v66 = (v65[6] + 16 * v49);
      *v66 = v72;
      v66[1] = v43;
      v67 = v65[7] + 24 * v49;
      v68 = v82;
      *v67 = v45;
      *(v67 + 8) = v68;
      *(v67 + 16) = v46;
      sub_1C6E00C60(v45, v68, v46);

      sub_1C6E00C60(v45, v68, v46);
      v69 = v65[2];
      v53 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v53)
      {
        goto LABEL_35;
      }

      v73 = v65;
      v65[2] = v70;
LABEL_19:
      v17 = v75;
      v13 = v76;
      if (!v16)
      {
        goto LABEL_10;
      }
    }

    LODWORD(v73) = v50;
    sub_1C6E06D1C(v54, isUniquelyReferenced_nonNull_native);
    v49 = sub_1C6DEC784(v44, v43);
    v56 = v50 & 1;
    LOBYTE(v50) = v73;
    v2 = v77;
    if ((v73 & 1) != v56)
    {
      goto LABEL_36;
    }

LABEL_26:
    if (v50)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

LABEL_10:
  while (1)
  {
    v19 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return v73;
    }

    v16 = *(v13 + 8 * v19);
    ++v7;
    if (v16)
    {
      v18 = v2;
      v7 = v19;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);

  sub_1C6E20D64(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

  __break(1u);
LABEL_36:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}