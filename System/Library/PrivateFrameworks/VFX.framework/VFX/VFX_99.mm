unint64_t sub_1AF8A3E9C@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  if (v8 < 0)
  {
    v10 = *(v1 + 24);
    v11 = *(v1 + 8);
    v9 = *(v1 + 40);
    result = sub_1AF6C97E0(result);
    v6 = v9;
    v5 = v10;
    v4 = v11;
    LOBYTE(v8) = 0x80;
  }

  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  return result;
}

char *sub_1AF8A3F20(void *a1)
{
  v2 = [a1 arrayLength];
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = [a1 elementStructType];
      if (v5)
      {
        v6 = v5;
        v7 = sub_1AF8A40DC(v5);
      }

      else
      {
        v8 = [a1 elementArrayType];
        if (!v8)
        {
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v6 = v8;
        v7 = sub_1AF8A3F20(v8);
      }

      v9 = v7;

      v10 = *(v9 + 16);
      v11 = *(v4 + 2);
      v12 = v11 + v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v12 <= *(v4 + 3) >> 1)
      {
        if (*(v9 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        v4 = sub_1AF4265B0(isUniquelyReferenced_nonNull_native, v14, 1, v4);
        if (*(v9 + 16))
        {
LABEL_17:
          swift_arrayInitWithCopy();

          if (v10)
          {
            *(v4 + 2) += v10;
          }

          goto LABEL_4;
        }
      }

LABEL_4:
      if (!--v3)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1AF8A40DC(void *a1)
{
  v1 = [a1 members];
  sub_1AF8AB4DC();
  v2 = sub_1AFDFD418();

  if (v2 >> 62)
  {
    v3 = sub_1AFDFE108();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v89 = v2;
  if (v3)
  {
    v4 = 0;
    v93 = v2 & 0xC000000000000001;
    v91 = v2 + 32;
    v95 = MEMORY[0x1E69E7CC0];
    v92 = v3;
    while (1)
    {
      v94 = v4;
      if (v93)
      {
        v5 = MEMORY[0x1B2719C70](v4, v89);
      }

      else
      {
        v5 = *(v91 + 8 * v4);
      }

      v6 = v5;
      v7 = [v5 structType];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1AF8A40DC(v7);

        goto LABEL_11;
      }

      v17 = [v6 arrayType];
      if (!v17)
      {
        v84 = v6;
        sub_1AF8AB110(v84, &v113);
        v85 = v114;
        if (v114)
        {
          v86 = v113;
          sub_1AF8AB7E4(0, &qword_1ED721EB0, &type metadata for ShaderArgument, MEMORY[0x1E69E6F90]);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_1AFE431C0;
          *(v9 + 32) = v86;
          *(v9 + 40) = v85;
          v87 = v116[0];
          *(v9 + 48) = v115;
          *(v9 + 64) = v87;
          *(v9 + 73) = *(v116 + 9);
        }

        else
        {
          v9 = MEMORY[0x1E69E7CC0];
        }

        v6 = v84;
        goto LABEL_11;
      }

      v90 = v6;
      v6 = v17;
      v96 = [v17 arrayLength];
      if (v96)
      {
        break;
      }

      v9 = MEMORY[0x1E69E7CC0];
LABEL_11:

      v10 = v9;
      v11 = *(v9 + 16);
      v12 = v95;
      v13 = *(v95 + 2);
      v14 = v13 + v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v14 > *(v95 + 3) >> 1)
      {
        if (v13 <= v14)
        {
          v16 = v13 + v11;
        }

        else
        {
          v16 = v13;
        }

        v12 = sub_1AF4265B0(isUniquelyReferenced_nonNull_native, v16, 1, v95);
      }

      v95 = v12;
      if (*(v10 + 16))
      {
        swift_arrayInitWithCopy();

        if (v11)
        {
          *(v12 + 2) += v11;
        }
      }

      else
      {
      }

      v4 = v94 + 1;
      if (v94 + 1 == v92)
      {
        goto LABEL_127;
      }
    }

    v97 = v6;
    v18 = 0;
    v99 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v98 = v18;
      v20 = [v97 elementStructType];
      if (v20)
      {
        v21 = v20;
        v22 = sub_1AF8A40DC(v20);
        goto LABEL_110;
      }

      v23 = [v97 elementArrayType];
      if (!v23)
      {
        goto LABEL_129;
      }

      v101 = v23;
      v100 = [v23 arrayLength];
      if (v100)
      {
        break;
      }

      v22 = MEMORY[0x1E69E7CC0];
      v21 = v101;
LABEL_110:

      v78 = v22;
      v79 = *(v22 + 16);
      v9 = v99;
      v80 = *(v99 + 16);
      v81 = v80 + v79;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      if ((v82 & 1) == 0 || v81 > *(v99 + 24) >> 1)
      {
        if (v80 <= v81)
        {
          v83 = v80 + v79;
        }

        else
        {
          v83 = v80;
        }

        v9 = sub_1AF4265B0(v82, v83, 1, v99);
      }

      v99 = v9;
      if (*(v78 + 16))
      {
        swift_arrayInitWithCopy();

        v19 = v98;
        if (v79)
        {
          *(v9 + 16) += v79;
        }
      }

      else
      {

        v19 = v98;
      }

      v18 = v19 + 1;
      if (v18 == v96)
      {

        v6 = v97;
        goto LABEL_11;
      }
    }

    v24 = 0;
    v103 = MEMORY[0x1E69E7CC0];
    v21 = v101;
    while (1)
    {
      v102 = v24;
      v26 = [v21 elementStructType];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1AF8A40DC(v26);
        goto LABEL_34;
      }

      v35 = [v21 elementArrayType];
      if (!v35)
      {
        goto LABEL_129;
      }

      v105 = v35;
      v104 = [v35 arrayLength];
      if (v104)
      {
        break;
      }

      v28 = MEMORY[0x1E69E7CC0];
      v27 = v105;
LABEL_34:

      v29 = *(v28 + 16);
      v30 = v103;
      v31 = *(v103 + 2);
      v32 = v31 + v29;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      if ((v33 & 1) == 0 || v32 > *(v103 + 3) >> 1)
      {
        if (v31 <= v32)
        {
          v34 = v31 + v29;
        }

        else
        {
          v34 = v31;
        }

        v30 = sub_1AF4265B0(v33, v34, 1, v103);
      }

      v103 = v30;
      if (*(v28 + 16))
      {
        swift_arrayInitWithCopy();

        v25 = v102;
        if (v29)
        {
          *(v30 + 2) += v29;
        }
      }

      else
      {

        v25 = v102;
      }

      v24 = v25 + 1;
      v21 = v101;
      if (v24 == v100)
      {
        v22 = v30;
        goto LABEL_110;
      }
    }

    v36 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v27 = v105;
    while (1)
    {
      v108 = v36;
      v38 = [v27 elementStructType];
      if (!v38)
      {
        break;
      }

      v39 = v38;
      v40 = sub_1AF8A40DC(v38);
LABEL_50:

      v41 = *(v40 + 16);
      v42 = *(v28 + 16);
      v43 = v42 + v41;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      if (v44 && v43 <= *(v28 + 24) >> 1)
      {
        if (*(v40 + 16))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v42 <= v43)
        {
          v45 = v42 + v41;
        }

        else
        {
          v45 = v42;
        }

        v28 = sub_1AF4265B0(v44, v45, 1, v28);
        if (*(v40 + 16))
        {
LABEL_58:
          swift_arrayInitWithCopy();

          v37 = v108;
          if (v41)
          {
            *(v28 + 16) += v41;
          }

          goto LABEL_47;
        }
      }

      v37 = v108;
LABEL_47:
      v36 = v37 + 1;
      v27 = v105;
      if (v36 == v104)
      {
        goto LABEL_34;
      }
    }

    v46 = [v27 elementArrayType];
    if (!v46)
    {
      goto LABEL_129;
    }

    v39 = v46;
    v110 = [v46 arrayLength];
    if (!v110)
    {
      v40 = MEMORY[0x1E69E7CC0];
      goto LABEL_50;
    }

    v47 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    v106 = v39;
    v107 = v28;
    while (1)
    {
      v49 = [v39 elementStructType];
      v111 = v47;
      if (!v49)
      {
        break;
      }

      v50 = v49;
      v51 = sub_1AF8A40DC(v49);
LABEL_96:

      v73 = *(v51 + 16);
      v74 = *(v40 + 16);
      v75 = v74 + v73;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      if (v76 && v75 <= *(v40 + 24) >> 1)
      {
        if (*(v51 + 16))
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v74 <= v75)
        {
          v77 = v74 + v73;
        }

        else
        {
          v77 = v74;
        }

        v40 = sub_1AF4265B0(v76, v77, 1, v40);
        if (*(v51 + 16))
        {
LABEL_104:
          swift_arrayInitWithCopy();

          v48 = v111;
          if (v73)
          {
            *(v40 + 16) += v73;
          }

          goto LABEL_64;
        }
      }

      v48 = v111;
LABEL_64:
      v47 = v48 + 1;
      if ((v48 + 1) == v110)
      {
        goto LABEL_50;
      }
    }

    v52 = [v39 elementArrayType];
    if (v52)
    {
      v50 = v52;
      v53 = [v52 arrayLength];
      if (!v53)
      {
        v51 = MEMORY[0x1E69E7CC0];
        goto LABEL_96;
      }

      v54 = v53;
      v109 = v40;
      v55 = 0;
      v51 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v56 = [v50 elementStructType];
        if (v56)
        {
          v57 = v56;
          v58 = sub_1AF8A40DC(v56);
        }

        else
        {
          v59 = [v50 elementArrayType];
          if (!v59)
          {
            break;
          }

          v60 = v59;
          v61 = [v59 arrayLength];
          v62 = MEMORY[0x1E69E7CC0];
          v112 = MEMORY[0x1E69E7CC0];
          if (v61)
          {
            v63 = v61;
            do
            {
              v66 = [v60 elementStructType];
              if (v66)
              {
                v64 = v66;
                v65 = sub_1AF8A40DC(v66);
              }

              else
              {
                v67 = [v60 elementArrayType];
                if (!v67)
                {
                  goto LABEL_129;
                }

                v65 = sub_1AF8A0940(0, [v67 arrayLength], v67);
              }

              sub_1AF490A6C(v65);
              --v63;
            }

            while (v63);

            v58 = v112;
          }

          else
          {

            v58 = v62;
          }
        }

        v68 = *(v58 + 16);
        v69 = *(v51 + 16);
        v70 = v69 + v68;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        if (v71 && v70 <= *(v51 + 24) >> 1)
        {
          if (*(v58 + 16))
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (v69 <= v70)
          {
            v72 = v69 + v68;
          }

          else
          {
            v72 = v69;
          }

          v51 = sub_1AF4265B0(v71, v72, 1, v51);
          if (*(v58 + 16))
          {
LABEL_92:
            swift_arrayInitWithCopy();

            if (v68)
            {
              *(v51 + 16) += v68;
            }

            goto LABEL_71;
          }
        }

LABEL_71:
        if (++v55 == v54)
        {
          v39 = v106;
          v28 = v107;
          v40 = v109;
          goto LABEL_96;
        }
      }
    }

LABEL_129:
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v95 = MEMORY[0x1E69E7CC0];
LABEL_127:

    return v95;
  }

  return result;
}

uint64_t sub_1AF8A4AB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7365756C6176;
  v5 = 0x80000001AFF23440;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001AFF23440;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7470697263736564;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xEC000000736E6F69;
  }

  v8 = 0x7365756C6176;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7470697263736564;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC000000736E6F69;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF8A4BB0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8A4C5C(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8A4CF4(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF8A4D9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF8A9B04(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF8A4DCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000736E6F69;
  v4 = 0xE600000000000000;
  v5 = 0x7365756C6176;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001AFF23440;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7470697263736564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1AF8A4E34()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7470697263736564;
  }
}

unint64_t sub_1AF8A4E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8A9B04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF8A4EC0(uint64_t a1)
{
  v2 = sub_1AF8AB5B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8A4EFC(uint64_t a1)
{
  v2 = sub_1AF8AB5B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8A4F38(void *a1)
{
  v3 = v1;
  sub_1AF8AC5D0(0, &qword_1EB63FDD0, sub_1AF8AB5B0, &type metadata for CustomParameters.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8AB5B0();
  sub_1AFDFF3F8();
  v13 = v3[2];
  v12 = 0;
  sub_1AF8AB7E4(0, &qword_1ED722030, &type metadata for ShaderArgument, MEMORY[0x1E69E62F8]);
  sub_1AF8AB924();
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = v3[3];
    v12 = 1;
    sub_1AF8AB7E4(0, &qword_1ED722000, &type metadata for ShaderParameter, MEMORY[0x1E69E62F8]);
    sub_1AF8ABA14();
    sub_1AFDFE918();
    v13 = v3[4];
    v12 = 2;
    sub_1AF8AB7E4(0, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
    sub_1AF8ABB04();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

void *sub_1AF8A51C4(void *a1)
{
  sub_1AF8AC5D0(0, &unk_1ED721EF0, sub_1AF8AB5B0, &type metadata for CustomParameters.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8AB5B0();
  v7 = v20;
  v8 = v1;
  sub_1AFDFF3B8();
  if (v7)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v19;
    sub_1AF8AB7E4(0, &qword_1ED722030, &type metadata for ShaderArgument, MEMORY[0x1E69E62F8]);
    v21 = 0;
    sub_1AF8AB604(v10);
    sub_1AFDFE768();
    v11 = v6;
    *(v1 + 16) = v22;
    sub_1AF8AB7E4(0, &qword_1ED722000, &type metadata for ShaderParameter, MEMORY[0x1E69E62F8]);
    v21 = 1;
    sub_1AF8AB6F4(v12);
    sub_1AFDFE768();
    v13 = v9;
    *(v1 + 24) = v22;
    v15 = a1[3];
    v16 = a1[4];
    sub_1AF441150(a1, v15);
    if (sub_1AF694FF8(2021, v15, v16))
    {
      sub_1AF8AB7E4(0, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
      v21 = 2;
      sub_1AF8AB834();
      sub_1AFDFE6E8();
      if (v22)
      {
        v17 = v22;
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      (*(v13 + 8))(v11, v4);
    }

    else
    {
      (*(v13 + 8))(v11, v4);
      v17 = MEMORY[0x1E69E7CC0];
    }

    *(v8 + 32) = v17;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t getEnumTagSinglePayload for ShaderParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 65))
  {
    return (*a1 + 15);
  }

  v3 = ((*(a1 + 64) >> 3) & 0xE | (*(a1 + 64) >> 7)) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ShaderParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t initializeWithCopy for ShaderArgument(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for ShaderArgument(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  return a1;
}

uint64_t assignWithTake for ShaderArgument(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShaderArgument(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for ShaderArgument(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for ShaderArguments(void *a1)
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

uint64_t initializeWithCopy for ShaderArguments(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;
  v5 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for ShaderArguments(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[5] = a2[5];
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

__n128 initializeWithTake for ShaderArguments(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for ShaderArguments(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShaderArguments(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for ShaderArguments(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1AF8A5B04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1AF8A51C4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_1AF8A5B80(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v6;
  v8 = *(v4 + 2);
  if (v8)
  {

    v9 = 0;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1AFC0D990(v4);
      }

      v10 = &v4[v9];
      if (v4[v9 + 96] < 0)
      {
        v13 = *(v10 + 4);
        ObjectType = swift_getObjectType();
        (*(a2 + 8))(&v13, 0, ObjectType, a2);
        *(v10 + 4) = v13;
        v10[96] = v5 & 0xF | 0x80;
        LOBYTE(v5) = v5 & 0xF | 0x80;
      }

      v9 += 80;
      --v8;
    }

    while (v8);
    v7[3] = v4;
  }

  else
  {
  }

  return v7;
}

void sub_1AF8A5CE8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unsigned int a5)
{
  v335 = a5;
  v336 = a3;
  v363 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v306 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v306 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    return;
  }

  v326.i64[0] = v15;
  v327 = v17;
  v328 = v14;
  v337 = v5;
  v18 = *(a1 + 8);
  v19 = *(v18 + 176);
  v20 = *(v18 + 200);
  v21 = *(v18 + 208);
  v22 = *(a4 + 16);

  MinConstantBufferAlignment = CFXGPUDeviceGetMinConstantBufferAlignment(v22, v23, v24);
  v26 = (MinConstantBufferAlignment - 1 + v19) & -MinConstantBufferAlignment;
  v27 = (MinConstantBufferAlignment - 1 + v20) & -MinConstantBufferAlignment;
  if (v21)
  {
    v27 = 0;
  }

  if (v26 + v27 < 1)
  {

    return;
  }

  v324 = v12;
  v325 = v10;
  sub_1AF8BA308(v26 + v27, a4);
  v29 = *(v18 + 160);
  v28 = *(v18 + 168);
  v30 = *(v18 + 176);
  v31 = *(v18 + 184);
  v32 = *(v18 + 192);
  v33 = *(v18 + 208);
  v331 = v28;
  v329 = v31;
  v330 = v32;
  if (v33 != 1)
  {
    v52 = *(v18 + 200);
    if (v30 <= 0)
    {
      if (v52 < 1)
      {
        goto LABEL_42;
      }

      swift_unknownObjectRetain();
      v320 = v29;

      swift_unknownObjectRetain();

      v73 = 0;
LABEL_203:
      v213 = *(a2 + 152);
      if (!v213 || (v214 = *(a2 + 168) + 24 * *(a2 + 184), v217 = *(v214 + 32), v216 = v214 + 32, (v215 = v217) == 0))
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v227 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v305 = v227;
          swift_once();
          v227 = v305;
        }

        *&v353 = 0;
        sub_1AF0D4F18(v227, &v353, 0xD00000000000002FLL, 0x80000001AFF38DC0);
        goto LABEL_293;
      }

      v218 = v32;
      v334.i32[0] = v73;
      v309 = *(v216 + 8);
      v219 = (v52 + *(a2 + 176) - 1) & -*(a2 + 176);
      v220 = *(a2 + 144);
      v221 = (v220 + *(a2 + 160));
      *(a2 + 144) = v219 + v220;
      v314 = v215;
      swift_unknownObjectRetain();
      v318 = v219;
      if (!v218)
      {
        v336 = v221;
        v228 = [swift_unknownObjectRetain() storageMode];
        swift_unknownObjectRelease();
        LOBYTE(v73) = v334.i8[0];
        if (v228 == 2)
        {
          swift_unknownObjectRelease();

LABEL_294:
          swift_unknownObjectRelease();
          goto LABEL_295;
        }

        *&v308 = v220;
        v229 = [swift_unknownObjectRetain() contents];
        v230 = v213;
        v231 = v337;
        v232 = *(v337 + 16);
        if (*(v232 + 16))
        {
          v321 = a2;
          v323 = a4;
          v233 = 0;
          v234 = 32;
          v235 = 32;
          v236 = v229 + v336;
          do
          {
            v238 = (v232 + v235);
            v239 = *v238;
            v240 = v238[1];
            v241 = v238[2];
            *(v360 + 9) = *(v238 + 41);
            v359 = v240;
            v360[0] = v241;
            v358 = v239;
            v242 = (*(v231 + 24) + v234);
            v348 = *v242;
            v349 = v242[1];
            v350 = v242[2];
            v351 = v242[3];
            v352 = v242[4].i8[0];
            *v347 = v238[2];
            *&v347[9] = *(v238 + 41);
            v345 = *v238;
            v346 = v238[1];
            v353 = v345;
            v354 = v346;
            v356[2] = v350;
            v356[3] = v351;
            v357 = v352;
            v355[0] = *v347;
            v355[1] = *&v347[16];
            v356[0] = v348;
            v356[1] = v349;
            if ((v347[24] & 1) != 0 || v357 < 0)
            {
              sub_1AF8A9E80(&v358, &v345);
            }

            else
            {
              v243 = *(&v355[0] + 1);
              *v361 = v356[0];
              *&v361[16] = v356[1];
              *&v361[32] = v356[2];
              *&v361[48] = v356[3];
              v362 = v357;
              if (v357 == 14 && v356[0].u32[0] == 0xFFFFFFFFLL)
              {
                sub_1AF8A9E80(&v358, &v345);
                v231 = v337;
              }

              else
              {
                sub_1AF8A9E80(&v358, &v345);
                sub_1AF87CFFC(v361, v236, v243);
                v231 = v337;
              }
            }

            ++v233;
            sub_1AF8AB47C(&v353, sub_1AF8ABBF4);
            v232 = *(v231 + 16);
            v235 += 64;
            v234 += 80;
            v237 = v318;
          }

          while (v233 != *(v232 + 16));
          a2 = v321;
        }

        else
        {
          v237 = v318;
        }

        goto LABEL_292;
      }

      *&v308 = v220;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v222 = v218;
      sub_1AF471B58(v213, v221 | (v219 << 32), 0);
      v223 = *(a2 + 136);
      v319.i64[0] = a2 + 136;
      if ((v223 & 0x8000000000000000) != 0)
      {
        v224 = v337;
      }

      else
      {
        v224 = v337;
        if ((v223 & 0x4000000000000000) == 0)
        {
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v223 = *v319.i64[0];
          if (isUniquelyReferenced_nonNull_bridgeObject)
          {
            if (v223 >> 62)
            {
              v226 = sub_1AFDFE108();
            }

            else
            {
              v226 = *((v223 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            sub_1AF64E3CC(0, v226);
LABEL_234:
            LOBYTE(v73) = v334.i8[0];
            v245 = *(v224 + 16);
            if (*(v245 + 16))
            {
              v313 = &v336[OBJC_IVAR____TtC3VFX13EntityManager__entries];
              v312 = "Unsupported texture type ";
              *&v311 = v326.i64[0] + 32;
              v246 = 1;
              v247 = 32;
              v310 = xmmword_1AFE431C0;
              v248 = 32;
              v323 = a4;
              v321 = a2;
              while (1)
              {
                v332.i64[0] = v248;
                v249 = (v245 + v248);
                v250 = *v249;
                v251 = v249[1];
                v252 = v249[2];
                *&v361[41] = *(v249 + 41);
                *&v361[16] = v251;
                *&v361[32] = v252;
                *v361 = v250;
                v253 = (*(v224 + 24) + v247);
                v348 = *v253;
                v349 = v253[1];
                v350 = v253[2];
                v351 = v253[3];
                v352 = v253[4].i8[0];
                *v347 = v249[2];
                *&v347[9] = *(v249 + 41);
                v345 = *v249;
                v346 = v249[1];
                v353 = v345;
                v354 = v346;
                v356[2] = v350;
                v356[3] = v351;
                v357 = v352;
                v355[0] = *v347;
                v355[1] = *&v347[16];
                v356[0] = v348;
                v356[1] = v349;
                v334.i64[0] = v246;
                v333.i64[0] = v247;
                if ((v352 & 0x80) == 0)
                {
                  v254 = v356[1].i64[0];
                  v255 = v348.i32[0];
                  switch(v352)
                  {
                    case 1:
                      v291 = v354;
                      v326 = v348;
                      sub_1AF8A9E80(v361, &v345);
                      v292 = [v222 constantDataAtIndex_];
                      *v292 = v326.i64[0];
                      break;
                    case 2:
                    case 3:
                    case 4:
                      v256 = v354;
                      v326 = v348;
                      sub_1AF8A9E80(v361, &v345);
                      v257 = [v222 constantDataAtIndex_];
                      *v257 = v326;
                      break;
                    case 5:
                    case 6:
                      v276 = v354;
                      v326 = v348;
                      v322 = v356[1];
                      sub_1AF8A9E80(v361, &v345);
                      v277 = [v222 constantDataAtIndex_];
                      v278 = v322;
                      *v277 = v326;
                      v277[1] = v278;
                      break;
                    case 7:
                      v294 = v354;
                      v326 = v348;
                      sub_1AF8A9E80(v361, &v345);
                      v295 = [v222 constantDataAtIndex_];
                      *v295 = v326;
                      v295[1].i64[0] = v254;
                      break;
                    case 8:
                    case 9:
                      v283 = v354;
                      v326 = v348;
                      v322 = v356[1];
                      v317 = v356[2];
                      sub_1AF8A9E80(v361, &v345);
                      v284 = [v222 constantDataAtIndex_];
                      v285 = v322;
                      *v284 = v326;
                      v284[1] = v285;
                      v284[2] = v317;
                      break;
                    case 10:
                      v317 = vextq_s8(v348, v348, 8uLL);
                      v288 = v354;
                      v326 = v348;
                      v322 = v356[1];
                      sub_1AF8A9E80(v361, &v345);
                      v289 = [v222 constantDataAtIndex_];
                      *&v290 = v326.i64[0];
                      *(&v290 + 1) = v317.i64[0];
                      *v289 = v290;
                      v289[2] = v254;
                      v289[3] = v322.i64[1];
                      break;
                    case 11:
                    case 12:
                      v279 = v354;
                      v326 = v348;
                      v322 = v356[1];
                      v316 = v356[3];
                      v317 = v356[2];
                      sub_1AF8A9E80(v361, &v345);
                      v280 = [v222 constantDataAtIndex_];
                      v281 = v322;
                      *v280 = v326;
                      v280[1] = v281;
                      v282 = v316;
                      v280[2] = v317;
                      v280[3] = v282;
                      break;
                    case 13:
                      v338 = v348.i16[0];
                      v286 = v348.i8[0] & 1;
                      v287 = v354;
                      sub_1AF8A9E80(v361, &v345);
                      *[v222 constantDataAtIndex_] = v286;
                      break;
                    case 14:
                      if (v348.i32[0] != -1)
                      {
                        goto LABEL_272;
                      }

                      sub_1AF8A9E80(v361, &v345);
                      break;
                    default:
LABEL_272:
                      v293 = v354;
                      sub_1AF8A9E80(v361, &v345);
                      *[v222 constantDataAtIndex_] = v255;
                      break;
                  }

                  sub_1AF8AB47C(&v353, sub_1AF8ABBF4);
                  v224 = v337;
                  goto LABEL_287;
                }

                v258 = v348.u32[0];
                v259 = v348.u32[1];
                if (BYTE8(v355[1]))
                {
                  v169 = *(&v354 + 1);
                }

                else
                {
                  v169 = 0;
                }

                sub_1AF8A9E80(v361, &v345);
                v260 = sub_1AF8D93C8(v258 | (v259 << 32), &v345, v336, a4);
                if (!v260)
                {
                  if (v169 > 4)
                  {
                    v222 = v330;
                    if (v169 == 5)
                    {

                      v263 = sub_1AF7097AC();
                    }

                    else
                    {
                      if (v169 != 7)
                      {
                        goto LABEL_305;
                      }

                      v263 = sub_1AF7094F0();
                    }
                  }

                  else
                  {
                    v222 = v330;
                    if (v169)
                    {
                      if (v169 != 2)
                      {
                        goto LABEL_305;
                      }

                      v263 = sub_1AF70924C();
                    }

                    else
                    {

                      v263 = sub_1AF708F90();
                    }
                  }

                  v262 = v263;

                  swift_unknownObjectRetain();
                  goto LABEL_279;
                }

                v261 = v260;
                if ([v260 textureType] == v169)
                {
                  swift_unknownObjectRetain();
                  v262 = v261;
                  if (v258 == -1)
                  {
                    goto LABEL_256;
                  }
                }

                else
                {
                  v326.i64[0] = v169;
                  v322.i64[0] = v259;
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  *&v345 = 0;
                  *(&v345 + 1) = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000024, v312 | 0x8000000000000000);
                  *&v358 = v354;
                  v264 = sub_1AFDFEA08();
                  MEMORY[0x1B2718AE0](v264);

                  MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
                  *&v358 = [v261 textureType];
                  type metadata accessor for MTLTextureType(0);
                  sub_1AFDFE458();
                  MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
                  *&v358 = v326.i64[0];
                  sub_1AFDFE458();
                  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
                  v265 = v345;
                  v266 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    swift_once();
                  }

                  v316.i64[0] = v261;
                  v317.i64[0] = v258;
                  if (qword_1ED730E98 != -1)
                  {
                    swift_once();
                  }

                  v267 = qword_1ED73B890;
                  sub_1AF6EFB60(0);
                  v268 = swift_allocObject();
                  *(v268 + 16) = v310;
                  *(v268 + 56) = MEMORY[0x1E69E6158];
                  *(v268 + 64) = sub_1AF0D544C();
                  *(v268 + 32) = v265;

                  sub_1AFDFC4C8(v266, &dword_1AF0CE000, v267, "%{public}s", 10, 2, v268);

                  v258 = v327;
                  sub_1AFDFC288();
                  v269 = v325[12];
                  v315.i64[0] = *(&v265 + 1);
                  v270 = v325[16];
                  v271 = v266;
                  v272 = v324;
                  v273 = &v324[v325[20]];
                  (*v311)(v324, v258, v328);
                  *(v272 + v269) = v271;
                  *(v272 + v270) = 0;
                  v274 = v315.i64[0];
                  *v273 = v265;
                  *(v273 + 1) = v274;
                  sub_1AFDFC608();

                  sub_1AF8AB47C(v272, sub_1AF0D4E74);
                  a4 = v323;

                  v262 = sub_1AF8DC0E8(v326.i64[0]);

                  a2 = v321;
                  LODWORD(v259) = v322.i32[0];
                  v224 = v337;
                  LODWORD(v258) = v317.i32[0];
                  if (v317.i32[0] == -1)
                  {
LABEL_256:
                    if (!v259)
                    {
                      goto LABEL_262;
                    }
                  }
                }

                if ((v258 & 0x80000000) == 0 && *(v313 + 8) > v258)
                {
                  v275 = *v313 + 12 * v258;
                  v222 = v330;
                  if (v259 == -1 || *(v275 + 8) == v259)
                  {
                    v298 = *(*(*(v336 + 11) + 8 * *(v275 + 6) + 32) + 16);
                    v299 = *(v298 + 128);
                    if (*(v299 + 16) && (v300 = sub_1AF449CB8(&type metadata for MovieFileAsset), (v301 & 1) != 0))
                    {
                      v302 = *(*(v298 + 24) + 16 * *(*(v299 + 56) + 8 * v300) + 32);
                      swift_unknownObjectRetain();
                      swift_unknownObjectRelease();
                      LOBYTE(v73) = v302 == &type metadata for MovieFileAsset;
                    }

                    else
                    {
                      swift_unknownObjectRetain();
                      swift_unknownObjectRelease();
                      LOBYTE(v73) = 0;
                    }

                    v224 = v337;
                  }

                  else
                  {
                    swift_unknownObjectRetain();
                    swift_unknownObjectRelease();
                    LOBYTE(v73) = 0;
                  }

                  goto LABEL_279;
                }

LABEL_262:
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                LOBYTE(v73) = 0;
                v222 = v330;
LABEL_279:
                v296 = [v222 setTexture:v262 atIndex:v354];
                v297 = v319.i64[0];
                MEMORY[0x1B2718E00](v296);
                if (*((*v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1AFDFD458();
                  v224 = v337;
                }

                sub_1AFDFD4B8();
                sub_1AF8AB47C(&v353, sub_1AF8ABBF4);
                swift_unknownObjectRelease();
LABEL_287:
                v245 = *(v224 + 16);
                if (v334.i64[0] == *(v245 + 16))
                {
                  break;
                }

                v246 = v334.i64[0] + 1;
                v248 = v332.i64[0] + 64;
                v247 = v333.i64[0] + 80;
              }
            }

            swift_unknownObjectRelease();
            v237 = v318;
LABEL_292:
            *&v353 = v314;
            *(&v353 + 1) = &v309[v308];
            v354 = v237;
            LOBYTE(v355[0]) = 0;
            sub_1AF88BB90(&v353, 2, 0);
            swift_unknownObjectRelease();
LABEL_293:

            swift_unknownObjectRelease();
            goto LABEL_294;
          }
        }
      }

      if (v223 >> 62)
      {
        sub_1AFDFE108();
        sub_1AFDFE108();
        sub_1AFDFE108();
      }

      v244 = sub_1AFC892CC();

      *v319.i64[0] = v244;
      goto LABEL_234;
    }

    v323 = a4;
    v53 = v29;
    v54 = *(a2 + 152);
    if (v54 && (v55 = *(a2 + 168) + 24 * *(a2 + 184), v58 = *(v55 + 32), v56 = v55 + 32, (v57 = v58) != 0))
    {
      v313 = v52;
      v307 = *(v56 + 8);
      v59 = (v30 + *(a2 + 176) - 1) & -*(a2 + 176);
      v60 = *(a2 + 144);
      v61 = v57;
      v62 = v28;
      v63 = v60 + *(a2 + 160);
      v306 = v60;
      *(a2 + 144) = v59 + v60;

      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v312 = v61;
      swift_unknownObjectRetain();
      v317.i64[0] = v59;
      v320 = v53;
      if (v62)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1AF471B58(v54, v63 | (v59 << 32), 0);
        v64 = *(a2 + 136);
        v318 = (a2 + 136);
        v65 = v62;
        if ((v64 & 0x8000000000000000) != 0)
        {
          v66 = v337;
        }

        else
        {
          v66 = v337;
          if ((v64 & 0x4000000000000000) == 0)
          {
            v67 = swift_isUniquelyReferenced_nonNull_bridgeObject();
            v64 = *v318;
            if (v67)
            {
              if (v64 >> 62)
              {
                v68 = sub_1AFDFE108();
              }

              else
              {
                v68 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              sub_1AF64E3CC(0, v68);
LABEL_136:
              v32 = v330;
              v154 = *(v66 + 16);
              if (*(v154 + 16))
              {
                v73 = 0;
                *&v311 = &v336[OBJC_IVAR____TtC3VFX13EntityManager__entries];
                v309 = (v326.i64[0] + 32);
                *&v310 = "Unsupported texture type ";
                v155 = 1;
                v156 = 32;
                v308 = xmmword_1AFE431C0;
                v157 = 32;
                a4 = v323;
                v321 = a2;
                while (1)
                {
                  v332.i64[0] = v157;
                  v158 = (v154 + v157);
                  v159 = *v158;
                  v160 = v158[1];
                  v161 = v158[2];
                  *&v361[41] = *(v158 + 41);
                  *&v361[16] = v160;
                  *&v361[32] = v161;
                  *v361 = v159;
                  v162 = (*(v66 + 24) + v156);
                  v348 = *v162;
                  v349 = v162[1];
                  v350 = v162[2];
                  v351 = v162[3];
                  v352 = v162[4].i8[0];
                  *v347 = v158[2];
                  *&v347[9] = *(v158 + 41);
                  v345 = *v158;
                  v346 = v158[1];
                  v353 = v345;
                  v354 = v346;
                  v356[2] = v350;
                  v356[3] = v351;
                  v357 = v352;
                  v355[0] = *v347;
                  v355[1] = *&v347[16];
                  v356[0] = v348;
                  v356[1] = v349;
                  v334.i64[0] = v155;
                  v333.i64[0] = v156;
                  if ((v352 & 0x80) == 0)
                  {
                    v163 = v356[1].i64[0];
                    v164 = v348.i32[0];
                    switch(v352)
                    {
                      case 1:
                        v201 = v354;
                        v322 = v348;
                        sub_1AF8A9E80(v361, &v345);
                        v202 = [v65 constantDataAtIndex_];
                        *v202 = v322.i64[0];
                        break;
                      case 2:
                      case 3:
                      case 4:
                        v165 = v354;
                        v322 = v348;
                        sub_1AF8A9E80(v361, &v345);
                        v166 = [v65 constantDataAtIndex_];
                        *v166 = v322;
                        break;
                      case 5:
                      case 6:
                        v186 = v354;
                        v322 = v348;
                        v319 = v356[1];
                        sub_1AF8A9E80(v361, &v345);
                        v187 = [v65 constantDataAtIndex_];
                        v188 = v319;
                        *v187 = v322;
                        v187[1] = v188;
                        break;
                      case 7:
                        v204 = v354;
                        v322 = v348;
                        sub_1AF8A9E80(v361, &v345);
                        v205 = [v65 constantDataAtIndex_];
                        *v205 = v322;
                        v205[1].i64[0] = v163;
                        break;
                      case 8:
                      case 9:
                        v193 = v354;
                        v322 = v348;
                        v319 = v356[1];
                        v316 = v356[2];
                        sub_1AF8A9E80(v361, &v345);
                        v194 = [v65 constantDataAtIndex_];
                        v195 = v319;
                        *v194 = v322;
                        v194[1] = v195;
                        v194[2] = v316;
                        break;
                      case 10:
                        v316 = vextq_s8(v348, v348, 8uLL);
                        v198 = v354;
                        v322 = v348;
                        v319 = v356[1];
                        sub_1AF8A9E80(v361, &v345);
                        v199 = [v65 constantDataAtIndex_];
                        *&v200 = v322.i64[0];
                        *(&v200 + 1) = v316.i64[0];
                        *v199 = v200;
                        v199[2] = v163;
                        v199[3] = v319.i64[1];
                        break;
                      case 11:
                      case 12:
                        v189 = v354;
                        v322 = v348;
                        v319 = v356[1];
                        v315 = v356[3];
                        v316 = v356[2];
                        sub_1AF8A9E80(v361, &v345);
                        v190 = [v65 constantDataAtIndex_];
                        v191 = v319;
                        *v190 = v322;
                        v190[1] = v191;
                        v192 = v315;
                        v190[2] = v316;
                        v190[3] = v192;
                        break;
                      case 13:
                        v340 = v348.i16[0];
                        v196 = v348.i8[0] & 1;
                        v197 = v354;
                        sub_1AF8A9E80(v361, &v345);
                        *[v65 constantDataAtIndex_] = v196;
                        break;
                      case 14:
                        if (v348.i32[0] != -1)
                        {
                          goto LABEL_174;
                        }

                        sub_1AF8A9E80(v361, &v345);
                        break;
                      default:
LABEL_174:
                        v203 = v354;
                        sub_1AF8A9E80(v361, &v345);
                        *[v65 constantDataAtIndex_] = v164;
                        break;
                    }

                    sub_1AF8AB47C(&v353, sub_1AF8ABBF4);
                    v66 = v337;
                    goto LABEL_189;
                  }

                  v167 = v348.u32[0];
                  v168 = v348.u32[1];
                  if (BYTE8(v355[1]))
                  {
                    v169 = *(&v354 + 1);
                  }

                  else
                  {
                    v169 = 0;
                  }

                  sub_1AF8A9E80(v361, &v345);
                  v170 = sub_1AF8D93C8(v167 | (v168 << 32), &v345, v336, a4);
                  if (!v170)
                  {
                    if (v169 > 4)
                    {
                      v32 = v330;
                      v65 = v331;
                      if (v169 == 5)
                      {

                        v173 = sub_1AF7097AC();
                      }

                      else
                      {
                        if (v169 != 7)
                        {
LABEL_305:
                          *&v345 = 0;
                          *(&v345 + 1) = 0xE000000000000000;

                          sub_1AFDFE218();
                          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF38E30);
                          *&v358 = v169;
                          type metadata accessor for MTLTextureType(0);
                          goto LABEL_307;
                        }

                        v173 = sub_1AF7094F0();
                      }
                    }

                    else
                    {
                      v32 = v330;
                      v65 = v331;
                      if (v169)
                      {
                        if (v169 != 2)
                        {
                          goto LABEL_305;
                        }

                        v173 = sub_1AF70924C();
                      }

                      else
                      {

                        v173 = sub_1AF708F90();
                      }
                    }

                    v172 = v173;

                    swift_unknownObjectRetain();
                    goto LABEL_181;
                  }

                  v171 = v170;
                  if ([v170 textureType] == v169)
                  {
                    swift_unknownObjectRetain();
                    v172 = v171;
                    if (v167 == -1)
                    {
                      goto LABEL_158;
                    }
                  }

                  else
                  {
                    v322.i64[0] = v169;
                    v319.i64[0] = v168;
                    if (qword_1ED730EA0 != -1)
                    {
                      swift_once();
                    }

                    *&v345 = 0;
                    *(&v345 + 1) = 0xE000000000000000;
                    sub_1AFDFE218();
                    MEMORY[0x1B2718AE0](0xD000000000000024, v310 | 0x8000000000000000);
                    *&v358 = v354;
                    v174 = sub_1AFDFEA08();
                    MEMORY[0x1B2718AE0](v174);

                    MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
                    *&v358 = [v171 textureType];
                    type metadata accessor for MTLTextureType(0);
                    sub_1AFDFE458();
                    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
                    *&v358 = v322.i64[0];
                    sub_1AFDFE458();
                    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
                    v175 = v345;
                    v176 = sub_1AFDFDA08();
                    if (qword_1ED731058 != -1)
                    {
                      swift_once();
                    }

                    v315.i64[0] = v171;
                    v316.i64[0] = v167;
                    if (qword_1ED730E98 != -1)
                    {
                      swift_once();
                    }

                    v177 = qword_1ED73B890;
                    sub_1AF6EFB60(0);
                    v178 = swift_allocObject();
                    *(v178 + 16) = v308;
                    *(v178 + 56) = MEMORY[0x1E69E6158];
                    *(v178 + 64) = sub_1AF0D544C();
                    *(v178 + 32) = v175;

                    sub_1AFDFC4C8(v176, &dword_1AF0CE000, v177, "%{public}s", 10, 2, v178);

                    v167 = v327;
                    sub_1AFDFC288();
                    v179 = v325[12];
                    v314 = *(&v175 + 1);
                    v180 = v325[16];
                    v181 = v176;
                    v182 = v324;
                    v183 = &v324[v325[20]];
                    (*v309)(v324, v167, v328);
                    *(v182 + v179) = v181;
                    *(v182 + v180) = 0;
                    v184 = v314;
                    *v183 = v175;
                    *(v183 + 1) = v184;
                    sub_1AFDFC608();

                    sub_1AF8AB47C(v182, sub_1AF0D4E74);
                    a4 = v323;

                    v172 = sub_1AF8DC0E8(v322.i64[0]);

                    a2 = v321;
                    v66 = v337;
                    LODWORD(v168) = v319.i32[0];
                    LODWORD(v167) = v316.i32[0];
                    if (v316.i32[0] == -1)
                    {
LABEL_158:
                      if (!v168)
                      {
                        goto LABEL_164;
                      }
                    }
                  }

                  if ((v167 & 0x80000000) == 0 && *(v311 + 8) > v167)
                  {
                    v185 = *v311 + 12 * v167;
                    v32 = v330;
                    if (v168 == -1 || *(v185 + 8) == v168)
                    {
                      v208 = *(*(*(v336 + 11) + 8 * *(v185 + 6) + 32) + 16);
                      v209 = *(v208 + 128);
                      if (*(v209 + 16) && (v210 = sub_1AF449CB8(&type metadata for MovieFileAsset), (v211 & 1) != 0))
                      {
                        v212 = *(*(v209 + 56) + 8 * v210);
                        swift_unknownObjectRetain();
                        swift_unknownObjectRelease();
                        v73 = *(*(v208 + 24) + 16 * v212 + 32) == &type metadata for MovieFileAsset;
                      }

                      else
                      {
                        swift_unknownObjectRetain();
                        swift_unknownObjectRelease();
                        v73 = 0;
                      }

                      v65 = v331;
                      v66 = v337;
                    }

                    else
                    {
                      swift_unknownObjectRetain();
                      swift_unknownObjectRelease();
                      v73 = 0;
                      v65 = v331;
                    }

                    goto LABEL_181;
                  }

LABEL_164:
                  swift_unknownObjectRetain();
                  swift_unknownObjectRelease();
                  v73 = 0;
                  v32 = v330;
                  v65 = v331;
LABEL_181:
                  v206 = [v65 setTexture:v172 atIndex:v354];
                  v207 = v318;
                  MEMORY[0x1B2718E00](v206);
                  if (*((*v207 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v207 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1AFDFD458();
                    v66 = v337;
                  }

                  sub_1AFDFD4B8();
                  sub_1AF8AB47C(&v353, sub_1AF8ABBF4);
                  swift_unknownObjectRelease();
LABEL_189:
                  v154 = *(v66 + 16);
                  if (v334.i64[0] == *(v154 + 16))
                  {
                    swift_unknownObjectRelease();
                    v99 = v317.i64[0];
                    goto LABEL_202;
                  }

                  v155 = v334.i64[0] + 1;
                  v157 = v332.i64[0] + 64;
                  v156 = v333.i64[0] + 80;
                }
              }

              swift_unknownObjectRelease();
              v73 = 0;
              v99 = v317.i64[0];
              goto LABEL_201;
            }
          }
        }

        if (v64 >> 62)
        {
          sub_1AFDFE108();
          sub_1AFDFE108();
          sub_1AFDFE108();
          v65 = v331;
        }

        v153 = sub_1AFC892CC();

        *v318 = v153;
        goto LABEL_136;
      }

      v75 = [swift_unknownObjectRetain() storageMode];
      swift_unknownObjectRelease();
      if (v75 != 2)
      {
        v91 = [swift_unknownObjectRetain() contents];
        v92 = v54;
        v93 = *(v337 + 16);
        if (*(v93 + 16))
        {
          v321 = a2;
          v94 = 0;
          v95 = 32;
          v96 = 32;
          v97 = &v91[v63];
          v98 = v337;
          v32 = v330;
          a4 = v323;
          do
          {
            v100 = (v93 + v96);
            v101 = *v100;
            v102 = v100[1];
            v103 = v100[2];
            *&v361[41] = *(v100 + 41);
            *&v361[16] = v102;
            *&v361[32] = v103;
            *v361 = v101;
            v104 = (*(v98 + 24) + v95);
            v348 = *v104;
            v349 = v104[1];
            v350 = v104[2];
            v351 = v104[3];
            v352 = v104[4].i8[0];
            *v347 = v100[2];
            *&v347[9] = *(v100 + 41);
            v345 = *v100;
            v346 = v100[1];
            v353 = v345;
            v354 = v346;
            v356[2] = v350;
            v356[3] = v351;
            v357 = v352;
            v355[0] = *v347;
            v355[1] = *&v347[16];
            v356[0] = v348;
            v356[1] = v349;
            if ((v347[24] & 1) != 0 || v357 < 0)
            {
              sub_1AF8A9E80(v361, &v345);
            }

            else
            {
              v105 = *(&v355[0] + 1);
              v106 = v356[0].i32[0];
              switch(v357)
              {
                case 1:
                  v334 = v356[0];
                  sub_1AF8A9E80(v361, &v345);
                  *&v97[v105] = v334.i64[0];
                  break;
                case 2:
                case 3:
                case 4:
                  v334 = v356[0];
                  sub_1AF8A9E80(v361, &v345);
                  *&v97[v105] = v334;
                  break;
                case 5:
                case 6:
                case 10:
                  v107 = &v97[*(&v355[0] + 1)];
                  v333 = v356[1];
                  v334 = v356[0];
                  sub_1AF8A9E80(v361, &v345);
                  v108 = v333;
                  *v107 = v334;
                  v107[1] = v108;
                  break;
                case 7:
                  v332 = vextq_s8(v356[0], v356[0], 8uLL);
                  v333 = v356[1];
                  v114 = &v97[*(&v355[0] + 1)];
                  v334 = v356[0];
                  sub_1AF8A9E80(v361, &v345);
                  v115 = v333.i64[0];
                  *&v116 = v334.i64[0];
                  *(&v116 + 1) = v332.i64[0];
                  *v114 = v116;
                  *(v114 + 2) = v115;
                  break;
                case 8:
                case 9:
                  v112 = &v97[*(&v355[0] + 1)];
                  v333 = v356[1];
                  v334 = v356[0];
                  v332 = v356[2];
                  sub_1AF8A9E80(v361, &v345);
                  v113 = v333;
                  *v112 = v334;
                  v112[1] = v113;
                  v112[2] = v332;
                  break;
                case 11:
                case 12:
                  v109 = &v97[*(&v355[0] + 1)];
                  v333 = v356[1];
                  v334 = v356[0];
                  v332 = v356[2];
                  v322 = v356[3];
                  sub_1AF8A9E80(v361, &v345);
                  v110 = v333;
                  *v109 = v334;
                  v109[1] = v110;
                  v111 = v322;
                  v109[2] = v332;
                  v109[3] = v111;
                  break;
                case 13:
                  v339 = v356[0].i16[0];
                  v117 = v356[0].i8[0] & 1;
                  sub_1AF8A9E80(v361, &v345);
                  v97[v105] = v117;
                  break;
                case 14:
                  if (v356[0].i32[0] != -1)
                  {
                    goto LABEL_72;
                  }

                  sub_1AF8A9E80(v361, &v345);
                  break;
                case 15:
LABEL_72:
                  sub_1AF8A9E80(v361, &v345);
                  *&v97[v105] = v106;
                  break;
                default:
                  v334 = v356[0];
                  sub_1AF8A9E80(v361, &v345);
                  *&v97[v105] = v334.i32[0];
                  break;
              }

              v32 = v330;
            }

            ++v94;
            sub_1AF8AB47C(&v353, sub_1AF8ABBF4);
            v98 = v337;
            v93 = *(v337 + 16);
            v96 += 64;
            v95 += 80;
            v99 = v317.i64[0];
          }

          while (v94 != *(v93 + 16));
          v73 = 0;
          a2 = v321;
LABEL_202:
          *&v342 = v312;
          *(&v342 + 1) = v306 + v307;
          v343 = v99;
          LOBYTE(v344[0]) = 0;
          sub_1AF88BB90(&v342, 2, 0);
          swift_unknownObjectRelease();
          v52 = v313;
          if (v313 <= 0)
          {
            goto LABEL_219;
          }

          goto LABEL_203;
        }

        v73 = 0;
        v99 = v317.i64[0];
        v32 = v330;
LABEL_201:
        a4 = v323;
        goto LABEL_202;
      }

      swift_unknownObjectRelease();
      v52 = v313;
      if (v313 > 0)
      {
        v73 = 0;
        v32 = v330;
        a4 = v323;
        goto LABEL_203;
      }
    }

    else
    {
      v71 = qword_1ED730EA0;

      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      if (v71 != -1)
      {
        swift_once();
      }

      v72 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v304 = v72;
        swift_once();
        v72 = v304;
      }

      *&v353 = 0;
      sub_1AF0D4F18(v72, &v353, 0xD00000000000002FLL, 0x80000001AFF38DC0);
      if (v52 > 0)
      {
        v320 = v53;
        v73 = 0;
        a4 = v323;
        goto LABEL_203;
      }
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_46:

    LOBYTE(v73) = 0;
    goto LABEL_295;
  }

  if (v30 <= 0)
  {
LABEL_42:
    LOBYTE(v73) = 0;
LABEL_295:
    *(a2 + 209) = v73;
    if (*(a2 + 152))
    {
      if (*(a2 + 164))
      {
        sub_1AF8BA608();
      }
    }

    return;
  }

  v34 = *(a2 + 152);
  if (!v34 || (v35 = *(a2 + 168) + 24 * *(a2 + 184), v38 = *(v35 + 32), v36 = v35 + 32, (v37 = v38) == 0))
  {
    v69 = qword_1ED730EA0;

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    if (v69 != -1)
    {
      swift_once();
    }

    v70 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v303 = v70;
      swift_once();
      v70 = v303;
    }

    *&v353 = 0;
    sub_1AF0D4F18(v70, &v353, 0xD00000000000002FLL, 0x80000001AFF38DC0);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    goto LABEL_42;
  }

  v323 = a4;
  v39 = *(v36 + 8);
  v40 = *(a2 + 160);
  v41 = a2;
  v42 = (v30 + *(a2 + 176) - 1) & -*(a2 + 176);
  v43 = *(v41 + 144);
  v44 = v28;
  v45 = &v43[v40];
  v309 = v43;
  *&v310 = v39;
  *(v41 + 144) = &v43[v42];

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v315.i64[0] = v37;
  swift_unknownObjectRetain();
  v322.i64[0] = v42;
  if (!v44)
  {
    a2 = v41;
    v336 = v45;
    v74 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v74 != 2)
    {
      v320 = v29;
      v76 = [swift_unknownObjectRetain() contents];
      v77 = v34;
      v78 = v337;
      v79 = *(v337 + 16);
      if (*(v79 + 16))
      {
        v321 = v41;
        v80 = 0;
        v81 = 32;
        v82 = 32;
        v83 = v76 + v336;
        do
        {
          v85 = (v79 + v82);
          v86 = *v85;
          v87 = v85[1];
          v88 = v85[2];
          *(v360 + 9) = *(v85 + 41);
          v359 = v87;
          v360[0] = v88;
          v358 = v86;
          v89 = (*(v78 + 24) + v81);
          v348 = *v89;
          v349 = v89[1];
          v350 = v89[2];
          v351 = v89[3];
          v352 = v89[4].i8[0];
          *v347 = v85[2];
          *&v347[9] = *(v85 + 41);
          v345 = *v85;
          v346 = v85[1];
          v353 = v345;
          v354 = v346;
          v356[2] = v350;
          v356[3] = v351;
          v357 = v352;
          v355[0] = *v347;
          v355[1] = *&v347[16];
          v356[0] = v348;
          v356[1] = v349;
          if ((v347[24] & 1) != 0 || v357 < 0)
          {
            sub_1AF8A9E80(&v358, &v345);
          }

          else
          {
            v90 = *(&v355[0] + 1);
            *v361 = v356[0];
            *&v361[16] = v356[1];
            *&v361[32] = v356[2];
            *&v361[48] = v356[3];
            v362 = v357;
            if (v357 == 14 && v356[0].u32[0] == 0xFFFFFFFFLL)
            {
              sub_1AF8A9E80(&v358, &v345);
              v78 = v337;
            }

            else
            {
              sub_1AF8A9E80(&v358, &v345);
              sub_1AF87CFFC(v361, v83, v90);
              v78 = v337;
            }
          }

          ++v80;
          sub_1AF8AB47C(&v353, sub_1AF8ABBF4);
          v79 = *(v78 + 16);
          v82 += 64;
          v81 += 80;
          v84 = v322.i64[0];
        }

        while (v80 != *(v79 + 16));
        LOBYTE(v73) = 0;
        a2 = v321;
      }

      else
      {
        LOBYTE(v73) = 0;
        v84 = v322.i64[0];
      }

      goto LABEL_196;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1AF471B58(v34, v45 | (v42 << 32), 0);
  v46 = *(v41 + 136);
  v319.i64[0] = v41 + 136;
  v47 = v44;
  a2 = v41;
  if ((v46 & 0x8000000000000000) != 0)
  {
    v48 = v337;
    v49 = v323;
  }

  else
  {
    v48 = v337;
    v49 = v323;
    if ((v46 & 0x4000000000000000) == 0)
    {
      v50 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v46 = *v319.i64[0];
      if (v50)
      {
        if (v46 >> 62)
        {
          v51 = sub_1AFDFE108();
        }

        else
        {
          v51 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF64E3CC(0, v51);
        goto LABEL_83;
      }
    }
  }

  if (v46 >> 62)
  {
    sub_1AFDFE108();
    sub_1AFDFE108();
    sub_1AFDFE108();
    v47 = v331;
  }

  v118 = sub_1AFC892CC();

  *v319.i64[0] = v118;
LABEL_83:
  v320 = v29;
  v119 = *(v48 + 16);
  if (!*(v119 + 16))
  {
    swift_unknownObjectRelease();
    LOBYTE(v73) = 0;
    v84 = v322.i64[0];
LABEL_196:
    *&v353 = v315.i64[0];
    *(&v353 + 1) = &v309[v310];
    v354 = v84;
    LOBYTE(v355[0]) = 0;
    sub_1AF88BB90(&v353, 2, 0);
    sub_1AF88BB90(&v353, 2, 0);
    swift_unknownObjectRelease();
LABEL_219:
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    goto LABEL_295;
  }

  LOBYTE(v73) = 0;
  v314 = &v336[OBJC_IVAR____TtC3VFX13EntityManager__entries];
  v312 = v326.i64[0] + 32;
  v313 = "Unsupported texture type ";
  v120 = 1;
  v121 = 32;
  v311 = xmmword_1AFE431C0;
  v122 = 32;
  v123 = v319.i64[0];
  v321 = a2;
  while (1)
  {
    v332.i64[0] = v122;
    v124 = (v119 + v122);
    v125 = *v124;
    v126 = v124[1];
    v127 = v124[2];
    *(v344 + 9) = *(v124 + 41);
    v343 = v126;
    v344[0] = v127;
    v342 = v125;
    v128 = (*(v48 + 24) + v121);
    v348 = *v128;
    v349 = v128[1];
    v350 = v128[2];
    v351 = v128[3];
    v352 = v128[4].i8[0];
    *v347 = v124[2];
    *&v347[9] = *(v124 + 41);
    v345 = *v124;
    v346 = v124[1];
    v353 = v345;
    v354 = v346;
    v356[2] = v350;
    v356[3] = v351;
    v357 = v352;
    v355[0] = *v347;
    v355[1] = *&v347[16];
    v356[0] = v348;
    v356[1] = v349;
    v358 = v345;
    v359 = v346;
    v360[0] = *v347;
    *(v360 + 9) = *(v355 + 9);
    v129 = v348.i64[0];
    v334.i64[0] = v120;
    v333.i64[0] = v121;
    if ((v352 & 0x80000000) == 0)
    {
      *&v361[8] = *(v356 + 8);
      *&v361[24] = *(&v356[1] + 8);
      *&v361[40] = *(&v356[2] + 8);
      *v361 = v356[0].i64[0];
      *&v361[56] = v356[3].i64[1];
      v362 = v352;
      if (v352 == 14 && v356[0].u32[0] == 0xFFFFFFFFLL)
      {
        sub_1AF8A9E80(&v342, &v345);
      }

      else
      {
        swift_unknownObjectRetain();
        sub_1AF8A9E80(&v342, &v345);
        sub_1AF87CE38(v361, &v358, v47);
        swift_unknownObjectRelease();
      }

      sub_1AF8AB47C(&v353, sub_1AF8ABBF4);
      goto LABEL_123;
    }

    if (BYTE8(v355[1]))
    {
      v130 = *(&v354 + 1);
    }

    else
    {
      v130 = 0;
    }

    sub_1AF8A9E80(&v342, &v345);
    v131 = sub_1AF8D93C8(v129, &v345, v336, v49);
    if (v131)
    {
      v132 = v131;
      if ([v131 textureType] == v130)
      {
        swift_unknownObjectRetain();
        v133 = v132;
      }

      else
      {
        v326.i64[0] = v130;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v345 = 0;
        *(&v345 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000024, v313 | 0x8000000000000000);
        v341 = v354;
        v135 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v135);

        MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
        v341 = [v132 textureType];
        type metadata accessor for MTLTextureType(0);
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
        v341 = v326.i64[0];
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v136 = v345;
        v137 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v318 = v132;
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        v138 = qword_1ED73B890;
        sub_1AF6EFB60(0);
        v139 = swift_allocObject();
        *(v139 + 16) = v311;
        *(v139 + 56) = MEMORY[0x1E69E6158];
        *(v139 + 64) = sub_1AF0D544C();
        *(v139 + 32) = v136;

        sub_1AFDFC4C8(v137, &dword_1AF0CE000, v138, "%{public}s", 10, 2, v139);

        v317.i64[0] = v136;
        v140 = v327;
        sub_1AFDFC288();
        v141 = v325[12];
        v316.i64[0] = *(&v136 + 1);
        v142 = v325[16];
        v143 = v137;
        v144 = v324;
        v145 = &v324[v325[20]];
        (*v312)(v324, v140, v328);
        *(v144 + v141) = v143;
        *(v144 + v142) = 0;
        v146 = v316.i64[0];
        *v145 = v317.i64[0];
        *(v145 + 1) = v146;
        sub_1AFDFC608();

        sub_1AF8AB47C(v144, sub_1AF0D4E74);
        v49 = v323;

        v133 = sub_1AF8DC0E8(v326.i64[0]);

        v48 = v337;
        v123 = v319.i64[0];
      }

      if (v129 != 0xFFFFFFFF && (v129 & 0x80000000) == 0 && v129 < *(v314 + 1) && ((v147 = *v314 + 12 * v129, HIDWORD(v129) == 0xFFFFFFFF) || *(v147 + 8) == HIDWORD(v129)))
      {
        v148 = *(*(*(v336 + 11) + 8 * *(v147 + 6) + 32) + 16);
        v149 = *(v148 + 128);
        if (*(v149 + 16) && (v150 = sub_1AF449CB8(&type metadata for MovieFileAsset), (v151 & 1) != 0))
        {
          v152 = *(*(v148 + 24) + 16 * *(*(v149 + 56) + 8 * v150) + 32);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          LOBYTE(v73) = v152 == &type metadata for MovieFileAsset;
        }

        else
        {
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          LOBYTE(v73) = 0;
        }

        v47 = v331;
        v48 = v337;
      }

      else
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        LOBYTE(v73) = 0;
        v47 = v331;
      }

      goto LABEL_120;
    }

    if (v130 <= 4)
    {
      v47 = v331;
      if (v130)
      {
        if (v130 != 2)
        {
          goto LABEL_306;
        }

        v134 = sub_1AF70924C();
      }

      else
      {

        v134 = sub_1AF708F90();
      }

      goto LABEL_119;
    }

    v47 = v331;
    if (v130 != 5)
    {
      break;
    }

    v134 = sub_1AF7097AC();
LABEL_119:
    v133 = v134;

    swift_unknownObjectRetain();
LABEL_120:
    MEMORY[0x1B2718E00]([v47 setTexture:v133 atIndex:v354]);
    if (*((*v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
      v48 = v337;
    }

    sub_1AFDFD4B8();
    sub_1AF8AB47C(&v353, sub_1AF8ABBF4);
    swift_unknownObjectRelease();
    a2 = v321;
LABEL_123:
    v119 = *(v48 + 16);
    if (v334.i64[0] == *(v119 + 16))
    {
      swift_unknownObjectRelease();
      v84 = v322.i64[0];
      goto LABEL_196;
    }

    v120 = v334.i64[0] + 1;
    v122 = v332.i64[0] + 64;
    v121 = v333.i64[0] + 80;
  }

  if (v130 == 7)
  {

    v134 = sub_1AF7094F0();
    goto LABEL_119;
  }

LABEL_306:
  *&v345 = 0;
  *(&v345 + 1) = 0xE000000000000000;

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF38E30);
  v341 = v130;
  type metadata accessor for MTLTextureType(0);
LABEL_307:
  sub_1AFDFE458();
  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF8A8BA0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 96);
  v5 = (v2 + 96);
  while (1)
  {
    v6 = *v5;
    v5 += 80;
    if (v6 < 0 && *(v4 - 8) == a1)
    {
      break;
    }

    v4 = v5;
    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

void (*sub_1AF8A8C08(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x1A1uLL);
  }

  *a1 = v5;
  v6 = *a2;
  v7 = *v2;
  v8 = (*(*v2 + 16) + (*a2 << 6));
  v10 = v8[3];
  v9 = v8[4];
  v11 = *(v8 + 73);
  *(v5 + 136) = v8[2];
  *(v5 + 177) = v11;
  *(v5 + 168) = v9;
  *(v5 + 152) = v10;
  v12 = *(v7 + 24) + 80 * v6;
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  v15 = *(v12 + 80);
  LOBYTE(v7) = *(v12 + 96);
  *(v5 + 416) = v7;
  *(v5 + 384) = v14;
  *(v5 + 400) = v15;
  *(v5 + 368) = v13;
  *(v5 + 352) = *(v12 + 32);
  v16 = *(v5 + 152);
  *v5 = *(v5 + 136);
  *(v5 + 16) = v16;
  *(v5 + 32) = *(v5 + 168);
  *(v5 + 41) = *(v5 + 177);
  v17 = *(v5 + 352);
  v18 = *(v5 + 368);
  v19 = *(v5 + 384);
  v20 = *(v5 + 400);
  *(v5 + 128) = v7;
  *(v5 + 96) = v19;
  *(v5 + 112) = v20;
  *(v5 + 64) = v17;
  *(v5 + 80) = v18;
  sub_1AF8A9E80(v5 + 136, v5 + 208);
  return sub_1AF8A8D10;
}

void sub_1AF8A8D10(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 112);
  v1[19] = *(*a1 + 96);
  v1[20] = v2;
  *(v1 + 336) = *(v1 + 128);
  v3 = v1[3];
  v1[15] = v1[2];
  v1[16] = v3;
  v4 = v1[5];
  v1[17] = v1[4];
  v1[18] = v4;
  v5 = v1[1];
  v1[13] = *v1;
  v1[14] = v5;
  sub_1AF8AB47C((v1 + 13), sub_1AF8ABBF4);

  free(v1);
}

uint64_t sub_1AF8A8D88@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *a2 = *a1;
  *(a2 + 16) = v3;
}

uint64_t sub_1AF8A8DA0@<X0>(void *a1@<X8>)
{
  v2 = *(*(*v1 + 16) + 16);
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = v2;
}

uint64_t *sub_1AF8A8DCC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = a2 - 1;
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = *a3;
    if (*a3 - v4 < v5)
    {
      v5 = *a3 - v4;
    }

    if (v5 + 1 >= 3)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFFELL;
      v4 += v7;
      v9 = v7;
      do
      {
        v9 -= 2;
      }

      while (v9);
    }

    else
    {
      v7 = 0;
    }

    v10 = a2 - v7;
    while (1)
    {
      v8 = v6 == v4;
      if (v6 == v4)
      {
        break;
      }

      ++v4;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    v4 = 0;
  }

LABEL_14:
  *a4 = v4;
  *(a4 + 8) = v8;
  return result;
}

void *sub_1AF8A8E54()
{
  v1 = sub_1AFC05718(*v0);

  return v1;
}

uint64_t sub_1AF8A8EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = *(v8 + 24);

  v11 = sub_1AF8A0370(a1, a2, v10);

  v12 = *(v8 + 32);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v11;
  v13[4] = v12;
  *a4 = v13;
}

void sub_1AF8A907C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CustomParameters();
    v8 = sub_1AF8AC588(&qword_1EB63FD90, v7, type metadata accessor for CustomParameters, aY_60);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF8A9180(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1AF8AC588(&qword_1ED722900, a2, type metadata accessor for CustomParameters, asc_1AFE7EAAC);
  result = sub_1AF8AC588(&unk_1ED722908, v3, type metadata accessor for CustomParameters, asc_1AFE7EA84);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF8A9208()
{
  result = qword_1ED7229D0;
  if (!qword_1ED7229D0)
  {
    result = swift_getWitnessTable(a5_21, &type metadata for ShaderArgument, v0, v1);
    atomic_store(result, &qword_1ED7229D0);
  }

  return result;
}

void sub_1AF8A925C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a1 + 64);
  if (v9 < 0)
  {
    v17 = sub_1AF8D93C8(v8, &v18, a3, a4);
    if (v17)
    {
      [v5 setTexture:v17 atIndex:a2];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = a1[1];
    v10 = a1[2];
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1[5];
    v15 = a1[6];
    v16 = a1[7];
    switch(v9)
    {
      case 1:
        [v5 setBytes:&v18 length:8 atIndex:{a2, v8, v19, v20, v21, v22, v23, v24, v25}];
        break;
      case 2:
      case 3:
      case 4:
        [v5 setBytes:&v18 length:16 atIndex:{a2, v8, v11, v20, v21, v22, v23, v24, v25}];
        break;
      case 5:
      case 6:
      case 10:
        [v5 setBytes:&v18 length:32 atIndex:{a2, v8, v11, v10, v12, v22, v23, v24, v25}];
        break;
      case 7:
        [v5 setBytes:&v18 length:24 atIndex:{a2, v8, v11, v10, v21, v22, v23, v24, v25}];
        break;
      case 8:
      case 9:
        [v5 setBytes:&v18 length:48 atIndex:{a2, v8, v11, v10, v12, v13, v14, v24, v25}];
        break;
      case 11:
      case 12:
        [v5 setBytes:&v18 length:64 atIndex:{a2, v8, v11, v10, v12, v13, v14, v15, v16}];
        break;
      case 13:
        LOBYTE(v18) = v8;
        [v5 setBytes:&v18 length:1 atIndex:{a2, v18, v19, v20, v21, v22, v23, v24, v25}];
        break;
      default:
        LODWORD(v18) = v8;
        [v5 setBytes:&v18 length:4 atIndex:{a2, v18, v19, v20, v21, v22, v23, v24, v25}];
        break;
    }
  }
}

uint64_t sub_1AF8A9464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a2)
  {
    if (a2 != a5)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3 == a6)
  {
    return sub_1AFB7B338(a1, a4);
  }

  return 0;
}

void *sub_1AF8A94D0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42C1B0(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 40;
    v7 = -v4;
    do
    {
      v8 = (v6 + 16 * v5++);
      while (1)
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = sub_1AF0D3F10(v10);
        v14 = v13;
        v15 = v3[2] + ((v13 & 1) == 0);
        if (v3[3] >= v15)
        {
          break;
        }

        sub_1AF82C648(v15, isUniquelyReferenced_nonNull_native);
        v12 = sub_1AF0D3F10(v10);
        if ((v14 & 1) != (v16 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

LABEL_8:
        if ((v14 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_9:
        v8 += 2;
        *(v3[7] + 8 * v12) = v9;

        ++v5;
        if (v7 + v5 == 1)
        {
          return v3;
        }
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v17 = v12;
      sub_1AF84466C();
      v12 = v17;
      if (v14)
      {
        goto LABEL_9;
      }

LABEL_12:
      v3[(v12 >> 6) + 8] |= 1 << v12;
      *(v3[6] + 8 * v12) = v10;
      *(v3[7] + 8 * v12) = v9;
      ++v3[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF41FB20(0, *(v2 + 2) + 1, 1, v2);
      }

      v19 = *(v2 + 2);
      v18 = *(v2 + 3);
      if (v19 >= v18 >> 1)
      {
        v2 = sub_1AF41FB20(v18 > 1, v19 + 1, 1, v2);
      }

      *(v2 + 2) = v19 + 1;
      *&v2[8 * v19 + 32] = v10;
    }

    while (v7 + v5);
  }

  return v3;
}

uint64_t sub_1AF8A96E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = 0;
  if (a2)
  {
    if (a2 != a5)
    {
      goto LABEL_7;
    }
  }

  else if (a5)
  {
    goto LABEL_7;
  }

  if (a3 == a6)
  {
    result = sub_1AFB7B338(a1, a4);
  }

LABEL_7:
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = result & 1;
  return result;
}

uint64_t sub_1AF8A9770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A695361746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AF8A98D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1668506980 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AF8A99EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68747065447369 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

unint64_t sub_1AF8A9B04(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_1AF8A9B50(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF43ADB0(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 48;
    v7 = -v4;
    v24 = a1 + 48;
    do
    {
      v8 = (v6 + 24 * v5++);
      while (1)
      {
        v9 = *(v8 - 2);
        v10 = *(v8 - 1);
        v11 = *v8;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = sub_1AF0D3F10(v9);
        v15 = v14;
        v16 = v3[2] + ((v14 & 1) == 0);
        if (v3[3] >= v16)
        {
          break;
        }

        sub_1AF82F63C(v16, isUniquelyReferenced_nonNull_native);
        v13 = sub_1AF0D3F10(v9);
        if ((v15 & 1) != (v17 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

LABEL_8:
        if ((v15 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_9:
        v18 = (v3[7] + 16 * v13);
        v8 += 3;
        *v18 = v10;
        v18[1] = v11;

        ++v5;
        if (v7 + v5 == 1)
        {
          return v3;
        }
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v19 = v13;
      sub_1AF846294();
      v13 = v19;
      if (v15)
      {
        goto LABEL_9;
      }

LABEL_12:
      v3[(v13 >> 6) + 8] |= 1 << v13;
      *(v3[6] + 8 * v13) = v9;
      v20 = (v3[7] + 16 * v13);
      *v20 = v10;
      v20[1] = v11;
      ++v3[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF41FB20(0, *(v2 + 2) + 1, 1, v2);
      }

      v6 = v24;
      v22 = *(v2 + 2);
      v21 = *(v2 + 3);
      if (v22 >= v21 >> 1)
      {
        v2 = sub_1AF41FB20(v21 > 1, v22 + 1, 1, v2);
      }

      *(v2 + 2) = v22 + 1;
      *&v2[8 * v22 + 32] = v9;
    }

    while (v7 + v5);
  }

  return v3;
}

void sub_1AF8A9D74(uint64_t a1, double a2)
{
  if (!qword_1ED721F58)
  {
    v2 = MEMORY[0x1E69E6EF0];
    sub_1AF8AB7E4(255, &qword_1ED721F40, &type metadata for ShaderArgument, MEMORY[0x1E69E6EF0]);
    sub_1AF8A9E30(&qword_1ED721F48, &qword_1ED721F40, v2, MEMORY[0x1E69E6F00], v3);
    v4 = sub_1AFDFE468();
    if (!v5)
    {
      atomic_store(v4, &qword_1ED721F58);
    }
  }
}

uint64_t sub_1AF8A9E30(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), const char *a4, double a5)
{
  result = *a1;
  if (!result)
  {
    sub_1AF8AB7E4(255, a2, &type metadata for ShaderArgument, a3);
    result = swift_getWitnessTable(a4, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF8A9E80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v5;
  *(a2 + 24) = v4;

  return a2;
}

unint64_t sub_1AF8A9ED4()
{
  result = qword_1ED7229E0;
  if (!qword_1ED7229E0)
  {
    result = swift_getWitnessTable(aU_38, &type metadata for ShaderArgument, v0, v1);
    atomic_store(result, &qword_1ED7229E0);
  }

  return result;
}

uint64_t sub_1AF8A9F28(uint64_t a1, uint64_t a2, double a3)
{
  sub_1AF8AB7E4(0, &qword_1EB63FDC8, &type metadata for ShaderArgument, MEMORY[0x1E69E6EE8]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1AF8A9FB0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF4403AC(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v7 = *i;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_1AF0D3F10(v6);
      v11 = v10;
      v12 = v3[2] + ((v10 & 1) == 0);
      if (v3[3] < v12)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      v16 = v9;
      sub_1AF84E5F8();
      v9 = v16;
      if ((v11 & 1) == 0)
      {
LABEL_10:
        v3[(v9 >> 6) + 8] |= 1 << v9;
        *(v3[6] + 8 * v9) = v6;
        *(v3[7] + 8 * v9) = v7;
        ++v3[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1AF41FB20(0, *(v2 + 2) + 1, 1, v2);
        }

        v15 = *(v2 + 2);
        v14 = *(v2 + 3);
        if (v15 >= v14 >> 1)
        {
          v2 = sub_1AF41FB20(v14 > 1, v15 + 1, 1, v2);
        }

        *(v2 + 2) = v15 + 1;
        *&v2[8 * v15 + 32] = v6;
        goto LABEL_4;
      }

LABEL_3:
      *(v3[7] + 8 * v9) = v7;
LABEL_4:
      if (!--v4)
      {
        return v3;
      }
    }

    sub_1AF83EEF4(v12, isUniquelyReferenced_nonNull_native);
    v9 = sub_1AF0D3F10(v6);
    if ((v11 & 1) != (v13 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_9:
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_3;
  }

  return v3;
}

void *sub_1AF8AA1BC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = MEMORY[0x1E69E7CC0];
  v8 = a2(MEMORY[0x1E69E7CC0]);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a1 + 40;
    v28 = *(a1 + 16);
    v26 = a4;
    v27 = a1 + 40;
    do
    {
      v12 = v9 - v10;
      for (i = (v11 + 16 * v10++); ; i += 2)
      {
        v15 = *(i - 1);
        v14 = *i;
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = sub_1AF0D3F10(v15);
        v19 = v18;
        v20 = v8[2] + ((v18 & 1) == 0);
        if (v8[3] >= v20)
        {
          break;
        }

        a3(v20, isUniquelyReferenced_nonNull_native);
        v17 = sub_1AF0D3F10(v15);
        if ((v19 & 1) != (v21 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

LABEL_8:
        if ((v19 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_9:
        *(v8[7] + 8 * v17) = v14;

        ++v10;
        if (!--v12)
        {
          return v8;
        }
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v22 = v17;
      v26();
      v17 = v22;
      if (v19)
      {
        goto LABEL_9;
      }

LABEL_12:
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + 8 * v17) = v15;
      *(v8[7] + 8 * v17) = v14;
      ++v8[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF41FB20(0, *(v7 + 2) + 1, 1, v7);
      }

      v9 = v28;
      v24 = *(v7 + 2);
      v23 = *(v7 + 3);
      if (v24 >= v23 >> 1)
      {
        v7 = sub_1AF41FB20(v23 > 1, v24 + 1, 1, v7);
      }

      *(v7 + 2) = v24 + 1;
      *&v7[8 * v24 + 32] = v15;
      v11 = v27;
    }

    while (v12 != 1);
  }

  return v8;
}

uint64_t sub_1AF8AA3F0(void *a1)
{
  sub_1AF8AC5D0(0, &qword_1ED721F28, sub_1AF8AC4E0, &type metadata for ShaderArgument.BufferDesc.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AF8AC4E0();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1AFDFE748();
    type metadata accessor for MTLDataType(0);
    v10[30] = 1;
    sub_1AF8AC588(&qword_1ED721FC8, 255, type metadata accessor for MTLDataType, protocol conformance descriptor for MTLDataType);
    sub_1AFDFE768();
    v10[29] = 2;
    sub_1AFDFE748();
    v10[28] = 3;
    sub_1AFDFE748();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AF8AA678(void *a1)
{
  sub_1AF8AC5D0(0, &unk_1ED721F10, sub_1AF8AC534, &type metadata for ShaderArgument.TextureDesc.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AF8AC534();
  sub_1AFDFF3B8();
  if (!v1)
  {
    type metadata accessor for MTLTextureType(0);
    v11 = 0;
    sub_1AF8AC588(&unk_1ED721FB0, 255, type metadata accessor for MTLTextureType, protocol conformance descriptor for MTLTextureType);
    sub_1AFDFE768();
    v8 = v12;
    type metadata accessor for MTLDataType(0);
    v11 = 1;
    sub_1AF8AC588(&qword_1ED721FC8, 255, type metadata accessor for MTLDataType, protocol conformance descriptor for MTLDataType);
    sub_1AFDFE768();
    LOBYTE(v12) = 2;
    sub_1AFDFE718();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AF8AA928@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_1AF8AC5D0(0, &qword_1ED721F08, sub_1AF8AC16C, &type metadata for ShaderArgument.Desc.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8AC16C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v14;
  v18 = 0;
  sub_1AF8AC1C0();
  sub_1AFDFE768();
  (*(v6 + 8))(v8, v5);
  v13 = v15;
  v12 = v16;
  v11 = v17;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v13;
  *(v10 + 16) = v12;
  *(v10 + 24) = v11;
  *(v10 + 32) = 0;
  return result;
}

uint64_t sub_1AF8AABE0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v23 = a2;
  sub_1AF8AC5D0(0, &qword_1ED721F20, sub_1AF8ABC58, &type metadata for ShaderArgument.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8ABC58();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v6;
  v10 = v23;
  LOBYTE(v27[0]) = 0;
  v11 = sub_1AFDFE708();
  v13 = v12;
  v14 = v11;
  LOBYTE(v27[0]) = 1;
  v22 = sub_1AFDFE748();
  v34 = 2;
  sub_1AF8ABCAC();
  sub_1AFDFE768();
  (*(v9 + 8))(v8, v5);
  v21 = v29;
  v15 = *(&v30 + 1);
  v20 = v30;
  v16 = v31;
  LOBYTE(v9) = v32;
  v33 = v32;
  *&v24 = v14;
  *(&v24 + 1) = v13;
  v17 = v22;
  *&v25 = v22;
  *(&v25 + 1) = v29;
  *v26 = v30;
  *&v26[16] = v31;
  v26[24] = v32;
  sub_1AF8A9E80(&v24, v27);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v27[0] = v14;
  v27[1] = v13;
  v27[2] = v17;
  v27[3] = v21;
  v27[4] = v20;
  v27[5] = v15;
  v27[6] = v16;
  v28 = v9;
  result = sub_1AF8AB528(v27);
  v19 = v25;
  *v10 = v24;
  v10[1] = v19;
  v10[2] = *v26;
  *(v10 + 41) = *&v26[9];
  return result;
}

void *sub_1AF8AAEC8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42D96C(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 48;
    v7 = -v4;
    v24 = a1 + 48;
    do
    {
      for (i = (v6 + 24 * v5++); ; i += 3)
      {
        v10 = *(i - 2);
        v9 = *(i - 1);
        v11 = *i;

        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = sub_1AF419914(v10, v9);
        v15 = v14;
        v16 = v3[2] + ((v14 & 1) == 0);
        if (v3[3] >= v16)
        {
          break;
        }

        sub_1AF82CE44(v16, isUniquelyReferenced_nonNull_native);
        v13 = sub_1AF419914(v10, v9);
        if ((v15 & 1) != (v17 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

LABEL_8:
        if ((v15 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_9:
        *(v3[7] + 8 * v13) = v11;

        ++v5;
        if (v7 + v5 == 1)
        {
          return v3;
        }
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v18 = v13;
      sub_1AF844B24();
      v13 = v18;
      if (v15)
      {
        goto LABEL_9;
      }

LABEL_12:
      v3[(v13 >> 6) + 8] |= 1 << v13;
      v19 = (v3[6] + 16 * v13);
      *v19 = v10;
      v19[1] = v9;
      *(v3[7] + 8 * v13) = v11;
      ++v3[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF420554(0, *(v2 + 2) + 1, 1, v2);
      }

      v21 = *(v2 + 2);
      v20 = *(v2 + 3);
      if (v21 >= v20 >> 1)
      {
        v2 = sub_1AF420554(v20 > 1, v21 + 1, 1, v2);
      }

      *(v2 + 2) = v21 + 1;
      v22 = &v2[16 * v21];
      *(v22 + 4) = v10;
      *(v22 + 5) = v9;
      v6 = v24;
    }

    while (v7 + v5);
  }

  return v3;
}

void sub_1AF8AB110(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 argumentIndex];
  v5 = [a1 name];
  v6 = sub_1AFDFCEF8();
  v8 = v7;

  v9 = [a1 textureReferenceType];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 textureType];
    v12 = [v10 textureDataType];
    LODWORD(v14) = [v10 isDepthTexture];

    v13 = 0;
    v14 = v14;
    v17 = 1;
  }

  else
  {
    v15 = [a1 pointerType];
    if (v15)
    {
      v16 = v15;
      v11 = [v15 dataSize];
      v12 = [v16 elementType];
      v13 = [v16 alignment];

      v14 = 0;
      v17 = 0;
    }

    else
    {
      v11 = sub_1AF470DA4();
      v12 = [a1 dataType];
      v14 = [a1 offset];

      v17 = 0;
      v13 = v11;
    }
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v4;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v13;
  *(a2 + 56) = v17;
}

char *sub_1AF8AB2CC(uint64_t a1, uint64_t a2, id a3)
{
  v3 = a2 - a1;
  if (a2 != a1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = [a3 elementStructType];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1AF8A40DC(v7);
      }

      else
      {
        v10 = [a3 elementArrayType];
        if (!v10)
        {
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v8 = v10;
        v9 = sub_1AF8A3F20(v10);
      }

      v11 = v9;

      v12 = *(v11 + 16);
      v13 = *(v4 + 2);
      v14 = v13 + v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v14 <= *(v4 + 3) >> 1)
      {
        if (*(v11 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v13 <= v14)
        {
          v16 = v13 + v12;
        }

        else
        {
          v16 = v13;
        }

        v4 = sub_1AF4265B0(isUniquelyReferenced_nonNull_native, v16, 1, v4);
        if (*(v11 + 16))
        {
LABEL_19:
          swift_arrayInitWithCopy();

          if (v12)
          {
            *(v4 + 2) += v12;
          }

          goto LABEL_6;
        }
      }

LABEL_6:
      if (!--v3)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AF8AB47C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AF8AB4DC()
{
  result = qword_1ED723130;
  if (!qword_1ED723130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED723130);
  }

  return result;
}

uint64_t sub_1AF8AB554(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), double a5)
{
  sub_1AF8AB7E4(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1AF8AB5B0()
{
  result = qword_1ED722918;
  if (!qword_1ED722918)
  {
    result = swift_getWitnessTable(aN_3, &type metadata for CustomParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722918);
  }

  return result;
}

unint64_t sub_1AF8AB604(double a1)
{
  result = qword_1ED722020;
  if (!qword_1ED722020)
  {
    v6[3] = v1;
    v6[4] = v2;
    sub_1AF8AB7E4(255, &qword_1ED722030, &type metadata for ShaderArgument, MEMORY[0x1E69E62F8]);
    v5 = v4;
    v6[0] = sub_1AF8AB6A0();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v5, v6);
    atomic_store(result, &qword_1ED722020);
  }

  return result;
}

unint64_t sub_1AF8AB6A0()
{
  result = qword_1ED7229C8;
  if (!qword_1ED7229C8)
  {
    result = swift_getWitnessTable(aH_12, &type metadata for ShaderArgument, v0, v1);
    atomic_store(result, &qword_1ED7229C8);
  }

  return result;
}

unint64_t sub_1AF8AB6F4(double a1)
{
  result = qword_1ED721FF8;
  if (!qword_1ED721FF8)
  {
    v6[3] = v1;
    v6[4] = v2;
    sub_1AF8AB7E4(255, &qword_1ED722000, &type metadata for ShaderParameter, MEMORY[0x1E69E62F8]);
    v5 = v4;
    v6[0] = sub_1AF8AB790();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v5, v6);
    atomic_store(result, &qword_1ED721FF8);
  }

  return result;
}

unint64_t sub_1AF8AB790()
{
  result = qword_1ED7229A0;
  if (!qword_1ED7229A0)
  {
    result = swift_getWitnessTable(aYo, &type metadata for ShaderParameter, v0, v1);
    atomic_store(result, &qword_1ED7229A0);
  }

  return result;
}

void sub_1AF8AB7E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF8AB834()
{
  result = qword_1ED721FF0;
  if (!qword_1ED721FF0)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF8AB7E4(255, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF8AB8D0();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v4, v5);
    atomic_store(result, &qword_1ED721FF0);
  }

  return result;
}

unint64_t sub_1AF8AB8D0()
{
  result = qword_1ED7228E8;
  if (!qword_1ED7228E8)
  {
    result = swift_getWitnessTable(aM_39, &type metadata for FunctionConstant, v0, v1);
    atomic_store(result, &qword_1ED7228E8);
  }

  return result;
}

unint64_t sub_1AF8AB924()
{
  result = qword_1EB63FDD8;
  if (!qword_1EB63FDD8)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF8AB7E4(255, &qword_1ED722030, &type metadata for ShaderArgument, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF8AB9C0();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v4, v5);
    atomic_store(result, &qword_1EB63FDD8);
  }

  return result;
}

unint64_t sub_1AF8AB9C0()
{
  result = qword_1EB63FDE0;
  if (!qword_1EB63FDE0)
  {
    result = swift_getWitnessTable(byte_1AFE7E898, &type metadata for ShaderArgument, v0, v1);
    atomic_store(result, &qword_1EB63FDE0);
  }

  return result;
}

unint64_t sub_1AF8ABA14()
{
  result = qword_1EB63FDE8;
  if (!qword_1EB63FDE8)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF8AB7E4(255, &qword_1ED722000, &type metadata for ShaderParameter, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF8ABAB0();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v4, v5);
    atomic_store(result, &qword_1EB63FDE8);
  }

  return result;
}

unint64_t sub_1AF8ABAB0()
{
  result = qword_1EB63FDF0;
  if (!qword_1EB63FDF0)
  {
    result = swift_getWitnessTable(aQk, &type metadata for ShaderParameter, v0, v1);
    atomic_store(result, &qword_1EB63FDF0);
  }

  return result;
}

unint64_t sub_1AF8ABB04()
{
  result = qword_1EB63FDF8;
  if (!qword_1EB63FDF8)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF8AB7E4(255, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AF8ABBA0();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v4, v5);
    atomic_store(result, &qword_1EB63FDF8);
  }

  return result;
}

unint64_t sub_1AF8ABBA0()
{
  result = qword_1EB63FE00;
  if (!qword_1EB63FE00)
  {
    result = swift_getWitnessTable(aE_43, &type metadata for FunctionConstant, v0, v1);
    atomic_store(result, &qword_1EB63FE00);
  }

  return result;
}

void sub_1AF8ABBF4()
{
  if (!qword_1ED722A20)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED722A20);
    }
  }
}

unint64_t sub_1AF8ABC58()
{
  result = qword_1ED722A68;
  if (!qword_1ED722A68)
  {
    result = swift_getWitnessTable(byte_1AFE7EDA0, &type metadata for ShaderArgument.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722A68);
  }

  return result;
}

unint64_t sub_1AF8ABCAC()
{
  result = qword_1ED7229F0;
  if (!qword_1ED7229F0)
  {
    result = swift_getWitnessTable(byte_1AFE7ED78, &type metadata for ShaderArgument.Desc, v0, v1);
    atomic_store(result, &qword_1ED7229F0);
  }

  return result;
}

unint64_t sub_1AF8ABD00()
{
  result = qword_1EB63FE10;
  if (!qword_1EB63FE10)
  {
    result = swift_getWitnessTable(asc_1AFE7ED50, &type metadata for ShaderArgument.Desc, v0, v1);
    atomic_store(result, &qword_1EB63FE10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderArgument.Desc(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderArgument.Desc(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

double destroy for PerStageShaderArguments(void *a1)
{

  swift_unknownObjectRelease();
  return result;
}

uint64_t *sub_1AF8ABE5C(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for PerStageShaderArguments(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[2] = a2[2];
  return a1;
}

void *assignWithTake for PerStageShaderArguments(void *a1, uint64_t a2)
{

  *a1 = *a2;
  swift_unknownObjectRelease();
  a1[2] = *(a2 + 16);
  return a1;
}

unint64_t sub_1AF8ABF60()
{
  result = qword_1EB63FE18;
  if (!qword_1EB63FE18)
  {
    result = swift_getWitnessTable(a1_34, &type metadata for CustomParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FE18);
  }

  return result;
}

unint64_t sub_1AF8ABFB8()
{
  result = qword_1EB63FE20;
  if (!qword_1EB63FE20)
  {
    result = swift_getWitnessTable(asc_1AFE7ED28, &type metadata for ShaderArgument.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FE20);
  }

  return result;
}

unint64_t sub_1AF8AC010()
{
  result = qword_1ED722A58;
  if (!qword_1ED722A58)
  {
    result = swift_getWitnessTable(aY_61, &type metadata for ShaderArgument.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722A58);
  }

  return result;
}

unint64_t sub_1AF8AC068()
{
  result = qword_1ED722A60;
  if (!qword_1ED722A60)
  {
    result = swift_getWitnessTable(aQ_65, &type metadata for ShaderArgument.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722A60);
  }

  return result;
}

unint64_t sub_1AF8AC0C0()
{
  result = qword_1ED722928;
  if (!qword_1ED722928)
  {
    result = swift_getWitnessTable(aI_38, &type metadata for CustomParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722928);
  }

  return result;
}

unint64_t sub_1AF8AC118()
{
  result = qword_1ED722930;
  if (!qword_1ED722930)
  {
    result = swift_getWitnessTable(aA_53, &type metadata for CustomParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722930);
  }

  return result;
}

unint64_t sub_1AF8AC16C()
{
  result = qword_1ED722A10;
  if (!qword_1ED722A10)
  {
    result = swift_getWitnessTable(byte_1AFE7F038, &type metadata for ShaderArgument.Desc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722A10);
  }

  return result;
}

unint64_t sub_1AF8AC1C0()
{
  result = qword_1ED722A78;
  if (!qword_1ED722A78)
  {
    result = swift_getWitnessTable(aY_59, &type metadata for ShaderArgument.BufferDesc, v0, v1);
    atomic_store(result, &qword_1ED722A78);
  }

  return result;
}

unint64_t sub_1AF8AC214()
{
  result = qword_1ED722A30;
  if (!qword_1ED722A30)
  {
    result = swift_getWitnessTable(byte_1AFE7EFE8, &type metadata for ShaderArgument.TextureDesc, v0, v1);
    atomic_store(result, &qword_1ED722A30);
  }

  return result;
}

unint64_t sub_1AF8AC268()
{
  result = qword_1EB63FE38;
  if (!qword_1EB63FE38)
  {
    result = swift_getWitnessTable(byte_1AFE7EFC0, &type metadata for ShaderArgument.TextureDesc, v0, v1);
    atomic_store(result, &qword_1EB63FE38);
  }

  return result;
}

unint64_t sub_1AF8AC2BC()
{
  result = qword_1EB63FE40;
  if (!qword_1EB63FE40)
  {
    result = swift_getWitnessTable(byte_1AFE7EF98, &type metadata for ShaderArgument.BufferDesc, v0, v1);
    atomic_store(result, &qword_1EB63FE40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderArgument.TextureDesc(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderArgument.TextureDesc(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF8AC3DC()
{
  result = qword_1EB63FE50;
  if (!qword_1EB63FE50)
  {
    result = swift_getWitnessTable(asc_1AFE7EF70, &type metadata for ShaderArgument.Desc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FE50);
  }

  return result;
}

unint64_t sub_1AF8AC434()
{
  result = qword_1ED7229F8;
  if (!qword_1ED7229F8)
  {
    result = swift_getWitnessTable(aI_39, &type metadata for ShaderArgument.Desc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7229F8);
  }

  return result;
}

unint64_t sub_1AF8AC48C()
{
  result = qword_1ED722A00;
  if (!qword_1ED722A00)
  {
    result = swift_getWitnessTable(aA_54, &type metadata for ShaderArgument.Desc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722A00);
  }

  return result;
}

unint64_t sub_1AF8AC4E0()
{
  result = qword_1ED722AA0;
  if (!qword_1ED722AA0)
  {
    result = swift_getWitnessTable(aQ_64, &type metadata for ShaderArgument.BufferDesc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722AA0);
  }

  return result;
}

unint64_t sub_1AF8AC534()
{
  result = qword_1ED722A48;
  if (!qword_1ED722A48)
  {
    result = swift_getWitnessTable(byte_1AFE7F1F8, &type metadata for ShaderArgument.TextureDesc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722A48);
  }

  return result;
}

uint64_t sub_1AF8AC588(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF8AC5D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF8AC65C()
{
  result = qword_1EB63FE78;
  if (!qword_1EB63FE78)
  {
    result = swift_getWitnessTable(a1_35, &type metadata for ShaderArgument.BufferDesc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FE78);
  }

  return result;
}

unint64_t sub_1AF8AC6B4()
{
  result = qword_1EB63FE80;
  if (!qword_1EB63FE80)
  {
    result = swift_getWitnessTable(aY_62, &type metadata for ShaderArgument.TextureDesc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FE80);
  }

  return result;
}

unint64_t sub_1AF8AC70C()
{
  result = qword_1ED722A38;
  if (!qword_1ED722A38)
  {
    result = swift_getWitnessTable(byte_1AFE7F140, &type metadata for ShaderArgument.TextureDesc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722A38);
  }

  return result;
}

unint64_t sub_1AF8AC764()
{
  result = qword_1ED722A40;
  if (!qword_1ED722A40)
  {
    result = swift_getWitnessTable(aY_63, &type metadata for ShaderArgument.TextureDesc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722A40);
  }

  return result;
}

unint64_t sub_1AF8AC7BC()
{
  result = qword_1ED722A88;
  if (!qword_1ED722A88)
  {
    result = swift_getWitnessTable(aI_40, &type metadata for ShaderArgument.BufferDesc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722A88);
  }

  return result;
}

unint64_t sub_1AF8AC814()
{
  result = qword_1ED722A90;
  if (!qword_1ED722A90)
  {
    result = swift_getWitnessTable(byte_1AFE7F0B0, &type metadata for ShaderArgument.BufferDesc.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED722A90);
  }

  return result;
}

uint64_t sub_1AF8AC8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF8AC930(uint64_t a1)
{
  v2 = sub_1AF8ADD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8AC96C(uint64_t a1)
{
  v2 = sub_1AF8ADD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8AC9A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF8ADDDC(0, &qword_1EB63FEA8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8ADD88();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = sub_1AFDFE708();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_1AF8ACB34(void *a1)
{
  sub_1AF8ADDDC(0, &qword_1EB63FEB8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8ADD88();
  sub_1AFDFF3F8();
  sub_1AFDFE8B8();
  return (*(v4 + 8))(v6, v3);
}

id sub_1AF8ACC80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v107 = *MEMORY[0x1E69E9840];
  sub_1AF0D0E3C(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v87 - v10;
  v12 = sub_1AFDFC128();
  v91 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v98 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v87 - v15;
  v17 = *v2;
  if (*(v17 + 16))
  {
    v18 = sub_1AF419914(a1, a2);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);
      swift_unknownObjectRetain();
      return v20;
    }
  }

  v21 = v3[2];
  if (!v21)
  {
    return 0;
  }

  v99 = v11;
  v100 = v12;
  v90 = v16;
  v101 = v8;
  v88 = v3;
  v22 = objc_allocWithZone(MEMORY[0x1E6974438]);
  swift_unknownObjectRetain();
  v23 = [v22 initWithDevice_];
  sub_1AF0D0E3C(0, &qword_1EB63FE90, sub_1AF8ADBE8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v87[1] = v21;
  v25 = inited;
  *(inited + 16) = xmmword_1AFE4C680;
  v26 = *MEMORY[0x1E69743E8];
  *(inited + 32) = *MEMORY[0x1E69743E8];
  v97 = a1;
  v27 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v28 = v26;
  v29 = [v27 initWithBool_];
  v30 = *MEMORY[0x1E6974408];
  v25[5] = v29;
  v25[6] = v30;
  v31 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v32 = v30;
  v33 = [v31 initWithUnsignedInteger_];
  v34 = *MEMORY[0x1E6974400];
  v25[7] = v33;
  v25[8] = v34;
  v35 = v97;
  v36 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v37 = v34;
  v25[9] = [v36 initWithUnsignedInteger_];
  v38 = sub_1AF43F9F0(v25);
  swift_setDeallocating();
  sub_1AF8ADBE8(0);
  swift_arrayDestroy();
  v39 = v35;
  v40 = sub_1AFDFCEC8();
  v41 = [objc_opt_self() mainBundle];
  sub_1AF3D9DE4(v38);
  type metadata accessor for Option(0);
  v43 = v42;
  v44 = sub_1AF8ADC68();
  v45 = sub_1AFDFCBE8();

  v105 = 0;
  v20 = [v23 newTextureWithName:v40 scaleFactor:v41 bundle:v45 options:&v105 error:1.0];

  v46 = v105;
  if (!v20)
  {
    v102 = v44;
    v103 = v43;
    v89 = v38;
    v47 = v46;
    v48 = sub_1AFDFBF58();

    swift_willThrow();
    v49 = v88[1];
    v104 = v23;
    if (v49 >> 62)
    {
      v85 = v49;
      v86 = sub_1AFDFE108();
      v49 = v85;
      v50 = v86;
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = MEMORY[0x1E69E7CA0];
    v52 = v39;
    v53 = v89;
    if (v50)
    {
      v54 = 0;
      v96 = v49 & 0xC000000000000001;
      v95 = (v91 + 7);
      v94 = (v91 + 6);
      v55 = (v91 + 1);
      v91 += 4;
      v93 = v49;
      v92 = v50;
      do
      {
        if (v96)
        {
          v56 = MEMORY[0x1B2719C70](v54);
        }

        else
        {
          v56 = *(v49 + 8 * v54 + 32);
        }

        v57 = v56;
        v58 = sub_1AFDFCEC8();
        v59 = v57;
        sub_1AF3D9DE4(v53);
        v60 = sub_1AFDFCBE8();

        v105 = 0;
        v20 = [v104 newTextureWithName:v58 scaleFactor:v59 bundle:v60 options:&v105 error:1.0];

        v61 = v105;
        if (v20)
        {

          swift_unknownObjectRetain_n();

          sub_1AF824548(v20, v52, a2);
          swift_unknownObjectRelease();

          goto LABEL_7;
        }

        v62 = v61;
        v63 = sub_1AFDFBF58();

        swift_willThrow();
        v64 = [v59 resourceURL];
        if (v64)
        {
          v65 = v101;
          v66 = v64;
          sub_1AFDFC0B8();

          v67 = 0;
        }

        else
        {
          v67 = 1;
          v65 = v101;
        }

        v68 = v99;
        v69 = v100;
        (*v95)(v65, v67, 1, v100);
        sub_1AF6EE3D0(v65, v68);
        if ((*v94)(v68, 1, v69) == 1)
        {

          sub_1AF8ADCC0(v68, &qword_1ED7315E0, MEMORY[0x1E6968FB0], sub_1AF0D0E3C);
        }

        else
        {
          v70 = v98;
          v71 = a2;
          sub_1AFDFC088();
          v72 = *v55;
          (*v55)(v68, v69);
          v73 = v53;
          v74 = v90;
          (*v91)(v90, v70, v69);
          v75 = sub_1AFDFC048();
          sub_1AF3D9DE4(v73);
          v76 = sub_1AFDFCBE8();

          v105 = 0;
          v20 = [v104 newTextureWithContentsOfURL:v75 options:v76 error:&v105];

          v77 = v105;
          if (v20)
          {

            v84 = swift_unknownObjectRetain();
            sub_1AF824548(v84, v97, v71);
            swift_unknownObjectRelease();

            v72(v74, v69);
            return v20;
          }

          v78 = v77;
          v79 = sub_1AFDFBF58();

          swift_willThrow();
          v72(v74, v69);

          a2 = v71;
          v52 = v97;
          v53 = v89;
        }

        v51 = MEMORY[0x1E69E7CA0];
        ++v54;
        v49 = v93;
      }

      while (v92 != v54);
    }

    sub_1AF8ADD38(0, &qword_1ED722EE0, v51 + 8, MEMORY[0x1E69E6F90]);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1AFE431C0;
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_1AFDFE218();

    v105 = 0xD00000000000001DLL;
    v106 = 0x80000001AFF38F00;
    MEMORY[0x1B2718AE0](v52, a2);
    v81 = v105;
    v82 = v106;
    *(v80 + 56) = MEMORY[0x1E69E6158];
    *(v80 + 32) = v81;
    *(v80 + 40) = v82;
    sub_1AFDFF258();
    swift_unknownObjectRelease();

    return 0;
  }

  swift_unknownObjectRetain_n();

  sub_1AF824548(v20, v39, a2);
  swift_unknownObjectRelease();

LABEL_7:
  swift_unknownObjectRelease();
  return v20;
}

void *sub_1AF8AD64C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF8ADB00();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_1AF8AD678(uint64_t a1)
{
  v3 = *(a1 + 184);

  sub_1AF6D34A4(&type metadata for AssetCatalog, &off_1F2541758, v3);

  v4 = *(v1 + 16);
  v5 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v6 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v5 + 40));
  sub_1AF6B1714(a1, v4);

  sub_1AF6B1B20(a1, v6, v4);
  v7 = *(v5 + 40);

  os_unfair_lock_unlock(v7);
}

void sub_1AF8AD76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 32);
  v21[0] = *(a3 + 16);
  v21[1] = v6;
  v22 = *(a3 + 48);
  sub_1AF6B06C0(a2, v21, 0x200000000, &v7);
  if (v7)
  {
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v15 = v8;
    v16 = v9;
    v14 = v7;

    sub_1AFD247C4(&v14, a1, a4);

    sub_1AF8ADCC0(&v7, &qword_1ED725EA0, &type metadata for QueryResult, sub_1AF8ADD38);
  }
}

uint64_t sub_1AF8AD8FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    v9 = *(v8 + 184);
    MEMORY[0x1EEE9AC00](v8);

    sub_1AF6D655C(&type metadata for AssetCatalog, &off_1F2541758, v9, a7);
  }

  return result;
}

uint64_t sub_1AF8AD9DC()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED73B840;
  v12 = 0;
  v13 = 2;
  v14 = 0;
  v15 = 2;
  v16 = 0;
  sub_1AF703390(1, &v6);
  v1 = v7;
  v2 = v8;
  v3 = v10;
  v4 = v9 | 4;
  *(v0 + 16) = v6;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  return v0;
}

void *sub_1AF8ADB00()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1AF0D65E4(MEMORY[0x1E69E7CC0]);
  v5 = v0;
  sub_1AF0D4478(0, &qword_1ED7307E8, &off_1E7A77C98);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  MEMORY[0x1B2718E00]();
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  sub_1AFDFD4B8();
  return v1;
}

void sub_1AF8ADBE8(uint64_t a1)
{
  if (!qword_1EB63FE98)
  {
    type metadata accessor for Option(255);
    sub_1AF0D4478(255, &qword_1ED721F80, 0x1E696AD98);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63FE98);
    }
  }
}

unint64_t sub_1AF8ADC68()
{
  result = qword_1EB637E30;
  if (!qword_1EB637E30)
  {
    type metadata accessor for Option(255);
    result = swift_getWitnessTable(asc_1AFE4BF0C, v3, v0, v1);
    atomic_store(result, &qword_1EB637E30);
  }

  return result;
}

uint64_t sub_1AF8ADCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v5 = a4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AF8ADD38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF8ADD88()
{
  result = qword_1EB63FEB0;
  if (!qword_1EB63FEB0)
  {
    result = swift_getWitnessTable(a1_36, &type metadata for TextureNamedAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FEB0);
  }

  return result;
}

void sub_1AF8ADDDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF8ADD88();
    v7 = a3(a1, &type metadata for TextureNamedAsset.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

double destroy for AssetCatalog(void *a1)
{

  swift_unknownObjectRelease();
  return result;
}

uint64_t *sub_1AF8ADE94(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for AssetCatalog(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithTake for AssetCatalog(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);
  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_1AF8ADFC0()
{
  result = qword_1EB63FEC0;
  if (!qword_1EB63FEC0)
  {
    result = swift_getWitnessTable(byte_1AFE7F460, &type metadata for TextureNamedAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FEC0);
  }

  return result;
}

unint64_t sub_1AF8AE018()
{
  result = qword_1EB63FEC8;
  if (!qword_1EB63FEC8)
  {
    result = swift_getWitnessTable(asc_1AFE7F3D0, &type metadata for TextureNamedAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FEC8);
  }

  return result;
}

unint64_t sub_1AF8AE070()
{
  result = qword_1EB63FED0;
  if (!qword_1EB63FED0)
  {
    result = swift_getWitnessTable(a9_29, &type metadata for TextureNamedAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63FED0);
  }

  return result;
}

void *sub_1AF8AE0E4(uint64_t a1, uint64_t *a2)
{
  v128 = a2;
  v133[9] = *MEMORY[0x1E69E9840];
  sub_1AF0D0EA0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v118 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v112 - v6;
  v8 = sub_1AFDFC128();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v112 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v112 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v112 - v17;
  v115 = OBJC_IVAR____TtC3VFX16AssetFileManager_lock;
  [*(a1 + OBJC_IVAR____TtC3VFX16AssetFileManager_lock) lock];
  v124 = sub_1AF43F898(MEMORY[0x1E69E7CC0]);
  v19 = [objc_opt_self() defaultManager];
  v20 = *(v9 + 16);
  v132 = a1;
  v117 = OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory;
  v125 = v20;
  v126 = v9 + 16;
  v20(v18, a1 + OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory, v8);
  sub_1AFDFC0D8();
  v123 = v9;
  v21 = *(v9 + 8);
  v120 = v9 + 8;
  v119 = v21;
  v21(v18, v8);
  v22 = sub_1AFDFCEC8();

  v133[0] = 0;
  v23 = [v19 contentsOfDirectoryAtPath:v22 error:v133];

  v24 = v133[0];
  if (v23)
  {
    v25 = sub_1AFDFD418();
    v26 = v24;
  }

  else
  {
    v27 = v133[0];
    v28 = sub_1AFDFBF58();

    swift_willThrow();
    v116 = 0;
    v25 = MEMORY[0x1E69E7CC0];
  }

  v29 = *(v25 + 16);
  v127 = v8;
  v131 = v29;
  if (!v29)
  {
LABEL_32:

    v66 = *(v132 + OBJC_IVAR____TtC3VFX16AssetFileManager_referencesToWrite);
    v67 = 1 << *(v66 + 32);
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    else
    {
      v68 = -1;
    }

    v69 = v68 & *(v66 + 56);
    v70 = (v67 + 63) >> 6;
    v129 = v123 + 32;
    v130 = OBJC_IVAR____TtC3VFX16AssetFileManager_allReferencesWithTemporaryCopy;

    v71 = 0;
    while (1)
    {
      do
      {
        if (!v69)
        {
          while (1)
          {
            v73 = v71 + 1;
            if (v71 + 1 >= v70)
            {
              break;
            }

            v72 = *(v66 + 8 * v71++ + 64);
            if (v72)
            {
              v71 = v73;
              goto LABEL_43;
            }
          }

          [*(v132 + v115) unlock];
          return v124;
        }

        v72 = v69;
LABEL_43:
        v69 = (v72 - 1) & v72;
        v74 = *v128;
      }

      while (!*(*v128 + 16));
      v131 = (v72 - 1) & v72;
      v75 = (*(v66 + 48) + ((v71 << 10) | (16 * __clz(__rbit64(v72)))));
      v77 = *v75;
      v76 = v75[1];
      sub_1AFDFF288();

      sub_1AFDFD038();
      v78 = sub_1AFDFF2F8();
      v79 = -1 << *(v74 + 32);
      v80 = v78 & ~v79;
      if (((*(v74 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
      {
        break;
      }

      v81 = ~v79;
      while (1)
      {
        v82 = (*(v74 + 48) + 16 * v80);
        v83 = *v82 == v77 && v82[1] == v76;
        if (v83 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v80 = (v80 + 1) & v81;
        if (((*(v74 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v84 = *(v132 + v130);
      if (*(v84 + 16) && (v85 = sub_1AF419914(v77, v76), (v86 & 1) != 0))
      {
        v87 = v123;
        v88 = *(v84 + 56) + *(v123 + 72) * v85;
        v89 = v112;
        v90 = v127;
        v125(v112, v88, v127);
        (*(v87 + 32))(v113, v89, v90);
        v91 = objc_allocWithZone(MEMORY[0x1E696AC38]);
        v92 = sub_1AFDFC048();
        v133[0] = 0;
        v93 = [v91 initWithURL:v92 options:0 error:v133];

        if (!v93)
        {
          v111 = v133[0];

          sub_1AFDFBF58();

          swift_willThrow();

          v49 = v127;
          v110 = &v134;
          goto LABEL_68;
        }

        v94 = v133[0];
        v95 = sub_1AFDFCEC8();
        [v93 setPreferredFilename_];

        v96 = v124;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v133[0] = v96;
        v98 = sub_1AF419914(v77, v76);
        v100 = v99;
        v101 = v96[2] + ((v99 & 1) == 0);
        if (v96[3] >= v101)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v107 = v98;
            sub_1AF84D4C0();
            v98 = v107;
          }
        }

        else
        {
          sub_1AF83CCB4(v101, isUniquelyReferenced_nonNull_native);
          v98 = sub_1AF419914(v77, v76);
          if ((v100 & 1) != (v102 & 1))
          {
            goto LABEL_70;
          }
        }

        v103 = v133[0];
        v124 = v133[0];
        if (v100)
        {
          v104 = *(v133[0] + 7);
          v105 = *(v104 + 8 * v98);
          *(v104 + 8 * v98) = v93;
        }

        else
        {
          *(v133[0] + (v98 >> 6) + 8) |= 1 << v98;
          v106 = (v103[6] + 16 * v98);
          *v106 = v77;
          v106[1] = v76;
          *(v103[7] + 8 * v98) = v93;
          ++v103[2];
        }

        v119(v113, v127);
        v69 = v131;
      }

      else
      {
LABEL_37:

        v69 = v131;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  v30 = 0;
  v130 = OBJC_IVAR____TtC3VFX16AssetFileManager_allReferencesWithTemporaryCopy;
  v114 = v25;
  v129 = v25 + 32;
  v31 = (v123 + 56);
  v122 = v7;
  while (1)
  {
    v33 = (v129 + 16 * v30);
    v35 = *v33;
    v34 = v33[1];
    v36 = *(v132 + v130);
    v37 = *(v36 + 16);

    if (!v37)
    {
      break;
    }

    v38 = sub_1AF419914(v35, v34);
    if ((v39 & 1) == 0)
    {
      break;
    }

    v32 = v123;
    v125(v7, *(v36 + 56) + *(v123 + 72) * v38, v8);
    (*(v32 + 56))(v7, 0, 1, v8);

    sub_1AF8B08E4(v7, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
LABEL_7:
    if (++v30 == v131)
    {
      goto LABEL_32;
    }
  }

  v40 = *v31;
  (*v31)(v7, 1, 1, v8);
  sub_1AF8B08E4(v7, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  v41 = *v128;
  if (!*(*v128 + 16))
  {

    goto LABEL_7;
  }

  sub_1AFDFF288();

  sub_1AFDFD038();
  v42 = sub_1AFDFF2F8();
  v43 = -1 << *(v41 + 32);
  v44 = v42 & ~v43;
  if (((*(v41 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
  {
LABEL_19:

    v8 = v127;
LABEL_31:
    v7 = v122;
    goto LABEL_7;
  }

  v45 = ~v43;
  while (1)
  {
    v46 = (*(v41 + 48) + 16 * v44);
    v47 = *v46 == v35 && v46[1] == v34;
    if (v47 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

    v44 = (v44 + 1) & v45;
    if (((*(v41 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v48 = v118;
  v49 = v127;
  v125(v118, v132 + v117, v127);
  v40(v48, 0, 1, v49);
  sub_1AFDFC008();
  sub_1AF8B08E4(v48, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  v50 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  v51 = sub_1AFDFC048();
  v133[0] = 0;
  v52 = [v50 initWithURL:v51 options:0 error:v133];

  if (v52)
  {
    v53 = v133[0];
    v54 = v124;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v54;
    v56 = sub_1AF419914(v35, v34);
    v58 = v57;
    v59 = v54[2] + ((v57 & 1) == 0);
    if (v54[3] >= v59)
    {
      if ((v55 & 1) == 0)
      {
        sub_1AF84D4C0();
      }
    }

    else
    {
      sub_1AF83CCB4(v59, v55);
      v60 = sub_1AF419914(v35, v34);
      if ((v58 & 1) != (v61 & 1))
      {
LABEL_70:
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v56 = v60;
    }

    v8 = v127;
    v62 = v133[0];
    v124 = v133[0];
    if (v58)
    {
      v63 = *(v133[0] + 7);
      v64 = *(v63 + 8 * v56);
      *(v63 + 8 * v56) = v52;
    }

    else
    {
      *(v133[0] + (v56 >> 6) + 8) |= 1 << v56;
      v65 = (v62[6] + 16 * v56);
      *v65 = v35;
      v65[1] = v34;
      *(v62[7] + 8 * v56) = v52;
      ++v62[2];
    }

    v119(v121, v8);
    goto LABEL_31;
  }

  v109 = v133[0];

  sub_1AFDFBF58();

  swift_willThrow();
  v110 = &v135;
LABEL_68:
  v119(*(v110 - 32), v49);
  return [*(v132 + v115) unlock];
}

uint64_t sub_1AF8AED38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AF0D0EA0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    LOBYTE(v19) = 1;
    sub_1AF8AF2FC(a1, a2, 0x100000000, v8);

    v11 = sub_1AFDFC128();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) != 1)
    {
      return (*(v12 + 32))(a3, v8, v11);
    }
  }

  else
  {
    v14 = sub_1AFDFC128();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1AF8B08E4(v8, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF390C0);
  MEMORY[0x1B2718AE0](a1, a2);
  v16 = v19;
  v15 = v20;
  v17 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v18 = v17;
    swift_once();
    v17 = v18;
  }

  v19 = 0;
  sub_1AF0D4F18(v17, &v19, v16, v15);

  return sub_1AFDFC018();
}

char *sub_1AF8AF06C()
{
  *&v0[OBJC_IVAR____TtC3VFX12AssetManager_pathResolver] = 0;
  v1 = OBJC_IVAR____TtC3VFX12AssetManager_effectIDToAssetsDirectory;
  *&v0[v1] = sub_1AF43FDE8(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR____TtC3VFX12AssetManager_authoringFileManager] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for AssetManager();
  v2 = objc_msgSendSuper2(&v10, sel_init);
  v3 = type metadata accessor for AssetManagerPathResolver();
  v4 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9.receiver = v4;
  v9.super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  v7 = *&v5[OBJC_IVAR____TtC3VFX12AssetManager_pathResolver];
  *&v5[OBJC_IVAR____TtC3VFX12AssetManager_pathResolver] = v6;

  return v5;
}

uint64_t sub_1AF8AF2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v65 = a4;
  v6 = MEMORY[0x1E69E6720];
  sub_1AF0D0EA0(0, &qword_1EB630918, sub_1AF8B0860, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v56 - v8;
  v64 = sub_1AFDFC128();
  v9 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v56 - v18;
  sub_1AF0D0EA0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], v6);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v56 - v20;
  v22 = sub_1AFDFBFC8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v68 = a1;
  v69 = a2;
  v66 = 47;
  v67 = 0xE100000000000000;
  sub_1AF770DF0();
  sub_1AF770E44();
  if (sub_1AFDFCD68())
  {
    (*(v23 + 104))(v25, *MEMORY[0x1E6968F68], v22);
    v27 = *(v9 + 56);
    v28 = v64;
    v27(v21, 1, 1, v64);

    v29 = v65;
    sub_1AFDFC108();
    return (v27)(v29, 0, 1, v28);
  }

  v31 = v9;
  v32 = v64;
  v33 = v65;
  v34 = v62;
  v35 = v63;
  if ((v62 & 0x100000000) != 0 || (LOBYTE(v68) = 0, sub_1AF80F414(0) == v34) || (v36 = *(v35 + OBJC_IVAR____TtC3VFX12AssetManager_effectIDToAssetsDirectory), !*(v36 + 16)) || (LOBYTE(v68) = 0, v37 = sub_1AF41A190(v34), (v38 & 1) == 0))
  {
    v45 = v33;
    if (*(v35 + OBJC_IVAR____TtC3VFX12AssetManager_authoringFileManager))
    {

      v46 = v61;
      sub_1AF8AF968(v26, a2, v61);
      sub_1AFDFBF98();

      (*(v31 + 8))(v46, v32);
      return (*(v31 + 56))(v45, 0, 1, v32);
    }

    v47 = v60;
    sub_1AF8CC608(*(v35 + OBJC_IVAR____TtC3VFX12AssetManager_effectIDToAssetsDirectory), v60);
    sub_1AF8B0860(0);
    v49 = v48;
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {
      sub_1AF8B08E4(v47, &qword_1EB630918, sub_1AF8B0860);
      return (*(v31 + 56))(v45, 1, 1, v32);
    }

    v50 = *(v31 + 32);
    v51 = v47 + *(v49 + 48);
    v52 = v58;
    v50(v58, v51, v32);
    v53 = v59;
    v50(v59, v52, v32);
    v54 = v61;
    sub_1AFDFC078();
    sub_1AFDFBF98();
    v55 = *(v31 + 8);
    v55(v54, v32);
    v55(v53, v32);
    v43 = *(v31 + 56);
    v44 = v45;
  }

  else
  {
    v39 = v56;
    (*(v31 + 16))(v56, *(v36 + 56) + *(v31 + 72) * v37, v32);
    v40 = v57;
    (*(v31 + 32))(v57, v39, v32);
    v41 = v61;
    sub_1AFDFC078();
    sub_1AFDFBF98();
    v42 = *(v31 + 8);
    v42(v41, v32);
    v42(v40, v32);
    v43 = *(v31 + 56);
    v44 = v33;
  }

  return v43(v44, 0, 1, v32);
}

id sub_1AF8AF968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v23 = a3;
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC3VFX16AssetFileManager_lock;
  [*(v3 + OBJC_IVAR____TtC3VFX16AssetFileManager_lock) lock];
  v16 = *(v3 + OBJC_IVAR____TtC3VFX16AssetFileManager_referencesToWrite);

  v17 = sub_1AF70265C(a1, a2, v16);

  if (v17 & 1) != 0 && (v18 = *(v4 + OBJC_IVAR____TtC3VFX16AssetFileManager_allReferencesWithTemporaryCopy), *(v18 + 16)) && (v19 = sub_1AF419914(a1, a2), (v20))
  {
    (*(v8 + 16))(v14, *(v18 + 56) + *(v8 + 72) * v19, v7);
    (*(v8 + 32))(v23, v14, v7);
  }

  else
  {
    (*(v8 + 16))(v10, v4 + OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory, v7);
    sub_1AFDFC078();
    (*(v8 + 8))(v10, v7);
  }

  return [*(v4 + v15) unlock];
}

uint64_t sub_1AF8AFB74(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v33 = a1;
  sub_1AF0D0EA0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = sub_1AFDFC128();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = *(a3 + OBJC_IVAR____TtC3VFX12AssetManager_effectIDToAssetsDirectory);
  if (*(v18 + 16) && (v38 = 0, v19 = sub_1AF41A190(a2), (v20 & 1) != 0))
  {
    v21 = *(v12 + 72);
    v22 = *(v18 + 56) + v21 * v19;
    v32 = *(v12 + 16);
    v32(v14, v22, v11);
    (*(v12 + 32))(v17, v14, v11);
    v23 = *(v34 + OBJC_IVAR____TtC3VFX12AssetManager_effectIDToAssetsDirectory);
    if (*(v23 + 16))
    {
      v36 = 0;
      v24 = v33;
      v25 = sub_1AF41A190(v33);
      if (v26)
      {
        v32(v10, *(v23 + 56) + v25 * v21, v11);
        v27 = *(v12 + 8);

        v27(v17, v11);

        (*(v12 + 56))(v10, 0, 1, v11);
        return sub_1AF8B08E4(v10, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
      }
    }

    else
    {
      v24 = v33;
    }

    v30 = *(v12 + 56);
    v30(v10, 1, 1, v11);
    sub_1AF8B08E4(v10, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
    v32(v7, v17, v11);
    v30(v7, 0, 1, v11);
    v35 = 0;
    sub_1AF825B54(v7, v24);
    return (*(v12 + 8))(v17, v11);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v29 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v31 = v29;
      swift_once();
      v29 = v31;
    }

    v37 = 0;
    return sub_1AF0D4F18(v29, &v37, 0xD000000000000034, 0x80000001AFF39080);
  }
}

id sub_1AF8AFFA4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1AF8B005C(char *a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1AFDFC318();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AFDFC128();
  v38 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  *(v1 + OBJC_IVAR____TtC3VFX16AssetFileManager_isPerformingChangesLevel) = 0;
  v16 = OBJC_IVAR____TtC3VFX16AssetFileManager_lock;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v39 = v1;
  *(v1 + v16) = v17;
  v18 = *(v7 + 16);
  v41 = OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory;
  v42 = v18;
  v45 = a1;
  v18((v1 + OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory), a1, v6);
  v40 = objc_opt_self();
  v19 = [v40 defaultManager];
  v20 = [v19 temporaryDirectory];

  sub_1AFDFC0B8();
  sub_1AFDFC078();
  v21 = *(v7 + 8);
  v22 = v9;
  v23 = v38;
  v21(v22, v38);
  sub_1AFDFC308();
  sub_1AFDFC2B8();
  v24 = v5;
  v25 = v39;
  (*(v43 + 8))(v24, v44);
  sub_1AFDFC078();

  v21(v12, v23);
  (*(v7 + 32))(v25 + OBJC_IVAR____TtC3VFX16AssetFileManager_temporaryDirectory, v15, v23);
  v26 = [v40 defaultManager];
  v42(v15, v25 + v41, v23);
  sub_1AFDFC0D8();
  v21(v15, v23);
  v27 = sub_1AFDFCEC8();

  v46[0] = 0;
  v28 = [v26 contentsOfDirectoryAtPath:v27 error:v46];

  v29 = v46[0];
  if (v28)
  {
    v30 = sub_1AFDFD418();
    v31 = v29;
  }

  else
  {
    v32 = v46[0];
    v33 = sub_1AFDFBF58();

    swift_willThrow();
    v30 = MEMORY[0x1E69E7CC0];
  }

  v34 = sub_1AF0D20CC(v30);

  *(v25 + OBJC_IVAR____TtC3VFX16AssetFileManager_referencesToWrite) = v34;
  v35 = sub_1AF43FFB8(MEMORY[0x1E69E7CC0]);
  v21(v45, v23);
  *(v25 + OBJC_IVAR____TtC3VFX16AssetFileManager_allReferencesWithTemporaryCopy) = v35;
  return v25;
}

uint64_t sub_1AF8B04DC()
{
  v1 = v0;
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AFDFC128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = OBJC_IVAR____TtC3VFX16AssetFileManager_temporaryDirectory;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC3VFX16AssetFileManager_temporaryDirectory, v2);
  v8 = sub_1AFDFC048();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v16[0] = 0;
  v10 = [v6 removeItemAtURL:v8 error:v16];

  if (v10)
  {
    v11 = v16[0];
  }

  else
  {
    v12 = v16[0];
    v13 = sub_1AFDFBF58();

    swift_willThrow();
  }

  v9((v1 + v7), v2);
  v9((v1 + OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory), v2);

  return v1;
}

uint64_t sub_1AF8B06F8()
{
  sub_1AF8B04DC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssetFileManager(uint64_t a1)
{
  result = qword_1ED722960;
  if (!qword_1ED722960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF8B07A4(uint64_t a1)
{
  result = sub_1AFDFC128();
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

void sub_1AF8B0860(uint64_t a1)
{
  if (!qword_1EB630920)
  {
    sub_1AF6B740C(255, &qword_1ED7268C0, MEMORY[0x1E69E72F0]);
    sub_1AFDFC128();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB630920);
    }
  }
}

uint64_t sub_1AF8B08E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF0D0EA0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF8B0954(uint64_t a1, char a2)
{
  v55 = MEMORY[0x1E69E7CD0];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v87 = qword_1ED73B840;
  v88 = 0;
  v89 = 2;
  v90 = 0;
  v91 = 2;
  v92 = 0;
  sub_1AF705030(1, &v56);
  v4 = v56;
  v5 = v57;
  v6 = v58;
  v7 = v60;
  v8 = v61;
  v9 = v59 | 1;
  v81 = v56;
  v82 = v57;
  v83 = v58;
  v84 = v59 | 1;
  v85 = v60;
  v86 = v61;
  if (a2)
  {
    sub_1AF0D0EA0(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = &type metadata for DoNotExport;
    *(inited + 40) = &off_1F253CF60;
    sub_1AF5D1EC0(inited);
    sub_1AF820124(&v56);
    swift_setDeallocating();
    v4 = v62;
    v5 = v63;
    v6 = v64;
    v9 = v65;
    v7 = v66;
    v8 = v67;
  }

  v75 = v4;
  v76 = v5;
  v77 = v6;
  v78 = v9;
  v79 = v7;
  v80 = v8;
  sub_1AF6B06C0(a1, &v75, 0x200000000, v68);
  if (*v68)
  {
    if (v71 > 0 && (v49 = *(&v69 + 1)) != 0)
    {
      v48 = *&v68[40];
      v11 = *(&v70 + 1);
      v12 = *(v70 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v13 = *(*(&v70 + 1) + 32);
      v72 = *v68;
      v73 = *&v68[8];
      v74 = *&v68[24];
      v54[2] = *&v68[32];
      v54[3] = v69;
      v54[4] = v70;
      v54[5] = v71;
      v54[0] = *v68;
      v54[1] = *&v68[16];
      sub_1AF5DD298(v54, v52);
      v14 = 0;
      v47 = v12;
      v46 = v13;
      do
      {
        v50 = v14;
        v15 = (v48 + 48 * v14);
        v16 = *v15;
        v17 = v15[1];
        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        v20 = *(v15 + 4);
        v21 = *(v15 + 5);
        if (v12)
        {
          v22 = *(v21 + 376);

          os_unfair_lock_lock(v22);
          os_unfair_lock_lock(*(v21 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v13);
        v23 = *(v11 + 64);
        v52[0] = *(v11 + 48);
        v52[1] = v23;
        v53 = *(v11 + 80);
        v24 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;
        *(v11 + 48) = ecs_stack_allocator_allocate(*(v11 + 32), 48 * v24, 8);
        *(v11 + 56) = v24;
        *(v11 + 72) = 0;
        *(v11 + 80) = 0;
        *(v11 + 64) = 0;
        v25 = sub_1AF64B110(&type metadata for VirtualFileAsset, &off_1F2545DB8, v19, v18, v20, v11);
        if (v19)
        {
          if (v20)
          {
            v26 = (v25 + 24);
            do
            {
              v27 = *(v26 - 1);
              v28 = *v26;
              swift_bridgeObjectRetain_n();
              sub_1AF0D2164(&v51, v27, v28);

              sub_1AF649C6C(*(v21 + 40), &type metadata for MeshFileAsset, &v51);
              if (v51 == 1)
              {
                v29 = sub_1AFDFCEC8();
                v30 = [v29 stringByDeletingPathExtension];

                if (!v30)
                {
                  sub_1AFDFCEF8();
                  v30 = sub_1AFDFCEC8();
                }

                v31 = sub_1AFDFCEC8();
                v32 = [v30 stringByAppendingPathExtension_];

                if (v32)
                {
                  v27 = sub_1AFDFCEF8();
                  v34 = v33;

                  v28 = v34;
                }

                else
                {
                }

                sub_1AF0D2164(&v51, v27, v28);
              }

              v26 += 6;
              --v20;
            }

            while (v20);
          }
        }

        else if (v16 != v17)
        {
          v35 = &v25[48 * v16 + 24];
          v36 = v17 - v16;
          do
          {
            v37 = *(v35 - 1);
            v38 = *v35;
            swift_bridgeObjectRetain_n();
            sub_1AF0D2164(&v51, v37, v38);

            sub_1AF649C6C(*(v21 + 40), &type metadata for MeshFileAsset, &v51);
            if (v51 == 1)
            {
              v39 = sub_1AFDFCEC8();
              v40 = [v39 stringByDeletingPathExtension];

              if (!v40)
              {
                sub_1AFDFCEF8();
                v40 = sub_1AFDFCEC8();
              }

              v41 = sub_1AFDFCEC8();
              v42 = [v40 stringByAppendingPathExtension_];

              if (v42)
              {
                v37 = sub_1AFDFCEF8();
                v44 = v43;

                v38 = v44;
              }

              else
              {
              }

              sub_1AF0D2164(&v51, v37, v38);
            }

            v35 += 6;
            --v36;
          }

          while (v36);
        }

        sub_1AF630994(v11, &v72, v52);
        sub_1AF62D29C(v21);
        v13 = v46;
        ecs_stack_allocator_pop_snapshot(v46);
        v12 = v47;
        if (v47)
        {
          os_unfair_lock_unlock(*(v21 + 344));
          os_unfair_lock_unlock(*(v21 + 376));
        }

        v14 = v50 + 1;
      }

      while (v50 + 1 != v49);

      sub_1AF5D1564(v68);
    }

    else
    {
    }

    sub_1AF5D1564(v68);
  }

  else
  {
  }

  return v55;
}

void **assignWithCopy for AssetManagerInstance(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;

  return a1;
}

void **assignWithTake for AssetManagerInstance(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void sub_1AF8B1024(void **a1, void *a2)
{
  v4 = *a1;
  v5 = a2;

  *a1 = a2;
}

uint64_t sub_1AF8B106C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v13) = a4;
  sub_1AF8B5B44(0, &qword_1EB63FF00, sub_1AF8B5AF0, &type metadata for ColorRampComponent.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8B5AF0();
  sub_1AFDFF3F8();
  v14 = a2;
  v15 = a3;
  v16 = BYTE4(v13);
  sub_1AF80BC20();
  sub_1AFDFE918();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AF8B11F8(uint64_t a1)
{
  v2 = sub_1AF8B5AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8B1234(uint64_t a1)
{
  v2 = sub_1AF8B5AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF8B1270@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF8B51DC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

double sub_1AF8B12C4@<D0>(uint64_t a1@<X8>)
{
  sub_1AF43A038(0);
  v2 = swift_allocObject();
  __asm { FMOV            V1.4S, #1.0 }

  v2[1] = xmmword_1AFE4C620;
  v2[2] = _Q1;
  result = 0.0;
  v2[3] = xmmword_1AFE201A0;
  *a1 = v2;
  *(a1 + 8) = &unk_1F24EDC70;
  *(a1 + 16) = 1;
  return result;
}

double sub_1AF8B1334@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1AF8B1340(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 184);

  sub_1AF6D2D90(&type metadata for ColorRampsState, &off_1F2541CC0, v4);

  v5 = v2[2];
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v5);

  sub_1AF6B1B20(a1, v7, v5);
  os_unfair_lock_unlock(*(v6 + 40));
  v8 = v2[7];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v6 + 40));
  v10 = v2[12];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  os_unfair_lock_unlock(*(v6 + 40));
  v12 = v2[17];
  swift_getObjectType();
  v13 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v12);

  sub_1AF6B1B20(a1, v13, v12);
  v14 = *(v6 + 40);

  os_unfair_lock_unlock(v14);
}

void sub_1AF8B1588(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v448 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 56);
  v7 = *(a3 + 72);
  v387 = *(a3 + 88);
  v386[0] = v6;
  v386[1] = v7;
  sub_1AF6B06C0(a2, v386, 0x200000000, &v388);
  if (v388)
  {
    if (v395 < 1 || (v347 = v392) == 0)
    {
LABEL_318:
      sub_1AF5D1564(&v388);
      goto LABEL_319;
    }

    v8 = 0;
    v345 = v391;
    v9 = v394;
    v10 = *(v393 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v351 = *(v394 + 32);
    v367 = v388;
    v368 = v389;
    v369 = v390;
    v344 = v10;
    while (1)
    {
      v354 = v5;
      v11 = (v345 + 48 * v8);
      v12 = *v11;
      v360 = *(v11 + 2);
      v363 = v11[1];
      v13 = *(v11 + 5);
      v357 = *(v11 + 4);
      v349 = v8;
      if (v10)
      {
        v14 = *(v13 + 376);

        os_unfair_lock_lock(v14);
        os_unfair_lock_lock(*(v13 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v351);
      v15 = *(v9 + 64);
      v446[0] = *(v9 + 48);
      v446[1] = v15;
      v447 = *(v9 + 80);
      v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
      *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v16, 8);
      *(v9 + 56) = v16;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 64) = 0;
      if (v360)
      {
        if (v357)
        {
          v17 = 0;
          while (1)
          {
            v364 = *(v360 + 8 * v17);
            v26 = *(*(v13 + 40) + 16);
            v27 = *(v26 + 128);
            if (*(v27 + 16))
            {
              v28 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotUpload);
              if ((v29 & 1) != 0 && *(*(v26 + 24) + 16 * *(*(v27 + 56) + 8 * v28) + 32) == &type metadata for TextureGPURepresentationDoNotUpload)
              {
                goto LABEL_52;
              }
            }

            v434 = &type metadata for TextureGPURepresentationDoNotUpload;
            *&v435 = &off_1F25461B8;
            LOBYTE(v437) = 0;
            v30 = *(v9 + 104);
            v31 = *(v30 + 16);
            if (!v31)
            {

LABEL_47:
              v45 = *(v13 + 240) - *(v13 + 232);
              v46 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v45, 8);
              *v46 = v364;
              sub_1AF63515C(&v434, &v421);
              *v424 = v46;
              *&v424[8] = v45;
              *&v424[16] = 1;
              v47 = *(v9 + 104);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v47;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v47 = sub_1AF420EA0(0, v47[2] + 1, 1, v47);
                *(v9 + 104) = v47;
              }

              v50 = v47[2];
              v49 = v47[3];
              if (v50 >= v49 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v49 > 1, v50 + 1, 1, v47);
              }

              sub_1AF635250(&v434);
              v51 = *(v9 + 104);
              *(v51 + 16) = v50 + 1;
              v52 = v51 + 72 * v50;
              *(v52 + 32) = v421;
              v54 = v423;
              v53 = *v424;
              v55 = v422;
              *(v52 + 96) = *&v424[16];
              *(v52 + 64) = v54;
              *(v52 + 80) = v53;
              *(v52 + 48) = v55;
              *(v9 + 104) = v51;
              goto LABEL_52;
            }

            v32 = v30 + 32;

            v33 = 0;
            while (1)
            {
              sub_1AF8B5A00(v32, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_33;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] != 1)
                  {
                    goto LABEL_20;
                  }

LABEL_33:
                  v36 = v427;
                  v37 = *v424;
                  sub_1AF635250(&v421);
                  if (v36 == v37)
                  {
                    goto LABEL_43;
                  }

                  goto LABEL_21;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] != 2)
                {
LABEL_19:
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
LABEL_20:
                  sub_1AF8B5918(&v421, sub_1AF635194);
                  goto LABEL_21;
                }

                goto LABEL_38;
              }

              if (BYTE8(v423) == 3)
              {
                sub_1AF63515C(&v421, &v427);
                if (v424[40] != 3)
                {
                  goto LABEL_19;
                }

LABEL_38:
                sub_1AF616568(&v427, &v415);
                sub_1AF616568(v424, &v405);
                v38 = *(&v416 + 1);
                v39 = v417;
                sub_1AF441150(&v415, *(&v416 + 1));
                LOBYTE(v38) = sub_1AF640C98(&v405, v38, v39);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v405);
                sub_1AF8B5918(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v415);
                sub_1AF635250(&v421);
                if (v38)
                {
                  goto LABEL_43;
                }

                goto LABEL_21;
              }

              if (BYTE8(v423) != 4)
              {
                break;
              }

              sub_1AF8B5918(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_20;
              }

              v34 = v427;
              v35 = v424[0];
              sub_1AF635250(&v421);
              if (v34 == v35)
              {
                goto LABEL_43;
              }

LABEL_21:
              ++v33;
              v32 += 72;
              if (v31 == v33)
              {
                goto LABEL_47;
              }
            }

            sub_1AF8B5918(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_20;
            }

            v40 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)) | *v424)
            {
              goto LABEL_20;
            }

            sub_1AF635250(&v421);
LABEL_43:
            v42 = sub_1AFBFCA08(&v421);
            v43 = *(v41 + 48);
            if (v43)
            {
              v44 = *(v41 + 64);
              *(v43 + 8 * v44) = v364;
              *(v41 + 64) = v44 + 1;
            }

            (v42)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_52:
            v56 = *(*(v13 + 40) + 16);
            v57 = *(v56 + 128);
            if (*(v57 + 16))
            {
              v58 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotDownload);
              if ((v59 & 1) != 0 && *(*(v56 + 24) + 16 * *(*(v57 + 56) + 8 * v58) + 32) == &type metadata for TextureGPURepresentationDoNotDownload)
              {
                goto LABEL_90;
              }
            }

            v434 = &type metadata for TextureGPURepresentationDoNotDownload;
            *&v435 = &off_1F2546118;
            LOBYTE(v437) = 0;
            v60 = *(v9 + 104);
            v61 = *(v60 + 16);
            if (!v61)
            {

LABEL_85:
              v75 = *(v13 + 240) - *(v13 + 232);
              v76 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v75, 8);
              *v76 = v364;
              sub_1AF63515C(&v434, &v421);
              *v424 = v76;
              *&v424[8] = v75;
              *&v424[16] = 1;
              v77 = *(v9 + 104);
              v78 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v77;
              if ((v78 & 1) == 0)
              {
                v77 = sub_1AF420EA0(0, v77[2] + 1, 1, v77);
                *(v9 + 104) = v77;
              }

              v80 = v77[2];
              v79 = v77[3];
              if (v80 >= v79 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v79 > 1, v80 + 1, 1, v77);
              }

              sub_1AF635250(&v434);
              v81 = *(v9 + 104);
              *(v81 + 16) = v80 + 1;
              v82 = v81 + 72 * v80;
              *(v82 + 32) = v421;
              v84 = v423;
              v83 = *v424;
              v85 = v422;
              *(v82 + 96) = *&v424[16];
              *(v82 + 64) = v84;
              *(v82 + 80) = v83;
              *(v82 + 48) = v85;
              *(v9 + 104) = v81;
              goto LABEL_90;
            }

            v62 = v60 + 32;

            v63 = 0;
            while (2)
            {
              sub_1AF8B5A00(v62, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_58;
                  }

LABEL_71:
                  v66 = v427;
                  v67 = *v424;
                  sub_1AF635250(&v421);
                  if (v66 == v67)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_59;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] == 1)
                  {
                    goto LABEL_71;
                  }

LABEL_58:
                  sub_1AF8B5918(&v421, sub_1AF635194);
LABEL_59:
                  ++v63;
                  v62 += 72;
                  if (v61 == v63)
                  {
                    goto LABEL_85;
                  }

                  continue;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] == 2)
                {
LABEL_76:
                  sub_1AF616568(&v427, &v415);
                  sub_1AF616568(v424, &v405);
                  v68 = *(&v416 + 1);
                  v69 = v417;
                  sub_1AF441150(&v415, *(&v416 + 1));
                  LOBYTE(v68) = sub_1AF640C98(&v405, v68, v69);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v405);
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v415);
                  sub_1AF635250(&v421);
                  if (v68)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_59;
                }

LABEL_57:
                sub_1AF8B5918(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
                goto LABEL_58;
              }

              break;
            }

            if (BYTE8(v423) == 3)
            {
              sub_1AF63515C(&v421, &v427);
              if (v424[40] == 3)
              {
                goto LABEL_76;
              }

              goto LABEL_57;
            }

            if (BYTE8(v423) == 4)
            {
              sub_1AF8B5918(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_58;
              }

              v64 = v427;
              v65 = v424[0];
              sub_1AF635250(&v421);
              if (v64 == v65)
              {
                goto LABEL_81;
              }

              goto LABEL_59;
            }

            sub_1AF8B5918(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_58;
            }

            v70 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v70.i8, *&vextq_s8(v70, v70, 8uLL)) | *v424)
            {
              goto LABEL_58;
            }

            sub_1AF635250(&v421);
LABEL_81:
            v72 = sub_1AFBFCA08(&v421);
            v73 = *(v71 + 48);
            if (v73)
            {
              v74 = *(v71 + 64);
              *(v73 + 8 * v74) = v364;
              *(v71 + 64) = v74 + 1;
            }

            (v72)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_90:
            v86 = *(*(v13 + 40) + 16);
            v87 = *(v86 + 128);
            if (*(v87 + 16))
            {
              v88 = sub_1AF449CB8(&type metadata for TextureRequireCPURepresentation);
              if ((v89 & 1) != 0 && *(*(v86 + 24) + 16 * *(*(v87 + 56) + 8 * v88) + 32) == &type metadata for TextureRequireCPURepresentation)
              {
                goto LABEL_128;
              }
            }

            v434 = &type metadata for TextureRequireCPURepresentation;
            *&v435 = &off_1F2544440;
            LOBYTE(v437) = 0;
            v90 = *(v9 + 104);
            v91 = *(v90 + 16);
            if (!v91)
            {

LABEL_123:
              v105 = *(v13 + 240) - *(v13 + 232);
              v106 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v105, 8);
              *v106 = v364;
              sub_1AF63515C(&v434, &v421);
              *v424 = v106;
              *&v424[8] = v105;
              *&v424[16] = 1;
              v107 = *(v9 + 104);
              v108 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v107;
              if ((v108 & 1) == 0)
              {
                v107 = sub_1AF420EA0(0, v107[2] + 1, 1, v107);
                *(v9 + 104) = v107;
              }

              v110 = v107[2];
              v109 = v107[3];
              if (v110 >= v109 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v109 > 1, v110 + 1, 1, v107);
              }

              sub_1AF635250(&v434);
              v111 = *(v9 + 104);
              *(v111 + 16) = v110 + 1;
              v112 = v111 + 72 * v110;
              *(v112 + 32) = v421;
              v114 = v423;
              v113 = *v424;
              v115 = v422;
              *(v112 + 96) = *&v424[16];
              *(v112 + 64) = v114;
              *(v112 + 80) = v113;
              *(v112 + 48) = v115;
              *(v9 + 104) = v111;
              goto LABEL_128;
            }

            v92 = v90 + 32;

            v93 = 0;
            while (2)
            {
              sub_1AF8B5A00(v92, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_96;
                  }

LABEL_109:
                  v96 = v427;
                  v97 = *v424;
                  sub_1AF635250(&v421);
                  if (v96 == v97)
                  {
                    goto LABEL_119;
                  }

                  goto LABEL_97;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] == 1)
                  {
                    goto LABEL_109;
                  }

LABEL_96:
                  sub_1AF8B5918(&v421, sub_1AF635194);
LABEL_97:
                  ++v93;
                  v92 += 72;
                  if (v91 == v93)
                  {
                    goto LABEL_123;
                  }

                  continue;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] == 2)
                {
LABEL_114:
                  sub_1AF616568(&v427, &v415);
                  sub_1AF616568(v424, &v405);
                  v98 = *(&v416 + 1);
                  v99 = v417;
                  sub_1AF441150(&v415, *(&v416 + 1));
                  LOBYTE(v98) = sub_1AF640C98(&v405, v98, v99);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v405);
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v415);
                  sub_1AF635250(&v421);
                  if (v98)
                  {
                    goto LABEL_119;
                  }

                  goto LABEL_97;
                }

LABEL_95:
                sub_1AF8B5918(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
                goto LABEL_96;
              }

              break;
            }

            if (BYTE8(v423) == 3)
            {
              sub_1AF63515C(&v421, &v427);
              if (v424[40] == 3)
              {
                goto LABEL_114;
              }

              goto LABEL_95;
            }

            if (BYTE8(v423) == 4)
            {
              sub_1AF8B5918(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_96;
              }

              v94 = v427;
              v95 = v424[0];
              sub_1AF635250(&v421);
              if (v94 == v95)
              {
                goto LABEL_119;
              }

              goto LABEL_97;
            }

            sub_1AF8B5918(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_96;
            }

            v100 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v100.i8, *&vextq_s8(v100, v100, 8uLL)) | *v424)
            {
              goto LABEL_96;
            }

            sub_1AF635250(&v421);
LABEL_119:
            v102 = sub_1AFBFCA08(&v421);
            v103 = *(v101 + 48);
            if (v103)
            {
              v104 = *(v101 + 64);
              *(v103 + 8 * v104) = v364;
              *(v101 + 64) = v104 + 1;
            }

            (v102)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_128:
            v116 = *(*(v13 + 40) + 16);
            v117 = *(v116 + 128);
            if (*(v117 + 16))
            {
              v118 = sub_1AF449CB8(&type metadata for TextureRequireGPURepresentation);
              if ((v119 & 1) != 0 && *(*(v116 + 24) + 16 * *(*(v117 + 56) + 8 * v118) + 32) == &type metadata for TextureRequireGPURepresentation)
              {
                goto LABEL_166;
              }
            }

            v434 = &type metadata for TextureRequireGPURepresentation;
            *&v435 = &off_1F25442D0;
            LOBYTE(v437) = 0;
            v120 = *(v9 + 104);
            v121 = *(v120 + 16);
            if (!v121)
            {

LABEL_161:
              v135 = *(v13 + 240) - *(v13 + 232);
              v136 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v135, 8);
              *v136 = v364;
              sub_1AF63515C(&v434, &v421);
              *v424 = v136;
              *&v424[8] = v135;
              *&v424[16] = 1;
              v137 = *(v9 + 104);
              v138 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v137;
              if ((v138 & 1) == 0)
              {
                v137 = sub_1AF420EA0(0, v137[2] + 1, 1, v137);
                *(v9 + 104) = v137;
              }

              v140 = v137[2];
              v139 = v137[3];
              if (v140 >= v139 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v139 > 1, v140 + 1, 1, v137);
              }

              sub_1AF635250(&v434);
              v141 = *(v9 + 104);
              *(v141 + 16) = v140 + 1;
              v142 = v141 + 72 * v140;
              *(v142 + 32) = v421;
              v144 = v423;
              v143 = *v424;
              v145 = v422;
              *(v142 + 96) = *&v424[16];
              *(v142 + 64) = v144;
              *(v142 + 80) = v143;
              *(v142 + 48) = v145;
              *(v9 + 104) = v141;
              goto LABEL_166;
            }

            v122 = v120 + 32;

            v123 = 0;
            while (2)
            {
              sub_1AF8B5A00(v122, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_134;
                  }

LABEL_147:
                  v126 = v427;
                  v127 = *v424;
                  sub_1AF635250(&v421);
                  if (v126 == v127)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_135;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] == 1)
                  {
                    goto LABEL_147;
                  }

LABEL_134:
                  sub_1AF8B5918(&v421, sub_1AF635194);
LABEL_135:
                  ++v123;
                  v122 += 72;
                  if (v121 == v123)
                  {
                    goto LABEL_161;
                  }

                  continue;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] == 2)
                {
LABEL_152:
                  sub_1AF616568(&v427, &v415);
                  sub_1AF616568(v424, &v405);
                  v128 = *(&v416 + 1);
                  v129 = v417;
                  sub_1AF441150(&v415, *(&v416 + 1));
                  LOBYTE(v128) = sub_1AF640C98(&v405, v128, v129);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v405);
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v415);
                  sub_1AF635250(&v421);
                  if (v128)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_135;
                }

LABEL_133:
                sub_1AF8B5918(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
                goto LABEL_134;
              }

              break;
            }

            if (BYTE8(v423) == 3)
            {
              sub_1AF63515C(&v421, &v427);
              if (v424[40] == 3)
              {
                goto LABEL_152;
              }

              goto LABEL_133;
            }

            if (BYTE8(v423) == 4)
            {
              sub_1AF8B5918(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_134;
              }

              v124 = v427;
              v125 = v424[0];
              sub_1AF635250(&v421);
              if (v124 == v125)
              {
                goto LABEL_157;
              }

              goto LABEL_135;
            }

            sub_1AF8B5918(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_134;
            }

            v130 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v130.i8, *&vextq_s8(v130, v130, 8uLL)) | *v424)
            {
              goto LABEL_134;
            }

            sub_1AF635250(&v421);
LABEL_157:
            v132 = sub_1AFBFCA08(&v421);
            v133 = *(v131 + 48);
            if (v133)
            {
              v134 = *(v131 + 64);
              *(v133 + 8 * v134) = v364;
              *(v131 + 64) = v134 + 1;
            }

            (v132)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_166:
            v146 = *(*(v13 + 40) + 16);
            v147 = *(v146 + 128);
            if (*(v147 + 16))
            {
              v148 = sub_1AF449CB8(&type metadata for TextureLoadingOptions);
              if ((v149 & 1) != 0 && *(*(v146 + 24) + 16 * *(*(v147 + 56) + 8 * v148) + 32) == &type metadata for TextureLoadingOptions)
              {
                *v441 = &type metadata for TextureLoadingOptions;
                *&v441[8] = &off_1F2543FE0;
                LOBYTE(v442) = 1;
                v150 = *(v9 + 104);
                v151 = *(v150 + 16);

                if (v151)
                {
                  v152 = 0;
                  v153 = v150 + 32;
                  while (1)
                  {
                    sub_1AF8B5A00(v153, &v421, sub_1AF43A540);
                    v154 = sub_1AF6346E0(&v421, v441);
                    sub_1AF8B5918(&v421, sub_1AF43A540);
                    if (v154)
                    {
                      break;
                    }

                    ++v152;
                    v153 += 72;
                    if (v151 == v152)
                    {
                      goto LABEL_12;
                    }
                  }

                  v156 = sub_1AFBFCA08(&v421);
                  v157 = *(v155 + 48);
                  if (v157)
                  {
                    v158 = *(v155 + 64);
                    *(v157 + 8 * v158) = v364;
                    *(v155 + 64) = v158 + 1;
                  }

                  (v156)(&v421, 0);

                  sub_1AF635250(v441);
                }

                else
                {
LABEL_12:
                  v18 = *(v13 + 240) - *(v13 + 232);
                  v19 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v18, 8);
                  *v19 = v364;
                  sub_1AF63515C(v441, &v421);
                  *v424 = v19;
                  *&v424[8] = v18;
                  *&v424[16] = 1;
                  sub_1AFCEF4F8();
                  v20 = *(*(v9 + 104) + 16);
                  sub_1AFCEF5E0(v20);

                  sub_1AF635250(v441);
                  v21 = *(v9 + 104);
                  *(v21 + 16) = v20 + 1;
                  v22 = v21 + 72 * v20;
                  *(v22 + 32) = v421;
                  v24 = v423;
                  v23 = *v424;
                  v25 = v422;
                  *(v22 + 96) = *&v424[16];
                  *(v22 + 64) = v24;
                  *(v22 + 80) = v23;
                  *(v22 + 48) = v25;
                  *(v9 + 104) = v21;
                }
              }
            }

            if (++v17 == v357)
            {
              goto LABEL_178;
            }
          }
        }

        goto LABEL_178;
      }

      if (v12 != v363)
      {
        break;
      }

LABEL_178:
      sub_1AF630994(v9, &v367, v446);
      v5 = v354;
      sub_1AF62D29C(v13);
      ecs_stack_allocator_pop_snapshot(v351);
      v10 = v344;
      if (v344)
      {
        os_unfair_lock_unlock(*(v13 + 344));
        os_unfair_lock_unlock(*(v13 + 376));
      }

      v8 = v349 + 1;
      if (v349 + 1 == v347)
      {
        goto LABEL_318;
      }
    }

LABEL_182:
    v167 = *(*(v13 + 40) + 16);
    v168 = *(v167 + 128);
    if (*(v168 + 16))
    {
      v169 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotUpload);
      if ((v170 & 1) != 0 && *(*(v167 + 24) + 16 * *(*(v168 + 56) + 8 * v169) + 32) == &type metadata for TextureGPURepresentationDoNotUpload)
      {
        goto LABEL_220;
      }
    }

    v434 = &type metadata for TextureGPURepresentationDoNotUpload;
    *&v435 = &off_1F25461B8;
    LOBYTE(v437) = 0;
    v171 = *(v9 + 104);
    v172 = *(v171 + 16);
    if (!v172)
    {

LABEL_215:
      v186 = *(v13 + 240) - *(v13 + 232);
      v187 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v186, 8);
      *v187 = v12;
      sub_1AF63515C(&v434, &v421);
      *v424 = v187;
      *&v424[8] = v186;
      *&v424[16] = 1;
      v188 = *(v9 + 104);
      v189 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 104) = v188;
      if ((v189 & 1) == 0)
      {
        v188 = sub_1AF420EA0(0, v188[2] + 1, 1, v188);
        *(v9 + 104) = v188;
      }

      v191 = v188[2];
      v190 = v188[3];
      if (v191 >= v190 >> 1)
      {
        *(v9 + 104) = sub_1AF420EA0(v190 > 1, v191 + 1, 1, v188);
      }

      sub_1AF635250(&v434);
      v192 = *(v9 + 104);
      *(v192 + 16) = v191 + 1;
      v193 = v192 + 72 * v191;
      *(v193 + 32) = v421;
      v195 = v423;
      v194 = *v424;
      v196 = v422;
      *(v193 + 96) = *&v424[16];
      *(v193 + 64) = v195;
      *(v193 + 80) = v194;
      *(v193 + 48) = v196;
      *(v9 + 104) = v192;
      goto LABEL_220;
    }

    v173 = v171 + 32;

    v174 = 0;
    while (1)
    {
      sub_1AF8B5A00(v173, v441, sub_1AF43A540);
      sub_1AF63515C(v441, &v421);
      sub_1AF63515C(&v434, v424);
      if (BYTE8(v423) <= 2u)
      {
        break;
      }

      if (BYTE8(v423) == 3)
      {
        sub_1AF63515C(&v421, &v427);
        if (v424[40] != 3)
        {
          goto LABEL_187;
        }

LABEL_206:
        sub_1AF616568(&v427, &v415);
        sub_1AF616568(v424, &v405);
        v179 = *(&v416 + 1);
        v180 = v417;
        sub_1AF441150(&v415, *(&v416 + 1));
        LOBYTE(v179) = sub_1AF640C98(&v405, v179, v180);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v405);
        sub_1AF8B5918(v441, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v415);
        sub_1AF635250(&v421);
        if (v179)
        {
          goto LABEL_211;
        }

        goto LABEL_189;
      }

      if (BYTE8(v423) != 4)
      {
        sub_1AF8B5918(v441, sub_1AF43A540);
        if (v424[40] == 5)
        {
          v181 = vorrq_s8(*&v424[8], *&v424[24]);
          if (!(*&vorr_s8(*v181.i8, *&vextq_s8(v181, v181, 8uLL)) | *v424))
          {
            sub_1AF635250(&v421);
LABEL_211:
            v183 = sub_1AFBFCA08(&v421);
            v184 = *(v182 + 48);
            if (v184)
            {
              v185 = *(v182 + 64);
              *(v184 + 8 * v185) = v12;
              *(v182 + 64) = v185 + 1;
            }

            (v183)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_220:
            v197 = *(*(v13 + 40) + 16);
            v198 = *(v197 + 128);
            if (*(v198 + 16))
            {
              v199 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotDownload);
              if ((v200 & 1) != 0 && *(*(v197 + 24) + 16 * *(*(v198 + 56) + 8 * v199) + 32) == &type metadata for TextureGPURepresentationDoNotDownload)
              {
                goto LABEL_258;
              }
            }

            v434 = &type metadata for TextureGPURepresentationDoNotDownload;
            *&v435 = &off_1F2546118;
            LOBYTE(v437) = 0;
            v201 = *(v9 + 104);
            v202 = *(v201 + 16);
            if (!v202)
            {

LABEL_253:
              v216 = *(v13 + 240) - *(v13 + 232);
              v217 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v216, 8);
              *v217 = v12;
              sub_1AF63515C(&v434, &v421);
              *v424 = v217;
              *&v424[8] = v216;
              *&v424[16] = 1;
              v218 = *(v9 + 104);
              v219 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v218;
              if ((v219 & 1) == 0)
              {
                v218 = sub_1AF420EA0(0, v218[2] + 1, 1, v218);
                *(v9 + 104) = v218;
              }

              v221 = v218[2];
              v220 = v218[3];
              if (v221 >= v220 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v220 > 1, v221 + 1, 1, v218);
              }

              sub_1AF635250(&v434);
              v222 = *(v9 + 104);
              *(v222 + 16) = v221 + 1;
              v223 = v222 + 72 * v221;
              *(v223 + 32) = v421;
              v225 = v423;
              v224 = *v424;
              v226 = v422;
              *(v223 + 96) = *&v424[16];
              *(v223 + 64) = v225;
              *(v223 + 80) = v224;
              *(v223 + 48) = v226;
              *(v9 + 104) = v222;
              goto LABEL_258;
            }

            v203 = v201 + 32;

            v204 = 0;
            while (2)
            {
              sub_1AF8B5A00(v203, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_226;
                  }

LABEL_239:
                  v207 = v427;
                  v208 = *v424;
                  sub_1AF635250(&v421);
                  if (v207 == v208)
                  {
                    goto LABEL_249;
                  }

                  goto LABEL_227;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] == 1)
                  {
                    goto LABEL_239;
                  }

LABEL_226:
                  sub_1AF8B5918(&v421, sub_1AF635194);
LABEL_227:
                  ++v204;
                  v203 += 72;
                  if (v202 == v204)
                  {
                    goto LABEL_253;
                  }

                  continue;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] == 2)
                {
LABEL_244:
                  sub_1AF616568(&v427, &v415);
                  sub_1AF616568(v424, &v405);
                  v209 = *(&v416 + 1);
                  v210 = v417;
                  sub_1AF441150(&v415, *(&v416 + 1));
                  LOBYTE(v209) = sub_1AF640C98(&v405, v209, v210);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v405);
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v415);
                  sub_1AF635250(&v421);
                  if (v209)
                  {
                    goto LABEL_249;
                  }

                  goto LABEL_227;
                }

LABEL_225:
                sub_1AF8B5918(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
                goto LABEL_226;
              }

              break;
            }

            if (BYTE8(v423) == 3)
            {
              sub_1AF63515C(&v421, &v427);
              if (v424[40] == 3)
              {
                goto LABEL_244;
              }

              goto LABEL_225;
            }

            if (BYTE8(v423) == 4)
            {
              sub_1AF8B5918(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_226;
              }

              v205 = v427;
              v206 = v424[0];
              sub_1AF635250(&v421);
              if (v205 == v206)
              {
                goto LABEL_249;
              }

              goto LABEL_227;
            }

            sub_1AF8B5918(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_226;
            }

            v211 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v211.i8, *&vextq_s8(v211, v211, 8uLL)) | *v424)
            {
              goto LABEL_226;
            }

            sub_1AF635250(&v421);
LABEL_249:
            v213 = sub_1AFBFCA08(&v421);
            v214 = *(v212 + 48);
            if (v214)
            {
              v215 = *(v212 + 64);
              *(v214 + 8 * v215) = v12;
              *(v212 + 64) = v215 + 1;
            }

            (v213)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_258:
            v227 = *(*(v13 + 40) + 16);
            v228 = *(v227 + 128);
            if (*(v228 + 16))
            {
              v229 = sub_1AF449CB8(&type metadata for TextureRequireCPURepresentation);
              if ((v230 & 1) != 0 && *(*(v227 + 24) + 16 * *(*(v228 + 56) + 8 * v229) + 32) == &type metadata for TextureRequireCPURepresentation)
              {
                goto LABEL_296;
              }
            }

            v434 = &type metadata for TextureRequireCPURepresentation;
            *&v435 = &off_1F2544440;
            LOBYTE(v437) = 0;
            v231 = *(v9 + 104);
            v232 = *(v231 + 16);
            if (!v232)
            {

LABEL_291:
              v246 = *(v13 + 240) - *(v13 + 232);
              v247 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v246, 8);
              *v247 = v12;
              sub_1AF63515C(&v434, &v421);
              *v424 = v247;
              *&v424[8] = v246;
              *&v424[16] = 1;
              v248 = *(v9 + 104);
              v249 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v248;
              if ((v249 & 1) == 0)
              {
                v248 = sub_1AF420EA0(0, v248[2] + 1, 1, v248);
                *(v9 + 104) = v248;
              }

              v251 = v248[2];
              v250 = v248[3];
              if (v251 >= v250 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v250 > 1, v251 + 1, 1, v248);
              }

              sub_1AF635250(&v434);
              v252 = *(v9 + 104);
              *(v252 + 16) = v251 + 1;
              v253 = v252 + 72 * v251;
              *(v253 + 32) = v421;
              v255 = v423;
              v254 = *v424;
              v256 = v422;
              *(v253 + 96) = *&v424[16];
              *(v253 + 64) = v255;
              *(v253 + 80) = v254;
              *(v253 + 48) = v256;
              *(v9 + 104) = v252;
              goto LABEL_296;
            }

            v233 = v231 + 32;

            v234 = 0;
            while (2)
            {
              sub_1AF8B5A00(v233, v441, sub_1AF43A540);
              sub_1AF63515C(v441, &v421);
              sub_1AF63515C(&v434, v424);
              if (BYTE8(v423) <= 2u)
              {
                if (!BYTE8(v423))
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40])
                  {
                    goto LABEL_264;
                  }

LABEL_277:
                  v237 = v427;
                  v238 = *v424;
                  sub_1AF635250(&v421);
                  if (v237 == v238)
                  {
                    goto LABEL_287;
                  }

                  goto LABEL_265;
                }

                if (BYTE8(v423) == 1)
                {
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  sub_1AF63515C(&v421, &v427);
                  if (v424[40] == 1)
                  {
                    goto LABEL_277;
                  }

LABEL_264:
                  sub_1AF8B5918(&v421, sub_1AF635194);
LABEL_265:
                  ++v234;
                  v233 += 72;
                  if (v232 == v234)
                  {
                    goto LABEL_291;
                  }

                  continue;
                }

                sub_1AF63515C(&v421, &v427);
                if (v424[40] == 2)
                {
LABEL_282:
                  sub_1AF616568(&v427, &v415);
                  sub_1AF616568(v424, &v405);
                  v239 = *(&v416 + 1);
                  v240 = v417;
                  sub_1AF441150(&v415, *(&v416 + 1));
                  LOBYTE(v239) = sub_1AF640C98(&v405, v239, v240);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v405);
                  sub_1AF8B5918(v441, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v415);
                  sub_1AF635250(&v421);
                  if (v239)
                  {
                    goto LABEL_287;
                  }

                  goto LABEL_265;
                }

LABEL_263:
                sub_1AF8B5918(v441, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
                goto LABEL_264;
              }

              break;
            }

            if (BYTE8(v423) == 3)
            {
              sub_1AF63515C(&v421, &v427);
              if (v424[40] == 3)
              {
                goto LABEL_282;
              }

              goto LABEL_263;
            }

            if (BYTE8(v423) == 4)
            {
              sub_1AF8B5918(v441, sub_1AF43A540);
              sub_1AF63515C(&v421, &v427);
              if (v424[40] != 4)
              {
                goto LABEL_264;
              }

              v235 = v427;
              v236 = v424[0];
              sub_1AF635250(&v421);
              if (v235 == v236)
              {
                goto LABEL_287;
              }

              goto LABEL_265;
            }

            sub_1AF8B5918(v441, sub_1AF43A540);
            if (v424[40] != 5)
            {
              goto LABEL_264;
            }

            v241 = vorrq_s8(*&v424[8], *&v424[24]);
            if (*&vorr_s8(*v241.i8, *&vextq_s8(v241, v241, 8uLL)) | *v424)
            {
              goto LABEL_264;
            }

            sub_1AF635250(&v421);
LABEL_287:
            v243 = sub_1AFBFCA08(&v421);
            v244 = *(v242 + 48);
            if (v244)
            {
              v245 = *(v242 + 64);
              *(v244 + 8 * v245) = v12;
              *(v242 + 64) = v245 + 1;
            }

            (v243)(&v421, 0);

            sub_1AF635250(&v434);
LABEL_296:
            v257 = *(*(v13 + 40) + 16);
            v258 = *(v257 + 128);
            if (!*(v258 + 16) || (v259 = sub_1AF449CB8(&type metadata for TextureRequireGPURepresentation), (v260 & 1) == 0) || *(*(v257 + 24) + 16 * *(*(v258 + 56) + 8 * v259) + 32) != &type metadata for TextureRequireGPURepresentation)
            {
              *v441 = &type metadata for TextureRequireGPURepresentation;
              *&v441[8] = &off_1F25442D0;
              LOBYTE(v442) = 0;
              v261 = *(v9 + 104);
              v262 = *(v261 + 16);

              if (v262)
              {
                v263 = 0;
                v264 = v261 + 32;
                while (1)
                {
                  sub_1AF8B5A00(v264, &v421, sub_1AF43A540);
                  v265 = sub_1AF6346E0(&v421, v441);
                  sub_1AF8B5918(&v421, sub_1AF43A540);
                  if (v265)
                  {
                    break;
                  }

                  ++v263;
                  v264 += 72;
                  if (v262 == v263)
                  {
                    goto LABEL_303;
                  }
                }

                v275 = sub_1AFBFCA08(&v421);
                v276 = *(v274 + 48);
                if (v276)
                {
                  v277 = *(v274 + 64);
                  *(v276 + 8 * v277) = v12;
                  *(v274 + 64) = v277 + 1;
                }

                (v275)(&v421, 0);

                sub_1AF635250(v441);
              }

              else
              {
LABEL_303:
                v266 = *(v13 + 240) - *(v13 + 232);
                v267 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v266, 8);
                *v267 = v12;
                sub_1AF63515C(v441, &v421);
                *v424 = v267;
                *&v424[8] = v266;
                *&v424[16] = 1;
                sub_1AFCEF4F8();
                v268 = *(*(v9 + 104) + 16);
                sub_1AFCEF5E0(v268);

                sub_1AF635250(v441);
                v269 = *(v9 + 104);
                *(v269 + 16) = v268 + 1;
                v270 = v269 + 72 * v268;
                *(v270 + 32) = v421;
                v272 = v423;
                v271 = *v424;
                v273 = v422;
                *(v270 + 96) = *&v424[16];
                *(v270 + 64) = v272;
                *(v270 + 80) = v271;
                *(v270 + 48) = v273;
                *(v9 + 104) = v269;
              }
            }

            v278 = *(*(v13 + 40) + 16);
            v279 = *(v278 + 128);
            if (*(v279 + 16))
            {
              v280 = sub_1AF449CB8(&type metadata for TextureLoadingOptions);
              if ((v281 & 1) != 0 && *(*(v278 + 24) + 16 * *(*(v279 + 56) + 8 * v280) + 32) == &type metadata for TextureLoadingOptions)
              {
                *v441 = &type metadata for TextureLoadingOptions;
                *&v441[8] = &off_1F2543FE0;
                LOBYTE(v442) = 1;
                v282 = *(v9 + 104);
                v283 = *(v282 + 16);

                if (v283)
                {
                  v284 = 0;
                  v285 = v282 + 32;
                  while (1)
                  {
                    sub_1AF8B5A00(v285, &v421, sub_1AF43A540);
                    v286 = sub_1AF6346E0(&v421, v441);
                    sub_1AF8B5918(&v421, sub_1AF43A540);
                    if (v286)
                    {
                      break;
                    }

                    ++v284;
                    v285 += 72;
                    if (v283 == v284)
                    {
                      goto LABEL_180;
                    }
                  }

                  v288 = sub_1AFBFCA08(&v421);
                  v289 = *(v287 + 48);
                  if (v289)
                  {
                    v290 = *(v287 + 64);
                    *(v289 + 8 * v290) = v12;
                    *(v287 + 64) = v290 + 1;
                  }

                  (v288)(&v421, 0);

                  sub_1AF635250(v441);
                }

                else
                {
LABEL_180:
                  v159 = *(v13 + 240) - *(v13 + 232);
                  v160 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v159, 8);
                  *v160 = v12;
                  sub_1AF63515C(v441, &v421);
                  *v424 = v160;
                  *&v424[8] = v159;
                  *&v424[16] = 1;
                  sub_1AFCEF4F8();
                  v161 = *(*(v9 + 104) + 16);
                  sub_1AFCEF5E0(v161);

                  sub_1AF635250(v441);
                  v162 = *(v9 + 104);
                  *(v162 + 16) = v161 + 1;
                  v163 = v162 + 72 * v161;
                  *(v163 + 32) = v421;
                  v165 = v423;
                  v164 = *v424;
                  v166 = v422;
                  *(v163 + 96) = *&v424[16];
                  *(v163 + 64) = v165;
                  *(v163 + 80) = v164;
                  *(v163 + 48) = v166;
                  *(v9 + 104) = v162;
                }
              }
            }

            if (++v12 == v363)
            {
              goto LABEL_178;
            }

            goto LABEL_182;
          }
        }

        goto LABEL_188;
      }

      sub_1AF8B5918(v441, sub_1AF43A540);
      sub_1AF63515C(&v421, &v427);
      if (v424[40] != 4)
      {
        goto LABEL_188;
      }

      v175 = v427;
      v176 = v424[0];
      sub_1AF635250(&v421);
      if (v175 == v176)
      {
        goto LABEL_211;
      }

LABEL_189:
      ++v174;
      v173 += 72;
      if (v172 == v174)
      {
        goto LABEL_215;
      }
    }

    if (!BYTE8(v423))
    {
      sub_1AF8B5918(v441, sub_1AF43A540);
      sub_1AF63515C(&v421, &v427);
      if (v424[40])
      {
        goto LABEL_188;
      }

      goto LABEL_201;
    }

    if (BYTE8(v423) == 1)
    {
      sub_1AF8B5918(v441, sub_1AF43A540);
      sub_1AF63515C(&v421, &v427);
      if (v424[40] != 1)
      {
        goto LABEL_188;
      }

LABEL_201:
      v177 = v427;
      v178 = *v424;
      sub_1AF635250(&v421);
      if (v177 == v178)
      {
        goto LABEL_211;
      }

      goto LABEL_189;
    }

    sub_1AF63515C(&v421, &v427);
    if (v424[40] != 2)
    {
LABEL_187:
      sub_1AF8B5918(v441, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v427);
LABEL_188:
      sub_1AF8B5918(&v421, sub_1AF635194);
      goto LABEL_189;
    }

    goto LABEL_206;
  }

LABEL_319:
  sub_1AF6B06C0(a2, v386, 0x200000000, v396);
  if (!*v396)
  {
    v294 = a1[3];
    if (v294)
    {
      v295 = *(a3 + 152);
      *v441 = *(a3 + 136);
      *&v441[16] = v295;
      *&v441[32] = *(a3 + 168);
      swift_unknownObjectRetain();
      sub_1AF6B06C0(a2, v441, 0x200000000, v413);
      v296 = *&v413[0];
      if (!*&v413[0])
      {
        swift_unknownObjectRelease();
        return;
      }

      v355 = v5;
      v297 = v413;
      goto LABEL_341;
    }

LABEL_355:
    sub_1AF5D1564(v396);
    return;
  }

  v291 = v397;
  *&v441[8] = *&v396[8];
  *&v441[24] = *&v396[24];
  v442 = *&v396[40];
  v443 = *&v396[56];
  *v441 = *v396;
  v444 = *&v396[72];
  v445 = v397;
  v292 = a1[3];
  v423 = *&v396[32];
  *v424 = *&v396[48];
  *&v424[16] = *&v396[64];
  *&v424[32] = v397;
  v421 = *v396;
  v422 = *&v396[16];
  sub_1AF5DD298(&v421, &v434);
  if (v292)
  {
    v293 = [v292 arrayLength];
  }

  else
  {
    v293 = 0;
  }

  *&v415 = v293;
  sub_1AFD06FC0(v441, &v415);
  v356 = v5;
  v298 = v293 + v291;
  v299 = (v293 + v291) << 11;
  v300 = *(a4 + 16);
  v301 = sub_1AF6F35A0(v299, 0, 0x6D6152726F6C6F43, 0xEA00000000007370);
  v303 = v302;
  v305 = v304;
  swift_unknownObjectRelease();
  *a1 = v301;
  a1[1] = v303;
  a1[2] = v305;
  CFXTextureDescriptorMakeDefault(&v421);
  sub_1AF466BDC(1, &v421);
  sub_1AF46748C(115, &v421);
  sub_1AF8B59F4(&v421);
  sub_1AF7156F0(&v421);
  sub_1AF5C44D4(&v421);
  sub_1AF48F3EC(&v421);
  sub_1AF4674BC(&v421);
  if (v298 <= 1)
  {
    v306 = 1;
  }

  else
  {
    v306 = v298;
  }

  sub_1AF4674C8(v306, &v421);
  sub_1AF5F7474(2, &v421);
  sub_1AF4674E4(&v421);
  v307 = BYTE2(v421);
  v308 = BYTE3(v421);
  v309 = DWORD2(v421);
  v310 = HIDWORD(v421);
  v311 = BYTE2(v422);
  v312 = v422;
  *(&v435 + 11) = *(&v422 + 3);
  HIBYTE(v435) = BYTE7(v422);
  v358 = DWORD1(v421);
  v361 = v421;
  v434 = v421;
  v352 = BYTE1(v421);
  *&v435 = *(&v421 + 1);
  BYTE10(v435) = BYTE2(v422);
  WORD4(v435) = v422;
  Texture = CFXGPUDeviceCreateTexture(v300, &v434);
  swift_unknownObjectRelease();
  a1[3] = Texture;
  if (Texture)
  {
    v314 = sub_1AFDFCEC8();
    [Texture setLabel_];
  }

  v315 = *(a3 + 32);
  v384[0] = *(a3 + 16);
  v384[1] = v315;
  v385 = *(a3 + 48);
  sub_1AF6B06C0(a2, v384, 0x200000000, &v398);
  if (!v398)
  {
    v316 = v356;
    if (Texture)
    {
      goto LABEL_333;
    }

    goto LABEL_336;
  }

  v437 = v401;
  v438 = v402;
  v439 = v403;
  v435 = v399;
  v436 = v400;
  v440 = v404;
  v434 = v398;
  sub_1AFD06FEC(&v434, a1, v361 | (v352 << 8) | (v307 << 16) | (v308 << 24) | (v358 << 32), v309 | (v310 << 32), (v312 | (v311 << 16)) & 0xFFFFFF);
  v316 = v356;
  sub_1AF5D1564(&v398);
  if (!Texture)
  {
LABEL_336:
    sub_1AF5D1564(v396);
    goto LABEL_355;
  }

LABEL_333:
  swift_unknownObjectRetain();
  sub_1AF6B06C0(a2, v384, 0x200000000, &v405);
  if (v405)
  {
    v430 = v408;
    v431 = v409;
    v432 = v410;
    v428 = v406;
    v429 = v407;
    v433 = v411;
    v427 = v405;
    swift_unknownObjectRetain();
    sub_1AFD24AA8(&v427, Texture);
    swift_unknownObjectRelease();
    sub_1AF5D1564(v396);
    swift_unknownObjectRelease();
    sub_1AF5D1564(&v405);
  }

  else
  {
    sub_1AF5D1564(v396);
    swift_unknownObjectRelease();
  }

  v294 = a1[3];
  if (!v294)
  {
    goto LABEL_355;
  }

  v317 = *(a3 + 112);
  v382[0] = *(a3 + 96);
  v382[1] = v317;
  v383 = *(a3 + 128);
  swift_unknownObjectRetain();
  sub_1AF6B06C0(a2, v382, 0x200000000, v412);
  v296 = *&v412[0];
  if (!*&v412[0])
  {
    goto LABEL_354;
  }

  v355 = v316;
  v297 = v412;
LABEL_341:
  v318 = v297 + 8;
  v319 = *(v318 + 1);
  *&v366[8] = *v318;
  *&v366[24] = v319;
  *&v366[88] = *(v318 + 10);
  v320 = *(v318 + 4);
  *&v366[56] = *(v318 + 3);
  *&v366[72] = v320;
  *&v366[40] = *(v318 + 2);
  *v366 = v296;
  v415 = *v366;
  v416 = *&v366[16];
  v419 = *&v366[64];
  v420 = *&v366[80];
  v417 = *&v366[32];
  v418 = *&v366[48];
  v353 = *(&v320 + 1);
  if (*(&v320 + 1) >= 1)
  {
    v321 = *&v366[56];
    if (*&v366[56])
    {
      v346 = v294;
      v365 = *&v366[72];
      v322 = *(*&v366[72] + 32);
      v323 = *&v366[40];
      v350 = *&v366[64];
      v324 = *(*&v366[64] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      sub_1AF8B5A00(v366, &v421, sub_1AF8B5978);
      v325 = (v323 + 24);
      v348 = v324;
      while (1)
      {
        v326 = *(v325 - 6);
        v327 = *(v325 - 5);
        v328 = *(v325 - 4);
        v329 = *(v325 - 1);
        v330 = v325[2];
        v359 = v325[1];
        v362 = *v325;
        if (v324)
        {
          v331 = *(v330 + 376);

          os_unfair_lock_lock(v331);
          os_unfair_lock_lock(*(v330 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v322);

        sub_1AF630914(v332, v365, v414);

        LOBYTE(v376) = 1;
        *&v421 = v350;
        *(&v421 + 1) = v330;
        *&v422 = v365;
        *(&v422 + 1) = v328;
        *&v423 = (v327 - v326 + v328);
        *(&v423 + 1) = v353;
        *v424 = v326;
        *&v424[8] = v327;
        *&v424[16] = 0;
        *&v424[24] = 0;
        v424[32] = 1;
        *&v424[40] = v329;
        v425 = v362;
        v426 = v359;
        sub_1AFD11A90(&v421, a1);
        if (v355)
        {
          break;
        }

        v370 = *v366;
        v371 = *&v366[8];
        v372 = v366[12];
        v373 = *&v366[16];
        v374 = v366[24];
        v375 = *&v366[32];
        sub_1AF630994(v365, &v370, v414);
        v355 = 0;
        sub_1AF62D29C(v330);
        ecs_stack_allocator_pop_snapshot(v322);
        v324 = v348;
        if (v348)
        {
          os_unfair_lock_unlock(*(v330 + 344));
          os_unfair_lock_unlock(*(v330 + 376));
        }

        v325 += 6;
        if (!--v321)
        {
          sub_1AF8B5918(v366, sub_1AF8B5978);
          v294 = v346;
          goto LABEL_352;
        }
      }

      v376 = *v366;
      v377 = *&v366[8];
      v378 = v366[12];
      v379 = *&v366[16];
      v380 = v366[24];
      v381 = *&v366[32];
      sub_1AF630994(v365, &v376, v414);
      sub_1AF62D29C(v330);
      ecs_stack_allocator_pop_snapshot(v322);
      os_unfair_lock_unlock(*(v330 + 344));
      os_unfair_lock_unlock(*(v330 + 376));
      __break(1u);
      goto LABEL_358;
    }
  }

LABEL_352:

  v335 = sub_1AF6F3F0C(v333, v334);
  if (!v355)
  {
    v336 = v335;
    v337 = sub_1AFDFCEC8();
    [v336 pushDebugGroup_];

    sub_1AF6F3BD8(v338, v339);
    sub_1AF8B55A4(v336, &v415, v294, a1);
    swift_unknownObjectRelease();
    [v336 popDebugGroup];

    swift_unknownObjectRelease();
    sub_1AF8B5918(v366, sub_1AF8B5978);
LABEL_354:
    swift_unknownObjectRelease();
    goto LABEL_355;
  }

LABEL_358:
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1AF8B450C()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED73B840;
  v24 = 0;
  v25 = 2;
  v26 = 0;
  v27 = 2;
  v28 = 0;
  sub_1AF7032D0(1, v10);
  v1 = v10[1];
  *(v0 + 16) = v10[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v11;
  sub_1AF7032E4(1, v12);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ColorRampRuntime;
  *(inited + 40) = &off_1F2541978;
  sub_1AF5D1EC0(inited);
  sub_1AF8B5918(v12, sub_1AF8B5A80);
  swift_setDeallocating();
  v3 = v14;
  *(v0 + 56) = v13;
  *(v0 + 72) = v3;
  *(v0 + 88) = v15;
  sub_1AFCC3A84(1, 1, v16);
  v4 = v16[1];
  *(v0 + 96) = v16[0];
  *(v0 + 112) = v4;
  *(v0 + 128) = v17;
  sub_1AFCC3A84(1, 1, &v18);
  v5 = v19;
  v6 = v20;
  v7 = v22;
  v8 = v21 | 4;
  *(v0 + 136) = v18;
  *(v0 + 144) = v5;
  *(v0 + 148) = v6;
  *(v0 + 152) = v8;
  *(v0 + 160) = 2;
  *(v0 + 168) = v7;
  return v0;
}

uint64_t sub_1AF8B46D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    v8 = *(v7 + 184);

    sub_1AF6D655C(&type metadata for ColorRampsState, &off_1F2541CC0, v8, a6);
  }

  return result;
}

uint64_t sub_1AF8B4794()
{
  v0 = swift_allocObject();
  sub_1AF8B450C();
  return v0;
}

void *sub_1AF8B47E4(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  sub_1AFDFF288();
  sub_1AF8B4F0C(&v34, a1);
  sub_1AF8B4EA4(&v34, a2);
  sub_1AFDFF2A8();
  v7 = sub_1AFDFF2F8();
  v8 = v7;
  v9 = *(v3 + 24);
  if (*(v9 + 16) && (v10 = sub_1AF449CB8(v7), (v11 & 1) != 0))
  {
    Texture = *(*(v9 + 56) + 8 * v10);
    swift_unknownObjectRetain();
  }

  else
  {
    CFXTextureDescriptorMakeDefault(&v32);
    sub_1AF466BDC(0, &v32);
    sub_1AF46748C(125, &v32);
    sub_1AF8B59F4(&v32);
    sub_1AF7156F0(&v32);
    sub_1AF5C44D4(&v32);
    sub_1AF48F3EC(&v32);
    sub_1AF4674BC(&v32);
    sub_1AF4674C8(1, &v32);
    sub_1AF5F7474(0, &v32);
    sub_1AF4674E4(&v32);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = *(Strong + 16);

      v34 = v32;
      *&v35 = v33;
      Texture = CFXGPUDeviceCreateTexture(v14, v34.i8);
    }

    else
    {
      Texture = 0;
    }

    v15 = sub_1AF445CA8(&v32);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v17 = v15;
      v31 = MEMORY[0x1E69E7CC0];
      sub_1AFC07518(0, v15 & ~(v15 >> 63), 0);
      v18 = 0;
      v16 = v31;
      do
      {
        v34 = v32;
        *&v35 = v33;
        v19.n128_f32[0] = v18 / (sub_1AF445CA8(&v34) - 1);
        sub_1AF6513B4(a1, a2, v4, v19);
        v22 = *(v31 + 16);
        v21 = *(v31 + 24);
        if (v22 >= v21 >> 1)
        {
          v28 = v20;
          sub_1AFC07518(v21 > 1, v22 + 1, 1);
          v20 = v28;
        }

        ++v18;
        *(v31 + 16) = v22 + 1;
        *(v31 + 16 * v22 + 32) = v20;
      }

      while (v17 != v18);
    }

    if (Texture)
    {
      swift_unknownObjectRetain();
      v34 = v32;
      *&v35 = v33;
      v23 = sub_1AF445CA8(&v34);
      sub_1AF8B5AD8(v23, &v34);
      v24 = v36;
      v25 = v37;
      v29 = v35;
      v30 = v34;
      v34 = v32;
      *&v35 = v33;
      v26 = sub_1AF445CA8(&v34);
      v34 = v30;
      v35 = v29;
      v36 = v24;
      v37 = v25;
      [Texture replaceRegion:&v34 mipmapLevel:0 withBytes:v16 + 32 bytesPerRow:16 * v26];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRetain();
    sub_1AF826180(Texture, v8);
  }

  return Texture;
}

double sub_1AF8B4B2C@<D0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v6 = a3;
  sub_1AFDFF288();
  sub_1AF8B4F0C(v53, a1);
  sub_1AF8B4EA4(v53, a2);
  sub_1AFDFF2A8();
  v10 = sub_1AFDFF2F8();
  v11 = v10;
  v12 = *(*(v4 + 704) + 16);
  if (*(v12 + 16) && (v13 = sub_1AF449CB8(v10), (v14 & 1) != 0))
  {
    v15 = (*(v12 + 56) + (v13 << 6));
    v17 = v15[2];
    v16 = v15[3];
    v18 = v15[1];
    *v53 = *v15;
    *&v53[16] = v18;
    v54 = v17;
    v55 = v16;
    v19 = v15[1];
    v48 = *v15;
    *v49 = v19;
    v20 = v15[3];
    *&v49[16] = v15[2];
    *&v49[32] = v20;
    sub_1AF44222C(v53, &v43);
  }

  else
  {
    v40 = v11;
    CFXTextureDescriptorMakeDefault(&v50);
    *&v53[7] = v50;
    *&v53[23] = v51;
    *(v52 + 15) = *&v53[15];
    v52[0] = *v53;
    *v49 = 0;
    v48 = 0uLL;
    v49[8] = 0;
    *&v49[9] = *v53;
    *&v49[24] = *(v52 + 15);
    v21 = MEMORY[0x1E69E7CC0];
    *&v49[40] = MEMORY[0x1E69E7CC0];
    sub_1AF466BDC(0, &v49[16]);
    sub_1AF8B59F4(&v49[16]);
    sub_1AF46748C(125, &v49[16]);
    v47 = v21;
    sub_1AFC07518(0, 256, 0);
    for (i = 0; i != 256; ++i)
    {
      v22.n128_f32[0] = i / 255.0;
      sub_1AF6513B4(a1, a2, v6, v22);
      v47 = v21;
      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v39 = v22;
        sub_1AFC07518(v24 > 1, v25 + 1, 1);
        v22 = v39;
        v21 = v47;
      }

      v21[2] = v25 + 1;
      *&v21[2 * v25 + 4] = v22;
    }

    v26 = *(v5 + 16);
    v43 = *&v49[16];
    *&v44 = *&v49[32];
    *v53 = *&v49[16];
    *&v53[16] = *&v49[32];
    v27 = sub_1AF467494(v53);
    v28 = sub_1AF445CA8(&v43);
    if (v27 - 160 <= 0x3A && ((1 << (v27 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
    {
      if ((v27 - 186) > 0x20u)
      {
        LODWORD(v29) = 1;
      }

      else
      {
        v29 = qword_1AFE7F890[(v27 - 186)];
      }

      v30 = v40;
      v31 = 16 * ((v29 + v28 - 1) / v29);
    }

    else
    {
      v31 = sub_1AF47289C(v27) * v28;
      v30 = v40;
    }

    BufferWithBytes = CFXGPUDeviceCreateBufferWithBytes(v26, v21 + 4, v31, 0);

    if (BufferWithBytes)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0;
    }

    v48 = BufferWithBytes;
    *v49 = v33;
    v34 = *(v5 + 704);
    v54 = *&v49[16];
    v55 = *&v49[32];
    *v53 = BufferWithBytes;
    *&v53[16] = *v49;
    sub_1AF44222C(v53, &v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43 = *(v34 + 16);
    *(v34 + 16) = 0x8000000000000000;
    sub_1AF857BC4(v53, v30, isUniquelyReferenced_nonNull_native);
    *(v34 + 16) = v43;
    v42[2] = *&v49[16];
    v42[3] = *&v49[32];
    v42[0] = v48;
    v42[1] = *v49;
    v45 = *&v49[16];
    v46 = *&v49[32];
    v43 = v48;
    v44 = *v49;
    sub_1AF44222C(v42, v41);
    sub_1AF478A6C(&v43);
  }

  v36 = *v49;
  *a4 = v48;
  a4[1] = v36;
  result = *&v49[16];
  v38 = *&v49[32];
  a4[2] = *&v49[16];
  a4[3] = v38;
  return result;
}

uint64_t sub_1AF8B4EA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B271ACB0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_1AFDFF2C8();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF8B4F0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B271ACB0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 16;
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      result = sub_1AFDFF2C8();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF8B4FC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B271ACB0](v3);
  if (v3)
  {
    v5 = a2 + 49;
    do
    {
      v5 += 24;
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      sub_1AFDFF2A8();
      result = sub_1AFDFF2A8();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF8B50A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B271ACB0](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x1B271ACB0](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {

        v9 = v7 + 40;
        do
        {

          sub_1AFDFD038();

          v9 += 16;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

BOOL sub_1AF8B516C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  return (sub_1AFB7B0BC(*a1, *a2) & 1) == 0 || !sub_1AFB7B128(v2, v4) || v3 != v5;
}

void *sub_1AF8B51DC(void *a1)
{
  sub_1AF8B5B44(0, &qword_1ED722FC8, sub_1AF8B5AF0, &type metadata for ColorRampComponent.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AF8B5AF0();
  v9 = v8;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF80A7AC();
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF8B53A8(uint64_t a1, int *a2, uint64_t a3)
{
  v23 = MEMORY[0x1E69E7CC0];
  sub_1AFC07518(0, 256, 0);
  v7 = 0;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  do
  {
    v6.n128_f32[0] = v7 / 255.0;
    sub_1AF6513B4(v8, v9, v10, v6);
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    if (v12 >= v11 >> 1)
    {
      v21 = v6;
      sub_1AFC07518(v11 > 1, v12 + 1, 1);
      v6 = v21;
    }

    ++v7;
    *(v23 + 16) = v12 + 1;
    *(v23 + 16 * v12 + 32) = v6;
  }

  while (v7 != 256);
  v13 = *a3;
  if (*a3)
  {
    v14 = *(a3 + 8);
    v15 = *a2;
    swift_unknownObjectRetain();
    if ([swift_unknownObjectRetain_n() storageMode] == 2)
    {

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease_n();
    }

    v17 = [v13 contents];
    v18 = v13;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v19 = &v17[2048 * v15 + 4 + v14];
    for (i = 2; i != 258; ++i)
    {
      v22 = *(v23 + 16 * i);
      *(v19 - 2) = sub_1AF1F2B14(v22.n128_f32[0]);
      *(v19 - 1) = sub_1AF1F2B14(v22.n128_f32[1]);
      *v19 = sub_1AF1F2B14(v22.n128_f32[2]);
      *(v19 + 1) = sub_1AF1F2B14(v22.n128_f32[3]);
      v19 += 8;
    }
  }
}

double sub_1AF8B55A4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_1AF8B5A68(&v51);
  if (*(a2 + 80) >= 1)
  {
    v36 = *(a2 + 56);
    if (v36)
    {
      v9 = v51;
      v43 = v52;
      v10 = *(a2 + 72);
      v11 = *(v10 + 32);
      v42 = *(*(a2 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v12 = *(a2 + 16);
      v49[0] = *a2;
      v49[1] = v12;
      v34 = *(a2 + 40);
      v50 = *(a2 + 32);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v13 = 0;
      v14 = 0;
      v35 = v11;
      do
      {
        v15 = v11;
        v40 = v14;
        v41 = v13;
        v16 = (v34 + 48 * v13);
        v38 = *v16;
        v37 = v16[1];
        v17 = *(v16 + 2);
        v39 = *(v16 + 3);
        v19 = *(v16 + 4);
        v18 = *(v16 + 5);
        if (v42)
        {
          v20 = *(v18 + 376);

          os_unfair_lock_lock(v20);
          os_unfair_lock_lock(*(v18 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v15);
        v21 = *(v10 + 64);
        v51 = *(v10 + 48);
        v52 = v21;
        v53 = *(v10 + 80);
        v22 = *(v10 + 32);
        v23 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;

        *(v10 + 48) = ecs_stack_allocator_allocate(v22, 48 * v23, 8);
        *(v10 + 56) = v23;
        *(v10 + 72) = 0;
        *(v10 + 80) = 0;
        *(v10 + 64) = 0;

        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_1AF64B110(&type metadata for ColorRampComponent, &off_1F2541AA8, v17, v39, v19, v10);
        v24 = sub_1AF64B110(&type metadata for ColorRampRuntime, &off_1F25419F8, v17, v39, v19, v10);
        v25 = v24;
        if (v17)
        {
          for (; v19; --v19)
          {
            v26 = *a4;
            if (*a4)
            {
              v27 = *v25;
              v28 = a4[1] + (v27 << 11);
              v47 = v9;
              v48 = v43;
              v44 = 0;
              v45 = 0;
              v46 = 0;
              [a1 copyFromBuffer:v26 sourceOffset:v28 sourceBytesPerRow:2048 sourceBytesPerImage:2048 sourceSize:&v47 toTexture:a3 destinationSlice:v27 destinationLevel:0 destinationOrigin:&v44];
            }

            v25 += 4;
          }
        }

        else if (v38 != v37)
        {
          v29 = &v24[4 * v38];
          v30 = v37 - v38;
          do
          {
            v31 = *a4;
            if (*a4)
            {
              v32 = *v29;
              v33 = a4[1] + (v32 << 11);
              v47 = v9;
              v48 = v43;
              v44 = 0;
              v45 = 0;
              v46 = 0;
              [a1 copyFromBuffer:v31 sourceOffset:v33 sourceBytesPerRow:2048 sourceBytesPerImage:2048 sourceSize:&v47 toTexture:a3 destinationSlice:v32 destinationLevel:0 destinationOrigin:&v44];
            }

            v29 += 4;
            --v30;
          }

          while (v30);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v14 = v40;
        sub_1AF630994(v10, v49, &v51);
        sub_1AF62D29C(v18);
        v11 = v35;
        ecs_stack_allocator_pop_snapshot(v35);
        if (v42)
        {
          os_unfair_lock_unlock(*(v18 + 344));
          os_unfair_lock_unlock(*(v18 + 376));
        }

        v13 = v41 + 1;
      }

      while (v41 + 1 != v36);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1AF8B5918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF8B5978()
{
  if (!qword_1ED725A70)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for ColorRampComponent;
    v4[1] = &type metadata for ColorRampRuntime;
    v4[2] = &off_1F2541AA8;
    v4[3] = &off_1F25419F8;
    Result2 = type metadata accessor for QueryResult2(0, v4);
    if (!v3)
    {
      atomic_store(Result2, &qword_1ED725A70);
    }
  }
}

uint64_t sub_1AF8B5A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1AF8B5A68@<D0>(uint64_t a1@<X8>)
{
  *&result = 256;
  *a1 = xmmword_1AFE7F5B0;
  *(a1 + 16) = 1;
  return result;
}

void sub_1AF8B5A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1ED723D40)
  {
    v4 = type metadata accessor for Query1(0, &type metadata for ColorRampComponent, &off_1F2541AA8, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED723D40);
    }
  }
}