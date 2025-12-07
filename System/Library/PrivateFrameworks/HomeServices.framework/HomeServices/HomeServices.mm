BOOL sub_1D20A0ABC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1D20A0B70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1D20A0C38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D20A0CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D20A0DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D20A0EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211319C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D20A0F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211319C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D20A0FC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D21131DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1D2112C2C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1D20A1128(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D21131DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_1D2112C2C();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D20A1284(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D20B98A4(a1, a2);
  }

  return a1;
}

uint64_t sub_1D20A1298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D20A1344(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D211348C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s12HomeServices43Com_Apple_Wpc_Es_ESFeedbackEventAttributionOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12HomeServices43Com_Apple_Wpc_Es_ESFeedbackEventAttributionOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D20A1458(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D20A1474(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1D20A1494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7908, &qword_1D2117378);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D20A15C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7908, &qword_1D2117378);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D20A1714(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1D20F88F0(v7, v8) & 1;
}

uint64_t sub_1D20A1760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2112C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D20A1820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2112C2C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D20A18DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D211335C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D20A1988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D211335C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D20A1A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2112C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D20A1AE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2112C2C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D20A1BB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1D20A1BF8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1D20A1C10()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1D20A1C2C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1D20A1C48(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

BOOL sub_1D20A1C68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_1D20A1CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D20A1DDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D20A1F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D20A203C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D211348C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D20A2200(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  MEMORY[0x1EEE9AC00](v2);
  v78 = &v66 - v3;
  v4 = sub_1D211319C();
  v68 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v67 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v77 = &v66 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v80 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v82 = (&v66 - v13);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0) - 8;
  MEMORY[0x1EEE9AC00](v90);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v17 = (v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - v18;
  v81 = sub_1D20AEF10();
  v92 = MEMORY[0x1E69E7CC0];
  sub_1D20DC784(0, v81 & ~(v81 >> 63), 0);
  v88 = v92;
  v20 = a1;
  v21 = v19;
  sub_1D20A8580(v20, v15, &qword_1EC6C7240, &unk_1D21149B0);
  v22 = &v19[v17[13]];
  v79 = v2;
  v23 = *(v2 + 48);
  v24 = v68 + 32;
  v25 = *(v68 + 32);
  v26 = v15;
  v25(v22 + v23, v15, v4);
  v27 = v90;
  v28 = *(v90 + 44);
  v84 = v17[11];
  v75 = v25;
  v76 = v24;
  v25(v21 + v84, &v26[v28], v4);
  v29 = v81;
  v30 = *&v26[*(v27 + 48)];
  v74 = v17[12];
  *(v21 + v74) = v30;
  v31 = *(v68 + 16);
  v89 = v23;
  v85 = v31;
  v86 = v68 + 16;
  result = (v31)(v21, v22 + v23, v4);
  *v22 = 0;
  v90 = v22;
  *(v22 + 8) = 0;
  if ((v29 & 0x8000000000000000) == 0)
  {
    v87 = v21;
    if (v29)
    {
      v33 = 0;
      v73 = (v68 + 8);
      v69 = (v68 + 40);
      v72 = (v68 + 56);
      v71 = (v68 + 48);
      v34 = v88;
      v35 = v67;
      while (1)
      {
        v83 = v33;
        v85(v35, v90 + v89, v4);
        sub_1D20A85E8(&qword_1EE0843E0, MEMORY[0x1E6969548]);
        if (v30 <= 0.0)
        {
          v36 = v35;
          if (sub_1D211379C())
          {
LABEL_8:
            (*v73)(v36, v4);
            v46 = 1;
            v35 = v36;
            v45 = v80;
            goto LABEL_9;
          }
        }

        else
        {
          v36 = v35;
          if (sub_1D211378C())
          {
            goto LABEL_8;
          }
        }

        v88 = v34;
        v37 = v90;
        v38 = v78;
        sub_1D20A8580(v90, v78, &qword_1EC6C7278, &unk_1D2115720);
        v39 = *(v79 + 48);
        sub_1D20A85E8(&qword_1EC6C7288, MEMORY[0x1E6969560]);
        v40 = v77;
        v41 = sub_1D2113B1C();
        v43 = v42;
        (*v73)((v38 + v39), v4);
        *v37 = v41;
        *(v37 + 8) = v43 & 1;
        v44 = v37 + v89;
        v34 = v88;
        (*v69)(v44, v40, v4);
        v45 = v80;
        v75(v80, v36, v4);
        v46 = 0;
        v35 = v36;
LABEL_9:
        (*v72)(v45, v46, 1, v4);
        result = (*v71)(v45, 1, v4);
        if (result == 1)
        {
          goto LABEL_30;
        }

        do
        {
          v91[0] = 0;
          MEMORY[0x1D3896EC0](v91, 8);
        }

        while ((0x20000000000001 * v91[0]) < 0x1FFFFFFFFFF801);
        v47 = (v91[0] * 0x20000000000001uLL) >> 64;
        sub_1D20A862C(v45, &qword_1EC6C7248, &qword_1D2114A80);
        v92 = v34;
        v49 = *(v34 + 16);
        v48 = *(v34 + 24);
        v50 = v83;
        if (v49 >= v48 >> 1)
        {
          sub_1D20DC784((v48 > 1), v49 + 1, 1);
          v35 = v67;
          v34 = v92;
        }

        v33 = (v50 + 1);
        *(v34 + 16) = v49 + 1;
        *(v34 + 8 * v49 + 32) = vcvtd_n_f64_u64(v47, 0x35uLL) + 0.0;
        if (v33 == v81)
        {
          goto LABEL_16;
        }
      }
    }

    v34 = v88;
LABEL_16:
    v83 = (v68 + 8);
    v73 = (v68 + 40);
    v80 = (v68 + 48);
    v81 = v68 + 56;
    v51 = v70;
    while (1)
    {
      v85(v51, v90 + v89, v4);
      sub_1D20A85E8(&qword_1EE0843E0, MEMORY[0x1E6969548]);
      if (v30 <= 0.0)
      {
        if ((sub_1D211379C() & 1) == 0)
        {
LABEL_19:
          v88 = v34;
          v52 = v90;
          v53 = v78;
          sub_1D20A8580(v90, v78, &qword_1EC6C7278, &unk_1D2115720);
          v54 = *(v79 + 48);
          sub_1D20A85E8(&qword_1EC6C7288, MEMORY[0x1E6969560]);
          v55 = v77;
          v56 = sub_1D2113B1C();
          v58 = v57;
          (*v83)(v53 + v54, v4);
          *v52 = v56;
          *(v52 + 8) = v58 & 1;
          v59 = v52 + v89;
          v34 = v88;
          v60 = v55;
          v51 = v70;
          (*v73)(v59, v60, v4);
          v61 = v82;
          v75(v82, v51, v4);
          v62 = 0;
          goto LABEL_22;
        }
      }

      else if ((sub_1D211378C() & 1) == 0)
      {
        goto LABEL_19;
      }

      (*v83)(v51, v4);
      v62 = 1;
      v61 = v82;
LABEL_22:
      (*v81)(v61, v62, 1, v4);
      if ((*v80)(v61, 1, v4) == 1)
      {
        sub_1D20A862C(v87, &qword_1EC6C7280, &qword_1D21149E0);
        sub_1D20A862C(v61, &qword_1EC6C7248, &qword_1D2114A80);
        return v34;
      }

      sub_1D20A862C(v61, &qword_1EC6C7248, &qword_1D2114A80);
      do
      {
        v91[0] = 0;
        MEMORY[0x1D3896EC0](v91, 8);
      }

      while ((0x20000000000001 * v91[0]) < 0x1FFFFFFFFFF801);
      v63 = (v91[0] * 0x20000000000001uLL) >> 64;
      v92 = v34;
      v65 = *(v34 + 16);
      v64 = *(v34 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1D20DC784((v64 > 1), v65 + 1, 1);
        v34 = v92;
      }

      *(v34 + 16) = v65 + 1;
      *(v34 + 8 * v65 + 32) = vcvtd_n_f64_u64(v63, 0x35uLL) + 0.0;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

char *sub_1D20A2BD0(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v102 = sub_1D21132CC();
  v80 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1D21132EC();
  v79 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v78 - v10;
  v11 = sub_1D211319C();
  v81 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v94 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v87 = &v78 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v97 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v78 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0) - 8;
  MEMORY[0x1EEE9AC00](v112);
  v20 = &v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v22 = (v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v78 - v23;
  v111 = sub_1D20AEF10();
  v114 = MEMORY[0x1E69E7CC0];
  sub_1D20DC784(0, v111 & ~(v111 >> 63), 0);
  v25 = v114;
  sub_1D20A8580(a1, v20, &qword_1EC6C7240, &unk_1D21149B0);
  v26 = &v24[v22[13]];
  v89 = v5;
  v113 = *(v5 + 48);
  v27 = v81 + 32;
  v28 = *(v81 + 32);
  v28(v26 + v113, v20, v11);
  v29 = v112;
  v30 = *(v112 + 44);
  v104 = v22[11];
  v108 = v28;
  v109 = v27;
  v28(&v24[v104], &v20[v30], v11);
  v31 = v111;
  v32 = *&v20[*(v29 + 48)];
  v86 = v22[12];
  *&v24[v86] = v32;
  v33 = *(v81 + 16);
  v106 = v81 + 16;
  v107 = v24;
  v105 = v33;
  result = (v33)(v24, v26 + v113, v11);
  *v26 = 0;
  v112 = v26;
  *(v26 + 8) = 0;
  if ((v31 & 0x8000000000000000) == 0)
  {
    v98 = *MEMORY[0x1E6969A58];
    if (v31)
    {
      v96 = (v81 + 8);
      v82 = (v81 + 40);
      v93 = (v81 + 56);
      v92 = (v81 + 48);
      v91 = (v79 + 16);
      v90 = (v80 + 104);
      v85 = (v80 + 8);
      v84 = (v79 + 8);
      v35 = v83;
      do
      {
        v36 = v94;
        v105(v94, v112 + v113, v11);
        sub_1D20A85E8(&qword_1EE0843E0, MEMORY[0x1E6969548]);
        v111 = v31;
        if (v32 <= 0.0)
        {
          if (sub_1D211379C())
          {
LABEL_8:
            v44 = *v96;
            (*v96)(v36, v11);
            v46 = 1;
            goto LABEL_9;
          }
        }

        else if (sub_1D211378C())
        {
          goto LABEL_8;
        }

        v37 = v112;
        v38 = v88;
        sub_1D20A8580(v112, v88, &qword_1EC6C7278, &unk_1D2115720);
        v39 = *(v89 + 48);
        sub_1D20A85E8(&qword_1EC6C7288, MEMORY[0x1E6969560]);
        v40 = v87;
        v41 = sub_1D2113B1C();
        v43 = v42;
        v44 = *v96;
        (*v96)(v38 + v39, v11);
        *v37 = v41;
        *(v37 + 8) = v43 & 1;
        v45 = v37 + v113;
        v35 = v83;
        (*v82)(v45, v40, v11);
        v108(v35, v94, v11);
        v46 = 0;
LABEL_9:
        (*v93)(v35, v46, 1, v11);
        result = (*v92)(v35, 1, v11);
        if (result == 1)
        {
          goto LABEL_39;
        }

        v47 = v99;
        v48 = v100;
        (*v91)(v99, v103, v100);
        v50 = v101;
        v49 = v102;
        (*v90)(v101, v98, v102);
        v51 = sub_1D21132DC();
        (*v85)(v50, v49);
        (*v84)(v47, v48);
        v52 = 0.1;
        if (v51 >= 5)
        {
          v52 = 0.25;
          if (v51 - 9 <= 0xFFFFFFFFFFFFFFFBLL)
          {
            v52 = 0.4;
            if (v51 - 13 <= 0xFFFFFFFFFFFFFFFBLL)
            {
              v52 = 0.5;
              if (v51 - 17 <= 0xFFFFFFFFFFFFFFFBLL)
              {
                if (v51 - 21 >= 0xFFFFFFFFFFFFFFFCLL)
                {
                  v52 = 0.6;
                }

                else
                {
                  v52 = 0.8;
                }
              }
            }
          }
        }

        (v44)(v35, v11);
        v114 = v25;
        v54 = *(v25 + 2);
        v53 = *(v25 + 3);
        v55 = v111;
        if (v54 >= v53 >> 1)
        {
          sub_1D20DC784((v53 > 1), v54 + 1, 1);
          v25 = v114;
        }

        *(v25 + 2) = v54 + 1;
        *&v25[8 * v54 + 32] = v52;
        v31 = v55 - 1;
      }

      while (v31);
    }

    v111 = v81 + 8;
    v85 = (v81 + 40);
    v56 = (v81 + 56);
    v96 = (v81 + 48);
    v93 = (v79 + 16);
    v92 = (v80 + 104);
    v91 = (v80 + 8);
    v90 = (v79 + 8);
    while (1)
    {
      v57 = v97;
      v105(v97, v112 + v113, v11);
      sub_1D20A85E8(&qword_1EE0843E0, MEMORY[0x1E6969548]);
      if (v32 <= 0.0)
      {
        if ((sub_1D211379C() & 1) == 0)
        {
LABEL_23:
          v94 = v25;
          v58 = v56;
          v59 = v112;
          v60 = v88;
          sub_1D20A8580(v112, v88, &qword_1EC6C7278, &unk_1D2115720);
          v61 = *(v89 + 48);
          sub_1D20A85E8(&qword_1EC6C7288, MEMORY[0x1E6969560]);
          v62 = v87;
          v63 = sub_1D2113B1C();
          v65 = v64;
          v66 = *v111;
          (*v111)(v60 + v61, v11);
          *v59 = v63;
          *(v59 + 8) = v65 & 1;
          v67 = v59 + v113;
          v56 = v58;
          v25 = v94;
          (*v85)(v67, v62, v11);
          v68 = v95;
          v108(v95, v97, v11);
          v69 = 0;
          goto LABEL_26;
        }
      }

      else if ((sub_1D211378C() & 1) == 0)
      {
        goto LABEL_23;
      }

      v66 = *v111;
      (*v111)(v57, v11);
      v69 = 1;
      v68 = v95;
LABEL_26:
      (*v56)(v68, v69, 1, v11);
      if ((*v96)(v68, 1, v11) == 1)
      {
        sub_1D20A862C(v107, &qword_1EC6C7280, &qword_1D21149E0);
        sub_1D20A862C(v68, &qword_1EC6C7248, &qword_1D2114A80);
        return v25;
      }

      v108(v110, v68, v11);
      v70 = v99;
      v71 = v100;
      (*v93)(v99, v103, v100);
      v73 = v101;
      v72 = v102;
      (*v92)(v101, v98, v102);
      v74 = sub_1D21132DC();
      (*v91)(v73, v72);
      (*v90)(v70, v71);
      v75 = 0.1;
      if (v74 >= 5)
      {
        v75 = 0.25;
        if (v74 - 9 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          v75 = 0.4;
          if (v74 - 13 <= 0xFFFFFFFFFFFFFFFBLL)
          {
            v75 = 0.5;
            if (v74 - 17 <= 0xFFFFFFFFFFFFFFFBLL)
            {
              if (v74 - 21 >= 0xFFFFFFFFFFFFFFFCLL)
              {
                v75 = 0.6;
              }

              else
              {
                v75 = 0.8;
              }
            }
          }
        }
      }

      v66(v110, v11);
      v114 = v25;
      v77 = *(v25 + 2);
      v76 = *(v25 + 3);
      if (v77 >= v76 >> 1)
      {
        sub_1D20DC784((v76 > 1), v77 + 1, 1);
        v25 = v114;
      }

      *(v25 + 2) = v77 + 1;
      *&v25[8 * v77 + 32] = v75;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1D20A3A20()
{
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v115 - v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v120 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v121 = &v115 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v122 = &v115 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v123 = &v115 - v8;
  v129 = sub_1D211319C();
  v125 = *(v129 - 8);
  v9 = MEMORY[0x1EEE9AC00](v129);
  v127 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v115 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v128 = &v115 - v14;
  v15 = sub_1D2112C6C();
  v136 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v137 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v115 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v115 - v21;
  v23 = sub_1D2112D0C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  v26 = sub_1D2112F9C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v19, 1, v26) == 1)
  {
    goto LABEL_50;
  }

  sub_1D2112CCC();
  (*(v27 + 8))(v19, v26);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v124 = v13;
  v115 = v24;
  v28 = *(v24 + 32);
  v116 = v23;
  v28(v126, v22, v23);
  v29 = sub_1D2112C7C();
  if (!v29)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v30 = v29;
  v31 = sub_1D20CE7A8(MEMORY[0x1E69E7CC0]);
  v135 = *(v30 + 16);
  if (v135)
  {
    v32 = 0;
    v134 = v30 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
    v132 = (v136 + 8);
    v133 = v136 + 16;
    v130 = v30;
    v131 = v15;
    do
    {
      if (v32 >= *(v30 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      (*(v136 + 16))(v137, v134 + *(v136 + 72) * v32, v15);
      v33 = sub_1D2112C4C();
      v35 = v34;
      v36 = sub_1D2112C5C();
      if (!v37)
      {
        v50 = sub_1D20E4570(v33, v35);
        v52 = v51;

        if (v52)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v138 = v31;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1D20E7990();
            v31 = v138;
          }

          sub_1D20E7368(v50, v31);
        }

        (*v132)(v137, v15);
        goto LABEL_8;
      }

      v38 = v37;
      v39 = v36;
      v40 = v31;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v138 = v40;
      v43 = sub_1D20E4570(v33, v35);
      v44 = v40[2];
      v45 = (v42 & 1) == 0;
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        goto LABEL_43;
      }

      v47 = v42;
      if (v40[3] >= v46)
      {
        if (v41)
        {
          if ((v42 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1D20E7990();
          if ((v47 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_1D20E68BC(v46, v41);
        v48 = sub_1D20E4570(v33, v35);
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_55;
        }

        v43 = v48;
        if ((v47 & 1) == 0)
        {
LABEL_23:
          v55 = v137;
          v31 = v138;
          v138[(v43 >> 6) + 8] |= 1 << v43;
          v56 = (v31[6] + 16 * v43);
          *v56 = v33;
          v56[1] = v35;
          v57 = (v31[7] + 16 * v43);
          *v57 = v39;
          v57[1] = v38;
          v15 = v131;
          (*v132)(v55, v131);
          v58 = v31[2];
          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
            goto LABEL_44;
          }

          v31[2] = v60;
          goto LABEL_25;
        }
      }

      v31 = v138;
      v54 = (v138[7] + 16 * v43);
      *v54 = v39;
      v54[1] = v38;

      v15 = v131;
      (*v132)(v137, v131);
LABEL_25:
      v30 = v130;
LABEL_8:
      ++v32;
    }

    while (v135 != v32);
  }

  if (!v31[2])
  {
    goto LABEL_45;
  }

  sub_1D20E4570(0x61642D7472617473, 0xEA00000000006574);
  if ((v61 & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v137 = v31;
  v62 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v63 = [v62 init];
  [v63 setFormatOptions_];
  v64 = sub_1D21137BC();

  v65 = [v63 dateFromString_];

  if (v65)
  {
    v66 = v122;
    sub_1D211316C();

    v67 = 0;
    v69 = v128;
    v68 = v129;
    v70 = v125;
    v71 = v123;
  }

  else
  {
    v67 = 1;
    v69 = v128;
    v68 = v129;
    v70 = v125;
    v71 = v123;
    v66 = v122;
  }

  v136 = v70[7];
  (v136)(v66, v67, 1, v68);
  sub_1D20A84BC(v66, v71);
  v72 = v70[6];
  if (v72(v71, 1, v68) == 1)
  {
    goto LABEL_53;
  }

  v73 = v70[4];
  v73(v69, v71, v68);
  if (!*(v137 + 2))
  {
    goto LABEL_47;
  }

  sub_1D20E4570(0x657461642D646E65, 0xE800000000000000);
  if ((v74 & 1) == 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v135 = v73;
  v75 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v76 = [v75 init];
  [v76 setFormatOptions_];
  v77 = sub_1D21137BC();

  v78 = [v76 dateFromString_];

  if (v78)
  {
    v79 = v120;
    sub_1D211316C();

    v80 = 0;
    v81 = v129;
    v82 = v125;
  }

  else
  {
    v80 = 1;
    v81 = v129;
    v82 = v125;
    v79 = v120;
  }

  (v136)(v79, v80, 1, v81);
  v83 = v121;
  sub_1D20A84BC(v79, v121);
  if (v72(v83, 1, v81) != 1)
  {

    v84 = v124;
    v135(v124, v83, v81);
    sub_1D211317C();
    if (sub_1D21130FC())
    {
      (v82[1])(v84, v81);
      (v82[2])(v84, v127, v81);
    }

    sub_1D2113F5C();
    v85 = sub_1D2113F4C();
    if (v85)
    {
      v86 = v85;
      v87 = v82[2];
      v88 = v118;
      v87(v118, v128, v81);
      v89 = v117;
      v87((v88 + *(v117 + 36)), v84, v81);
      *(v88 + *(v89 + 40)) = v86;
      v90 = v119;
      v135 = sub_1D20A2200(v88);
      v137 = v90;
      sub_1D20A862C(v88, &qword_1EC6C7240, &unk_1D21149B0);
      v91 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v91 setFormatOptions_];
      v92 = sub_1D21130EC();
      v93 = [v91 stringFromDate_];

      v136 = sub_1D21137CC();
      v134 = v94;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7268, &unk_1D21149D0);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_1D2114850;
      v96 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v96 setFormatOptions_];
      v97 = sub_1D21130EC();
      v98 = [v96 stringFromDate_];

      v99 = sub_1D21137CC();
      v101 = v100;

      v102 = objc_allocWithZone(MEMORY[0x1E696AC80]);
      v103 = v135;
      v104 = [v102 init];
      [v104 setFormatOptions_];
      v105 = sub_1D21130EC();
      v106 = [v104 stringFromDate_];

      v107 = sub_1D21137CC();
      v109 = v108;

      *(v95 + 32) = v99;
      *(v95 + 40) = v101;
      *(v95 + 48) = v107;
      *(v95 + 56) = v109;
      v110 = v134;
      *(v95 + 64) = xmmword_1D2114860;
      sub_1D2112B7C();
      swift_allocObject();
      sub_1D2112B6C();
      v138 = v136;
      v139 = v110;
      v140 = 0x4D30335450;
      v141 = 0xE500000000000000;
      v142 = v103;
      v143 = v95;
      sub_1D20A852C();
      v111 = sub_1D2112B5C();

      v112 = v82[1];
      v113 = v129;
      v112(v127, v129);
      v112(v124, v113);
      v112(v128, v113);
      (*(v115 + 8))(v126, v116);

      return v111;
    }

    goto LABEL_49;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

uint64_t sub_1D20A481C()
{
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v134 - v0;
  v143 = sub_1D211320C();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v134 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v144 = &v134 - v3;
  v146 = sub_1D211335C();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v140 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v147 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v148 = &v134 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v149 = &v134 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v150 = &v134 - v12;
  v13 = sub_1D211319C();
  v155 = *(v13 - 8);
  v156 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v153 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v151 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v154 = &v134 - v18;
  v19 = sub_1D2112C6C();
  v164 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v158 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v134 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v134 - v25;
  v27 = sub_1D2112D0C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v152 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  v30 = sub_1D2112F9C();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v23, 1, v30) == 1)
  {
    goto LABEL_51;
  }

  sub_1D2112CCC();
  (*(v31 + 8))(v23, v30);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  (*(v28 + 32))(v152, v26, v27);
  v32 = sub_1D2112C7C();
  v33 = v158;
  if (!v32)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v34 = v32;
  v135 = v28;
  v136 = v27;
  v35 = sub_1D20CE7A8(MEMORY[0x1E69E7CC0]);
  v163 = *(v34 + 16);
  if (v163)
  {
    v36 = 0;
    v162 = v34 + ((v164[80] + 32) & ~v164[80]);
    v160 = (v164 + 8);
    v161 = (v164 + 16);
    v159 = v34;
    v157 = v19;
    do
    {
      if (v36 >= *(v34 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      (*(v164 + 2))(v33, v162 + *(v164 + 9) * v36, v19);
      v37 = sub_1D2112C4C();
      v39 = v38;
      v40 = sub_1D2112C5C();
      if (!v41)
      {
        v59 = sub_1D20E4570(v37, v39);
        v61 = v60;

        if (v61)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v165 = v35;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1D20E7990();
            v35 = v165;
          }

          sub_1D20E7368(v59, v35);
        }

        (*v160)(v33, v19);
        goto LABEL_8;
      }

      v42 = v41;
      v43 = v40;
      v44 = v35;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v165 = v44;
      v47 = sub_1D20E4570(v37, v39);
      v48 = v44[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_44;
      }

      v51 = v46;
      if (v44[3] >= v50)
      {
        if (v45)
        {
          if (v46)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_1D20E7990();
          if (v51)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_1D20E68BC(v50, v45);
        v52 = sub_1D20E4570(v37, v39);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_58;
        }

        v47 = v52;
        if (v51)
        {
LABEL_22:

          v35 = v165;
          v63 = (v165[7] + 16 * v47);
          *v63 = v43;
          v63[1] = v42;

          v19 = v157;
          v33 = v158;
          (*v160)(v158, v157);
          goto LABEL_8;
        }
      }

      v35 = v165;
      v165[(v47 >> 6) + 8] |= 1 << v47;
      v54 = (v35[6] + 16 * v47);
      *v54 = v37;
      v54[1] = v39;
      v55 = (v35[7] + 16 * v47);
      *v55 = v43;
      v55[1] = v42;
      v19 = v157;
      v33 = v158;
      (*v160)(v158, v157);
      v56 = v35[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_45;
      }

      v35[2] = v58;
LABEL_8:
      v34 = v159;
      ++v36;
    }

    while (v163 != v36);
  }

  if (!v35[2])
  {
    goto LABEL_46;
  }

  sub_1D20E4570(0x61642D7472617473, 0xEA00000000006574);
  if ((v64 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v164 = v35;
  v65 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v66 = [v65 init];
  [v66 setFormatOptions_];
  v67 = sub_1D21137BC();

  v68 = [v66 dateFromString_];

  if (v68)
  {
    v69 = v149;
    sub_1D211316C();

    v70 = 0;
    v72 = v155;
    v71 = v156;
    v73 = v154;
    v74 = v150;
  }

  else
  {
    v70 = 1;
    v72 = v155;
    v71 = v156;
    v73 = v154;
    v74 = v150;
    v69 = v149;
  }

  v75 = v72[7];
  v75(v69, v70, 1, v71);
  sub_1D20A84BC(v69, v74);
  v76 = v72[6];
  v77 = v76(v74, 1, v71);
  v78 = v164;
  if (v77 == 1)
  {
    goto LABEL_54;
  }

  v163 = v72[4];
  v163(v73, v74, v71);
  if (!*(v78 + 2))
  {
    goto LABEL_48;
  }

  sub_1D20E4570(0x657461642D646E65, 0xE800000000000000);
  if ((v79 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v80 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v81 = [v80 init];
  [v81 setFormatOptions_];
  v82 = sub_1D21137BC();

  v83 = [v81 dateFromString_];

  if (v83)
  {
    v84 = v147;
    sub_1D211316C();

    v85 = 0;
    v86 = v156;
    v87 = v148;
  }

  else
  {
    v85 = 1;
    v86 = v156;
    v87 = v148;
    v84 = v147;
  }

  v75(v84, v85, 1, v86);
  sub_1D20A84BC(v84, v87);
  if (v76(v87, 1, v86) == 1)
  {
    goto LABEL_55;
  }

  v88 = v151;
  v163(v151, v87, v86);
  v89 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v90 = sub_1D21137BC();
  [v89 setDateFormat_];

  v91 = v144;
  sub_1D211332C();
  v92 = v145;
  v93 = v146;
  if ((*(v145 + 48))(v91, 1, v146) != 1)
  {
    v94 = v140;
    (*(v92 + 32))(v140, v91, v93);
    v95 = sub_1D211333C();
    (*(v92 + 8))(v94, v93);
    [v89 setTimeZone_];

    v96 = v141;
    sub_1D21131EC();
    v97 = sub_1D21131FC();
    (*(v142 + 8))(v96, v143);
    [v89 setLocale_];

    v98 = sub_1D21137BC();
    v99 = [v89 dateFromString_];

    if (!v99)
    {
      goto LABEL_57;
    }

    sub_1D211316C();

    v100 = sub_1D211310C();
    v101 = v155;
    if (v100)
    {
      v102 = v156;
      (*(v155 + 8))(v88, v156);
      (*(v101 + 16))(v88, v153, v102);
    }

    sub_1D2113F5C();
    v103 = sub_1D2113F4C();
    if (v103)
    {
      v164 = v89;
      v104 = v103;
      v105 = *(v101 + 16);
      v106 = v138;
      v107 = v88;
      v108 = v156;
      v105(v138, v154, v156);
      v109 = v137;
      v105((v106 + *(v137 + 36)), v107, v108);
      *(v106 + *(v109 + 40)) = v104;
      v110 = v139;
      v162 = sub_1D20A2200(v106);
      v163 = v110;
      sub_1D20A862C(v106, &qword_1EC6C7240, &unk_1D21149B0);
      v111 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v111 setFormatOptions_];
      v112 = sub_1D21130EC();
      v113 = [v111 stringFromDate_];

      v114 = sub_1D21137CC();
      v160 = v115;
      v161 = v114;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7268, &unk_1D21149D0);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_1D2114850;
      v117 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v117 setFormatOptions_];
      v118 = sub_1D21130EC();
      v119 = [v117 stringFromDate_];

      v120 = sub_1D21137CC();
      v122 = v121;

      v123 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v123 setFormatOptions_];
      v124 = sub_1D21130EC();
      v125 = [v123 &off_1E83F6478];

      v126 = sub_1D21137CC();
      v128 = v127;

      v129 = v162;
      *(v116 + 32) = v120;
      *(v116 + 40) = v122;
      v130 = v160;
      *(v116 + 48) = v126;
      *(v116 + 56) = v128;
      *(v116 + 64) = xmmword_1D2114860;
      sub_1D2112B7C();
      swift_allocObject();
      sub_1D2112B6C();
      v165 = v161;
      v166 = v130;
      v167 = 0x4D30335450;
      v168 = 0xE500000000000000;
      v169 = v129;
      v170 = v116;
      sub_1D20A852C();
      v131 = sub_1D2112B5C();

      v132 = *(v155 + 8);
      v132(v153, v108);
      v132(v151, v108);
      v132(v154, v108);
      (*(v135 + 8))(v152, v136);

      return v131;
    }

    goto LABEL_50;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

uint64_t sub_1D20A5958(uint64_t a1)
{
  v213 = a1;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  MEMORY[0x1EEE9AC00](v178);
  v179 = v174 - v1;
  v200 = sub_1D2112E7C();
  v189 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v199 = v174 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_1D21132CC();
  v204 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v202 = v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7290, &qword_1D21149E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v205 = v174 - v5;
  v201 = sub_1D2112C2C();
  v191 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v198 = v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v192 = (v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v193 = v174 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v194 = v174 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v195 = (v174 - v14);
  v210 = sub_1D211319C();
  v185 = *(v210 - 8);
  v15 = MEMORY[0x1EEE9AC00](v210);
  v216 = v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v207 = v174 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v181 = v174 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v206 = v174 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v186 = v174 - v23;
  v196 = sub_1D2112C6C();
  v214 = *(v196 - 1);
  MEMORY[0x1EEE9AC00](v196);
  v197 = v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = v174 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v212 = v174 - v29;
  v184 = sub_1D2112D0C();
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v182 = v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v174 - v32;
  v34 = sub_1D211335C();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D211321C();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1D21132EC();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v43 = v174 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 104))(v41, *MEMORY[0x1E6969868], v38);
  sub_1D211322C();
  (*(v39 + 8))(v41, v38);
  sub_1D211332C();
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    goto LABEL_69;
  }

  (*(v35 + 32))(v37, v33, v34);
  v215 = v43;
  sub_1D21132BC();
  sub_1D2112ADC();
  v44 = sub_1D2112F9C();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v27, 1, v44) == 1)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v46 = v212;
  sub_1D2112CCC();
  (*(v45 + 8))(v27, v44);
  v47 = v183;
  v48 = v184;
  v49 = (*(v183 + 48))(v46, 1, v184);
  v50 = v196;
  v51 = v197;
  if (v49 == 1)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  (*(v47 + 32))(v182, v46, v48);
  v52 = sub_1D2112C7C();
  if (!v52)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v53 = v52;
  v54 = sub_1D20CE7A8(MEMORY[0x1E69E7CC0]);
  v213 = v53[2];
  if (v213)
  {
    v55 = 0;
    v212 = v53 + ((v214[80] + 32) & ~v214[80]);
    v211 = (v214 + 16);
    v208 = v53;
    v209 = (v214 + 8);
    while (v55 < v53[2])
    {
      (*(v214 + 2))(v51, &v212[*(v214 + 9) * v55], v50);
      v56 = sub_1D2112C4C();
      v58 = v57;
      v59 = sub_1D2112C5C();
      if (v60)
      {
        v61 = v60;
        v62 = v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v217 = v54;
        v65 = sub_1D20E4570(v56, v58);
        v66 = v54;
        v67 = v54[2];
        v68 = (v64 & 1) == 0;
        v69 = v67 + v68;
        if (__OFADD__(v67, v68))
        {
          goto LABEL_61;
        }

        v70 = v64;
        if (v66[3] >= v69)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D20E7990();
          }
        }

        else
        {
          sub_1D20E68BC(v69, isUniquelyReferenced_nonNull_native);
          v71 = sub_1D20E4570(v56, v58);
          if ((v70 & 1) != (v72 & 1))
          {
            goto LABEL_75;
          }

          v65 = v71;
        }

        v50 = v196;
        if (v70)
        {

          v54 = v217;
          v79 = (v217[7] + 16 * v65);
          *v79 = v62;
          v79[1] = v61;

          v51 = v197;
          (*v209)(v197, v50);
        }

        else
        {
          v54 = v217;
          v217[(v65 >> 6) + 8] |= 1 << v65;
          v80 = (v54[6] + 16 * v65);
          *v80 = v56;
          v80[1] = v58;
          v81 = (v54[7] + 16 * v65);
          *v81 = v62;
          v81[1] = v61;
          v51 = v197;
          (*v209)(v197, v50);
          v82 = v54[2];
          v83 = __OFADD__(v82, 1);
          v84 = v82 + 1;
          if (v83)
          {
            goto LABEL_62;
          }

          v54[2] = v84;
        }

        v53 = v208;
      }

      else
      {
        v73 = sub_1D20E4570(v56, v58);
        v74 = v54;
        v75 = v73;
        v77 = v76;

        if (v77)
        {
          v78 = swift_isUniquelyReferenced_nonNull_native();
          v217 = v74;
          if (!v78)
          {
            sub_1D20E7990();
            v74 = v217;
          }

          sub_1D20E7368(v75, v74);
        }

        (*v209)(v51, v50);
        v53 = v208;
        v54 = v74;
      }

      if (v213 == ++v55)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_26:

  if (!v54[2])
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  sub_1D20E4570(0x61642D7472617473, 0xEA00000000006574);
  if ((v85 & 1) == 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v86 = v54;
  v87 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v88 = [v87 init];
  [v88 setFormatOptions_];
  v89 = sub_1D21137BC();

  v90 = [v88 dateFromString_];

  if (v90)
  {
    v91 = v194;
    sub_1D211316C();

    v92 = 0;
    v93 = v185;
    v94 = v195;
  }

  else
  {
    v92 = 1;
    v93 = v185;
    v94 = v195;
    v91 = v194;
  }

  v95 = v93[7];
  v96 = v210;
  v95(v91, v92, 1, v210);
  sub_1D20A84BC(v91, v94);
  v97 = v93[6];
  if (v97(v94, 1, v96) == 1)
  {
    goto LABEL_73;
  }

  v208 = v93[4];
  v209 = (v93 + 4);
  (v208)(v186, v94, v96);
  if (!v86[2])
  {
    goto LABEL_65;
  }

  sub_1D20E4570(0x657461642D646E65, 0xE800000000000000);
  if ((v98 & 1) == 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v99 = objc_allocWithZone(MEMORY[0x1E696AC80]);

  v100 = [v99 init];
  [v100 setFormatOptions_];
  v101 = sub_1D21137BC();

  v102 = [v100 dateFromString_];

  if (v102)
  {
    v103 = v192;
    sub_1D211316C();

    v104 = 0;
    v105 = v193;
  }

  else
  {
    v104 = 1;
    v105 = v193;
    v103 = v192;
  }

  v106 = v210;
  v95(v103, v104, 1, v210);
  sub_1D20A84BC(v103, v105);
  v107 = v97(v105, 1, v106);
  v108 = v185;
  if (v107 != 1)
  {

    v109 = v206;
    (v208)(v206, v105, v106);
    v110 = v181;
    sub_1D211317C();
    v111 = sub_1D21130FC();
    v112 = v215;
    if (v111)
    {
      (v108[1])(v109, v106);
      v113 = v108[2];
      v114 = (v108 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v113(v109, v110, v106);
    }

    else
    {
      v113 = v108[2];
      v114 = (v108 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    }

    v115 = v205;
    v175 = v113;
    v174[1] = v114;
    v113(v207, v186, v106);
    if (sub_1D211310C())
    {
      LODWORD(v197) = *MEMORY[0x1E6969A48];
      v116 = *(v204 + 104);
      v196 = (v204 + 8);
      v195 = (v191 + 6);
      v192 = (v191 + 4);
      ++v191;
      v190 = *MEMORY[0x1E6969A78];
      ++v189;
      v117 = MEMORY[0x1E69E7CC0];
      v188 = (v108 + 1);
      v187 = xmmword_1D2114850;
      v194 = (v204 + 104);
      v193 = v116;
      while (1)
      {
        v214 = v117;
        v125 = v202;
        v126 = v203;
        (v116)(v202, v197, v203);
        sub_1D211323C();
        v127 = *v196;
        (*v196)(v125, v126);
        v128 = v201;
        if ((*v195)(v115, 1, v201) == 1)
        {
          goto LABEL_68;
        }

        v129 = v198;
        (*v192)(v198, v115, v128);
        sub_1D2112BDC();
        (*v191)(v129, v128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
        v130 = (*(v204 + 80) + 32) & ~*(v204 + 80);
        v131 = swift_allocObject();
        *(v131 + 16) = v187;
        (v116)(v131 + v130, v190, v126);
        sub_1D20BFD3C(v131);
        swift_setDeallocating();
        v127(v131 + v130, v126);
        swift_deallocClassInstance();
        v132 = v199;
        sub_1D211324C();

        v211 = sub_1D2112DFC();
        v134 = v133;
        (*v189)(v132, v200);
        v135 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
        [v135 setFormatOptions_];
        v136 = sub_1D21130EC();
        v137 = [v135 stringFromDate_];

        v138 = sub_1D21137CC();
        v212 = v139;
        v213 = v138;

        v140 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
        [v140 setFormatOptions_];
        v141 = sub_1D21130EC();
        v142 = [v140 stringFromDate_];

        v143 = sub_1D21137CC();
        v145 = v144;

        v117 = v214;
        v146 = swift_isUniquelyReferenced_nonNull_native();
        if ((v134 & 1) != 0 || v211 <= 6)
        {
          if ((v146 & 1) == 0)
          {
            v117 = sub_1D20B6D80(0, *(v117 + 2) + 1, 1, v117);
          }

          v116 = v193;
          v148 = *(v117 + 2);
          v150 = *(v117 + 3);
          v149 = v148 + 1;
          if (v148 >= v150 >> 1)
          {
            v117 = sub_1D20B6D80((v150 > 1), v148 + 1, 1, v117);
          }

          v118 = 0.7;
          v119 = 0x3FD3333333333333;
        }

        else
        {
          if ((v146 & 1) == 0)
          {
            v117 = sub_1D20B6D80(0, *(v117 + 2) + 1, 1, v117);
          }

          v116 = v193;
          v148 = *(v117 + 2);
          v147 = *(v117 + 3);
          v149 = v148 + 1;
          v118 = 0.75;
          if (v148 >= v147 >> 1)
          {
            v117 = sub_1D20B6D80((v147 > 1), v148 + 1, 1, v117);
          }

          v119 = 0x3FE199999999999ALL;
        }

        v120 = v207;
        v121 = v210;
        (*v188)(v207, v210);
        *(v117 + 2) = v149;
        v122 = &v117[48 * v148];
        v123 = v212;
        *(v122 + 4) = v213;
        *(v122 + 5) = v123;
        *(v122 + 6) = v143;
        *(v122 + 7) = v145;
        *(v122 + 8) = v119;
        v122[9] = v118;
        (v208)(v120, v216, v121);
        v109 = v206;
        v124 = sub_1D211310C();
        v115 = v205;
        v112 = v215;
        if ((v124 & 1) == 0)
        {
          goto LABEL_58;
        }
      }
    }

    v117 = MEMORY[0x1E69E7CC0];
LABEL_58:
    sub_1D2113F5C();
    v151 = sub_1D2113F4C();
    if (v151)
    {
      v152 = v151;
      v153 = v179;
      v154 = v112;
      v155 = v210;
      v156 = v175;
      v175(v179, v186, v210);
      v157 = v178;
      v156(v153 + *(v178 + 36), v109, v155);
      *(v153 + *(v157 + 40)) = v152;
      v158 = v180;
      v159 = sub_1D20A2BD0(v153, v154);
      v216 = v158;
      v160 = v153;
      v161 = v159;
      sub_1D20A862C(v160, &qword_1EC6C7240, &unk_1D21149B0);
      v162 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v162 setFormatOptions_];
      v163 = sub_1D21130EC();
      v164 = v109;
      v165 = [v162 stringFromDate_];

      v166 = sub_1D21137CC();
      v168 = v167;

      sub_1D2112B7C();
      swift_allocObject();
      sub_1D2112B6C();
      v217 = v166;
      v218 = v168;
      v219 = 0x4D30335450;
      v220 = 0xE500000000000000;
      v221 = v161;
      v222 = v117;
      sub_1D20A852C();
      v169 = sub_1D2112B5C();
      v216 = v170;

      v171 = v185[1];
      v172 = v210;
      v171(v207, v210);
      v171(v181, v172);
      v171(v164, v172);
      v171(v186, v172);
      (*(v183 + 8))(v182, v184);

      (*(v176 + 8))(v215, v177);
      return v169;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_74:
  __break(1u);
LABEL_75:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

unsigned int (*sub_1D20A7104())(char *, uint64_t, uint64_t)
{
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v146 - v0;
  v160 = sub_1D21132CC();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v157 = &v146 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1D21132EC();
  v156 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v154 = &v146 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v155 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v161 = &v146 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v162 = &v146 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v163 = &v146 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v164 = &v146 - v12;
  v166 = sub_1D211319C();
  v170 = *(v166 - 8);
  v13 = MEMORY[0x1EEE9AC00](v166);
  v149 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v153 = &v146 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v146 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v146 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v146 - v23;
  v172 = sub_1D2112C6C();
  v178 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v146 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v146 - v30;
  v32 = sub_1D2112D0C();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v167 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  v35 = sub_1D2112F9C();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v28, 1, v35) == 1)
  {
    goto LABEL_56;
  }

  sub_1D2112CCC();
  (*(v36 + 8))(v28, v35);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v165 = v19;
  v168 = v22;
  v169 = v24;
  v150 = v33;
  v37 = *(v33 + 32);
  v151 = v32;
  v37(v167, v31, v32);
  v38 = sub_1D2112C7C();
  v39 = v173;
  if (v38)
  {
    v40 = v38;
    v41 = sub_1D20CE7A8(MEMORY[0x1E69E7CC0]);
    v42 = v172;
    v177 = *(v40 + 16);
    if (v177)
    {
      v43 = 0;
      v176 = v40 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
      v174 = (v178 + 8);
      v175 = (v178 + 16);
      v171 = v40;
      do
      {
        if (v43 >= *(v40 + 16))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        (*(v178 + 2))(v39, v176 + *(v178 + 9) * v43, v42);
        v44 = sub_1D2112C4C();
        v46 = v45;
        v47 = sub_1D2112C5C();
        if (!v48)
        {
          v61 = sub_1D20E4570(v44, v46);
          v63 = v62;

          if (v63)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v179 = v41;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1D20E7990();
              v41 = v179;
            }

            sub_1D20E7368(v61, v41);
          }

          (*v174)(v39, v42);
          goto LABEL_8;
        }

        v49 = v48;
        v50 = v47;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v179 = v41;
        v53 = sub_1D20E4570(v44, v46);
        v54 = *(v41 + 2);
        v55 = (v52 & 1) == 0;
        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          goto LABEL_49;
        }

        v57 = v52;
        if (*(v41 + 3) >= v56)
        {
          if (v51)
          {
            v60 = v172;
            if ((v52 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            sub_1D20E7990();
            v60 = v172;
            if ((v57 & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          sub_1D20E68BC(v56, v51);
          v58 = sub_1D20E4570(v44, v46);
          if ((v57 & 1) != (v59 & 1))
          {
            goto LABEL_62;
          }

          v53 = v58;
          v60 = v172;
          if ((v57 & 1) == 0)
          {
LABEL_23:
            v41 = v179;
            *(v179 + (v53 >> 6) + 8) |= 1 << v53;
            v66 = (*(v41 + 6) + 16 * v53);
            *v66 = v44;
            v66[1] = v46;
            v67 = (*(v41 + 7) + 16 * v53);
            *v67 = v50;
            v67[1] = v49;
            v39 = v173;
            (*v174)(v173, v60);
            v68 = *(v41 + 2);
            v69 = __OFADD__(v68, 1);
            v70 = v68 + 1;
            if (v69)
            {
              goto LABEL_50;
            }

            *(v41 + 2) = v70;
            goto LABEL_25;
          }
        }

        v41 = v179;
        v65 = (*(v179 + 7) + 16 * v53);
        *v65 = v50;
        v65[1] = v49;

        v39 = v173;
        (*v174)(v173, v60);
LABEL_25:
        v40 = v171;
        v42 = v60;
LABEL_8:
        ++v43;
      }

      while (v177 != v43);
    }

    if (!*(v41 + 2))
    {
      goto LABEL_51;
    }

    sub_1D20E4570(0x61642D7472617473, 0xEA00000000006574);
    if (v71)
    {
      v178 = v41;
      v72 = objc_allocWithZone(MEMORY[0x1E696AC80]);

      v73 = [v72 init];
      [v73 setFormatOptions_];
      v74 = sub_1D21137BC();

      v75 = [v73 dateFromString_];

      if (v75)
      {
        v76 = v163;
        sub_1D211316C();

        v77 = 0;
        v78 = v170;
        v79 = v164;
      }

      else
      {
        v77 = 1;
        v78 = v170;
        v79 = v164;
        v76 = v163;
      }

      v80 = v78[7];
      v81 = v166;
      v80(v76, v77, 1, v166);
      sub_1D20A84BC(v76, v79);
      v82 = v78 + 6;
      v83 = v78[6];
      if (v83(v79, 1, v81) == 1)
      {
        goto LABEL_59;
      }

      v86 = v78[4];
      v84 = (v78 + 4);
      v85 = v86;
      v86(v169, v79, v81);
      if (*(v178 + 2))
      {
        sub_1D20E4570(0x657461642D646E65, 0xE800000000000000);
        if (v87)
        {
          v177 = v83;
          v88 = v82;
          v89 = objc_allocWithZone(MEMORY[0x1E696AC80]);

          v90 = [v89 init];
          [v90 setFormatOptions_];
          v91 = sub_1D21137BC();

          v92 = [v90 dateFromString_];

          if (v92)
          {
            v93 = v161;
            sub_1D211316C();

            v94 = 0;
            v95 = v170;
            v96 = v162;
          }

          else
          {
            v94 = 1;
            v95 = v170;
            v96 = v162;
            v93 = v161;
          }

          v97 = v166;
          v80(v93, v94, 1, v166);
          sub_1D20A84BC(v93, v96);
          v98 = v88;
          v99 = v177;
          v176 = v98;
          if (v177(v96, 1, v97) == 1)
          {
            goto LABEL_60;
          }

          v175 = v85;
          v85(v168, v96, v97);
          v100 = v154;
          sub_1D21132AC();
          v101 = v159;
          v102 = v157;
          v103 = v160;
          (*(v159 + 104))(v157, *MEMORY[0x1E6969A48], v160);
          v104 = v153;
          sub_1D211318C();
          v174 = v84;
          v105 = v155;
          sub_1D211329C();
          v106 = v104;
          v107 = *(v95 + 8);
          v107(v106, v97);
          (*(v101 + 8))(v102, v103);
          (*(v156 + 8))(v100, v158);
          if (v99(v105, 1, v97) == 1)
          {
            goto LABEL_61;
          }

          v108 = v165;
          v175(v165, v105, v97);
          v109 = v169;
          v110 = sub_1D211310C();
          v111 = v168;
          if ((v110 & 1) != 0 || (sub_1D20A85E8(&qword_1EE0843E0, MEMORY[0x1E6969548]), (sub_1D211377C() & 1) == 0))
          {
            v107(v108, v97);
            v107(v111, v97);
            v107(v109, v97);
            (*(v150 + 8))(v167, v151);
            return 0;
          }

          sub_1D211317C();
          if (sub_1D21130FC())
          {
            (*(v170 + 24))(v111, v149, v97);
          }

          sub_1D2113F5C();
          v112 = sub_1D2113F4C();
          if (v112)
          {
            v178 = v107;
            v113 = v112;
            v114 = v97;
            v115 = *(v170 + 16);
            v116 = v148;
            v115(v148, v109, v114);
            v117 = v147;
            v115((v116 + *(v147 + 36)), v111, v114);
            *(v116 + *(v117 + 40)) = v113;
            v118 = v152;
            v176 = sub_1D20A2200(v116);
            v177 = v118;
            sub_1D20A862C(v116, &qword_1EC6C7240, &unk_1D21149B0);
            v119 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
            [v119 setFormatOptions_];
            v120 = sub_1D21130EC();
            v121 = [v119 stringFromDate_];

            v122 = sub_1D21137CC();
            v174 = v123;
            v175 = v122;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7268, &unk_1D21149D0);
            v124 = swift_allocObject();
            *(v124 + 16) = xmmword_1D2114850;
            v125 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
            [v125 setFormatOptions_];
            v126 = sub_1D21130EC();
            v127 = [v125 stringFromDate_];

            v128 = sub_1D21137CC();
            v130 = v129;

            v131 = v168;
            v132 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
            [v132 setFormatOptions_];
            v133 = sub_1D21130EC();
            v134 = [v132 stringFromDate_];

            v135 = sub_1D21137CC();
            v137 = v136;

            *(v124 + 32) = v128;
            *(v124 + 40) = v130;
            v138 = v176;
            *(v124 + 48) = v135;
            *(v124 + 56) = v137;
            v139 = v174;
            *(v124 + 64) = xmmword_1D2114860;
            sub_1D2112B7C();
            swift_allocObject();
            sub_1D2112B6C();
            v179 = v175;
            v180 = v139;
            v181 = 0x4D30335450;
            v182 = 0xE500000000000000;
            v183 = v138;
            v184 = v124;
            sub_1D20A852C();
            v140 = v177;
            v141 = sub_1D2112B5C();
            if (v140)
            {

              v142 = v178;
              v178(v149, v114);
              v142(v165, v114);
              v142(v131, v114);
              v142(v169, v114);
              (*(v150 + 8))(v167, v151);
            }

            else
            {
              v177 = v141;

              v144 = v131;
              v145 = v178;
              v178(v149, v114);
              v145(v165, v114);
              v145(v144, v114);
              v145(v169, v114);
              (*(v150 + 8))(v167, v151);

              return v177;
            }
          }

          goto LABEL_55;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

    else
    {
LABEL_52:
      __break(1u);
    }

    __break(1u);
    goto LABEL_54;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MockGridDataGenerator(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MockGridDataGenerator(_WORD *result, int a2, int a3)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D20A84BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D20A852C()
{
  result = qword_1EC6C7270;
  if (!qword_1EC6C7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7270);
  }

  return result;
}

uint64_t sub_1D20A8580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D20A85E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D211319C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D20A862C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D20A86D8()
{
  v1 = [objc_opt_self() sharedSession];
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D20A8790;

  return sub_1D20EC308(v1);
}

uint64_t sub_1D20A8790(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t static EnergyServices.configuration(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D20A8938;

  return sub_1D20EC308(a1);
}

uint64_t sub_1D20A8938(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t static EnergyServices.gridIDLookup(forCoordinate:withSession:)(uint64_t a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D20A8AF4;

  return sub_1D20C8AB4(a1, a2, a3);
}

uint64_t sub_1D20A8AF4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t static EnergyServices.energyWindows(forGridID:withSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D20A8CBC;

  return sub_1D20D1DBC(a1, a2, a3, a4);
}

uint64_t sub_1D20A8CBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static EnergyServices.isSupportedInRegion(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D20EC694();
  LOBYTE(a2) = sub_1D20A8E04(a1, a2, v4);

  return a2 & 1;
}

uint64_t sub_1D20A8E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D2113ECC();
  sub_1D211375C();
  v6 = sub_1D2113F1C();
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
    if (v11 || (sub_1D2113E2C() & 1) != 0)
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

uint64_t EnergyWindows.validUntil.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EnergyWindows(0) + 20);

  return sub_1D20AD058(a1, v3);
}

uint64_t EnergyWindows.validFrom.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyWindows(0) + 24);

  return sub_1D20ACFE8(v3, a1);
}

uint64_t EnergyWindows.validFrom.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EnergyWindows(0) + 24);

  return sub_1D20AD058(a1, v3);
}

uint64_t EnergyWindows.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyWindows(0) + 28));

  return v1;
}

uint64_t EnergyWindows.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyWindows(0) + 32));

  return v1;
}

uint64_t EnergyWindows.fieldErrors.getter()
{
  type metadata accessor for EnergyWindows(0);
}

uint64_t EnergyWindows.init(windows:validUntil:validFrom:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v10 = type metadata accessor for EnergyWindows(0);
  v11 = v10[5];
  v12 = sub_1D211319C();
  v13 = *(*(v12 - 8) + 56);
  v13(&a6[v11], 1, 1, v12);
  v14 = v10[6];
  v13(&a6[v14], 1, 1, v12);
  *a6 = a1;
  sub_1D20AD058(a2, &a6[v11]);
  result = sub_1D20AD058(a3, &a6[v14]);
  v16 = &a6[v10[7]];
  *v16 = a4;
  *(v16 + 1) = a5;
  v17 = &a6[v10[8]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&a6[v10[9]] = 0;
  return result;
}

uint64_t sub_1D20A923C()
{
  v1 = *v0;
  v2 = 0x73776F646E6977;
  v3 = 0x6567617373656DLL;
  v4 = 0x7470697263736564;
  if (v1 != 4)
  {
    v4 = 0x727245646C656966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E5564696C6176;
  if (v1 != 1)
  {
    v5 = 0x6F724664696C6176;
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

uint64_t sub_1D20A9310@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D20AE068(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D20A9350(uint64_t a1)
{
  v2 = sub_1D20AD10C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20A938C(uint64_t a1)
{
  v2 = sub_1D20AD10C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EnergyWindows.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7310, &qword_1D2114A88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20AD10C();
  sub_1D2113F3C();
  v13 = *v3;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7318, &qword_1D2114A90);
  sub_1D20AD25C(&qword_1EE0836A8, &qword_1EE083D50, &protocol conformance descriptor for EnergyWindow, MEMORY[0x1E69E6300]);
  sub_1D2113DAC();
  if (!v2)
  {
    v9 = type metadata accessor for EnergyWindows(0);
    LOBYTE(v13) = 1;
    sub_1D211319C();
    sub_1D20AD1C8(&qword_1EE083DA0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D2113DAC();
    LOBYTE(v13) = 2;
    sub_1D2113DAC();
    LOBYTE(v13) = 3;
    sub_1D2113D8C();
    LOBYTE(v13) = 4;
    sub_1D2113D8C();
    v13 = *(v3 + *(v9 + 36));
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
    sub_1D20AD2F8(&qword_1EE083670, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D2113DAC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t EnergyWindows.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7328, &qword_1D2114AA0);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v34 - v8;
  v10 = type metadata accessor for EnergyWindows(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 20);
  v15 = sub_1D211319C();
  v16 = *(*(v15 - 8) + 56);
  v43 = v14;
  v16(&v13[v14], 1, 1, v15);
  v41 = *(v10 + 24);
  v42 = v10;
  v40 = v13;
  v16(&v13[v41], 1, 1, v15);
  v17 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D20AD10C();
  v37 = v9;
  v18 = v39;
  sub_1D2113F2C();
  if (v18)
  {
    v21 = v43;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v22 = v40;
    v23 = v41;
    sub_1D20A862C(v40 + v21, &qword_1EC6C7248, &qword_1D2114A80);
    return sub_1D20A862C(v22 + v23, &qword_1EC6C7248, &qword_1D2114A80);
  }

  else
  {
    v19 = v35;
    v20 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7318, &qword_1D2114A90);
    v45 = 0;
    sub_1D20AD25C(&qword_1EE084438, &qword_1EE084808, &protocol conformance descriptor for EnergyWindow, MEMORY[0x1E69E6330]);
    sub_1D2113D3C();
    v24 = v40;
    *v40 = v46;
    LOBYTE(v46) = 1;
    sub_1D20AD1C8(&qword_1EE084908, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1D2113D3C();
    sub_1D20AD058(v7, v24 + v43);
    LOBYTE(v46) = 2;
    sub_1D2113D3C();
    v25 = v24;
    sub_1D20AD058(v20, v24 + v41);
    LOBYTE(v46) = 3;
    v26 = sub_1D2113D1C();
    v27 = v42;
    v28 = (v25 + *(v42 + 28));
    *v28 = v26;
    v28[1] = v29;
    LOBYTE(v46) = 4;
    v30 = sub_1D2113D1C();
    v31 = (v25 + *(v27 + 32));
    *v31 = v30;
    v31[1] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
    v45 = 5;
    sub_1D20AD2F8(&qword_1EE084410, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D2113D3C();
    (*(v19 + 8))(v37, v38);
    *(v25 + *(v27 + 36)) = v46;
    sub_1D20AD3F0(v25, v34, type metadata accessor for EnergyWindows);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_1D20AD458(v25, type metadata accessor for EnergyWindows);
  }
}

uint64_t sub_1D20A9D7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);

  return sub_1D20ACFE8(v4, a2);
}

uint64_t EnergyWindow.rating.getter@<X0>(char *a1@<X8>)
{
  v3 = 1414743362;
  v4 = (v1 + *(type metadata accessor for EnergyWindow(0) + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = byte_1F4D9E180;
  v8 = 0xE600000000000000;
  v9 = 0x454355444552;
  if (byte_1F4D9E180 != 2)
  {
    v9 = 0x5453524F57;
    v8 = 0xE500000000000000;
  }

  v10 = 1146048327;
  if (!byte_1F4D9E180)
  {
    v10 = 1414743362;
  }

  if (byte_1F4D9E180 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (byte_1F4D9E180 <= 1u)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = v8;
  }

  if (v11 == v5 && v12 == v6)
  {
    goto LABEL_38;
  }

  v14 = sub_1D2113E2C();

  if (v14)
  {
    goto LABEL_39;
  }

  v7 = byte_1F4D9E181;
  if (byte_1F4D9E181 > 1u)
  {
    if (byte_1F4D9E181 == 2)
    {
      v17 = 0xE600000000000000;
      v16 = 0x454355444552;
    }

    else
    {
      v17 = 0xE500000000000000;
      v16 = 0x5453524F57;
    }
  }

  else
  {
    v16 = byte_1F4D9E181 ? 1146048327 : 1414743362;
    v17 = 0xE400000000000000;
  }

  if (v16 == v5 && v17 == v6)
  {
    goto LABEL_38;
  }

  v19 = sub_1D2113E2C();

  if (v19)
  {
    goto LABEL_39;
  }

  v7 = byte_1F4D9E182;
  if (byte_1F4D9E182 > 1u)
  {
    if (byte_1F4D9E182 == 2)
    {
      v20 = 0xE600000000000000;
      v21 = 0x454355444552;
    }

    else
    {
      v20 = 0xE500000000000000;
      v21 = 0x5453524F57;
    }
  }

  else
  {
    v20 = 0xE400000000000000;
    v21 = byte_1F4D9E182 ? 1146048327 : 1414743362;
  }

  if (v21 == v5 && v20 == v6)
  {
    goto LABEL_38;
  }

  v22 = sub_1D2113E2C();

  if (v22)
  {
    goto LABEL_39;
  }

  v7 = byte_1F4D9E183;
  if (byte_1F4D9E183 > 1u)
  {
    if (byte_1F4D9E183 == 2)
    {
      v23 = 0xE600000000000000;
      v3 = 0x454355444552;
    }

    else
    {
      v23 = 0xE500000000000000;
      v3 = 0x5453524F57;
    }
  }

  else
  {
    v23 = 0xE400000000000000;
    if (byte_1F4D9E183)
    {
      v3 = 1146048327;
    }
  }

  if (v3 == v5 && v23 == v6)
  {
LABEL_38:

    goto LABEL_39;
  }

  v24 = sub_1D2113E2C();

  if ((v24 & 1) == 0)
  {
    v7 = 3;
  }

LABEL_39:
  *a1 = v7;
  return result;
}

uint64_t EnergyWindowRating.rawValue.getter()
{
  v1 = 1414743362;
  v2 = 0x454355444552;
  if (*v0 != 2)
  {
    v2 = 0x5453524F57;
  }

  if (*v0)
  {
    v1 = 1146048327;
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

uint64_t EnergyWindow.start.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyWindow(0) + 28));

  return v1;
}

uint64_t EnergyWindow.end.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyWindow(0) + 32));

  return v1;
}

uint64_t sub_1D20AA154(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  if (v2 != 1)
  {
    v4 = 6581861;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E69746172;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7472617473;
  if (*a2 != 1)
  {
    v8 = 6581861;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E69746172;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2113E2C();
  }

  return v11 & 1;
}

uint64_t sub_1D20AA23C()
{
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D20AA2D0(uint64_t a1)
{
  sub_1D211375C();
}

uint64_t sub_1D20AA350(uint64_t a1)
{
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

unint64_t sub_1D20AA3E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D20AE27C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D20AA410(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7472617473;
  if (v2 != 1)
  {
    v5 = 6581861;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E69746172;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D20AA460()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69746172;
  }
}

unint64_t sub_1D20AA4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D20AE27C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D20AA4D4(uint64_t a1)
{
  v2 = sub_1D20AD39C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20AA510(uint64_t a1)
{
  v2 = sub_1D20AD39C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EnergyWindow.init(start:end:rating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v29 - v18;
  v20 = type metadata accessor for EnergyWindow(0);
  v21 = (a7 + v20[7]);
  *v21 = a1;
  v21[1] = a2;
  v22 = (a7 + v20[8]);
  v29[1] = a3;
  *v22 = a3;
  v22[1] = a4;
  v23 = (a7 + v20[6]);
  *v23 = a5;
  v23[1] = a6;
  v24 = qword_1EE084100;

  v29[2] = a4;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_1D21130CC();
  __swift_project_value_buffer(v25, qword_1EE0874F0);
  sub_1D21130BC();

  v26 = sub_1D211319C();
  v27 = *(*(v26 - 8) + 56);
  v27(v19, 0, 1, v26);
  sub_1D20A84BC(v19, a7);
  sub_1D21130BC();

  v27(v17, 0, 1, v26);
  return sub_1D20A84BC(v17, a7 + v20[5]);
}

uint64_t EnergyWindow.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7330, &qword_1D2114AA8);
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - v9;
  v11 = type metadata accessor for EnergyWindow(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20AD39C();
  v14 = v50;
  sub_1D2113F2C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45 = v7;
  v46 = v13;
  v15 = v49;
  v50 = a1;
  v53 = 1;
  v16 = v10;
  v17 = sub_1D2113D4C();
  v19 = v11;
  v20 = v46;
  v21 = &v46[*(v11 + 28)];
  v22 = v17;
  *v21 = v17;
  v21[1] = v23;
  v52 = 2;
  v24 = v23;
  v25 = sub_1D2113D4C();
  v43 = v24;
  v44 = v22;
  v26 = (v20 + v19[8]);
  *v26 = v25;
  v26[1] = v27;
  v51 = 0;
  v28 = v25;
  v29 = v27;
  v30 = sub_1D2113D4C();
  v40[0] = v29;
  v40[1] = v28;
  v41 = v16;
  v42 = v8;
  v32 = (v20 + v19[6]);
  *v32 = v30;
  v32[1] = v31;
  if (qword_1EE084100 != -1)
  {
    swift_once();
  }

  v33 = sub_1D21130CC();
  __swift_project_value_buffer(v33, qword_1EE0874F0);
  sub_1D21130BC();
  v34 = v48;
  v35 = sub_1D211319C();
  v36 = v45;
  v37 = v35;
  v44 = *(*(v35 - 8) + 56);
  v44(v45, 0, 1);
  sub_1D20A84BC(v36, v46);
  sub_1D21130BC();
  v38 = v47;
  (*(v15 + 8))(v41, v42);
  (v44)(v34, 0, 1, v37);
  v39 = v46;
  sub_1D20A84BC(v34, &v46[v19[5]]);
  sub_1D20AD3F0(v39, v38, type metadata accessor for EnergyWindow);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_1D20AD458(v39, type metadata accessor for EnergyWindow);
}

uint64_t EnergyWindow.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7338, &qword_1D2114AB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20AD39C();
  sub_1D2113F3C();
  type metadata accessor for EnergyWindow(0);
  v8[15] = 1;
  sub_1D2113DBC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 2;
  sub_1D2113DBC();
  v8[13] = 0;
  sub_1D2113DBC();
  return (*(v4 + 8))(v6, v3);
}

HomeServices::EnergyWindowRating_optional __swiftcall EnergyWindowRating.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2113D0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D20AAE98()
{
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D20AAF44(uint64_t a1)
{
  sub_1D211375C();
}

uint64_t sub_1D20AAFDC(uint64_t a1)
{
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

void sub_1D20AB090(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1414743362;
  v4 = 0xE600000000000000;
  v5 = 0x454355444552;
  if (*v1 != 2)
  {
    v5 = 0x5453524F57;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1146048327;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D20AB1E4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D21133BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkError(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D20AD3F0(v2, v10, type metadata accessor for NetworkError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        *a1 = xmmword_1D2114A40;
        type metadata accessor for HSGuidanceError(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (qword_1EE083DD8 != -1)
      {
        swift_once();
      }

      v26 = sub_1D211362C();
      __swift_project_value_buffer(v26, qword_1EE0874A8);
      v18 = sub_1D21135FC();
      v27 = sub_1D2113A7C();
      if (os_log_type_enabled(v18, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1D209F000, v18, v27, "Network Error: Response Decoding Error", v28, 2u);
        MEMORY[0x1D3896EB0](v28, -1, -1);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (qword_1EE083DD8 != -1)
      {
        swift_once();
      }

      v17 = sub_1D211362C();
      __swift_project_value_buffer(v17, qword_1EE0874A8);
      v18 = sub_1D21135FC();
      v19 = sub_1D2113A7C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D209F000, v18, v19, "Network Error: Cannot Find Host", v20, 2u);
        MEMORY[0x1D3896EB0](v20, -1, -1);
      }
    }

    else
    {
      if (qword_1EE083DD8 != -1)
      {
        swift_once();
      }

      v37 = sub_1D211362C();
      __swift_project_value_buffer(v37, qword_1EE0874A8);
      v18 = sub_1D21135FC();
      v38 = sub_1D2113A7C();
      if (os_log_type_enabled(v18, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1D209F000, v18, v38, "Network Error: Data Unavailable", v39, 2u);
        MEMORY[0x1D3896EB0](v39, -1, -1);
      }
    }

    goto LABEL_42;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v29 = *v10;
      if (qword_1EE083DD8 != -1)
      {
        swift_once();
      }

      v30 = sub_1D211362C();
      __swift_project_value_buffer(v30, qword_1EE0874A8);
      v31 = sub_1D21135FC();
      v32 = sub_1D2113A7C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        sub_1D20AD674();
        swift_allocError();
        *v35 = v29;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v36;
        *v34 = v36;
        _os_log_impl(&dword_1D209F000, v31, v32, "Network Error: Internal Failure %@", v33, 0xCu);
        sub_1D20A862C(v34, &qword_1EC6C7950, qword_1D21153D0);
        MEMORY[0x1D3896EB0](v34, -1, -1);
        MEMORY[0x1D3896EB0](v33, -1, -1);
      }

      *a1 = 2 * (v29 > 1);
      type metadata accessor for HSGuidanceError(0);
    }

    else
    {
      v12 = *(v5 + 32);
      v12(v7, v10, v4);
      if (qword_1EE083DD8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D211362C();
      __swift_project_value_buffer(v13, qword_1EE0874A8);
      v14 = sub_1D21135FC();
      v15 = sub_1D2113A7C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1D209F000, v14, v15, "Network Error: URL Network Error", v16, 2u);
        MEMORY[0x1D3896EB0](v16, -1, -1);
      }

      v12(a1, v7, v4);
      type metadata accessor for HSGuidanceError(0);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (qword_1EE083DD8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D211362C();
    __swift_project_value_buffer(v40, qword_1EE0874A8);
    v18 = sub_1D21135FC();
    v41 = sub_1D2113A7C();
    if (os_log_type_enabled(v18, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D209F000, v18, v41, "Network Error: Not Connected to Internet", v42, 2u);
      MEMORY[0x1D3896EB0](v42, -1, -1);
    }

LABEL_42:

    type metadata accessor for HSGuidanceError(0);
    return swift_storeEnumTagMultiPayload();
  }

  v21 = *v10;
  if (qword_1EE083DD8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D211362C();
  __swift_project_value_buffer(v22, qword_1EE0874A8);
  v23 = sub_1D21135FC();
  v24 = sub_1D2113A7C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D209F000, v23, v24, "Network Error: Server Failure", v25, 2u);
    MEMORY[0x1D3896EB0](v25, -1, -1);
  }

  *a1 = v21;
  type metadata accessor for HSGuidanceError(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t NetworkError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1D21133BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NetworkError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D20AD3F0(v1, v8, type metadata accessor for NetworkError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD00000000000002ALL;
      }

      else
      {
        return 0xD00000000000003ALL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000038;
    }

    else
    {
      return 0xD000000000000020;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return 0xD00000000000002ELL;
      }

      v12 = *v8;
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1D2113C2C();
      MEMORY[0x1D38961A0](0xD000000000000035, 0x80000001D211A320);
      v17 = v12;
      v13 = sub_1D2113E0C();
      MEMORY[0x1D38961A0](v13);

      MEMORY[0x1D38961A0](46, 0xE100000000000000);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v5, v8, v2);
        v19 = 0;
        v20 = 0xE000000000000000;
        sub_1D2113C2C();
        MEMORY[0x1D38961A0](0xD000000000000023, 0x80000001D211A490);
        sub_1D2113CBC();
        MEMORY[0x1D38961A0](46, 0xE100000000000000);
        v10 = v19;
        (*(v3 + 8))(v5, v2);
        return v10;
      }

      v14 = *v8;
      v19 = 0xD00000000000003ELL;
      v20 = 0x80000001D211A360;
      if (v14)
      {
        if (v14 == 1)
        {
          v15 = "LocalizedDescription ";
          v16 = 0xD000000000000032;
        }

        else
        {
          v15 = "trying to process the request.";
          v16 = 0xD000000000000027;
        }
      }

      else
      {
        v16 = 0xD00000000000002BLL;
        v15 = "ponse from server.";
      }

      v17 = 0;
      v18 = 0xE000000000000000;
      sub_1D2113C2C();

      v17 = 0xD000000000000015;
      v18 = 0x80000001D211A3D0;
      MEMORY[0x1D38961A0](v16, v15 | 0x8000000000000000);

      MEMORY[0x1D38961A0](v17, v18);
    }

    return v19;
  }
}

unint64_t NetworkInternalError.errorDescription.getter()
{
  v1 = 0xD000000000000027;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000032;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

uint64_t NetworkInternalError.hashValue.getter()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D20ABE88()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D20ABED0(uint64_t a1)
{
  v2 = *v1;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v2);
  return sub_1D2113F1C();
}

unint64_t sub_1D20ABF14()
{
  v1 = 0xD000000000000027;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000032;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

BOOL _s12HomeServices12NetworkErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D21133BC();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NetworkError(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7380, &qword_1D21151E0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  sub_1D20AD3F0(a1, &v29 - v18, type metadata accessor for NetworkError);
  sub_1D20AD3F0(a2, &v19[v20], type metadata accessor for NetworkError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_27;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_27;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_27;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D20AD3F0(v19, v10, type metadata accessor for NetworkError);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_27;
      }

      v22 = *v10 == *&v19[v20];
      goto LABEL_18;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_27;
    }

LABEL_25:
    sub_1D20AD458(v19, type metadata accessor for NetworkError);
    return 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D20AD3F0(v19, v13, type metadata accessor for NetworkError);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_27;
    }

    v22 = *v13 == v19[v20];
LABEL_18:
    v23 = v22;
    sub_1D20AD458(v19, type metadata accessor for NetworkError);
    return v23;
  }

  sub_1D20AD3F0(v19, v15, type metadata accessor for NetworkError);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v29 + 8))(v15, v30);
LABEL_27:
    sub_1D20A862C(v19, &qword_1EC6C7380, &qword_1D21151E0);
    return 0;
  }

  v26 = v29;
  v25 = v30;
  (*(v29 + 32))(v6, &v19[v20], v30);
  sub_1D20AD1C8(&qword_1EE0843C8, MEMORY[0x1E6969BF8], MEMORY[0x1E6969C08]);
  sub_1D211396C();
  sub_1D211396C();
  v27 = *(v26 + 8);
  v27(v6, v25);
  v28 = v32 == v31;
  v27(v15, v25);
  sub_1D20AD458(v19, type metadata accessor for NetworkError);
  return v28;
}

uint64_t _s12HomeServices13EnergyWindowsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D211319C();
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7388, &qword_1D21151E8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v53[-v16];
  v18 = *a1;
  v19 = *a2;
  if (*a1)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = sub_1D20FCF6C(v18, v19);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v21 = type metadata accessor for EnergyWindows(0);
  v22 = a1;
  v56 = v21;
  v57 = a1;
  v23 = *(v21 + 20);
  v24 = *(v12 + 48);
  sub_1D20ACFE8(v22 + v23, v17);
  sub_1D20ACFE8(a2 + v23, &v17[v24]);
  v25 = *(v59 + 48);
  if (v25(v17, 1, v4) == 1)
  {
    if (v25(&v17[v24], 1, v4) == 1)
    {
      v55 = a2;
      sub_1D20A862C(v17, &qword_1EC6C7248, &qword_1D2114A80);
      goto LABEL_13;
    }

LABEL_11:
    v26 = v17;
LABEL_19:
    sub_1D20A862C(v26, &qword_1EC6C7388, &qword_1D21151E8);
    return 0;
  }

  sub_1D20ACFE8(v17, v11);
  if (v25(&v17[v24], 1, v4) == 1)
  {
    (*(v59 + 8))(v11, v4);
    goto LABEL_11;
  }

  v55 = a2;
  v27 = v59;
  (*(v59 + 32))(v6, &v17[v24], v4);
  sub_1D20AD1C8(&qword_1EE0843D8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v54 = sub_1D21137AC();
  v28 = *(v27 + 8);
  v28(v6, v4);
  v28(v11, v4);
  sub_1D20A862C(v17, &qword_1EC6C7248, &qword_1D2114A80);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v29 = v56;
  v30 = v56[6];
  v31 = *(v12 + 48);
  sub_1D20ACFE8(v57 + v30, v15);
  v32 = v55 + v30;
  v33 = v55;
  sub_1D20ACFE8(v32, &v15[v31]);
  if (v25(v15, 1, v4) != 1)
  {
    v34 = v58;
    sub_1D20ACFE8(v15, v58);
    if (v25(&v15[v31], 1, v4) != 1)
    {
      v36 = v59;
      (*(v59 + 32))(v6, &v15[v31], v4);
      sub_1D20AD1C8(&qword_1EE0843D8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v37 = sub_1D21137AC();
      v38 = *(v36 + 8);
      v38(v6, v4);
      v38(v34, v4);
      sub_1D20A862C(v15, &qword_1EC6C7248, &qword_1D2114A80);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_23;
    }

    (*(v59 + 8))(v34, v4);
    goto LABEL_18;
  }

  if (v25(&v15[v31], 1, v4) != 1)
  {
LABEL_18:
    v26 = v15;
    goto LABEL_19;
  }

  sub_1D20A862C(v15, &qword_1EC6C7248, &qword_1D2114A80);
LABEL_23:
  v39 = v29[7];
  v40 = v57;
  v41 = (v57 + v39);
  v42 = *(v57 + v39 + 8);
  v43 = (v33 + v39);
  v44 = v43[1];
  if (v42)
  {
    if (!v44 || (*v41 != *v43 || v42 != v44) && (sub_1D2113E2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v45 = v29[8];
  v46 = (v40 + v45);
  v47 = *(v40 + v45 + 8);
  v48 = (v33 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49 || (*v46 != *v48 || v47 != v49) && (sub_1D2113E2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  v50 = v29[9];
  v51 = *(v40 + v50);
  v52 = *(v33 + v50);
  if (v51)
  {
    if (v52 && (sub_1D20FD114(v51, v52) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v52)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12HomeServices12EnergyWindowV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211319C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7388, &qword_1D21151E8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v51[-v17];
  v19 = *(v16 + 48);
  v57 = a1;
  sub_1D20ACFE8(a1, &v51[-v17]);
  sub_1D20ACFE8(a2, &v18[v19]);
  v20 = *(v5 + 48);
  if (v20(v18, 1, v4) == 1)
  {
    if (v20(&v18[v19], 1, v4) == 1)
    {
      v53 = v5;
      v54 = a2;
      sub_1D20A862C(v18, &qword_1EC6C7248, &qword_1D2114A80);
      goto LABEL_8;
    }

LABEL_6:
    v21 = v18;
LABEL_14:
    sub_1D20A862C(v21, &qword_1EC6C7388, &qword_1D21151E8);
    goto LABEL_15;
  }

  sub_1D20ACFE8(v18, v11);
  if (v20(&v18[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  v54 = a2;
  v22 = *(v5 + 32);
  v23 = v5;
  v24 = v56;
  v22(v56, &v18[v19], v4);
  sub_1D20AD1C8(&qword_1EE0843D8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v52 = sub_1D21137AC();
  v53 = v23;
  v25 = *(v23 + 8);
  v25(v24, v4);
  v25(v11, v4);
  sub_1D20A862C(v18, &qword_1EC6C7248, &qword_1D2114A80);
  if ((v52 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v26 = type metadata accessor for EnergyWindow(0);
  v27 = v26[5];
  v28 = *(v12 + 48);
  v29 = v57;
  sub_1D20ACFE8(v57 + v27, v15);
  v30 = v54 + v27;
  v31 = v54;
  sub_1D20ACFE8(v30, &v15[v28]);
  if (v20(v15, 1, v4) != 1)
  {
    v32 = v55;
    sub_1D20ACFE8(v15, v55);
    if (v20(&v15[v28], 1, v4) == 1)
    {
      (*(v53 + 8))(v32, v4);
      goto LABEL_13;
    }

    v35 = v53;
    v36 = v56;
    (*(v53 + 32))(v56, &v15[v28], v4);
    sub_1D20AD1C8(&qword_1EE0843D8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v37 = sub_1D21137AC();
    v38 = *(v35 + 8);
    v38(v36, v4);
    v38(v32, v4);
    sub_1D20A862C(v15, &qword_1EC6C7248, &qword_1D2114A80);
    if (v37)
    {
      goto LABEL_18;
    }

LABEL_15:
    v33 = 0;
    return v33 & 1;
  }

  if (v20(&v15[v28], 1, v4) != 1)
  {
LABEL_13:
    v21 = v15;
    goto LABEL_14;
  }

  sub_1D20A862C(v15, &qword_1EC6C7248, &qword_1D2114A80);
LABEL_18:
  v39 = v26[6];
  v40 = *(v29 + v39);
  v41 = *(v29 + v39 + 8);
  v42 = (v31 + v39);
  if ((v40 != *v42 || v41 != v42[1]) && (sub_1D2113E2C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v43 = v26[7];
  v44 = *(v29 + v43);
  v45 = *(v29 + v43 + 8);
  v46 = (v31 + v43);
  if ((v44 != *v46 || v45 != v46[1]) && (sub_1D2113E2C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v47 = v26[8];
  v48 = *(v29 + v47);
  v49 = *(v29 + v47 + 8);
  v50 = (v31 + v47);
  if (v48 == *v50 && v49 == v50[1])
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_1D2113E2C();
  }

  return v33 & 1;
}

uint64_t sub_1D20ACFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20AD058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
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

unint64_t sub_1D20AD10C()
{
  result = qword_1EE084758[0];
  if (!qword_1EE084758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE084758);
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

uint64_t sub_1D20AD1C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_1D20AD25C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7318, &qword_1D2114A90);
    sub_1D20AD1C8(a2, type metadata accessor for EnergyWindow, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D20AD2F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7320, &qword_1D2114A98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1D20AD39C()
{
  result = qword_1EE084820;
  if (!qword_1EE084820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084820);
  }

  return result;
}

uint64_t sub_1D20AD3F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D20AD458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D20AD4D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D20AD514()
{
  result = qword_1EC6C7340;
  if (!qword_1EC6C7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7340);
  }

  return result;
}

unint64_t sub_1D20AD56C()
{
  result = qword_1EC6C7348;
  if (!qword_1EC6C7348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7350, &qword_1D2114C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7348);
  }

  return result;
}

unint64_t sub_1D20AD61C()
{
  result = qword_1EC6C7358;
  if (!qword_1EC6C7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7358);
  }

  return result;
}

unint64_t sub_1D20AD674()
{
  result = qword_1EC6C7360;
  if (!qword_1EC6C7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7360);
  }

  return result;
}

void sub_1D20AD700(uint64_t a1)
{
  sub_1D20AD88C(319, &qword_1EE084430, &qword_1EC6C7318, &qword_1D2114A90);
  if (v1 <= 0x3F)
  {
    sub_1D20AD7E4(319);
    if (v2 <= 0x3F)
    {
      sub_1D20AD83C();
      if (v3 <= 0x3F)
      {
        sub_1D20AD88C(319, &qword_1EE084408, &qword_1EC6C7320, &qword_1D2114A98);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D20AD7E4(uint64_t a1)
{
  if (!qword_1EE084900)
  {
    sub_1D211319C();
    v1 = sub_1D2113B0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE084900);
    }
  }
}

void sub_1D20AD83C()
{
  if (!qword_1EE084918)
  {
    v0 = sub_1D2113B0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE084918);
    }
  }
}

void sub_1D20AD88C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1D2113B0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D20AD908(uint64_t a1)
{
  sub_1D20AD7E4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for EnergyWindowRating(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnergyWindowRating(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D20ADB34(uint64_t a1)
{
  result = sub_1D21133BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalGridSignal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalGridSignal.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnergyWindows.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnergyWindows.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D20ADE5C()
{
  result = qword_1EC6C7368;
  if (!qword_1EC6C7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7368);
  }

  return result;
}

unint64_t sub_1D20ADEB4()
{
  result = qword_1EC6C7370;
  if (!qword_1EC6C7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7370);
  }

  return result;
}

unint64_t sub_1D20ADF0C()
{
  result = qword_1EE084810;
  if (!qword_1EE084810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084810);
  }

  return result;
}

unint64_t sub_1D20ADF64()
{
  result = qword_1EE084818;
  if (!qword_1EE084818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084818);
  }

  return result;
}

unint64_t sub_1D20ADFBC()
{
  result = qword_1EE084748;
  if (!qword_1EE084748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084748);
  }

  return result;
}

unint64_t sub_1D20AE014()
{
  result = qword_1EE084750;
  if (!qword_1EE084750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084750);
  }

  return result;
}

uint64_t sub_1D20AE068(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73776F646E6977 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E5564696C6176 && a2 == 0xEA00000000006C69 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F724664696C6176 && a2 == 0xE90000000000006DLL || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D2113E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x727245646C656966 && a2 == 0xEB0000000073726FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1D20AE27C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D2113D0C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D20AE2C8()
{
  result = qword_1EC6C7378;
  if (!qword_1EC6C7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7378);
  }

  return result;
}

uint64_t sub_1D20AE33C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  MEMORY[0x1EEE9AC00](v2);
  v92 = &v84[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = &v84[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v84[-v7];
  v8 = sub_1D211319C();
  v85 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v94 = &v84[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v91 = &v84[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v106 = &v84[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v84[-v15];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0) - 8;
  MEMORY[0x1EEE9AC00](v110);
  v17 = &v84[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v19 = (v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84[-v20];
  v89 = sub_1D20AEF10();
  v112 = MEMORY[0x1E69E7CC0];
  sub_1D20DC814(0, v89 & ~(v89 >> 63), 0);
  v109 = v112;
  sub_1D20A8580(a1, v17, &qword_1EC6C7240, &unk_1D21149B0);
  v22 = &v21[v19[13]];
  v93 = v2;
  v23 = *(v2 + 48);
  v25 = v85 + 32;
  v24 = *(v85 + 32);
  v26 = v17;
  v24((v22 + v23), v17, v8);
  v27 = v110;
  v28 = *(v110 + 44);
  v98 = v19[11];
  v102 = v24;
  v103 = v25;
  v24(&v21[v98], &v26[v28], v8);
  v29 = *&v26[*(v27 + 48)];
  v30 = v89;
  v90 = v19[12];
  *&v21[v90] = v29;
  v31 = *(v85 + 16);
  v107 = v23;
  v100 = v85 + 16;
  v101 = v21;
  v99 = v31;
  result = (v31)(v21, v22 + v23, v8);
  *v22 = 0;
  v108 = v22;
  *(v22 + 8) = 0;
  if ((v30 & 0x8000000000000000) == 0)
  {
    v110 = v8;
    if (v30)
    {
      v33 = 0;
      v105 = (v85 + 8);
      v86 = (v85 + 40);
      v88 = (v85 + 56);
      v87 = (v85 + 48);
      while (1)
      {
        v97 = v33;
        v34 = v94;
        v99(v94, v108 + v107, v8);
        sub_1D20AFF6C(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        if (v29 <= 0.0)
        {
          v48 = sub_1D211379C();
          v36 = v95;
          if (v48)
          {
LABEL_8:
            v45 = *v105;
            (*v105)(v34, v8);
            v47 = 1;
            goto LABEL_9;
          }
        }

        else
        {
          v35 = sub_1D211378C();
          v36 = v95;
          if (v35)
          {
            goto LABEL_8;
          }
        }

        v37 = v108;
        v38 = v92;
        sub_1D20A8580(v108, v92, &qword_1EC6C7278, &unk_1D2115720);
        v39 = *(v93 + 48);
        sub_1D20AFF6C(&qword_1EC6C7288, MEMORY[0x1E6969530], MEMORY[0x1E6969560]);
        v40 = v91;
        v36 = v95;
        v41 = sub_1D2113B1C();
        v43 = v42;
        v44 = &v38[v39];
        v45 = *v105;
        (*v105)(v44, v110);
        *v37 = v41;
        *(v37 + 8) = v43 & 1;
        v46 = v37 + v107;
        v8 = v110;
        (*v86)(v46, v40, v110);
        v102(v36, v94, v8);
        v47 = 0;
LABEL_9:
        (*v88)(v36, v47, 1, v8);
        result = (*v87)(v36, 1, v8);
        if (result == 1)
        {
          goto LABEL_31;
        }

        v49 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
        [v49 setFormatOptions_];
        v50 = sub_1D21130EC();
        v51 = [v49 stringFromDate_];

        v52 = sub_1D21137CC();
        v54 = v53;

        do
        {
          *v111 = 0;
          MEMORY[0x1D3896EC0](v111, 8);
          v55 = 16777217 * v111[0];
        }

        while (v55 < 0xFFFF01);
        v45(v36, v8);
        v56 = v109;
        v112 = v109;
        v58 = *(v109 + 16);
        v57 = *(v109 + 24);
        v59 = v97;
        if (v58 >= v57 >> 1)
        {
          v109 = v54;
          sub_1D20DC814((v57 > 1), v58 + 1, 1);
          v54 = v109;
          v56 = v112;
        }

        v33 = (v59 + 1);
        *(v56 + 16) = v58 + 1;
        v109 = v56;
        v60 = v56 + 24 * v58;
        *(v60 + 32) = v52;
        *(v60 + 40) = v54;
        *(v60 + 48) = vcvts_n_f32_u64(HIDWORD(v55), 0x18uLL) + -1.0;
        v61 = v106;
        if (v33 == v89)
        {
          goto LABEL_17;
        }
      }
    }

    v61 = v106;
LABEL_17:
    v105 = (v85 + 8);
    v97 = (v85 + 56);
    v94 = (v85 + 40);
    v95 = (v85 + 48);
    while (1)
    {
      v99(v61, v108 + v107, v8);
      sub_1D20AFF6C(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v62 = v96;
      if (v29 <= 0.0)
      {
        if ((sub_1D211379C() & 1) == 0)
        {
LABEL_20:
          v63 = v108;
          v64 = v92;
          sub_1D20A8580(v108, v92, &qword_1EC6C7278, &unk_1D2115720);
          v65 = *(v93 + 48);
          sub_1D20AFF6C(&qword_1EC6C7288, MEMORY[0x1E6969530], MEMORY[0x1E6969560]);
          v66 = v91;
          v67 = sub_1D2113B1C();
          v69 = v68;
          v70 = *v105;
          (*v105)(&v64[v65], v110);
          *v63 = v67;
          *(v63 + 8) = v69 & 1;
          v71 = v63 + v107;
          v8 = v110;
          (*v94)(v71, v66, v110);
          v102(v62, v106, v8);
          v72 = 0;
          goto LABEL_23;
        }
      }

      else if ((sub_1D211378C() & 1) == 0)
      {
        goto LABEL_20;
      }

      v70 = *v105;
      (*v105)(v61, v8);
      v72 = 1;
LABEL_23:
      (*v97)(v62, v72, 1, v8);
      if ((*v95)(v62, 1, v8) == 1)
      {
        sub_1D20A862C(v101, &qword_1EC6C7280, &qword_1D21149E0);
        sub_1D20A862C(v62, &qword_1EC6C7248, &qword_1D2114A80);
        return v109;
      }

      v102(v104, v62, v8);
      v73 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v73 setFormatOptions_];
      v74 = sub_1D21130EC();
      v75 = [v73 stringFromDate_];

      v76 = sub_1D21137CC();
      v78 = v77;

      do
      {
        *v111 = 0;
        MEMORY[0x1D3896EC0](v111, 8);
        v79 = 16777217 * v111[0];
      }

      while (v79 < 0xFFFF01);
      v70(v104, v8);
      v80 = v109;
      v112 = v109;
      v82 = *(v109 + 16);
      v81 = *(v109 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_1D20DC814((v81 > 1), v82 + 1, 1);
        v80 = v112;
      }

      *(v80 + 16) = v82 + 1;
      v109 = v80;
      v83 = v80 + 24 * v82;
      *(v83 + 32) = v76;
      *(v83 + 40) = v78;
      *(v83 + 48) = vcvts_n_f32_u64(HIDWORD(v79), 0x18uLL) + -1.0;
      v61 = v106;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D20AEF10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  MEMORY[0x1EEE9AC00](v0);
  v49 = &v42 - v1;
  v2 = sub_1D211319C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v57 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0) - 8);
  MEMORY[0x1EEE9AC00](v57);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v14 = (v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  sub_1D20A8580(v56, v12, &qword_1EC6C7240, &unk_1D21149B0);
  v42 = &v16[v14[13]];
  v17 = *(v0 + 48);
  v50 = v0;
  v51 = v17;
  v18 = *(v3 + 32);
  v18(&v42[v17], v12, v2);
  v19 = *(v57 + 11);
  v56 = v14[11];
  v45 = v18;
  v46 = v3 + 32;
  v18(&v16[v56], &v12[v19], v2);
  v20 = v14[12];
  v21 = v42;
  v22 = v51;
  v23 = *&v12[*(v57 + 12)];
  v44 = v20;
  *&v16[v20] = v23;
  v24 = *(v3 + 16);
  v3 += 16;
  v55 = v24;
  v24(v16, v21 + v22, v2);
  v25 = 0;
  *v21 = 0;
  *(v21 + 8) = 0;
  v43 = (v3 + 24);
  v53 = (v3 + 40);
  v54 = (v3 - 8);
  v52 = (v3 + 32);
  v57 = v16;
  v47 = v3;
  do
  {
    v55(v7, v21 + v22, v2);
    sub_1D20AFF6C(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    if (v23 <= 0.0)
    {
      if ((sub_1D211379C() & 1) == 0)
      {
LABEL_4:
        v26 = v7;
        v27 = v49;
        sub_1D20A8580(v21, v49, &qword_1EC6C7278, &unk_1D2115720);
        v28 = v21;
        v29 = *(v50 + 48);
        sub_1D20AFF6C(&qword_1EC6C7288, MEMORY[0x1E6969530], MEMORY[0x1E6969560]);
        v30 = v10;
        v31 = v48;
        v32 = sub_1D2113B1C();
        v34 = v33;
        v35 = v27 + v29;
        v7 = v26;
        (*v54)(v35, v2);
        *v28 = v32;
        v36 = v34 & 1;
        v21 = v28;
        v22 = v51;
        *(v21 + 8) = v36;
        v37 = v31;
        v10 = v30;
        (*v43)(v21 + v22, v37, v2);
        v45(v30, v26, v2);
        v38 = 0;
        goto LABEL_7;
      }
    }

    else if ((sub_1D211378C() & 1) == 0)
    {
      goto LABEL_4;
    }

    (*v54)(v7, v2);
    v38 = 1;
LABEL_7:
    (*v53)(v10, v38, 1, v2);
    v39 = (*v52)(v10, 1, v2);
    sub_1D20A862C(v10, &qword_1EC6C7248, &qword_1D2114A80);
    if (v39 == 1)
    {
      goto LABEL_11;
    }
  }

  while (!__OFADD__(v25++, 1));
  __break(1u);
LABEL_11:
  sub_1D20A862C(v57, &qword_1EC6C7280, &qword_1D21149E0);
  return v25;
}

unint64_t sub_1D20AF498()
{
  v0 = sub_1D21133BC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D21133DC();
  v38 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v29 - v4;
  v6 = sub_1D211319C();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  sub_1D2112ADC();
  v14 = sub_1D2112F9C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D20A862C(v13, &qword_1EC6C7250, &qword_1D21149C0);
LABEL_7:
    sub_1D211339C();
    v21 = sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
    sub_1D20AFF6C(&qword_1EE0843C0, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1D2112EDC();
    sub_1D21133CC();
    (*(v38 + 8))(v3, v1);
    swift_willThrow();
    return v21;
  }

  sub_1D20D912C(0x644964697267, 0xE600000000000000);
  v17 = v16;
  (*(v15 + 8))(v13, v14);
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = v31;
  sub_1D211317C();
  sub_1D21130DC();
  v19 = v33;
  v20 = v34;
  v21 = v33 + 16;
  v22 = *(v33 + 16);
  v22(v5, v18, v34);
  v23 = v30;
  v22(&v5[*(v30 + 36)], v9, v20);
  *&v5[*(v23 + 40)] = 0x4072C00000000000;
  v24 = v32;
  v25 = sub_1D20AE33C(v5);
  sub_1D20A862C(v5, &qword_1EC6C7240, &unk_1D21149B0);
  v26 = *(v19 + 8);
  v26(v9, v20);
  sub_1D2112B7C();
  swift_allocObject();
  sub_1D2112B6C();
  v35 = xmmword_1D21151F0;
  v36 = 0;
  v37 = v25;
  sub_1D20AFF18();
  v27 = sub_1D2112B5C();
  if (!v24)
  {
    v21 = v27;
  }

  v26(v18, v20);

  return v21;
}

unint64_t sub_1D20AF9D8()
{
  v0 = sub_1D21133BC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D21133DC();
  v41 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v31 - v4;
  v6 = sub_1D211319C();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  sub_1D2112ADC();
  v14 = sub_1D2112F9C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D20A862C(v13, &qword_1EC6C7250, &qword_1D21149C0);
LABEL_7:
    sub_1D211339C();
    v21 = sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
    sub_1D20AFF6C(&qword_1EE0843C0, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1D2112EDC();
    sub_1D21133CC();
    (*(v41 + 8))(v3, v1);
    swift_willThrow();
    return v21;
  }

  sub_1D20D912C(0x644964697267, 0xE600000000000000);
  v17 = v16;
  (*(v15 + 8))(v13, v14);
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = v33;
  sub_1D211317C();
  sub_1D21130DC();
  v20 = v35;
  v19 = v36;
  v21 = v35 + 16;
  v22 = *(v35 + 16);
  v22(v5, v18, v36);
  v23 = v32;
  v22(&v5[*(v32 + 36)], v9, v19);
  *&v5[*(v23 + 40)] = 0x4072C00000000000;
  v24 = v34;
  v25 = sub_1D20AE33C(v5);
  v26 = v5;
  v27 = v25;
  sub_1D20A862C(v26, &qword_1EC6C7240, &unk_1D21149B0);
  v28 = *(v20 + 8);
  v28(v9, v19);
  sub_1D2112B7C();
  swift_allocObject();
  sub_1D2112B6C();
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = v27;
  sub_1D20AFF18();
  v29 = sub_1D2112B5C();
  if (!v24)
  {
    v21 = v29;
  }

  v28(v18, v19);

  return v21;
}

unint64_t sub_1D20AFF18()
{
  result = qword_1EC6C7390;
  if (!qword_1EC6C7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7390);
  }

  return result;
}

uint64_t sub_1D20AFF6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MockErrorURLResponder.respond(to:)()
{
  v0 = sub_1D21133BC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D21133DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D211337C();
  sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
  sub_1D20B3268(&qword_1EE0843C0, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
  sub_1D2112EDC();
  sub_1D21133CC();
  (*(v2 + 8))(v4, v1);
  return swift_willThrow();
}

uint64_t sub_1D20B0138()
{
  v0 = sub_1D21133BC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D21133DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D211337C();
  sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
  sub_1D20B3268(&qword_1EE0843C0, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
  sub_1D2112EDC();
  sub_1D21133CC();
  (*(v2 + 8))(v4, v1);
  return swift_willThrow();
}

uint64_t sub_1D20B02D4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_1D211335C();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D21130AC();
  v5 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D211308C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D211306C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D211307C();
  MEMORY[0x1EEE9AC00](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x1E6969358], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x1E6969370], v8);
  (*(v5 + 104))(v21, *MEMORY[0x1E6969380], v27);
  sub_1D211332C();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_1D211309C();
  }

  return result;
}

uint64_t static MockEnergyIntervalDataGenerator.windowRatings(grid:fromDate:endDate:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = sub_1D20B0CE4(a1, a2);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D211319C();
    v15 = *(*(v14 - 8) + 56);
    v15(v11, 1, 1, v14);
    v15(v9, 1, 1, v14);
    v16 = type metadata accessor for EnergyWindows(0);
    v17 = v16[5];
    v15(a3 + v17, 1, 1, v14);
    v18 = v16[6];
    v15(a3 + v18, 1, 1, v14);
    *a3 = v13;
    sub_1D20AD058(v11, a3 + v17);
    sub_1D20AD058(v9, a3 + v18);
    v19 = (a3 + v16[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (a3 + v16[8]);
    *v20 = 0;
    v20[1] = 0;
    *(a3 + v16[9]) = 0;
    return (*(*(v16 - 1) + 56))(a3, 0, 1, v16);
  }

  else
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v22 = sub_1D211362C();
    __swift_project_value_buffer(v22, qword_1EE0874C0);
    v23 = sub_1D21135FC();
    v24 = sub_1D2113A7C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D209F000, v23, v24, "Unable to generate Mock Energy Intervals", v25, 2u);
      MEMORY[0x1D3896EB0](v25, -1, -1);
    }

    v26 = type metadata accessor for EnergyWindows(0);
    v27 = *(*(v26 - 8) + 56);

    return v27(a3, 1, 1, v26);
  }
}

unint64_t sub_1D20B0A18(uint64_t a1, uint64_t a2)
{
  sub_1D2113ECC();
  sub_1D211375C();
  v4 = sub_1D2113F1C();

  return sub_1D20B0A90(a1, a2, v4);
}

unint64_t sub_1D20B0A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D2113E2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D20B0B48(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1D3896EC0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1D3896EC0](&v3, 8);
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

unint64_t sub_1D20B0BD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D0, &qword_1D2115398);
    v3 = sub_1D2113CFC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D20B3318(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1D20B0A18(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D20B3388(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D20B0CE4(uint64_t a1, uint64_t a2)
{
  v149 = type metadata accessor for EnergyWindow(0);
  v140 = *(v149 - 8);
  v4 = MEMORY[0x1EEE9AC00](v149);
  v153 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v148 = &v111 - v6;
  v126 = sub_1D2112E7C();
  v7 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v130 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1D211321C();
  v9 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1D21132EC();
  v154 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v135 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v111 - v13;
  v15 = sub_1D211335C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v127 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v134 = &v111 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v147 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v146 = &v111 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v133 = &v111 - v25;
  v26 = sub_1D211319C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v139 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v138 = &v111 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v112 = &v111 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v111 - v34;
  (*(v27 + 16))(&v111 - v34, a1, v26);
  v142 = sub_1D20B3268(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v143 = a2;
  v36 = sub_1D211377C();
  v111 = v27;
  if (v36)
  {
    v154 = MEMORY[0x1E69E7CC0];
LABEL_3:
    (*(v111 + 8))(v35, v26);
    return v154;
  }

  v136 = v15;
  v132 = v14;
  v145 = 0;
  v131 = (v16 + 48);
  v124 = (v16 + 32);
  v123 = *MEMORY[0x1E6969868];
  v122 = (v9 + 104);
  v121 = (v9 + 8);
  v120 = (v16 + 16);
  v119 = *MEMORY[0x1E6969A88];
  v116 = (v7 + 8);
  v118 = *MEMORY[0x1E6969A98];
  v115 = (v154 + 1);
  v114 = (v16 + 8);
  v113 = (v27 + 48);
  v141 = (v27 + 32);
  v150 = (v27 + 8);
  v151 = (v27 + 56);
  v117 = xmmword_1D2115280;
  v154 = MEMORY[0x1E69E7CC0];
  v152 = v26;
  v137 = v35;
  while (1)
  {
    if (v154[2])
    {
      do
      {
        v155 = 0;
        MEMORY[0x1D3896EC0](&v155, 8);
      }

      while (!(3 * v155));
      v38 = dbl_1F4D9E2E8[((v155 * 3uLL) >> 64) + 4];
      goto LABEL_23;
    }

    v39 = v132;
    sub_1D21132FC();
    v40 = v136;
    if ((*v131)(v39, 1, v136) == 1)
    {
      sub_1D20A862C(v39, &qword_1EC6C7298, &unk_1D21149F0);
      v41 = v133;
      (*v151)(v133, 1, 1, v26);
    }

    else
    {
      v42 = v134;
      (*v124)(v134, v39, v40);
      v43 = v128;
      v44 = v129;
      (*v122)(v128, v123, v129);
      sub_1D211322C();
      (*v121)(v43, v44);
      (*v120)(v127, v42, v40);
      sub_1D21132BC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
      v45 = sub_1D21132CC();
      v46 = *(v45 - 8);
      v47 = *(v46 + 72);
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v117;
      v50 = v49 + v48;
      v51 = *(v46 + 104);
      v51(v50, v119, v45);
      v51(v50 + v47, v118, v45);
      sub_1D20BFD3C(v49);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v52 = v130;
      sub_1D211324C();

      v53 = sub_1D2112E1C();
      if (v54)
      {
        v55 = 0;
      }

      else
      {
        v55 = v53;
      }

      result = 59 - v55;
      if (__OFSUB__(59, v55))
      {
        goto LABEL_61;
      }

      sub_1D2112E2C();
      v56 = sub_1D2112E4C();
      if (v57)
      {
        v58 = 0;
      }

      else
      {
        v58 = v56;
      }

      result = 60 - v58;
      if (__OFSUB__(60, v58))
      {
        goto LABEL_62;
      }

      sub_1D2112E5C();
      v41 = v133;
      v59 = v135;
      sub_1D211328C();
      (*v116)(v52, v126);
      (*v115)(v59, v125);
      (*v114)(v134, v136);
      v60 = v152;
      if ((*v113)(v41, 1, v152) != 1)
      {
        v61 = v112;
        (*v141)(v112, v41, v60);
        sub_1D211302C();
        v63 = v62;
        sub_1D211302C();
        v65 = v64;
        (*v150)(v61, v60);
        v38 = v63 - v65;
        goto LABEL_23;
      }
    }

    sub_1D20A862C(v41, &qword_1EC6C7248, &qword_1D2114A80);
    v38 = 0.0;
LABEL_23:
    v155 = 0;
    MEMORY[0x1D3896EC0](&v155, 8);
    v66 = 0;
    v67 = byte_1F4D9E2C0[(v155 >> 62) + 32];
    v68 = MEMORY[0x1E69E7CC0];
    do
    {
      v69 = byte_1F4D9E2C0[v66 + 32];
      if (v69 > 1u || byte_1F4D9E2C0[v66 + 32])
      {
        v70 = sub_1D2113E2C();

        if ((v70 & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v155 = v68;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D20DC834(0, *(v68 + 16) + 1, 1);
            v68 = v155;
          }

          v73 = *(v68 + 16);
          v72 = *(v68 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_1D20DC834((v72 > 1), v73 + 1, 1);
            v68 = v155;
          }

          *(v68 + 16) = v73 + 1;
          *(v68 + v73 + 32) = v69;
        }
      }

      else
      {
      }

      ++v66;
    }

    while (v66 != 4);
    v74 = *(v68 + 16);
    if (v74)
    {
      break;
    }

    v26 = v152;
LABEL_6:
    if (sub_1D211377C())
    {
      goto LABEL_3;
    }
  }

  result = sub_1D20B0B48(v74);
  if ((result & 0x8000000000000000) == 0)
  {
    if (result >= *(v68 + 16))
    {
      goto LABEL_60;
    }

    v75 = *(v68 + result + 32);

    if (v67)
    {
      v76 = sub_1D2113E2C();

      if (v76)
      {
        goto LABEL_40;
      }
    }

    else
    {

LABEL_40:
      if (v38 <= 3600.0)
      {
        v75 = v67;
      }
    }

    v77 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v77 setFormatOptions_];
    v78 = sub_1D21130EC();
    v79 = v75;
    v80 = [v77 stringFromDate_];

    v144 = sub_1D21137CC();
    v82 = v81;

    v83 = v138;
    sub_1D21130DC();
    v84 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v84 setFormatOptions_];
    v85 = sub_1D21130EC();
    v86 = [v84 stringFromDate_];

    v87 = sub_1D21137CC();
    v89 = v88;

    v90 = *v150;
    (*v150)(v83, v152);
    if (v79 > 1)
    {
      if (v79 == 2)
      {
        v91 = 0xE600000000000000;
        v92 = 0x454355444552;
      }

      else
      {
        v91 = 0xE500000000000000;
        v92 = 0x5453524F57;
      }
    }

    else
    {
      v91 = 0xE400000000000000;
      if (v79)
      {
        v92 = 1146048327;
      }

      else
      {
        v92 = 1414743362;
      }
    }

    v35 = v137;
    v93 = v149;
    v94 = v153;
    v95 = (v153 + *(v149 + 28));
    *v95 = v144;
    v95[1] = v82;
    v96 = (v94 + *(v93 + 32));
    *v96 = v87;
    v96[1] = v89;
    v97 = (v94 + *(v93 + 24));
    *v97 = v92;
    v97[1] = v91;
    v98 = qword_1EE084100;

    if (v98 != -1)
    {
      swift_once();
    }

    v99 = sub_1D21130CC();
    __swift_project_value_buffer(v99, qword_1EE0874F0);
    v100 = v145;
    sub_1D21130BC();
    if (v100)
    {

      v101 = 1;
    }

    else
    {
      v101 = 0;
    }

    v102 = *v151;
    v103 = v146;
    v104 = v101;
    v26 = v152;
    (*v151)(v146, v104, 1, v152);
    sub_1D20A84BC(v103, v153);
    sub_1D21130BC();
    v145 = 0;

    v105 = v147;
    v102(v147, 0, 1, v26);
    v106 = v153;
    sub_1D20A84BC(v105, v153 + *(v149 + 20));
    sub_1D20B32B0(v106, v148, type metadata accessor for EnergyWindow);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v154 = sub_1D20B71E4(0, v154[2] + 1, 1, v154);
    }

    v108 = v154[2];
    v107 = v154[3];
    if (v108 >= v107 >> 1)
    {
      v154 = sub_1D20B71E4((v107 > 1), v108 + 1, 1, v154);
    }

    v109 = v154;
    v154[2] = v108 + 1;
    sub_1D20B32B0(v148, v109 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v108, type metadata accessor for EnergyWindow);
    v110 = v139;
    sub_1D21130DC();
    v90(v35, v26);
    (*v141)(v35, v110, v26);
    goto LABEL_6;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

unint64_t sub_1D20B1DFC()
{
  v0 = sub_1D21133BC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v102 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D21133DC();
  v103 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v101 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v90 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73C0, &qword_1D2115388);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v80 - v9;
  v94 = type metadata accessor for EnergyWindows(0);
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v87 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D21130CC();
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D211319C();
  v99 = *(v14 - 8);
  v100 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v95 = &v80 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v80 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v80 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v80 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v80 - v27;
  v29 = sub_1D2112F9C();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_1D20A862C(v28, &qword_1EC6C7250, &qword_1D21149C0);
    v33 = v103;
LABEL_19:
    sub_1D211339C();
    v70 = sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
    sub_1D20B3268(&qword_1EE0843C0, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    v71 = v101;
    sub_1D2112EDC();
    sub_1D21133CC();
    (*(v33 + 8))(v71, v2);
    swift_willThrow();
    return v70;
  }

  (*(v30 + 32))(v32, v28, v29);
  sub_1D20D912C(0x644964697267, 0xE600000000000000);
  if (!v34)
  {
    (*(v30 + 8))(v32, v29);
    v33 = v103;
    goto LABEL_19;
  }

  v82 = v34;
  v83 = v32;
  v84 = v30;
  v85 = v29;
  v86 = v2;
  v35 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1D211317C();
  sub_1D20B02D4(v13);
  sub_1D211303C();
  v81 = *(v96 + 8);
  v81(v13, v97);
  v36 = v99 + 1;
  v96 = v99[1];
  (v96)(v24, v100);
  v37 = sub_1D21137BC();

  v38 = [v35 dateFromString_];

  if (!v38)
  {
    (*(v84 + 8))(v83, v85);

LABEL_11:
    v2 = v86;
    v33 = v103;
    goto LABEL_19;
  }

  sub_1D211316C();

  v39 = v21;
  v40 = v100;
  v80 = v99[4];
  v80(v98, v39, v100);
  v41 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1D211312C();
  sub_1D20B02D4(v13);
  sub_1D211303C();
  v81(v13, v97);
  v42 = v24;
  v43 = v96;
  (v96)(v42, v40);
  v44 = sub_1D21137BC();

  v45 = [v41 dateFromString_];

  v46 = v40;
  if (!v45)
  {

    v43(v98, v40);
    (*(v84 + 8))(v83, v85);
    goto LABEL_11;
  }

  v97 = v36;
  v47 = v91;
  sub_1D211316C();

  v48 = v95;
  v80(v95, v47, v40);
  v49 = sub_1D20B0CE4(v98, v48);
  if (v49)
  {
    v50 = v49;
    v51 = v99[7];
    v52 = v89;
    v51(v89, 1, 1, v40);
    v53 = v90;
    v51(v90, 1, 1, v40);
    v55 = v93;
    v54 = v94;
    v56 = *(v94 + 20);
    v51(&v93[v56], 1, 1, v46);
    v57 = v46;
    v58 = v54[6];
    v51(v55 + v58, 1, 1, v57);
    *v55 = v50;
    sub_1D20AD058(v52, v55 + v56);
    sub_1D20AD058(v53, v55 + v58);
    v59 = 0;
    v60 = (v55 + v54[7]);
    *v60 = 0;
    v60[1] = 0;
    v61 = (v55 + v54[8]);
    *v61 = 0;
    v61[1] = 0;
    *(v55 + v54[9]) = 0;
    v2 = v86;
    v33 = v103;
  }

  else
  {
    v55 = v93;
    v54 = v94;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v62 = sub_1D211362C();
    __swift_project_value_buffer(v62, qword_1EE0874C0);
    v63 = sub_1D21135FC();
    v64 = sub_1D2113A7C();
    v65 = os_log_type_enabled(v63, v64);
    v2 = v86;
    v33 = v103;
    if (v65)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1D209F000, v63, v64, "Unable to generate Mock Energy Intervals", v66, 2u);
      MEMORY[0x1D3896EB0](v66, -1, -1);
    }

    v59 = 1;
  }

  v67 = v92;
  (*(v92 + 56))(v55, v59, 1, v54);

  if ((*(v67 + 48))(v55, 1, v54) == 1)
  {
    v68 = v96;
    v69 = v100;
    (v96)(v95, v100);
    v68(v98, v69);
    (*(v84 + 8))(v83, v85);
    sub_1D20A862C(v55, &qword_1EC6C73C0, &qword_1D2115388);
    goto LABEL_19;
  }

  v73 = v87;
  sub_1D20B32B0(v55, v87, type metadata accessor for EnergyWindows);
  sub_1D2112B7C();
  swift_allocObject();
  sub_1D2112B6C();
  sub_1D20B3268(&qword_1EC6C73C8, type metadata accessor for EnergyWindows, &protocol conformance descriptor for EnergyWindows);
  v74 = v88;
  v75 = sub_1D2112B5C();
  if (v74)
  {

    sub_1D20B320C(v73);
    v76 = v96;
    v77 = v100;
    v70 = v97;
    (v96)(v95, v100);
    v76(v98, v77);
  }

  else
  {
    v70 = v75;

    sub_1D20B320C(v73);
    v78 = v96;
    v79 = v100;
    (v96)(v95, v100);
    v78(v98, v79);
  }

  (*(v84 + 8))(v83, v85);
  return v70;
}

void sub_1D20B2A08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v48 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_1D211319C();
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_1D2112F9C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D20A862C(v13, &qword_1EC6C7250, &qword_1D21149C0);
LABEL_10:
    sub_1D20B316C();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();
    return;
  }

  (*(v15 + 32))(v17, v13, v14);
  v18 = sub_1D20D58E0();
  [v18 copy];

  sub_1D2113B7C();
  swift_unknownObjectRelease();
  sub_1D20B31C0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_10;
  }

  v50 = v0;
  v53 = v56;
  sub_1D211313C();
  sub_1D211331C();
  v19 = sub_1D211335C();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v6, 1, v19) != 1)
  {
    v21 = sub_1D211333C();
    (*(v20 + 8))(v6, v19);
  }

  v22 = v53;
  [v53 setTimeZone_];

  v23 = sub_1D21130EC();
  v24 = [v22 stringFromDate_];

  v51 = sub_1D21137CC();
  v52 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D2114850;
  sub_1D20D4AB4(v3);
  v28 = v54;
  v27 = v55;
  if ((*(v55 + 48))(v3, 1, v54) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1D211314C();
    v30 = v29;
    sub_1D211314C();
    v32 = v30 - v31;
    v33 = *(v27 + 8);
    v55 = v27 + 8;
    v49 = v33;
    v33(v3, v28);
    v34 = MEMORY[0x1E69E6438];
    *(v26 + 56) = MEMORY[0x1E69E63B0];
    *(v26 + 64) = v34;
    *(v26 + 32) = v32;
    v35 = sub_1D21137FC();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
    inited = swift_initStackObject();
    v48 = v10;
    v39 = inited;
    *(inited + 32) = 1702125892;
    *(inited + 16) = xmmword_1D2115280;
    v40 = v51;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v40;
    *(inited + 56) = v52;
    strcpy((inited + 64), "Cache-Control");
    *(inited + 78) = -4864;
    v57 = 0x3D6567612D78616DLL;
    v58 = 0xE800000000000000;

    v51 = v37;
    MEMORY[0x1D38961A0](v35, v37);
    v41 = v58;
    *(v39 + 80) = v57;
    *(v39 + 88) = v41;
    sub_1D20CE7A8(v39);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B8, &qword_1D2115380);
    swift_arrayDestroy();
    v42 = objc_allocWithZone(MEMORY[0x1E696AC68]);
    v43 = sub_1D2112F2C();
    v44 = sub_1D21137BC();
    v45 = sub_1D21136FC();
    v46 = [v42 initWithURL:v43 statusCode:200 HTTPVersion:v44 headerFields:v45];

    if (v46)
    {

      v49(v48, v54);
      (*(v15 + 8))(v17, v14);
      return;
    }
  }

  __break(1u);
}

unint64_t sub_1D20B316C()
{
  result = qword_1EC6C7398;
  if (!qword_1EC6C7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7398);
  }

  return result;
}

unint64_t sub_1D20B31C0()
{
  result = qword_1EC6C73A0;
  if (!qword_1EC6C73A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6C73A0);
  }

  return result;
}

uint64_t sub_1D20B320C(uint64_t a1)
{
  v2 = type metadata accessor for EnergyWindows(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20B3268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D20B32B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D20B3318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1D20B3388(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static EnergyGuidanceTransformer.convertToEnergyWindows(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v250 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v250 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v276 = &v250 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v275 = &v250 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v261 = &v250 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v260 = &v250 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v250 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v265 = &v250 - v22;
  v23 = type metadata accessor for EnergyWindow(0);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v274 = &v250 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v277 = &v250 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v273 = &v250 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v267 = &v250 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v259 = &v250 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v262 = &v250 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v258 = &v250 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v250 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v266 = &v250 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v250 - v44;
  v282 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v292 = *(v282 - 8);
  v46 = MEMORY[0x1EEE9AC00](v282);
  v279 = &v250 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v296 = &v250 - v48;
  v278 = type metadata accessor for HSGuidanceValue(0);
  MEMORY[0x1EEE9AC00](v278);
  v297 = &v250 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73E0, &qword_1D21153B8);
  v51 = MEMORY[0x1EEE9AC00](v50 - 8);
  v286 = &v250 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v285 = (&v250 - v53);
  v298 = sub_1D211319C();
  v54 = *(v298 - 8);
  v55 = MEMORY[0x1EEE9AC00](v298);
  v281 = &v250 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v58 = MEMORY[0x1EEE9AC00](v57);
  v300 = (&v250 - v59);
  MEMORY[0x1EEE9AC00](v58);
  if (!*(a1 + 8))
  {
    if (qword_1EE083DE8 != -1)
    {
      goto LABEL_113;
    }

    goto LABEL_83;
  }

  v295 = *(a1 + 8);
  v293 = v61;
  v256 = v23;
  v250 = v21;
  v251 = v45;
  v252 = v41;
  v255 = v24;
  v268 = v10;
  v269 = v7;
  v270 = a2;
  v284 = &v250 - v60;
  sub_1D211304C();
  v271 = type metadata accessor for HSGuidanceForecast(0);
  v62 = *(v271 + 28);
  v272 = a1;
  v63 = *(a1 + v62);
  v306 = 0;
  v307 = 0;
  v305 = v63;
  v280 = (v54 + 56);
  v253 = (v54 + 40);
  v283 = v63;

  v64 = 0;
  v254 = 0;
  v288 = MEMORY[0x1E69E7CC0];
  v289 = 4271950;
  v290 = 0xE300000000000000;
  v66 = v296;
  v65 = v297;
  v299 = (v54 + 8);
  while (1)
  {
    v67 = v286;
    sub_1D20B56F4(v286);
    v68 = v67;
    v69 = v285;
    sub_1D20B7DA8(v68, v285, &qword_1EC6C73E0, &qword_1D21153B8);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73E8, &unk_1D21153C0);
    if ((*(*(v70 - 8) + 48))(v69, 1, v70) == 1)
    {

      v181 = v270;
      v182 = v269;
      v183 = v268;
      v86 = v298;
LABEL_101:
      v227 = v288;

      sub_1D2112BDC();
      v228 = *v280;
      (*v280)(v183, 0, 1, v86);
      sub_1D2112C0C();

      (*v299)(v284, v86);
      v228(v182, 0, 1, v86);
      v229 = type metadata accessor for EnergyWindows(0);
      v230 = v229[5];
      v228(v181 + v230, 1, 1, v86);
      v231 = v229[6];
      v228(v181 + v231, 1, 1, v86);
      *v181 = v227;
      sub_1D20AD058(v183, v181 + v230);
      sub_1D20AD058(v182, v181 + v231);
      v232 = (v181 + v229[7]);
      *v232 = 0;
      v232[1] = 0;
      v233 = (v181 + v229[8]);
      *v233 = 0;
      v233[1] = 0;
      *(v181 + v229[9]) = 0;
      (*(*(v229 - 1) + 56))(v181, 0, 1, v229);
    }

    v287 = *v69;
    sub_1D20B7C1C(v69 + *(v70 + 48), v65, type metadata accessor for HSGuidanceValue);
    v71 = v295;
    v291 = *(v295 + 16);
    if (v64 >= v291)
    {
LABEL_77:

      if (qword_1EE083DE8 != -1)
      {
LABEL_111:
        swift_once();
      }

      v177 = sub_1D211362C();
      __swift_project_value_buffer(v177, qword_1EE0874C0);
      v178 = sub_1D21135FC();
      v179 = sub_1D2113A6C();
      v180 = os_log_type_enabled(v178, v179);
      v181 = v270;
      v182 = v269;
      v183 = v268;
      if (v180)
      {
        v184 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v301 = v185;
        *v184 = 136315138;
        *(v184 + 4) = sub_1D20B75F0(0xD00000000000001ALL, 0x80000001D211A530, &v301);
        _os_log_impl(&dword_1D209F000, v178, v179, "%s ran out of thresholds. returning back final window", v184, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v185);
        MEMORY[0x1D3896EB0](v185, -1, -1);
        MEMORY[0x1D3896EB0](v184, -1, -1);
      }

      v186 = sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
      v187 = [objc_opt_self() processInfo];
      v188 = [v187 processName];

      v189 = sub_1D21137CC();
      v191 = v190;

      LOWORD(v301) = 256;
      BYTE2(v301) = 0;
      v302 = v189;
      v303 = v191;
      v304 = v186;
      static AutoBugCaptureManager.sendIssue(_:)(&v301);

      v192 = v281;
      if (v287 == *(v283 + 16) - 1)
      {
        sub_1D2112BDC();
      }

      else
      {
        sub_1D2112C0C();
      }

      v86 = v298;
      v201 = v299;
      if (v289 == 4271950 && v290 == 0xE300000000000000 || (sub_1D2113E2C() & 1) != 0 || (sub_1D211310C() & 1) == 0 || (v202 = v300, sub_1D2112C0C(), v203 = sub_1D211310C(), v204 = *v201, (*v201)(v202, v86), (v203 & 1) == 0))
      {
        (*v201)(v192, v86);
        sub_1D20B7C84(v297, type metadata accessor for HSGuidanceValue);
      }

      else
      {
        v300 = v204;
        if (qword_1EE083910 != -1)
        {
          swift_once();
        }

        v205 = qword_1EE087450;
        v206 = sub_1D21130EC();
        v207 = [v205 stringFromDate_];

        v208 = sub_1D21137CC();
        v210 = v209;

        v211 = qword_1EE087450;
        v212 = sub_1D21130EC();
        v213 = [v211 stringFromDate_];

        v214 = sub_1D21137CC();
        v216 = v215;

        v217 = v256;
        v218 = v266;
        v219 = (v266 + *(v256 + 28));
        *v219 = v208;
        v219[1] = v210;
        v220 = (v218 + *(v217 + 32));
        *v220 = v214;
        v220[1] = v216;
        v221 = (v218 + *(v217 + 24));
        v222 = v290;
        *v221 = v289;
        v221[1] = v222;
        v223 = qword_1EE084100;

        if (v223 != -1)
        {
          swift_once();
        }

        v224 = sub_1D21130CC();
        __swift_project_value_buffer(v224, qword_1EE0874F0);
        v225 = v254;
        sub_1D21130BC();
        if (v225)
        {

          v226 = 1;
        }

        else
        {
          v226 = 0;
        }

        v241 = *v280;
        v242 = v265;
        (*v280)(v265, v226, 1, v298);
        sub_1D20B7DA8(v242, v266, &qword_1EC6C7248, &qword_1D2114A80);
        sub_1D21130BC();

        v243 = v250;
        v241(v250, 0, 1, v298);
        v244 = v266;
        sub_1D20B7DA8(v243, v266 + *(v256 + 20), &qword_1EC6C7248, &qword_1D2114A80);
        v245 = v251;
        sub_1D20B7C1C(v244, v251, type metadata accessor for EnergyWindow);
        sub_1D20B7D40(v245, v252, type metadata accessor for EnergyWindow);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v288 = sub_1D20B7390(0, v288[2] + 1, 1, v288, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
        }

        v86 = v298;
        v246 = v281;
        v248 = v288[2];
        v247 = v288[3];
        if (v248 >= v247 >> 1)
        {
          v288 = sub_1D20B7390((v247 > 1), v248 + 1, 1, v288, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
        }

        sub_1D20B7C84(v251, type metadata accessor for EnergyWindow);
        v300(v246, v86);
        sub_1D20B7C84(v297, type metadata accessor for HSGuidanceValue);
        v249 = v288;
        v288[2] = v248 + 1;
        sub_1D20B7C1C(v252, v249 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v248, type metadata accessor for EnergyWindow);
      }

      goto LABEL_101;
    }

    while (1)
    {
      if (v64 >= *(v71 + 16))
      {
        __break(1u);
        goto LABEL_111;
      }

      v294 = v71 + ((*(v292 + 80) + 32) & ~*(v292 + 80)) + *(v292 + 72) * v64;
      sub_1D20B7D40(v294, v66, type metadata accessor for HSCleanGuidanceThresholds);
      sub_1D2112BDC();
      v72 = sub_1D2112C2C();
      v73 = *(v72 - 8);
      v74 = *(v73 + 8);
      v75 = (v73 + 8);
      v74(v66, v72);
      v76 = v293;
      sub_1D2112C0C();
      v77 = sub_1D20B7CE4(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v78 = v298;
      v79 = sub_1D211377C();
      v80 = *v299;
      (*v299)(v76, v78);
      v80(v300, v78);
      if (v79)
      {
        break;
      }

      ++v64;
      v66 = v296;
      v71 = v295;
      if (v291 == v64)
      {
        goto LABEL_77;
      }
    }

    v291 = v77;
    a2 = v72;
    v264 = v75;
    v81 = v294;
    v82 = v300;
    v65 = v297;
    sub_1D2112C0C();
    if (v64 >= *(v295 + 16))
    {
      break;
    }

    v257 = v64;
    v83 = v296;
    sub_1D20B7D40(v81, v296, type metadata accessor for HSCleanGuidanceThresholds);
    v84 = v293;
    sub_1D2112C0C();
    v85 = a2;
    v74(v83, a2);
    v86 = v298;
    LODWORD(v263) = sub_1D211377C();
    v80(v84, v86);
    v80(v82, v86);
    if (v263 & 1) != 0 || (sub_1D2112BDC(), sub_1D20B7D40(v294, v83, type metadata accessor for HSCleanGuidanceThresholds), sub_1D2112BDC(), v74(v83, v85), v87 = sub_1D211377C(), v80(v84, v86), v80(v82, v86), (v87))
    {

      v234 = v65;
      v235 = sub_1D20B0BD4(MEMORY[0x1E69E7CC0]);
      v236 = [objc_opt_self() processInfo];
      v237 = [v236 processName];

      v238 = sub_1D21137CC();
      v240 = v239;

      LOWORD(v301) = 256;
      BYTE2(v301) = 0;
      v302 = v238;
      v303 = v240;
      v304 = v235;
      static AutoBugCaptureManager.sendIssue(_:)(&v301);

      sub_1D20B7C84(v234, type metadata accessor for HSGuidanceValue);
      v181 = v270;
      v182 = v269;
      v183 = v268;
      goto LABEL_101;
    }

    v88 = *(v65 + *(v278 + 20));
    v89 = v279;
    v90 = sub_1D20B7D40(v294, v279, type metadata accessor for HSCleanGuidanceThresholds);
    v91 = _s12HomeServices0aB12FeatureCheckO9isEnabled3keySbAA0aB8FeaturesO_tFZ_0(v90);
    v92 = *(v89 + *(v282 + 20));
    v264 = v80;
    if (v91)
    {
      v66 = v296;
      v64 = v257;
      if (v88 <= v92)
      {
        v291 = 0xE400000000000000;
        v94 = 1414743362;
      }

      else
      {
        v93 = *(v89 + *(v282 + 24));
        if (v88 <= v93)
        {
          v94 = 0x5453524F57;
        }

        else
        {
          v94 = 0x454355444552;
        }

        v95 = 0xE500000000000000;
        if (v88 > v93)
        {
          v95 = 0xE600000000000000;
        }

        v291 = v95;
      }
    }

    else
    {
      if (v88 <= v92)
      {
        v94 = 1414743362;
      }

      else
      {
        v94 = 0x5453524F57;
      }

      v96 = 0xE500000000000000;
      if (v88 <= v92)
      {
        v96 = 0xE400000000000000;
      }

      v291 = v96;
      v66 = v296;
      v64 = v257;
    }

    sub_1D20B7C84(v89, type metadata accessor for HSCleanGuidanceThresholds);
    v97 = v289;
    v98 = v94 == v289;
    v99 = v94;
    v100 = v290;
    if (v98 && v291 == v290 || (v294 = v99, (sub_1D2113E2C() & 1) != 0))
    {

      v294 = v97;
      v101 = v100;
    }

    else
    {
      if (v97 == 4271950 && v100 == 0xE300000000000000 || (v289 = v97, (sub_1D2113E2C() & 1) != 0) || (v143 = v300, sub_1D2112C0C(), v144 = sub_1D211310C(), v264(v143, v298), (v144 & 1) == 0))
      {

        v101 = v291;
      }

      else
      {
        if (qword_1EE083910 != -1)
        {
          swift_once();
        }

        v145 = qword_1EE087450;
        v146 = sub_1D21130EC();
        v147 = [v145 stringFromDate_];

        v148 = sub_1D21137CC();
        v150 = v149;

        v151 = qword_1EE087450;
        v152 = v300;
        sub_1D2112C0C();
        v153 = sub_1D21130EC();
        v264(v152, v298);
        v154 = [v151 stringFromDate_];

        v155 = sub_1D21137CC();
        v157 = v156;

        v158 = v256;
        v159 = v262;
        v160 = (v262 + *(v256 + 28));
        *v160 = v148;
        v160[1] = v150;
        v161 = (v159 + *(v158 + 32));
        v263 = v155;
        *v161 = v155;
        v161[1] = v157;
        v162 = (v159 + *(v158 + 24));
        v163 = v290;
        *v162 = v289;
        v162[1] = v163;
        v164 = qword_1EE084100;

        v289 = v157;

        if (v164 != -1)
        {
          swift_once();
        }

        v165 = sub_1D21130CC();
        __swift_project_value_buffer(v165, qword_1EE0874F0);
        v166 = v254;
        sub_1D21130BC();
        if (v166)
        {

          v167 = 1;
        }

        else
        {
          v167 = 0;
        }

        v168 = *v280;
        v169 = v260;
        (*v280)(v260, v167, 1, v298);
        sub_1D20B7DA8(v169, v262, &qword_1EC6C7248, &qword_1D2114A80);
        sub_1D21130BC();
        v254 = 0;

        v170 = v261;
        v168(v261, 0, 1, v298);
        v171 = v262;
        sub_1D20B7DA8(v170, v262 + *(v256 + 20), &qword_1EC6C7248, &qword_1D2114A80);
        v172 = v171;
        v173 = v258;
        sub_1D20B7C1C(v172, v258, type metadata accessor for EnergyWindow);
        sub_1D20B7D40(v173, v259, type metadata accessor for EnergyWindow);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v288 = sub_1D20B7390(0, v288[2] + 1, 1, v288, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
        }

        v101 = v291;
        v175 = v288[2];
        v174 = v288[3];
        if (v175 >= v174 >> 1)
        {
          v288 = sub_1D20B7390((v174 > 1), v175 + 1, 1, v288, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
        }

        sub_1D20B7C84(v258, type metadata accessor for EnergyWindow);
        v176 = v288;
        v288[2] = v175 + 1;
        sub_1D20B7C1C(v259, v176 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v175, type metadata accessor for EnergyWindow);
      }

      v102 = v300;
      sub_1D2112C0C();
      (*v253)(v284, v102, v298);
    }

    if (v287 != *(v283 + 16) - 1)
    {
      goto LABEL_50;
    }

    v103 = v288[2];
    if (v103)
    {
      v104 = v267;
      sub_1D20B7D40(v288 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * (v103 - 1), v267, type metadata accessor for EnergyWindow);
      EnergyWindow.rating.getter(&v301);
      v105 = v301;
      sub_1D20B7C84(v104, type metadata accessor for EnergyWindow);
      if (v105 > 1)
      {
        v106 = v294;
        if (v105 == 2)
        {
          v107 = 0xE600000000000000;
          v108 = 0x454355444552;
        }

        else
        {
          v107 = 0xE500000000000000;
          v108 = 0x5453524F57;
        }
      }

      else
      {
        v106 = v294;
        if (v105)
        {
          v107 = 0xE400000000000000;
          v108 = 1146048327;
        }

        else
        {
          v107 = 0xE400000000000000;
          v108 = 1414743362;
        }
      }

      if (v108 == v106 && v107 == v101)
      {

LABEL_50:
        sub_1D20B7C84(v65, type metadata accessor for HSGuidanceValue);
        v289 = v294;
        v290 = v101;
        continue;
      }

      v109 = sub_1D2113E2C();

      if (v109)
      {
        goto LABEL_50;
      }
    }

    if (qword_1EE083910 != -1)
    {
      swift_once();
    }

    v110 = qword_1EE087450;
    v111 = sub_1D21130EC();
    v112 = [v110 stringFromDate_];

    v113 = sub_1D21137CC();
    v115 = v114;

    v116 = qword_1EE087450;
    v117 = v300;
    sub_1D2112BDC();
    v118 = sub_1D21130EC();
    v119 = v117;
    v120 = v115;
    v264(v119, v298);
    v121 = [v116 stringFromDate_];

    v122 = sub_1D21137CC();
    v124 = v123;

    v125 = v256;
    v126 = v277;
    v127 = (v277 + *(v256 + 28));
    *v127 = v113;
    v127[1] = v120;
    v128 = (v126 + *(v125 + 32));
    v289 = v122;
    *v128 = v122;
    v128[1] = v124;
    v129 = (v126 + *(v125 + 24));
    *v129 = v294;
    v129[1] = v101;
    v130 = qword_1EE084100;

    v290 = v124;

    if (v130 != -1)
    {
      swift_once();
    }

    v131 = sub_1D21130CC();
    __swift_project_value_buffer(v131, qword_1EE0874F0);
    v132 = v254;
    sub_1D21130BC();
    v291 = v101;
    if (v132)
    {

      v133 = 1;
    }

    else
    {
      v133 = 0;
    }

    v134 = *v280;
    v135 = v275;
    (*v280)(v275, v133, 1, v298);
    sub_1D20B7DA8(v135, v277, &qword_1EC6C7248, &qword_1D2114A80);
    sub_1D21130BC();
    v254 = 0;

    v136 = v276;
    v134(v276, 0, 1, v298);
    v137 = v277;
    sub_1D20B7DA8(v136, v277 + *(v256 + 20), &qword_1EC6C7248, &qword_1D2114A80);
    v138 = v137;
    v139 = v273;
    sub_1D20B7C1C(v138, v273, type metadata accessor for EnergyWindow);
    sub_1D20B7D40(v139, v274, type metadata accessor for EnergyWindow);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v288 = sub_1D20B7390(0, v288[2] + 1, 1, v288, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
    }

    v141 = v288[2];
    v140 = v288[3];
    if (v141 >= v140 >> 1)
    {
      v288 = sub_1D20B7390((v140 > 1), v141 + 1, 1, v288, &qword_1EC6C7428, &qword_1D2115450, type metadata accessor for EnergyWindow);
    }

    sub_1D20B7C84(v273, type metadata accessor for EnergyWindow);
    sub_1D20B7C84(v65, type metadata accessor for HSGuidanceValue);
    v142 = v288;
    v288[2] = v141 + 1;
    sub_1D20B7C1C(v274, v142 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v141, type metadata accessor for EnergyWindow);
    v289 = v294;
    v290 = v291;
  }

  __break(1u);
LABEL_113:
  swift_once();
LABEL_83:
  v193 = sub_1D211362C();
  __swift_project_value_buffer(v193, qword_1EE0874C0);
  v194 = sub_1D21135FC();
  v195 = sub_1D2113A7C();
  if (os_log_type_enabled(v194, v195))
  {
    v196 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    v301 = v197;
    *v196 = 136315138;
    *(v196 + 4) = sub_1D20B75F0(0xD00000000000001ALL, 0x80000001D211A530, &v301);
    _os_log_impl(&dword_1D209F000, v194, v195, "%s error: no thresholds provided for guidance", v196, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v197);
    MEMORY[0x1D3896EB0](v197, -1, -1);
    MEMORY[0x1D3896EB0](v196, -1, -1);
  }

  v198 = type metadata accessor for EnergyWindows(0);
  v199 = *(*(v198 - 8) + 56);

  return v199(a2, 1, 1, v198);
}

id sub_1D20B56C0()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  qword_1EE087450 = result;
  return result;
}

uint64_t sub_1D20B56F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73E8, &unk_1D21153C0);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v5;
      v12 = *(type metadata accessor for HSGuidanceValue(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      result = sub_1D20B7D40(v13, v7 + v14, type metadata accessor for HSGuidanceValue);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_1D20B7DA8(v7, a1, &qword_1EC6C73E8, &unk_1D21153C0);
        return (*(v17 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static EnergyGuidanceTransformer.guidanceForecastGenerator(time:type:valueRatings:useEnergyThreshold:avoidEnergyThreshold:endValidInterval:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v173 = a4;
  v162 = a3;
  v144 = a5;
  v157 = type metadata accessor for HSGuidanceValue(0);
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v168 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  MEMORY[0x1EEE9AC00](v148);
  v164 = &v133 - v12;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  MEMORY[0x1EEE9AC00](v172);
  v167 = &v133 - v13;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  MEMORY[0x1EEE9AC00](v171);
  v163 = &v133 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v160 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v166 = (&v133 - v18);
  v19 = sub_1D211319C();
  v165 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v158 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v169 = &v133 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v159 = &v133 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v151 = &v133 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v170 = &v133 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v152 = &v133 - v30;
  v139 = sub_1D2112C2C();
  v161 = *(v139 - 8);
  v31 = MEMORY[0x1EEE9AC00](v139);
  v33 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v133 - v34;
  v140 = type metadata accessor for HSGuidanceError(0);
  v36 = MEMORY[0x1EEE9AC00](v140);
  v143 = &v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v133 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v133 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v133 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = (&v133 - v48);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v142 = &v133 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v141 = &v133 - v52;
  LODWORD(a2) = *a2;
  sub_1D20FE6E4(v49, v35);
  v53 = v152;
  v155 = a2;
  v134 = v43;
  v135 = v46;
  v137 = v35;
  v138 = v33;
  v147 = a1;
  v54 = v166;
  sub_1D20A8580(v173, v166, &qword_1EC6C7248, &qword_1D2114A80);
  v55 = v165;
  v56 = *(v165 + 48);
  v154 = v165 + 48;
  v153 = v56;
  v57 = v56(v54, 1, v19);
  v136 = v40;
  if (v57 == 1)
  {
    sub_1D20A862C(v54, &qword_1EC6C7248, &qword_1D2114A80);
    v58 = v147;
    v59 = v170;
LABEL_6:
    v62 = v172;
    v61 = *(v55 + 16);
    v173 = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    (v61)(v59, v58, v19);
    sub_1D2112BFC();
    goto LABEL_7;
  }

  (*(v55 + 32))(v53, v54, v19);
  v58 = v147;
  v60 = sub_1D211310C();
  v59 = v170;
  if ((v60 & 1) == 0)
  {
    (*(v55 + 8))(v53, v19);
    goto LABEL_6;
  }

  v61 = *(v55 + 16);
  v173 = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v61)(v170, v58, v19);
  (v61)(v151, v53, v19);
  sub_1D2112BEC();
  (*(v55 + 8))(v53, v19);
  v62 = v172;
LABEL_7:
  v63 = v167;
  sub_1D2112C0C();
  v64 = v62[9];
  sub_1D2112BDC();
  v65 = v171;
  v66 = v163;
  v67 = (v163 + *(v171 + 44));
  v68 = *(v148 + 48);
  v70 = *(v55 + 32);
  v69 = v55 + 32;
  v70(&v67[v68], v63, v19);
  v151 = *(v65 + 36);
  v167 = v70;
  v70(&v151[v66], &v63[v64], v19);
  v146 = *(v65 + 40);
  *(v66 + v146) = 0x409C200000000000;
  (v61)(v66, &v67[v68], v19);
  v71 = v68;
  v72 = 0;
  v171 = v69 - 24;
  *v67 = 0;
  v145 = (v69 + 8);
  v150 = (v69 + 24);
  v149 = v162 + 32;
  v73 = MEMORY[0x1E69E7CC0];
  v152 = v67;
  v67[8] = 0;
  v74 = v164;
  v172 = v61;
  v165 = v69;
  while (1)
  {
    v166 = v73;
    v75 = v152;
    v76 = v159;
    (v61)(v159, &v152[v71], v19);
    sub_1D20B7CE4(&qword_1EE0843E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    if (sub_1D211378C())
    {
      v77 = *v171;
      (*v171)(v76, v19);
      v78 = 1;
      v79 = v160;
      v80 = v161;
    }

    else
    {
      sub_1D20A8580(v75, v74, &qword_1EC6C7278, &unk_1D2115720);
      v81 = *(v148 + 48);
      sub_1D20B7CE4(&qword_1EC6C7288, MEMORY[0x1E6969530], MEMORY[0x1E6969560]);
      v82 = v71;
      v83 = v170;
      v84 = sub_1D2113B1C();
      v86 = v85;
      v77 = *v171;
      v87 = &v164[v81];
      v74 = v164;
      (*v171)(v87, v19);
      *v75 = v84;
      *(v75 + 8) = v86 & 1;
      v88 = v83;
      v71 = v82;
      (*v145)(v75 + v82, v88, v19);
      v89 = v76;
      v79 = v160;
      (v167)(v160, v89, v19);
      v78 = 0;
      v80 = v161;
    }

    v90 = v169;
    v91 = v155;
    (*v150)(v79, v78, 1, v19);
    if (v153(v79, 1, v19) == 1)
    {
      sub_1D20A862C(v163, &qword_1EC6C7280, &qword_1D21149E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73F0, &unk_1D2115730);
      v103 = (type metadata accessor for HSCleanGuidanceThresholds(0) - 8);
      v104 = (*(*v103 + 80) + 32) & ~*(*v103 + 80);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D2114850;
      v106 = v105 + v104;
      v107 = v137;
      v108 = v139;
      (*(v80 + 16))(v106, v137, v139);
      *(v106 + v103[7]) = a6;
      *(v106 + v103[8]) = a7;
      v109 = type metadata accessor for HSGuidanceForecast(0);
      v110 = *(v80 + 32);
      v111 = v144;
      v110(v144 + v109[6], v107, v108);
      v110(v111 + v109[8], v138, v108);
      *v111 = 0;
      *(v111 + 8) = v105;
      *(v111 + v109[7]) = v166;
      return (*(*(v109 - 1) + 56))(v111, 0, 1, v109);
    }

    v92 = v79;
    v93 = v165;
    (v167)(v90, v92, v19);
    v94 = sub_1D20FDFE4(v90);
    if (v95)
    {

      v113 = v135;
      *v135 = 0xD00000000000001BLL;
      v113[1] = 0x80000001D211A5C0;
      swift_storeEnumTagMultiPayload();
      sub_1D20B7CE4(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
      swift_willThrowTypedImpl();
      v77(v90, v19);
      v114 = *(v80 + 8);
      v115 = v139;
      v114(v138, v139);
      v114(v137, v115);
      sub_1D20A862C(v163, &qword_1EC6C7280, &qword_1D21149E0);
      goto LABEL_31;
    }

    v61 = *(v162 + 16);
    if (!v61)
    {
      break;
    }

    v96 = v94 / 30.0;
    if (COERCE__INT64(fabs(v96)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v96 <= -9.22337204e18)
    {
      goto LABEL_37;
    }

    if (v96 >= 9.22337204e18)
    {
      goto LABEL_38;
    }

    v97 = v158;
    (v172)(v158, v90, v19);
    if (!v72 && v91 == 5)
    {
      v98 = v170;
      sub_1D21130DC();
      v77(v97, v19);
      (v167)(v97, v98, v19);
    }

    v99 = v96 % v61;
    (v172)(v170, v97, v19);
    v61 = v168;
    sub_1D2112BFC();
    if (v99 < 0)
    {
      goto LABEL_39;
    }

    *(v61 + *(v157 + 20)) = *(v149 + 8 * v99);
    v73 = v166;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_1D20B7390(0, v73[2] + 1, 1, v73, &qword_1EC6C7420, &qword_1D2115448, type metadata accessor for HSGuidanceValue);
    }

    v101 = v73[2];
    v100 = v73[3];
    if (v101 >= v100 >> 1)
    {
      v73 = sub_1D20B7390((v100 > 1), v101 + 1, 1, v73, &qword_1EC6C7420, &qword_1D2115448, type metadata accessor for HSGuidanceValue);
    }

    v77(v97, v19);
    v77(v169, v19);
    v73[2] = v101 + 1;
    sub_1D20B7C1C(v168, v73 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v101, type metadata accessor for HSGuidanceValue);
    v102 = __OFADD__(v72++, 1);
    v61 = v172;
    if (v102)
    {
      goto LABEL_40;
    }
  }

  v116 = v134;
  *v134 = 0xD000000000000029;
  *(v116 + 8) = 0x80000001D211A5E0;
  swift_storeEnumTagMultiPayload();
  sub_1D20B7CE4(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
  swift_willThrowTypedImpl();
  v77(v90, v19);
  v117 = *(v161 + 8);
  v118 = v139;
  v117(v138, v139);
  v117(v137, v118);
  sub_1D20A862C(v163, &qword_1EC6C7280, &qword_1D21149E0);

  v113 = v135;
  sub_1D20B7C1C(v116, v135, type metadata accessor for HSGuidanceError);
LABEL_31:
  v93 = v144;
  v71 = v136;
  v61 = v143;
  v119 = v142;
  sub_1D20B7C1C(v113, v142, type metadata accessor for HSGuidanceError);
  v120 = v119;
  v121 = v141;
  sub_1D20B7C1C(v120, v141, type metadata accessor for HSGuidanceError);
  sub_1D20B7C1C(v121, v71, type metadata accessor for HSGuidanceError);
  if (qword_1EE083DE8 == -1)
  {
    goto LABEL_32;
  }

LABEL_41:
  swift_once();
LABEL_32:
  v122 = sub_1D211362C();
  __swift_project_value_buffer(v122, qword_1EE0874C0);
  sub_1D20B7D40(v71, v61, type metadata accessor for HSGuidanceError);
  v123 = sub_1D21135FC();
  v124 = sub_1D2113A7C();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = v71;
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v174 = v128;
    *v125 = 136315394;
    *(v125 + 4) = sub_1D20B75F0(0xD00000000000006BLL, 0x80000001D211A550, &v174);
    *(v125 + 12) = 2112;
    sub_1D20B7CE4(&qword_1EE083C08, type metadata accessor for HSGuidanceError, &protocol conformance descriptor for HSGuidanceError);
    swift_allocError();
    sub_1D20B7D40(v61, v129, type metadata accessor for HSGuidanceError);
    v130 = _swift_stdlib_bridgeErrorToNSError();
    sub_1D20B7C84(v61, type metadata accessor for HSGuidanceError);
    *(v125 + 14) = v130;
    *v127 = v130;
    _os_log_impl(&dword_1D209F000, v123, v124, "%s error: %@ unable to generate HSGuidanceForecast", v125, 0x16u);
    sub_1D20A862C(v127, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v127, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v128);
    MEMORY[0x1D3896EB0](v128, -1, -1);
    MEMORY[0x1D3896EB0](v125, -1, -1);

    v131 = v126;
  }

  else
  {

    sub_1D20B7C84(v61, type metadata accessor for HSGuidanceError);
    v131 = v71;
  }

  sub_1D20B7C84(v131, type metadata accessor for HSGuidanceError);
  v132 = type metadata accessor for HSGuidanceForecast(0);
  return (*(*(v132 - 8) + 56))(v93, 1, 1, v132);
}

uint64_t sub_1D20B6D20(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_1D20B6D80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7268, &unk_1D21149D0);
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

char *sub_1D20B6EA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7408, &qword_1D2115430);
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

char *sub_1D20B6FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7410, &qword_1D2115438);
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

char *sub_1D20B70E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73F8, "6{");
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1D20B7234(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B8, &qword_1D2115380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D20B7390(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_1D20B7594(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1D20B75F0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1D20B75F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D20B76BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D20B7E10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D20B76BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D20B77C8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D2113C5C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1D20B77C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D20B7814(a1, a2);
  sub_1D20B7944(&unk_1F4D9E028);
  return v3;
}

void *sub_1D20B7814(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D20B7A30(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D2113C5C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D21138CC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D20B7A30(v10, 0);
        result = sub_1D2113C0C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D20B7944(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_1D20B7AA4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D20B7A30(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7430, &unk_1D2115458);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D20B7AA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7430, &unk_1D2115458);
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