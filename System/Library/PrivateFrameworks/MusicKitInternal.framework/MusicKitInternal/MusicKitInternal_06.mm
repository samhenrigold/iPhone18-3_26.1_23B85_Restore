void sub_1D4EF7190()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_106_0();
  v4 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v68 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_114();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB208, &qword_1D562F5E0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v72 = v12;
  v13 = OUTLINED_FUNCTION_70_0();
  v14 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(v13);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v78 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_71_1();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB320, &qword_1D562F5F0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  v75 = type metadata accessor for CloudSuggestedPivotsRawRequest.PivotRound(0);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_28_9();
  v79 = v23 - v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_56_5();
  v26 = *(v1 + 16);
  if (v26 != *(v0 + 16) || !v26 || v1 == v0)
  {
    goto LABEL_53;
  }

  v70 = v4;
  OUTLINED_FUNCTION_27_4();
  v28 = v1 + v27;
  v29 = v0 + v27;
  v65 = (v6 + 32);
  v66 = (v6 + 8);
  v69 = *(v30 + 72);
  v73 = v2;
  v74 = v14;
  v77 = v3;
  while (1)
  {
    OUTLINED_FUNCTION_61();
    sub_1D4F0B238();
    sub_1D4F0B238();
    v31 = *(v76 + 48);
    sub_1D4F0AE7C();
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_57(v21, 1, v14);
    if (v33)
    {
      OUTLINED_FUNCTION_57(&v21[v31], 1, v14);
      v32 = v73;
      if (!v33)
      {
        goto LABEL_48;
      }

LABEL_36:
      v51 = OUTLINED_FUNCTION_216();
      sub_1D4E50004(v51, v52, &unk_1D561E020);
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_217();
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_57(&v21[v31], 1, v14);
    if (v33)
    {
      OUTLINED_FUNCTION_100_0();
LABEL_48:
      sub_1D4E50004(v21, &qword_1EC7EB320, &qword_1D562F5F0);
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_86_3();
    v34 = v78;
    sub_1D4F0AECC();
    v35 = *v3 == *v34 && v3[1] == v34[1];
    if (!v35 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_1_23();
    sub_1D4F0B28C(&qword_1EDD53348, v36, MEMORY[0x1E6975BE8]);
    OUTLINED_FUNCTION_209();
    sub_1D56150C8();
    OUTLINED_FUNCTION_209();
    sub_1D56150C8();
    if (v82 == v80 && v83 == v81)
    {

      v39 = v74;
    }

    else
    {
      v38 = sub_1D5616168();

      v39 = v74;
      if ((v38 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v40 = *(v39 + 24);
    v41 = (v77 + v40);
    v42 = *(v77 + v40 + 8);
    v43 = (v78 + v40);
    v44 = v43[1];
    if (v42)
    {
      if (!v44)
      {
        goto LABEL_51;
      }

      v45 = *v41 == *v43 && v42 == v44;
      if (!v45 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v44)
    {
      goto LABEL_51;
    }

    v46 = v72;
    v47 = *(v71 + 48);
    sub_1D4F0AE7C();
    sub_1D4F0AE7C();
    v48 = v70;
    OUTLINED_FUNCTION_57(v46, 1, v70);
    if (v33)
    {
      OUTLINED_FUNCTION_57(v46 + v47, 1, v48);
      if (!v33)
      {
        goto LABEL_50;
      }

      v49 = OUTLINED_FUNCTION_15_2();
      sub_1D4E50004(v49, v50, &unk_1D561DF50);
      sub_1D4E58360();
      sub_1D4E58360();
      v32 = v73;
      goto LABEL_36;
    }

    sub_1D4F0AE7C();
    OUTLINED_FUNCTION_57(v46 + v47, 1, v48);
    if (v53)
    {
      break;
    }

    v54 = v68;
    (*v65)(v68, v46 + v47, v48);
    OUTLINED_FUNCTION_1_23();
    sub_1D4F0B28C(&qword_1EDD53350, v55, MEMORY[0x1E6975BE0]);
    v67 = sub_1D5614D18();
    v56 = *v66;
    (*v66)(v54, v48);
    v57 = OUTLINED_FUNCTION_66();
    v56(v57);
    sub_1D4E50004(v46, &qword_1EC7EA358, &unk_1D561DF50);
    sub_1D4E58360();
    sub_1D4E58360();
    sub_1D4E50004(v21, &qword_1EC7EB318, &unk_1D561E020);
    v32 = v73;
    if ((v67 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_39:
    v58 = *(v75 + 20);
    v59 = *(v79 + v58);
    v60 = v59 == 0;
    if (*(v32 + v58))
    {
      if (!v59)
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_132_1();
      sub_1D4EF7994();
      v60 = v61;
    }

    sub_1D4E58360();
    sub_1D4E58360();
    if (v60)
    {
      v29 += v69;
      v28 += v69;
      OUTLINED_FUNCTION_196();
      v14 = v74;
      v3 = v77;
      if (!v33)
      {
        continue;
      }
    }

    goto LABEL_53;
  }

  v62 = OUTLINED_FUNCTION_66();
  v63(v62);
LABEL_50:
  sub_1D4E50004(v46, &qword_1EC7EB208, &qword_1D562F5E0);
LABEL_51:
  sub_1D4E58360();
  sub_1D4E58360();
  sub_1D4E50004(v21, &qword_1EC7EB318, &unk_1D561E020);
LABEL_52:
  sub_1D4E58360();
  OUTLINED_FUNCTION_98();
  sub_1D4E58360();
LABEL_53:
  OUTLINED_FUNCTION_46();
}

void sub_1D4EF7994()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for CloudSuggestedPivotsRawRequest.Entry(0);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_28_9();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v30 - v10);
  v12 = *(v3 + 16);
  if (v12 == *(v1 + 16) && v12 && v3 != v1)
  {
    OUTLINED_FUNCTION_27_4();
    v14 = v3 + v13;
    v15 = v1 + v13;
    v31 = *(v16 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_75_2();
      sub_1D4F0B238();
      sub_1D4F0B238();
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_1D5616168() & 1) == 0)
      {
LABEL_40:
        sub_1D4E58360();
        OUTLINED_FUNCTION_134_0();
        sub_1D4E58360();
        goto LABEL_41;
      }

      sub_1D5610088();
      OUTLINED_FUNCTION_1_23();
      sub_1D4F0B28C(&qword_1EDD53348, v18, MEMORY[0x1E6975BE8]);
      OUTLINED_FUNCTION_210();
      sub_1D56150C8();
      OUTLINED_FUNCTION_210();
      sub_1D56150C8();
      if (v34 == v32 && v35 == v33)
      {
      }

      else
      {
        v20 = sub_1D5616168();

        if ((v20 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v21 = *(v4 + 24);
      v22 = *(v11 + v21);
      v23 = *(v8 + v21);
      v24 = v23 == 3;
      if (v22 == 3)
      {
        goto LABEL_35;
      }

      if (v23 == 3)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      if (v22 == 1)
      {
        v25 = 0x6577656976657270;
        goto LABEL_23;
      }

      v26 = 0xE800000000000000;
      v25 = 0x64657463656C6573;
      if (!v23)
      {
LABEL_27:
        v27 = 0x6573736572706D69;
        goto LABEL_28;
      }

LABEL_24:
      if (v23 == 1)
      {
        v27 = 0x6577656976657270;
LABEL_28:
        v28 = 0xE900000000000064;
        goto LABEL_30;
      }

      v28 = 0xE800000000000000;
      v27 = 0x64657463656C6573;
LABEL_30:
      if (v25 != v27 || v26 != v28)
      {
        v24 = sub_1D5616168();

LABEL_35:
        OUTLINED_FUNCTION_81_3();
        sub_1D4E58360();
        sub_1D4E58360();
        if ((v24 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      OUTLINED_FUNCTION_81_3();
      sub_1D4E58360();
      sub_1D4E58360();
LABEL_38:
      v15 += v31;
      v14 += v31;
      if (!--v12)
      {
        goto LABEL_41;
      }
    }

    v25 = 0x6573736572706D69;
LABEL_23:
    v26 = 0xE900000000000064;
    if (!v23)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_41:
  OUTLINED_FUNCTION_46();
}

void sub_1D4EF7D44()
{
  OUTLINED_FUNCTION_47();
  v31 = v1;
  v3 = v2;
  v5 = v4;
  v8 = OUTLINED_FUNCTION_186_0(v4, v2, v6, v7);
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = *(v5 + 16);
  if (v15 == *(v3 + 16) && v15 && v5 != v3)
  {
    OUTLINED_FUNCTION_43_3();
    v17 = v5 + v16;
    v18 = v3 + v16;
    v20 = *(v10 + 16);
    v19 = v10 + 16;
    v21 = (v19 - 8);
    v29 = *(v19 + 56);
    v30 = v20;
    do
    {
      v22 = v30;
      v30(v14, v17, v8);
      v23 = v19;
      v24 = v22(v0, v18, v8);
      v31(v24);
      OUTLINED_FUNCTION_61();
      LOBYTE(v22) = sub_1D5614D18();
      v25 = *v21;
      v26 = OUTLINED_FUNCTION_63_1();
      v25(v26);
      (v25)(v14, v8);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v18 += v29;
      v17 += v29;
      OUTLINED_FUNCTION_196();
      v19 = v23;
    }

    while (!v27);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4EF7F70(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_29_4();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = (a2 + 49);
  v4 = (result + 49);
  while (v2)
  {
    v5 = *(v3 - 17);
    v6 = *(v3 - 9);
    v7 = *(v3 - 1);
    v9 = *v3;
    v3 += 24;
    v8 = v9;
    v10 = *(v4 - 17) == v5;
    if (*(v4 - 9) != v6)
    {
      v10 = 0;
    }

    v11 = *(v4 - 1) == v7 && v10;
    result = *v4 == v8 && v11;
    v12 = result != 1 || v2-- == 1;
    v4 += 24;
    if (v12)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4EF8004(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_29_4();
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_34;
      }

      v6 = v4 + 40 * v3;
      v7 = v5 + 40 * v3;
      if (*v6 != *v7)
      {
        return OUTLINED_FUNCTION_29_4();
      }

      v8 = *(v6 + 8);
      v9 = *(v7 + 8);
      v10 = *(v8 + 16);
      if (v10 != *(v9 + 16))
      {
        return OUTLINED_FUNCTION_29_4();
      }

      v11 = *(v6 + 16);
      v12 = *(v6 + 24);
      v13 = *(v6 + 32);
      v14 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v10)
      {
        v16 = v8 == v9;
      }

      else
      {
        v16 = 1;
      }

      v17 = *(v7 + 32);
      if (!v16)
      {
        result = v8 + 32;
        v18 = (v9 + 32);
        while (v10)
        {
          v19 = vmovn_s64(vceqq_f64(*result, *v18));
          if ((v19.i32[0] & v19.i32[1] & 1) == 0)
          {
            return OUTLINED_FUNCTION_29_4();
          }

          result += 16;
          ++v18;
          if (!--v10)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

LABEL_16:
      if (v12)
      {
        if (!v15)
        {
          return OUTLINED_FUNCTION_29_4();
        }
      }

      else
      {
        if (v11 == v14)
        {
          v20 = v15;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          return OUTLINED_FUNCTION_29_4();
        }
      }

      v21 = *(v13 + 16);
      if (v21 != *(v17 + 16))
      {
        return OUTLINED_FUNCTION_29_4();
      }

      if (v21 && v13 != v17)
      {
        break;
      }

LABEL_29:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v22 = (v13 + 32);
    v23 = (v17 + 32);
    while (*v22 == *v23)
    {
      ++v22;
      ++v23;
      if (!--v21)
      {
        goto LABEL_29;
      }
    }

    return OUTLINED_FUNCTION_29_4();
  }

  return OUTLINED_FUNCTION_53_0();
}

uint64_t sub_1D4EF8150(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  while (v2)
  {
    LODWORD(v4) = *(result + v3 + 32) == *(a2 + v3 + 32);
    if (*(result + v3 + 48) != *(a2 + v3 + 48))
    {
      LODWORD(v4) = 0;
    }

    if (*(result + v3 + 40) == *(a2 + v3 + 40))
    {
      v4 = v4;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 != 1 || v2-- == 1;
    v3 += 24;
    if (v5)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4EF81E0()
{
  OUTLINED_FUNCTION_54_5();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

void sub_1D4EF828C()
{
  OUTLINED_FUNCTION_54_5();
  if (v12 && v0 && v1 != v2)
  {
    v3 = 0;
    v27 = v1;
    v28 = v2;
    while (1)
    {
      v4 = *(v1 + v3 + 48);
      v5 = *(v1 + v3 + 56);
      v32 = *(v1 + v3 + 64);
      v6 = *(v1 + v3 + 72);
      v7 = *(v1 + v3 + 88);
      v9 = *(v2 + v3 + 48);
      v8 = *(v2 + v3 + 56);
      v30 = *(v1 + v3 + 80);
      v31 = *(v2 + v3 + 64);
      v10 = *(v2 + v3 + 72);
      v29 = *(v2 + v3 + 80);
      v11 = *(v2 + v3 + 88);
      v12 = *(v1 + v3 + 32) == *(v2 + v3 + 32) && *(v1 + v3 + 40) == *(v2 + v3 + 40);
      if (!v12)
      {
        v13 = *(v2 + v3 + 88);
        v33 = *(v2 + v3 + 56);
        v34 = *(v1 + v3 + 56);
        v14 = *(v1 + v3 + 72);
        v15 = *(v2 + v3 + 72);
        v16 = *(v1 + v3 + 48);
        v17 = sub_1D5616168();
        v4 = v16;
        v10 = v15;
        v6 = v14;
        v8 = v33;
        v5 = v34;
        v11 = v13;
        if ((v17 & 1) == 0)
        {
          break;
        }
      }

      if (v5)
      {
        if (!v8)
        {
          return;
        }

        if (v4 != v9 || v5 != v8)
        {
          v19 = v11;
          v20 = v6;
          v21 = v10;
          v22 = sub_1D5616168();
          v10 = v21;
          v6 = v20;
          v11 = v19;
          if ((v22 & 1) == 0)
          {
            return;
          }
        }
      }

      else if (v8)
      {
        return;
      }

      if (v6)
      {
        if (!v10)
        {
          return;
        }
      }

      else
      {
        if (v32 == v31)
        {
          v23 = v10;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          return;
        }
      }

      if (v7)
      {
        if (!v11)
        {
          return;
        }
      }

      else
      {
        if (v30 == v29)
        {
          v24 = v11;
        }

        else
        {
          v24 = 1;
        }

        if (v24)
        {
          return;
        }
      }

      OUTLINED_FUNCTION_97_1();
      sub_1D4F286E0();
      v26 = v25;

      if (v26)
      {
        v3 += 72;
        --v0;
        v1 = v27;
        v2 = v28;
        if (v0)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_1D4EF8530()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0) - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_9();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v5 + 16);
  if (v9 == *(v3 + 16) && v9 && v5 != v3)
  {
    OUTLINED_FUNCTION_27_4();
    v11 = v5 + v10;
    v12 = v3 + v10;
    v14 = *(v13 + 72);
    do
    {
      OUTLINED_FUNCTION_15_2();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_215();
      sub_1D4F0B238();
      v15 = OUTLINED_FUNCTION_75_2();
      v16 = v1(v15);
      OUTLINED_FUNCTION_134_0();
      sub_1D4E58360();
      OUTLINED_FUNCTION_86_0();
      sub_1D4E58360();
      if ((v16 & 1) == 0)
      {
        break;
      }

      v12 += v14;
      v11 += v14;
      OUTLINED_FUNCTION_196();
    }

    while (!v17);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4EF86E0()
{
  OUTLINED_FUNCTION_47();
  v34 = v1;
  v35 = v2;
  v33 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *(v7 + 16);
  if (v16 == *(v5 + 16) && v16 && v7 != v5)
  {
    OUTLINED_FUNCTION_43_3();
    v18 = v7 + v17;
    v19 = v5 + v17;
    v21 = *(v11 + 16);
    v20 = v11 + 16;
    v22 = (v20 - 8);
    v31 = *(v20 + 56);
    v32 = v21;
    while (1)
    {
      v23 = OUTLINED_FUNCTION_201();
      v24 = v32;
      (v32)(v23);
      if (!v16)
      {
        break;
      }

      v25 = v20;
      v24(v0, v19, v9);
      sub_1D4F0B28C(v33, v34, v35);
      OUTLINED_FUNCTION_15_2();
      v26 = sub_1D5614D18();
      v27 = *v22;
      v28 = OUTLINED_FUNCTION_109();
      v27(v28);
      (v27)(v15, v9);
      if (v26)
      {
        v19 += v31;
        v18 += v31;
        v29 = v16-- == 1;
        v20 = v25;
        if (!v29)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_1D4EF889C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = v5;
        v7 = *v4++;
        *&v6.f64[0] = vmovn_s64(vceqq_f64(v6, v7));
        v8 = LOBYTE(v6.f64[0]) & BYTE4(v6.f64[0]);
        if ((LOBYTE(v6.f64[0]) & BYTE4(v6.f64[0]) & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1D4EF8910(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_54_5();
  if (v10 && v2 && a1 != a2)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v27 = *(a1 + v3 + 64);
      v28 = *(a1 + v3 + 65);
      v6 = *(a1 + v3 + 66);
      v22 = *(a1 + v3 + 68);
      v20 = *(a1 + v3 + 69);
      v8 = *(a2 + v3 + 48);
      v7 = *(a2 + v3 + 56);
      v24 = *(a1 + v3 + 67);
      v25 = *(a2 + v3 + 64);
      v26 = *(a2 + v3 + 65);
      v9 = *(a2 + v3 + 66);
      v23 = *(a2 + v3 + 67);
      v21 = *(a2 + v3 + 68);
      v19 = *(a2 + v3 + 69);
      v10 = *(a1 + v3 + 32) == *(a2 + v3 + 32) && *(a1 + v3 + 40) == *(a2 + v3 + 40);
      if (!v10)
      {
        v11 = *(a1 + v3 + 48);
        v12 = sub_1D5616168();
        v4 = v11;
        if ((v12 & 1) == 0)
        {
          break;
        }
      }

      v13 = v6 ^ v9;
      if (v4 == v8 && v5 == v7)
      {
        if ((v27 ^ v25 | v28 ^ v26 | v13) & 1) != 0 || ((v24 ^ v23) & 1) != 0 || ((v22 ^ v21) & 1) != 0 || ((v20 ^ v19))
        {
          return;
        }
      }

      else if (v27 ^ v25) & 1 | ((sub_1D5616168() & 1) == 0) | (v28 ^ v26 | v13) & 1 || ((v24 ^ v23) & 1) != 0 || ((v22 ^ v21) & 1) != 0 || ((v20 ^ v19))
      {
        return;
      }

      OUTLINED_FUNCTION_215();
      sub_1D4F286E0();
      v16 = v15;

      if (v16)
      {
        v3 += 48;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_1D4EF8BA4()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v46 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v48 = v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_41_6();
  type metadata accessor for StorePlatformGenreAttribute(v16);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_156_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_165_1();
  v19 = *(v6 + 16);
  if (v19 == *(v4 + 16) && v19 && v6 != v4)
  {
    OUTLINED_FUNCTION_27_4();
    v21 = v6 + v20;
    v22 = v4 + v20;
    v41 = (v9 + 32);
    v42 = (v9 + 8);
    v44 = *(v23 + 72);
    v45 = v7;
    v24 = &unk_1EC7E9CA8;
    while (1)
    {
      OUTLINED_FUNCTION_130();
      sub_1D4F0B238();
      if (!v19)
      {
        break;
      }

      OUTLINED_FUNCTION_216();
      sub_1D4F0B238();
      v25 = v2[1];
      v26 = v1[1];
      if (v25)
      {
        if (!v26)
        {
          goto LABEL_35;
        }

        v27 = *v2 == *v1 && v25 == v26;
        if (!v27 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v26)
      {
        goto LABEL_35;
      }

      v28 = v2[3];
      v29 = v1[3];
      if (v28)
      {
        if (!v29)
        {
          goto LABEL_35;
        }

        v30 = v2[2] == v1[2] && v28 == v29;
        if (!v30 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v29)
      {
        goto LABEL_35;
      }

      v49 = v19;
      v31 = v24;
      v32 = *(v47 + 48);
      sub_1D4F0AE7C();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_10(v0);
      if (v27)
      {
        OUTLINED_FUNCTION_10(v0 + v32);
        if (!v27)
        {
          goto LABEL_34;
        }

        sub_1D4E50004(v0, v24, &unk_1D561D1D0);
        sub_1D4E58360();
        OUTLINED_FUNCTION_132_1();
        sub_1D4E58360();
      }

      else
      {
        sub_1D4F0AE7C();
        OUTLINED_FUNCTION_10(v0 + v32);
        if (v33)
        {
          OUTLINED_FUNCTION_203();
          v40(v48, v7);
LABEL_34:
          sub_1D4E50004(v0, &qword_1EC7E9FB0, &qword_1D562C590);
LABEL_35:
          sub_1D4E58360();
          OUTLINED_FUNCTION_214();
          sub_1D4E58360();
          goto LABEL_36;
        }

        (*v41)(v46, v0 + v32, v7);
        OUTLINED_FUNCTION_0_15();
        sub_1D4F0B28C(&qword_1EDD5CF90, v34, MEMORY[0x1E6968FC8]);
        OUTLINED_FUNCTION_93();
        v43 = sub_1D5614D18();
        v35 = *v42;
        v36 = OUTLINED_FUNCTION_63_1();
        v35(v36);
        v37 = OUTLINED_FUNCTION_109();
        v35(v37);
        v38 = OUTLINED_FUNCTION_134_0();
        sub_1D4E50004(v38, v39, &unk_1D561D1D0);
        sub_1D4E58360();
        OUTLINED_FUNCTION_97_1();
        v24 = v31;
        sub_1D4E58360();
        if ((v43 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v7 = v45;
      v22 += v44;
      v21 += v44;
      v19 = v49 - 1;
      if (v49 == 1)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_36:
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4EF905C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = sub_1D560F548();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v102[-v15];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC60, &unk_1D56294E0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v130 = v18;
  OUTLINED_FUNCTION_70_0();
  v123 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v119 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v121 = v25;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v129 = v27;
  v28 = OUTLINED_FUNCTION_70_0();
  v120 = type metadata accessor for StorePlatformOffer.Asset(v28);
  OUTLINED_FUNCTION_4();
  v128 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_112_0();
  v126 = type metadata accessor for StorePlatformOffer(v32);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_28_9();
  v131 = (v34 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v102[-v37];
  v39 = *(v5 + 16);
  if (v39 != *(v3 + 16) || !v39 || v5 == v3)
  {
LABEL_84:
    OUTLINED_FUNCTION_46();
    return;
  }

  v115 = v6;
  v108 = v12;
  v40 = 0;
  OUTLINED_FUNCTION_27_4();
  v118 = v5 + v41;
  v116 = v3 + v41;
  v104 = v20 + 32;
  v105 = (v20 + 8);
  v107 = v8 + 32;
  v109 = (v8 + 8);
  v117 = *(v42 + 72);
  v43 = v129;
  v110 = v16;
  v124 = v38;
  v125 = v44;
  while (1)
  {
    OUTLINED_FUNCTION_85_2();
    sub_1D4F0B238();
    if (v40 == v125)
    {
      __break(1u);
      goto LABEL_86;
    }

    v45 = v131;
    sub_1D4F0B238();
    v46 = *v38;
    v47 = *v45;
    if (!*v38)
    {
      if (v47)
      {
        goto LABEL_83;
      }

      goto LABEL_67;
    }

    if (!v47)
    {
      goto LABEL_83;
    }

    v48 = *(v46 + 16);
    if (v48 != *(v47 + 16))
    {
      goto LABEL_83;
    }

    if (v48 && v46 != v47)
    {
      break;
    }

LABEL_67:
    v87 = *(v127 + 48);
    sub_1D4F0AE7C();
    sub_1D4F0AE7C();
    v88 = OUTLINED_FUNCTION_95_0();
    v89 = v115;
    OUTLINED_FUNCTION_57(v88, v90, v115);
    if (v56)
    {
      OUTLINED_FUNCTION_57(v130 + v87, 1, v89);
      if (!v56)
      {
        goto LABEL_78;
      }

      sub_1D4E50004(v130, &qword_1EC7EAC58, &unk_1D561DA70);
      OUTLINED_FUNCTION_83_0();
      sub_1D4E58360();
      sub_1D4E58360();
    }

    else
    {
      v91 = v130;
      v92 = v110;
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_57(v91 + v87, 1, v89);
      if (v93)
      {
        OUTLINED_FUNCTION_195();
        v99 = OUTLINED_FUNCTION_15_2();
        v100(v99);
LABEL_78:
        sub_1D4E50004(v130, &qword_1EC7EAC60, &unk_1D56294E0);
LABEL_83:
        OUTLINED_FUNCTION_83_0();
        sub_1D4E58360();
        OUTLINED_FUNCTION_159();
        sub_1D4E58360();
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_195();
      v94 = v130;
      v95 = v108;
      v96(v108, v130 + v87, v89);
      OUTLINED_FUNCTION_82_2();
      sub_1D4F0B28C(&qword_1EC7EAC68, v97, MEMORY[0x1E6975728]);
      LODWORD(v114) = sub_1D5614D18();
      v98 = *v109;
      v43 = v129;
      (*v109)(v95, v89);
      v98(v92, v89);
      sub_1D4E50004(v94, &qword_1EC7EAC58, &unk_1D561DA70);
      sub_1D4E58360();
      sub_1D4E58360();
      if ((v114 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    ++v40;
    v38 = v124;
    if (v40 == v125)
    {
      goto LABEL_84;
    }
  }

  OUTLINED_FUNCTION_43_3();
  v112 = v50 + v49;
  v113 = v50;
  v111 = v51 + v49;
  v114 = v51;

  v52 = 0;
  v53 = v120;
  v106 = v48;
  while (v52 < *(v113 + 16))
  {
    OUTLINED_FUNCTION_32_13();
    sub_1D4F0B238();
    if (v52 >= *(v114 + 16))
    {
      goto LABEL_87;
    }

    OUTLINED_FUNCTION_32_13();
    sub_1D4F0B238();
    v54 = *(v1 + 8);
    v55 = *(v0 + 8);
    if (v54)
    {
      if (!v55)
      {
        goto LABEL_81;
      }

      v56 = *v1 == *v0 && v54 == v55;
      if (!v56 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (v55)
    {
      goto LABEL_81;
    }

    v57 = *(v0 + 24);
    if (*(v1 + 24))
    {
      if (!*(v0 + 24))
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (*(v1 + 16) != *(v0 + 16))
      {
        v57 = 1;
      }

      if (v57)
      {
        goto LABEL_81;
      }
    }

    v58 = *(v1 + 40);
    v59 = *(v0 + 40);
    if (v58)
    {
      if (!v59)
      {
        goto LABEL_81;
      }

      v60 = *(v1 + 32) == *(v0 + 32) && v58 == v59;
      if (!v60 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (v59)
    {
      goto LABEL_81;
    }

    v61 = *(v1 + 48);
    v62 = *(v0 + 48);
    if (v61 == 2)
    {
      if (v62 != 2)
      {
        goto LABEL_81;
      }
    }

    else if (v62 == 2 || ((v62 ^ v61) & 1) != 0)
    {
      goto LABEL_81;
    }

    v63 = *(v1 + 49);
    v64 = *(v0 + 49);
    if (v63 == 2)
    {
      if (v64 != 2)
      {
        goto LABEL_81;
      }
    }

    else if (v64 == 2 || ((v64 ^ v63) & 1) != 0)
    {
      goto LABEL_81;
    }

    v65 = *(v122 + 48);
    OUTLINED_FUNCTION_189_0();
    OUTLINED_FUNCTION_189_0();
    v66 = v123;
    OUTLINED_FUNCTION_57(v43, 1, v123);
    if (v56)
    {
      OUTLINED_FUNCTION_10(v43 + v65);
      if (!v56)
      {
        goto LABEL_80;
      }

      OUTLINED_FUNCTION_29_3();
      sub_1D4E50004(v67, v68, v69);
    }

    else
    {
      OUTLINED_FUNCTION_189_0();
      OUTLINED_FUNCTION_10(v43 + v65);
      if (v70)
      {
        OUTLINED_FUNCTION_195();
        v101(v121, v66);
LABEL_80:
        sub_1D4E50004(v43, &qword_1EC7E9FB0, &qword_1D562C590);
LABEL_81:
        OUTLINED_FUNCTION_84_1();
        sub_1D4E58360();
        OUTLINED_FUNCTION_143();
        sub_1D4E58360();
LABEL_82:

        goto LABEL_83;
      }

      OUTLINED_FUNCTION_195();
      v71(v119, v43 + v65, v66);
      OUTLINED_FUNCTION_0_15();
      sub_1D4F0B28C(&qword_1EDD5CF90, v72, MEMORY[0x1E6968FC8]);
      v73 = v121;
      OUTLINED_FUNCTION_224();
      v103 = sub_1D5614D18();
      v74 = *v105;
      v75 = OUTLINED_FUNCTION_175();
      v74(v75);
      (v74)(v73, v66);
      v53 = v120;
      v43 = v129;
      OUTLINED_FUNCTION_29_3();
      sub_1D4E50004(v76, v77, v78);
      if ((v103 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    v79 = *(v53 + 40);
    v80 = *(v1 + v79);
    v81 = *(v0 + v79);
    if (v80 == 2)
    {
      if (v81 != 2)
      {
        goto LABEL_81;
      }
    }

    else if (v81 == 2 || ((v81 ^ v80) & 1) != 0)
    {
      goto LABEL_81;
    }

    v82 = *(v53 + 44);
    v83 = (v1 + v82);
    v84 = *(v1 + v82 + 8);
    v85 = v0 + v82;
    v86 = *(v85 + 8);
    if ((v84 & 1) == 0)
    {
      if (*(v85 + 8))
      {
        goto LABEL_81;
      }

      v86 = *v83 == *v85;
    }

    OUTLINED_FUNCTION_84_1();
    sub_1D4E58360();
    OUTLINED_FUNCTION_143();
    sub_1D4E58360();
    if ((v86 & 1) == 0)
    {
      goto LABEL_82;
    }

    if (v106 == ++v52)
    {

      goto LABEL_67;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

void sub_1D4EF9A90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_54_5();
  if (v10 && v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v5 = *(a1 + v3 + 48);
      v4 = *(a1 + v3 + 56);
      v29 = *(a1 + v3 + 64);
      v30 = *(a1 + v3 + 65);
      v6 = *(a1 + v3 + 66);
      v24 = *(a1 + v3 + 68);
      v22 = *(a1 + v3 + 69);
      v20 = *(a1 + v3 + 70);
      v18 = *(a1 + v3 + 71);
      v8 = *(a2 + v3 + 48);
      v7 = *(a2 + v3 + 56);
      v26 = *(a1 + v3 + 67);
      v27 = *(a2 + v3 + 64);
      v28 = *(a2 + v3 + 65);
      v9 = *(a2 + v3 + 66);
      v25 = *(a2 + v3 + 67);
      v23 = *(a2 + v3 + 68);
      v21 = *(a2 + v3 + 69);
      v19 = *(a2 + v3 + 70);
      v17 = *(a2 + v3 + 71);
      v10 = *(a1 + v3 + 32) == *(a2 + v3 + 32) && *(a1 + v3 + 40) == *(a2 + v3 + 40);
      if (!v10 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v11 = v6 ^ v9;
      if (v5 == v8 && v4 == v7)
      {
        if ((v29 ^ v27 | v30 ^ v28 | v11))
        {
          return;
        }
      }

      else if ((v29 ^ v27) & 1 | ((sub_1D5616168() & 1) == 0) | (v30 ^ v28 | v11) & 1)
      {
        return;
      }

      if ((v26 ^ v25))
      {
        break;
      }

      if ((v24 ^ v23))
      {
        break;
      }

      if ((v22 ^ v21))
      {
        break;
      }

      if ((v20 ^ v19))
      {
        break;
      }

      if ((v18 ^ v17))
      {
        break;
      }

      OUTLINED_FUNCTION_85_0();
      sub_1D4F286E0();
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        break;
      }

      v3 += 48;
      --v2;
    }

    while (v2);
  }
}

void sub_1D4EF9DD8()
{
  OUTLINED_FUNCTION_47();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 32);
    v4 = (v1 + 32);
    do
    {
      v5 = 0xE200000000000000;
      v6 = 17459;
      switch(*v3)
      {
        case 1:
          v6 = 19252;
          break;
        case 2:
          v5 = 0xE300000000000000;
          v6 = 5391432;
          break;
        case 3:
          v6 = 0x6D744179626C6F64;
          v5 = 0xEA0000000000736FLL;
          break;
        case 4:
          v6 = 0x73695679626C6F64;
          v5 = 0xEB000000006E6F69;
          break;
        default:
          break;
      }

      v7 = 0xE200000000000000;
      v8 = 17459;
      switch(*v4)
      {
        case 1:
          v8 = 19252;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 5391432;
          break;
        case 3:
          v8 = 0x6D744179626C6F64;
          v7 = 0xEA0000000000736FLL;
          break;
        case 4:
          v8 = 0x73695679626C6F64;
          v7 = 0xEB000000006E6F69;
          break;
        default:
          break;
      }

      if (v6 == v8 && v5 == v7)
      {
      }

      else
      {
        v10 = sub_1D5616168();

        if ((v10 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4EF9FCC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_119_2();
  v4 = *(v2 + 16);
  if (v4 == *(v3 + 16) && v4 && v2 != v3)
  {
    v5 = (v2 + 72);
    v6 = (v3 + 40);
    do
    {
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *v5;
      v17 = *(v5 - 1);
      v10 = v6[1];
      v11 = v6[2];
      v13 = v6[3];
      v12 = v6[4];
      v14 = *(v5 - 5) == *(v6 - 1) && *(v5 - 4) == *v6;
      if (!v14 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      if (v7 != v10 || v8 != v11)
      {
        OUTLINED_FUNCTION_85_0();
        if ((sub_1D5616168() & 1) == 0)
        {
          break;
        }
      }

      if (v9)
      {
        if (!v12)
        {
          break;
        }

        v16 = v17 == v13 && v9 == v12;
        if (!v16 && (sub_1D5616168() & 1) == 0)
        {
          break;
        }
      }

      else if (v12)
      {
        break;
      }

      v5 += 6;
      v6 += 6;
      --v4;
    }

    while (v4);
  }

  OUTLINED_FUNCTION_118_2();
}

uint64_t sub_1D4EFA0D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_29_4();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4EFA124()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_66_3();
  v6 = type metadata accessor for VideoArtwork.FileAsset(v5);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_152_1();
  if (v9 && v4 && v2 != v3)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_159_2();
    while (1)
    {
      OUTLINED_FUNCTION_61();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_109();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_63_1();
      if ((sub_1D560BFB8() & 1) == 0 || *(v1 + v6[5]) != *(v0 + v6[5]) || *(v1 + v6[6]) != *(v0 + v6[6]) || *(v1 + v6[7]) != *(v0 + v6[7]))
      {
        break;
      }

      sub_1D4F286E0();
      v11 = v10;
      sub_1D4E58360();
      OUTLINED_FUNCTION_234();
      if (v11)
      {
        OUTLINED_FUNCTION_72_6();
        if (!v9)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    sub_1D4E58360();
    OUTLINED_FUNCTION_98();
    sub_1D4E58360();
  }

LABEL_16:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4EFA2E4(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 == a2[1].i64[0])
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = a1 + 2;
      v4 = a2 + 2;
      do
      {
        v5 = *v3++;
        v6 = v5;
        v7 = *v4++;
        *v6.i8 = vmovn_s64(vceqq_s64(v6, v7));
        v8 = v6.i8[0] & v6.i8[4];
        if ((v6.i8[0] & v6.i8[4] & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1D4EFA358()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_66_3();
  v6 = type metadata accessor for InternalMusicPlayer.Queue.Entry(v5);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_152_1();
  if (v11 && v4 && v2 != v3)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_159_2();
    while (1)
    {
      OUTLINED_FUNCTION_61();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_109();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_158();
      v11 = v11 && v9 == v10;
      if (!v11 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v12 = sub_1D5104E50((v1 + *(v6 + 20)), (v0 + *(v6 + 20)));
      sub_1D4E58360();
      OUTLINED_FUNCTION_234();
      if (v12)
      {
        OUTLINED_FUNCTION_72_6();
        if (!v11)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1D4E58360();
    OUTLINED_FUNCTION_98();
    sub_1D4E58360();
  }

LABEL_17:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_46();
}

void sub_1D4EFA4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = OUTLINED_FUNCTION_46_7();
  v26 = type metadata accessor for InternalMusicPlayer.Dialog.Action(v25) - 8;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_28_9();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = *(v20 + 16);
  if (v33 == *(v24 + 16) && v33 && v20 != v24)
  {
    OUTLINED_FUNCTION_27_4();
    v35 = v20 + v34;
    v36 = v24 + v34;
    v38 = *(v37 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_63_1();
      sub_1D4F0B238();
      if (!v33)
      {
        break;
      }

      OUTLINED_FUNCTION_134_0();
      sub_1D4F0B238();
      v39 = *v32 == *v29 && *(v32 + 1) == *(v29 + 8);
      if (!v39 && (sub_1D5616168() & 1) == 0)
      {
        sub_1D4E58360();
        OUTLINED_FUNCTION_222();
        sub_1D4E58360();
        goto LABEL_19;
      }

      v40 = v32[16];
      v41 = *(v29 + 16);
      sub_1D4E58360();
      OUTLINED_FUNCTION_68_4();
      sub_1D4E58360();
      v42 = v40 != v41 || v33-- == 1;
      v36 += v38;
      v35 += v38;
      if (v42)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4EFA6B4()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v37 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v39 = v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_41_6();
  v41 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation(v16);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_156_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_165_1();
  v19 = *(v6 + 16);
  if (v19 == *(v4 + 16) && v19 && v6 != v4)
  {
    OUTLINED_FUNCTION_27_4();
    v21 = v6 + v20;
    v22 = v4 + v20;
    v34 = v0;
    v35 = (v9 + 8);
    v38 = *(v23 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_130();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_216();
      sub_1D4F0B238();
      v24 = *v2 == *v1 && v2[1] == v1[1];
      if (!v24 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v25 = v2[2] == v1[2] && v2[3] == v1[3];
      if (!v25 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v26 = *(v40 + 48);
      sub_1D4F0AE7C();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_10(v0);
      if (v24)
      {
        OUTLINED_FUNCTION_10(v0 + v26);
        if (!v24)
        {
          goto LABEL_27;
        }

        v27 = OUTLINED_FUNCTION_61();
        sub_1D4E50004(v27, v28, &unk_1D561D1D0);
      }

      else
      {
        sub_1D4F0AE7C();
        OUTLINED_FUNCTION_10(v0 + v26);
        if (v29)
        {
          (*v35)(v39, v7);
LABEL_27:
          sub_1D4E50004(v0, &qword_1EC7E9FB0, &qword_1D562C590);
          break;
        }

        OUTLINED_FUNCTION_203();
        v30(v37, v0 + v26, v7);
        OUTLINED_FUNCTION_0_15();
        sub_1D4F0B28C(&qword_1EDD5CF90, v31, MEMORY[0x1E6968FC8]);
        v36 = sub_1D5614D18();
        v32 = *v35;
        v0 = v34;
        (*v35)(v37, v7);
        v32(v39, v7);
        sub_1D4E50004(v34, &unk_1EC7E9CA8, &unk_1D561D1D0);
        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      v33 = *(v2 + *(v41 + 28)) ^ *(v1 + *(v41 + 28));
      sub_1D4E58360();
      OUTLINED_FUNCTION_132_1();
      sub_1D4E58360();
      if ((v33 & 1) == 0)
      {
        v22 += v38;
        v21 += v38;
        if (--v19)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    sub_1D4E58360();
    OUTLINED_FUNCTION_214();
    sub_1D4E58360();
  }

LABEL_29:
  OUTLINED_FUNCTION_46();
}

void sub_1D4EFAB38()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_66_3();
  type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(v5);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_152_1();
  if (v10 && v4 && v2 != v3)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_159_2();
    while (1)
    {
      OUTLINED_FUNCTION_61();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_109();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_158();
      v10 = v10 && v8 == v9;
      if (!v10 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v11 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
      if (!v11 && (sub_1D5616168() & 1) == 0)
      {
        break;
      }

      v12 = sub_1D560BFB8();
      sub_1D4E58360();
      OUTLINED_FUNCTION_234();
      if (v12)
      {
        OUTLINED_FUNCTION_72_6();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1D4E58360();
    OUTLINED_FUNCTION_98();
    sub_1D4E58360();
  }

LABEL_22:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4EFACE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D4EFAD58(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_29_4();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4EFADF4()
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  v7 = v6;
  v8 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v42 = v14;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB208, &qword_1D562F5E0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_41_6();
  type metadata accessor for MusicItemTypedIdentifier(v16);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_156_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_165_1();
  v19 = *(v7 + 16);
  if (v19 == *(v5 + 16) && v19 && v7 != v5)
  {
    v39 = v1;
    v40 = v0;
    v20 = 0;
    OUTLINED_FUNCTION_27_4();
    v41 = (v10 + 8);
    while (1)
    {
      OUTLINED_FUNCTION_90_3();
      sub_1D4F0B238();
      if (v20 == v19)
      {
        break;
      }

      sub_1D4F0B238();
      v21 = *v3 == *v2 && v3[1] == v2[1];
      if (!v21 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_37;
      }

      v22 = v3[2];
      v23 = v2[2];
      v24 = *(v22 + 16);
      if (v24 != *(v23 + 16))
      {
        goto LABEL_37;
      }

      if (v24)
      {
        v25 = v22 == v23;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        v26 = (v22 + 40);
        v27 = (v23 + 40);
        while (v24)
        {
          v28 = *(v26 - 1) == *(v27 - 1) && *v26 == *v27;
          if (!v28 && (sub_1D5616168() & 1) == 0)
          {
            goto LABEL_37;
          }

          v26 += 2;
          v27 += 2;
          if (!--v24)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        break;
      }

LABEL_24:
      if ((sub_1D560D8C8() & 1) == 0)
      {
        goto LABEL_37;
      }

      v29 = *(v43 + 48);
      sub_1D4F0AE7C();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_10(v1);
      if (v21)
      {
        OUTLINED_FUNCTION_10(v1 + v29);
        if (!v21)
        {
          goto LABEL_36;
        }

        v30 = OUTLINED_FUNCTION_224();
        sub_1D4E50004(v30, v31, &unk_1D561DF50);
        sub_1D4E58360();
        OUTLINED_FUNCTION_132_1();
        sub_1D4E58360();
      }

      else
      {
        sub_1D4F0AE7C();
        OUTLINED_FUNCTION_10(v1 + v29);
        if (v32)
        {
          (*v41)(v42, v8);
LABEL_36:
          sub_1D4E50004(v1, &qword_1EC7EB208, &qword_1D562F5E0);
LABEL_37:
          sub_1D4E58360();
          OUTLINED_FUNCTION_214();
          sub_1D4E58360();
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_203();
        v33(v40, v1 + v29, v8);
        OUTLINED_FUNCTION_1_23();
        sub_1D4F0B28C(&qword_1EDD53350, v34, MEMORY[0x1E6975BE0]);
        v35 = sub_1D5614D18();
        v36 = *v41;
        (*v41)(v40, v8);
        v36(v42, v8);
        v1 = v39;
        v37 = OUTLINED_FUNCTION_224();
        sub_1D4E50004(v37, v38, &unk_1D561DF50);
        sub_1D4E58360();
        sub_1D4E58360();
        if ((v35 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      if (++v20 == v19)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_38:
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4EFB55C()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_106_0();
  v5 = type metadata accessor for MusicSuggestedPivotEntry(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v56 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v61 = type metadata accessor for MusicSuggestedPivotContainer(v8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v59 = v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD8, &unk_1D561DBD0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v55 = v14;
  v15 = OUTLINED_FUNCTION_70_0();
  v53 = type metadata accessor for MusicSuggestedPivotSeed(v15);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_8();
  v17 = type metadata accessor for MusicSuggestedPivotNode(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v57 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  v62 = v48 - v21;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADE0, &qword_1D562EF10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_114();
  v60 = type metadata accessor for MusicSuggestedPivotRound(0);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_28_9();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v48 - v28;
  v30 = *(v1 + 16);
  if (v30 != *(v0 + 16) || !v30 || v1 == v0)
  {
    goto LABEL_29;
  }

  v48[1] = v2;
  OUTLINED_FUNCTION_27_4();
  v32 = v1 + v31;
  v33 = v0 + v31;
  v35 = *(v34 + 72);
  v51 = v26;
  v52 = v35;
  v58 = v29;
  v50 = v17;
  while (1)
  {
    sub_1D4F0B238();
    OUTLINED_FUNCTION_141();
    sub_1D4F0B238();
    sub_1D4F0B238();
    sub_1D4F0B238();
    OUTLINED_FUNCTION_209();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    OUTLINED_FUNCTION_74_3();
    sub_1D4F0B238();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_23;
    }

    sub_1D4F0AECC();
    OUTLINED_FUNCTION_61();
    static MusicSuggestedPivotContainer.== infix(_:_:)();
    v37 = v36;
    sub_1D4E58360();
    sub_1D4E58360();
    if ((v37 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_19:
    OUTLINED_FUNCTION_101_0();
    sub_1D4F2E468();
    v47 = v46;
    sub_1D4E58360();
    OUTLINED_FUNCTION_217();
    sub_1D4E58360();
    if (v47)
    {
      v33 += v52;
      v32 += v52;
      if (--v30)
      {
        continue;
      }
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_74_3();
  sub_1D4F0B238();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_23:
    sub_1D4E58360();
    sub_1D4E50004(v3, &qword_1EC7EADE0, &qword_1D562EF10);
    goto LABEL_28;
  }

  sub_1D4F0AECC();
  OUTLINED_FUNCTION_61();
  if ((sub_1D5613CF8() & 1) == 0)
  {
    goto LABEL_26;
  }

  v38 = *(v54 + 48);
  v39 = v55;
  sub_1D4F0AE7C();
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_57(v39, 1, v61);
  if (v42)
  {
    OUTLINED_FUNCTION_57(v39 + v38, 1, v61);
    if (!v42)
    {
      goto LABEL_25;
    }

    v40 = OUTLINED_FUNCTION_200();
    sub_1D4E50004(v40, v41, &qword_1D56331E0);
    goto LABEL_18;
  }

  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_57(v39 + v38, 1, v61);
  if (!v42)
  {
    sub_1D4F0AECC();
    static MusicSuggestedPivotContainer.== infix(_:_:)();
    v49 = v43;
    sub_1D4E58360();
    sub_1D4E58360();
    v44 = OUTLINED_FUNCTION_200();
    sub_1D4E50004(v44, v45, &qword_1D56331E0);
    if ((v49 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1D4E58360();
    sub_1D4E58360();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_160_0();
LABEL_25:
  sub_1D4E50004(v39, &qword_1EC7EADD8, &unk_1D561DBD0);
LABEL_26:
  sub_1D4E58360();
  OUTLINED_FUNCTION_134_0();
  sub_1D4E58360();
LABEL_27:
  OUTLINED_FUNCTION_101_0();
LABEL_28:
  sub_1D4E58360();
  sub_1D4E58360();
LABEL_29:
  OUTLINED_FUNCTION_46();
}

void sub_1D4EFBD24()
{
  OUTLINED_FUNCTION_206();
  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D5615A98())
  {
    v4 = v0 >> 62 ? sub_1D5615A98() : *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (i != v4 || !i)
    {
      break;
    }

    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_204_0();
    if (!v8)
    {
      v7 = v0;
    }

    if (v0 >> 62)
    {
      v6 = v7;
    }

    if (v5 == v6)
    {
      break;
    }

    if (i < 0)
    {
      __break(1u);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF10, &qword_1D561DCE0);
    v9 = 4;
    while (1)
    {
      v10 = v9 - 4;
      v11 = v9 - 3;
      if (__OFADD__(v9 - 4, 1))
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6EB9B0](v9 - 4, v1);
      }

      else
      {
        if (v10 >= *(v20 + 16))
        {
          goto LABEL_29;
        }
      }

      if ((v0 & 0xC000000000000001) != 0)
      {
        v12 = OUTLINED_FUNCTION_143();
        MEMORY[0x1DA6EB9B0](v12);
      }

      else
      {
        if (v10 >= *(v19 + 16))
        {
          goto LABEL_30;
        }
      }

      v13 = sub_1D4E62A60(&qword_1EC7EAF20, &qword_1EC7EAF10, &qword_1D561DCE0, MEMORY[0x1E6974D40]);
      v18 = OUTLINED_FUNCTION_228(v13, v14, v15, v16, v17);

      if (v18)
      {
        ++v9;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }
}

void sub_1D4EFBFD0()
{
  OUTLINED_FUNCTION_47();
  v62 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_64_1();
  v8 = sub_1D560FDA8();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v58 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v61 = v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB008, &qword_1D561DDC0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v59 = v5(0);
  OUTLINED_FUNCTION_7_17();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_28_9();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v50 - v24);
  v26 = *(v0 + 16);
  if (v26 == *(v7 + 16) && v26 && v0 != v7)
  {
    OUTLINED_FUNCTION_27_4();
    v28 = v0 + v27;
    v29 = v7 + v27;
    v51 = (v10 + 32);
    v52 = (v10 + 8);
    v55 = *(v30 + 72);
    v56 = v8;
    v31 = &qword_1D561DDB8;
    v57 = v3;
    while (1)
    {
      OUTLINED_FUNCTION_141();
      sub_1D4F0B238();
      if (!v26)
      {
        break;
      }

      OUTLINED_FUNCTION_220();
      sub_1D4F0B238();
      v32 = v25[1];
      v33 = v22[1];
      if (v32)
      {
        if (!v33)
        {
          goto LABEL_35;
        }

        v34 = *v25 == *v22 && v32 == v33;
        if (!v34 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v33)
      {
        goto LABEL_35;
      }

      v35 = v25[3];
      v36 = v22[3];
      if (v35)
      {
        if (!v36)
        {
          goto LABEL_35;
        }

        v37 = v25[2] == v22[2] && v35 == v36;
        if (!v37 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v36)
      {
        goto LABEL_35;
      }

      v63 = v26;
      v38 = *(v60 + 48);
      v39 = v31;
      sub_1D4F0AE7C();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_10(v18);
      if (v34)
      {
        OUTLINED_FUNCTION_10(&v18[v38]);
        if (!v34)
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_29_3();
        sub_1D4E50004(v40, v41, v42);
        sub_1D4E58360();
        OUTLINED_FUNCTION_200();
        sub_1D4E58360();
      }

      else
      {
        OUTLINED_FUNCTION_189_0();
        OUTLINED_FUNCTION_10(&v18[v38]);
        if (v43)
        {
          (*v52)(v61, v8);
LABEL_34:
          sub_1D4E50004(v18, &qword_1EC7EB008, &qword_1D561DDC0);
LABEL_35:
          sub_1D4E58360();
          OUTLINED_FUNCTION_143();
          sub_1D4E58360();
          goto LABEL_36;
        }

        v44 = &v18[v38];
        v45 = v61;
        v46 = v58;
        (*v51)(v58, v44, v8);
        OUTLINED_FUNCTION_87_2();
        sub_1D4F0B28C(&qword_1EC7EB010, v47, MEMORY[0x1E6975B98]);
        OUTLINED_FUNCTION_132_1();
        v53 = sub_1D5614D18();
        v54 = v29;
        v48 = *v52;
        v49 = v46;
        v31 = v39;
        (*v52)(v49, v8);
        v48(v45, v8);
        v29 = v54;
        sub_1D4E50004(v18, &qword_1EC7EAFF8, v39);
        sub_1D4E58360();
        OUTLINED_FUNCTION_200();
        sub_1D4E58360();
        if ((v53 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v8 = v56;
      v29 += v55;
      v28 += v55;
      v26 = v63 - 1;
      if (v63 == 1)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_36:
    OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_1D4EFC494(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_29_4();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4EFC53C()
{
  OUTLINED_FUNCTION_54_5();
  if (v8 && v0 && v1 != v2)
  {
    v3 = (v2 + 48);
    v4 = (v1 + 48);
    while (v0)
    {
      v6 = *v4;
      v4 += 3;
      v5 = v6;
      v7 = *v3;
      v3 += 3;
      if ([v5 isEqual_])
      {
        v8 = v0 == 1;
      }

      else
      {
        v8 = 1;
      }

      --v0;
      if (v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

void MusicPersonalRecommendationsRequest.Content.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    MEMORY[0x1DA6EC0D0](1);
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1DA6EC0D0](v2);
  OUTLINED_FUNCTION_98();
  sub_1D4F08B38();
}

uint64_t MusicPersonalRecommendationsRequest.Content.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D56162D8();
  if (v2 == 1)
  {
    MEMORY[0x1DA6EC0D0](1);
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1DA6EC0D0](v3);
  sub_1D4F08B38();
  return sub_1D5616328();
}

uint64_t sub_1D4EFC6AC(uint64_t a1)
{
  sub_1D56162D8();
  MusicPersonalRecommendationsRequest.Content.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicPersonalRecommendationsRequest.extendedCatalogResponse(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D4EFC720, 0, 0);
}

uint64_t sub_1D4EFC720()
{
  OUTLINED_FUNCTION_60();
  if (sub_1D560E7C8())
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_1D4EFC820;

    return sub_1D4EFC900();
  }

  else
  {
    sub_1D560EA18();
    OUTLINED_FUNCTION_14();
    v3 = OUTLINED_FUNCTION_71();
    v4(v3);
    OUTLINED_FUNCTION_22_1();

    return v5();
  }
}

uint64_t sub_1D4EFC820()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4EFC900()
{
  OUTLINED_FUNCTION_60();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_1D560EA18();
  v1[15] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_127();
  v6 = sub_1D560BB98();
  v1[18] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[19] = v7;
  v1[20] = OUTLINED_FUNCTION_127();
  v8 = sub_1D560D348();
  v1[21] = v8;
  OUTLINED_FUNCTION_69(v8);
  v1[22] = v9;
  v1[23] = OUTLINED_FUNCTION_127();
  v10 = sub_1D560CD48();
  v1[24] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[25] = v11;
  v1[26] = OUTLINED_FUNCTION_167();
  v1[27] = swift_task_alloc();
  v12 = type metadata accessor for MusicRequestConfiguration(0);
  v1[28] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[29] = OUTLINED_FUNCTION_127();
  v13 = sub_1D560E8E8();
  v1[30] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[31] = v14;
  v1[32] = OUTLINED_FUNCTION_127();
  v15 = sub_1D560E408();
  v1[33] = v15;
  OUTLINED_FUNCTION_69(v15);
  v1[34] = v16;
  v1[35] = OUTLINED_FUNCTION_127();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABB0, &qword_1D561D760);
  v1[36] = v17;
  OUTLINED_FUNCTION_22(v17);
  v1[37] = OUTLINED_FUNCTION_127();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABB8, &qword_1D561D768);
  OUTLINED_FUNCTION_22(v18);
  v1[38] = OUTLINED_FUNCTION_167();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v19 = sub_1D560E438();
  v1[41] = v19;
  OUTLINED_FUNCTION_69(v19);
  v1[42] = v20;
  v1[43] = OUTLINED_FUNCTION_167();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB280, &qword_1D561DFB0);
  v1[46] = v21;
  OUTLINED_FUNCTION_22(v21);
  v1[47] = OUTLINED_FUNCTION_127();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB288, &qword_1D561DFB8);
  v1[48] = v22;
  OUTLINED_FUNCTION_69(v22);
  v1[49] = v23;
  v1[50] = OUTLINED_FUNCTION_167();
  v1[51] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB290, &qword_1D561DFC0);
  OUTLINED_FUNCTION_22(v24);
  v1[52] = OUTLINED_FUNCTION_167();
  v1[53] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABC8, &unk_1D561D770);
  OUTLINED_FUNCTION_22(v25);
  v1[54] = OUTLINED_FUNCTION_167();
  v1[55] = swift_task_alloc();
  v26 = sub_1D560E8A8();
  v1[56] = v26;
  OUTLINED_FUNCTION_69(v26);
  v1[57] = v27;
  v1[58] = OUTLINED_FUNCTION_167();
  v1[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EFCD90, 0, 0);
}

uint64_t sub_1D4EFCD90(uint64_t a1)
{
  v3 = v1[55];
  v2 = v1[56];
  sub_1D560E8B8();
  OUTLINED_FUNCTION_57(v3, 1, v2);
  if (v4)
  {
    sub_1D4E50004(v1[55], &qword_1EC7EABC8, &unk_1D561D770);
LABEL_19:
    (*(v1[16] + 16))(v1[12], v1[13], v1[15]);
    goto LABEL_31;
  }

  v5 = v1[57];
  v6 = *(v5 + 32);
  v6(v1[59], v1[55], v1[56]);
  sub_1D4EF4770();
  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_159();
  v7(v8);
  if (v120)
  {
    v9 = v119;
  }

  else
  {
    v9 = v118;
  }

  v10 = *(v9 + 16);
  sub_1D4F039B8(v118, v119, v120);
  if (!v10)
  {
    goto LABEL_19;
  }

  v100 = v7;
  v101 = v6;
  v11 = v1[46];
  v12 = v1[47];
  v13 = v1[42];
  v107 = v1[36];
  v108 = v1 + 2;
  v112 = v1;
  v14 = v1[34];
  sub_1D560E9F8();
  v15 = OUTLINED_FUNCTION_86_0();
  v16(v15);
  v1[60] = sub_1D4E62A60(&qword_1EC7EB298, &qword_1EC7EB288, &qword_1D561DFB8, MEMORY[0x1E6975008]);
  sub_1D5614F98();
  v109 = (v13 + 16);
  v110 = *(v11 + 36);
  v111 = (v13 + 32);
  v106 = *MEMORY[0x1E69752C0];
  v102 = (v14 + 32);
  v103 = (v14 + 8);
  v104 = (v13 + 8);
  v105 = (v14 + 104);
  sub_1D4E62A60(&qword_1EC7EB2A0, &qword_1EC7EB288, &qword_1D561DFB8, MEMORY[0x1E6975020]);
  while (1)
  {
    sub_1D5615648();
    if (*(v12 + v110) == v1[10])
    {
      v52 = v1[49];
      sub_1D4E50004(v1[47], &qword_1EC7EB280, &qword_1D561DFB0);
      v53 = *(v52 + 8);
      v54 = OUTLINED_FUNCTION_159();
      v53(v54);
      goto LABEL_22;
    }

    v17 = v1[45];
    v18 = v1[39];
    v113 = v1[37];
    v115 = v1[33];
    v19 = sub_1D5615688();
    (*v109)(v17);
    v19(v108, 0);
    v1 = v112;
    sub_1D5615658();
    v20 = *v111;
    v21 = OUTLINED_FUNCTION_220();
    v20(v21);
    sub_1D560E418();
    (*v105)(v18, v106, v115);
    OUTLINED_FUNCTION_219();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = *(v107 + 48);
    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_193();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v113, 1, v115);
    v28 = v112[33];
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    OUTLINED_FUNCTION_193();
    v35 = __swift_getEnumTagSinglePayload(v113 + v26, 1, v28);
    v36 = v112[39];
    if (v35 == 1)
    {
      OUTLINED_FUNCTION_131_1();
      sub_1D4E50004(v37, v38, v39);
      v40 = OUTLINED_FUNCTION_85_0();
      sub_1D4E50004(v40, v41, &qword_1D561D768);
      v42 = OUTLINED_FUNCTION_175();
      v43(v42);
LABEL_16:
      sub_1D4E50004(v112[37], &qword_1EC7EABB0, &qword_1D561D760);
      goto LABEL_18;
    }

    v116 = v112[37];
    v44 = v112[35];
    v45 = v112[33];
    (*v102)(v44, v113 + v26, v45);
    OUTLINED_FUNCTION_89_4();
    sub_1D4F0B28C(&qword_1EC7EABC0, v46, MEMORY[0x1E69752F0]);
    OUTLINED_FUNCTION_216();
    v47 = sub_1D5614D18();
    v48 = *v103;
    (*v103)(v44, v45);
    sub_1D4E50004(v36, &qword_1EC7EABB8, &qword_1D561D768);
    v49 = OUTLINED_FUNCTION_85_0();
    sub_1D4E50004(v49, v50, &qword_1D561D768);
    v51 = OUTLINED_FUNCTION_175();
    v48(v51);
    sub_1D4E50004(v116, &qword_1EC7EABB8, &qword_1D561D768);
    if (v47)
    {
      goto LABEL_21;
    }

LABEL_18:
    (*v104)(v112[44], v112[41]);
  }

  OUTLINED_FUNCTION_131_1();
  sub_1D4E50004(v29, v30, v31);
  OUTLINED_FUNCTION_131_1();
  sub_1D4E50004(v32, v33, v34);
  OUTLINED_FUNCTION_10(v113 + v26);
  if (!v4)
  {
    goto LABEL_16;
  }

  sub_1D4E50004(v112[37], &qword_1EC7EABB8, &qword_1D561D768);
LABEL_21:
  v55 = v112[49];
  sub_1D4E50004(v112[47], &qword_1EC7EB280, &qword_1D561DFB0);
  v53 = *(v55 + 8);
  v56 = OUTLINED_FUNCTION_143();
  v53(v56);
  v57 = OUTLINED_FUNCTION_222();
  v20(v57);
LABEL_22:
  v1[61] = v53;
  v58 = v1 + 53;
  v59 = v1[41];
  OUTLINED_FUNCTION_218();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  OUTLINED_FUNCTION_68_4();
  sub_1D4F0AE7C();
  v64 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v64, v65, v59);
  if (v4)
  {
    sub_1D4E50004(*v58, &qword_1EC7EB290, &qword_1D561DFC0);
    v58 = v1 + 52;
  }

  else
  {
    (*v111)(v1[43], v1[52], v1[41]);
    v66 = sub_1D5292554();
    if (v66)
    {
      v114 = v1[54];
      v117 = v1[56];
      v67 = v1[42];
      v68 = v1[43];
      v69 = v1[41];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2A8, &qword_1D561DFC8);
      v70 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1D561C050;
      (*v109)(v71 + v70, v68, v69);
      v1[11] = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2B0, &qword_1D561DFD0);
      sub_1D4E62A60(&qword_1EC7EB2B8, &qword_1EC7EB2B0, &qword_1D561DFD0, MEMORY[0x1E69E6328]);
      sub_1D560E7D8();
      MusicPersonalRecommendationsRequest.configuration.getter();
      OUTLINED_FUNCTION_12_14();
      sub_1D4F0B28C(v72, v73, &protocol conformance descriptor for MusicRequestConfiguration);
      sub_1D560E6C8();
      v74 = OUTLINED_FUNCTION_217();
      v75(v74);
      sub_1D560E7F8();
      v76 = OUTLINED_FUNCTION_215();
      v77(v76);
      OUTLINED_FUNCTION_33_12();
      sub_1D4E58360();
      sub_1D560E8B8();
      OUTLINED_FUNCTION_57(v114, 1, v117);
      if (v4)
      {
        sub_1D4E50004(v112[54], &qword_1EC7EABC8, &unk_1D561D770);
      }

      else
      {
        v85 = v112[58];
        v86 = v112[56];
        v101(v85, v112[54], v86);
        sub_1D4EF4770();
        v100(v85, v86);
      }

      v88 = v112[22];
      v87 = v112[23];
      v89 = v112[20];
      v90 = v112[21];
      v91 = v112[18];
      v92 = v112[19];
      MusicPersonalRecommendationsRequest.content.setter();
      (*(v88 + 104))(v87, *MEMORY[0x1E6974E80], v90);
      sub_1D560E7B8();
      sub_1D560BB28();
      v93 = sub_1D560E838();
      v95 = v94;
      sub_1D4EFF664(sub_1D4EFFE00);
      v96 = *(*v95 + 16);
      sub_1D4EFF89C(v96, sub_1D4EFFE00);
      v97 = *v95;
      *(v97 + 16) = v96 + 1;
      (*(v92 + 32))(v97 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v96, v89, v91);
      v93(v112 + 6, 0);
      v98 = swift_task_alloc();
      v112[62] = v98;
      *v98 = v112;
      v98[1] = sub_1D4EFD93C;
      v99 = v112[17];

      return MEMORY[0x1EEDCF030](v99);
    }

    (*v104)(v1[43], v1[41]);
  }

  v78 = *v58;
  v79 = v1[15];
  v80 = v1[16];
  v81 = v1[12];
  v82 = v1[13];
  sub_1D4E50004(v78, &qword_1EC7EB290, &qword_1D561DFC0);
  (*(v80 + 16))(v81, v82, v79);
LABEL_31:

  OUTLINED_FUNCTION_22_1();

  return v83();
}

uint64_t sub_1D4EFD93C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 504) = v0;

  if (v0)
  {
    v5 = sub_1D4EFDCAC;
  }

  else
  {
    v5 = sub_1D4EFDA40;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D4EFDA40(uint64_t a1)
{
  v15 = v1[53];
  v2 = v1[42];
  v14 = v1[43];
  v3 = v1[31];
  v12 = v1[32];
  v13 = v1[41];
  v11 = v1[30];
  v4 = v1[16];
  v5 = v1[17];
  v10 = v1[15];
  sub_1D560E9F8();
  OUTLINED_FUNCTION_85_0();
  sub_1D560EA08();
  v6 = OUTLINED_FUNCTION_85_0();
  v7(v6);
  (*(v4 + 8))(v5, v10);
  (*(v3 + 8))(v12, v11);
  (*(v2 + 8))(v14, v13);
  sub_1D4E50004(v15, &qword_1EC7EB290, &qword_1D561DFC0);

  OUTLINED_FUNCTION_22_1();

  return v8();
}

uint64_t sub_1D4EFDCAC()
{
  v1 = v0[53];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v2 = OUTLINED_FUNCTION_109();
  v3(v2);
  sub_1D4E50004(v1, &qword_1EC7EB290, &qword_1D561DFC0);

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D4EFDE8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4E73560;

  return MusicPersonalRecommendationsRequest.extendedCatalogResponse(for:)(a1, a2);
}

uint64_t MusicPersonalRecommendationsRequest.additionalInvalidators.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABE0, &qword_1D561D7E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C050;
  _s25RecentlyPlayedInvalidatorCMa();
  swift_allocObject();
  v1 = sub_1D535CE84();
  v2 = sub_1D4F0B28C(&qword_1EC7EABE8, _s25RecentlyPlayedInvalidatorCMa, &unk_1D5656854);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t MusicPersonalRecommendationsRequest.invalidationResult(for:previousResponse:)()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABF0, &qword_1D561D7F0);
  OUTLINED_FUNCTION_22(v4);
  v1[5] = OUTLINED_FUNCTION_127();
  v5 = sub_1D560EA18();
  v1[6] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_167();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4EFE0DC, 0, 0);
}

uint64_t sub_1D4EFE0DC()
{
  v1 = v0[5];
  sub_1D4F0AE7C();
  OUTLINED_FUNCTION_10(v1);
  if (v2)
  {
    sub_1D4E50004(v0[5], &qword_1EC7EABF0, &qword_1D561D7F0);
    __swift_storeEnumTagSinglePayload(v0[2], 1, 1, v0[6]);

    OUTLINED_FUNCTION_22_1();

    return v3();
  }

  else
  {
    v5 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[5];
    v9 = *(v7 + 32);
    v0[10] = v9;
    v0[11] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(v5, v8, v6);
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_1D4EFE248;

    return sub_1D4EFC900();
  }
}

uint64_t sub_1D4EFE248()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 104) = v0;

  if (v0)
  {
    v5 = sub_1D4EFE410;
  }

  else
  {
    v5 = sub_1D4EFE34C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D4EFE34C()
{
  v1 = v0[10];
  (*(v0[7] + 8))(v0[9], v0[6]);
  v2 = OUTLINED_FUNCTION_63_1();
  v1(v2);
  __swift_storeEnumTagSinglePayload(v0[2], 0, 1, v0[6]);

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D4EFE410()
{
  (*(v0[7] + 8))(v0[9], v0[6]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D4EFE4C0()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1D4E73560;

  return MEMORY[0x1EEDCF088](v2);
}

uint64_t sub_1D4EFE558()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E6ED20;

  return MusicPersonalRecommendationsRequest.invalidationResult(for:previousResponse:)();
}

void sub_1D4EFE600()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = sub_1D560E898();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v28 = v5;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_162_0();
  v9 = *(v2 + 16);
  if (v9)
  {
    v10 = (v2 + 32);
    v25 = *MEMORY[0x1E69753A0];
    v27 = *(v8 + 104);
    v24 = *MEMORY[0x1E6975388];
    v23 = *MEMORY[0x1E6975398];
    v26 = *MEMORY[0x1E6975390];
    v11 = (v8 + 32);
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      v13 = *v10++;
      v14 = v26;
      switch(v13)
      {
        case 1:
          v14 = v23;
          break;
        case 2:
          v14 = v24;
          break;
        case 3:
          v14 = v25;
          break;
        default:
          break;
      }

      v27(v28, v14, v3);
      v15 = *v11;
      v16 = OUTLINED_FUNCTION_61();
      v15(v16);
      v17 = OUTLINED_FUNCTION_75_2();
      v15(v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1D4EFFEFC(0, *(v12 + 16) + 1, 1, v12);
      }

      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        v22 = OUTLINED_FUNCTION_93_1(v18);
        v12 = sub_1D4EFFEFC(v22, v19 + 1, 1, v12);
      }

      *(v12 + 16) = v19 + 1;
      OUTLINED_FUNCTION_43_3();
      (v15)(v12 + v20 + *(v21 + 72) * v19, v0, v3);
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4EFE864(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D4EFE884(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D4EFE8A8()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v2 == *(v1 + 16))
  {
    return 0;
  }

  result = sub_1D52403F8(v0[3], v1);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v0[3] = v2 + 1;
    v6 = v0[4];
    v8[0] = result;
    v8[1] = v4;
    v9 = v5 & 1;
    v6(&v7, v8);

    return v7;
  }

  return result;
}

void sub_1D4EFE934()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_41_6();
  v6 = type metadata accessor for GenericMusicItem(v5);
  v7 = OUTLINED_FUNCTION_69(v6);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_11();
  v9 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v10 = OUTLINED_FUNCTION_69(v9);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB218, &unk_1D561F360);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = *v0;
  v18 = v0[1];
  v19 = v0[2];
  v20 = v0[3];
  v21 = v0[4];
  v43 = v19;
  v44 = v3;
  v39 = v1;
  if (v21)
  {
LABEL_7:
    v40 = (v21 - 1) & v21;
    sub_1D4F0B238();
    sub_1D4F0B238();
    v24 = v45;
    OUTLINED_FUNCTION_130();
    sub_1D4F0AECC();
    sub_1D4F0AECC();
    v22 = v24;
    v25 = v40;
    v26 = 0;
LABEL_8:
    v27 = 1;
    v28 = v22;
    __swift_storeEnumTagSinglePayload(v16, v26, 1, v22);
    *v0 = v17;
    v0[1] = v18;
    v0[2] = v43;
    v0[3] = v20;
    v0[4] = v25;
    v29 = v0[5];
    OUTLINED_FUNCTION_132_1();
    sub_1D4F0AB3C();
    v30 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_57(v30, v31, v28);
    v32 = v44;
    if (!v33)
    {
      v34 = v39;
      sub_1D4F0AB3C();
      v29(v34);
      v35 = OUTLINED_FUNCTION_75_2();
      sub_1D4E50004(v35, v36, &unk_1D561DF60);
      v27 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB220, &qword_1D561DF70);
    __swift_storeEnumTagSinglePayload(v32, v27, 1, v37);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v22 = v45;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= ((v19 + 64) >> 6))
      {
        v25 = 0;
        v26 = 1;
        goto LABEL_8;
      }

      v21 = *(v18 + 8 * v23);
      ++v20;
      if (v21)
      {
        v20 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D4EFECA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    *result = a4;
    *(result + 8) = a5 & 1;
    *(result + 16) = a6;
    *(result + 24) = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = *(a6 + 16);
    while (v7 != v6)
    {
      *(a2 + 8 * v6) = *(a6 + 32 + 8 * v6);
      if (a3 == ++v6)
      {
        goto LABEL_10;
      }
    }

    a3 = v7;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *sub_1D4EFED04(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  if (!a2)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v9 = a3;
  if (!a3)
  {
LABEL_12:
    *result = v4;
    result[1] = v5;
    result[2] = v7;
    result[3] = v9;
    result[4] = v6;
    result[5] = v8;
    return v9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v17 = v5;
    v18 = v4;
    v19 = result;
    v11 = 0;
    v12 = *(v7 + 16);
    v13 = (v7 + 48);
    while (1)
    {
      if (v12 == v11)
      {
        v9 = v12;
LABEL_11:
        v4 = v18;
        result = v19;
        v5 = v17;
        goto LABEL_12;
      }

      if (v11 >= *(v7 + 16))
      {
        break;
      }

      v15 = *(v13 - 2);
      v14 = *(v13 - 1);
      v16 = *v13;
      v13 += 24;
      v21[0] = v15;
      v21[1] = v14;
      v22 = v16;

      v6(&v20, v21);

      *(a2 + 8 * v11++) = v20;
      if (v9 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D4EFEE08()
{
  OUTLINED_FUNCTION_47();
  v4 = v3 + 64;
  OUTLINED_FUNCTION_127_1();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_168_0(v8);
    OUTLINED_FUNCTION_46();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_151_1();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v2)
          {
            goto LABEL_17;
          }

          v1 = *(v4 + 8 * v11);
          ++v8;
          if (v1)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      OUTLINED_FUNCTION_194();
      OUTLINED_FUNCTION_169(v12);
      if (v13)
      {

        v8 = v11;
        goto LABEL_17;
      }

      v0 += 8;

      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1D4EFEEF8(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D4EFEFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_119_2();
  v8 = v7;
  v10 = v9;
  if (!v3)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v11 = v4;
  if (!v4)
  {
LABEL_12:
    *v10 = v5;
    v10[1] = v6;
    v10[2] = v8;
    v10[3] = v11;
    OUTLINED_FUNCTION_118_2();
    return;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v12 = v3;
    v21 = v5;
    v22 = v6;
    v13 = 0;
    v14 = *(v7 + 16);
    v15 = v4 - 1;
    while (1)
    {
      if (v14 == v13)
      {
        v11 = v14;
LABEL_11:
        v5 = v21;
        v6 = v22;
        goto LABEL_12;
      }

      if (v13 >= *(v8 + 16))
      {
        break;
      }

      v16 = OUTLINED_FUNCTION_97_1();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
      OUTLINED_FUNCTION_69(v18);
      v20 = *(v19 + 72);
      sub_1D4F0AE7C();
      if (v15 == v13)
      {
        goto LABEL_11;
      }

      v12 += v20;
      ++v13;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1D4EFF0F4()
{
  OUTLINED_FUNCTION_47();
  v4 = v3 + 56;
  OUTLINED_FUNCTION_127_1();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_168_0(v8);
    OUTLINED_FUNCTION_46();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_151_1();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v2)
          {
            goto LABEL_17;
          }

          v1 = *(v4 + 8 * v11);
          ++v8;
          if (v1)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      OUTLINED_FUNCTION_194();
      OUTLINED_FUNCTION_169(v12);
      if (v13)
      {

        v8 = v11;
        goto LABEL_17;
      }

      v0 += 8;

      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D4EFF20C()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_111_2();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4EFF24C()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_111_2();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4EFF2C8(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_111_2();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1D4EFF328(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  swift_arrayDestroy();
  v1 = OUTLINED_FUNCTION_111_2();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1D4EFF3C8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

void sub_1D4EFF488()
{
  OUTLINED_FUNCTION_172_0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native)
  {
    OUTLINED_FUNCTION_218();
    sub_1D4F02378(v3);
    *v1 = v4;
  }
}

void sub_1D4EFF4EC()
{
  OUTLINED_FUNCTION_172_0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native)
  {
    OUTLINED_FUNCTION_218();
    sub_1D4F00994();
    *v1 = v3;
  }
}

void sub_1D4EFF5A0()
{
  OUTLINED_FUNCTION_172_0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native)
  {
    OUTLINED_FUNCTION_218();
    sub_1D4F0262C(v3);
    *v1 = v4;
  }
}

uint64_t sub_1D4EFF664(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_1D4EFF6F0()
{
  OUTLINED_FUNCTION_115_2();
  if (!(v3 ^ v4 | v2))
  {
    sub_1D4F02378(v1 > 1);
    *v0 = v5;
  }
}

void sub_1D4EFF744()
{
  OUTLINED_FUNCTION_115_2();
  if (!(v2 ^ v3 | v1))
  {
    sub_1D4F00994();
    *v0 = v4;
  }
}

void sub_1D4EFF7E8()
{
  OUTLINED_FUNCTION_115_2();
  if (!(v3 ^ v4 | v2))
  {
    sub_1D4F0262C(v1 > 1);
    *v0 = v5;
  }
}

uint64_t sub_1D4EFF89C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1D4EFF8E4()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
    v8 = OUTLINED_FUNCTION_125_0(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_13_13();
    v8[2] = v2;
    v8[3] = v9;
  }

  OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_177_0();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4EFF9AC()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAEB8, &qword_1D561DC88);
  OUTLINED_FUNCTION_46_7();
  sub_1D5610A58();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E6975F00]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4EFFA84()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD78, &qword_1D561DB60);
  OUTLINED_FUNCTION_46_7();
  sub_1D5613C48();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E6976DC8]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4EFFB5C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB178, &qword_1D561DEF8);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for VideoCredit(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for VideoCredit);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4EFFC34()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB300, &unk_1D561E010);
  OUTLINED_FUNCTION_46_7();
  sub_1D5613528();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E6976A48]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4EFFD28()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB240, &qword_1D561DF98);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for VideoOffer(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for VideoOffer);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4EFFE00()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB2D8, &unk_1D561DFF0);
  OUTLINED_FUNCTION_46_7();
  sub_1D560BB98();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E6968178]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

uint64_t sub_1D4EFFED8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D4EFFEF0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D4EFFEFC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  sub_1D4F03614(v9, a2, &qword_1EC7EB2C8, &qword_1D561DFE0, MEMORY[0x1E69753A8]);
  v11 = v10;
  v12 = *(sub_1D560E898() - 8);
  if (v6)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_1D4F038C4(a4 + v13, v9, v11 + v13, MEMORY[0x1E69753A8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_1D4F00044()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB278, &qword_1D561DFA8);
    v8 = OUTLINED_FUNCTION_233(v7);
    OUTLINED_FUNCTION_94_1(v8);
  }

  v9 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_212();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_1D4F000F8()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAE78, &qword_1D56351B0);
  OUTLINED_FUNCTION_46_7();
  sub_1D5612478();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E6976480]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F001D0()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF38, &qword_1D561DCF8);
    v8 = OUTLINED_FUNCTION_136_1(v7);
    OUTLINED_FUNCTION_42_7(v8);
    OUTLINED_FUNCTION_40_9(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v3 != v0 || &v11[32 * v2] <= v10)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F0029C()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_31_11();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC48, &unk_1D561DA60);
    v8 = OUTLINED_FUNCTION_91_1(v7);
    OUTLINED_FUNCTION_23_12(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v2 != v0 || &v10[80 * v3] <= v9)
    {
      memmove(v9, v10, 80 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F0036C()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC50, &qword_1D5648640);
    v8 = OUTLINED_FUNCTION_149(v7);
    OUTLINED_FUNCTION_30_4(v8);
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v8 != v0 || &v11[88 * v2] <= v10)
    {
      memmove(v10, v11, 88 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F00444()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB0B0, &qword_1D561DE60);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for VideoArtwork.FileAsset(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for VideoArtwork.FileAsset);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F00554()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD00, &qword_1D561DAE8);
  OUTLINED_FUNCTION_46_7();
  sub_1D560D838();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E6974F58]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F0065C()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_31_11();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB1E8, &qword_1D561DF30);
    v8 = OUTLINED_FUNCTION_91_1(v7);
    OUTLINED_FUNCTION_23_12(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v2 != v0 || &v10[24 * v3] <= v9)
    {
      memmove(v9, v10, 24 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 24 * v3);
  }
}

void sub_1D4F0072C()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_31_11();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFE0, &qword_1D561DDA0);
    v8 = OUTLINED_FUNCTION_91_1(v7);
    OUTLINED_FUNCTION_23_12(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_108_3();
  v11 = 24 * v3;
  if (v1)
  {
    if (v2 != v0 || &v10[v11] <= v9)
    {
      memmove(v9, v10, v11);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, v11);
  }
}

void sub_1D4F007F0()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB0B8, &qword_1D561DE68);
  OUTLINED_FUNCTION_46_7();
  sub_1D560F148();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E69755E8]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F008DC()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v13 = OUTLINED_FUNCTION_139_2(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_233(v13);
    OUTLINED_FUNCTION_94_1(v14);
  }

  v15 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_212();
    if (v20)
    {
      v21 = v19 > v17;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      memmove(v17, v18, v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, v2);
  }
}

void sub_1D4F00994()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_31_11();
  if (v2)
  {
    v13 = OUTLINED_FUNCTION_139_2(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_136_1(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_60_2();
    v14[2] = v3;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v14 != v0 || &v17[8 * v3] <= v16)
    {
      memmove(v16, v17, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v16, v17, 8 * v3);
  }
}

char *sub_1D4F00A4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADB0, &qword_1D561DBA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_1D4F00B4C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD88, &qword_1D561DB70);
  OUTLINED_FUNCTION_46_7();
  sub_1D5614828();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E6977318]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F00C24()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB130, &qword_1D561DED0);
  OUTLINED_FUNCTION_46_7();
  sub_1D560F548();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E6975710]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F00D10()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_31_11();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD30, &qword_1D561DB18);
    v8 = OUTLINED_FUNCTION_136_1(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_13_13();
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v3] <= v10)
    {
      memmove(v10, v11, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 16 * v3);
  }
}

void sub_1D4F00DEC()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFB8, &qword_1D561DD78);
    v8 = OUTLINED_FUNCTION_136_1(v7);
    OUTLINED_FUNCTION_42_7(v8);
    OUTLINED_FUNCTION_40_9(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 8 * v2 <= (v3 + 32))
    {
      v11 = OUTLINED_FUNCTION_85_0();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFC0, &qword_1D561DD80);
    OUTLINED_FUNCTION_85_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F00EDC()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAFB0, &qword_1D561DD70);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for MusicDownloadedSongCatalogProperties(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for MusicDownloadedSongCatalogProperties);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F00FB4()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_31_11();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF68, &qword_1D561DD28);
    v8 = OUTLINED_FUNCTION_91_1(v7);
    OUTLINED_FUNCTION_23_12(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v2 != v0 || v0 + 32 + 24 * v3 <= (v2 + 32))
    {
      v10 = OUTLINED_FUNCTION_85_0();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF60, &qword_1D561DD20);
    OUTLINED_FUNCTION_85_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F010BC()
{
  OUTLINED_FUNCTION_157_2();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_48_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = OUTLINED_FUNCTION_139_2(v2, v3, v4, v5, v6, v7);
    v14 = OUTLINED_FUNCTION_136_1(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_13_13();
    *(v14 + 2) = v11;
    *(v14 + 3) = v15;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = v0 + 32;
  if (v1)
  {
    if (v14 != v0 || &v17[16 * v11] <= v16)
    {
      memmove(v16, v17, 16 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F0118C()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_31_11();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF80, &qword_1D561DD40);
    v8 = OUTLINED_FUNCTION_91_1(v7);
    OUTLINED_FUNCTION_23_12(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v2 != v0 || &v10[48 * v3] <= v9)
    {
      memmove(v9, v10, 48 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F0125C()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_31_11();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF88, &qword_1D561DD48);
    v8 = OUTLINED_FUNCTION_91_1(v7);
    OUTLINED_FUNCTION_23_12(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v2 != v0 || v0 + 32 + 48 * v3 <= (v2 + 32))
    {
      v10 = OUTLINED_FUNCTION_85_0();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF90, &qword_1D561DD50);
    OUTLINED_FUNCTION_85_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F0136C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD68, &qword_1D561DB50);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for GenericMusicItem(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for GenericMusicItem);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F01444()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB0D0, &unk_1D561DE80);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for MusicSearchResultGroup(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for MusicSearchResultGroup);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F0151C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAED0, &qword_1D561DCA0);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

uint64_t sub_1D4F015F4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  sub_1D4F03614(v9, a2, &qword_1EC7EAD98, &qword_1D561DB80, type metadata accessor for MusicSuggestedPivotRound);
  v11 = v10;
  v12 = *(type metadata accessor for MusicSuggestedPivotRound(0) - 8);
  if (v6)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_1D4F038C4(a4 + v13, v9, v11 + v13, type metadata accessor for MusicSuggestedPivotRound);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_1D4F01718()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD80, &qword_1D561DB68);
  OUTLINED_FUNCTION_46_7();
  sub_1D5613D28();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E6976E60]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F017F0()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAF08, &qword_1D561DCD8);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for TVEpisode(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for TVEpisode);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F018C8()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD90, &qword_1D561DB78);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for TVSeason(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for TVSeason);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F019A0()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB228, &qword_1D561DF78);
    v8 = OUTLINED_FUNCTION_125_0(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_13_13();
    v8[2] = v2;
    v8[3] = v9;
  }

  OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_177_0();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F01A68()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB098, &qword_1D561DE48);
    v8 = OUTLINED_FUNCTION_149(v7);
    OUTLINED_FUNCTION_30_4(v8);
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v8 != v0 || &v11[56 * v2] <= v10)
    {
      memmove(v10, v11, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F01B44()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD70, &qword_1D561DB58);
  v8 = OUTLINED_FUNCTION_46_7();
  _s14TransientEntryVMa(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, _s14TransientEntryVMa);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F01C40()
{
  OUTLINED_FUNCTION_37_10();
  if (v5)
  {
    OUTLINED_FUNCTION_15_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = *(v0 + 16);
  sub_1D4F034C0(v9, v6, v3, v4);
  v11 = v10;
  v12 = OUTLINED_FUNCTION_63_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    sub_1D4F037E4(v0 + v14, v9, v11 + v14);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F01D40()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_31_11();
  if (v2)
  {
    v13 = OUTLINED_FUNCTION_139_2(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_136_1(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_13_13();
    v14[2] = v3;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v14 != v0 || &v17[16 * v3] <= v16)
    {
      memmove(v16, v17, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v16, v17, 16 * v3);
  }
}

void sub_1D4F01DF8()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD58, &qword_1D561DB40);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for MusicRecentlySearchedViewModel.Entry(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F01ED0()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EB090, &qword_1D561DE40);
  v8 = OUTLINED_FUNCTION_46_7();
  _s15PersistentEntryVMa(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, _s15PersistentEntryVMa);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F01FBC()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAE08, &qword_1D561DC00);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for MusicLibraryPlaylistViewModel.Delta(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for MusicLibraryPlaylistViewModel.Delta);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02094()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAF48, &qword_1D561DD08);
  v8 = OUTLINED_FUNCTION_46_7();
  _s10DescriptorVMa(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, _s10DescriptorVMa);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02190()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD50, &qword_1D561DB38);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for MusicPin(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for MusicPin);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02268()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAEE8, &qword_1D561DCB8);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02378(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_37_10();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v5 ^ v6 | v14)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    v16 = OUTLINED_FUNCTION_139_2(v7, v8, v9, v10, v11, v12);
    v17 = OUTLINED_FUNCTION_226(v16);
    v18 = _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_105_1(v18 - 32);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v2)
  {
    if (v17 != v1 || &v1[40 * v3 + 32] <= v17 + 32)
    {
      v20 = OUTLINED_FUNCTION_97_1();
      memmove(v20, v21, v22);
    }

    *(v1 + 2) = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_63_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_97_1();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F02458()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7F2C20, &qword_1D561DC20);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for MusicPlaybackIntent(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for MusicPlaybackIntent);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02530()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7F2AE0, &unk_1D561DBC0);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for InternalMusicPlayer.Queue.Entry(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for InternalMusicPlayer.Queue.Entry);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F0262C(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_37_10();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v5 ^ v6 | v14)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    v16 = OUTLINED_FUNCTION_139_2(v7, v8, v9, v10, v11, v12);
    v17 = OUTLINED_FUNCTION_136_1(v16);
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_13_13();
    v17[2] = v3;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v2)
  {
    if (v17 != v1 || &v1[2 * v3 + 4] <= v17 + 4)
    {
      v20 = OUTLINED_FUNCTION_97_1();
      memmove(v20, v21, v22);
    }

    v1[2] = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_63_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_97_1();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F0271C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EACE0, &qword_1D561DAC0);
  OUTLINED_FUNCTION_46_7();
  sub_1D5613838();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E6976BE8]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02810()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF30, &qword_1D561DCF0);
    v8 = OUTLINED_FUNCTION_125_0(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_13_13();
    v8[2] = v2;
    v8[3] = v9;
  }

  OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_177_0();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F028D8()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAF00, &qword_1D561DCD0);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for Playlist.Folder.Item(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for Playlist.Folder.Item);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F029B0()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAEF8, &qword_1D561DCC8);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for MusicMovie(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for MusicMovie);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02A88()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAEF0, &qword_1D561DCC0);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for Composer(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for Composer);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F02B74()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE10, &qword_1D561DC08);
    v8 = OUTLINED_FUNCTION_125_0(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_13_13();
    v8[2] = v2;
    v8[3] = v9;
  }

  OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_177_0();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F02C3C()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EAD60, &qword_1D561DB48);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for MusicItemTypedIdentifier(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for MusicItemTypedIdentifier);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

char *sub_1D4F02D14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE00, &qword_1D561DBF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D4F02E2C()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
    v8 = OUTLINED_FUNCTION_136_1(v7);
    OUTLINED_FUNCTION_42_7(v8);
    OUTLINED_FUNCTION_40_9(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v3 != v0 || &v11[32 * v2] <= v10)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F02EFC()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7EACE8, &qword_1D561DAC8);
  v8 = OUTLINED_FUNCTION_46_7();
  type metadata accessor for MusicSuggestedSongsEntry(v8);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v9, type metadata accessor for MusicSuggestedSongsEntry);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

uint64_t sub_1D4F02FD4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  sub_1D4F03614(v9, a2, &qword_1EC7EABD0, &unk_1D561F430, MEMORY[0x1E6975BC8]);
  v11 = v10;
  v12 = *(sub_1D5610088() - 8);
  if (v6)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_1D4F038C4(a4 + v13, v9, v11 + v13, MEMORY[0x1E6975BC8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_1D4F030F8()
{
  OUTLINED_FUNCTION_18_7();
  if (v4)
  {
    OUTLINED_FUNCTION_17_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_50_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_16_12();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_120_1(v2, v5, &qword_1EC7F0170, &unk_1D5634640);
  OUTLINED_FUNCTION_46_7();
  sub_1D560DB08();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    OUTLINED_FUNCTION_44_4(v8, MEMORY[0x1E6975070]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
  }
}

void sub_1D4F031EC()
{
  OUTLINED_FUNCTION_157_2();
  if (v3)
  {
    OUTLINED_FUNCTION_15_13();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_48_4();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_139_2(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    OUTLINED_FUNCTION_42_7(v15);
    *(v14 + 16) = v2;
    *(v14 + 24) = 2 * (v16 / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v14 != v0 || &v18[24 * v2] <= v17)
    {
      memmove(v17, v18, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F032C4()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFA0, &qword_1D561DD60);
    v8 = OUTLINED_FUNCTION_149(v7);
    OUTLINED_FUNCTION_30_4(v8);
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v8 != v0 || &v11[40 * v2] <= v10)
    {
      memmove(v10, v11, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1D4F033B4(uint64_t a1, uint64_t a2)
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

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v5 = OUTLINED_FUNCTION_136_1(v4);
  v6 = _swift_stdlib_malloc_size(v5);
  v5[2] = a1;
  v5[3] = (2 * ((v6 - 32) / 8)) | 1;
  return v5;
}

void *sub_1D4F0342C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE70, &unk_1D561DC60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_1D4F034C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
    v6 = OUTLINED_FUNCTION_63_1();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_69(v8);
    v10 = *(v9 + 72);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    if (v10)
    {
      OUTLINED_FUNCTION_199();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        v11[2] = a1;
        v11[3] = 2 * (v12 / v10);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void *sub_1D4F035BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
  v7 = OUTLINED_FUNCTION_136_1(v6);
  _swift_stdlib_malloc_size(v7);
  OUTLINED_FUNCTION_60_2();
  v7[2] = a1;
  v7[3] = v8;
  return v7;
}

void sub_1D4F03614(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (v5)
  {
    OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
    v8 = OUTLINED_FUNCTION_46_7();
    v9 = a5(v8);
    OUTLINED_FUNCTION_69(v9);
    v11 = *(v10 + 72);
    v12 = swift_allocObject();
    _swift_stdlib_malloc_size(v12);
    if (v11)
    {
      OUTLINED_FUNCTION_199();
      v14 = v14 && v11 == -1;
      if (!v14)
      {
        v12[2] = a1;
        v12[3] = 2 * (v13 / v11);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

char *sub_1D4F036F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_6_13(a3, result);
  }

  return result;
}

char *sub_1D4F03718(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_6_13(a3, result);
  }

  return result;
}

void sub_1D4F037E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_69_0();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_75_2(), __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), OUTLINED_FUNCTION_14(), v4 + *(v10 + 72) * v3 <= a3))
  {
    v11 = OUTLINED_FUNCTION_75_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_59_3();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_59_3();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1D4F038C4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_69_0();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_14(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_59_3();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_59_3();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1D4F039A0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D4F039B8(result, a2, a3 & 1);
  }

  return result;
}

char *sub_1D4F03A1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D4F04C04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D4F03A3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D4F04D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D4F03B0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D4F04F88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D4F03BD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D4F0518C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D4F03E8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D4F05404(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D4F03EAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D4F0551C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D4F03ECC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D4F0561C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D4F04504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_138_2();
  sub_1D4F04E34();
  *v3 = v4;
}

void sub_1D4F045CC()
{
  OUTLINED_FUNCTION_137_1();
  sub_1D4F04E34();
  *v0 = v1;
}

char *sub_1D4F04914(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D4F05968(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D4F04A6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D4F05B24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D4F04ACC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D4F05C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D4F04B3C()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
    v8 = OUTLINED_FUNCTION_125_0(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_13_13();
    v8[2] = v2;
    v8[3] = v9;
  }

  OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_177_0();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1D4F04C04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB238, &qword_1D561DF90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D4F04D1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB128, &qword_1D561DEC8);
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
    if (v10 != a4 || &v13[48 * v8] <= v12)
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

void sub_1D4F04E34()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (v9)
  {
    OUTLINED_FUNCTION_15_13();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_48_4();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v10 ^ v11 | v25)
  {
    v19 = v0;
  }

  else
  {
    v19 = v18;
  }

  if (!v19)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_139_2(v12, v13, v14, v15, v16, v17);
  v20 = v4(0);
  OUTLINED_FUNCTION_69(v20);
  v22 = *(v21 + 72);
  v23 = OUTLINED_FUNCTION_166_0();
  _swift_stdlib_malloc_size(v23);
  if (!v22)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_199();
  v25 = v25 && v22 == -1;
  if (v25)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_105_1(v24);
LABEL_17:
  v4(0);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v8)
  {
    sub_1D4F038C4(v6 + v26, v0, v23 + v26, v2);
    *(v6 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_229();
  }

  OUTLINED_FUNCTION_46();
}

char *sub_1D4F04F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB180, &qword_1D561DF00);
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
    if (v10 != a4 || &v13[48 * v8] <= v12)
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

void sub_1D4F050A0()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_31_11();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACC8, &qword_1D561DAA0);
    v8 = OUTLINED_FUNCTION_91_1(v7);
    OUTLINED_FUNCTION_23_12(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v2 != v0 || v0 + 32 + 24 * v3 <= (v2 + 32))
    {
      v10 = OUTLINED_FUNCTION_85_0();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD0, &qword_1D561DAA8);
    OUTLINED_FUNCTION_85_0();
    swift_arrayInitWithCopy();
  }
}

void *sub_1D4F0518C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACB8, &qword_1D561DA90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACC0, &qword_1D561DA98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D4F052C0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_37_10();
  if (v3)
  {
    OUTLINED_FUNCTION_15_13();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_48_4();
      if (v4)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v4 ^ v5 | v21)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (!v13)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_139_2(v6, v7, v8, v9, v10, v11);
  v14 = OUTLINED_FUNCTION_63_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_69(v16);
  v18 = *(v17 + 72);
  v19 = OUTLINED_FUNCTION_166_0();
  _swift_stdlib_malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_199();
  v21 = v21 && v18 == -1;
  if (v21)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_105_1(v20);
LABEL_17:
  v22 = OUTLINED_FUNCTION_63_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_3();
  if (v1)
  {
    sub_1D4F037E4(v0 + v24, v2, v19 + v24);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_229();
  }

  OUTLINED_FUNCTION_46();
}

char *sub_1D4F05404(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB1F0, &qword_1D561DF38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D4F0551C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADB0, &qword_1D561DBA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1D4F0561C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFD8, &qword_1D561DD98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1D4F0571C()
{
  OUTLINED_FUNCTION_157_2();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_48_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = OUTLINED_FUNCTION_139_2(v2, v3, v4, v5, v6, v7);
    v14 = OUTLINED_FUNCTION_136_1(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_13_13();
    *(v14 + 2) = v11;
    *(v14 + 3) = v15;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = v0 + 32;
  if (v1)
  {
    if (v14 != v0 || &v17[16 * v11] <= v16)
    {
      memmove(v16, v17, 16 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F05888(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_37_10();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_145_4();
  if (v5 ^ v6 | v14)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    v16 = OUTLINED_FUNCTION_139_2(v7, v8, v9, v10, v11, v12);
    v17 = OUTLINED_FUNCTION_226(v16);
    v18 = _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_105_1(v18 - 32);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v2)
  {
    if (v17 != v1 || &v1[40 * v3 + 32] <= v17 + 32)
    {
      v20 = OUTLINED_FUNCTION_97_1();
      memmove(v20, v21, v22);
    }

    *(v1 + 2) = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_63_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_97_1();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_190();
}

char *sub_1D4F05968(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACF0, &unk_1D561DAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D4F05A80()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v13 = OUTLINED_FUNCTION_139_2(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_233(v13);
    OUTLINED_FUNCTION_94_1(v14);
  }

  v15 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    OUTLINED_FUNCTION_212();
    if (v20)
    {
      v21 = v19 > v17;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      memmove(v17, v18, v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, v2);
  }
}

char *sub_1D4F05B24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE40, &qword_1D561DC40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1D4F05C24(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE28, &qword_1D561DC28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE30, &unk_1D561DC30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D4F05D54()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_25_20();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE00, &qword_1D561DBF8);
    v8 = OUTLINED_FUNCTION_149(v7);
    OUTLINED_FUNCTION_30_4(v8);
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_65_8();
  if (v1)
  {
    if (v8 != v0 || &v11[24 * v2] <= v10)
    {
      memmove(v10, v11, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1D4F05E30()
{
  OUTLINED_FUNCTION_52_5();
  if (v4)
  {
    OUTLINED_FUNCTION_15_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_48_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_8();
    }
  }

  OUTLINED_FUNCTION_31_11();
  if (v2)
  {
    v13 = OUTLINED_FUNCTION_139_2(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_136_1(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_60_2();
    v14[2] = v3;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = OUTLINED_FUNCTION_108_3();
  if (v1)
  {
    if (v14 != v0 || &v17[8 * v3] <= v16)
    {
      memmove(v16, v17, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v16, v17, 8 * v3);
  }
}

unint64_t sub_1D4F05F24(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_172_0();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v3 = v2;
  if ((result & 1) == 0 || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0 || a1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v2 >> 62)
    {
      sub_1D5615A98();
    }

    result = sub_1D5615BD8();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1D4F05FC8(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_172_0();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v3 = v2;
  if (result)
  {
    if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D5615A98();
LABEL_9:
  result = sub_1D5615BD8();
  *v3 = result;
  return result;
}

void sub_1D4F06064(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v6;
  if (!isUniquelyReferenced_nonNull_native || v5 > *(v6 + 24) >> 1)
  {
    *v1 = v3();
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F06104(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_1D4F02378(isUniquelyReferenced_nonNull_native);
    *v1 = v5;
  }
}

uint64_t sub_1D4F061D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1D4F0624C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_1D4F010BC();
    *v1 = v5;
  }
}

void sub_1D4F062F4()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_64_1();
  v4 = type metadata accessor for CloudSuggestedPivotsRawRequest.Entry(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_8();
  v8 = *(v2 + 16);
  MEMORY[0x1DA6EC0D0](v8);
  if (v8)
  {
    v9 = *(v4 + 24);
    OUTLINED_FUNCTION_43_3();
    v11 = v2 + v10;
    v12 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_79_1();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_232();
      sub_1D5610088();
      OUTLINED_FUNCTION_1_23();
      sub_1D4F0B28C(&qword_1EDD53358, v13, MEMORY[0x1E6975BD8]);
      OUTLINED_FUNCTION_154_1();
      sub_1D5614CB8();
      v14 = *(v0 + v9);
      if (v14 == 3)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        sub_1D5614E28();
      }

      OUTLINED_FUNCTION_80_1();
      sub_1D4E58360();
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F064C4(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_98_0();
  if (v1)
  {
    v6 = OUTLINED_FUNCTION_215();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_173();
    v9 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = *(v10 + 72);
    v3();
    do
    {
      OUTLINED_FUNCTION_29_3();
      sub_1D5614CB8();
      v9 += v11;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F0657C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v3 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v19 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_34_5();
  v9 = type metadata accessor for StorePlatformOffer.Asset(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_140_1();
  if (v2)
  {
    v20 = *(v9 + 40);
    v11 = (v1 + *(v9 + 44));
    OUTLINED_FUNCTION_43_3();
    v18 = (v12 + 32);
    do
    {
      OUTLINED_FUNCTION_32_13();
      sub_1D4F0B238();
      if (*(v1 + 8))
      {
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_142_0();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      if (*(v1 + 24) == 1)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v13 = *(v1 + 16);
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v13);
      }

      if (*(v1 + 40))
      {
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_142_0();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      if (*(v1 + 48) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      if (*(v1 + 49) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      OUTLINED_FUNCTION_67_4();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v14)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        (*v18)(v19, v0, v3);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_0_15();
        sub_1D4F0B28C(&qword_1EC7E9FC8, v15, MEMORY[0x1E6968FC0]);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        OUTLINED_FUNCTION_129();
        v16(v19, v3);
      }

      if (*(v1 + v20) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      if (*(v11 + 8) == 1)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v17 = *v11;
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC100](v17);
      }

      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_176_0();
    }

    while (!v14);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F068DC()
{
  OUTLINED_FUNCTION_35_12();
  if (v0)
  {
    v2 = (v1 + 40);
    do
    {
      v3 = *v2;
      MEMORY[0x1DA6EC0D0](*(v2 - 1));
      MEMORY[0x1DA6EC0D0](v3);
      v2 += 2;
      --v0;
    }

    while (v0);
  }
}

void sub_1D4F06928()
{
  OUTLINED_FUNCTION_35_12();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      OUTLINED_FUNCTION_222();
      sub_1D5614E28();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

unint64_t sub_1D4F06B60()
{
  result = qword_1EC7EAC08;
  if (!qword_1EC7EAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC08);
  }

  return result;
}

unint64_t sub_1D4F06BB8()
{
  result = qword_1EC7EAC10;
  if (!qword_1EC7EAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC10);
  }

  return result;
}

uint64_t sub_1D4F06C24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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