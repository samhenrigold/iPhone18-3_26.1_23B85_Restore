double sub_1DB4CDFE4(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CC38C(KeyPath, *(v1 + 48));

  return v3;
}

float sub_1DB4CE040(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CC69C(KeyPath, *(v1 + 48));

  return v3;
}

uint64_t sub_1DB4CE09C(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CC9AC(KeyPath, *(v1 + 48), MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  return v3;
}

uint64_t sub_1DB4CE120(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CCCC4(KeyPath, *(v1 + 48), MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  return v3;
}

uint64_t sub_1DB4CE1A4(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CCFDC(KeyPath, *(v1 + 48), MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  return v3;
}

uint64_t sub_1DB4CE22C(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CD2F4(KeyPath, *(v1 + 48), MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  return v3;
}

uint64_t sub_1DB4CE2B4(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CC9AC(KeyPath, *(v1 + 48), MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  return v3;
}

uint64_t sub_1DB4CE354(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CC9AC(KeyPath, *(v1 + 48), MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  return v3;
}

uint64_t sub_1DB4CE3D8(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CCCC4(KeyPath, *(v1 + 48), MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  return v3;
}

uint64_t sub_1DB4CE460(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CCFDC(KeyPath, *(v1 + 48), MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  return v3;
}

uint64_t sub_1DB4CE4E8(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CD2F4(KeyPath, *(v1 + 48), MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  return v3;
}

uint64_t sub_1DB4CE570(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1DB4CC9AC(KeyPath, *(v1 + 48), MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  return v3;
}

uint64_t sub_1DB4CE628(uint64_t a1)
{
  sub_1DB330D60(v1, v9);
  if (!v10)
  {
    sub_1DB30623C(v9, &qword_1ECC42E38, &qword_1DB50FB80);
    return sub_1DB50A9D0();
  }

  v2 = __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_1DB300B14(v2, v8);
  sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
    return sub_1DB50A9D0();
  }

  __swift_destroy_boxed_opaque_existential_0(v9);
  sub_1DB330D60(v1, v9);
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v3 = sub_1DB408A14();
    v4 = __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v4 = sub_1DB30623C(v9, &qword_1ECC42E38, &qword_1DB50FB80);
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9[0] = v3;
  MEMORY[0x1EEE9AC00](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB4D31FC();
  v6 = sub_1DB50A890();

  return v6;
}

uint64_t sub_1DB4CE7F0(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = sub_1DB50BE60();
  JSONObject.subscript.getter(v9, v10, v13);

  v11 = sub_1DB317CE0(a1, *(v4 + 48), v7, v8);
  a2(v13, v11);
  sub_1DB3151CC(v13);
}

uint64_t sub_1DB4CE8C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB50BE60();
  JSONObject.subscript.getter(v2, v3, v9);

  if (v10)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v9, v10);
    sub_1DB300B14(v4, v8);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    v5 = swift_dynamicCast();
    if (v5)
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
    return v5 ^ 1u;
  }

  else
  {
    sub_1DB30623C(v9, &qword_1ECC42E38, &qword_1DB50FB80);
    return 0;
  }
}

uint64_t sub_1DB4CE9A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB50BE60();
  JSONObject.subscript.getter(v2, v3, v9);

  if (v10)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v9, v10);
    sub_1DB300B14(v4, v8);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    v5 = swift_dynamicCast();
    if (v5)
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_1DB30623C(v9, &qword_1ECC42E38, &qword_1DB50FB80);
    return 1;
  }

  return v5;
}

uint64_t sub_1DB4CEA90(uint64_t a1, uint64_t a2)
{
  sub_1DB4CE7F0(a1, sub_1DB4CEAE8, 0, a2);
  if (!v2)
  {
    v3 = v5;
  }

  return v3 & 1;
}

uint64_t sub_1DB4CEAE8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_1DB4CC1A8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1DB4CEB20(uint64_t a1, uint64_t a2)
{
  result = sub_1DB4CE7F0(a1, sub_1DB4CEB74, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1DB4CEB74@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  sub_1DB330D60(a1, v13);
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v4, v12);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0(v13);
      *a3 = v10;
      a3[1] = v11;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v6 = MEMORY[0x1E69E6158];
  v7 = sub_1DB50B3E0();
  swift_allocError();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
  *v9 = v6;

  sub_1DB50B3C0();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6AF8], v7);
  return swift_willThrow();
}

double sub_1DB4CECF4(uint64_t a1, uint64_t a2)
{
  sub_1DB4CE7F0(a1, sub_1DB4CED48, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1DB4CED48@<X0>(uint64_t a1@<X1>, double *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CC38C(KeyPath, a1);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

float sub_1DB4CEDC8(uint64_t a1, uint64_t a2)
{
  sub_1DB4CE7F0(a1, sub_1DB4CEE1C, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1DB4CEE1C@<X0>(uint64_t a1@<X1>, float *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CC69C(KeyPath, a1);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DB4CEE9C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CC9AC(KeyPath, a1, MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DB4CEF3C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CCCC4(KeyPath, a1, MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DB4CEFDC@<X0>(uint64_t a1@<X1>, _WORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CCFDC(KeyPath, a1, MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DB4CF080@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CD2F4(KeyPath, a1, MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DB4CF124@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CC9AC(KeyPath, a1, MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DB4CF1C8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CC9AC(KeyPath, a1, MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DB4CF268(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  result = sub_1DB4CE7F0(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DB4CF2A8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CCCC4(KeyPath, a1, MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DB4CF34C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  result = sub_1DB4CE7F0(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DB4CF38C@<X0>(uint64_t a1@<X1>, _WORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CCFDC(KeyPath, a1, MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DB4CF430(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  result = sub_1DB4CE7F0(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DB4CF470@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CD2F4(KeyPath, a1, MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DB4CF514(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  result = sub_1DB4CE7F0(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DB4CF554@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_1DB4CC9AC(KeyPath, a1, MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1DB4CF5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 24);
  v7[2] = *(a3 + 16);
  v7[3] = a4;
  v7[4] = v5;
  v7[5] = a5;
  v7[7] = a1;
  return sub_1DB4CE7F0(a2, sub_1DB4D30B0, v7, a3);
}

uint64_t sub_1DB4CF650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v56 = a6;
  v57 = a2;
  v60 = a4;
  v61 = a7;
  v63 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v50 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v52);
  v50[1] = v50 - v11;
  v59 = sub_1DB50B120();
  v62 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v53 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = v50 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v50 - v16;
  v18 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v50 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v50 - v26;
  sub_1DB330D60(a1, v65);
  if (v66)
  {
    v28 = __swift_project_boxed_opaque_existential_1(v65, v66);
    sub_1DB300B14(v28, v64);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v65);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v65);
  }

  else
  {
    sub_1DB30623C(v65, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v29 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v63 + 40));
  if (v29 != 2 && (v29 & 1) != 0)
  {
    v30 = sub_1DB50B3E0();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v32 = v60;

    sub_1DB50B3C0();
    v33 = MEMORY[0x1E69E6B08];
    goto LABEL_25;
  }

LABEL_9:
  v58 = v7;
  sub_1DB3171C0(a1, v65);
  v34 = swift_dynamicCast();
  v35 = *(v18 + 56);
  if (v34)
  {
    v35(v17, 0, 1, a5);
    v36 = *(v18 + 32);
    v36(v27, v17, a5);
    return (v36)(v61, v27, a5);
  }

  v35(v17, 1, 1, a5);
  v38 = *(v62 + 8);
  v62 += 8;
  v38(v17, v59);
  v39 = sub_1DB509CA0();
  if (v39 == v60)
  {
    v42 = v39;
    JSONObject.string.getter();
    if (v43)
    {
      sub_1DB509C60();

      v44 = v51;
      if (swift_dynamicCast())
      {
        v35(v44, 0, 1, a5);
        v45 = *(v18 + 32);
        v45(v24, v44, a5);
        return (v45)(v61, v24, a5);
      }

      v35(v44, 1, 1, a5);
      v38(v44, v59);
      v30 = sub_1DB50B3E0();
      swift_allocError();
      v32 = v46;

      sub_1DB50B3C0();
      v33 = MEMORY[0x1E69E6B00];
      goto LABEL_25;
    }
  }

  else
  {
    v40 = v60;
    v41 = sub_1DB509DD0();
    if (v41 != v40)
    {
      sub_1DB3171C0(a1, v65);
      v67 = *(v63 + 40);
      v68 = v57;
      v64[3] = &type metadata for _JSONObjectDecoder;
      v64[4] = sub_1DB34A154();
      v64[0] = swift_allocObject();
      sub_1DB34A1A8(v65, v64[0] + 16);

      sub_1DB50ADB0();
      return sub_1DB34A204(v65);
    }

    v42 = v41;
    sub_1DB330D60(a1, v65);
    if (v66)
    {
      __swift_project_boxed_opaque_existential_1(v65, v66);
      sub_1DB408C04(v54);
      __swift_destroy_boxed_opaque_existential_0(v65);
    }

    else
    {
      sub_1DB30623C(v65, &qword_1ECC42E38, &qword_1DB50FB80);
      (*(*(v42 - 8) + 56))(v54, 1, 1, v42);
    }

    v47 = v53;
    if (swift_dynamicCast())
    {
      v35(v47, 0, 1, a5);
      v48 = *(v18 + 32);
      v48(v21, v47, a5);
      return (v48)(v61, v21, a5);
    }

    v35(v47, 1, 1, a5);
    v38(v47, v59);
  }

  v30 = sub_1DB50B3E0();
  swift_allocError();
  v32 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
  *v32 = v42;

  sub_1DB50B3C0();
  v33 = MEMORY[0x1E69E6AF8];
LABEL_25:
  (*(*(v30 - 8) + 104))(v32, *v33, v30);
  return swift_willThrow();
}

uint64_t sub_1DB4CFEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 24);
  v9[2] = *(a3 + 16);
  v9[3] = a4;
  v9[4] = v7;
  v9[5] = a5;
  v9[7] = a1;
  sub_1DB50B7C0();
  return sub_1DB4CE7F0(a2, sub_1DB4D3084, v9, a3);
}

uint64_t sub_1DB4CFF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  sub_1DB330D60(a1, v26);
  if (v27)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v26, v27);
    sub_1DB300B14(v16, v25);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v26);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    sub_1DB30623C(v26, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v17 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(a3 + 40));
  if (v17 != 2 && (v17 & 1) != 0)
  {
    v18 = sub_1DB50B3E0();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v20 = a4;

    sub_1DB50B3C0();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B08], v18);
    return swift_willThrow();
  }

LABEL_9:
  sub_1DB3171C0(a1, v25);
  v22 = *(a3 + 40);

  result = sub_1DB4CB9AC(v25, v22, a2, v26);
  if (!v9)
  {
    type metadata accessor for _JSONObjectKeyedDecodingContainer(0, a6, a8, v23);
    swift_getWitnessTable();
    return sub_1DB50B7D0();
  }

  return result;
}

uint64_t sub_1DB4D01D8(uint64_t a1, uint64_t a2)
{
  v5[1] = *(a2 + 16);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46E70, qword_1DB5221B0);
  return sub_1DB4CE7F0(a1, sub_1DB4D3064, v5, a2);
}

uint64_t sub_1DB4D0264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_1DB330D60(a1, v35);
  if (v36)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v35, v36);
    sub_1DB300B14(v14, &v31);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v35);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    sub_1DB30623C(v35, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v15 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(a3 + 40));
  if (v15 != 2 && (v15 & 1) != 0)
  {
    v16 = sub_1DB50B3E0();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434F0, &qword_1DB515DD0);
    v18[3] = a5;
    v18[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a4, a5);

    sub_1DB50B3C0();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF0], v16);
    return swift_willThrow();
  }

LABEL_9:
  sub_1DB3171C0(a1, v35);
  v21 = *(a3 + 40);
  a7[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
  a7[4] = sub_1DB4CBE14();
  v22 = swift_allocObject();
  *a7 = v22;

  v23 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, v21);
  if (v23 == 2 || (v23 & 1) == 0)
  {
    JSONObject.array.getter(&v31);
    v24 = v33;
    if (!v33)
    {
      v28 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43440, &unk_1DB521C50);
      sub_1DB3151CC(v35);
      *(&v29 + 1) = 0;
      *&v29 = sub_1DB3A6F38;
      v30 = &off_1F56FB538;
      goto LABEL_16;
    }
  }

  else
  {
    JSONObject.array.getter(&v31);
    v24 = v33;
    if (!v33)
    {

      sub_1DB30623C(&v31, &qword_1ECC42E28, &qword_1DB50FB20);
      v25 = sub_1DB50B3E0();
      swift_allocError();
      v27 = v26;

      sub_1DB50B3C0();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], v25);
      swift_willThrow();
      sub_1DB3151CC(v35);
      return __swift_deallocate_boxed_opaque_existential_0(a7);
    }
  }

  sub_1DB3151CC(v35);
  v28 = v31;
  v29 = v32;
  v30 = v34;
LABEL_16:
  *(v22 + 16) = v28;
  *(v22 + 24) = v29;
  *(v22 + 40) = v24;
  *(v22 + 48) = v30;
  *(v22 + 56) = v21;
  *(v22 + 64) = a2;
  *(v22 + 72) = 0;
}

uint64_t sub_1DB4D0688@<X0>(uint64_t *a1@<X8>)
{
  JSONObject.subscript.getter(0x7265707573, 0xE500000000000000, v16);
  v3 = sub_1DB324840(0x7265707573, 0xE500000000000000, 1, *(v1 + 48));
  sub_1DB330D60(v16, v14);
  if (v15)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_1DB300B14(v4, &v13);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v14);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_1DB30623C(v14, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v5 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v1 + 40));
  if (v5 != 2 && (v5 & 1) != 0)
  {
    v6 = sub_1DB50B3E0();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
    sub_1DB50B3C0();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    swift_willThrow();
    return sub_1DB3151CC(v16);
  }

LABEL_9:
  a1[3] = &type metadata for _JSONObjectDecoder;
  a1[4] = sub_1DB34A154();
  v10 = swift_allocObject();
  *a1 = v10;
  v11 = v16[1];
  *(v10 + 16) = v16[0];
  *(v10 + 32) = v11;
  v12 = *(v1 + 40);
  *(v10 + 48) = v17;
  *(v10 + 56) = v12;
  *(v10 + 64) = v3;
}

uint64_t sub_1DB4D08E4(uint64_t a1, uint64_t a2)
{
  v5[1] = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
  return sub_1DB4CE7F0(a1, sub_1DB4D2FF4, v5, a2);
}

uint64_t sub_1DB4D0970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1DB330D60(a1, v17);
  if (v18)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_1DB300B14(v8, v16);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v17);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_1DB30623C(v17, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v9 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(a3 + 40));
  if (v9 != 2 && (v9 & 1) != 0)
  {
    v10 = sub_1DB50B3E0();
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);

    sub_1DB50B3C0();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B08], v10);
    return swift_willThrow();
  }

LABEL_9:
  a4[3] = &type metadata for _JSONObjectDecoder;
  a4[4] = sub_1DB34A154();
  v14 = swift_allocObject();
  *a4 = v14;
  sub_1DB3171C0(a1, v14 + 16);
  *(v14 + 56) = *(a3 + 40);
  *(v14 + 64) = a2;
}

uint64_t sub_1DB4D0EB4()
{
  result = sub_1DB50BB50();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D0F04()
{
  result = sub_1DB50BB60();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D0FAC()
{
  result = sub_1DB50BB90();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D0FFC()
{
  result = sub_1DB50BB70();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D113C()
{
  result = sub_1DB50BBA0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

void *sub_1DB4D1254()
{
  v1 = *(v0 + 56);
  v2 = sub_1DB324840(v1, 0, 0, *(v0 + 48));
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v0, v3);
  if (v1 >= (*(v4 + 16))(v3, v4))
  {
    v7 = sub_1DB50B3E0();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v9 = MEMORY[0x1E69E7CA0] + 8;
    sub_1DB50B3C0();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1(v0, v5);
    (*(v6 + 24))(v1, v5, v6);
  }

  return v2;
}

uint64_t sub_1DB4D13E4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v0, v2);
  if (v1 >= (*(v3 + 16))(v2, v3))
  {
    sub_1DB324840(v1, 0, 0, *(v0 + 48));
    v7 = sub_1DB50B3E0();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v9 = MEMORY[0x1E69E7CA0] + 8;
    sub_1DB50B3C0();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1(v0, v4);
    (*(v5 + 24))(v14, v1, v4, v5);
    if (v15)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
      sub_1DB300B14(v6, v13);
      sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v14);
        v10 = 0;
        return v10 & 1;
      }

      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      sub_1DB30623C(v14, &qword_1ECC42E38, &qword_1DB50FB80);
    }

    *(v0 + 56) = v1 + 1;
    v10 = 1;
  }

  return v10 & 1;
}

void *sub_1DB4D1610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, void *a4@<X8>)
{
  v69 = a3;
  v66 = a1;
  v67 = a4;
  v70 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v64 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  MEMORY[0x1EEE9AC00](v68);
  v8 = v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v57 - v10;
  v12 = sub_1DB50B120();
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v57 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v57 - v19;
  v21 = v71;
  result = sub_1DB4D1254();
  if (!v21)
  {
    v62 = v20;
    v57[1] = v11;
    v58 = v17;
    v59 = v14;
    v60 = v8;
    v71 = v4;
    v63 = result;
    v61 = 0;
    sub_1DB330D60(v77, v73);
    if (v74)
    {
      v23 = __swift_project_boxed_opaque_existential_1(v73, v74);
      sub_1DB300B14(v23, v72);
      sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      v24 = swift_dynamicCast();
      v25 = v71;
      if ((v24 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v73);
        v27 = v62;
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0(v73);
    }

    else
    {
      sub_1DB30623C(v73, &qword_1ECC42E38, &qword_1DB50FB80);
      v25 = v71;
    }

    v26 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v25 + 40));
    v27 = v62;
    if (v26 != 2 && (v26 & 1) != 0)
    {

      v28 = sub_1DB50B3E0();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
      *v30 = v66;

      sub_1DB50B3C0();
      v31 = MEMORY[0x1E69E6B08];
LABEL_27:
      (*(*(v28 - 8) + 104))(v30, *v31, v28);
      swift_willThrow();
      return sub_1DB3151CC(v77);
    }

LABEL_10:
    sub_1DB3171C0(v77, v73);
    if (swift_dynamicCast())
    {
      sub_1DB3151CC(v77);

      v32 = v70;
      (*(v70 + 56))(v27, 0, 1, a2);
      result = (*(v32 + 32))(v67, v27, a2);
      v33 = *(v25 + 56);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (!v34)
      {
LABEL_12:
        *(v25 + 56) = v35;
        return result;
      }

      __break(1u);
    }

    else
    {
      v69 = *(v70 + 56);
      v69(v27, 1, 1, a2);
      v68 = *(v65 + 8);
      v68(v27, v12);
      v36 = sub_1DB509CA0();
      if (v36 == v66)
      {
        v44 = v36;
        JSONObject.string.getter();
        if (!v45)
        {
          v28 = sub_1DB50B3E0();
          swift_allocError();
          v30 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
          *v30 = v44;
          sub_1DB50B3C0();
          v31 = MEMORY[0x1E69E6AF8];
          goto LABEL_27;
        }

        sub_1DB509C60();

        v46 = v58;
        if (!swift_dynamicCast())
        {
          v69(v46, 1, 1, a2);
          v68(v46, v12);
          v28 = sub_1DB50B3E0();
          swift_allocError();
          v30 = v51;
          sub_1DB50B3C0();
          v31 = MEMORY[0x1E69E6B00];
          goto LABEL_27;
        }

        sub_1DB3151CC(v77);

        v69(v46, 0, 1, a2);
        result = (*(v70 + 32))(v67, v46, a2);
        v47 = *(v71 + 56);
        v34 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (!v34)
        {
          *(v71 + 56) = v48;
          return result;
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v37 = v66;
      v38 = sub_1DB509DD0();
      if (v38 == v37)
      {
        v49 = v38;
        sub_1DB330D60(v77, v73);
        if (v74)
        {
          __swift_project_boxed_opaque_existential_1(v73, v74);
          sub_1DB408C04(v60);
          v25 = v71;
          __swift_destroy_boxed_opaque_existential_0(v73);
        }

        else
        {
          sub_1DB30623C(v73, &qword_1ECC42E38, &qword_1DB50FB80);
          (*(*(v49 - 8) + 56))(v60, 1, 1, v49);
        }

        v52 = v59;
        if (swift_dynamicCast())
        {
          sub_1DB3151CC(v77);

          v69(v52, 0, 1, a2);
          result = (*(v70 + 32))(v67, v52, a2);
          v53 = *(v25 + 56);
          v34 = __OFADD__(v53, 1);
          v35 = v53 + 1;
          if (!v34)
          {
            goto LABEL_12;
          }

          __break(1u);
        }

        v69(v52, 1, 1, a2);
        v68(v52, v12);
        v54 = sub_1DB50B3E0();
        swift_allocError();
        v56 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
        *v56 = v49;
        sub_1DB50B3C0();
        (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
        swift_willThrow();
        return sub_1DB3151CC(v77);
      }

      sub_1DB3171C0(v77, v73);
      v75 = *(v25 + 40);
      v76 = v63;
      v72[3] = &type metadata for _JSONObjectDecoder;
      v72[4] = sub_1DB34A154();
      v72[0] = swift_allocObject();
      sub_1DB34A1A8(v73, v72[0] + 16);

      v39 = v64;
      v40 = v61;
      sub_1DB50ADB0();
      sub_1DB34A204(v73);
      sub_1DB3151CC(v77);
      v41 = v70;
      result = v67;
      if (v40)
      {
        return result;
      }

      v42 = *(v25 + 56);
      v34 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (!v34)
      {
        *(v25 + 56) = v43;
        return (*(v41 + 32))(result, v39, a2);
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1DB4D206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DB4D1254();
  if (!v4)
  {
    v9 = result;
    sub_1DB330D60(v23, v21);
    if (v22)
    {
      v10 = __swift_project_boxed_opaque_existential_1(v21, v22);
      sub_1DB300B14(v10, v20);
      sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v21);
LABEL_10:
        sub_1DB3171C0(v23, v20);
        v15 = *(v3 + 40);

        sub_1DB4CB9AC(v20, v15, v9, v21);
        type metadata accessor for _JSONObjectKeyedDecodingContainer(0, a2, a3, v16);
        swift_getWitnessTable();
        sub_1DB50B7D0();
        result = sub_1DB3151CC(v23);
        v17 = *(v3 + 56);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
        }

        else
        {
          *(v3 + 56) = v19;
        }

        return result;
      }

      __swift_destroy_boxed_opaque_existential_0(v21);
    }

    else
    {
      sub_1DB30623C(v21, &qword_1ECC42E38, &qword_1DB50FB80);
    }

    v11 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v3 + 40));
    if (v11 != 2 && (v11 & 1) != 0)
    {

      v12 = sub_1DB50B3E0();
      swift_allocError();
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
      *v14 = a1;

      sub_1DB50B3C0();
      (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B08], v12);
      swift_willThrow();
      return sub_1DB3151CC(v23);
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1DB4D2314@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  result = sub_1DB4D1254();
  if (!v2)
  {
    v6 = result;
    sub_1DB330D60(v31, v29);
    if (v30)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v29, v30);
      sub_1DB300B14(v7, &v25);
      sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v29);
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    else
    {
      sub_1DB30623C(v29, &qword_1ECC42E38, &qword_1DB50FB80);
    }

    v8 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v1 + 40));
    if (v8 != 2 && (v8 & 1) != 0)
    {
      v9 = sub_1DB50B3E0();
      swift_allocError();
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
      *v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46E70, qword_1DB5221B0);
      sub_1DB50B3C0();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6B08], v9);
      swift_willThrow();
      return sub_1DB3151CC(v31);
    }

LABEL_10:
    sub_1DB3171C0(v31, v29);
    v12 = *(v1 + 40);

    v13 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, v12);
    if (v13 == 2 || (v13 & 1) == 0)
    {
      JSONObject.array.getter(&v25);
      v14 = v27;
      if (!v27)
      {
        v18 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43440, &unk_1DB521C50);
        sub_1DB3151CC(v29);
        v23 = sub_1DB3A6F38;
        v19 = &off_1F56FB538;
LABEL_18:
        a1[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
        a1[4] = sub_1DB4CBE14();
        result = swift_allocObject();
        *a1 = result;
        *(result + 16) = v18;
        *(result + 24) = v23;
        *(result + 40) = v14;
        *(result + 48) = v19;
        *(result + 56) = v12;
        *(result + 64) = v6;
        *(result + 72) = 0;
        v20 = *(v3 + 56);
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          __break(1u);
        }

        else
        {
          *(v3 + 56) = v22;
          return sub_1DB3151CC(v31);
        }

        return result;
      }
    }

    else
    {
      JSONObject.array.getter(&v25);
      v14 = v27;
      if (!v27)
      {

        sub_1DB30623C(&v25, &qword_1ECC42E28, &qword_1DB50FB20);
        v15 = sub_1DB50B3E0();
        swift_allocError();
        v17 = v16;
        sub_1DB50B3C0();
        (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
        swift_willThrow();
        sub_1DB3151CC(v29);
        return sub_1DB3151CC(v31);
      }
    }

    sub_1DB3151CC(v29);
    v18 = v25;
    v23 = v26;
    v19 = v28;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1DB4D271C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB4D1254();
  if (!v2)
  {
    v5 = result;
    sub_1DB330D60(v18, v16);
    if (v17)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v16, v17);
      sub_1DB300B14(v6, &v15);
      sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v16);
LABEL_10:
        a1[3] = &type metadata for _JSONObjectDecoder;
        a1[4] = sub_1DB34A154();
        v11 = swift_allocObject();
        *a1 = v11;
        sub_1DB3171C0(v18, v11 + 16);
        *(v11 + 56) = *(v1 + 40);
        *(v11 + 64) = v5;

        result = sub_1DB3151CC(v18);
        v12 = *(v1 + 56);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          __break(1u);
        }

        else
        {
          *(v1 + 56) = v14;
        }

        return result;
      }

      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {
      sub_1DB30623C(v16, &qword_1ECC42E38, &qword_1DB50FB80);
    }

    v7 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v1 + 40));
    if (v7 != 2 && (v7 & 1) != 0)
    {
      v8 = sub_1DB50B3E0();
      swift_allocError();
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
      *v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
      sub_1DB50B3C0();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
      swift_willThrow();
      return sub_1DB3151CC(v18);
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1DB4D296C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

BOOL sub_1DB4D29C4()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  return v1 >= (*(v3 + 16))(v2, v3);
}

uint64_t sub_1DB4D2A48()
{
  v2 = v0;
  v3 = sub_1DB4D1254();
  if (v1)
  {
    return v0 & 1;
  }

  LOBYTE(v0) = sub_1DB4CC1A8(v3);
  sub_1DB3151CC(v8);

  v5 = *(v2 + 56);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (!v6)
  {
    *(v2 + 56) = v7;
    return v0 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D2C7C()
{
  result = sub_1DB50B960();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D2CCC()
{
  result = sub_1DB50B970();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D2D74()
{
  result = sub_1DB50B9A0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D2DC4()
{
  result = sub_1DB50B980();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D2F04()
{
  result = sub_1DB50B9B0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D2F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t sub_1DB4D31FC()
{
  result = qword_1ECC46E78;
  if (!qword_1ECC46E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43100, &unk_1DB511B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46E78);
  }

  return result;
}

uint64_t sub_1DB4D3260()
{
  sub_1DB330D60(v0, v10);
  if (!v11)
  {
    sub_1DB30623C(v10, &qword_1ECC42E38, &qword_1DB50FB80);
LABEL_6:
    v3 = MEMORY[0x1E69E6158];
    v2 = *(v0 + 48);
    v4 = sub_1DB50B3E0();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v6 = v3;

    sub_1DB50B3C0();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
    swift_willThrow();
    return v2;
  }

  v1 = __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_1DB300B14(v1, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
    goto LABEL_6;
  }

  v2 = v8;
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v2;
}

uint64_t sub_1DB4D33E4()
{
  v2 = v0;
  sub_1DB4D1254();
  if (v1)
  {
    return v0;
  }

  v3 = JSONObject.string.getter();
  if (!v4)
  {
    v0 = sub_1DB50B3E0();
    swift_allocError();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v10 = MEMORY[0x1E69E6158];
    sub_1DB50B3C0();
    (*(*(v0 - 8) + 104))(v10, *MEMORY[0x1E69E6AF8], v0);
    swift_willThrow();
    sub_1DB3151CC(v11);
    return v0;
  }

  v0 = v3;
  sub_1DB3151CC(v11);

  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3540(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v2)
  {
  }

  sub_1DB4CC38C(KeyPath, v4);

  result = sub_1DB3151CC(v9);
  v6 = *(v1 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 56) = v8;
  }

  return result;
}

uint64_t sub_1DB4D3608(__n128 a1)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v2)
  {
  }

  sub_1DB4CC69C(KeyPath, v4);

  result = sub_1DB3151CC(v9);
  v6 = *(v1 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 56) = v8;
  }

  return result;
}

uint64_t sub_1DB4D36D0(__n128 a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1DB4D1254();
  if (v2)
  {

    return v1;
  }

  v1 = sub_1DB4CC9AC(KeyPath, v5, MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  result = sub_1DB3151CC(v10);
  v7 = *(v3 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v3 + 56) = v9;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D37C0(__n128 a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1DB4D1254();
  if (v2)
  {

    return v1;
  }

  v1 = sub_1DB4CCCC4(KeyPath, v5, MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  result = sub_1DB3151CC(v10);
  v7 = *(v3 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v3 + 56) = v9;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D38B0(__n128 a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1DB4D1254();
  if (v2)
  {

    return v1;
  }

  v1 = sub_1DB4CCFDC(KeyPath, v5, MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  result = sub_1DB3151CC(v10);
  v7 = *(v3 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v3 + 56) = v9;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D39A4(__n128 a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1DB4D1254();
  if (v2)
  {

    return v1;
  }

  v1 = sub_1DB4CD2F4(KeyPath, v5, MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  result = sub_1DB3151CC(v10);
  v7 = *(v3 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v3 + 56) = v9;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3A98(__n128 a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1DB4D1254();
  if (v2)
  {

    return v1;
  }

  v1 = sub_1DB4CC9AC(KeyPath, v5, MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  result = sub_1DB3151CC(v10);
  v7 = *(v3 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v3 + 56) = v9;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3B8C(__n128 a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1DB4D1254();
  if (v2)
  {

    return v1;
  }

  v1 = sub_1DB4CC9AC(KeyPath, v5, MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  result = sub_1DB3151CC(v10);
  v7 = *(v3 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v3 + 56) = v9;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3C7C(__n128 a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1DB4D1254();
  if (v2)
  {

    return v1;
  }

  v1 = sub_1DB4CCCC4(KeyPath, v5, MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  result = sub_1DB3151CC(v10);
  v7 = *(v3 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v3 + 56) = v9;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3D70(__n128 a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1DB4D1254();
  if (v2)
  {

    return v1;
  }

  v1 = sub_1DB4CCFDC(KeyPath, v5, MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  result = sub_1DB3151CC(v10);
  v7 = *(v3 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v3 + 56) = v9;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3E64(__n128 a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1DB4D1254();
  if (v2)
  {

    return v1;
  }

  v1 = sub_1DB4CD2F4(KeyPath, v5, MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  result = sub_1DB3151CC(v10);
  v7 = *(v3 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v3 + 56) = v9;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3F58(__n128 a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1DB4D1254();
  if (v2)
  {

    return v1;
  }

  v1 = sub_1DB4CC9AC(KeyPath, v5, MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  result = sub_1DB3151CC(v10);
  v7 = *(v3 + 56);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v3 + 56) = v9;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D40CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F08, &unk_1DB5225E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v50 = sub_1DB50A1D0();
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - v10;
  v11 = MEMORY[0x1E69E7CC8];
  v13 = a1 + 64;
  v12 = *(a1 + 64);
  v14 = 1 << *(a1 + 32);
  v63 = MEMORY[0x1E69E7CC8];
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v49 = (v9 + 56);
  v42 = v9;
  v47 = (v9 + 32);

  v19 = 0;
  v43 = a1;
  v44 = v6;
  if (!v16)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v19 << 6);
      sub_1DB314C3C(*(a1 + 48) + 40 * v22, v60);
      sub_1DB300B14(*(a1 + 56) + 32 * v22, v61 + 8);
      v57 = v61[0];
      v58 = v61[1];
      v59 = v62;
      v55 = v60[0];
      v56 = v60[1];
      sub_1DB50A110();
      if (!v2)
      {
        break;
      }

      (*v49)(v6, 1, 1, v50);
      sub_1DB30623C(&v55, &unk_1ECC46F10, &qword_1DB516B78);
      result = sub_1DB30623C(v6, &qword_1ECC46F08, &unk_1DB5225E0);
      v2 = 0;
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    v46 = 0;
    v23 = v50;
    (*v49)(v6, 0, 1, v50);
    v24 = *v47;
    v25 = v6;
    v26 = v45;
    (*v47)(v45, v25, v23);
    v53[0] = v57;
    v53[1] = v58;
    v54 = v59;
    v52 = v56;
    v51 = v55;
    v24(v48, v26, v23);
    v27 = v24;
    v28 = *(v11 + 16);
    if (*(v11 + 24) <= v28)
    {
      sub_1DB31CB14(v28 + 1, 1);
    }

    v11 = v63;
    result = sub_1DB50B270();
    v29 = v11 + 64;
    v30 = -1 << *(v11 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    v6 = v44;
    v2 = v46;
    if (((-1 << v31) & ~*(v11 + 64 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v29 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v11 + 64 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = *(v11 + 48) + 40 * v33;
    v39 = v51;
    v40 = v52;
    *(v38 + 32) = *&v53[0];
    *v38 = v39;
    *(v38 + 16) = v40;
    v27((*(v11 + 56) + *(v42 + 72) * v33), v48, v50);
    ++*(v11 + 16);
    result = __swift_destroy_boxed_opaque_existential_0(v53 + 1);
    a1 = v43;
  }

  while (v16);
LABEL_7:
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      return v11;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1DB4D52D8()
{
  v0 = sub_1DB50A010();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1DB509FD0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1DB509FF0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1DB50A030();
  __swift_allocate_value_buffer(v3, qword_1EE312E00);
  __swift_project_value_buffer(v3, qword_1EE312E00);
  sub_1DB509FE0();
  sub_1DB509FC0();
  sub_1DB50A000();
  return sub_1DB50A020();
}

uint64_t Bag.init(from:profile:profileVersion:processInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1DB30BE90(a1, v21);
  v14 = type metadata accessor for AMSKitAMSBag();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag____lazy_storage___amsBag] = 0;
  sub_1DB30BE90(v21, &v15[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag]);
  v16 = &v15[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profile];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = &v15[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profileVersion];
  *v17 = a4;
  *(v17 + 1) = a5;
  *&v15[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_processInfo] = a6;
  v20.receiver = v15;
  v20.super_class = v14;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  result = __swift_destroy_boxed_opaque_existential_0(v21);
  *a7 = v18;
  return result;
}

id sub_1DB4D56F0(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1DB50A620();

  return v3;
}

uint64_t sub_1DB4D575C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DB50A1D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(a1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  v7 = sub_1DB50A0A0();

  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1DB50B480();
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v15[1] = v7;
    v16 = v10;
    v11 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    do
    {
      v16(v6, v11, v3);
      sub_1DB4D5974();
      (*(v9 - 8))(v6, v3);
      sub_1DB50B450();
      sub_1DB50B490();
      sub_1DB50B4A0();
      sub_1DB50B460();
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46ED0, &qword_1DB5224C0);
  v13 = sub_1DB50A980();

  return v13;
}

id sub_1DB4D5974()
{
  v1 = sub_1DB509F70();
  v46 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB50A1D0();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB50A160();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v45 - v13;
  sub_1DB50A190();
  sub_1DB50A150();
  v15 = sub_1DB50A140();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  if (v15)
  {
    return [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  if (sub_1DB50A170() != 2)
  {
    return sub_1DB50AAC0();
  }

  sub_1DB50A130();
  if ((v18 & 1) == 0)
  {
    return sub_1DB50AE10();
  }

  sub_1DB50A1B0();
  if ((v19 & 1) == 0)
  {
    return sub_1DB50AD80();
  }

  sub_1DB50A1C0();
  if (v20)
  {
    v21 = sub_1DB50A620();
LABEL_8:
    v22 = v21;

    return v22;
  }

  v23 = sub_1DB50A180();
  if (v24 >> 60 == 15)
  {
    v25 = sub_1DB50A120();
    if (v25)
    {
      sub_1DB4D89B0(v25);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46ED0, &qword_1DB5224C0);
      v26 = sub_1DB50A490();

      return v26;
    }

    else
    {
      v30 = sub_1DB50A1A0();
      if (v30)
      {
        v31 = *(v30 + 16);
        if (v31)
        {
          v49[0] = MEMORY[0x1E69E7CC0];
          v32 = v30;
          sub_1DB50B480();
          v33 = v48 + 16;
          v48 = *(v48 + 16);
          v34 = *(v33 + 64);
          v46 = v32;
          v35 = v32 + ((v34 + 32) & ~v34);
          v36 = *(v33 + 56);
          v37 = v47;
          do
          {
            (v48)(v7, v35, v37);
            sub_1DB4D5974();
            (*(v33 - 8))(v7, v37);
            sub_1DB50B450();
            sub_1DB50B490();
            sub_1DB50B4A0();
            sub_1DB50B460();
            v35 += v36;
            --v31;
          }

          while (v31);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46ED0, &qword_1DB5224C0);
        v21 = sub_1DB50A980();
        goto LABEL_8;
      }

      sub_1DB509F50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46EE0, &qword_1DB5224D0);
      sub_1DB509F40();
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1DB511620;
      v39 = v47;
      v50 = v47;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v49);
      v41 = *(v48 + 16);
      v48 += 16;
      v41(boxed_opaque_existential_0, v0, v39);
      v42 = AMSLogKey();
      if (v42)
      {
        v45[1] = v38;
        v43 = v42;
        sub_1DB50A650();
      }

      sub_1DB509F30();

      __swift_destroy_boxed_opaque_existential_0(v49);
      sub_1DB509F10();
      v50 = v39;
      v44 = __swift_allocate_boxed_opaque_existential_0(v49);
      v41(v44, v0, v39);
      sub_1DB509F20();
      sub_1DB30623C(v49, &qword_1ECC426B0, &qword_1DB50EEB0);
      sub_1DB509F60();

      (*(v46 + 8))(v3, v1);
      return 0;
    }
  }

  else
  {
    v27 = v23;
    v28 = v24;
    v29 = sub_1DB509CD0();
    sub_1DB32E340(v27, v28);
    return v29;
  }
}

id sub_1DB4D6084(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  v3 = sub_1DB50A080();

  if (v3 == 2)
  {
    return sub_1DB4D6A90(a1, 1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  if (!v4)
  {
    return sub_1DB4D6A90(a1, 1);
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 promiseWithResult_];
  v9 = [objc_opt_self() bagValueWithKey:a1 valueType:1 valuePromise:v8];

  return v9;
}

id sub_1DB4D620C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  v3 = sub_1DB50A0B0();
  v5 = v4;

  if (v5)
  {
    return sub_1DB4D6A90(a1, 2);
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  if (!v6)
  {
    return sub_1DB4D6A90(a1, 2);
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 promiseWithResult_];
  v11 = [objc_opt_self() bagValueWithKey:a1 valueType:2 valuePromise:v10];

  return v11;
}

id sub_1DB4D639C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  v3 = sub_1DB50A0E0();
  v5 = v4;

  if (v5)
  {
    return sub_1DB4D6A90(a1, 3);
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (!v6)
  {
    return sub_1DB4D6A90(a1, 3);
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 promiseWithResult_];
  v11 = [objc_opt_self() bagValueWithKey:a1 valueType:3 valuePromise:v10];

  return v11;
}

id sub_1DB4D6520(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  sub_1DB50A0C0();
  v4 = v3;

  if (!v4)
  {
    return sub_1DB4D6A90(a1, 4);
  }

  v5 = sub_1DB50A620();

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 promiseWithResult_];
  v9 = [objc_opt_self() bagValueWithKey:a1 valueType:4 valuePromise:v8];

  return v9;
}

id sub_1DB4D6698(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  sub_1DB50A100();

  v6 = sub_1DB509CA0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DB30623C(v5, &unk_1ECC42B20, &unk_1DB50F6A0);
    return sub_1DB4D6A90(a1, 5);
  }

  else
  {
    v9 = sub_1DB509BC0();
    (*(v7 + 8))(v5, v6);
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 promiseWithResult_];
    v13 = [objc_opt_self() bagValueWithKey:a1 valueType:5 valuePromise:v12];

    return v13;
  }
}

id sub_1DB4D68D8(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  v3 = sub_1DB50A0D0();

  if (!v3)
  {
    return sub_1DB4D6A90(a1, 6);
  }

  sub_1DB4D89B0(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46ED0, &qword_1DB5224C0);
  v4 = sub_1DB50A490();

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 promiseWithResult_];
  v8 = [objc_opt_self() bagValueWithKey:a1 valueType:6 valuePromise:v7];

  return v8;
}

id sub_1DB4D6A90(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_1DB50A620();
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB530F90);
  type metadata accessor for AMSBagKey(0);
  sub_1DB50B530();
  v6 = sub_1DB50A620();

  v7 = AMSError();

  v8 = sub_1DB509B10();
  v9 = [v4 failingBagValueWithKey:a1 valueType:a2 error:v8];

  return v9;
}

id sub_1DB4D6BE8()
{
  v1 = OBJC_IVAR____TtC7JetCore12AMSKitAMSBag____lazy_storage___amsBag;
  v2 = *(v0 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag____lazy_storage___amsBag);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag____lazy_storage___amsBag);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_processInfo);
    v5 = sub_1DB50A620();
    v6 = sub_1DB50A620();
    v7 = [objc_opt_self() bagForProfile:v5 profileVersion:v6 processInfo:v4];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1DB4D6CE4()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC457B8, &qword_1DB51BA18);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4D6DB0, 0, 0);
}

uint64_t sub_1DB4D6DB0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = sub_1DB4D6BE8();
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DB4D6F78;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_1DB4D8938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  sub_1DB50AAE0();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DB416D30;
  v0[13] = &block_descriptor_20;
  [v4 createSnapshotWithCompletion_];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DB4D6F78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1DB4D70FC;
  }

  else
  {
    v2 = sub_1DB4D7088;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4D7088()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DB4D70FC(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DB4D72EC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1DB4D7394;

  return sub_1DB4D6CE4();
}

uint64_t sub_1DB4D7394(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_1DB509B10();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id sub_1DB4D75E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = sub_1DB4D6A90(v6, a4);

  return v7;
}

uint64_t sub_1DB4D764C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DB306AF4;

  return sub_1DB4D72EC(v2, v3);
}

uint64_t sub_1DB4D76F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509DD0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  *&v8 = MEMORY[0x1EEE9AC00](v7 - 8).n128_u64[0];
  v10 = &v15 - v9;
  v11 = [*v1 expirationDate];
  if (v11)
  {
    v12 = v11;
    sub_1DB509DB0();

    v13 = *(v4 + 32);
    v13(v10, v6, v3);
    (*(v4 + 56))(v10, 0, 1, v3);
    return (v13)(a1, v10, v3);
  }

  else
  {
    (*(v4 + 56))(v10, 1, 1, v3);
    sub_1DB509D10();
    result = (*(v4 + 48))(v10, 1, v3);
    if (result != 1)
    {
      return sub_1DB30623C(v10, &qword_1ECC43838, &unk_1DB513310);
    }
  }

  return result;
}

void *sub_1DB4D78E8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F08, &unk_1DB5225E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v24 - v4;
  v6 = sub_1DB50A1D0();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = sub_1DB50A620();
  v11 = [v9 arrayForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC467B0, &qword_1DB5200D0);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = sub_1DB3C8D30;
  v12[4] = 0;
  v13 = sub_1DB4D5048(v12);

  if (!v13)
  {
    return 0;
  }

  v14 = *(v13 + 16);
  if (v14)
  {
    v24[1] = v13;
    v15 = v13 + 32;
    v16 = (v27 + 56);
    v17 = (v27 + 32);
    v18 = MEMORY[0x1E69E7CC0];
    v25 = (v27 + 32);
    v26 = v8;
    do
    {
      sub_1DB300B14(v15, v28);
      sub_1DB50A110();
      __swift_destroy_boxed_opaque_existential_0(v28);
      (*v16)(v5, 0, 1, v6);
      v19 = *v17;
      (*v17)(v8, v5, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DB304444(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1DB304444((v20 > 1), v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      v22 = v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21;
      v17 = v25;
      v8 = v26;
      v19(v22, v26, v6);
      v15 += 32;
      --v14;
    }

    while (v14);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

unint64_t sub_1DB4D7C24(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1DB50A620();
  v5 = [v3 dictionaryForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46780, &qword_1DB5142C0);
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = sub_1DB3C8F68;
  v6[4] = 0;
  v7 = sub_1DB4D5048(v6);

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1DB4D40CC(v7);

  v9 = sub_1DB4D7D08(v8);

  return v9;
}

unint64_t sub_1DB4D7D08(uint64_t a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46EE8, &qword_1DB5225C0);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v53 - v2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46EF0, &qword_1DB5225C8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = (&v53 - v3);
  v4 = sub_1DB50A1D0();
  v67 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46EF8, &qword_1DB5225D0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v53 - v11;
  v69 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F00, &qword_1DB5225D8);
    v12 = sub_1DB50B610();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC8];
  }

  v13 = v69 + 64;
  v14 = 1 << *(v69 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v69 + 64);
  v17 = (v14 + 63) >> 6;
  v64 = v67 + 16;
  v68 = (v67 + 32);
  v53 = v12 + 8;
  v54 = (v67 + 40);

  v19 = 0;
  v20 = v66;
  v55 = v17;
  v57 = v8;
  v63 = v12;
  v56 = v13;
  while (1)
  {
    if (!v16)
    {
      while (1)
      {
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v22 >= v17)
        {

          return v12;
        }

        v16 = *(v13 + 8 * v22);
        ++v19;
        if (v16)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v22 = v19;
LABEL_14:
    v23 = __clz(__rbit64(v16)) | (v22 << 6);
    v24 = v69;
    v25 = v65;
    sub_1DB314C3C(*(v69 + 48) + 40 * v23, v65);
    v26 = *(v24 + 56);
    v27 = *(v67 + 72);
    v28 = v26 + v27 * v23;
    v29 = *(v67 + 16);
    v29(v25 + *(v8 + 48), v28, v4);
    sub_1DB4D8C24(v25, v20);
    sub_1DB314C3C(v20, v75);
    if (!swift_dynamicCast())
    {
      break;
    }

    v16 &= v16 - 1;
    v30 = *(v8 + 48);
    v31 = v74;
    v70 = v73;
    v71 = v27;
    v32 = v61;
    v33 = *(v62 + 48);
    v29(&v61[v33], v20 + v30, v4);
    sub_1DB30623C(v20, &qword_1ECC46EF8, &qword_1DB5225D0);
    v34 = v60;
    v35 = *(v60 + 48);
    v36 = v4;
    v37 = v59;
    *v59 = v70;
    v37[1] = v31;
    v38 = *v68;
    (*v68)(v37 + v35, &v32[v33], v36);
    v39 = *(v34 + 48);
    v40 = v72;
    v42 = *v37;
    v41 = v37[1];
    v43 = v37 + v39;
    v4 = v36;
    v44 = v41;
    v45 = v58;
    v38(v58, v43, v4);
    v38(v40, v45, v4);
    v12 = v63;
    result = sub_1DB306160(v42, v44);
    v46 = result;
    if (v47)
    {
      v21 = (v12[6] + 16 * result);
      *v21 = v42;
      v21[1] = v44;

      result = (*v54)(v12[7] + v46 * v71, v72, v4);
    }

    else
    {
      v48 = v71;
      if (v12[2] >= v12[3])
      {
        goto LABEL_23;
      }

      *(v53 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v49 = (v12[6] + 16 * result);
      *v49 = v42;
      v49[1] = v44;
      result = (v38)(v12[7] + result * v48, v72, v4);
      v50 = v12[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_24;
      }

      v12[2] = v52;
    }

    v19 = v22;
    v8 = v57;
    v20 = v66;
    v13 = v56;
    v17 = v55;
  }

  sub_1DB30623C(v20, &qword_1ECC46EF8, &qword_1DB5225D0);

  return 0;
}

uint64_t sub_1DB4D82D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1DB50A620();
  v5 = [v3 BOOLForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46790, &unk_1DB5200B0);
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = sub_1DB3C8C74;
  v6[4] = 0;
  v7 = sub_1DB4D45C8(v6);

  return v7;
}

uint64_t sub_1DB4D83D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v13 = *v8;
  v14 = sub_1DB50A620();
  v15 = [v13 *a5];

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a8;
  v16[4] = 0;
  v17 = sub_1DB4D4858(v16);

  return v17;
}

uint64_t sub_1DB4D8480(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1DB50A620();
  v5 = [v3 stringForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC467A8, &unk_1DB5225A0);
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = sub_1DB3C8D04;
  v6[4] = 0;
  v7 = sub_1DB4D4AF0(v6);

  return v7;
}

uint64_t sub_1DB4D852C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1DB50A620();
  v5 = [v3 URLForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45828, &unk_1DB522590);
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = sub_1DB3C8D2C;
  v6[4] = 0;
  sub_1DB4D4D84(v6);
}

uint64_t sub_1DB4D85DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1DB30C7A0;

  return v6();
}

uint64_t sub_1DB4D86C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DB30C7A0;

  return sub_1DB4D85DC(v2, v3, v4);
}

uint64_t sub_1DB4D8784(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DB306AF4;

  return v7();
}

uint64_t sub_1DB4D886C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB4D8784(a1, v4, v5, v6);
}

unint64_t sub_1DB4D8938()
{
  result = qword_1ECC46EC0;
  if (!qword_1ECC46EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC46EC0);
  }

  return result;
}

uint64_t sub_1DB4D89B0(uint64_t a1)
{
  v35 = sub_1DB50A1D0();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46ED8, &qword_1DB5224C8);
  result = sub_1DB50B5F0();
  v5 = 0;
  v36 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v34 = v2;
  v30 = v2 + 8;
  v31 = v2 + 16;
  v29 = result + 64;
  v32 = result;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v38 = 16 * v16;
      v17 = v35;
      v18 = *(v36 + 56);
      v19 = (*(v36 + 48) + 16 * v16);
      v20 = v19[1];
      v39 = *v19;
      v21 = v33;
      v22 = v34;
      (*(v34 + 16))(v33, v18 + *(v34 + 72) * v16, v35);

      v23 = sub_1DB4D5974();
      (*(v22 + 8))(v21, v17);
      *(v29 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v32;
      v24 = (*(v32 + 48) + v38);
      *v24 = v39;
      v24[1] = v20;
      *(*(result + 56) + 8 * v16) = v23;
      v25 = *(result + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(result + 16) = v27;
      v11 = v37;
      if (!v37)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v37 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D8C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46EF8, &qword_1DB5225D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ValidatedJetPackLoadingCoordinator.ValidatedJetPackLoadingCoordinatorError.hashValue.getter()
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](0);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4D8D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1DB314B58(a1, a5);
  v10 = type metadata accessor for ValidatedJetPackLoadingCoordinator.ValidatedJetPackResult(0, a3, a4, v9);
  v11 = *(*(a3 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a3);
}

uint64_t ValidatedJetPackLoadingCoordinator.init(session:assetLocation:bag:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  result = sub_1DB2FEA0C(a2, (a4 + 1));
  a4[6] = a3;
  return result;
}

uint64_t ValidatedJetPackLoadingCoordinator.getJetPackAsset<A>(unpackAsset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[25] = a5;
  v6[26] = v5;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v6[27] = *(a4 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v9 = type metadata accessor for JetPackAsset(0);
  v6[30] = v9;
  v6[31] = *(v9 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v6[34] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F28, &qword_1DB522600);
  v6[35] = v10;
  v6[36] = *(v10 - 8);
  v6[37] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F30, &qword_1DB522608);
  v6[38] = v11;
  v6[39] = *(v11 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = type metadata accessor for ValidatedJetPackLoadingCoordinator.ValidatedJetPackResult(255, a4, a5, v12);
  v13 = sub_1DB50B120();
  v6[42] = v13;
  v6[43] = *(v13 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4D90E4, 0, 0);
}

uint64_t sub_1DB4D90E4()
{
  v1 = v0[45];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[26];
  v6 = *(v0[41] - 8);
  v0[46] = v6;
  v8 = v6 + 56;
  v7 = *(v6 + 56);
  v0[47] = v7;
  v0[48] = v8 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 1, 1);
  v9 = v5[4];
  v10 = v5[5];
  __swift_project_boxed_opaque_existential_1(v5 + 1, v9);
  (*(v10 + 40))(*v5, v5[6], v9, v10);
  sub_1DB50AC00();
  (*(v3 + 8))(v2, v4);
  v0[49] = 0;
  v11 = swift_task_alloc();
  v0[50] = v11;
  *v11 = v0;
  v11[1] = sub_1DB4D928C;
  v12 = v0[38];
  v13 = v0[34];

  return MEMORY[0x1EEE6DB90](v13, 0, 0, v12, v0 + 20);
}

uint64_t sub_1DB4D928C()
{

  if (v0)
  {
    v1 = sub_1DB4D9B44;
  }

  else
  {
    v1 = sub_1DB4D939C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1DB4D939C()
{
  v1 = *(v0 + 272);
  if ((*(*(v0 + 248) + 48))(v1, 1, *(v0 + 240)) == 1)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 392);
    sub_1DB50BEB0();
    v32 = *(v0 + 48);
    v33 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1DB50EE90;
    v35 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v4._object = 0x80000001DB531010;
    v4._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v4);
    *(v0 + 120) = MEMORY[0x1E69E6530];
    *(v0 + 96) = v2;
    sub_1DB301CDC(v0 + 96, v0 + 128);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_1DB301D4C(v0 + 128, v0 + 56);
    *(v0 + 88) = 0;
    v5 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1DB301BC0((v6 > 1), v7 + 1, 1, v5);
    }

    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    v12 = *(v0 + 336);
    v31 = *(v0 + 328);
    *(v5 + 2) = v7 + 1;
    v13 = &v5[40 * v7];
    v14 = *(v0 + 56);
    v15 = *(v0 + 72);
    v13[64] = *(v0 + 88);
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    sub_1DB301DBC(v0 + 96);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v3 + 32) = v5;
    Logger.debug(_:)(v3, v33, v32);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v10 + 16))(v11, v9, v12);
    v17 = (*(v8 + 48))(v11, 1, v31);
    v18 = *(v10 + 8);
    if (v17 == 1)
    {
      v19 = *(v0 + 360);
      v20 = *(v0 + 336);
      v18(*(v0 + 352), v20);
      sub_1DB4D9D8C();
      swift_allocError();
      swift_willThrow();
      v18(v19, v20);
    }

    else
    {
      v27 = *(v0 + 368);
      v28 = *(v0 + 352);
      v29 = *(v0 + 328);
      v30 = *(v0 + 168);
      v18(*(v0 + 360), *(v0 + 336));
      (*(v27 + 32))(v30, v28, v29);
    }

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v22 = *(v0 + 176);
    sub_1DB314B58(v1, *(v0 + 264));
    v34 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 408) = v23;
    *v23 = v0;
    v23[1] = sub_1DB4D98B8;
    v24 = *(v0 + 264);
    v25 = *(v0 + 232);

    return v34(v25, v24);
  }
}

uint64_t sub_1DB4D98B8()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1DB4D9C54;
  }

  else
  {
    v2 = sub_1DB4D99CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4D99CC()
{
  v18 = v0[49];
  v17 = v0[47];
  v1 = v0[45];
  v2 = v0[41];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  (*(v0[43] + 8))(v1, v0[42]);
  sub_1DB314B58(v3, v4);
  (*(v7 + 32))(v6, v5, v9);
  sub_1DB4D8D4C(v4, v6, v9, v8, v1);
  v10 = v17(v1, 0, 1, v2);
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    v0[49] = v18 + 1;
    v15 = swift_task_alloc();
    v0[50] = v15;
    *v15 = v0;
    v15[1] = sub_1DB4D928C;
    v13 = v0[38];
    v10 = v0[34];
    v14 = v0 + 20;
    v11 = 0;
    v12 = 0;
  }

  return MEMORY[0x1EEE6DB90](v10, v11, v12, v13, v14);
}

uint64_t sub_1DB4D9B44()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  (*(v0[39] + 8))(v0[40], v0[38]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB4D9C54()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  sub_1DB4D9DE0(v0[33]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

unint64_t sub_1DB4D9D8C()
{
  result = qword_1ECC46F38;
  if (!qword_1ECC46F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46F38);
  }

  return result;
}

uint64_t sub_1DB4D9DE0(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB4D9E40()
{
  result = qword_1ECC46F40[0];
  if (!qword_1ECC46F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC46F40);
  }

  return result;
}

uint64_t sub_1DB4D9E94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DB4D9EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB4D9F48(uint64_t a1)
{
  result = type metadata accessor for JetPackAsset(319);
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

uint64_t sub_1DB4D9FD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1DB509DD0() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((((((v12 + 40) & ~(v12 | 7)) + ((((v13 + ((v12 + 32) & ~v12) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 57) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + v14 + 16;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v17 = (v16 & ~v14) + *(v10 + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v15 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 < 2)
    {
LABEL_31:
      if (v9 >= v11)
      {
        if ((v8 & 0x80000000) != 0)
        {
          v27 = *(v7 + 48);

          return v27((v12 + ((((a1 + (v12 | 7) + 40) & ~(v12 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12);
        }

        else
        {
          v26 = *(a1 + 3);
          if (v26 >= 0xFFFFFFFF)
          {
            LODWORD(v26) = -1;
          }

          return (v26 + 1);
        }
      }

      else
      {
        v25 = *(v10 + 48);

        return v25((a1 + v16) & ~v14, v11);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_18:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = (v16 & ~v14) + *(v10 + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

void sub_1DB4DA29C(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1DB509DD0() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v13 + 80);
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = ((((v16 + ((v15 + 32) & ~v15) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 42;
  v20 = ((((((v15 + 40) & ~(v15 | 7)) + v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = ((v20 + v17) & ~v17) + *(v13 + 64);
  if (a3 <= v18)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v18 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v18 < a2)
  {
    v23 = ~v18 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_55:
              if (v22 == 2)
              {
                *(a1 + v21) = v24;
              }

              else
              {
                *(a1 + v21) = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v27;
        *(a1 + 2) = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v22)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v21) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v22)
  {
    goto LABEL_36;
  }

  *(a1 + v21) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v12 >= v14)
  {
    if (v12 >= a2)
    {
      if ((v10 & 0x80000000) != 0)
      {
        v30 = ((a1 + (v15 | 7) + 40) & ~(v15 | 7));
        if (v11 >= a2)
        {
          v32 = *(v9 + 56);

          v32((v15 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15, a2);
        }

        else
        {
          v31 = ~v11 + a2;
          bzero(v30, v19);
          if (v19 <= 3)
          {
            *v30 = v31;
          }

          else
          {
            *v30 = v31;
          }
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(a1 + 4) = 0u;
        *(a1 + 12) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 3) = (a2 - 1);
      }
    }

    else if (((((((v15 + 40) & ~(v15 | 7)) + v19 + 15) & 0xFFFFFFF8) + 26) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v29 = ~v12 + a2;
      bzero(a1, v20);
      *a1 = v29;
    }
  }

  else
  {
    v28 = *(v13 + 56);

    v28((a1 + v20 + v17) & ~v17, a2, v14);
  }
}

uint64_t sub_1DB4DA670@<X0>(__int128 *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_unknownObjectWeakInit();
  sub_1DB2FEA0C(a1, a4);
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a4 + 48) = a3;
  return result;
}

uint64_t sub_1DB4DA6D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = v2[3];
    v11 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v10);
    v12 = v2[6];
    (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = v4;
    *(v14 + 3) = v9;
    *(v14 + 4) = v12;
    (*(v5 + 32))(&v14[v13], v7, v4);
    v15 = *(v11 + 8);
    swift_unknownObjectRetain();
    v15(sub_1DB4DAA48, v14, v10, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1DB4DA868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DB50BA20();
  [swift_unknownObjectRetain() performSelector:a2 withObject:v6];
  swift_unknownObjectRelease();
  return a1;
}

uint64_t EventEmitter.addObserver(on:target:selector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DB30BE90(a1, v15);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  sub_1DB4DA670(v15, a3, v16);
  v9 = *(a5 + 24);
  v12 = type metadata accessor for NSObjectEventObserver(0, AssociatedTypeWitness, v10, v11);
  WitnessTable = swift_getWitnessTable();
  v9(v16, v12, WitnessTable, a4, a5);
  return (*(*(v12 - 8) + 8))(v16, v12);
}

uint64_t sub_1DB4DAA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4DAA8C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47080, &qword_1DB5228F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4DB694();
  sub_1DB50BE40();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47068, &qword_1DB5228E8);
  sub_1DB4DB73C(&qword_1ECC47088, sub_1DB4DB7C0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1DB50B8A0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DB4DAC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1937335659 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB4DACB8(uint64_t a1)
{
  v2 = sub_1DB4DB694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4DACF4(uint64_t a1)
{
  v2 = sub_1DB4DB694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DB4DAD30@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DB4DB4D8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t JetPackManagedKeyProvider.keyForIdentifier(_:)(int a1)
{
  v55 = a1;
  v1 = sub_1DB509CA0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = 0;
  v7 = 0;
  v61 = 0;
  v58 = "eam yield count: " & 0x2F00000000000000;
  v56 = 0x80000001DB531040;
  v8 = (v2 + 8);
  v60 = xmmword_1DB50EE90;
  v59 = v5;
  while (1)
  {
    v62 = v6;
    v9 = &unk_1F56F05E8 + 16 * v7;
    v11 = *(v9 + 4);
    v10 = *(v9 + 5);

    v12 = [v5 defaultManager];
    v13 = sub_1DB50A620();
    v14 = [v12 fileExistsAtPath_];

    if (v14)
    {
      break;
    }

LABEL_3:
    v6 = 1;
    v7 = 1;
    if (v62)
    {
      return 0;
    }
  }

  sub_1DB509BA0();
  v15 = v61;
  v16 = sub_1DB509CB0();
  if (v15)
  {
    if (qword_1ECC42238 != -1)
    {
      swift_once();
    }

    v61 = 0;
    v20 = qword_1ECC466F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v21 = swift_allocObject();
    *(v21 + 16) = v60;
    v22 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    if (v58 != 0x2000000000000000)
    {
      v57 = v15;
      v23 = v20;
      v24 = v8;
      v25 = v4;
      v26 = v1;
      v66 = MEMORY[0x1E69E6158];
      v64 = 0xD00000000000001BLL;
      v65 = v56;
      v67 = 0u;
      v68 = 0u;
      sub_1DB301D4C(&v64, &v67);
      v69 = 0;
      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      if (v28 >= v27 >> 1)
      {
        v22 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v22);
      }

      *(v22 + 2) = v28 + 1;
      v29 = &v22[40 * v28];
      v30 = v67;
      v31 = v68;
      v29[64] = v69;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v1 = v26;
      v4 = v25;
      v8 = v24;
      v20 = v23;
      v15 = v57;
    }

    v66 = MEMORY[0x1E69E6158];
    v64 = v11;
    v65 = v10;
    sub_1DB301CDC(&v64, v63);
    v67 = 0u;
    v68 = 0u;
    sub_1DB301D4C(v63, &v67);
    v69 = 0;
    v33 = *(v22 + 2);
    v32 = *(v22 + 3);
    if (v33 >= v32 >> 1)
    {
      v22 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v22);
    }

    *(v22 + 2) = v33 + 1;
    v34 = &v22[40 * v33];
    v35 = v67;
    v36 = v68;
    v34[64] = v69;
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    sub_1DB301DBC(&v64);
    *(v21 + 32) = v22;
    v37 = sub_1DB50AF20();
    if (os_log_type_enabled(v20, v37))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v38 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v38[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v38 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v40 = swift_allocObject();
      *(v40 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v67 = v21;
      *(&v67 + 1) = sub_1DB31485C;
      *&v68 = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v41 = sub_1DB50A5E0();
      v43 = v42;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v44 = swift_allocObject();
      *(v44 + 16) = v60;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1DB31494C();
      *(v44 + 32) = v41;
      *(v44 + 40) = v43;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v20, v37, v44);
    }

    goto LABEL_22;
  }

  v18 = v16;
  v19 = v17;
  sub_1DB509AF0();
  swift_allocObject();
  sub_1DB509AE0();
  sub_1DB4DB464();
  sub_1DB509AD0();
  v61 = 0;

  v45 = v67;
  LOWORD(v67) = v55;
  v46 = sub_1DB50B8F0();
  if (!*(v45 + 16))
  {

    sub_1DB30C158(v18, v19);

    goto LABEL_27;
  }

  v48 = sub_1DB306160(v46, v47);
  v50 = v49;

  if ((v50 & 1) == 0)
  {

    sub_1DB30C158(v18, v19);
LABEL_27:

LABEL_22:
    (*v8)(v4, v1);
    v5 = v59;
    goto LABEL_3;
  }

  v52 = *(v45 + 56) + 16 * v48;
  v53 = *v52;
  sub_1DB30C1AC(*v52, *(v52 + 8));

  sub_1DB30C158(v18, v19);
  (*v8)(v4, v1);

  return v53;
}

unint64_t sub_1DB4DB464()
{
  result = qword_1ECC47050;
  if (!qword_1ECC47050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47050);
  }

  return result;
}

void *sub_1DB4DB4D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47058, &qword_1DB5228E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4DB694();
  sub_1DB50BDF0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47068, &qword_1DB5228E8);
    sub_1DB4DB73C(&qword_1ECC47070, sub_1DB4DB6E8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1DB50B780();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_1DB4DB694()
{
  result = qword_1ECC47060;
  if (!qword_1ECC47060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47060);
  }

  return result;
}

unint64_t sub_1DB4DB6E8()
{
  result = qword_1ECC47078;
  if (!qword_1ECC47078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47078);
  }

  return result;
}

uint64_t sub_1DB4DB73C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC47068, &qword_1DB5228E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB4DB7C0()
{
  result = qword_1ECC47090;
  if (!qword_1ECC47090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47090);
  }

  return result;
}

unint64_t sub_1DB4DB828()
{
  result = qword_1ECC47098;
  if (!qword_1ECC47098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47098);
  }

  return result;
}

unint64_t sub_1DB4DB880()
{
  result = qword_1ECC470A0;
  if (!qword_1ECC470A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC470A0);
  }

  return result;
}

unint64_t sub_1DB4DB8D8()
{
  result = qword_1ECC470A8;
  if (!qword_1ECC470A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC470A8);
  }

  return result;
}

uint64_t sub_1DB4DB93C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 32);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v6 = v3[3];
    v7 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v6);
    result = (*(v7 + 8))(a1, v6, v7);
    v3 = v5;
    if (v9 >> 60 != 15)
    {
      return result;
    }
  }

  return 0;
}

uint64_t JetPackFileKeyProvider.keyForIdentifier(_:)(uint64_t a1)
{
  v3 = sub_1DB509CA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  v13 = *v1;
  if (*(v13 + 16) && (v14 = sub_1DB30F070(a1), (v15 & 1) != 0))
  {
    (*(v4 + 16))(v12, *(v13 + 56) + *(v4 + 72) * v14, v3);
    (*(v4 + 56))(v12, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3);
  }

  sub_1DB3778D0(v12, v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v16 = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    v16 = sub_1DB509CB0();
    (*(v4 + 8))(v6, v3);
  }

  sub_1DB37B80C(v12);
  return v16;
}

uint64_t sub_1DB4DBC64()
{
  if (qword_1EE30D148 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30D150;
  v0 = unk_1EE30D158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50F8D0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  *(v2 + 48) = 0x537363697274656DLL;
  *(v2 + 56) = 0xEF676E696C706D61;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v3 = sub_1DB50A5E0();
  v5 = v4;

  qword_1ECC67CD0 = v3;
  *algn_1ECC67CD8 = v5;
}

uint64_t MetricsSamplingLottery.init(eventName:percentage:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (qword_1ECC422F8 != -1)
  {
    swift_once();
  }

  v11 = qword_1ECC67CD0;
  v10 = *algn_1ECC67CD8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB50F8D0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  *(v12 + 48) = a1;
  *(v12 + 56) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v13 = sub_1DB50A5E0();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50F8D0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  *(v16 + 48) = 0x646563726F467369;
  *(v16 + 56) = 0xE800000000000000;

  v17 = sub_1DB50A5E0();
  v19 = v18;

  *a3 = v17;
  *(a3 + 8) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DB50F8D0;
  *(v20 + 32) = v13;
  *(v20 + 40) = v15;
  *(v20 + 48) = 0xD000000000000011;
  *(v20 + 56) = 0x80000001DB531060;
  v21 = sub_1DB50A5E0();
  v23 = v22;

  *(a3 + 16) = v21;
  *(a3 + 24) = v23;
  *(a3 + 32) = a4;
  *(a3 + 40) = a5;
  return result;
}

uint64_t sub_1DB4DBFE0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-1] - v4;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = qword_1EE30E8D0;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_1DB476604(a1, v5);
  v9 = sub_1DB509DD0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  if (v11 == 1)
  {
    sub_1DB4DC784(v5);
    v12 = 0;
  }

  else
  {
    sub_1DB509D00();
    v12 = v13;
    (*(v10 + 8))(v5, v9);
  }

  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43CB0, &qword_1DB513500);
  v19[4] = &protocol witness table for PreferenceKey<A>;
  v19[0] = v7;
  v19[1] = v6;
  if (v11 == 1)
  {
    v14 = 0;
    v18[1] = 0;
    v18[2] = 0;
    v12 = 0;
  }

  else
  {
    v14 = MEMORY[0x1E69E63B0];
  }

  v18[0] = v12;
  v18[3] = v14;
  v15 = off_1F56FE2E0[0];
  type metadata accessor for LocalPreferences();
  (v15)(v18, v19);
  return sub_1DB4DC784(a1);
}

uint64_t MetricsSamplingLottery.isForced.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v3 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v3[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v3 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
LABEL_5:
      v5 = 0;
      return v5 & 1;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_1EE30E8D0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DB376278(v1, v2);
  return v5 & 1;
}

uint64_t MetricsSamplingLottery.shouldCollect.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v35 - v2;
  v4 = sub_1DB509DD0();
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = *v0;
  v20 = *(v0 + 8);
  v21 = *(v0 + 24);
  v38 = *(v0 + 16);
  v39 = v21;
  v40 = v19;
  v23 = *(v0 + 32);
  v22 = *(v0 + 40);
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v24 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v24[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v24 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (qword_1EE30E8D0 != -1)
    {
      swift_once();
    }

    v26 = sub_1DB376278(v40, v20);
    if (v26 != 2 && (v26 & 1) != 0)
    {
      return 1;
    }

    goto LABEL_11;
  }

  if (os_unfair_lock_opaque_low)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (v23 <= 0.0)
  {
    return 0;
  }

  if (v23 >= 1.0)
  {
    return 1;
  }

  if (qword_1EE30E8D0 != -1)
  {
    swift_once();
  }

  sub_1DB3768AC(v38, v39);
  if ((v27 & 1) == 0)
  {
    sub_1DB509CF0();
    v36 = v3;
    v28 = v37;
    v35 = *(v37 + 32);
    v35(v12, v9, v4);
    sub_1DB509D30();
    v29 = v28;
    v3 = v36;
    v30 = *(v29 + 8);
    v30(v12, v4);
    v35(v18, v15, v4);
    _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
    v31 = sub_1DB509D50();
    v30(v6, v4);
    v30(v18, v4);
    if (v31)
    {
      return 1;
    }
  }

  v32 = vcvtd_n_f64_u64(sub_1DB4DC6E8(0x20000000000001uLL), 0x35uLL);
  if (v32 <= 0.0 || v32 > v23)
  {
    return 0;
  }

  v41 = v40;
  v42 = v20;
  v43 = v38;
  v44 = v39;
  v45 = v23;
  v46 = v22;

  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  (*(v37 + 56))(v3, 0, 1, v4);
  sub_1DB4DBFE0(v3);

  return 1;
}

unint64_t sub_1DB4DC6E8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E1288230](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E1288230](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB4DC784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB4DC7EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC47148, &unk_1DB522D58);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  sub_1DB4DD0C4([*(v0 + 16) valuePromise]);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v7 = sub_1DB357BD4();
  swift_retain_n();

  v11[3] = v7;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = sub_1DB50AFB0();
  v9[0] = sub_1DB4E657C;
  v9[1] = v6;
  v9[2] = sub_1DB4E65E4;
  v9[3] = v1;
  sub_1DB30BE90(v11, v10);
  v10[40] = 0;

  sub_1DB30B734(v9);
  sub_1DB30623C(v9, &qword_1ECC42850, &unk_1DB50F6B0);

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v1;
}

void *sub_1DB4DC988()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45340, &unk_1DB518F50);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13[-1] - v2;
  *(&v13[-1] - v2) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47128, &unk_1DB522D10);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v4[2] = v5;
  sub_1DB30C06C(v3, v4 + *(*v4 + 96), &unk_1ECC45340, &unk_1DB518F50);
  sub_1DB4DD274([*(v0 + 16) valuePromise]);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v7;
  v8[4] = v6;
  v9 = sub_1DB357BD4();
  swift_retain_n();

  v10 = sub_1DB50AFB0();
  v15[3] = v9;
  v15[4] = &protocol witness table for OS_dispatch_queue;
  v15[0] = v10;
  v13[0] = sub_1DB4E6118;
  v13[1] = v8;
  v13[2] = sub_1DB4E6124;
  v13[3] = v4;
  sub_1DB30BE90(v15, v14);
  v14[40] = 0;

  sub_1DB30B8E8(v13);
  sub_1DB30623C(v13, &unk_1ECC44FE0, &qword_1DB50F1F0);

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v4;
}

uint64_t sub_1DB4DCBB4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47168, &qword_1DB522D78);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB4E65FC;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D390;
  v11 = &block_descriptor_97;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB4E6600;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_100;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1DB4DCD64(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47160, &qword_1DB522D70);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB4E65F4;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D390;
  v11 = &block_descriptor_91;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB4E65F8;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_94;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1DB4DCF14(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47140, &qword_1DB522D50);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB4E6534;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D390;
  v11 = &block_descriptor_76;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB4E6538;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_79;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1DB4DD0C4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47158, &qword_1DB522D68);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB4E65EC;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D390;
  v11 = &block_descriptor_85;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB4E65F0;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_88;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1DB4DD274(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC47130, &unk_1DB522D20);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB4E612C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D390;
  v11 = &block_descriptor_49;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB4E6130;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_52;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

void sub_1DB4DD424(void *a1)
{
  swift_getErrorValue();
  if (sub_1DB3C8450(v2, v3))
  {
    sub_1DB3FBB2C(0);
  }

  else
  {
    sub_1DB3DFF70(a1);
  }
}

void sub_1DB4DD490(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v6 - v3;
  swift_getErrorValue();
  if (sub_1DB3C8450(v6[1], v6[2]))
  {
    v5 = sub_1DB509CA0();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_1DB3FBDE4(v4);
    sub_1DB30623C(v4, &unk_1ECC42B20, &unk_1DB50F6A0);
  }

  else
  {
    sub_1DB3E04B4(a1);
  }
}

uint64_t sub_1DB4DD5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DB30C4B8(a3, v22 - v9, &unk_1ECC46EB0, &qword_1DB50F750);
  v11 = sub_1DB50ABA0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1DB30623C(v10, &unk_1ECC46EB0, &qword_1DB50F750);
  }

  else
  {
    sub_1DB50AB90();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DB50AAD0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1DB50A6F0() + 32;
      type metadata accessor for JetPackAsset(0);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);
  type metadata accessor for JetPackAsset(0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1DB4DD85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DB30C4B8(a3, v22 - v9, &unk_1ECC46EB0, &qword_1DB50F750);
  v11 = sub_1DB50ABA0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1DB30623C(v10, &unk_1ECC46EB0, &qword_1DB50F750);
  }

  else
  {
    sub_1DB50AB90();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DB50AAD0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DB50A6F0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t ValidatedJetPackAssetLocation._jetPackAssetStream(session:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  swift_unknownObjectRetain();
  sub_1DB4DDB88(a1, &v8, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DB4DDB88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470B0, &qword_1DB522B40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-v11];
  v13 = *a2;
  v16 = a3;
  v17 = a4;
  v18 = v4;
  v19 = v13;
  v20 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8790], v9);
  return sub_1DB50AD70();
}

uint64_t sub_1DB4DDCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v32 = a3;
  v33 = a4;
  v30 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v28 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v29 = &v28 - v10;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_1DB50ABA0();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a2, a5);
  (*(v9 + 16))(v11, v30, v8);
  v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v9 + 80) + v22 + 8) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v31;
  *(v24 + 4) = a5;
  *(v24 + 5) = v25;
  (*(v12 + 32))(&v24[v20], v15, a5);
  v26 = v33;
  *&v24[v21] = v32;
  *&v24[v22] = v26;
  (*(v9 + 32))(&v24[v23], v29, v28);
  swift_unknownObjectRetain();

  sub_1DB388F14(0, 0, v18, &unk_1DB522D48, v24);
}

uint64_t sub_1DB4DDFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v18;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47100, &qword_1DB522D08);
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();
  type metadata accessor for JetPackAsset(0);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v8[16] = *(AssociatedTypeWitness - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[21] = v13;
  v16 = (*(v18 + 24) + **(v18 + 24));
  v14 = swift_task_alloc();
  v8[22] = v14;
  *v14 = v8;
  v14[1] = sub_1DB4DE2B0;

  return v16(v13, a8);
}

uint64_t sub_1DB4DE2B0()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4DE8C4, 0, 0);
  }

  else
  {
    v10 = (*(v2[9] + 32) + **(v2[9] + 32));
    v3 = swift_task_alloc();
    v2[24] = v3;
    *v3 = v2;
    v3[1] = sub_1DB4DE4AC;
    v4 = v2[21];
    v5 = v2[17];
    v6 = v2[8];
    v7 = v2[9];
    v8 = v2[5];

    return v10(v5, v4, v8, v6, v7);
  }
}

uint64_t sub_1DB4DE4AC()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4DE988, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_1DB4DE62C;
    v4 = v2[21];
    v5 = v2[17];
    v6 = v2[18];
    v7 = v2[14];
    v8 = v2[15];

    return JetPackAssetSession.jetPack<A>(for:fetcher:)(v7, v4, v5, v8, v6);
  }
}

uint64_t sub_1DB4DE62C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1DB4DEA64;
  }

  else
  {
    v2 = sub_1DB4DE740;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4DE740()
{
  v1 = v0[20];
  v11 = v0[19];
  v12 = v0[21];
  v2 = v0[16];
  v3 = v0[14];
  v9 = v0[15];
  v10 = v0[17];
  v4 = v0[12];
  v6 = v0[10];
  v5 = v0[11];
  sub_1DB4E6134(v3, v0[13], type metadata accessor for JetPackAsset);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD10();
  (*(v5 + 8))(v4, v6);
  v0[3] = 0;
  sub_1DB50AD20();
  sub_1DB4E604C(v3, type metadata accessor for JetPackAsset);
  (*(v2 + 8))(v10, v9);
  (*(v1 + 8))(v12, v11);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB4DE8C4()
{
  v0[2] = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD20();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB4DE988()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v0[2] = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD20();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB4DEA64()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);
  v0[2] = v0[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD20();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB4DEB60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1DB50A4B0();

  v2(v3);
}

uint64_t ValidatedJetPackAssetLocations.URLLocation.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509CA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:requestConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{

  v5 = sub_1DB509CA0();
  (*(*(v5 - 8) + 32))(a3, a1, v5);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation(0);
  *(a3 + result[5]) = 0;
  v7 = (a3 + result[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a3 + result[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:sourcePolicy:requestConfiguration:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a4@<X8>)
{

  LOBYTE(a2) = *a2;
  v7 = sub_1DB509CA0();
  (*(*(v7 - 8) + 32))(a4, a1, v7);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation(0);
  *(a4 + result[5]) = a2;
  v9 = (a4 + result[6]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a4 + result[7]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t type metadata accessor for ValidatedJetPackAssetLocations.URLLocation(uint64_t a1)
{
  result = qword_1ECC470D0;
  if (!qword_1ECC470D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:sourcePolicy:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation(0);
  *(a3 + result[5]) = v5;
  v8 = (a3 + result[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a3 + result[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:sourcePolicy:usageID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_1DB509CA0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation(0);
  *(a5 + result[5]) = v9;
  v12 = (a5 + result[6]);
  *v12 = a3;
  v12[1] = a4;
  v13 = (a5 + result[7]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t ValidatedJetPackAssetLocations.URLLocation._buildRequest()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509CA0();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation(0);
  v5 = *(v4 + 24);
  v6 = *(v1 + *(v4 + 20));
  v8 = *(v1 + v5);
  v7 = *(v1 + v5 + 8);
  v9 = type metadata accessor for URLJetPackAssetRequest(0);
  *(a1 + *(v9 + 20)) = v6;
  v10 = (a1 + *(v9 + 24));
  *v10 = v8;
  v10[1] = v7;
}

uint64_t ValidatedJetPackAssetLocations.URLLocation._buildFetcher(_:bag:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = [objc_opt_self() defaultSessionConfiguration];
  v6 = type metadata accessor for URLJetPackAssetFetcher(0);
  v7 = *(v6 + 24);
  v8 = sub_1DB509CA0();
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = (v2 + *(type metadata accessor for ValidatedJetPackAssetLocations.URLLocation(0) + 28));
  v10 = *v9;
  v11 = v9[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = a1;
  *(v12 + 32) = 1;
  *&a2[*(v6 + 28)] = v12;
  *a2 = v5;
  *(a2 + 1) = v10;
  *(a2 + 2) = v11;
  sub_1DB4B2BAC(v10);
  return swift_unknownObjectRetain();
}

uint64_t ValidatedJetPackAssetLocations.URLLocation._jetPackAssetStream(session:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470B0, &qword_1DB522B40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = v2;
  v12 = a2;
  v13 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
  return sub_1DB50AD70();
}

uint64_t sub_1DB4DF224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v26 = &v26 - v7;
  v9 = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_1DB50ABA0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1DB4E6134(v27, v12, type metadata accessor for ValidatedJetPackAssetLocations.URLLocation);
  v17 = a1;
  v18 = v5;
  (*(v6 + 16))(v8, v17, v5);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v6 + 80) + v21 + 8) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_1DB4E619C(v12, v23 + v19, type metadata accessor for ValidatedJetPackAssetLocations.URLLocation);
  v24 = v29;
  *(v23 + v20) = v28;
  *(v23 + v21) = v24;
  (*(v6 + 32))(v23 + v22, v26, v18);
  swift_unknownObjectRetain();

  sub_1DB388F14(0, 0, v15, &unk_1DB522D38, v23);
}

uint64_t sub_1DB4DF510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47100, &qword_1DB522D08);
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  type metadata accessor for JetPackAsset(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for URLJetPackAssetFetcher(0);
  v7[19] = swift_task_alloc();
  v7[20] = type metadata accessor for URLJetPackAssetRequest(0);
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4DF684, 0, 0);
}

uint64_t sub_1DB4DF684()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v34 = v0[18];
  v4 = v0[8];
  v5 = v0[9];
  v6 = sub_1DB509CA0();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v4, v6);
  v8 = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation(0);
  v9 = (v4 + v8[6]);
  v10 = *v9;
  v11 = v9[1];
  *(v1 + *(v2 + 20)) = *(v4 + v8[5]);
  v12 = (v1 + *(v2 + 24));
  *v12 = v10;
  v12[1] = v11;
  v13 = objc_opt_self();

  v14 = [v13 defaultSessionConfiguration];
  (*(v7 + 56))(&v3[*(v34 + 24)], 1, 1, v6);
  v15 = (v4 + v8[7]);
  v16 = *v15;
  v17 = v15[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v18 + 16) = v19;
  *(v18 + 24) = v5;
  *(v18 + 32) = 1;
  *&v3[*(v34 + 28)] = v18;
  *v3 = v14;
  *(v3 + 1) = v16;
  *(v3 + 2) = v17;
  sub_1DB4B2BAC(v16);
  v20 = swift_unknownObjectRetain();
  LOBYTE(v4) = sub_1DB4E5720(v20);
  v0[2] = sub_1DB509B80();
  v0[3] = v21;
  v0[4] = 0x776E647074656A2FLL;
  v0[5] = 0xE90000000000002FLL;
  sub_1DB301E30();
  v22 = sub_1DB50B1E0();

  if (v4)
  {
    v23 = swift_task_alloc();
    v0[22] = v23;
    *v23 = v0;
    v23[1] = sub_1DB4DFB0C;
    v24 = v0[21];
    v25 = v0[19];
    v26 = v0[16];
    v27 = 3;
LABEL_5:

    return sub_1DB443C40(v26, v24, v25, v27);
  }

  if (v22)
  {
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_1DB4DFEDC;
    v24 = v0[21];
    v25 = v0[19];
    v26 = v0[16];
    v27 = 2;
    goto LABEL_5;
  }

  v30 = swift_task_alloc();
  v0[25] = v30;
  *v30 = v0;
  v30[1] = sub_1DB4DFFFC;
  v31 = v0[21];
  v32 = v0[19];
  v33 = v0[16];

  return JetPackAssetSession.jetPack(urlRequest:fetcher:)(v33, v31, v32);
}

uint64_t sub_1DB4DFB0C()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;
    v3 = sub_1DB4DFDCC;
  }

  else
  {
    v3 = sub_1DB4DFC2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4DFC2C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  sub_1DB4E619C(v0[16], v3, type metadata accessor for JetPackAsset);
  sub_1DB4E6134(v3, v5, type metadata accessor for JetPackAsset);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD10();
  (*(v7 + 8))(v4, v6);
  v0[7] = 0;
  sub_1DB50AD20();
  sub_1DB4E604C(v3, type metadata accessor for JetPackAsset);
  sub_1DB4E604C(v2, type metadata accessor for URLJetPackAssetFetcher);
  sub_1DB4E604C(v1, type metadata accessor for URLJetPackAssetRequest);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB4DFDCC()
{
  v1 = v0[21];
  sub_1DB4E604C(v0[19], type metadata accessor for URLJetPackAssetFetcher);
  sub_1DB4E604C(v1, type metadata accessor for URLJetPackAssetRequest);
  v0[6] = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD20();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB4DFEDC()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;
    v3 = sub_1DB4DFDCC;
  }

  else
  {
    v3 = sub_1DB4DFC2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4DFFFC()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;
    v3 = sub_1DB4DFDCC;
  }

  else
  {
    v3 = sub_1DB4DFC2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E011C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 16))(a1, v2, v6);
  v7 = *(a2 + 24);
  LOBYTE(a2) = *(v2 + *(a2 + 20));
  v9 = *(v2 + v7);
  v8 = *(v2 + v7 + 8);
  v10 = type metadata accessor for URLJetPackAssetRequest(0);
  *(a1 + *(v10 + 20)) = a2;
  v11 = (a1 + *(v10 + 24));
  *v11 = v9;
  v11[1] = v8;
  v13 = *(v3 + 8);

  return v13();
}

uint64_t sub_1DB4E0208(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() defaultSessionConfiguration];
  v10 = type metadata accessor for URLJetPackAssetFetcher(0);
  v11 = *(v10 + 24);
  v12 = sub_1DB509CA0();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = (v4 + *(a4 + 28));
  v14 = *v13;
  v15 = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = a3;
  *(v16 + 32) = 1;
  *&a1[*(v10 + 28)] = v16;
  *a1 = v9;
  *(a1 + 1) = v14;
  *(a1 + 2) = v15;
  sub_1DB4B2BAC(v14);
  v19 = *(v5 + 8);
  swift_unknownObjectRetain();

  return v19();
}

uint64_t sub_1DB4E0390(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470B0, &qword_1DB522B40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = v2;
  v12 = a2;
  v13 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
  return sub_1DB50AD70();
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation.url()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v2[13] = swift_task_alloc();
  v3 = sub_1DB509CA0();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4E05B4, 0, 0);
}

uint64_t sub_1DB4E05B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 112);
  v10 = *(v8 + 120);
  v11 = *(v8 + 104);
  sub_1DB4E0964(v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v8 + 96);
    sub_1DB30623C(*(v8 + 104), &unk_1ECC42B20, &unk_1DB50F6A0);
    *(v8 + 16) = *v12;
    v13 = *(v12 + 16);
    v14 = *(v12 + 32);
    v15 = *(v12 + 48);
    *(v8 + 80) = *(v12 + 64);
    *(v8 + 48) = v14;
    *(v8 + 64) = v15;
    *(v8 + 32) = v13;
    v16 = swift_task_alloc();
    *(v8 + 136) = v16;
    *v16 = v8;
    v16[1] = sub_1DB4E0770;
    v17 = *(v8 + 88);

    return sub_1DB4E0FDC(v17);
  }

  else
  {
    v19 = *(v8 + 128);
    v20 = *(v8 + 112);
    v21 = *(v8 + 88);
    v22 = *(*(v8 + 120) + 32);
    v22(v19, *(v8 + 104), v20);
    v22(v21, v19, v20);

    v23 = *(v8 + 8);

    return v23();
  }
}

uint64_t sub_1DB4E0770()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1DB4E08F4;
  }

  else
  {
    v2 = sub_1DB4E0884;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4E0884()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4E08F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4E0964@<X0>(uint64_t a1@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = sub_1DB509CA0();
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  v16 = *(v1 + 56);
  v15 = *(v1 + 64);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v41[1] = v15;
    v42 = v16;
    v43 = v5;
    v44 = v11;
    v45 = v14;
    v46 = a1;
    v18 = v17;
    ObjCClassFromObject = swift_getObjCClassFromObject();
    swift_unknownObjectRetain();
    v48 = [ObjCClassFromObject uninitializedToken];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50EE90;
    *(inited + 32) = sub_1DB50A650();
    *(inited + 40) = v21;
    sub_1DB3ADB68(inited);
    swift_setDeallocating();
    sub_1DB424254(inited + 32);
    v22 = sub_1DB50ADD0();

    aBlock[4] = nullsub_8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DB4DEB60;
    aBlock[3] = &block_descriptor_55;
    v23 = _Block_copy(aBlock);
    v24 = [v18 cachedValuesForKeys:v22 observationToken:&v48 updateHandler:v23];
    _Block_release(v23);

    v25 = sub_1DB50A4B0();
    [v18 removeObserverWithToken_];
    v26 = sub_1DB50A650();
    if (*(v25 + 16))
    {
      v28 = sub_1DB306160(v26, v27);
      v30 = v29;

      if (v30)
      {
        sub_1DB300B14(*(v25 + 56) + 32 * v28, aBlock);

        if (swift_dynamicCast())
        {
          v31 = v44;
          sub_1DB509C60();

          sub_1DB30C4B8(v31, v8, &unk_1ECC42B20, &unk_1DB50F6A0);
          v32 = *(v47 + 48);
          if (v32(v8, 1, v3) == 1)
          {
            swift_unknownObjectRelease();
            v33 = 1;
            v34 = v45;
          }

          else
          {
            v38 = v43;
            (*(v47 + 32))(v43, v8, v3);
            v34 = v45;
            v42(v38);
            swift_unknownObjectRelease();
            (*(v47 + 8))(v38, v3);
            v33 = 0;
          }

          sub_1DB30623C(v31, &unk_1ECC42B20, &unk_1DB50F6A0);
          v39 = *(v47 + 56);
          v39(v34, v33, 1, v3);
          if (v32(v34, 1, v3) != 1)
          {
            v40 = v46;
            (*(v47 + 32))(v46, v34, v3);
            return (v39)(v40, 0, 1, v3);
          }

          sub_1DB30623C(v34, &unk_1ECC42B20, &unk_1DB50F6A0);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v37 = v46;
        return (*(v47 + 56))(v37, 1, 1, v3);
      }
    }

    else
    {
    }

    v37 = v46;
    swift_unknownObjectRelease();
    return (*(v47 + 56))(v37, 1, 1, v3);
  }

  v35 = *(v47 + 56);

  return v35(a1, 1, 1, v3);
}

uint64_t sub_1DB4E0FDC(uint64_t a1)
{
  *(v2 + 200) = a1;
  v3 = sub_1DB509CA0();
  *(v2 + 208) = v3;
  *(v2 + 216) = *(v3 - 8);
  *(v2 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v4 = *(v1 + 56);
  *(v2 + 264) = *v1;
  *(v2 + 280) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DB4E1110, 0, 0);
}

uint64_t sub_1DB4E1110()
{
  v1 = [*(v0 + 264) URLForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45828, &unk_1DB522590);
  inited = swift_initStackObject();
  inited[2] = v1;
  inited[3] = sub_1DB3C8D2C;
  inited[4] = 0;
  *(v0 + 296) = sub_1DB4DC988();

  return MEMORY[0x1EEE6DFA0](sub_1DB4E11D0, 0, 0);
}

uint64_t sub_1DB4E11D0()
{
  v1 = v0 + 2;
  v2 = v0[30];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB4E129C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB30A498(v3);
  sub_1DB30623C(v3, &unk_1ECC42B30, &qword_1DB50F1E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB4E129C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (v3)
  {
    swift_willThrow();

    v4 = sub_1DB4E168C;
  }

  else
  {
    v6 = *(v2 + 240);
    v5 = *(v2 + 248);

    sub_1DB30C06C(v6, v5, &unk_1ECC42B20, &unk_1DB50F6A0);
    v4 = sub_1DB4E13E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB4E13E8()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  sub_1DB30C4B8(v0[31], v1, &unk_1ECC42B20, &unk_1DB50F6A0);
  v4 = *(v3 + 48);
  v5 = 1;
  if (v4(v1, 1, v2) != 1)
  {
    v6 = v0[35];
    v7 = v0[28];
    (*(v0[27] + 32))(v7, v0[29], v0[26]);
    v6(v7);
    (*(v0[27] + 8))(v0[28], v0[26]);
    v5 = 0;
  }

  v8 = v0[32];
  v9 = v0[26];
  v10 = v0[27];
  sub_1DB30623C(v0[31], &unk_1ECC42B20, &unk_1DB50F6A0);
  (*(v10 + 56))(v8, v5, 1, v9);
  if (v4(v8, 1, v9) == 1)
  {
    sub_1DB30623C(v0[32], &unk_1ECC42B20, &unk_1DB50F6A0);
    sub_1DB4E60C4();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v0[27] + 32))(v0[25], v0[32], v0[26]);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DB4E168C()
{

  (*(v0[27] + 56))(v0[32], 1, 1, v0[26]);
  sub_1DB30623C(v0[32], &unk_1ECC42B20, &unk_1DB50F6A0);
  sub_1DB4E60C4();
  swift_allocError();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

double ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:urlTransformer:requestConfiguration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{

  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = sub_1DB4E66DC;
  }

  if (a3)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0;
  }

  *a6 = a2;
  *(a6 + 8) = a1;
  *(a6 + 16) = 0;
  result = 0.0;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = v11;
  *(a6 + 64) = v12;
  return result;
}

double ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:sourcePolicy:urlTransformer:requestConfiguration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)()@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{

  v13 = *a3;
  if (a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = sub_1DB4E66DC;
  }

  if (a4)
  {
    v15 = a5;
  }

  else
  {
    v15 = 0;
  }

  *a7 = a2;
  *(a7 + 8) = a1;
  *(a7 + 16) = v13;
  result = 0.0;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 0u;
  *(a7 + 56) = v14;
  *(a7 + 64) = v15;
  return result;
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:sourcePolicy:urlTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)()@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = sub_1DB4E66DC;
  }

  *a6 = a2;
  *(a6 + 8) = result;
  *(a6 + 16) = v6;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  if (a4)
  {
    v8 = a5;
  }

  else
  {
    v8 = 0;
  }

  *(a6 + 56) = v7;
  *(a6 + 64) = v8;
  return result;
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:sourcePolicy:usageID:urlTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)()@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  *a8 = a2;
  *(a8 + 8) = result;
  *(a8 + 16) = v8;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  if (a6)
  {
    v9 = a6;
  }

  else
  {
    v9 = sub_1DB4E66DC;
  }

  if (a6)
  {
    v10 = a7;
  }

  else
  {
    v10 = 0;
  }

  *(a8 + 40) = 0;
  *(a8 + 48) = 0;
  *(a8 + 56) = v9;
  *(a8 + 64) = v10;
  return result;
}

uint64_t sub_1DB4E1910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation._buildRequest()(uint64_t a1)
{
  *(v2 + 88) = a1;
  v3 = sub_1DB509CA0();
  *(v2 + 96) = v3;
  *(v2 + 104) = *(v3 - 8);
  v4 = swift_task_alloc();
  *(v2 + 16) = *v1;
  v5 = *(v1 + 16);
  *(v2 + 152) = v5;
  *(v2 + 33) = *(v1 + 17);
  *(v2 + 36) = *(v1 + 20);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  *(v2 + 112) = v4;
  *(v2 + 120) = v6;
  *(v2 + 128) = v7;
  *(v2 + 72) = *(v1 + 56);
  *(v2 + 56) = *(v1 + 40);
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  *(v2 + 48) = v7;
  v8 = swift_task_alloc();
  *(v2 + 136) = v8;
  *v8 = v2;
  v8[1] = sub_1DB4E1AB8;

  return ValidatedJetPackAssetLocations.BagKeyLocation.url()(v4);
}

uint64_t sub_1DB4E1AB8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1DB4E1C8C;
  }

  else
  {
    v2 = sub_1DB4E1BCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4E1BCC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 152);
  v4 = *(v0 + 88);
  (*(*(v0 + 104) + 32))(v4, *(v0 + 112), *(v0 + 96));
  v5 = type metadata accessor for URLJetPackAssetRequest(0);
  *(v4 + *(v5 + 20)) = v3;
  v6 = (v4 + *(v5 + 24));
  *v6 = v2;
  v6[1] = v1;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DB4E1C8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation._buildFetcher(_:bag:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = objc_opt_self();
  sub_1DB4B2BAC(v5);
  v8 = [v7 defaultSessionConfiguration];
  v9 = type metadata accessor for URLJetPackAssetFetcher(0);
  v10 = *(v9 + 24);
  v11 = sub_1DB509CA0();
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = a1;
  *(v12 + 32) = 1;
  *&a2[*(v9 + 28)] = v12;
  *a2 = v8;
  *(a2 + 1) = v5;
  *(a2 + 2) = v6;
  return swift_unknownObjectRetain();
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation._jetPackAssetStream(session:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470B0, &qword_1DB522B40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = *(v2 + 48);
  v16[2] = *(v2 + 32);
  v16[3] = v9;
  v17 = *(v2 + 64);
  v10 = *(v2 + 16);
  v16[0] = *v2;
  v16[1] = v10;
  v13 = v16;
  v14 = a2;
  v15 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
  return sub_1DB50AD70();
}

uint64_t sub_1DB4E1F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-v10 - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23[-v13 - 8];
  v15 = sub_1DB50ABA0();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 120) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = *(a2 + 48);
  *(v17 + 64) = *(a2 + 32);
  *(v17 + 80) = v18;
  v19 = *(a2 + 64);
  v20 = *(a2 + 16);
  *(v17 + 32) = *a2;
  *(v17 + 48) = v20;
  *(v17 + 96) = v19;
  *(v17 + 104) = a3;
  *(v17 + 112) = a4;
  (*(v9 + 32))(v17 + v16, v11, v8);
  sub_1DB4E55E0(a2, v23);
  swift_unknownObjectRetain();

  sub_1DB388F14(0, 0, v14, &unk_1DB522CD8, v17);
}

uint64_t sub_1DB4E21B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 408) = a6;
  *(v7 + 416) = a7;
  *(v7 + 392) = a4;
  *(v7 + 400) = a5;
  v9 = sub_1DB50AB20();
  *(v7 + 424) = v9;
  *(v7 + 432) = *(v9 - 8);
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  *(v7 + 456) = v10;
  v11 = *(v10 - 8);
  *(v7 + 464) = v11;
  *(v7 + 472) = *(v11 + 64);
  *(v7 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  *(v7 + 488) = swift_task_alloc();
  v12 = type metadata accessor for URLJetPackAssetFetcher(0);
  *(v7 + 496) = v12;
  v13 = *(v12 - 8);
  *(v7 + 504) = v13;
  *(v7 + 512) = *(v13 + 64);
  *(v7 + 520) = swift_task_alloc();
  *(v7 + 528) = swift_task_alloc();
  v14 = sub_1DB509CA0();
  *(v7 + 536) = v14;
  *(v7 + 544) = *(v14 - 8);
  v15 = swift_task_alloc();
  *(v7 + 552) = v15;
  v16 = type metadata accessor for URLJetPackAssetRequest(0);
  *(v7 + 560) = v16;
  v17 = *(v16 - 8);
  *(v7 + 568) = v17;
  *(v7 + 576) = *(v17 + 64);
  *(v7 + 584) = swift_task_alloc();
  *(v7 + 592) = swift_task_alloc();
  v18 = *(a4 + 48);
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = v18;
  *(v7 + 80) = *(a4 + 64);
  v19 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v19;
  v20 = swift_task_alloc();
  *(v7 + 600) = v20;
  *v20 = v7;
  v20[1] = sub_1DB4E24C8;

  return ValidatedJetPackAssetLocations.BagKeyLocation.url()(v15);
}

uint64_t sub_1DB4E24C8()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_1DB4E34C0;
  }

  else
  {
    v2 = sub_1DB4E25DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4E25DC()
{
  v70 = *(v0 + 608);
  v1 = *(v0 + 592);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 496);
  v8 = *(v0 + 392);
  v7 = *(v0 + 400);
  (*(v3 + 32))(v1, *(v0 + 552), v4);
  v9 = *(v8 + 16);
  *(v0 + 232) = *(v8 + 24);
  *(v1 + *(v2 + 20)) = v9;
  *(v1 + *(v2 + 24)) = *(v0 + 232);
  sub_1DB30C4B8(v0 + 232, v0 + 248, &unk_1ECC46C00, &qword_1DB516350);
  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  v12 = objc_opt_self();
  sub_1DB4B2BAC(v10);
  v13 = [v12 defaultSessionConfiguration];
  (*(v3 + 56))(&v5[*(v6 + 24)], 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = v7;
  *(v14 + 32) = 1;
  *&v5[*(v6 + 28)] = v14;
  *v5 = v13;
  *(v5 + 1) = v10;
  *(v5 + 2) = v11;
  v16 = swift_unknownObjectRetain();
  v17 = sub_1DB4E5980(v16);
  if (v70)
  {
    v18 = *(v0 + 592);
    sub_1DB4E604C(*(v0 + 528), type metadata accessor for URLJetPackAssetFetcher);
    sub_1DB4E604C(v18, type metadata accessor for URLJetPackAssetRequest);
    *(v0 + 328) = v70;
    sub_1DB50AD20();

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 592);
    v22 = *(v0 + 584);
    v67 = *(v0 + 576);
    v57 = *(v0 + 568);
    v23 = *(v0 + 528);
    v24 = *(v0 + 520);
    v64 = v24;
    v66 = *(v0 + 512);
    v55 = *(v0 + 504);
    v25 = *(v0 + 488);
    v69 = *(v0 + 480);
    v71 = *(v0 + 464);
    v68 = *(v0 + 456);
    v26 = *(v0 + 416);
    v58 = v26;
    v65 = *(v0 + 408);
    v27 = *(v0 + 392);
    v60 = v21;
    v63 = v17;
    *(v0 + 264) = sub_1DB509B80();
    *(v0 + 272) = v28;
    *(v0 + 280) = 0x776E647074656A2FLL;
    *(v0 + 288) = 0xE90000000000002FLL;
    sub_1DB301E30();
    v54 = sub_1DB50B1E0();

    v62 = sub_1DB50ABA0();
    v61 = *(*(v62 - 8) + 56);
    v61(v25, 1, 1, v62);
    sub_1DB4E6134(v21, v22, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB4E6134(v23, v24, type metadata accessor for URLJetPackAssetFetcher);
    v59 = *(v71 + 16);
    v59(v69, v26, v68);
    v29 = (*(v57 + 80) + 112) & ~*(v57 + 80);
    v51 = *(v57 + 80);
    v52 = *(v55 + 80);
    v30 = (v67 + v52 + v29) & ~v52;
    v56 = *(v71 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    v32 = *(v27 + 64);
    v34 = *(v27 + 32);
    v33 = *(v27 + 48);
    *(v31 + 48) = *(v27 + 16);
    *(v31 + 64) = v34;
    *(v31 + 80) = v33;
    *(v31 + 96) = v32;
    *(v31 + 32) = *v27;
    *(v31 + 104) = v65;
    sub_1DB4E619C(v22, v31 + v29, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB4E619C(v24, v31 + v30, type metadata accessor for URLJetPackAssetFetcher);
    v35 = (v31 + v30 + v66);
    v63 &= 1u;
    *v35 = v63;
    v54 &= 1u;
    v35[1] = v54;
    v53 = *(v71 + 32);
    v53(v31 + ((v30 + v66 + v56 + 2) & ~v56), v69, v68);

    sub_1DB4E55E0(v27, v0 + 88);
    v50 = sub_1DB4DD85C(0, 0, v25, &unk_1DB522CF0, v31);
    *(v0 + 616) = v50;
    v61(v25, 1, 1, v62);
    v36 = v22;
    sub_1DB4E6134(v60, v22, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB4E6134(v23, v24, type metadata accessor for URLJetPackAssetFetcher);
    v59(v69, v58, v68);
    v37 = (v51 + 104) & ~v51;
    v38 = (v67 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v52 + v39 + 8) & ~v52;
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    v42 = *(v27 + 16);
    v43 = *(v27 + 32);
    v44 = *(v27 + 48);
    *(v41 + 96) = *(v27 + 64);
    *(v41 + 64) = v43;
    *(v41 + 80) = v44;
    *(v41 + 48) = v42;
    *(v41 + 32) = *v27;
    sub_1DB4E619C(v36, v41 + v37, type metadata accessor for URLJetPackAssetRequest);
    *(v41 + v38) = v50;
    *(v41 + v39) = v65;
    sub_1DB4E619C(v64, v41 + v40, type metadata accessor for URLJetPackAssetFetcher);
    v45 = (v41 + v40 + v66);
    *v45 = v63;
    v45[1] = v54;
    v53(v41 + ((v40 + v66 + v56 + 2) & ~v56), v69, v68);

    sub_1DB4E55E0(v27, v0 + 160);

    *(v0 + 624) = sub_1DB4DD85C(0, 0, v25, &unk_1DB522D00, v41);
    v46 = swift_task_alloc();
    *(v0 + 632) = v46;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    *(v0 + 640) = v47;
    *v46 = v0;
    v46[1] = sub_1DB4E2D8C;
    v48 = MEMORY[0x1E69E7288];
    v49 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 296, v50, v49, v47, v48);
  }
}

uint64_t sub_1DB4E2D8C()
{
  v1 = *v0;
  v2 = *v0;

  *(v1 + 648) = *(v1 + 296);
  *(v1 + 305) = *(v1 + 304);
  v3 = swift_task_alloc();
  *(v1 + 656) = v3;
  *v3 = v2;
  v3[1] = sub_1DB4E2F20;
  v4 = *(v1 + 640);
  v5 = *(v1 + 624);
  v6 = MEMORY[0x1E69E7288];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v1 + 312, v5, v7, v4, v6);
}

uint64_t sub_1DB4E2F20()
{

  return MEMORY[0x1EEE6DFA0](sub_1DB4E301C, 0, 0);
}

uint64_t sub_1DB4E301C()
{
  v1 = *(v0 + 312);
  if (*(v0 + 305) != 1)
  {
    v10 = *(v0 + 592);
    v11 = *(v0 + 528);
    sub_1DB4E5FEC(*(v0 + 312), *(v0 + 320));
    *(v0 + 336) = 0;
    sub_1DB50AD20();

    sub_1DB4E604C(v11, type metadata accessor for URLJetPackAssetFetcher);
    v12 = v10;
LABEL_6:
    sub_1DB4E604C(v12, type metadata accessor for URLJetPackAssetRequest);
    goto LABEL_7;
  }

  v2 = *(v0 + 648);
  if (*(v0 + 320))
  {
    *(v0 + 368) = v2;
    v3 = v2;
    v4 = swift_dynamicCast();
    v5 = *(v0 + 648);
    v27 = *(v0 + 528);
    v28 = *(v0 + 592);
    if (v4)
    {
      v6 = *(v0 + 448);
      v7 = *(v0 + 424);
      v8 = *(v0 + 432);
      *(v0 + 384) = v1;
      v9 = v1;
      sub_1DB50AD20();

      sub_1DB4E5FEC(v5, 1);
      sub_1DB4E5FEC(v1, 1);

      sub_1DB4E604C(v27, type metadata accessor for URLJetPackAssetFetcher);
      sub_1DB4E604C(v28, type metadata accessor for URLJetPackAssetRequest);
      (*(v8 + 8))(v6, v7);

      goto LABEL_7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DB50F8D0;
    *(v22 + 32) = v2;
    *(v22 + 40) = v1;
    sub_1DB32E3B0();
    v23 = swift_allocError();
    v25 = v24;
    sub_1DB4E5FF8(v5, 1);
    sub_1DB4E5FF8(v1, 1);
    *v25 = v22;
    *(v0 + 376) = v23;
    sub_1DB50AD20();

    sub_1DB4E5FEC(v5, 1);
    sub_1DB4E5FEC(v1, 1);

    sub_1DB4E604C(v27, type metadata accessor for URLJetPackAssetFetcher);
    v12 = v28;
    goto LABEL_6;
  }

  *(v0 + 344) = v2;
  v15 = v2;
  v16 = swift_dynamicCast();
  v17 = *(v0 + 648);
  v18 = *(v0 + 592);
  v19 = *(v0 + 528);
  if (!v16)
  {

    *(v0 + 352) = v17;
    v26 = v2;
    sub_1DB50AD20();

    sub_1DB4E5FEC(v17, 1);

    sub_1DB4E604C(v19, type metadata accessor for URLJetPackAssetFetcher);
    v12 = v18;
    goto LABEL_6;
  }

  v20 = *(v0 + 432);
  v29 = *(v0 + 440);
  v21 = *(v0 + 424);
  *(v0 + 360) = 0;
  sub_1DB50AD20();

  sub_1DB4E5FEC(v17, 1);

  sub_1DB4E604C(v19, type metadata accessor for URLJetPackAssetFetcher);
  sub_1DB4E604C(v18, type metadata accessor for URLJetPackAssetRequest);
  (*(v20 + 8))(v29, v21);

LABEL_7:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DB4E34C0()
{
  v0[41] = v0[76];
  sub_1DB50AD20();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB4E35A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = v24;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47100, &qword_1DB522D08);
  v8[3] = v12;
  v8[4] = *(v12 - 8);
  v8[5] = swift_task_alloc();
  type metadata accessor for JetPackAsset(0);
  v8[6] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[7] = v13;
  v8[8] = swift_task_alloc();
  if (a8)
  {
    v14 = swift_task_alloc();
    v8[9] = v14;
    *v14 = v8;
    v14[1] = sub_1DB4E381C;
    v15 = v13;
    v16 = a6;
    v17 = a7;
    v18 = 3;
LABEL_5:

    return sub_1DB443C40(v15, v16, v17, v18);
  }

  if (v23)
  {
    v19 = swift_task_alloc();
    v8[12] = v19;
    *v19 = v8;
    v19[1] = sub_1DB4E3B5C;
    v15 = v13;
    v16 = a6;
    v17 = a7;
    v18 = 2;
    goto LABEL_5;
  }

  v21 = swift_task_alloc();
  v8[13] = v21;
  *v21 = v8;
  v21[1] = sub_1DB4E3C80;

  return JetPackAssetSession.jetPack(urlRequest:fetcher:)(v13, a6, a7);
}

uint64_t sub_1DB4E381C()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 88) = v0;
    v3 = sub_1DB4E3AD4;
  }

  else
  {
    *(v2 + 80) = 0;
    v3 = sub_1DB4E3940;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E3940()
{
  v1 = v0[10];
  sub_1DB4E619C(v0[7], v0[8], type metadata accessor for JetPackAsset);
  sub_1DB50AC80();
  if (v1)
  {
    sub_1DB4E604C(v0[8], type metadata accessor for JetPackAsset);
  }

  else
  {
    v3 = v0[8];
    v4 = v0[5];
    v5 = v0[3];
    v6 = v0[4];
    sub_1DB4E6134(v3, v0[6], type metadata accessor for JetPackAsset);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
    sub_1DB50AD10();
    (*(v6 + 8))(v4, v5);
    sub_1DB4E604C(v3, type metadata accessor for JetPackAsset);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB4E3AD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4E3B5C()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 88) = v0;
    v3 = sub_1DB4E3AD4;
  }

  else
  {
    *(v2 + 80) = 0;
    v3 = sub_1DB4E3940;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E3C80()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 88) = v0;
    v3 = sub_1DB4E3AD4;
  }

  else
  {
    *(v2 + 80) = 0;
    v3 = sub_1DB4E3940;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E3DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v18;
  *(v8 + 192) = a8;
  *(v8 + 200) = v19;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47100, &qword_1DB522D08);
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();
  type metadata accessor for JetPackAsset(0);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = type metadata accessor for URLJetPackAssetRequest(0);
  *(v8 + 264) = swift_task_alloc();
  v11 = sub_1DB509CA0();
  *(v8 + 272) = v11;
  *(v8 + 280) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 288) = v12;
  v13 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v13;
  *(v8 + 80) = *(a4 + 64);
  v14 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v14;
  v15 = swift_task_alloc();
  *(v8 + 296) = v15;
  *v15 = v8;
  v15[1] = sub_1DB4E3FB8;

  return sub_1DB4E0FDC(v12);
}

uint64_t sub_1DB4E3FB8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1DB4E4AE8;
  }

  else
  {
    v2 = sub_1DB4E40CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4E40CC()
{
  sub_1DB4E6004(&unk_1ECC47108, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  if (sub_1DB50A610())
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

    v1 = *(v0 + 8);

    return v1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  sub_1DB50AC60();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v22 = *(v0 + 272);
  v23 = *(v0 + 288);
  v5 = *(v0 + 256);
  v24 = *(v0 + 344);
  v21 = *(v0 + 160);
  sub_1DB50BEB0();
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v0 + 88), v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB50EE90;
  *(v0 + 152) = MEMORY[0x1E69E6158];
  *(v0 + 128) = 0xD000000000000055;
  *(v0 + 136) = 0x80000001DB531080;
  *(v9 + 48) = 0u;
  *(v9 + 32) = 0u;
  sub_1DB301D4C(v0 + 128, v9 + 32);
  *(v9 + 64) = 0;
  *(v8 + 32) = v9;
  Logger.info(_:)(v8, v6, v7);

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  (*(v3 + 16))(v4, v23, v22);
  *(v4 + *(v5 + 20)) = *(v21 + 16);
  v10 = (v4 + *(v5 + 24));
  *v10 = 0;
  v10[1] = 0;
  if (v24 == 1)
  {
    v11 = swift_task_alloc();
    *(v0 + 312) = v11;
    *v11 = v0;
    v11[1] = sub_1DB4E4528;
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 192);
    v15 = 3;
LABEL_11:

    return sub_1DB443C40(v13, v12, v14, v15);
  }

  if (*(v0 + 345) == 1)
  {
    v16 = swift_task_alloc();
    *(v0 + 328) = v16;
    *v16 = v0;
    v16[1] = sub_1DB4E48A8;
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 192);
    v15 = 2;
    goto LABEL_11;
  }

  v17 = swift_task_alloc();
  *(v0 + 336) = v17;
  *v17 = v0;
  v17[1] = sub_1DB4E49C8;
  v18 = *(v0 + 264);
  v19 = *(v0 + 240);
  v20 = *(v0 + 192);

  return JetPackAssetSession.jetPack(urlRequest:fetcher:)(v19, v18, v20);
}

uint64_t sub_1DB4E4528()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 320) = v0;
    v3 = sub_1DB4E47C8;
  }

  else
  {
    v3 = sub_1DB4E4648;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E4648()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  sub_1DB4E619C(v0[30], v2, type metadata accessor for JetPackAsset);
  sub_1DB4E6134(v2, v4, type metadata accessor for JetPackAsset);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD10();
  (*(v6 + 8))(v3, v5);
  sub_1DB4E604C(v2, type metadata accessor for JetPackAsset);
  sub_1DB4E604C(v1, type metadata accessor for URLJetPackAssetRequest);
  (*(v0[35] + 8))(v0[36], v0[34]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB4E47C8()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  sub_1DB4E604C(v0[33], type metadata accessor for URLJetPackAssetRequest);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB4E48A8()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 320) = v0;
    v3 = sub_1DB4E47C8;
  }

  else
  {
    v3 = sub_1DB4E4648;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E49C8()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 320) = v0;
    v3 = sub_1DB4E47C8;
  }

  else
  {
    v3 = sub_1DB4E4648;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E4AE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4E4B90(uint64_t a1)
{
  *(v2 + 88) = a1;
  v3 = sub_1DB509CA0();
  *(v2 + 96) = v3;
  *(v2 + 104) = *(v3 - 8);
  v4 = swift_task_alloc();
  *(v2 + 16) = *v1;
  v5 = *(v1 + 16);
  *(v2 + 152) = v5;
  *(v2 + 33) = *(v1 + 17);
  *(v2 + 36) = *(v1 + 20);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  *(v2 + 112) = v4;
  *(v2 + 120) = v6;
  *(v2 + 128) = v7;
  *(v2 + 72) = *(v1 + 56);
  *(v2 + 56) = *(v1 + 40);
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  *(v2 + 48) = v7;
  v8 = swift_task_alloc();
  *(v2 + 136) = v8;
  *v8 = v2;
  v8[1] = sub_1DB4E4CCC;

  return ValidatedJetPackAssetLocations.BagKeyLocation.url()(v4);
}

uint64_t sub_1DB4E4CCC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1DB4E669C;
  }

  else
  {
    v2 = sub_1DB4E66A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4E4DE0(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = objc_opt_self();
  sub_1DB4B2BAC(v7);
  v10 = [v9 defaultSessionConfiguration];
  v11 = type metadata accessor for URLJetPackAssetFetcher(0);
  v12 = *(v11 + 24);
  v13 = sub_1DB509CA0();
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = a3;
  *(v14 + 32) = 1;
  *&a1[*(v11 + 28)] = v14;
  *a1 = v10;
  *(a1 + 1) = v7;
  *(a1 + 2) = v8;
  v17 = *(v4 + 8);
  swift_unknownObjectRetain();

  return v17();
}

uint64_t sub_1DB4E4F64(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470B0, &qword_1DB522B40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = *(v2 + 48);
  v16[2] = *(v2 + 32);
  v16[3] = v9;
  v17 = *(v2 + 64);
  v10 = *(v2 + 16);
  v16[0] = *v2;
  v16[1] = v10;
  v13 = v16;
  v14 = a2;
  v15 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
  return sub_1DB50AD70();
}

uint64_t dispatch thunk of ValidatedJetPackAssetLocation._buildRequest()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB30C7A0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ValidatedJetPackAssetLocation._buildFetcher(_:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DB306AF4;

  return v13(a1, a2, a3, a4, a5);
}

void sub_1DB4E5368(uint64_t a1)
{
  sub_1DB509CA0();
  if (v1 <= 0x3F)
  {
    sub_1DB377828();
    if (v2 <= 0x3F)
    {
      sub_1DB423868(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_So25NSURLSessionConfigurationCSo0A0CIeghgo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB4E5424(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DB4E546C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB4E54CC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[13];
  v9 = v1[14];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB30C7A0;

  return sub_1DB4E21B4(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t sub_1DB4E5618(void *a1, uint64_t a2, void (*a3)(void, __n128))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11 - v7;
  a3(*a1, v6);
  v9 = sub_1DB509CA0();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_1DB3FBDE4(v8);
  return sub_1DB30623C(v8, &unk_1ECC42B20, &unk_1DB50F6A0);
}

uint64_t sub_1DB4E5720(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    ObjCClassFromObject = swift_getObjCClassFromObject();
    swift_unknownObjectRetain();
    v11 = [ObjCClassFromObject uninitializedToken];
    sub_1DB3ADB68(&unk_1F56F0838);
    sub_1DB424254(&unk_1F56F0858);
    v4 = sub_1DB50ADD0();

    aBlock[4] = nullsub_8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DB4DEB60;
    aBlock[3] = &block_descriptor_66;
    v5 = _Block_copy(aBlock);
    v6 = [v2 cachedValuesForKeys:v4 observationToken:&v11 updateHandler:v5];
    _Block_release(v5);

    v7 = sub_1DB50A4B0();
    [v2 removeObserverWithToken_];
    if (*(v7 + 16) && (v8 = sub_1DB306160(0xD000000000000015, 0x80000001DB529370), (v9 & 1) != 0))
    {
      sub_1DB300B14(*(v7 + 56) + 32 * v8, aBlock);

      swift_unknownObjectRelease();
      if (swift_dynamicCast() && (v10 & 1) != 0)
      {
        return 1;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DB4E5980(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    ObjCClassFromObject = swift_getObjCClassFromObject();
    swift_unknownObjectRetain();
    v11 = [ObjCClassFromObject uninitializedToken];
    sub_1DB3ADB68(&unk_1F56F0868);
    sub_1DB424254(&unk_1F56F0888);
    v4 = sub_1DB50ADD0();

    aBlock[4] = nullsub_8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DB4DEB60;
    aBlock[3] = &block_descriptor_21;
    v5 = _Block_copy(aBlock);
    v6 = [v2 cachedValuesForKeys:v4 observationToken:&v11 updateHandler:v5];
    _Block_release(v5);

    v7 = sub_1DB50A4B0();
    [v2 removeObserverWithToken_];
    if (*(v7 + 16) && (v8 = sub_1DB306160(0xD000000000000015, 0x80000001DB529370), (v9 & 1) != 0))
    {
      sub_1DB300B14(*(v7 + 56) + 32 * v8, aBlock);

      swift_unknownObjectRelease();
      if (swift_dynamicCast() && (v10 & 1) != 0)
      {
        return 1;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DB4E5BE0(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetRequest(0) - 8);
  v4 = (*(v3 + 80) + 112) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[13];
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1DB30C7A0;

  return sub_1DB4E35A8(a1, v9, v10, (v1 + 4), v11, v1 + v4, v1 + v7, v12);
}

uint64_t sub_1DB4E5DD4(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetRequest(0) - 8);
  v14 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for URLJetPackAssetFetcher(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v4);
  v11 = *(v1 + v5);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB30C7A0;

  return sub_1DB4E3DA4(a1, v8, v9, v1 + 32, v1 + v14, v10, v11, v1 + v7);
}

void sub_1DB4E5FEC(id a1, char a2)
{
  if (a2)
  {
  }
}

id sub_1DB4E5FF8(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DB4E6004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DB4E604C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DB4E60C4()
{
  result = qword_1ECC47118;
  if (!qword_1ECC47118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47118);
  }

  return result;
}

uint64_t sub_1DB4E6134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB4E619C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB4E6204(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ValidatedJetPackAssetLocations.URLLocation(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DB30C7A0;

  return sub_1DB4DF510(a1, v11, v12, v1 + v6, v13, v14, v1 + v10);
}

uint64_t sub_1DB4E639C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DB306AF4;

  return sub_1DB4DDFBC(a1, v10, v11, v1 + v5, v12, v13, v1 + v9, v4);
}

uint64_t objectdestroy_45Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB4E657C(void *a1)
{
  (*(v1 + 24))(&v3, *a1);
  sub_1DB3FBB2C(v3);
}

unint64_t sub_1DB4E6618()
{
  result = qword_1ECC47170;
  if (!qword_1ECC47170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47170);
  }

  return result;
}

uint64_t Result.init(trying:)@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for Result(0, a2, a2, a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  a1(v8);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a3, v10, v6);
}

uint64_t Result.init(trying:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v6 = type metadata accessor for Result(0, a4, a3, a4);
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[5] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1DB4E6978;

  return v10(v7);
}

uint64_t sub_1DB4E6978()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1DB4E6B28;
  }

  else
  {
    v2 = sub_1DB4E6A8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4E6A8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB4E6B28()
{
  **(v0 + 16) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Result.unwrap()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return swift_willThrow();
  }

  else
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
  }
}

uint64_t Result.init(from:orElse:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a3 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8, v14);
  v17 = (*(v12 + 48))(v11, 1, a3);
  v18 = *(v9 + 8);
  if (v17 != 1)
  {
    v18(a1, v8);

    v21 = *(v12 + 32);
    v21(v16, v11, a3);
    v21(a4, v16, a3);
    type metadata accessor for Result(0, a3, v22, v23);
    return swift_storeEnumTagMultiPayload();
  }

  v18(v11, v8);
  if (a2)
  {
    v18(a1, v8);
    *a4 = a2;
    type metadata accessor for Result(0, a3, v19, v20);
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t Result.map<A>(_:)@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v14, v16, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a4 = *v14;
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
  }

  type metadata accessor for Result(0, a3, v17, v18);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1DB4E7158(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1DB35C910();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB4E71D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DB4E72E8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1DB4E74B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB4E7A14(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1DB4E74FC(unsigned __int8 a1)
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC466C8, &unk_1DB51FBF0);
  if (v2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50F8D0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x80000001DB52FC20;
    *(inited + 48) = v2;
    *(inited + 56) = 0x6E6F73616572;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_1DB50AE10();
    v4 = sub_1DB314114(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC466D0, &qword_1DB522F30);
    swift_arrayDestroy();
  }

  else
  {
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1DB50EE90;
    *(v5 + 32) = 0x6E6F73616572;
    *(v5 + 40) = 0xE600000000000000;
    *(v5 + 48) = sub_1DB50AE10();
    v4 = sub_1DB314114(v5);
    swift_setDeallocating();
    sub_1DB49C170(v5 + 32);
  }

  return v4;
}

uint64_t sub_1DB4E76A4()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1 + 1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4E76EC(uint64_t a1)
{
  v2 = *v1;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v2 + 1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB4E7734()
{
  result = qword_1ECC47200;
  if (!qword_1ECC47200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47200);
  }

  return result;
}

unint64_t sub_1DB4E7788(uint64_t a1)
{
  result = sub_1DB4E77B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB4E77B0()
{
  result = qword_1ECC47208;
  if (!qword_1ECC47208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetPackAsset.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JetPackAsset.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB4E7958()
{
  result = qword_1ECC47210;
  if (!qword_1ECC47210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC47218, qword_1DB522F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47210);
  }

  return result;
}

unint64_t sub_1DB4E79C0()
{
  result = qword_1ECC47220[0];
  if (!qword_1ECC47220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC47220);
  }

  return result;
}

uint64_t sub_1DB4E7A14(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

void *ActionDispatcher.init()@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  a2[2] = 0;
  v5 = type metadata accessor for ActionImplementationBox(255, a1, a3, a4);
  swift_getTupleTypeMetadata2();
  v6 = sub_1DB50A9D0();
  v7 = sub_1DB30BC94();
  v8 = sub_1DB4EA020(v6, &type metadata for OpaqueMetatype, v5, v7);

  *a2 = v8;
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  a2[1] = result;
  return result;
}

uint64_t ActionDispatcher.add(contentsOf:)(void *a1, uint64_t a2)
{
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;

  v11 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
    }

    v6 = *(v3 + 8 * v12);
    ++v11;
    if (v6)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v6 &= v6 - 1;
        type metadata accessor for ActionImplementationBox(255, *(a2 + 16), v9, v10);
        sub_1DB30BC94();
        sub_1DB50A540();

        result = sub_1DB50A5A0();
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t ActionDispatcher.adding<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = v5[1];
  v12 = v5[2];
  *a5 = *v5;
  a5[1] = v11;
  a5[2] = v12;
  v13 = v12;

  return ActionDispatcher.add<A>(_:)(a1, a2, a3, a4);
}

__darwin_time_t ActionDispatcher.perform(_:withMetrics:asPartOf:)(void *a1, __darwin_time_t *a2, uint64_t *a3, uint64_t a4)
{
  v83 = sub_1DB50A450();
  v9 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v11 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a2;
  v13 = v4[1];
  v14 = v4[2];
  v84 = *v4;
  v85 = v14;
  static MonotonicTime.now.getter(&v86);
  v15 = v86;
  if (qword_1ECC42010 != -1)
  {
    swift_once();
  }

  v16 = off_1ECC43460;
  os_unfair_lock_lock(off_1ECC43460 + 8);
  *(v16 + 1) = v15;
  os_unfair_lock_unlock(v16 + 8);
  if (BaseObjectGraph._hasDependency<A>(_:)(a4, a4))
  {
    goto LABEL_19;
  }

  v79 = v12;
  if (qword_1ECC42268 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v82 = qword_1ECC46720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DB5128F0;
    v93 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v92 = MEMORY[0x1E69E6158];
    DynamicType = 0xD000000000000020;
    v91 = 0x80000001DB531190;
    sub_1DB301CDC(&DynamicType, v89);
    v86 = 0u;
    v87 = 0u;
    sub_1DB301D4C(v89, &v86);
    v88 = 0;
    v19 = v93;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[40 * v22];
    v24 = v86;
    v25 = v87;
    v23[64] = v88;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v93 = v19;
    sub_1DB30623C(&DynamicType, &qword_1ECC426B0, &qword_1DB50EEB0);
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    v26._object = 0x80000001DB5311C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v17 + 32) = v93;
    v93 = sub_1DB301BC0(0, 20, 0, MEMORY[0x1E69E7CC0]);
    v27._countAndFlagsBits = 1612738153;
    v27._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    v28 = (*(*a3 + 128))();
    v92 = MEMORY[0x1E69E6158];
    DynamicType = v28;
    v91 = v29;
    sub_1DB301CDC(&DynamicType, v89);
    v86 = 0u;
    v87 = 0u;
    sub_1DB301D4C(v89, &v86);
    v88 = 2;
    v30 = v93;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
      v93 = v30;
    }

    v78 = v13;
    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    v33 = &v30[40 * v32];
    v34 = v86;
    v35 = v87;
    v33[64] = v88;
    *(v33 + 2) = v34;
    *(v33 + 3) = v35;
    v93 = v30;
    sub_1DB30623C(&DynamicType, &qword_1ECC426B0, &qword_1DB50EEB0);
    v36._countAndFlagsBits = 0x7463656A626F2060;
    v36._object = 0xEF2E687061726720;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v17 + 40) = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v37 = swift_allocObject();
    v81 = xmmword_1DB50EE90;
    *(v37 + 16) = xmmword_1DB50EE90;
    v38 = MEMORY[0x1E69E6158];
    *(&v87 + 1) = MEMORY[0x1E69E6158];
    *&v86 = 0xD00000000000003ALL;
    *(&v86 + 1) = 0x80000001DB5311F0;
    *(v37 + 48) = 0u;
    *(v37 + 32) = 0u;
    sub_1DB301D4C(&v86, v37 + 32);
    *(v37 + 64) = 0;
    *(v17 + 48) = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = v81;
    *(&v87 + 1) = v38;
    *&v86 = 0xD00000000000001ALL;
    *(&v86 + 1) = 0x80000001DB531230;
    *(v39 + 48) = 0u;
    *(v39 + 32) = 0u;
    sub_1DB301D4C(&v86, v39 + 32);
    *(v39 + 64) = 0;
    *(v17 + 56) = v39;
    v40 = sub_1DB50AF40();
    if (os_log_type_enabled(v82, v40))
    {
      break;
    }

    a1 = v80;
    v12 = v79;
    v13 = v78;
    v48 = v85;
    if (!v85)
    {
      goto LABEL_21;
    }

LABEL_20:
    *v11 = v48;
    v49 = v83;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v83);
    v50 = v48;
    v51 = sub_1DB50A460();
    v52 = *(v9 + 8);
    v9 += 8;
    v52(v11, v49);
    if (v51)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v41 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v41[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v41 + 5);
  v13 = v78;
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  v43 = swift_allocObject();
  *(v43 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
  *&v86 = v17;
  *(&v86 + 1) = sub_1DB31485C;
  *&v87 = v43;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
  sub_1DB314864();
  v44 = sub_1DB50A5E0();
  v46 = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
  v47 = swift_allocObject();
  *(v47 + 16) = v81;
  *(v47 + 56) = MEMORY[0x1E69E6158];
  *(v47 + 64) = sub_1DB31494C();
  *(v47 + 32) = v44;
  *(v47 + 40) = v46;
  sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v82, v40, v47);

  a1 = v80;
  v12 = v79;
LABEL_19:
  v48 = v85;
  if (v85)
  {
    goto LABEL_20;
  }

LABEL_21:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v53 = *(a4 + 16);
  type metadata accessor for ActionImplementationBox(0, v53, v54, v55);
  sub_1DB30BC94();
  sub_1DB50A590();
  v58 = v86;
  if (v86)
  {
    *&v86 = v12;
    type metadata accessor for ActionDispatcher.MetricsBehavior(0, v53, v56, v57);
    v59 = sub_1DB4E8CB0(a3);
    v60 = v13[2];
    v61 = v13[3];
    v62 = v13[4];
    v63 = sub_1DB30C9C0(v60, v61, v62);
    if (v60)
    {
      v84 = &v77;
      MEMORY[0x1EEE9AC00](v63);
      *(&v77 - 4) = v58;
      *(&v77 - 3) = a1;
      *(&v77 - 2) = v59;
      v64 = a1;
      v65 = *(*v59 + 104);
      v85 = a3;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
      v65(&DynamicType, sub_1DB4EA5C4, &v77 - 6, v66);
      v67 = DynamicType;
      sub_1DB30BE90(v64, &v86);
      v68 = swift_allocObject();
      v68[2] = v53;
      v68[3] = v60;
      v68[4] = v61;
      v68[5] = v62;
      sub_1DB2FEA0C(&v86, (v68 + 6));
      v68[11] = v85;
      sub_1DB30C9C0(v60, v61, v62);

      v69 = sub_1DB4E9E94(sub_1DB4EA3A0, v68, v67);

      sub_1DB3798E8(v60, v61, v62);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v63);
      *(&v77 - 4) = v58;
      *(&v77 - 3) = a1;
      *(&v77 - 2) = v59;
      v73 = *(*v59 + 104);

      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
      v73(&v86, sub_1DB4EA324, &v77 - 6, v74);

      return v86;
    }
  }

  else
  {
    v70 = v13[2];
    v71 = v13[3];
    v72 = v13[4];
    sub_1DB30C9C0(v70, v71, v72);
    if (v70)
    {
      *&v86 = v70;
      *(&v86 + 1) = v71;
      *&v87 = v72;
      DynamicType = v12;
      v69 = ActionDispatcher.perform(_:withMetrics:asPartOf:)(a1, &DynamicType, a3, a4);
      sub_1DB3798E8(v70, v71, v72);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
      v69 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
      v75 = swift_allocObject();
      *(v75 + 16) = 0;
      *(v69 + 16) = v75;
      *(v69 + 24) = 1;
      *(v69 + 32) = 1;
    }
  }

  return v69;
}

uint64_t sub_1DB4E8784(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  a2(&v10);
  v8[0] = sub_1DB4EA5B4;
  v8[1] = a4;
  v8[2] = sub_1DB4EA5BC;
  v8[3] = a4;
  sub_1DB30BE90(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1DB308088(v8);

  return sub_1DB30623C(v8, &unk_1ECC44FC0, &unk_1DB50F4E0);
}

uint64_t sub_1DB4E884C(char a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1 & 1;
  a2(&v10);
  v8[0] = sub_1DB4EA5AC;
  v8[1] = a4;
  v8[2] = sub_1DB4EA5C0;
  v8[3] = a4;
  sub_1DB30BE90(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1DB308EE8(v8);

  return sub_1DB30623C(v8, &unk_1ECC44FD0, &qword_1DB50F1D0);
}

uint64_t sub_1DB4E8988(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 104) - 8) + 32))(v2 + *(*v2 + 120), a1);
  return v2;
}

uint64_t sub_1DB4E8A1C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14[-v9 - 8];
  sub_1DB30BE90(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350);
  swift_dynamicCast();
  v11 = (*(v5 + 32))(v10, a2, v6, v5);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v11;
}

uint64_t sub_1DB4E8C04()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DB4E8CB0(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  if (*v1)
  {
    v4 = *(a1 + 16);

    if ((sub_1DB4C1A60(v4) & 1) == 0)
    {
      v6[4] = &type metadata for MetricsFieldsContext;
      v6[0] = &type metadata for MetricsFieldsContext;
      v6[1] = v3;
      v2 = (*(*v2 + 184))(v6);
      sub_1DB30BF1C(v6);
      return v2;
    }
  }

  return v2;
}

uint64_t ActionDispatcher.PerformError.hashValue.getter()
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](0);
  return sub_1DB50BD30();
}

uint64_t ActionDispatcher.next.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_1DB30C9C0(v3, v4, v5);
}

double sub_1DB4E8E24@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v8 = *a1;
  v9 = v3;
  ActionDispatcher.next.getter(&v6);
  v4 = v7;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1DB4E8E78(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  *&v4 = *a1;
  *(&v4 + 1) = v1;
  v5 = v2;
  sub_1DB30C9C0(v4, v1, v2);
  return ActionDispatcher.next.setter(&v4);
}

uint64_t ActionDispatcher.next.setter(__int128 *a1)
{
  v5 = *a1;
  v2 = *(a1 + 2);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 32) = v2;

  *(v1 + 8) = v3;
  return result;
}

void (*ActionDispatcher.next.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = *(v1 + 8);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  sub_1DB30C9C0(v4, v5, v6);
  return sub_1DB4E8F80;
}

void sub_1DB4E8F80(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {
    sub_1DB30C9C0(*a1, v2, v4);
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = v2;
    v6[4] = v4;

    *(v5 + 8) = v6;

    sub_1DB3798E8(v3, v2, v4);
  }

  else
  {
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v2;
    v7[4] = v4;

    *(v5 + 8) = v7;
  }
}

uint64_t ActionDispatcher.withNext(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  *a2 = *v2;
  a2[2] = v4;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v4;

  sub_1DB30C9C0(v5, v6, v7);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;

  a2[1] = v9;
  return result;
}

void *ActionDispatcher.targetQueue.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t ActionDispatcher.withTargetQueue(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = a1;
  v5 = a1;
}

BOOL ActionDispatcher._hasImplementation(forType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActionImplementationBox(0, *(a3 + 16), a3, a4);
  sub_1DB30BC94();
  sub_1DB50A590();
  if (v5)
  {
  }

  return v5 != 0;
}

uint64_t ActionDispatcher.add<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ConcreteActionImplementationBox(0, a3, a4, v12);
  (*(v8 + 16))(v10, a1, a3);
  v13 = sub_1DB4E8988(v10);
  v17[0] = AssociatedTypeWitness;
  v17[1] = v13;
  type metadata accessor for ActionImplementationBox(255, *(a2 + 16), v14, v15);
  sub_1DB30BC94();
  sub_1DB50A540();
  return sub_1DB50A5A0();
}

uint64_t ActionDispatcher.removeImplementation(forType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActionImplementationBox(255, *(a3 + 16), a3, a4);
  sub_1DB30BC94();
  sub_1DB50A540();
  sub_1DB50A4C0();
}

uint64_t ActionDispatcher.removingImplementation(forType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = v3[1];
  v8 = v3[2];
  *a3 = *v3;
  a3[1] = v7;
  a3[2] = v8;
  v9 = v8;

  return ActionDispatcher.removeImplementation(forType:)(a1, v10, a2, v11);
}

Swift::Void __swiftcall ActionDispatcher.removeAllImplementations()()
{
  type metadata accessor for ActionImplementationBox(255, *(v0 + 16), v1, v2);
  sub_1DB30BC94();
  sub_1DB50A540();

  sub_1DB50A530();
}

void ActionDispatcher.removingAllImplementations()(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  v5 = v4;

  ActionDispatcher.removeAllImplementations()();
}

uint64_t ActionDispatcher.adding(contentsOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3[1];
  v8 = v3[2];
  *a3 = *v3;
  a3[1] = v7;
  a3[2] = v8;
  v9 = v8;

  return ActionDispatcher.add(contentsOf:)(a1, a2);
}

__darwin_time_t sub_1DB4E957C(_BYTE *a1, __darwin_time_t a2, __darwin_time_t a3, __darwin_time_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  if (*a1 == 1)
  {
    v13[1] = a2;
    v13[2] = a3;
    v13[3] = a4;
    v13[0] = 0;
    v9 = type metadata accessor for ActionDispatcher(0, a7, a3, a4);
    return ActionDispatcher.perform(_:withMetrics:asPartOf:)(a5, v13, a6, v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v12 = swift_allocObject();
    result = v11;
    *(v12 + 16) = 0;
    *(v11 + 16) = v12;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;
  }

  return result;
}

uint64_t ActionDispatcher.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 8);
  type metadata accessor for ActionImplementationBox(0, *(a1 + 16), a3, a4);
  sub_1DB30BC94();
  v7 = sub_1DB50A500();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1E1285DC0](&v22, v7, WitnessTable);
  sub_1DB50B340();
  swift_getWitnessTable();
  sub_1DB50B650();

  sub_1DB50B510();
  swift_getWitnessTable();
  sub_1DB301E30();
  v9 = sub_1DB50A900();
  v11 = v10;

  v12 = v6[2];
  v13 = v6[3];
  v14 = v6[4];
  sub_1DB30C9C0(v12, v13, v14);
  if (v12)
  {
    v23 = v12;
    v24 = v13;
    v25 = v14;
    v15 = ActionDispatcher.debugDescription.getter(a1);
    v17 = v16;
    sub_1DB3798E8(v12, v13, v14);
  }

  else
  {
    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1DB50B320();
  v18 = sub_1DB50BEE0();
  v20 = v19;

  v23 = v18;
  v24 = v20;
  MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB5312A0);
  MEMORY[0x1E1285C70](v9, v11);

  MEMORY[0x1E1285C70](0x3A7478656E202C5DLL, 0xE900000000000020);
  MEMORY[0x1E1285C70](v15, v17);

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return v23;
}

uint64_t sub_1DB4E9910@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DB50BEE0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t ActionDispatcher.perform(_:withMetrics:asPartOf:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 176) = a4;
  *(v6 + 184) = a5;
  *(v6 + 160) = a1;
  *(v6 + 168) = a2;
  *(v6 + 192) = *a3;
  *(v6 + 200) = *v5;
  *(v6 + 216) = *(v5 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DB4E9980, 0, 0);
}

uint64_t sub_1DB4E9980()
{
  v6 = v0;
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[24];
  v0[28] = ActionDispatcher.perform(_:withMetrics:asPartOf:)(v2, &v5, v3, v1);

  return MEMORY[0x1EEE6DFA0](sub_1DB4E9A0C, 0, 0);
}

uint64_t sub_1DB4E9A0C()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 153;
  v0[3] = sub_1DB4E9AD8;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB308EE8(v2);
  sub_1DB30623C(v2, &unk_1ECC44FD0, &qword_1DB50F1D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB4E9AD8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 232) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB4E9C34, 0, 0);
  }

  else
  {
    v5 = *(v2 + 160);

    *v5 = *(v2 + 153);
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_1DB4E9C34()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1DB4E9CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB50A5C0();

  return sub_1DB4E9D0C(a1, v6, a2, a3);
}

unint64_t sub_1DB4E9D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1DB50A610();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1DB4E9E94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13[3] = &type metadata for SyncTaskScheduler;
  v13[4] = &protocol witness table for SyncTaskScheduler;
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 32) = 0;
  sub_1DB30BE90(v13, v12);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  sub_1DB2FEA0C(v12, (v8 + 5));
  v10[0] = sub_1DB4EA594;
  v10[1] = v8;
  v10[2] = sub_1DB4EA5A8;
  v10[3] = v5;
  sub_1DB30BE90(v13, v11);
  v11[40] = 0;
  swift_retain_n();

  sub_1DB308EE8(v10);

  sub_1DB30623C(v10, &unk_1ECC44FD0, &qword_1DB50F1D0);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v5;
}

unint64_t sub_1DB4EA020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1DB50AA00())
  {
    sub_1DB50B620();
    v13 = sub_1DB50B610();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1DB50AA00();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1DB50A9F0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1DB50B380();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1DB4E9CB0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}