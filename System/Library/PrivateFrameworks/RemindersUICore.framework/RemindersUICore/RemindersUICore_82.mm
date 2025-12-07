uint64_t sub_21D892FF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_21DBF4DBC();
    if (v10)
    {
      v11 = sub_21DBF4DDC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_21DBF4DCC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_21DBF4DBC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21DBF4DDC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21DBF4DCC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_21D893224(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_21D8933B4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21D17B8A8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_21D892FF4(v13, a3, a4, &v12);
  v10 = v4;
  sub_21D17B8A8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_21D8933B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21DBF4DBC();
  v11 = result;
  if (result)
  {
    result = sub_21DBF4DDC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21DBF4DCC();
  sub_21D892FF4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_21D89346C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21D1BAF70(a3, a4);
          return sub_21D893224(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s15RemindersUICore34TTRExtensionContextExtractorResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSERecipeCard(0);
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0, &qword_21DC1ED40);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632D8, &unk_21DC2EC80);
  MEMORY[0x28223BE20](v9);
  v81 = &v74 - v10;
  v11 = sub_21DBF509C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1A0, &unk_21DC18EA0);
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  v21 = *(a1 + 8);
  v22 = *(a2 + 8);
  if (v21)
  {
    if (!v22 || (*a1 != *a2 || v21 != v22) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || (sub_21D1D61AC(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v23 = *(a1 + 40);
  v24 = *(a2 + 40);
  if (v23)
  {
    if (!v24 || (*(a1 + 32) != *(a2 + 32) || v23 != v24) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v75 = v6;
  v76 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  v25 = *(v76 + 32);
  v26 = *(v18 + 48);
  sub_21D0D3954(a1 + v25, v20, &qword_27CE58D60, &unk_21DC0A690);
  sub_21D0D3954(a2 + v25, &v20[v26], &qword_27CE58D60, &unk_21DC0A690);
  v77 = *(v12 + 48);
  if (v77(v20, 1, v11) == 1)
  {
    if (v77(&v20[v26], 1, v11) == 1)
    {
      sub_21D0CF7E0(v20, &qword_27CE58D60, &unk_21DC0A690);
      goto LABEL_26;
    }

LABEL_22:
    v27 = &qword_27CE5D1A0;
    v28 = &unk_21DC18EA0;
    v29 = v20;
LABEL_23:
    sub_21D0CF7E0(v29, v27, v28);
    return 0;
  }

  sub_21D0D3954(v20, v17, &qword_27CE58D60, &unk_21DC0A690);
  if (v77(&v20[v26], 1, v11) == 1)
  {
    (*(v12 + 8))(v17, v11);
    goto LABEL_22;
  }

  (*(v12 + 32))(v14, &v20[v26], v11);
  sub_21D895914();
  v31 = sub_21DBFA10C();
  v32 = *(v12 + 8);
  v32(v14, v11);
  v32(v17, v11);
  sub_21D0CF7E0(v20, &qword_27CE58D60, &unk_21DC0A690);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v33 = v76;
  v34 = *(v76 + 36);
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17760, 0x277D44868);
    v37 = v36;
    v38 = v35;
    v39 = sub_21DBFB63C();

    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v40 = v33[10];
  v41 = *(a1 + v40);
  v42 = *(a2 + v40);
  if (v41)
  {
    if (!v42)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_27CE5B258, 0x277D448F0);
    v43 = v42;
    v44 = v41;
    v45 = sub_21DBFB63C();

    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  if (*(a1 + v33[11]) != *(a2 + v33[11]))
  {
    return 0;
  }

  v46 = v33[12];
  v48 = *(a1 + v46);
  v47 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v51 = *v49;
  v50 = v49[1];
  if (v47 >> 60 == 15)
  {
    if (v50 >> 60 == 15)
    {
      sub_21D5FA9F0(v48, v47);
      sub_21D5FA9F0(v51, v50);
      sub_21D1BAF38(v48, v47);
      goto LABEL_43;
    }

LABEL_41:
    sub_21D5FA9F0(v48, v47);
    sub_21D5FA9F0(v51, v50);
    sub_21D1BAF38(v48, v47);
    sub_21D1BAF38(v51, v50);
    return 0;
  }

  if (v50 >> 60 == 15)
  {
    goto LABEL_41;
  }

  sub_21D5FA9F0(v48, v47);
  sub_21D5FA9F0(v51, v50);
  v52 = sub_21D89346C(v48, v47, v51, v50);
  sub_21D1BAF38(v51, v50);
  sub_21D1BAF38(v48, v47);
  if (!v52)
  {
    return 0;
  }

LABEL_43:
  v53 = v33[13];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = *(a2 + v53 + 8);
  if (v55)
  {
    if (!v57)
    {
      return 0;
    }
  }

  else
  {
    if (*v54 != *v56)
    {
      LOBYTE(v57) = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  v58 = v33[14];
  v59 = *(a1 + v58);
  v60 = *(a2 + v58);
  if (v59)
  {
    if (!v60)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
    v61 = v60;
    v62 = v59;
    v63 = sub_21DBFB63C();

    if ((v63 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v60)
  {
    return 0;
  }

  v64 = v33[15];
  v65 = *(v9 + 48);
  v66 = v81;
  sub_21D0D3954(a1 + v64, v81, &qword_27CE5EDE0, &qword_21DC1ED40);
  sub_21D0D3954(a2 + v64, v66 + v65, &qword_27CE5EDE0, &qword_21DC1ED40);
  v67 = v80;
  v68 = *(v79 + 48);
  if (v68(v66, 1, v80) != 1)
  {
    sub_21D0D3954(v66, v78, &qword_27CE5EDE0, &qword_21DC1ED40);
    if (v68(v66 + v65, 1, v67) == 1)
    {
      sub_21D5FBB20(v78, type metadata accessor for TTRSERecipeCard);
      goto LABEL_59;
    }

    v69 = v81;
    v70 = v81 + v65;
    v71 = v75;
    sub_21D8958AC(v70, v75, type metadata accessor for TTRSERecipeCard);
    v72 = v78;
    v73 = static TTRSERecipeCard.== infix(_:_:)();
    sub_21D5FBB20(v71, type metadata accessor for TTRSERecipeCard);
    sub_21D5FBB20(v72, type metadata accessor for TTRSERecipeCard);
    sub_21D0CF7E0(v69, &qword_27CE5EDE0, &qword_21DC1ED40);
    return (v73 & 1) != 0;
  }

  if (v68(v66 + v65, 1, v67) != 1)
  {
LABEL_59:
    v27 = &qword_27CE632D8;
    v28 = &unk_21DC2EC80;
    v29 = v81;
    goto LABEL_23;
  }

  sub_21D0CF7E0(v81, &qword_27CE5EDE0, &qword_21DC1ED40);
  return 1;
}

char *initializeBufferWithCopyOfBuffer for TTRExtensionContextExtractorResult(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = *(a2 + 16);
    v8 = a2[4];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v8;
    *(a1 + 40) = a2[5];
    v44 = a3[8];
    v9 = sub_21DBF509C();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v11(a2 + v44, 1, v9))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
      memcpy(&v4[v44], a2 + v44, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v44], a2 + v44, v9);
      (*(v10 + 56))(&v4[v44], 0, 1, v9);
    }

    v14 = a3[9];
    v15 = a3[10];
    v16 = *(a2 + v14);
    *&v4[v14] = v16;
    v17 = *(a2 + v15);
    *&v4[v15] = v17;
    v18 = a3[12];
    v4[a3[11]] = *(a2 + a3[11]);
    v19 = &v4[v18];
    v20 = (a2 + v18);
    v21 = *(a2 + v18 + 8);
    v22 = v16;
    v23 = v17;
    if (v21 >> 60 == 15)
    {
      *v19 = *v20;
    }

    else
    {
      v24 = *v20;
      sub_21D1BAF70(v24, v21);
      *v19 = v24;
      *(v19 + 1) = v21;
    }

    v25 = a3[13];
    v26 = a3[14];
    v27 = &v4[v25];
    v28 = a2 + v25;
    *v27 = *v28;
    v29 = *(a2 + v26);
    v27[8] = v28[8];
    *&v4[v26] = v29;
    v30 = a3[15];
    v31 = &v4[v30];
    v32 = (a2 + v30);
    v33 = type metadata accessor for TTRSERecipeCard(0);
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    v36 = v29;
    if (v35(v32, 1, v33))
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0, &qword_21DC1ED40);
      memcpy(v31, v32, *(*(v37 - 8) + 64));
    }

    else
    {
      v38 = v32[1];
      *v31 = *v32;
      *(v31 + 1) = v38;
      v45 = *(v33 + 24);
      v39 = sub_21DBF56BC();
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      sub_21DBF8E0C();
      if (v41(v32 + v45, 1, v39))
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
        memcpy(&v31[v45], v32 + v45, *(*(v42 - 8) + 64));
      }

      else
      {
        (*(v40 + 16))(&v31[v45], v32 + v45, v39);
        (*(v40 + 56))(&v31[v45], 0, 1, v39);
      }

      (*(v34 + 56))(v31, 0, 1, v33);
    }
  }

  return v4;
}

uint64_t destroy for TTRExtensionContextExtractorResult(uint64_t a1, int *a2)
{

  v4 = a2[8];
  v5 = sub_21DBF509C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = (a1 + a2[12]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_21D17B8A8(*v7, v8);
  }

  v9 = a1 + a2[15];
  v10 = type metadata accessor for TTRSERecipeCard(0);
  result = (*(*(v10 - 8) + 48))(v9, 1, v10);
  if (!result)
  {

    v12 = *(v10 + 24);
    v13 = sub_21DBF56BC();
    v15 = *(v13 - 8);
    result = (*(v15 + 48))(v9 + v12, 1, v13);
    if (!result)
    {
      v14 = *(v15 + 8);

      return v14(v9 + v12, v13);
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRExtensionContextExtractorResult(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  *(a1 + 40) = *(a2 + 40);
  v42 = a3[8];
  v8 = sub_21DBF509C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v10(a2 + v42, 1, v8))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
    memcpy((a1 + v42), (a2 + v42), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v42, a2 + v42, v8);
    (*(v9 + 56))(a1 + v42, 0, 1, v8);
  }

  v12 = a3[9];
  v13 = a3[10];
  v14 = *(a2 + v12);
  *(a1 + v12) = v14;
  v15 = *(a2 + v13);
  *(a1 + v13) = v15;
  v16 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v17 = a1 + v16;
  v18 = (a2 + v16);
  v19 = *(a2 + v16 + 8);
  v20 = v14;
  v21 = v15;
  if (v19 >> 60 == 15)
  {
    *v17 = *v18;
  }

  else
  {
    v22 = *v18;
    sub_21D1BAF70(v22, v19);
    *v17 = v22;
    *(v17 + 8) = v19;
  }

  v23 = a3[13];
  v24 = a3[14];
  v25 = a1 + v23;
  v26 = a2 + v23;
  *v25 = *v26;
  v27 = *(a2 + v24);
  *(v25 + 8) = *(v26 + 8);
  *(a1 + v24) = v27;
  v28 = a3[15];
  v29 = (a1 + v28);
  v30 = (a2 + v28);
  v31 = type metadata accessor for TTRSERecipeCard(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v27;
  if (v33(v30, 1, v31))
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0, &qword_21DC1ED40);
    memcpy(v29, v30, *(*(v35 - 8) + 64));
  }

  else
  {
    v36 = v30[1];
    *v29 = *v30;
    v29[1] = v36;
    v43 = *(v31 + 24);
    v37 = sub_21DBF56BC();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    sub_21DBF8E0C();
    if (v39(v30 + v43, 1, v37))
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
      memcpy(v29 + v43, v30 + v43, *(*(v40 - 8) + 64));
    }

    else
    {
      (*(v38 + 16))(v29 + v43, v30 + v43, v37);
      (*(v38 + 56))(v29 + v43, 0, 1, v37);
    }

    (*(v32 + 56))(v29, 0, 1, v31);
  }

  return a1;
}

uint64_t assignWithCopy for TTRExtensionContextExtractorResult(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  v6 = a3[8];
  v7 = sub_21DBF509C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(a1 + v6, a2 + v6, v7);
      (*(v8 + 56))(a1 + v6, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(a1 + v6, v7);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(a1 + v6, a2 + v6, v7);
LABEL_7:
  v13 = a3[9];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  *(a1 + v13) = v15;
  v16 = v15;

  v17 = a3[10];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  *(a1 + v17) = v19;
  v20 = v19;

  *(a1 + a3[11]) = *(a2 + a3[11]);
  v21 = a3[12];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = *(a2 + v21 + 8);
  if (*(a1 + v21 + 8) >> 60 == 15)
  {
    if (v24 >> 60 != 15)
    {
      v25 = *v23;
      sub_21D1BAF70(v25, v24);
      *v22 = v25;
      v22[1] = v24;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v24 >> 60 == 15)
  {
    sub_21D894DF8(v22);
LABEL_12:
    *v22 = *v23;
    goto LABEL_14;
  }

  v26 = *v23;
  sub_21D1BAF70(v26, v24);
  v27 = *v22;
  v28 = v22[1];
  *v22 = v26;
  v22[1] = v24;
  sub_21D17B8A8(v27, v28);
LABEL_14:
  v29 = a3[13];
  v30 = a1 + v29;
  v31 = (a2 + v29);
  v32 = *v31;
  *(v30 + 8) = *(v31 + 8);
  *v30 = v32;
  v33 = a3[14];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  *(a1 + v33) = v35;
  v36 = v35;

  v37 = a3[15];
  v38 = (a1 + v37);
  v39 = (a2 + v37);
  v40 = type metadata accessor for TTRSERecipeCard(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v43 = v42(v38, 1, v40);
  v44 = v42(v39, 1, v40);
  if (!v43)
  {
    if (!v44)
    {
      *v38 = *v39;
      *(v38 + 1) = *(v39 + 1);
      sub_21DBF8E0C();

      v52 = *(v40 + 24);
      v53 = sub_21DBF56BC();
      v54 = *(v53 - 8);
      v55 = *(v54 + 48);
      v56 = v55(&v38[v52], 1, v53);
      v57 = v55(&v39[v52], 1, v53);
      if (v56)
      {
        if (!v57)
        {
          (*(v54 + 16))(&v38[v52], &v39[v52], v53);
          (*(v54 + 56))(&v38[v52], 0, 1, v53);
          return a1;
        }
      }

      else
      {
        if (!v57)
        {
          (*(v54 + 24))(&v38[v52], &v39[v52], v53);
          return a1;
        }

        (*(v54 + 8))(&v38[v52], v53);
      }

      v49 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0) - 8) + 64);
      v50 = &v38[v52];
      v51 = &v39[v52];
      goto LABEL_21;
    }

    sub_21D5FBB20(v38, type metadata accessor for TTRSERecipeCard);
LABEL_20:
    v49 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0, &qword_21DC1ED40) - 8) + 64);
    v50 = v38;
    v51 = v39;
LABEL_21:
    memcpy(v50, v51, v49);
    return a1;
  }

  if (v44)
  {
    goto LABEL_20;
  }

  *v38 = *v39;
  *(v38 + 1) = *(v39 + 1);
  v59 = *(v40 + 24);
  v45 = sub_21DBF56BC();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  sub_21DBF8E0C();
  if (v47(&v39[v59], 1, v45))
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
    memcpy(&v38[v59], &v39[v59], *(*(v48 - 8) + 64));
  }

  else
  {
    (*(v46 + 16))(&v38[v59], &v39[v59], v45);
    (*(v46 + 56))(&v38[v59], 0, 1, v45);
  }

  (*(v41 + 56))(v38, 0, 1, v40);
  return a1;
}

uint64_t initializeWithTake for TTRExtensionContextExtractorResult(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v6 = a3[8];
  v7 = sub_21DBF509C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v10) = *(a2 + v10);
  v11 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[13];
  v13 = a3[14];
  v14 = a1 + v12;
  v15 = a2 + v12;
  *v14 = *v15;
  v16 = *(a2 + v13);
  *(v14 + 8) = *(v15 + 8);
  v17 = a3[15];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  *(a1 + v13) = v16;
  v20 = type metadata accessor for TTRSERecipeCard(0);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0, &qword_21DC1ED40);
    memcpy(v18, v19, *(*(v22 - 8) + 64));
  }

  else
  {
    *v18 = *v19;
    v23 = *(v20 + 24);
    v24 = sub_21DBF56BC();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v19 + v23, 1, v24))
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
      memcpy(v18 + v23, v19 + v23, *(*(v26 - 8) + 64));
    }

    else
    {
      (*(v25 + 32))(v18 + v23, v19 + v23, v24);
      (*(v25 + 56))(v18 + v23, 0, 1, v24);
    }

    (*(v21 + 56))(v18, 0, 1, v20);
  }

  return a1;
}

uint64_t assignWithTake for TTRExtensionContextExtractorResult(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  v8 = a3[8];
  v9 = sub_21DBF509C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1 + v8, 1, v9);
  v13 = v11(a2 + v8, 1, v9);
  if (v12)
  {
    if (!v13)
    {
      (*(v10 + 32))(a1 + v8, a2 + v8, v9);
      (*(v10 + 56))(a1 + v8, 0, 1, v9);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v10 + 8))(a1 + v8, v9);
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
    memcpy((a1 + v8), (a2 + v8), *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 40))(a1 + v8, a2 + v8, v9);
LABEL_7:
  v15 = a3[9];
  v16 = *(a1 + v15);
  *(a1 + v15) = *(a2 + v15);

  v17 = a3[10];
  v18 = *(a1 + v17);
  *(a1 + v17) = *(a2 + v17);

  v19 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = *(a1 + v19 + 8);
  if (v22 >> 60 == 15)
  {
LABEL_10:
    *v20 = *v21;
    goto LABEL_12;
  }

  v23 = *(v21 + 8);
  if (v23 >> 60 == 15)
  {
    sub_21D894DF8(v20);
    goto LABEL_10;
  }

  v24 = *v20;
  *v20 = *v21;
  *(v20 + 8) = v23;
  sub_21D17B8A8(v24, v22);
LABEL_12:
  v25 = a3[13];
  v26 = a3[14];
  v27 = a1 + v25;
  v28 = a2 + v25;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  v29 = *(a1 + v26);
  *(a1 + v26) = *(a2 + v26);

  v30 = a3[15];
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  v33 = type metadata accessor for TTRSERecipeCard(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v35(v31, 1, v33);
  v37 = v35(v32, 1, v33);
  if (!v36)
  {
    if (!v37)
    {
      *v31 = *v32;
      *(v31 + 1) = *(v32 + 1);

      v45 = *(v33 + 24);
      v46 = sub_21DBF56BC();
      v47 = *(v46 - 8);
      v48 = *(v47 + 48);
      v49 = v48(&v31[v45], 1, v46);
      v50 = v48(&v32[v45], 1, v46);
      if (v49)
      {
        if (!v50)
        {
          (*(v47 + 32))(&v31[v45], &v32[v45], v46);
          (*(v47 + 56))(&v31[v45], 0, 1, v46);
          return a1;
        }
      }

      else
      {
        if (!v50)
        {
          (*(v47 + 40))(&v31[v45], &v32[v45], v46);
          return a1;
        }

        (*(v47 + 8))(&v31[v45], v46);
      }

      v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0) - 8) + 64);
      v43 = &v31[v45];
      v44 = &v32[v45];
      goto LABEL_19;
    }

    sub_21D5FBB20(v31, type metadata accessor for TTRSERecipeCard);
LABEL_18:
    v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0, &qword_21DC1ED40) - 8) + 64);
    v43 = v31;
    v44 = v32;
LABEL_19:
    memcpy(v43, v44, v42);
    return a1;
  }

  if (v37)
  {
    goto LABEL_18;
  }

  *v31 = *v32;
  v38 = *(v33 + 24);
  v39 = sub_21DBF56BC();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(&v32[v38], 1, v39))
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
    memcpy(&v31[v38], &v32[v38], *(*(v41 - 8) + 64));
  }

  else
  {
    (*(v40 + 32))(&v31[v38], &v32[v38], v39);
    (*(v40 + 56))(&v31[v38], 0, 1, v39);
  }

  (*(v34 + 56))(v31, 0, 1, v33);
  return a1;
}

void sub_21D895710(uint64_t a1)
{
  sub_21D895858(319, &qword_27CE58D58, MEMORY[0x277CC8990]);
  if (v1 <= 0x3F)
  {
    sub_21D895858(319, &qword_27CE632D0, type metadata accessor for TTRSERecipeCard);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_21D895858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D8958AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21D895914()
{
  result = qword_27CE5D1A8;
  if (!qword_27CE5D1A8)
  {
    v3 = sub_21DBF509C();
    result = swift_getWitnessTable(MEMORY[0x277CC89A8], v3, v0, v1);
    atomic_store(result, &qword_27CE5D1A8);
  }

  return result;
}

double TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressReminderIDsForCurrentList.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D8959D8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E622C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21D895A6C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressStateChangeHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_21D0D0E78(v1, *(v0 + 40));
  return v1;
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressStateChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_21D0D0E88(v5, v6);
}

uint64_t sub_21D895C1C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21D895CB0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressReminderIDsChangeHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_21D0D0E78(v1, *(v0 + 56));
  return v1;
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressReminderIDsChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_21D0D0E88(v5, v6);
}

double TTRRemindersListAutoCategorizationActivityMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x277D84FA0];
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

double TTRRemindersListAutoCategorizationActivityMonitor.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x277D84FA0];
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

void TTRRemindersListAutoCategorizationActivityMonitor.startMonitoringAutoCategorizationActivityIfNeeded(forListID:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0, &qword_21DC0E530);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = v32 - v6;
  v7 = sub_21DBFBA3C();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE603C8, &qword_21DC23970);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632E0, &unk_21DC2EC90);
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x28223BE20](v14);
  v33 = v32 - v15;
  v16 = v1[8];
  if (!v16 || (sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700), v17 = v16, v18 = a1, v19 = sub_21DBFB63C(), v17, v18, (v19 & 1) == 0))
  {
    v32[1] = v4;
    TTRRemindersListAutoCategorizationActivityMonitor.stopMonitoringAutoCategorizationActivity()();
    v20 = v2[8];
    v2[8] = a1;

    v21 = qword_27CE56C10;
    v22 = a1;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = qword_27CE603B8;
    TTRAutoCategorizationActivityMonitor.startMonitoringIfNeeded()();
    v40 = *(v23 + OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_currentActivitySubject);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE603D8, &unk_21DC23978);
    sub_21D0D0F1C(&qword_27CE603E0, &qword_27CE603D8, &unk_21DC23978, MEMORY[0x277CBCE48]);
    sub_21D0D65DC(&qword_27CE603E8, &qword_27CE603F0, 0x277D445A8, MEMORY[0x277D85380]);
    sub_21DBF93AC();
    sub_21D0D0F1C(&qword_27CE603F8, &qword_27CE603C8, &qword_21DC23970, MEMORY[0x277CBCBE0]);
    v24 = sub_21DBF920C();
    v32[0] = v24;
    (*(v11 + 8))(v13, v10);
    v40 = v24;
    v25 = v9;
    sub_21DBFBA2C();
    v26 = [objc_opt_self() mainRunLoop];
    v39 = v26;
    v27 = sub_21DBFBA0C();
    v28 = v34;
    (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632E8, &qword_21DC2ECA0);
    sub_21D0D8CF0(0, &qword_280D17650, 0x277CBEB88);
    sub_21D0D0F1C(&qword_27CE632F0, &qword_27CE632E8, &qword_21DC2ECA0, MEMORY[0x277CBCD90]);
    sub_21D0D65DC(&qword_280D17660, &qword_280D17650, 0x277CBEB88, MEMORY[0x277CC9E80]);
    v29 = v33;
    sub_21DBF937C();
    sub_21D60C7A8(v28);

    (*(v37 + 8))(v25, v38);

    sub_21D0D0F1C(&unk_27CE632F8, &qword_27CE632E0, &unk_21DC2EC90, MEMORY[0x277CBCCF8]);
    v30 = v36;
    v31 = sub_21DBF91AC();
    (*(v35 + 8))(v29, v30);
    v2[9] = v31;
  }
}

Swift::Void __swiftcall TTRRemindersListAutoCategorizationActivityMonitor.stopMonitoringAutoCategorizationActivity()()
{
  if (*(v0 + 72))
  {

    sub_21DBF901C();
  }

  *(v0 + 72) = 0;

  v1 = *(v0 + 64);
  *(v0 + 64) = 0;

  swift_beginAccess();
  *(v0 + 16) = 0;
}

void sub_21D896554(void *a1)
{
  v2 = *(v1 + 64);
  if (v2)
  {
    v4 = v2;
    v5 = [a1 reminderIDsForListID_];
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    sub_21D0D65DC(&qword_280D17870, &qword_280D17880, 0x277D44700, MEMORY[0x277D85378]);
    v6 = sub_21DBFAAAC();

    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = sub_21DBFBD7C();
    }

    else
    {
      v7 = *(v6 + 16);
    }

    swift_beginAccess();
    if ((v7 != 0) != *(v1 + 16))
    {
      *(v1 + 16) = v7 != 0;
      swift_beginAccess();
      v8 = *(v1 + 32);
      if (v8)
      {
        v9 = *(v1 + 40);

        v8(v10);
        sub_21D0D0E88(v8, v9);
      }
    }

    swift_beginAccess();
    v11 = *(v1 + 24);
    sub_21DBF8E0C();
    v12 = sub_21D322414(v6, v11);

    if (v12)
    {
    }

    else
    {
      *(v1 + 24) = v6;

      swift_beginAccess();
      v13 = *(v1 + 48);
      if (v13)
      {
        v14 = *(v1 + 56);

        v13(v15);
        sub_21D0D0E88(v13, v14);
      }
    }
  }
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.deinit()
{

  sub_21D0D0E88(*(v0 + 32), *(v0 + 40));
  sub_21D0D0E88(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t TTRRemindersListAutoCategorizationActivityMonitor.__deallocating_deinit()
{

  sub_21D0D0E88(*(v0 + 32), *(v0 + 40));
  sub_21D0D0E88(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

id TTRIUnsupportedTextDropHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIUnsupportedTextDropHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TTRIUnsupportedTextDropHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TTRIUnsupportedTextDropHandler.textDroppableView(_:proposalForDrop:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75BA8]);

  return [v0 initWithDropOperation_];
}

char *sub_21D8969D0()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    sub_21D0CE468();
    v3 = v0;
    v4 = sub_21DBFB12C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63378, &unk_21DC2EE90);
    swift_allocObject();
    v1 = sub_21D1DD624(sub_21D89874C, v2, v4);
    *(v3 + 32) = v1;
  }

  return v1;
}

uint64_t sub_21D896AAC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D896B1C(v2, v3);
  }

  return result;
}

void sub_21D896B1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380, &qword_21DC09228);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v46 - v5;
  v53 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v46 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v46 - v13;
  v14 = type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay(0);
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = *(a2 + 16);
  v54 = a1;
  v48 = v6;
  if (v21)
  {
    v22 = sub_21D9D6724(v21, 0, v18);
    v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v49 = v22;
    sub_21D9D5FCC(&v59, v22 + v23, v21, a2);
    v25 = v24;
    v26 = v59;
    sub_21DBF8E0C();
    sub_21D0CFAF8(v26);
    if (v25 != v21)
    {
      goto LABEL_37;
    }

    a1 = v54;
    v6 = v48;
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  v27 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 64);
  v31 = (v28 + 63) >> 6;
  v50 = (v6 + 48);
  sub_21DBF8E0C();
  v32 = 0;
  v33 = MEMORY[0x277D84F90];
LABEL_8:
  v34 = v55;
  v35 = v32;
  if (!v30)
  {
    goto LABEL_12;
  }

  do
  {
    while (1)
    {
      v32 = v35;
LABEL_15:
      sub_21D89867C(*(a1 + 56) + *(v56 + 72) * (__clz(__rbit64(v30)) | (v32 << 6)), v20, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      sub_21D105904(v20, v16, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      v36 = *&v16[*(v57 + 20)];
      if ((v36 & 2) != 0)
      {
        sub_21D89867C(v16, v58, type metadata accessor for TTRRemindersListViewModel.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_21D211A80(0, v33[2] + 1, 1, v33);
        }

        v38 = v33[2];
        v37 = v33[3];
        if (v38 >= v37 >> 1)
        {
          v33 = sub_21D211A80((v37 > 1), v38 + 1, 1, v33);
        }

        v33[2] = v38 + 1;
        sub_21D105904(v58, v33 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v38, type metadata accessor for TTRRemindersListViewModel.Item);
        a1 = v54;
        v34 = v55;
      }

      v30 &= v30 - 1;
      if (v36)
      {
        break;
      }

      sub_21D106EB8(v16, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      v35 = v32;
      if (!v30)
      {
        goto LABEL_12;
      }
    }

    v39 = v51;
    sub_21D89867C(v16, v51, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRSECreateRemindersViewModel.Item.init(remindersListItem:)(v39, v34);
    if ((*v50)(v34, 1, v53) != 1)
    {
      v40 = v34;
      v41 = v46;
      sub_21D105904(v40, v46, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      sub_21D89867C(v41, v47, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      v42 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_21D214F10(0, v42[2] + 1, 1, v42);
      }

      v44 = v42[2];
      v43 = v42[3];
      v49 = v42;
      if (v44 >= v43 >> 1)
      {
        v49 = sub_21D214F10((v43 > 1), v44 + 1, 1, v49);
      }

      sub_21D106EB8(v46, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      sub_21D106EB8(v16, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      v45 = v49;
      v49[2] = v44 + 1;
      sub_21D105904(v47, v45 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v44, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      goto LABEL_8;
    }

    sub_21D106EB8(v16, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
    sub_21D8986E4(v34);
    v35 = v32;
  }

  while (v30);
LABEL_12:
  while (1)
  {
    v32 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v32 >= v31)
    {

      if (v49[2])
      {
        v59 = v49;
        sub_21DBF906C();

        if (v33[2])
        {
          goto LABEL_32;
        }
      }

      else
      {

        if (v33[2])
        {
LABEL_32:
          v59 = v33;
          sub_21DBF906C();
        }
      }

      return;
    }

    v30 = *(v27 + 8 * v32);
    ++v35;
    if (v30)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_21D897208()
{

  return swift_deallocClassInstance();
}

void sub_21D897284(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v33 = sub_21DBF9D2C();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21DBF9D5C();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PendingDisplay.Element(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = *a1;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
    v16 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v37 = 0x800000021DC49D80;
    v17 = *(v15 + 72);
    v29 = v43;
    v28 = (v6 + 8);
    v27 = (v8 + 8);
    v39 = v10;
    v40 = v3;
    v38 = v14;
    v36 = v17;
    do
    {
      v18 = sub_21D8969D0();
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370, &unk_21DC2EE80) + 48);
      sub_21D89867C(v16, v12, type metadata accessor for TTRRemindersListViewModel.Item);
      *&v12[v19] = v14;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      LOBYTE(v19) = sub_21D897D30(v12);
      v20 = swift_endAccess();
      if (v19)
      {
        v21 = *(v18 + 2);
        aBlock[0] = *(v21 + 40);
        MEMORY[0x28223BE20](v20);
        *(&v27 - 4) = v21;
        *(&v27 - 3) = 0xD000000000000017;
        *(&v27 - 2) = v37;
        sub_21DBF5EFC();

        sub_21DBF814C();

        if (v41 == 1)
        {
          v35 = *(v21 + 32);
          v22 = swift_allocObject();
          swift_weakInit();
          v43[2] = sub_21D808210;
          v43[3] = v22;
          v34 = v22;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v43[0] = sub_21D0D74FC;
          v43[1] = &block_descriptor_106;
          v23 = _Block_copy(aBlock);

          v24 = v30;
          sub_21DBF9D4C();
          v41 = MEMORY[0x277D84F90];
          sub_21D0CD898();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
          sub_21D0CD8F0();
          v25 = v32;
          v26 = v33;
          sub_21DBFBCBC();
          MEMORY[0x223D438F0](0, v24, v25, v23);
          _Block_release(v23);
          (*v28)(v25, v26);
          (*v27)(v24, v31);
          sub_21D106EB8(v12, type metadata accessor for PendingDisplay.Element);
        }

        else
        {
          sub_21D106EB8(v12, type metadata accessor for PendingDisplay.Element);
        }

        v14 = v38;
        v17 = v36;
      }

      else
      {

        sub_21D106EB8(v12, type metadata accessor for PendingDisplay.Element);
      }

      v16 += v17;
      --v13;
    }

    while (v13);
  }
}

void sub_21D8977FC(uint64_t a1)
{
  v2 = v1;
  v31 = sub_21DBF9D2C();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21DBF9D5C();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PendingDisplay.Element(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(type metadata accessor for TTRSECreateRemindersViewModel.Item(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    v34 = 0x800000021DC49D80;
    v26 = (v4 + 8);
    v27 = v40;
    v25 = (v6 + 8);
    v36 = v8;
    v37 = v2;
    v35 = v14;
    do
    {
      v15 = sub_21D8969D0();
      sub_21D89867C(v13, v10, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v16 = sub_21D897D30(v10);
      v17 = swift_endAccess();
      if (v16)
      {
        v18 = *(v15 + 2);
        aBlock[0] = *(v18 + 40);
        MEMORY[0x28223BE20](v17);
        *(&v24 - 4) = v18;
        *(&v24 - 3) = 0xD000000000000017;
        *(&v24 - 2) = v34;
        sub_21DBF5EFC();

        sub_21DBF814C();

        if (v38 == 1)
        {
          v33 = *(v18 + 32);
          v19 = swift_allocObject();
          swift_weakInit();
          v40[2] = sub_21D8A8764;
          v40[3] = v19;
          v32 = v19;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v40[0] = sub_21D0D74FC;
          v40[1] = &block_descriptor_13_5;
          v20 = _Block_copy(aBlock);

          v21 = v28;
          sub_21DBF9D4C();
          v38 = MEMORY[0x277D84F90];
          sub_21D0CD898();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
          sub_21D0CD8F0();
          v22 = v30;
          v23 = v31;
          sub_21DBFBCBC();
          MEMORY[0x223D438F0](0, v21, v22, v20);
          _Block_release(v20);
          (*v26)(v22, v23);
          (*v25)(v21, v29);
          sub_21D106EB8(v10, type metadata accessor for PendingDisplay.Element);
        }

        else
        {
          sub_21D106EB8(v10, type metadata accessor for PendingDisplay.Element);
        }

        v14 = v35;
      }

      else
      {

        sub_21D106EB8(v10, type metadata accessor for PendingDisplay.Element);
      }

      v13 += v14;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_21D897D30(uint64_t a1)
{
  v79 = a1;
  v1 = type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay(0);
  v2 = *(v1 - 8);
  v77 = v1;
  v78 = v2;
  MEMORY[0x28223BE20](v1);
  v74 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = &v70 - v5;
  MEMORY[0x28223BE20](v6);
  v72 = &v70 - v7;
  v70 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v70);
  v73 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v70 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v12 - 8);
  v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380, &qword_21DC09228);
  MEMORY[0x28223BE20](v17 - 8);
  v75 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  v22 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v70 - v26;
  v28 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PendingDisplay.Element(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D89867C(v79, v34, type metadata accessor for PendingDisplay.Element);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D105904(v34, v31, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    TTRSECreateRemindersViewModel.Item.treeItemIdentifier.getter(v27);
    v47 = v80[1];
    if (*(v47 + 16))
    {
      v48 = sub_21D17E2AC(v27);
      if (v49)
      {
        sub_21D89867C(*(v47 + 56) + *(v29 + 72) * v48, v21, type metadata accessor for TTRSECreateRemindersViewModel.Item);
        (*(v29 + 56))(v21, 0, 1, v28);
        sub_21D106EB8(v27, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
        sub_21D106EB8(v31, type metadata accessor for TTRSECreateRemindersViewModel.Item);
        sub_21D8986E4(v21);
        return 0;
      }
    }

    v62 = *(v29 + 56);
    v62(v21, 1, 1, v28);
    sub_21D8986E4(v21);
    sub_21D89867C(v27, v24, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    v63 = v75;
    sub_21D89867C(v31, v75, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    v62(v63, 0, 1, v28);
    sub_21D17C66C(v63, v24);
    sub_21D106EB8(v27, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    v64 = type metadata accessor for TTRSECreateRemindersViewModel.Item;
    v65 = v31;
    goto LABEL_19;
  }

  v35 = *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370, &unk_21DC2EE80) + 48)];
  sub_21D105904(v34, v16, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v11);
  v36 = v80;
  v37 = *v80;
  v39 = v77;
  v38 = v78;
  v40 = v11;
  if (*(*v80 + 16))
  {
    v41 = sub_21D181E00();
    if (v42)
    {
      v43 = v71;
      sub_21D89867C(*(v37 + 56) + *(v38 + 72) * v41, v71, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      v44 = v72;
      sub_21D105904(v43, v72, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      v45 = *(v44 + *(v39 + 20));
      sub_21D106EB8(v44, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      if ((v35 & ~v45) == 0)
      {
        sub_21D106EB8(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106EB8(v16, type metadata accessor for TTRRemindersListViewModel.Item);
        return 0;
      }
    }
  }

  v50 = v16;
  v51 = v16;
  v52 = v76;
  sub_21D89867C(v51, v76, type metadata accessor for TTRRemindersListViewModel.Item);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v36;
  v54 = v81;
  v56 = sub_21D181E00();
  v57 = v54[2];
  v58 = (v55 & 1) == 0;
  v59 = v57 + v58;
  if (__OFADD__(v57, v58))
  {
    __break(1u);
LABEL_22:
    sub_21D2209B8();
    v54 = v81;
    goto LABEL_15;
  }

  LOBYTE(v38) = v55;
  if (v54[3] < v59)
  {
    sub_21D2164E4(v59, isUniquelyReferenced_nonNull_native);
    v54 = v81;
    v60 = sub_21D181E00();
    if ((v38 & 1) != (v61 & 1))
    {
      sub_21D106EB8(v52, type metadata accessor for TTRRemindersListViewModel.Item);
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }

    v56 = v60;
    goto LABEL_15;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v66 = v50;
  *v36 = v54;
  if (v38)
  {
    sub_21D106EB8(v52, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  else
  {
    v67 = v74;
    sub_21D89867C(v52, v74, type metadata accessor for TTRRemindersListViewModel.Item);
    *(v67 + *(v39 + 20)) = 0;
    sub_21D106EB8(v52, type metadata accessor for TTRRemindersListViewModel.Item);
    v68 = v73;
    sub_21D89867C(v40, v73, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D332CD4(v56, v68, v67, v54);
  }

  v69 = v54[7] + *(v78 + 72) * v56;
  *(v69 + *(v39 + 20)) |= v35;
  sub_21D106EB8(v40, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v64 = type metadata accessor for TTRRemindersListViewModel.Item;
  v65 = v66;
LABEL_19:
  sub_21D106EB8(v65, v64);
  return 1;
}

double sub_21D898594@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

void sub_21D8985F8(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F98];
  a1[1] = v1;
}

void sub_21D89860C()
{

  v1 = MEMORY[0x277D84F98];
  *v0 = MEMORY[0x277D84F98];
  v0[1] = v1;
}

uint64_t sub_21D89867C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8986E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380, &qword_21DC09228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void **sub_21D898754(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(v3, 1, v28))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, v3, *(*(v30 - 8) + 64));
            }

            else
            {
              *a1 = *v3;
              v39 = *(v28 + 20);
              v40 = sub_21DBF6C1C();
              v103 = *(*(v40 - 8) + 16);
              sub_21DBF8E0C();
              v103(a1 + v39, v3 + v39, v40);
              (*(v29 + 56))(a1, 0, 1, v28);
            }

            v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v42 = (a1 + v41);
            v43 = (v3 + v41);
            v44 = v43[1];
            if (v44)
            {
              *v42 = *v43;
              v42[1] = v44;
              v45 = v43[2];
              v42[2] = v45;
              sub_21DBF8E0C();
              v46 = v45;
            }

            else
            {
              *v42 = *v43;
              v42[2] = v43[2];
            }

            goto LABEL_129;
          case 7:
            v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(v3, 1, v34))
            {
              v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v3, *(*(v36 - 8) + 64));
            }

            else
            {
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(a1, v3, v48);
              *(a1 + *(v34 + 20)) = *(v3 + *(v34 + 20));
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v49 + 20)) = *(v3 + *(v49 + 20));
            goto LABEL_129;
          case 8:
            *a1 = *v3;
            v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v10 = sub_21DBF8D7C();
            (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

LABEL_35:
        memcpy(a1, v3, *(*(v7 - 8) + 64));
LABEL_130:
        *(a1 + *(v6 + 20)) = *(v3 + *(v6 + 20));
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v3;
        *(a1 + 8) = *(v3 + 8);
        *(a1 + 9) = *(v3 + 9);
        v20 = v3[2];
        a1[2] = v20;
        v21 = v20;
        goto LABEL_129;
      }

      v31 = *v3;
      *a1 = *v3;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v32 = *(v17 + 48);
      v33 = v31;
      if (v32(v3 + v15, 1, v16))
      {
LABEL_28:
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v15, v3 + v15, *(*(v27 - 8) + 64));
        goto LABEL_129;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 > 4)
      {
        if (v47 <= 7)
        {
          if (v47 == 5 || v47 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v47 != 8 && v47 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v95 = *(v3 + v15);
        *(a1 + v15) = v95;
        v96 = v95;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_129;
      }

      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          if (v47 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(a1 + v15, v3 + v15, *(v17 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v97 = sub_21DBF563C();
      (*(*(v97 - 8) + 16))(a1 + v15, v3 + v15, v97);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v14 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v106 = v6;
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, v3, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *v3;
        *a1 = *v3;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, v3, *(*(v12 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = a1 + v57;
      v59 = v3 + v57;
      v60 = *(v3 + v57 + 8);
      if (v60)
      {
        v104 = v3;
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v66 = *(v59 + 6);
        v65 = *(v59 + 7);
        v99 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v66, v65, v99);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v66;
        *(v58 + 7) = v65;
        v58[64] = v99;
        *(v58 + 65) = *(v59 + 65);
        v67 = v59[120];
        if (v67 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v68 = *(v59 + 9);
          v100 = *(v59 + 10);
          v69 = *(v59 + 11);
          v70 = *(v59 + 12);
          v71 = *(v59 + 13);
          v72 = *(v59 + 14);
          v73 = v67 & 1;
          sub_21D0FB960(v68, v100, v69, v70, v71, v72, v67 & 1);
          *(v58 + 9) = v68;
          *(v58 + 10) = v100;
          *(v58 + 11) = v69;
          *(v58 + 12) = v70;
          *(v58 + 13) = v71;
          *(v58 + 14) = v72;
          v58[120] = v73;
        }

        v6 = v106;
        v58[121] = v59[121];
        v3 = v104;
        goto LABEL_98;
      }

LABEL_95:
      v74 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v74;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v75 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v75;
      v76 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v76;
LABEL_98:
      *(a1 + v56[6]) = *(v3 + v56[6]);
      *(a1 + v56[7]) = *(v3 + v56[7]);
      *(a1 + v56[8]) = *(v3 + v56[8]);
      *(a1 + v56[9]) = *(v3 + v56[9]);
      *(a1 + v56[10]) = *(v3 + v56[10]);
      v77 = v56[11];
      v78 = *(v3 + v77);
      *(a1 + v77) = v78;
      v79 = v78;
      goto LABEL_129;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v107 = v6;
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, v3, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *v3;
      *a1 = *v3;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, v3, *(*(v22 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v80 = v56[5];
    v58 = a1 + v80;
    v59 = v3 + v80;
    v81 = *(v3 + v80 + 8);
    if (v81)
    {
      v105 = v3;
      *v58 = *v59;
      *(v58 + 1) = v81;
      v82 = *(v59 + 2);
      v83 = *(v59 + 3);
      v84 = *(v59 + 4);
      v85 = *(v59 + 5);
      v86 = *(v59 + 6);
      v87 = *(v59 + 7);
      v101 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v82, v83, v84, v85, v86, v87, v101);
      *(v58 + 2) = v82;
      *(v58 + 3) = v83;
      *(v58 + 4) = v84;
      *(v58 + 5) = v85;
      *(v58 + 6) = v86;
      *(v58 + 7) = v87;
      v58[64] = v101;
      *(v58 + 65) = *(v59 + 65);
      v88 = v59[120];
      if (v88 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v89 = *(v59 + 9);
        v102 = *(v59 + 10);
        v90 = *(v59 + 11);
        v91 = *(v59 + 12);
        v92 = *(v59 + 13);
        v93 = *(v59 + 14);
        v94 = v88 & 1;
        sub_21D0FB960(v89, v102, v90, v91, v92, v93, v88 & 1);
        *(v58 + 9) = v89;
        *(v58 + 10) = v102;
        *(v58 + 11) = v90;
        *(v58 + 12) = v91;
        *(v58 + 13) = v92;
        *(v58 + 14) = v93;
        v58[120] = v94;
      }

      v6 = v107;
      v58[121] = v59[121];
      v3 = v105;
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

void **sub_21D899DC4(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v106 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(a1, a2, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v50 = *a2;
        *a1 = *a2;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_90:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = a1 + v56;
      v58 = a2 + v56;
      v59 = *(a2 + v56 + 8);
      if (v59)
      {
        v102 = a2;
        v104 = a1;
        *v57 = *v58;
        *(v57 + 1) = v59;
        v60 = *(v58 + 2);
        v61 = *(v58 + 3);
        v62 = *(v58 + 4);
        v63 = *(v58 + 5);
        v64 = *(v58 + 6);
        v65 = *(v58 + 7);
        v66 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v60, v61, v62, v63, v64, v65, v66);
        *(v57 + 2) = v60;
        *(v57 + 3) = v61;
        *(v57 + 4) = v62;
        *(v57 + 5) = v63;
        *(v57 + 6) = v64;
        *(v57 + 7) = v65;
        v57[64] = v66;
        *(v57 + 65) = *(v58 + 65);
        v67 = v58[120];
        if (v67 == 255)
        {
          *(v57 + 72) = *(v58 + 72);
          *(v57 + 88) = *(v58 + 88);
          *(v57 + 104) = *(v58 + 104);
          v57[120] = v58[120];
        }

        else
        {
          v68 = *(v58 + 9);
          v69 = *(v58 + 10);
          v70 = *(v58 + 11);
          v71 = *(v58 + 12);
          v72 = *(v58 + 13);
          v73 = *(v58 + 14);
          v74 = v67 & 1;
          sub_21D0FB960(v68, v69, v70, v71, v72, v73, v67 & 1);
          *(v57 + 9) = v68;
          *(v57 + 10) = v69;
          *(v57 + 11) = v70;
          *(v57 + 12) = v71;
          *(v57 + 13) = v72;
          *(v57 + 14) = v73;
          v57[120] = v74;
        }

        a3 = v106;
        v57[121] = v58[121];
        a2 = v102;
        a1 = v104;
        goto LABEL_96;
      }

LABEL_93:
      v75 = *(v58 + 5);
      *(v57 + 4) = *(v58 + 4);
      *(v57 + 5) = v75;
      *(v57 + 6) = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      v76 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v76;
      v77 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v77;
LABEL_96:
      *(a1 + v55[6]) = *(a2 + v55[6]);
      *(a1 + v55[7]) = *(a2 + v55[7]);
      *(a1 + v55[8]) = *(a2 + v55[8]);
      *(a1 + v55[9]) = *(a2 + v55[9]);
      *(a1 + v55[10]) = *(a2 + v55[10]);
      v78 = v55[11];
      v79 = *(a2 + v78);
      *(a1 + v78) = v79;
      v80 = v79;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v107 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(a1, a2, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v53 = *a2;
      *a1 = *a2;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v81 = v55[5];
    v57 = a1 + v81;
    v58 = a2 + v81;
    v82 = *(a2 + v81 + 8);
    if (v82)
    {
      v103 = a2;
      v105 = a1;
      *v57 = *v58;
      *(v57 + 1) = v82;
      v83 = *(v58 + 2);
      v84 = *(v58 + 3);
      v85 = *(v58 + 4);
      v86 = *(v58 + 5);
      v88 = *(v58 + 6);
      v87 = *(v58 + 7);
      v89 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v83, v84, v85, v86, v88, v87, v89);
      *(v57 + 2) = v83;
      *(v57 + 3) = v84;
      *(v57 + 4) = v85;
      *(v57 + 5) = v86;
      *(v57 + 6) = v88;
      *(v57 + 7) = v87;
      v57[64] = v89;
      *(v57 + 65) = *(v58 + 65);
      v90 = v58[120];
      if (v90 == 255)
      {
        *(v57 + 72) = *(v58 + 72);
        *(v57 + 88) = *(v58 + 88);
        *(v57 + 104) = *(v58 + 104);
        v57[120] = v58[120];
      }

      else
      {
        v91 = *(v58 + 9);
        v92 = *(v58 + 10);
        v93 = *(v58 + 11);
        v94 = *(v58 + 12);
        v95 = *(v58 + 13);
        v96 = *(v58 + 14);
        v97 = v90 & 1;
        sub_21D0FB960(v91, v92, v93, v94, v95, v96, v90 & 1);
        *(v57 + 9) = v91;
        *(v57 + 10) = v92;
        *(v57 + 11) = v93;
        *(v57 + 12) = v94;
        *(v57 + 13) = v95;
        *(v57 + 14) = v96;
        v57[120] = v97;
      }

      a3 = v107;
      v57[121] = v58[121];
      a2 = v103;
      a1 = v105;
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_127;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_127;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v98 = *(a2 + v13);
      *(a1 + v13) = v98;
      v99 = v98;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_127;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 16))(a1 + v13, a2 + v13, v100);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(a2, 1, v26))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, a2, *(*(v28 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v37 = *(v26 + 20);
        v38 = sub_21DBF6C1C();
        v39 = *(*(v38 - 8) + 16);
        sub_21DBF8E0C();
        v39(a1 + v37, a2 + v37, v38);
        (*(v27 + 56))(a1, 0, 1, v26);
      }

      v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v41 = (a1 + v40);
      v42 = (a2 + v40);
      v43 = v42[1];
      if (v43)
      {
        *v41 = *v42;
        v41[1] = v43;
        v44 = v42[2];
        v41[2] = v44;
        sub_21DBF8E0C();
        v45 = v44;
      }

      else
      {
        *v41 = *v42;
        v41[2] = v42[2];
      }

      goto LABEL_127;
    case 7:
      v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(a2, 1, v32))
      {
        v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v34 - 8) + 64));
      }

      else
      {
        v47 = sub_21DBF563C();
        (*(*(v47 - 8) + 16))(a1, a2, v47);
        *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
        (*(v33 + 56))(a1, 0, 1, v32);
      }

      v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
      goto LABEL_127;
    case 8:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_128:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void **sub_21D89B3C0(void **a1, void **a2, uint64_t a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D106EB8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(v4, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, v4, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *v4;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v108 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v108(a1 + v37, v4 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (v4 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_128;
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(v4, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v4, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, v4, v46);
              *(a1 + *(v32 + 20)) = *(v4 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(v4 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *a1 = *v4;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, v4 + v8, v9);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v4;
        *(a1 + 8) = *(v4 + 8);
        *(a1 + 9) = *(v4 + 9);
        *(a1 + 10) = *(v4 + 10);
        v18 = v4[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_128;
      }

      v29 = *v4;
      *a1 = *v4;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(v4 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v13, v4 + v13, *(*(v25 - 8) + 64));
        goto LABEL_128;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_113;
          }

          goto LABEL_126;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_126;
        }

LABEL_112:
        v100 = *(v4 + v13);
        *(a1 + v13) = v100;
        v101 = v100;
        swift_storeEnumTagMultiPayload();
LABEL_127:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_128;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_113;
          }

LABEL_126:
          memcpy(a1 + v13, v4 + v13, *(v15 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v102 = sub_21DBF563C();
      (*(*(v102 - 8) + 16))(a1 + v13, v4 + v13, v102);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(v4 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(v4 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_34:
        memcpy(a1, v4, *(*(v6 - 8) + 64));
        goto LABEL_129;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v111 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, v4, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v49 = *v4;
        *a1 = *v4;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(a1, v4, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = v4 + v55;
      if (*(v4 + v55 + 8))
      {
        v109 = v4;
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v63 = *(v57 + 6);
        v62 = *(v57 + 7);
        v104 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v63, v62, v104);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v63;
        *(v56 + 7) = v62;
        v56[64] = v104;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v64 = v57[120];
        if (v64 == 255)
        {
          v77 = *(v57 + 72);
          v78 = *(v57 + 88);
          v79 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v79;
          *(v56 + 88) = v78;
          *(v56 + 72) = v77;
        }

        else
        {
          v65 = *(v57 + 9);
          v105 = *(v57 + 10);
          v66 = *(v57 + 11);
          v67 = *(v57 + 12);
          v68 = *(v57 + 13);
          v69 = *(v57 + 14);
          v70 = v64 & 1;
          sub_21D0FB960(v65, v105, v66, v67, v68, v69, v64 & 1);
          *(v56 + 9) = v65;
          *(v56 + 10) = v105;
          *(v56 + 11) = v66;
          *(v56 + 12) = v67;
          *(v56 + 13) = v68;
          *(v56 + 14) = v69;
          v56[120] = v70;
        }

        a3 = v111;
        v56[121] = v57[121];
        v4 = v109;
        goto LABEL_97;
      }

LABEL_94:
      v71 = *v57;
      v72 = *(v57 + 1);
      v73 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v73;
      *v56 = v71;
      *(v56 + 1) = v72;
      v74 = *(v57 + 4);
      v75 = *(v57 + 5);
      v76 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v75;
      *(v56 + 6) = v76;
      *(v56 + 4) = v74;
      a3 = v111;
LABEL_97:
      *(a1 + v54[6]) = *(v4 + v54[6]);
      *(a1 + v54[7]) = *(v4 + v54[7]);
      *(a1 + v54[8]) = *(v4 + v54[8]);
      *(a1 + v54[9]) = *(v4 + v54[9]);
      *(a1 + v54[10]) = *(v4 + v54[10]);
      v80 = v54[11];
      v81 = *(v4 + v80);
      *(a1 + v80) = v81;
      v82 = v81;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v111 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, v4, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v52 = *v4;
      *a1 = *v4;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(a1, v4, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v54[5];
    v56 = a1 + v83;
    v57 = v4 + v83;
    if (*(v4 + v83 + 8))
    {
      v110 = v4;
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v84 = *(v57 + 2);
      v85 = *(v57 + 3);
      v86 = *(v57 + 4);
      v87 = *(v57 + 5);
      v88 = *(v57 + 6);
      v89 = *(v57 + 7);
      v106 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v106);
      *(v56 + 2) = v84;
      *(v56 + 3) = v85;
      *(v56 + 4) = v86;
      *(v56 + 5) = v87;
      *(v56 + 6) = v88;
      *(v56 + 7) = v89;
      v56[64] = v106;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v90 = v57[120];
      if (v90 == 255)
      {
        v97 = *(v57 + 72);
        v98 = *(v57 + 88);
        v99 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v99;
        *(v56 + 88) = v98;
        *(v56 + 72) = v97;
      }

      else
      {
        v91 = *(v57 + 9);
        v107 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(v91, v107, v92, v93, v94, v95, v90 & 1);
        *(v56 + 9) = v91;
        *(v56 + 10) = v107;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a3 = v111;
      v56[121] = v57[121];
      v4 = v110;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  *(a1 + *(a3 + 20)) = *(v4 + *(a3 + 20));
  return a1;
}

_BYTE *sub_21D89CA58(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

void *sub_21D89DB2C(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106EB8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = (a1 + v36);
            v38 = (a2 + v36);
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            *(a1 + v35[6]) = *(a2 + v35[6]);
            *(a1 + v35[7]) = *(a2 + v35[7]);
            *(a1 + v35[8]) = *(a2 + v35[8]);
            *(a1 + v35[9]) = *(a2 + v35[9]);
            *(a1 + v35[10]) = *(a2 + v35[10]);
            *(a1 + v35[11]) = *(a2 + v35[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21D89EC4C(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **sub_21D89ECE4(void **a1, void **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 5)
        {
          switch(EnumCaseMultiPayload)
          {
            case 6:
              v42 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v43 = *(v42 - 8);
              if ((*(v43 + 48))(a2, 1, v42))
              {
                v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
                memcpy(a1, a2, *(*(v44 - 8) + 64));
              }

              else
              {
                *a1 = *a2;
                v56 = *(v42 + 20);
                v57 = sub_21DBF6C1C();
                v129 = *(*(v57 - 8) + 16);
                sub_21DBF8E0C();
                v129(a1 + v56, a2 + v56, v57);
                (*(v43 + 56))(a1, 0, 1, v42);
              }

              v58 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v59 = (a1 + v58);
              v60 = (a2 + v58);
              v61 = v60[1];
              if (v61)
              {
                *v59 = *v60;
                v59[1] = v61;
                v62 = v60[2];
                v59[2] = v62;
                sub_21DBF8E0C();
                v63 = v62;
              }

              else
              {
                *v59 = *v60;
                v59[2] = v60[2];
              }

              goto LABEL_192;
            case 7:
              v48 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v49 = *(v48 - 8);
              if ((*(v49 + 48))(a2, 1, v48))
              {
                v50 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(a1, a2, *(*(v50 - 8) + 64));
              }

              else
              {
                v65 = sub_21DBF563C();
                (*(*(v65 - 8) + 16))(a1, a2, v65);
                *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
                (*(v49 + 56))(a1, 0, 1, v48);
              }

              v66 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v66 + 20)) = *(a2 + *(v66 + 20));
              goto LABEL_192;
            case 8:
              *a1 = *a2;
              v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v9 = sub_21DBF8D7C();
              (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_192:
              swift_storeEnumTagMultiPayload();
              goto LABEL_193;
          }

LABEL_46:
          memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_193:
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370, &unk_21DC2EE80);
          *(a1 + *(v123 + 48)) = *(a2 + *(v123 + 48));
          goto LABEL_194;
        }

        if (EnumCaseMultiPayload != 4)
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 9) = *(a2 + 9);
          v34 = a2[2];
          a1[2] = v34;
          v35 = v34;
          goto LABEL_192;
        }

        v45 = *a2;
        *a1 = *a2;
        v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v31 = *(v30 - 8);
        v46 = *(v31 + 48);
        v47 = v45;
        if (v46(a2 + v29, 1, v30))
        {
LABEL_39:
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v29, a2 + v29, *(*(v41 - 8) + 64));
          goto LABEL_192;
        }

        v64 = swift_getEnumCaseMultiPayload();
        if (v64 > 4)
        {
          if (v64 <= 7)
          {
            if (v64 == 5 || v64 == 6)
            {
              goto LABEL_177;
            }

            goto LABEL_190;
          }

          if (v64 != 8 && v64 != 9)
          {
            goto LABEL_190;
          }

LABEL_176:
          v120 = *(a2 + v29);
          *(a1 + v29) = v120;
          v121 = v120;
          swift_storeEnumTagMultiPayload();
LABEL_191:
          (*(v31 + 56))(a1 + v29, 0, 1, v30);
          goto LABEL_192;
        }

        if (v64 <= 2)
        {
          if (v64 != 1)
          {
            if (v64 == 2)
            {
              goto LABEL_177;
            }

LABEL_190:
            memcpy(a1 + v29, a2 + v29, *(v31 + 64));
            goto LABEL_191;
          }

          goto LABEL_176;
        }

LABEL_177:
        v122 = sub_21DBF563C();
        (*(*(v122 - 8) + 16))(a1 + v29, a2 + v29, v122);
        swift_storeEnumTagMultiPayload();
        goto LABEL_191;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v38 = *a2;
          *a1 = *a2;
          v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v31 = *(v30 - 8);
          v39 = *(v31 + 48);
          v40 = v38;
          if (v39(a2 + v29, 1, v30))
          {
            goto LABEL_39;
          }

          v55 = swift_getEnumCaseMultiPayload();
          if (v55 > 4)
          {
            if (v55 <= 7)
            {
              if (v55 == 5 || v55 == 6)
              {
                goto LABEL_177;
              }

              goto LABEL_190;
            }

            if (v55 != 8 && v55 != 9)
            {
              goto LABEL_190;
            }

            goto LABEL_176;
          }

          if (v55 > 2)
          {
            goto LABEL_177;
          }

          if (v55 == 1)
          {
            goto LABEL_176;
          }

          if (v55 != 2)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v28 = *a2;
          *a1 = *a2;
          v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v31 = *(v30 - 8);
          v32 = *(v31 + 48);
          v33 = v28;
          if (v32(a2 + v29, 1, v30))
          {
            goto LABEL_39;
          }

          v54 = swift_getEnumCaseMultiPayload();
          if (v54 > 4)
          {
            if (v54 <= 7)
            {
              if (v54 == 5 || v54 == 6)
              {
                goto LABEL_177;
              }

              goto LABEL_190;
            }

            if (v54 != 8 && v54 != 9)
            {
              goto LABEL_190;
            }

            goto LABEL_176;
          }

          if (v54 > 2)
          {
            goto LABEL_177;
          }

          if (v54 == 1)
          {
            goto LABEL_176;
          }

          if (v54 != 2)
          {
            goto LABEL_190;
          }
        }

        goto LABEL_177;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_46;
        }

        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = swift_getEnumCaseMultiPayload();
        if (v20 > 4)
        {
          if (v20 <= 7)
          {
            if (v20 == 5 || v20 == 6)
            {
              goto LABEL_103;
            }

            goto LABEL_141;
          }

          if (v20 != 8 && v20 != 9)
          {
            goto LABEL_141;
          }
        }

        else
        {
          if (v20 > 2)
          {
LABEL_103:
            v67 = sub_21DBF563C();
            (*(*(v67 - 8) + 16))(a1, a2, v67);
            swift_storeEnumTagMultiPayload();
LABEL_142:
            v76 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v77 = v76[5];
            v78 = a1 + v77;
            v79 = a2 + v77;
            v80 = *(a2 + v77 + 8);
            if (v80)
            {
              *v78 = *v79;
              *(v78 + 1) = v80;
              v81 = *(v79 + 2);
              v82 = *(v79 + 3);
              v83 = *(v79 + 4);
              v84 = *(v79 + 5);
              v85 = *(v79 + 6);
              v125 = *(v79 + 7);
              v130 = v79[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v81, v82, v83, v84, v85, v125, v130);
              *(v78 + 2) = v81;
              *(v78 + 3) = v82;
              *(v78 + 4) = v83;
              *(v78 + 5) = v84;
              *(v78 + 6) = v85;
              *(v78 + 7) = v125;
              v78[64] = v130;
              *(v78 + 65) = *(v79 + 65);
              v86 = v79[120];
              if (v86 == 255)
              {
                *(v78 + 72) = *(v79 + 72);
                *(v78 + 88) = *(v79 + 88);
                *(v78 + 104) = *(v79 + 104);
                v78[120] = v79[120];
              }

              else
              {
                v126 = *(v79 + 10);
                v131 = *(v79 + 9);
                v87 = *(v79 + 11);
                v88 = *(v79 + 12);
                v89 = *(v79 + 13);
                v90 = *(v79 + 14);
                v91 = v86 & 1;
                sub_21D0FB960(v131, v126, v87, v88, v89, v90, v86 & 1);
                *(v78 + 9) = v131;
                *(v78 + 10) = v126;
                *(v78 + 11) = v87;
                *(v78 + 12) = v88;
                *(v78 + 13) = v89;
                *(v78 + 14) = v90;
                v78[120] = v91;
              }

              v78[121] = v79[121];
            }

            else
            {
              v92 = *(v79 + 5);
              *(v78 + 4) = *(v79 + 4);
              *(v78 + 5) = v92;
              *(v78 + 6) = *(v79 + 6);
              *(v78 + 106) = *(v79 + 106);
              v93 = *(v79 + 1);
              *v78 = *v79;
              *(v78 + 1) = v93;
              v94 = *(v79 + 3);
              *(v78 + 2) = *(v79 + 2);
              *(v78 + 3) = v94;
            }

            *(a1 + v76[6]) = *(a2 + v76[6]);
            *(a1 + v76[7]) = *(a2 + v76[7]);
            *(a1 + v76[8]) = *(a2 + v76[8]);
            *(a1 + v76[9]) = *(a2 + v76[9]);
            *(a1 + v76[10]) = *(a2 + v76[10]);
            v95 = v76[11];
            v96 = *(a2 + v95);
            *(a1 + v95) = v96;
            v97 = v96;
            goto LABEL_192;
          }

          if (v20 != 1)
          {
            if (v20 == 2)
            {
              goto LABEL_103;
            }

LABEL_141:
            memcpy(a1, a2, *(*(v19 - 8) + 64));
            goto LABEL_142;
          }
        }

        v68 = *a2;
        *a1 = *a2;
        v69 = v68;
        swift_storeEnumTagMultiPayload();
        goto LABEL_142;
      }

      v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v37 = swift_getEnumCaseMultiPayload();
      if (v37 > 4)
      {
        if (v37 <= 7)
        {
          if (v37 == 5 || v37 == 6)
          {
            goto LABEL_107;
          }

          goto LABEL_149;
        }

        if (v37 != 8 && v37 != 9)
        {
          goto LABEL_149;
        }
      }

      else
      {
        if (v37 > 2)
        {
LABEL_107:
          v70 = sub_21DBF563C();
          (*(*(v70 - 8) + 16))(a1, a2, v70);
          swift_storeEnumTagMultiPayload();
LABEL_150:
          v98 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v99 = v98[5];
          v100 = a1 + v99;
          v101 = a2 + v99;
          v102 = *(a2 + v99 + 8);
          if (v102)
          {
            *v100 = *v101;
            *(v100 + 1) = v102;
            v103 = *(v101 + 2);
            v104 = *(v101 + 3);
            v105 = *(v101 + 4);
            v106 = *(v101 + 5);
            v107 = *(v101 + 6);
            v132 = *(v101 + 7);
            v127 = v101[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v103, v104, v105, v106, v107, v132, v127);
            *(v100 + 2) = v103;
            *(v100 + 3) = v104;
            *(v100 + 4) = v105;
            *(v100 + 5) = v106;
            *(v100 + 6) = v107;
            *(v100 + 7) = v132;
            v100[64] = v127;
            *(v100 + 65) = *(v101 + 65);
            v108 = v101[120];
            if (v108 == 255)
            {
              *(v100 + 72) = *(v101 + 72);
              *(v100 + 88) = *(v101 + 88);
              *(v100 + 104) = *(v101 + 104);
              v100[120] = v101[120];
            }

            else
            {
              v128 = *(v101 + 10);
              v133 = *(v101 + 9);
              v109 = *(v101 + 11);
              v110 = *(v101 + 12);
              v111 = *(v101 + 13);
              v112 = *(v101 + 14);
              v113 = v108 & 1;
              sub_21D0FB960(v133, v128, v109, v110, v111, v112, v108 & 1);
              *(v100 + 9) = v133;
              *(v100 + 10) = v128;
              *(v100 + 11) = v109;
              *(v100 + 12) = v110;
              *(v100 + 13) = v111;
              *(v100 + 14) = v112;
              v100[120] = v113;
            }

            v100[121] = v101[121];
          }

          else
          {
            v114 = *(v101 + 5);
            *(v100 + 4) = *(v101 + 4);
            *(v100 + 5) = v114;
            *(v100 + 6) = *(v101 + 6);
            *(v100 + 106) = *(v101 + 106);
            v115 = *(v101 + 1);
            *v100 = *v101;
            *(v100 + 1) = v115;
            v116 = *(v101 + 3);
            *(v100 + 2) = *(v101 + 2);
            *(v100 + 3) = v116;
          }

          *(a1 + v98[6]) = *(a2 + v98[6]);
          *(a1 + v98[7]) = *(a2 + v98[7]);
          *(a1 + v98[8]) = *(a2 + v98[8]);
          *(a1 + v98[9]) = *(a2 + v98[9]);
          *(a1 + v98[10]) = *(a2 + v98[10]);
          v117 = v98[11];
          v118 = *(a2 + v117);
          *(a1 + v117) = v118;
          v119 = v118;
          goto LABEL_192;
        }

        if (v37 != 1)
        {
          if (v37 == 2)
          {
            goto LABEL_107;
          }

LABEL_149:
          memcpy(a1, a2, *(*(v36 - 8) + 64));
          goto LABEL_150;
        }
      }

      v71 = *a2;
      *a1 = *a2;
      v72 = v71;
      swift_storeEnumTagMultiPayload();
      goto LABEL_150;
    }

    v11 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    v12 = swift_getEnumCaseMultiPayload();
    switch(v12)
    {
      case 3:
        v24 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v25 = *(v16 + 48);
        v26 = v24;
        if (!v25(a2 + v14, 1, v15))
        {
          v52 = swift_getEnumCaseMultiPayload();
          if (v52 > 4)
          {
            if (v52 <= 7)
            {
              if (v52 == 5 || v52 == 6)
              {
                goto LABEL_119;
              }

              goto LABEL_166;
            }

            if (v52 != 8 && v52 != 9)
            {
              goto LABEL_166;
            }

            goto LABEL_118;
          }

          if (v52 > 2)
          {
            goto LABEL_119;
          }

          if (v52 == 1)
          {
            goto LABEL_118;
          }

          if (v52 != 2)
          {
            goto LABEL_166;
          }

          goto LABEL_119;
        }

        break;
      case 2:
        v21 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v22 = *(v16 + 48);
        v23 = v21;
        if (!v22(a2 + v14, 1, v15))
        {
          v51 = swift_getEnumCaseMultiPayload();
          if (v51 > 4)
          {
            if (v51 <= 7)
            {
              if (v51 == 5 || v51 == 6)
              {
                goto LABEL_119;
              }

              goto LABEL_166;
            }

            if (v51 != 8 && v51 != 9)
            {
              goto LABEL_166;
            }

            goto LABEL_118;
          }

          if (v51 > 2)
          {
            goto LABEL_119;
          }

          if (v51 == 1)
          {
            goto LABEL_118;
          }

          if (v51 != 2)
          {
            goto LABEL_166;
          }

          goto LABEL_119;
        }

        break;
      case 1:
        v13 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v17 = *(v16 + 48);
        v18 = v13;
        if (v17(a2 + v14, 1, v15))
        {
          break;
        }

        v53 = swift_getEnumCaseMultiPayload();
        if (v53 > 4)
        {
          if (v53 <= 7)
          {
            if (v53 == 5 || v53 == 6)
            {
              goto LABEL_119;
            }

            goto LABEL_166;
          }

          if (v53 != 8 && v53 != 9)
          {
            goto LABEL_166;
          }

LABEL_118:
          v73 = *(a2 + v14);
          *(a1 + v14) = v73;
          v74 = v73;
          swift_storeEnumTagMultiPayload();
LABEL_167:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_168;
        }

        if (v53 <= 2)
        {
          if (v53 != 1)
          {
            if (v53 == 2)
            {
              goto LABEL_119;
            }

LABEL_166:
            memcpy(a1 + v14, a2 + v14, *(v16 + 64));
            goto LABEL_167;
          }

          goto LABEL_118;
        }

LABEL_119:
        v75 = sub_21DBF563C();
        (*(*(v75 - 8) + 16))(a1 + v14, a2 + v14, v75);
        swift_storeEnumTagMultiPayload();
        goto LABEL_167;
      default:
        memcpy(a1, a2, *(*(v11 - 8) + 64));
LABEL_194:
        swift_storeEnumTagMultiPayload();
        return a1;
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(a1 + v14, a2 + v14, *(*(v27 - 8) + 64));
LABEL_168:
    swift_storeEnumTagMultiPayload();
    goto LABEL_194;
  }

  v10 = *a2;
  *a1 = *a2;
  a1 = &v10[(v5 + 16) & ~v5];

  return a1;
}

void sub_21D8A0D98(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 1)
    {
      return;
    }

    goto LABEL_22;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  v3 = swift_getEnumCaseMultiPayload();
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      goto LABEL_22;
    }

    if (v3 > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 4)
    {
      if (v9 <= 7)
      {
        if (v9 != 5 && v9 != 6)
        {
          goto LABEL_54;
        }

        goto LABEL_50;
      }

      if (v9 != 8 && v9 != 9)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v9 > 2)
      {
        goto LABEL_50;
      }

      if (v9 != 1)
      {
        if (v9 != 2)
        {
LABEL_54:
          v21 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v22 = a1 + *(v21 + 20);
          if (*(v22 + 8))
          {

            sub_21D179EF0(*(v22 + 16), *(v22 + 24), *(v22 + 32), *(v22 + 40), *(v22 + 48), *(v22 + 56), *(v22 + 64));
            v23 = *(v22 + 120);
            if (v23 != 255)
            {
              sub_21D1078C0(*(v22 + 72), *(v22 + 80), *(v22 + 88), *(v22 + 96), *(v22 + 104), *(v22 + 112), v23 & 1);
            }
          }

          v10 = *(a1 + *(v21 + 44));
          goto LABEL_58;
        }

LABEL_50:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(a1, v20);
        goto LABEL_54;
      }
    }

    goto LABEL_54;
  }

  if (v3 <= 5)
  {
    if (v3 != 4)
    {
      v10 = *(a1 + 16);
LABEL_58:

      return;
    }

LABEL_22:

    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v12 - 8) + 48))(a1 + v11, 1, v12))
    {
      return;
    }

    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 4)
    {
      if (v13 <= 7)
      {
        if (v13 != 5 && v13 != 6)
        {
          return;
        }

        goto LABEL_43;
      }

      if (v13 != 8 && v13 != 9)
      {
        return;
      }
    }

    else
    {
      if (v13 > 2)
      {
LABEL_43:
        v5 = sub_21DBF563C();
        v6 = *(*(v5 - 8) + 8);
        v7 = a1 + v11;
LABEL_44:

        v6(v7, v5);
        return;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    v10 = *(a1 + v11);
    goto LABEL_58;
  }

  if (v3 != 6)
  {
    if (v3 == 7)
    {
      v18 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v18 - 8) + 48))(a1, 1, v18))
      {
        return;
      }

      v19 = sub_21DBF563C();
      v6 = *(*(v19 - 8) + 8);
      v5 = v19;
      v7 = a1;
    }

    else
    {
      if (v3 != 8)
      {
        return;
      }

      v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v5 = sub_21DBF8D7C();
      v6 = *(*(v5 - 8) + 8);
      v7 = a1 + v4;
    }

    goto LABEL_44;
  }

  v14 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v14 - 8) + 48))(a1, 1, v14))
  {

    v15 = *(v14 + 20);
    v16 = sub_21DBF6C1C();
    (*(*(v16 - 8) + 8))(a1 + v15, v16);
  }

  v17 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v17 + 8))
  {

    v10 = *(v17 + 16);
    goto LABEL_58;
  }
}

void **sub_21D8A1224(void **a1, void **a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v40 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v41 = *(v40 - 8);
            if ((*(v41 + 48))(a2, 1, v40))
            {
              v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v42 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v54 = *(v40 + 20);
              v55 = sub_21DBF6C1C();
              v132 = *(*(v55 - 8) + 16);
              sub_21DBF8E0C();
              v132(a1 + v54, a2 + v54, v55);
              (*(v41 + 56))(a1, 0, 1, v40);
            }

            v56 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v57 = (a1 + v56);
            v58 = (a2 + v56);
            v59 = v58[1];
            if (v59)
            {
              *v57 = *v58;
              v57[1] = v59;
              v60 = v58[2];
              v57[2] = v60;
              sub_21DBF8E0C();
              v61 = v60;
            }

            else
            {
              *v57 = *v58;
              v57[2] = v58[2];
            }

            goto LABEL_190;
          case 7:
            v46 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v47 = *(v46 - 8);
            if ((*(v47 + 48))(a2, 1, v46))
            {
              v48 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v48 - 8) + 64));
            }

            else
            {
              v63 = sub_21DBF563C();
              (*(*(v63 - 8) + 16))(a1, a2, v63);
              *(a1 + *(v46 + 20)) = *(a2 + *(v46 + 20));
              (*(v47 + 56))(a1, 0, 1, v46);
            }

            v64 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v64 + 20)) = *(a2 + *(v64 + 20));
            goto LABEL_190;
          case 8:
            *a1 = *a2;
            v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v8 = sub_21DBF8D7C();
            (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
LABEL_190:
            swift_storeEnumTagMultiPayload();
            goto LABEL_191;
        }

LABEL_44:
        memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_191:
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370, &unk_21DC2EE80);
        *(a1 + *(v127 + 48)) = *(a2 + *(v127 + 48));
        goto LABEL_192;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v32 = a2[2];
        a1[2] = v32;
        v33 = v32;
        goto LABEL_190;
      }

      v43 = *a2;
      *a1 = *a2;
      v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v29 = *(v28 - 8);
      v44 = *(v29 + 48);
      v45 = v43;
      if (v44(a2 + v27, 1, v28))
      {
LABEL_37:
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v27, a2 + v27, *(*(v39 - 8) + 64));
        goto LABEL_190;
      }

      v62 = swift_getEnumCaseMultiPayload();
      if (v62 > 4)
      {
        if (v62 <= 7)
        {
          if (v62 == 5 || v62 == 6)
          {
            goto LABEL_175;
          }

          goto LABEL_188;
        }

        if (v62 != 8 && v62 != 9)
        {
          goto LABEL_188;
        }

LABEL_174:
        v124 = *(a2 + v27);
        *(a1 + v27) = v124;
        v125 = v124;
        swift_storeEnumTagMultiPayload();
LABEL_189:
        (*(v29 + 56))(a1 + v27, 0, 1, v28);
        goto LABEL_190;
      }

      if (v62 <= 2)
      {
        if (v62 != 1)
        {
          if (v62 == 2)
          {
            goto LABEL_175;
          }

LABEL_188:
          memcpy(a1 + v27, a2 + v27, *(v29 + 64));
          goto LABEL_189;
        }

        goto LABEL_174;
      }

LABEL_175:
      v126 = sub_21DBF563C();
      (*(*(v126 - 8) + 16))(a1 + v27, a2 + v27, v126);
      swift_storeEnumTagMultiPayload();
      goto LABEL_189;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v36 = *a2;
        *a1 = *a2;
        v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v29 = *(v28 - 8);
        v37 = *(v29 + 48);
        v38 = v36;
        if (v37(a2 + v27, 1, v28))
        {
          goto LABEL_37;
        }

        v53 = swift_getEnumCaseMultiPayload();
        if (v53 > 4)
        {
          if (v53 <= 7)
          {
            if (v53 == 5 || v53 == 6)
            {
              goto LABEL_175;
            }

            goto LABEL_188;
          }

          if (v53 != 8 && v53 != 9)
          {
            goto LABEL_188;
          }

          goto LABEL_174;
        }

        if (v53 > 2)
        {
          goto LABEL_175;
        }

        if (v53 == 1)
        {
          goto LABEL_174;
        }

        if (v53 != 2)
        {
          goto LABEL_188;
        }
      }

      else
      {
        v26 = *a2;
        *a1 = *a2;
        v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v29 = *(v28 - 8);
        v30 = *(v29 + 48);
        v31 = v26;
        if (v30(a2 + v27, 1, v28))
        {
          goto LABEL_37;
        }

        v52 = swift_getEnumCaseMultiPayload();
        if (v52 > 4)
        {
          if (v52 <= 7)
          {
            if (v52 == 5 || v52 == 6)
            {
              goto LABEL_175;
            }

            goto LABEL_188;
          }

          if (v52 != 8 && v52 != 9)
          {
            goto LABEL_188;
          }

          goto LABEL_174;
        }

        if (v52 > 2)
        {
          goto LABEL_175;
        }

        if (v52 == 1)
        {
          goto LABEL_174;
        }

        if (v52 != 2)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_175;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_44;
      }

      v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v18 = swift_getEnumCaseMultiPayload();
      if (v18 > 4)
      {
        if (v18 <= 7)
        {
          if (v18 == 5 || v18 == 6)
          {
            goto LABEL_101;
          }

          goto LABEL_139;
        }

        if (v18 != 8 && v18 != 9)
        {
          goto LABEL_139;
        }
      }

      else
      {
        if (v18 > 2)
        {
LABEL_101:
          v65 = sub_21DBF563C();
          (*(*(v65 - 8) + 16))(a1, a2, v65);
          swift_storeEnumTagMultiPayload();
LABEL_140:
          v74 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v75 = v74[5];
          v76 = a1 + v75;
          v77 = a2 + v75;
          v78 = *(a2 + v75 + 8);
          if (v78)
          {
            v129 = a2;
            v133 = a1;
            *v76 = *v77;
            *(v76 + 1) = v78;
            v79 = *(v77 + 2);
            v80 = *(v77 + 3);
            v81 = *(v77 + 4);
            v82 = *(v77 + 5);
            v84 = *(v77 + 6);
            v83 = *(v77 + 7);
            v85 = v77[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v79, v80, v81, v82, v84, v83, v85);
            *(v76 + 2) = v79;
            *(v76 + 3) = v80;
            *(v76 + 4) = v81;
            *(v76 + 5) = v82;
            *(v76 + 6) = v84;
            *(v76 + 7) = v83;
            v76[64] = v85;
            *(v76 + 65) = *(v77 + 65);
            v86 = v77[120];
            if (v86 == 255)
            {
              *(v76 + 72) = *(v77 + 72);
              *(v76 + 88) = *(v77 + 88);
              *(v76 + 104) = *(v77 + 104);
              v76[120] = v77[120];
            }

            else
            {
              v87 = *(v77 + 9);
              v88 = *(v77 + 10);
              v89 = *(v77 + 11);
              v90 = *(v77 + 12);
              v91 = *(v77 + 13);
              v92 = *(v77 + 14);
              v93 = v86 & 1;
              sub_21D0FB960(v87, v88, v89, v90, v91, v92, v86 & 1);
              *(v76 + 9) = v87;
              *(v76 + 10) = v88;
              *(v76 + 11) = v89;
              *(v76 + 12) = v90;
              *(v76 + 13) = v91;
              *(v76 + 14) = v92;
              v76[120] = v93;
            }

            v76[121] = v77[121];
            a2 = v129;
            a1 = v133;
          }

          else
          {
            v94 = *(v77 + 5);
            *(v76 + 4) = *(v77 + 4);
            *(v76 + 5) = v94;
            *(v76 + 6) = *(v77 + 6);
            *(v76 + 106) = *(v77 + 106);
            v95 = *(v77 + 1);
            *v76 = *v77;
            *(v76 + 1) = v95;
            v96 = *(v77 + 3);
            *(v76 + 2) = *(v77 + 2);
            *(v76 + 3) = v96;
          }

          *(a1 + v74[6]) = *(a2 + v74[6]);
          *(a1 + v74[7]) = *(a2 + v74[7]);
          *(a1 + v74[8]) = *(a2 + v74[8]);
          *(a1 + v74[9]) = *(a2 + v74[9]);
          *(a1 + v74[10]) = *(a2 + v74[10]);
          v97 = v74[11];
          v98 = *(a2 + v97);
          *(a1 + v97) = v98;
          v99 = v98;
          goto LABEL_190;
        }

        if (v18 != 1)
        {
          if (v18 == 2)
          {
            goto LABEL_101;
          }

LABEL_139:
          memcpy(a1, a2, *(*(v17 - 8) + 64));
          goto LABEL_140;
        }
      }

      v66 = *a2;
      *a1 = *a2;
      v67 = v66;
      swift_storeEnumTagMultiPayload();
      goto LABEL_140;
    }

    v34 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v35 = swift_getEnumCaseMultiPayload();
    if (v35 > 4)
    {
      if (v35 <= 7)
      {
        if (v35 == 5 || v35 == 6)
        {
          goto LABEL_105;
        }

        goto LABEL_147;
      }

      if (v35 != 8 && v35 != 9)
      {
        goto LABEL_147;
      }
    }

    else
    {
      if (v35 > 2)
      {
LABEL_105:
        v68 = sub_21DBF563C();
        (*(*(v68 - 8) + 16))(a1, a2, v68);
        swift_storeEnumTagMultiPayload();
LABEL_148:
        v100 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v101 = v100[5];
        v102 = a1 + v101;
        v103 = a2 + v101;
        v104 = *(a2 + v101 + 8);
        if (v104)
        {
          v134 = a1;
          *v102 = *v103;
          *(v102 + 1) = v104;
          v105 = *(v103 + 2);
          v106 = *(v103 + 3);
          v107 = *(v103 + 4);
          v108 = *(v103 + 5);
          v109 = *(v103 + 6);
          v110 = *(v103 + 7);
          v130 = v103[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v105, v106, v107, v108, v109, v110, v130);
          *(v102 + 2) = v105;
          *(v102 + 3) = v106;
          *(v102 + 4) = v107;
          *(v102 + 5) = v108;
          *(v102 + 6) = v109;
          *(v102 + 7) = v110;
          v102[64] = v130;
          *(v102 + 65) = *(v103 + 65);
          v111 = v103[120];
          if (v111 == 255)
          {
            *(v102 + 72) = *(v103 + 72);
            *(v102 + 88) = *(v103 + 88);
            *(v102 + 104) = *(v103 + 104);
            v102[120] = v103[120];
          }

          else
          {
            v112 = *(v103 + 9);
            v131 = *(v103 + 10);
            v113 = *(v103 + 11);
            v114 = *(v103 + 12);
            v115 = *(v103 + 13);
            v116 = *(v103 + 14);
            v117 = v111 & 1;
            sub_21D0FB960(v112, v131, v113, v114, v115, v116, v111 & 1);
            *(v102 + 9) = v112;
            *(v102 + 10) = v131;
            *(v102 + 11) = v113;
            *(v102 + 12) = v114;
            *(v102 + 13) = v115;
            *(v102 + 14) = v116;
            v102[120] = v117;
          }

          v102[121] = v103[121];
          a1 = v134;
        }

        else
        {
          v118 = *(v103 + 5);
          *(v102 + 4) = *(v103 + 4);
          *(v102 + 5) = v118;
          *(v102 + 6) = *(v103 + 6);
          *(v102 + 106) = *(v103 + 106);
          v119 = *(v103 + 1);
          *v102 = *v103;
          *(v102 + 1) = v119;
          v120 = *(v103 + 3);
          *(v102 + 2) = *(v103 + 2);
          *(v102 + 3) = v120;
        }

        *(a1 + v100[6]) = *(a2 + v100[6]);
        *(a1 + v100[7]) = *(a2 + v100[7]);
        *(a1 + v100[8]) = *(a2 + v100[8]);
        *(a1 + v100[9]) = *(a2 + v100[9]);
        *(a1 + v100[10]) = *(a2 + v100[10]);
        v121 = v100[11];
        v122 = *(a2 + v121);
        *(a1 + v121) = v122;
        v123 = v122;
        goto LABEL_190;
      }

      if (v35 != 1)
      {
        if (v35 == 2)
        {
          goto LABEL_105;
        }

LABEL_147:
        memcpy(a1, a2, *(*(v34 - 8) + 64));
        goto LABEL_148;
      }
    }

    v69 = *a2;
    *a1 = *a2;
    v70 = v69;
    swift_storeEnumTagMultiPayload();
    goto LABEL_148;
  }

  v9 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v10 = swift_getEnumCaseMultiPayload();
  switch(v10)
  {
    case 3:
      v22 = *a2;
      *a1 = *a2;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      v23 = *(v14 + 48);
      v24 = v22;
      if (v23(a2 + v12, 1, v13))
      {
LABEL_24:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v12, a2 + v12, *(*(v25 - 8) + 64));
LABEL_166:
        swift_storeEnumTagMultiPayload();
        goto LABEL_192;
      }

      v50 = swift_getEnumCaseMultiPayload();
      if (v50 > 4)
      {
        if (v50 <= 7)
        {
          if (v50 == 5 || v50 == 6)
          {
            goto LABEL_117;
          }

          goto LABEL_164;
        }

        if (v50 != 8 && v50 != 9)
        {
          goto LABEL_164;
        }

        goto LABEL_116;
      }

      if (v50 > 2)
      {
        goto LABEL_117;
      }

      if (v50 == 1)
      {
        goto LABEL_116;
      }

      if (v50 != 2)
      {
        goto LABEL_164;
      }

      goto LABEL_117;
    case 2:
      v19 = *a2;
      *a1 = *a2;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      v20 = *(v14 + 48);
      v21 = v19;
      if (v20(a2 + v12, 1, v13))
      {
        goto LABEL_24;
      }

      v49 = swift_getEnumCaseMultiPayload();
      if (v49 > 4)
      {
        if (v49 <= 7)
        {
          if (v49 == 5 || v49 == 6)
          {
            goto LABEL_117;
          }

          goto LABEL_164;
        }

        if (v49 != 8 && v49 != 9)
        {
          goto LABEL_164;
        }

        goto LABEL_116;
      }

      if (v49 > 2)
      {
        goto LABEL_117;
      }

      if (v49 == 1)
      {
        goto LABEL_116;
      }

      if (v49 != 2)
      {
        goto LABEL_164;
      }

      goto LABEL_117;
    case 1:
      v11 = *a2;
      *a1 = *a2;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      v16 = v11;
      if (v15(a2 + v12, 1, v13))
      {
        goto LABEL_24;
      }

      v51 = swift_getEnumCaseMultiPayload();
      if (v51 > 4)
      {
        if (v51 <= 7)
        {
          if (v51 == 5 || v51 == 6)
          {
            goto LABEL_117;
          }

          goto LABEL_164;
        }

        if (v51 != 8 && v51 != 9)
        {
          goto LABEL_164;
        }

LABEL_116:
        v71 = *(a2 + v12);
        *(a1 + v12) = v71;
        v72 = v71;
        swift_storeEnumTagMultiPayload();
LABEL_165:
        (*(v14 + 56))(a1 + v12, 0, 1, v13);
        goto LABEL_166;
      }

      if (v51 <= 2)
      {
        if (v51 != 1)
        {
          if (v51 == 2)
          {
            goto LABEL_117;
          }

LABEL_164:
          memcpy(a1 + v12, a2 + v12, *(v14 + 64));
          goto LABEL_165;
        }

        goto LABEL_116;
      }

LABEL_117:
      v73 = sub_21DBF563C();
      (*(*(v73 - 8) + 16))(a1 + v12, a2 + v12, v73);
      swift_storeEnumTagMultiPayload();
      goto LABEL_165;
  }

  memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_192:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void **sub_21D8A3280(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106EB8(a1, type metadata accessor for PendingDisplay.Element);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 5)
        {
          switch(EnumCaseMultiPayload)
          {
            case 6:
              v40 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v41 = *(v40 - 8);
              if ((*(v41 + 48))(a2, 1, v40))
              {
                v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
                memcpy(a1, a2, *(*(v42 - 8) + 64));
              }

              else
              {
                *a1 = *a2;
                v54 = *(v40 + 20);
                v55 = sub_21DBF6C1C();
                v137 = *(*(v55 - 8) + 16);
                sub_21DBF8E0C();
                v137(a1 + v54, a2 + v54, v55);
                (*(v41 + 56))(a1, 0, 1, v40);
              }

              v56 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v57 = (a1 + v56);
              v58 = (a2 + v56);
              if (v58[1])
              {
                *v57 = *v58;
                v57[1] = v58[1];
                v59 = v58[2];
                v57[2] = v59;
                sub_21DBF8E0C();
                v60 = v59;
              }

              else
              {
                v61 = *v58;
                v57[2] = v58[2];
                *v57 = v61;
              }

              goto LABEL_191;
            case 7:
              v46 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v47 = *(v46 - 8);
              if ((*(v47 + 48))(a2, 1, v46))
              {
                v48 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(a1, a2, *(*(v48 - 8) + 64));
              }

              else
              {
                v63 = sub_21DBF563C();
                (*(*(v63 - 8) + 16))(a1, a2, v63);
                *(a1 + *(v46 + 20)) = *(a2 + *(v46 + 20));
                (*(v47 + 56))(a1, 0, 1, v46);
              }

              v64 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v64 + 20)) = *(a2 + *(v64 + 20));
              goto LABEL_191;
            case 8:
              *a1 = *a2;
              v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v8 = sub_21DBF8D7C();
              (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
LABEL_191:
              swift_storeEnumTagMultiPayload();
              goto LABEL_192;
          }

LABEL_45:
          memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_192:
          v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370, &unk_21DC2EE80);
          *(a1 + *(v131 + 48)) = *(a2 + *(v131 + 48));
          goto LABEL_193;
        }

        if (EnumCaseMultiPayload != 4)
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 9) = *(a2 + 9);
          *(a1 + 10) = *(a2 + 10);
          v32 = a2[2];
          a1[2] = v32;
          v33 = v32;
          goto LABEL_191;
        }

        v43 = *a2;
        *a1 = *a2;
        v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v29 = *(v28 - 8);
        v44 = *(v29 + 48);
        v45 = v43;
        if (v44(a2 + v27, 1, v28))
        {
LABEL_38:
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v27, a2 + v27, *(*(v39 - 8) + 64));
          goto LABEL_191;
        }

        v62 = swift_getEnumCaseMultiPayload();
        if (v62 > 4)
        {
          if (v62 <= 7)
          {
            if (v62 == 5 || v62 == 6)
            {
              goto LABEL_176;
            }

            goto LABEL_189;
          }

          if (v62 != 8 && v62 != 9)
          {
            goto LABEL_189;
          }

LABEL_175:
          v128 = *(a2 + v27);
          *(a1 + v27) = v128;
          v129 = v128;
          swift_storeEnumTagMultiPayload();
LABEL_190:
          (*(v29 + 56))(a1 + v27, 0, 1, v28);
          goto LABEL_191;
        }

        if (v62 <= 2)
        {
          if (v62 != 1)
          {
            if (v62 == 2)
            {
              goto LABEL_176;
            }

LABEL_189:
            memcpy(a1 + v27, a2 + v27, *(v29 + 64));
            goto LABEL_190;
          }

          goto LABEL_175;
        }

LABEL_176:
        v130 = sub_21DBF563C();
        (*(*(v130 - 8) + 16))(a1 + v27, a2 + v27, v130);
        swift_storeEnumTagMultiPayload();
        goto LABEL_190;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v36 = *a2;
          *a1 = *a2;
          v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v29 = *(v28 - 8);
          v37 = *(v29 + 48);
          v38 = v36;
          if (v37(a2 + v27, 1, v28))
          {
            goto LABEL_38;
          }

          v53 = swift_getEnumCaseMultiPayload();
          if (v53 > 4)
          {
            if (v53 <= 7)
            {
              if (v53 == 5 || v53 == 6)
              {
                goto LABEL_176;
              }

              goto LABEL_189;
            }

            if (v53 != 8 && v53 != 9)
            {
              goto LABEL_189;
            }

            goto LABEL_175;
          }

          if (v53 > 2)
          {
            goto LABEL_176;
          }

          if (v53 == 1)
          {
            goto LABEL_175;
          }

          if (v53 != 2)
          {
            goto LABEL_189;
          }
        }

        else
        {
          v26 = *a2;
          *a1 = *a2;
          v27 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v29 = *(v28 - 8);
          v30 = *(v29 + 48);
          v31 = v26;
          if (v30(a2 + v27, 1, v28))
          {
            goto LABEL_38;
          }

          v52 = swift_getEnumCaseMultiPayload();
          if (v52 > 4)
          {
            if (v52 <= 7)
            {
              if (v52 == 5 || v52 == 6)
              {
                goto LABEL_176;
              }

              goto LABEL_189;
            }

            if (v52 != 8 && v52 != 9)
            {
              goto LABEL_189;
            }

            goto LABEL_175;
          }

          if (v52 > 2)
          {
            goto LABEL_176;
          }

          if (v52 == 1)
          {
            goto LABEL_175;
          }

          if (v52 != 2)
          {
            goto LABEL_189;
          }
        }

        goto LABEL_176;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_45;
        }

        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = swift_getEnumCaseMultiPayload();
        if (v18 > 4)
        {
          if (v18 <= 7)
          {
            if (v18 == 5 || v18 == 6)
            {
              goto LABEL_102;
            }

            goto LABEL_140;
          }

          if (v18 != 8 && v18 != 9)
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (v18 > 2)
          {
LABEL_102:
            v65 = sub_21DBF563C();
            (*(*(v65 - 8) + 16))(a1, a2, v65);
            swift_storeEnumTagMultiPayload();
LABEL_141:
            v74 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v75 = v74[5];
            v76 = a1 + v75;
            v77 = a2 + v75;
            if (*(a2 + v75 + 8))
            {
              *v76 = *v77;
              *(v76 + 1) = *(v77 + 1);
              v78 = *(v77 + 2);
              v79 = *(v77 + 3);
              v80 = *(v77 + 4);
              v81 = *(v77 + 5);
              v82 = *(v77 + 6);
              v133 = *(v77 + 7);
              v138 = v77[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v78, v79, v80, v81, v82, v133, v138);
              *(v76 + 2) = v78;
              *(v76 + 3) = v79;
              *(v76 + 4) = v80;
              *(v76 + 5) = v81;
              *(v76 + 6) = v82;
              *(v76 + 7) = v133;
              v76[64] = v138;
              v76[65] = v77[65];
              v76[66] = v77[66];
              v76[67] = v77[67];
              v76[68] = v77[68];
              v83 = v77[120];
              if (v83 == 255)
              {
                v95 = *(v77 + 72);
                v96 = *(v77 + 88);
                v97 = *(v77 + 104);
                v76[120] = v77[120];
                *(v76 + 104) = v97;
                *(v76 + 88) = v96;
                *(v76 + 72) = v95;
              }

              else
              {
                v134 = *(v77 + 10);
                v139 = *(v77 + 9);
                v84 = *(v77 + 11);
                v85 = *(v77 + 12);
                v86 = *(v77 + 13);
                v87 = *(v77 + 14);
                v88 = v83 & 1;
                sub_21D0FB960(v139, v134, v84, v85, v86, v87, v83 & 1);
                *(v76 + 9) = v139;
                *(v76 + 10) = v134;
                *(v76 + 11) = v84;
                *(v76 + 12) = v85;
                *(v76 + 13) = v86;
                *(v76 + 14) = v87;
                v76[120] = v88;
              }

              v76[121] = v77[121];
            }

            else
            {
              v89 = *v77;
              v90 = *(v77 + 1);
              v91 = *(v77 + 3);
              *(v76 + 2) = *(v77 + 2);
              *(v76 + 3) = v91;
              *v76 = v89;
              *(v76 + 1) = v90;
              v92 = *(v77 + 4);
              v93 = *(v77 + 5);
              v94 = *(v77 + 6);
              *(v76 + 106) = *(v77 + 106);
              *(v76 + 5) = v93;
              *(v76 + 6) = v94;
              *(v76 + 4) = v92;
            }

            *(a1 + v74[6]) = *(a2 + v74[6]);
            *(a1 + v74[7]) = *(a2 + v74[7]);
            *(a1 + v74[8]) = *(a2 + v74[8]);
            *(a1 + v74[9]) = *(a2 + v74[9]);
            *(a1 + v74[10]) = *(a2 + v74[10]);
            v98 = v74[11];
            v99 = *(a2 + v98);
            *(a1 + v98) = v99;
            v100 = v99;
            goto LABEL_191;
          }

          if (v18 != 1)
          {
            if (v18 == 2)
            {
              goto LABEL_102;
            }

LABEL_140:
            memcpy(a1, a2, *(*(v17 - 8) + 64));
            goto LABEL_141;
          }
        }

        v66 = *a2;
        *a1 = *a2;
        v67 = v66;
        swift_storeEnumTagMultiPayload();
        goto LABEL_141;
      }

      v34 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v35 = swift_getEnumCaseMultiPayload();
      if (v35 > 4)
      {
        if (v35 <= 7)
        {
          if (v35 == 5 || v35 == 6)
          {
            goto LABEL_106;
          }

          goto LABEL_148;
        }

        if (v35 != 8 && v35 != 9)
        {
          goto LABEL_148;
        }
      }

      else
      {
        if (v35 > 2)
        {
LABEL_106:
          v68 = sub_21DBF563C();
          (*(*(v68 - 8) + 16))(a1, a2, v68);
          swift_storeEnumTagMultiPayload();
LABEL_149:
          v101 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v102 = v101[5];
          v103 = a1 + v102;
          v104 = a2 + v102;
          if (*(a2 + v102 + 8))
          {
            *v103 = *v104;
            *(v103 + 1) = *(v104 + 1);
            v105 = *(v104 + 2);
            v106 = *(v104 + 3);
            v107 = *(v104 + 4);
            v108 = *(v104 + 5);
            v109 = *(v104 + 6);
            v140 = *(v104 + 7);
            v135 = v104[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v105, v106, v107, v108, v109, v140, v135);
            *(v103 + 2) = v105;
            *(v103 + 3) = v106;
            *(v103 + 4) = v107;
            *(v103 + 5) = v108;
            *(v103 + 6) = v109;
            *(v103 + 7) = v140;
            v103[64] = v135;
            v103[65] = v104[65];
            v103[66] = v104[66];
            v103[67] = v104[67];
            v103[68] = v104[68];
            v110 = v104[120];
            if (v110 == 255)
            {
              v122 = *(v104 + 72);
              v123 = *(v104 + 88);
              v124 = *(v104 + 104);
              v103[120] = v104[120];
              *(v103 + 104) = v124;
              *(v103 + 88) = v123;
              *(v103 + 72) = v122;
            }

            else
            {
              v136 = *(v104 + 10);
              v141 = *(v104 + 9);
              v111 = *(v104 + 11);
              v112 = *(v104 + 12);
              v113 = *(v104 + 13);
              v114 = *(v104 + 14);
              v115 = v110 & 1;
              sub_21D0FB960(v141, v136, v111, v112, v113, v114, v110 & 1);
              *(v103 + 9) = v141;
              *(v103 + 10) = v136;
              *(v103 + 11) = v111;
              *(v103 + 12) = v112;
              *(v103 + 13) = v113;
              *(v103 + 14) = v114;
              v103[120] = v115;
            }

            v103[121] = v104[121];
          }

          else
          {
            v116 = *v104;
            v117 = *(v104 + 1);
            v118 = *(v104 + 3);
            *(v103 + 2) = *(v104 + 2);
            *(v103 + 3) = v118;
            *v103 = v116;
            *(v103 + 1) = v117;
            v119 = *(v104 + 4);
            v120 = *(v104 + 5);
            v121 = *(v104 + 6);
            *(v103 + 106) = *(v104 + 106);
            *(v103 + 5) = v120;
            *(v103 + 6) = v121;
            *(v103 + 4) = v119;
          }

          *(a1 + v101[6]) = *(a2 + v101[6]);
          *(a1 + v101[7]) = *(a2 + v101[7]);
          *(a1 + v101[8]) = *(a2 + v101[8]);
          *(a1 + v101[9]) = *(a2 + v101[9]);
          *(a1 + v101[10]) = *(a2 + v101[10]);
          v125 = v101[11];
          v126 = *(a2 + v125);
          *(a1 + v125) = v126;
          v127 = v126;
          goto LABEL_191;
        }

        if (v35 != 1)
        {
          if (v35 == 2)
          {
            goto LABEL_106;
          }

LABEL_148:
          memcpy(a1, a2, *(*(v34 - 8) + 64));
          goto LABEL_149;
        }
      }

      v69 = *a2;
      *a1 = *a2;
      v70 = v69;
      swift_storeEnumTagMultiPayload();
      goto LABEL_149;
    }

    v9 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    v10 = swift_getEnumCaseMultiPayload();
    switch(v10)
    {
      case 3:
        v22 = *a2;
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v23 = *(v14 + 48);
        v24 = v22;
        if (!v23(a2 + v12, 1, v13))
        {
          v50 = swift_getEnumCaseMultiPayload();
          if (v50 > 4)
          {
            if (v50 <= 7)
            {
              if (v50 == 5 || v50 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_165;
            }

            if (v50 != 8 && v50 != 9)
            {
              goto LABEL_165;
            }

            goto LABEL_117;
          }

          if (v50 > 2)
          {
            goto LABEL_118;
          }

          if (v50 == 1)
          {
            goto LABEL_117;
          }

          if (v50 != 2)
          {
            goto LABEL_165;
          }

          goto LABEL_118;
        }

        break;
      case 2:
        v19 = *a2;
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v20 = *(v14 + 48);
        v21 = v19;
        if (!v20(a2 + v12, 1, v13))
        {
          v49 = swift_getEnumCaseMultiPayload();
          if (v49 > 4)
          {
            if (v49 <= 7)
            {
              if (v49 == 5 || v49 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_165;
            }

            if (v49 != 8 && v49 != 9)
            {
              goto LABEL_165;
            }

            goto LABEL_117;
          }

          if (v49 > 2)
          {
            goto LABEL_118;
          }

          if (v49 == 1)
          {
            goto LABEL_117;
          }

          if (v49 != 2)
          {
            goto LABEL_165;
          }

          goto LABEL_118;
        }

        break;
      case 1:
        v11 = *a2;
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v15 = *(v14 + 48);
        v16 = v11;
        if (v15(a2 + v12, 1, v13))
        {
          break;
        }

        v51 = swift_getEnumCaseMultiPayload();
        if (v51 > 4)
        {
          if (v51 <= 7)
          {
            if (v51 == 5 || v51 == 6)
            {
              goto LABEL_118;
            }

            goto LABEL_165;
          }

          if (v51 != 8 && v51 != 9)
          {
            goto LABEL_165;
          }

LABEL_117:
          v71 = *(a2 + v12);
          *(a1 + v12) = v71;
          v72 = v71;
          swift_storeEnumTagMultiPayload();
LABEL_166:
          (*(v14 + 56))(a1 + v12, 0, 1, v13);
          goto LABEL_167;
        }

        if (v51 <= 2)
        {
          if (v51 != 1)
          {
            if (v51 == 2)
            {
              goto LABEL_118;
            }

LABEL_165:
            memcpy(a1 + v12, a2 + v12, *(v14 + 64));
            goto LABEL_166;
          }

          goto LABEL_117;
        }

LABEL_118:
        v73 = sub_21DBF563C();
        (*(*(v73 - 8) + 16))(a1 + v12, a2 + v12, v73);
        swift_storeEnumTagMultiPayload();
        goto LABEL_166;
      default:
        memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_193:
        swift_storeEnumTagMultiPayload();
        return a1;
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(a1 + v12, a2 + v12, *(*(v25 - 8) + 64));
LABEL_167:
    swift_storeEnumTagMultiPayload();
    goto LABEL_193;
  }

  return a1;
}

void *sub_21D8A5358(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v26 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v27 = *(v26 - 8);
          if ((*(v27 + 48))(a2, 1, v26))
          {
            v28 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v28 - 8) + 64));
          }

          else
          {
            v35 = sub_21DBF563C();
            (*(*(v35 - 8) + 32))(a1, a2, v35);
            *(a1 + *(v26 + 20)) = *(a2 + *(v26 + 20));
            (*(v27 + 56))(a1, 0, 1, v26);
          }

          v36 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *(a1 + *(v36 + 20)) = *(a2 + *(v36 + 20));
          goto LABEL_134;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_43;
        }

        *a1 = *a2;
        v22 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v23 = sub_21DBF8D7C();
        (*(*(v23 - 8) + 32))(a1 + v22, a2 + v22, v23);
LABEL_134:
        swift_storeEnumTagMultiPayload();
        goto LABEL_135;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v15 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v16 = *(v15 - 8);
          if ((*(v16 + 48))(a2, 1, v15))
          {
            v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(a1, a2, *(*(v17 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v37 = *(v15 + 20);
            v38 = sub_21DBF6C1C();
            (*(*(v38 - 8) + 32))(a1 + v37, a2 + v37, v38);
            (*(v16 + 56))(a1, 0, 1, v15);
          }

          v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v40 = a1 + v39;
          v41 = a2 + v39;
          *v40 = *v41;
          *(v40 + 2) = *(v41 + 2);
          goto LABEL_134;
        }

        goto LABEL_43;
      }

      *a1 = *a2;
      v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(a2 + v18, 1, v19))
      {
        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_83;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
          goto LABEL_83;
        }

        goto LABEL_132;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 <= 3)
          {
            if (v24 == 2 || v24 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v24 == 4 || v24 == 5 || v24 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_99;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v8 = swift_getEnumCaseMultiPayload();
          if (v8 <= 3)
          {
            if (v8 == 2 || v8 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v8 == 4 || v8 == 5 || v8 == 6)
          {
LABEL_10:
            v9 = sub_21DBF563C();
            (*(*(v9 - 8) + 32))(a1, a2, v9);
            swift_storeEnumTagMultiPayload();
LABEL_100:
            v44 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v45 = v44[5];
            v46 = (a1 + v45);
            v47 = (a2 + v45);
            v48 = v47[3];
            v46[2] = v47[2];
            v46[3] = v48;
            v49 = v47[1];
            *v46 = *v47;
            v46[1] = v49;
            *(v46 + 106) = *(v47 + 106);
            v50 = v47[6];
            v46[5] = v47[5];
            v46[6] = v50;
            v46[4] = v47[4];
            *(a1 + v44[6]) = *(a2 + v44[6]);
            *(a1 + v44[7]) = *(a2 + v44[7]);
            *(a1 + v44[8]) = *(a2 + v44[8]);
            *(a1 + v44[9]) = *(a2 + v44[9]);
            *(a1 + v44[10]) = *(a2 + v44[10]);
            *(a1 + v44[11]) = *(a2 + v44[11]);
            goto LABEL_134;
          }

LABEL_99:
          memcpy(a1, a2, *(*(v7 - 8) + 64));
          goto LABEL_100;
        }

LABEL_43:
        memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_135:
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370, &unk_21DC2EE80);
        *(a1 + *(v51 + 48)) = *(a2 + *(v51 + 48));
        goto LABEL_136;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *a1 = *a2;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(a2 + v18, 1, v19))
        {
          goto LABEL_40;
        }

        v42 = swift_getEnumCaseMultiPayload();
        if (v42 <= 3)
        {
          if (v42 == 2 || v42 == 3)
          {
            goto LABEL_83;
          }
        }

        else if (v42 == 4 || v42 == 5 || v42 == 6)
        {
LABEL_83:
          v43 = sub_21DBF563C();
          (*(*(v43 - 8) + 32))(a1 + v18, a2 + v18, v43);
          swift_storeEnumTagMultiPayload();
LABEL_133:
          (*(v20 + 56))(a1 + v18, 0, 1, v19);
          goto LABEL_134;
        }

LABEL_132:
        memcpy(a1 + v18, a2 + v18, *(v20 + 64));
        goto LABEL_133;
      }

      *a1 = *a2;
      v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(a2 + v18, 1, v19))
      {
        v34 = swift_getEnumCaseMultiPayload();
        if (v34 <= 3)
        {
          if (v34 == 2 || v34 == 3)
          {
            goto LABEL_83;
          }
        }

        else if (v34 == 4 || v34 == 5 || v34 == 6)
        {
          goto LABEL_83;
        }

        goto LABEL_132;
      }
    }

LABEL_40:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(a1 + v18, a2 + v18, *(*(v25 - 8) + 64));
    goto LABEL_134;
  }

  v10 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v11 = swift_getEnumCaseMultiPayload();
  switch(v11)
  {
    case 3:
      *a1 = *a2;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(a2 + v12, 1, v13))
      {
LABEL_27:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v12, a2 + v12, *(*(v21 - 8) + 64));
LABEL_122:
        swift_storeEnumTagMultiPayload();
        goto LABEL_136;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 <= 3)
      {
        if (v30 == 2 || v30 == 3)
        {
          goto LABEL_58;
        }
      }

      else if (v30 == 4 || v30 == 5 || v30 == 6)
      {
        goto LABEL_58;
      }

      goto LABEL_120;
    case 2:
      *a1 = *a2;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(a2 + v12, 1, v13))
      {
        goto LABEL_27;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 3)
      {
        if (v29 == 2 || v29 == 3)
        {
          goto LABEL_58;
        }
      }

      else if (v29 == 4 || v29 == 5 || v29 == 6)
      {
        goto LABEL_58;
      }

      goto LABEL_120;
    case 1:
      *a1 = *a2;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(a2 + v12, 1, v13))
      {
        goto LABEL_27;
      }

      v31 = swift_getEnumCaseMultiPayload();
      if (v31 <= 3)
      {
        if (v31 == 2 || v31 == 3)
        {
          goto LABEL_58;
        }
      }

      else if (v31 == 4 || v31 == 5 || v31 == 6)
      {
LABEL_58:
        v32 = sub_21DBF563C();
        (*(*(v32 - 8) + 32))(a1 + v12, a2 + v12, v32);
        swift_storeEnumTagMultiPayload();
LABEL_121:
        (*(v14 + 56))(a1 + v12, 0, 1, v13);
        goto LABEL_122;
      }

LABEL_120:
      memcpy(a1 + v12, a2 + v12, *(v14 + 64));
      goto LABEL_121;
  }

  memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_136:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *sub_21D8A6CD4(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106EB8(a1, type metadata accessor for PendingDisplay.Element);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 6)
        {
          if (EnumCaseMultiPayload == 7)
          {
            v26 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(a2, 1, v26))
            {
              v28 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v28 - 8) + 64));
            }

            else
            {
              v35 = sub_21DBF563C();
              (*(*(v35 - 8) + 32))(a1, a2, v35);
              *(a1 + *(v26 + 20)) = *(a2 + *(v26 + 20));
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v36 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v36 + 20)) = *(a2 + *(v36 + 20));
            goto LABEL_135;
          }

          if (EnumCaseMultiPayload != 8)
          {
            goto LABEL_44;
          }

          *a1 = *a2;
          v22 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v23 = sub_21DBF8D7C();
          (*(*(v23 - 8) + 32))(a1 + v22, a2 + v22, v23);
LABEL_135:
          swift_storeEnumTagMultiPayload();
          goto LABEL_136;
        }

        if (EnumCaseMultiPayload != 4)
        {
          if (EnumCaseMultiPayload == 6)
          {
            v15 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v16 = *(v15 - 8);
            if ((*(v16 + 48))(a2, 1, v15))
            {
              v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v17 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v37 = *(v15 + 20);
              v38 = sub_21DBF6C1C();
              (*(*(v38 - 8) + 32))(a1 + v37, a2 + v37, v38);
              (*(v16 + 56))(a1, 0, 1, v15);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = a1 + v39;
            v41 = a2 + v39;
            *v40 = *v41;
            *(v40 + 2) = *(v41 + 2);
            goto LABEL_135;
          }

          goto LABEL_44;
        }

        *a1 = *a2;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        if (!(*(v20 + 48))(a2 + v18, 1, v19))
        {
          v33 = swift_getEnumCaseMultiPayload();
          if (v33 <= 3)
          {
            if (v33 == 2 || v33 == 3)
            {
              goto LABEL_84;
            }
          }

          else if (v33 == 4 || v33 == 5 || v33 == 6)
          {
            goto LABEL_84;
          }

          goto LABEL_133;
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (!EnumCaseMultiPayload)
          {
            v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v24 = swift_getEnumCaseMultiPayload();
            if (v24 <= 3)
            {
              if (v24 == 2 || v24 == 3)
              {
                goto LABEL_11;
              }
            }

            else if (v24 == 4 || v24 == 5 || v24 == 6)
            {
              goto LABEL_11;
            }

            goto LABEL_100;
          }

          if (EnumCaseMultiPayload == 1)
          {
            v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v8 = swift_getEnumCaseMultiPayload();
            if (v8 <= 3)
            {
              if (v8 == 2 || v8 == 3)
              {
                goto LABEL_11;
              }
            }

            else if (v8 == 4 || v8 == 5 || v8 == 6)
            {
LABEL_11:
              v9 = sub_21DBF563C();
              (*(*(v9 - 8) + 32))(a1, a2, v9);
              swift_storeEnumTagMultiPayload();
LABEL_101:
              v44 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v45 = v44[5];
              v46 = (a1 + v45);
              v47 = (a2 + v45);
              v48 = v47[3];
              v46[2] = v47[2];
              v46[3] = v48;
              v49 = v47[1];
              *v46 = *v47;
              v46[1] = v49;
              *(v46 + 106) = *(v47 + 106);
              v50 = v47[6];
              v46[5] = v47[5];
              v46[6] = v50;
              v46[4] = v47[4];
              *(a1 + v44[6]) = *(a2 + v44[6]);
              *(a1 + v44[7]) = *(a2 + v44[7]);
              *(a1 + v44[8]) = *(a2 + v44[8]);
              *(a1 + v44[9]) = *(a2 + v44[9]);
              *(a1 + v44[10]) = *(a2 + v44[10]);
              *(a1 + v44[11]) = *(a2 + v44[11]);
              goto LABEL_135;
            }

LABEL_100:
            memcpy(a1, a2, *(*(v7 - 8) + 64));
            goto LABEL_101;
          }

LABEL_44:
          memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_136:
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370, &unk_21DC2EE80);
          *(a1 + *(v51 + 48)) = *(a2 + *(v51 + 48));
          goto LABEL_137;
        }

        if (EnumCaseMultiPayload != 2)
        {
          *a1 = *a2;
          v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = *(v19 - 8);
          if ((*(v20 + 48))(a2 + v18, 1, v19))
          {
            goto LABEL_41;
          }

          v42 = swift_getEnumCaseMultiPayload();
          if (v42 <= 3)
          {
            if (v42 == 2 || v42 == 3)
            {
              goto LABEL_84;
            }
          }

          else if (v42 == 4 || v42 == 5 || v42 == 6)
          {
LABEL_84:
            v43 = sub_21DBF563C();
            (*(*(v43 - 8) + 32))(a1 + v18, a2 + v18, v43);
            swift_storeEnumTagMultiPayload();
LABEL_134:
            (*(v20 + 56))(a1 + v18, 0, 1, v19);
            goto LABEL_135;
          }

LABEL_133:
          memcpy(a1 + v18, a2 + v18, *(v20 + 64));
          goto LABEL_134;
        }

        *a1 = *a2;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        if (!(*(v20 + 48))(a2 + v18, 1, v19))
        {
          v34 = swift_getEnumCaseMultiPayload();
          if (v34 <= 3)
          {
            if (v34 == 2 || v34 == 3)
            {
              goto LABEL_84;
            }
          }

          else if (v34 == 4 || v34 == 5 || v34 == 6)
          {
            goto LABEL_84;
          }

          goto LABEL_133;
        }
      }

LABEL_41:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v18, a2 + v18, *(*(v25 - 8) + 64));
      goto LABEL_135;
    }

    v10 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    v11 = swift_getEnumCaseMultiPayload();
    switch(v11)
    {
      case 3:
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        if (!(*(v14 + 48))(a2 + v12, 1, v13))
        {
          v30 = swift_getEnumCaseMultiPayload();
          if (v30 <= 3)
          {
            if (v30 == 2 || v30 == 3)
            {
              goto LABEL_59;
            }
          }

          else if (v30 == 4 || v30 == 5 || v30 == 6)
          {
            goto LABEL_59;
          }

          goto LABEL_121;
        }

        break;
      case 2:
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        if (!(*(v14 + 48))(a2 + v12, 1, v13))
        {
          v29 = swift_getEnumCaseMultiPayload();
          if (v29 <= 3)
          {
            if (v29 == 2 || v29 == 3)
            {
              goto LABEL_59;
            }
          }

          else if (v29 == 4 || v29 == 5 || v29 == 6)
          {
            goto LABEL_59;
          }

          goto LABEL_121;
        }

        break;
      case 1:
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        if ((*(v14 + 48))(a2 + v12, 1, v13))
        {
          break;
        }

        v31 = swift_getEnumCaseMultiPayload();
        if (v31 <= 3)
        {
          if (v31 == 2 || v31 == 3)
          {
            goto LABEL_59;
          }
        }

        else if (v31 == 4 || v31 == 5 || v31 == 6)
        {
LABEL_59:
          v32 = sub_21DBF563C();
          (*(*(v32 - 8) + 32))(a1 + v12, a2 + v12, v32);
          swift_storeEnumTagMultiPayload();
LABEL_122:
          (*(v14 + 56))(a1 + v12, 0, 1, v13);
          goto LABEL_123;
        }

LABEL_121:
        memcpy(a1 + v12, a2 + v12, *(v14 + 64));
        goto LABEL_122;
      default:
        memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_137:
        swift_storeEnumTagMultiPayload();
        return a1;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(a1 + v12, a2 + v12, *(*(v21 - 8) + 64));
LABEL_123:
    swift_storeEnumTagMultiPayload();
    goto LABEL_137;
  }

  return a1;
}

uint64_t sub_21D8A8674(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for TTRSECreateRemindersViewModel.Item(319);
  if (v3 <= 0x3F)
  {
    v5[4] = *(result - 8) + 64;
    result = type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v4 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v5[5] = v5;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t TTRIHashtagCollectionViewAdaptor.__allocating_init(target:addTagButtonAction:hashtagButtonAction:buttonFocusDelegate:containerView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = swift_allocObject();
  v11 = *a6;
  v12 = a6[1];
  LOBYTE(a6) = *(a6 + 16);
  swift_unknownObjectWeakInit();
  *(v10 + 48) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 48) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 72) = a6;
  return v10;
}

uint64_t TTRIHashtagCollectionViewAdaptor.init(target:addTagButtonAction:hashtagButtonAction:buttonFocusDelegate:containerView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  v11 = a6[1];
  v12 = *(a6 + 16);
  swift_unknownObjectWeakInit();
  *(v6 + 48) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 48) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v6 + 56) = v10;
  *(v6 + 64) = v11;
  *(v6 + 72) = v12;
  return v6;
}

void TTRIHashtagCollectionViewAdaptor.updateButtons(_:specialViewTags:animation:with:)(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void), uint64_t a5)
{
  v10 = sub_21DBF5B9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  if ((*(a3 + 8) & 1) == 0)
  {
    v18 = *a3;
    v19 = objc_opt_self();
    (*(v11 + 16))(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    (*(v11 + 32))(v21 + v20, aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    v22 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = a4;
    v22[1] = a5;
    aBlock[4] = sub_21D8A8CA0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_107;
    v23 = _Block_copy(aBlock);
    sub_21DBF8E0C();

    [v19 animateWithDuration:v23 animations:v18];
    _Block_release(v23);
    return;
  }

  if (a1 >> 62)
  {
    v13 = sub_21DBFBD7C();
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {
    v14 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      [v15 tag];
      v17 = sub_21DBF5B2C();
      a4(v16, v17 & 1);
    }

    while (v13 != v14);
  }
}

void sub_21D8A8BA4(unint64_t a1, uint64_t a2, void (*a3)(void *, void))
{
  if (a1 >> 62)
  {
    v5 = sub_21DBFBD7C();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D44740](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      [v7 tag];
      v9 = sub_21DBF5B2C();
      a3(v8, v9 & 1);
      [v8 layoutIfNeeded];
    }

    while (v5 != v6);
  }
}

uint64_t TTRIHashtagCollectionViewAdaptor.deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 40);
  sub_21D8A8CD8(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  return v0;
}

void sub_21D8A8CD8(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t TTRIHashtagCollectionViewAdaptor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 40);
  sub_21D8A8CD8(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

char *TTRIHashtagCollectionViewAdaptor.makeHashtagButton(title:viewTag:buttonToReuse:accessibilityDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v32 = a5;
  v29 = a1;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = sub_21D8A9000(v6);
  }

  v19 = a4;
  v20 = v18;
  sub_21DBFB97C();
  v21 = sub_21DBFB95C();
  v22 = *(*(v21 - 8) + 48);
  if (v22(v17, 1, v21))
  {
    sub_21D3032C8(v17);
  }

  else
  {
    v23 = sub_21DBFB91C();
    v25 = v24;
    sub_21D3032C8(v17);
    if (v25)
    {
      if (v23 == v29 && v25 == a2)
      {

        goto LABEL_17;
      }

      v27 = sub_21DBFC64C();

      if (v27)
      {

        goto LABEL_17;
      }
    }
  }

  sub_21DBFB97C();
  if (v22(v14, 1, v21))
  {
    sub_21D303258(v14, v11);
    sub_21DBFB98C();

    sub_21D3032C8(v14);
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFB92C();
    sub_21DBFB98C();
  }

  [v20 invalidateIntrinsicContentSize];
LABEL_17:
  [v20 setTag_];
  *&v20[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate + 8] = v31;
  swift_unknownObjectWeakAssign();
  return v20;
}

char *sub_21D8A9000(uint64_t a1)
{
  v2 = _s15RemindersUICore17TTRIHashtagButtonC14makeForHashtagACyFZ_0();
  v3 = *(a1 + 32);
  if (v3)
  {
    [v2 addTarget:swift_unknownObjectWeakLoadStrong() action:v3 forControlEvents:0x2000];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectWeakLoadStrong();
  v4 = *(a1 + 48);
  v5 = &v2[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate];
  swift_beginAccess();
  *(v5 + 1) = v4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

char *TTRIHashtagCollectionViewAdaptor.makeAddHashtagButton(viewTag:buttonToReuse:accessibilityDelegate:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = sub_21D8A918C(v4);
  }

  v9 = a2;
  [v8 setTag_];
  *&v8[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate + 8] = a4;
  swift_unknownObjectWeakAssign();
  v10 = v8;
  v11 = sub_21DBFA12C();
  [v10 setAccessibilityIdentifier_];

  return v10;
}

char *sub_21D8A918C(uint64_t a1)
{
  v2 = _s15RemindersUICore17TTRIHashtagButtonC13makeForAddTagACyFZ_0();
  v3 = *(a1 + 24);
  if (v3)
  {
    [v2 addTarget:swift_unknownObjectWeakLoadStrong() action:v3 forControlEvents:0x2000];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectWeakLoadStrong();
  v4 = *(a1 + 48);
  v5 = &v2[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate];
  swift_beginAccess();
  *(v5 + 1) = v4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

void TTRIHashtagCollectionViewAdaptor.updateSelected(for:selectedViewTags:animation:)(unint64_t a1, id a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_21DBF5B9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a3 + 8) & 1) == 0)
  {
    v15 = *a3;
    v16 = objc_opt_self();
    (*(v9 + 16))(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
    v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    (*(v9 + 32))(v19 + v17, v11, v8);
    v20 = (v19 + v18);
    *v20 = sub_21D8A9664;
    v20[1] = 0;
    aBlock[4] = sub_21D8AA2D4;
    v41 = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_7_3;
    v21 = _Block_copy(aBlock);
    v11 = v41;
    sub_21DBF8E0C();

    [v16 animateWithDuration:v21 animations:v15];
    _Block_release(v21);
    goto LABEL_11;
  }

  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_11:
  if (*(v4 + 72) == 1)
  {
    v22 = *(v4 + 64);
    v39 = *(v4 + 56);
    v12 = v22;
    if (sub_21DBF5AAC() == 1)
    {
      v23 = sub_21DBF5ABC();
      if ((v24 & 1) == 0)
      {
        a2 = v23;
        if (a1 >> 62)
        {
          goto LABEL_33;
        }

        v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          while (1)
          {
            v26 = 0;
            while ((a1 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x223D44740](v26, a1);
              v4 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                [v11 frame];
                v29 = v28;
                v31 = v30;
                v33 = v32;
                v35 = v34;

                [v39 spacing];
                v37 = -v36;
                v42.origin.x = v29;
                v42.origin.y = v31;
                v42.size.width = v33;
                v42.size.height = v35;
                v43 = CGRectInset(v42, v37, 0.0);
                [v12 scrollRectToVisible:1 animated:{v43.origin.x, v43.origin.y, v43.size.width, v43.size.height}];

                goto LABEL_27;
              }

LABEL_20:
              v11 = v27;
              if ([v11 tag] == a2)
              {
                goto LABEL_26;
              }

              ++v26;
              if (v4 == v25)
              {
                goto LABEL_27;
              }
            }

            if (v26 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            __break(1u);
LABEL_30:
            v12 = sub_21DBFBD7C();
            if (!v12)
            {
              goto LABEL_11;
            }

LABEL_4:
            if (v12 >= 1)
            {
              v13 = 0;
              do
              {
                if ((a1 & 0xC000000000000001) != 0)
                {
                  v14 = MEMORY[0x223D44740](v13, a1);
                }

                else
                {
                  v14 = *(a1 + 8 * v13 + 32);
                }

                v11 = v14;
                ++v13;
                [v14 tag];
                [v11 setSelected_];
              }

              while (v12 != v13);
              goto LABEL_11;
            }

            __break(1u);
LABEL_33:
            v25 = sub_21DBFBD7C();
            if (!v25)
            {
              goto LABEL_27;
            }
          }

          v27 = *(a1 + 8 * v26 + 32);
          v4 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_25;
          }

          goto LABEL_20;
        }
      }
    }

LABEL_27:
  }
}

void sub_21D8A967C(_BYTE *a1, char a2)
{
  v4 = a2 & 1;
  v5 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  v6 = a1[v5];
  a1[v5] = a2;
  if (v6 != v4)
  {
    [a1 setNeedsUpdateConfiguration];
  }
}

void _s15RemindersUICore32TTRIHashtagCollectionViewAdaptorC22updateArrangedSubviews_08arrangedI16RequiringNewRows17hashTagButtonFontySaySo6UIViewCG_ShyAHGSo6UIFontCSgtF_0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (*(v2 + 72) == 1)
  {
    v4 = v3;
    sub_21D114EC8();
    v5 = v4;
    v10 = sub_21DBFA5DC();
    [v5 setArrangedSubviews_];
  }

  else
  {
    v6 = *(v2 + 64);
    sub_21D114EC8();
    v7 = v3;
    v8 = sub_21DBFA5DC();
    [v7 setArrangedSubviews_];

    sub_21D8A8CD8(v3, v6, 0);
    v9 = sub_21DBF8E0C();
    sub_21DA3257C(v9);

    sub_21D8A8CD8(v3, v6, 0);
  }
}

uint64_t _s15RemindersUICore32TTRIHashtagCollectionViewAdaptorC13updateEnabled_3forySb_SayAA0C6ButtonCGtF_0(char a1, unint64_t a2)
{
  v4 = sub_21DBF5B9C();
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D84F90];
  sub_21D8AA1E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70, &unk_21DC0F980);
  sub_21D37081C();
  v14 = v4;
  result = sub_21DBFBCBC();
  if (!(a2 >> 62))
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

    return (*(v13 + 8))(v6, v14);
  }

  result = sub_21DBFBD7C();
  v8 = result;
  if (!result)
  {
    return (*(v13 + 8))(v6, v14);
  }

LABEL_3:
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223D44740](v9, a2);
      }

      else
      {
        v10 = *(a2 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      [v10 tag];
      sub_21DBF5B2C();
      [v11 setEnabled_];
    }

    while (v8 != v9);
    return (*(v13 + 8))(v6, v14);
  }

  __break(1u);
  return result;
}

void _s15RemindersUICore32TTRIHashtagCollectionViewAdaptorC14updateExcluded3for08excludedE4Tags9animationySayAA0C6ButtonCG_10Foundation8IndexSetVAA010TTRHashtagdE15AnimationParamsOtF_0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5B9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  if ((*(a3 + 8) & 1) == 0)
  {
    v17 = *a3;
    v18 = objc_opt_self();
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    (*(v7 + 32))(v20 + v19, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v21 = sub_21D8A967C;
    v21[1] = 0;
    aBlock[4] = sub_21D8AA2D4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_24_1;
    v22 = _Block_copy(aBlock);
    sub_21DBF8E0C();

    [v18 animateWithDuration:v22 animations:v17];
    _Block_release(v22);
    return;
  }

  if (a1 >> 62)
  {
    v10 = sub_21DBFBD7C();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v10; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](i, a1, v9);
      }

      else
      {
        v12 = *(a1 + 8 * i + 32);
      }

      v13 = v12;
      [v12 tag];
      v14 = sub_21DBF5B2C();
      v15 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
      swift_beginAccess();
      v16 = v13[v15];
      v13[v15] = v14 & 1;
      if ((v14 & 1) != v16)
      {
        [v13 setNeedsUpdateConfiguration];
      }
    }
  }
}

void _s15RemindersUICore32TTRIHashtagCollectionViewAdaptorC17updateHighlighted3for011highlightedE4Tags9animationySayAA0C6ButtonCG_10Foundation8IndexSetVAA010TTRHashtagdE15AnimationParamsOtF_0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5B9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if ((*(a3 + 8) & 1) == 0)
  {
    v13 = *a3;
    v14 = objc_opt_self();
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    (*(v7 + 32))(v16 + v15, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = sub_21D8A96F8;
    v17[1] = 0;
    aBlock[4] = sub_21D8AA2D4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_17_5;
    v18 = _Block_copy(aBlock);
    sub_21DBF8E0C();

    [v14 animateWithDuration:v18 animations:v13];
    _Block_release(v18);
    return;
  }

  if (a1 >> 62)
  {
    v9 = sub_21DBFBD7C();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](v10, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      [v11 tag];
      [v12 setHighlighted_];
    }

    while (v9 != v10);
  }
}

id sub_21D8AA098(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

uint64_t sub_21D8AA0E4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D8AA098(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRIHashtagCollectionViewAdaptor.ContainerView(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D8AA098(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21D8A8CD8(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRIHashtagCollectionViewAdaptor.ContainerView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21D8A8CD8(v4, v5, v6);
  return a1;
}

unint64_t sub_21D8AA1E0()
{
  result = qword_280D1B818;
  if (!qword_280D1B818)
  {
    v3 = sub_21DBF5B9C();
    result = swift_getWitnessTable(MEMORY[0x277CC9A58], v3, v0, v1);
    atomic_store(result, &qword_280D1B818);
  }

  return result;
}

void sub_21D8AA238()
{
  v1 = *(sub_21DBF5B9C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21D8A8BA4(v3, v0 + v2, v4);
}

UIImage_optional __swiftcall UIView.snapshotImage()()
{
  v1 = v0;
  [v0 bounds];
  v4 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D8AB23C;
  *(v6 + 24) = v5;
  v12[4] = sub_21D112B24;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21D112B7C;
  v12[3] = &block_descriptor_108;
  v7 = _Block_copy(v12);
  v8 = v1;

  v9 = [v4 imageWithActions_];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v9;
  }

  result.value.super.isa = v10;
  result.is_nil = v11;
  return result;
}

void *UIView.firstResponderDescendant.getter()
{
  v1 = [v0 firstResponder];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

    return v3;
  }

  v4 = v2;
  v5 = [v3 superview];

  if (!v5)
  {
LABEL_6:

    return 0;
  }

  while (v5 != v0)
  {
    v6 = v5;
    v5 = [v6 superview];

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  return v3;
}

Swift::Void __swiftcall UIView.expandHitTestArea(minHitTestSize:)(CGSize minHitTestSize)
{
  height = minHitTestSize.height;
  width = minHitTestSize.width;
  [v1 bounds];
  v6 = (width - v5) * 0.5;
  if (v6 < 0.0)
  {
    v7 = -0.0;
  }

  else
  {
    v7 = -v6;
  }

  v8 = (height - v4) * 0.5;
  v9 = -v8;
  if (v8 < 0.0)
  {
    v9 = -0.0;
  }

  [v1 setHitTestInsets_];
}

void UIView.apply(updates:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v9 = a1;
  v10 = *(a3 + 8);
  if (v10 == 2)
  {
LABEL_5:
    (v9)(a1);
    if (a4)
    {
      a4(1);
    }

    return;
  }

  if (v10 == 3)
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = a2;
    v12[4] = a4;
    v12[5] = a5;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_21D8AB544;
    *(v9 + 24) = v12;
    v24 = sub_21D0E6070;
    v25 = v9;
    v20 = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_21D0E6204;
    v23 = &block_descriptor_21_1;
    v13 = _Block_copy(&v20);

    sub_21D0D0E78(a4, a5);

    [v11 performWithoutAnimation_];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_5;
  }

  v15 = *a3;
  if (v10)
  {
    [v5 layoutIfNeeded];
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = a2;
  *(v16 + 32) = v10 & 1;
  *(v16 + 40) = v5;
  v24 = sub_21D8AB4D4;
  v25 = v16;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_21D0D74FC;
  v23 = &block_descriptor_9_2;
  v17 = _Block_copy(&v20);

  v18 = v5;

  if (a4)
  {
    v24 = a4;
    v25 = a5;
    v20 = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_21D2F9D00;
    v23 = &block_descriptor_12_3;
    v19 = _Block_copy(&v20);
  }

  else
  {
    v19 = 0;
  }

  [objc_opt_self() animateWithDuration:v17 animations:v19 completion:v15];
  _Block_release(v19);
  _Block_release(v17);
}

uint64_t UIView.ancestorView<A>(ofType:passing:)@<X0>(uint64_t (*a1)(char *)@<X1>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v28 = a1;
  v23 = a3;
  v27 = sub_21DBFBA8C();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v21 - v6;
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3;
  v13 = [v12 superview];
  v22 = v8;
  if (v13)
  {
    v14 = v13;
    v29 = (v8 + 56);
    v25 = (v5 + 8);
    v26 = (v8 + 32);
    v24 = (v8 + 8);
    sub_21D114EC8();
    while (1)
    {
      v30 = v14;
      v15 = v14;
      if (swift_dynamicCast())
      {
        v16 = *v29;
        (*v29)(v7, 0, 1, a2);
        v17 = *v26;
        (*v26)(v11, v7, a2);
        v18 = v28(v11);

        if (v18)
        {

          v20 = v23;
          v17(v23, v11, a2);
          return (v16)(v20, 0, 1, a2);
        }

        (*v24)(v11, a2);
      }

      else
      {

        (*v29)(v7, 1, 1, a2);
        (*v25)(v7, v27);
      }

      v14 = [v15 superview];
      v12 = v15;
      if (!v14)
      {
        goto LABEL_9;
      }
    }
  }

  v15 = v12;
LABEL_9:

  return (*(v22 + 56))(v23, 1, 1, a2);
}

void sub_21D8AAD5C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = swift_dynamicCastUnknownClass();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  if (a3)
  {
    v11 = a1;
    sub_21D0D0E78(a3, a4);
    if (a3(v10))
    {
      sub_21D23CE60(a5, a5);
      swift_allocObject();
      v12 = sub_21DBFA60C();
      *v13 = v10;
      sub_21D23C8B4(v12, a5);
      sub_21D0D0E88(a3, a4);
      return;
    }

    sub_21D0D0E88(a3, a4);

LABEL_9:
    sub_21DBF9E3C();
    v17 = [a1 subviews];
    sub_21D114EC8();
    v18 = sub_21DBFA5EC();

    if (v18 >> 62)
    {
      v19 = sub_21DBFBD7C();
      if (v19)
      {
LABEL_11:
        if (v19 < 1)
        {
          __break(1u);
        }

        else
        {
          v20 = 0;
          do
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x223D44740](v20, v18);
            }

            else
            {
              v21 = *(v18 + 8 * v20 + 32);
            }

            v22 = v21;
            ++v20;
            sub_21D8AAD5C(v21, a2, a3, a4, a5);
            v23 = sub_21DBFA74C();
            swift_getWitnessTable(MEMORY[0x277D83970], v23);
            sub_21DBFA6EC();
          }

          while (v19 != v20);
        }

        return;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_11;
      }
    }

    return;
  }

  sub_21D23CE60(a5, a5);
  swift_allocObject();
  v14 = a1;
  v15 = sub_21DBFA60C();
  *v16 = v10;

  sub_21D23C8B4(v15, a5);
}

uint64_t sub_21D8AB00C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = swift_dynamicCastUnknownClass();
  if (!v8)
  {
LABEL_5:
    v12 = [a1 subviews];
    sub_21D114EC8();
    v13 = sub_21DBFA5EC();

    if (v13 >> 62)
    {
LABEL_21:
      v14 = sub_21DBFBD7C();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v14 != i; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223D44740](i, v13);
      }

      else
      {
        if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(v13 + 8 * i + 32);
      }

      v17 = v16;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = sub_21D8AB00C(v16, v21, a3, a4, v23);

      if (v9)
      {

        return v9;
      }
    }

    return 0;
  }

  v9 = v8;
  if (!a3)
  {
    v18 = a1;
    return v9;
  }

  v10 = a1;
  sub_21D0D0E78(a3, a4);
  v11 = a3(v9);
  sub_21D0D0E88(a3, a4);
  if ((v11 & 1) == 0)
  {

    goto LABEL_5;
  }

  return v9;
}

void sub_21D8AB1AC(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext_];
}

BOOL UIView.isIPadIdiom.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  return v2 == 1;
}

void UIView.leadingSpace(to:)(void *a1)
{
  [a1 bounds];
  [v1 convertRect:a1 fromCoordinateSpace:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [a1 effectiveAlignmentRectInsets];
  v13 = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v11, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v1 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [v1 effectiveUserInterfaceLayoutDirection];
  v33.origin.x = v13;
  v33.origin.y = v15;
  v33.size.width = v17;
  v33.size.height = v19;
  CGRectGetMinY(v33);
  v34.origin.x = v21;
  v34.origin.y = v23;
  v34.size.width = v25;
  v34.size.height = v27;
  CGRectGetMinY(v34);
  v35.origin.x = v21;
  v35.origin.y = v23;
  v35.size.width = v25;
  v35.size.height = v27;
  CGRectGetMaxY(v35);
  v36.origin.x = v13;
  v36.origin.y = v15;
  v36.size.width = v17;
  v36.size.height = v19;
  CGRectGetMaxY(v36);
  v37.origin.x = v13;
  v37.origin.y = v15;
  v37.size.width = v17;
  v37.size.height = v19;
  CGRectGetMinX(v37);
  v38.origin.x = v21;
  v38.origin.y = v23;
  v38.size.width = v25;
  v38.size.height = v27;
  CGRectGetMinX(v38);
  v39.origin.x = v21;
  v39.origin.y = v23;
  v39.size.width = v25;
  v39.size.height = v27;
  CGRectGetMaxX(v39);
  v40.origin.x = v13;
  v40.origin.y = v15;
  v40.size.width = v17;
  v40.size.height = v19;
  CGRectGetMaxX(v40);
  if (v28 > 1)
  {
    if (qword_27CE56650 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_27CE5B1E8);
    v30 = MEMORY[0x277D84F90];
    v31 = sub_21D17716C(MEMORY[0x277D84F90]);
    v32 = sub_21D17716C(v30);
    sub_21DAEAB00("unknown layout direction", 24, 2, v31, v32);
    __break(1u);
  }
}

id sub_21D8AB4D4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  result = (*(v0 + 16))();
  if (v1 == 1)
  {

    return [v2 layoutIfNeeded];
  }

  return result;
}

uint64_t sub_21D8AB544()
{
  v1 = *(v0 + 32);
  result = (*(v0 + 16))();
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t _s22UpdateAnimationOptionsOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _s22UpdateAnimationOptionsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_21D8AB634(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D8AB650(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

void (*sub_21D8AB6BC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRICollectionViewPresentationTreeManagementPresenterCapability.__allocating_init()()
{
  v0 = swift_allocObject();
  TTRICollectionViewPresentationTreeManagementPresenterCapability.init()();
  return v0;
}

uint64_t sub_21D8AB788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  MEMORY[0x28223BE20](a1);
  v6 = &v16[-1] - v5;
  *(v2 + *(v7 + 112)) |= 1uLL;
  v8 = *(v7 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = sub_21D495A08(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v16[0] = 1;
  v16[1] = v12;
  v17 = 0;
  sub_21D0E20B4(v13, v6);
  return TTRICollectionViewPresentationTreeUpdates.init(scope:presentationTree:)(v16, v6, v4, v8, a2);
}

uint64_t sub_21D8AB954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  MEMORY[0x28223BE20](a1);
  v7 = &v12[-1] - v6;
  v12[0] = v8;
  v12[1] = 0;
  v13 = 1;
  v9 = sub_21DBF8E0C();
  sub_21D0E20B4(v9, v7);
  return TTRICollectionViewPresentationTreeUpdates.init(scope:presentationTree:)(v12, v7, v5, *(v4 + 88), a2);
}

void sub_21D8ABA44(int a1)
{
  *(v1 + *(*v1 + 112)) |= 4uLL;
  v3 = a1 & 1;
  v4 = *(v1 + *(*v1 + 128));
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  sub_21DBFC7FC();
  v5 = sub_21DBFC82C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 != 2 && ((v9 ^ a1) & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_21DBF8E0C();
  }

  else
  {
LABEL_7:
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v4 + 16);
    if (*(v4 + 24) <= v11)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_21D8B0890(v11 + 1);
      }

      else
      {
        sub_21D8B67DC(v11 + 1);
      }

      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](0);
      sub_21DBFC7FC();
      v12 = sub_21DBFC82C();
      v13 = -1 << *(v4 + 32);
      v7 = v12 & ~v13;
      if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
      {
        v14 = ~v13;
        while (1)
        {
          v15 = *(*(v4 + 48) + v7);
          if (v15 != 2 && ((v15 ^ a1) & 1) == 0)
          {
            break;
          }

          v7 = (v7 + 1) & v14;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        sub_21DBFC6FC();
        __break(1u);
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21D8B240C();
    }

LABEL_19:
    *(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v7;
    *(*(v4 + 48) + v7) = v3;
    v16 = *(v4 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      __break(1u);
      return;
    }

    *(v4 + 16) = v18;
  }

  v19 = *(*v1 + 128);
  v20 = *(v1 + v19);
  *(v1 + v19) = v4;
  sub_21D8ABF78(v20);
}

void sub_21D8ABCC4()
{
  *(v0 + *(*v0 + 112)) |= 2uLL;
  v1 = *(v0 + *(*v0 + 128));
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](1);
  v2 = sub_21DBFC82C();
  v3 = -1 << *(v1 + 32);
  v4 = v2 & ~v3;
  if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (*(*(v1 + 48) + v4) != 2)
    {
      v4 = (v4 + 1) & v5;
      if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_21DBF8E0C();
    goto LABEL_18;
  }

LABEL_5:
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 16);
  if (*(v1 + 24) <= v7)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_21D8B0890(v7 + 1);
    }

    else
    {
      sub_21D8B67DC(v7 + 1);
    }

    sub_21DBFC7DC();
    MEMORY[0x223D44FA0](1);
    v8 = sub_21DBFC82C();
    v9 = -1 << *(v1 + 32);
    v4 = v8 & ~v9;
    if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v10 = ~v9;
      while (*(*(v1 + 48) + v4) != 2)
      {
        v4 = (v4 + 1) & v10;
        if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_22;
    }
  }

  else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B240C();
  }

LABEL_16:
  *(v1 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v4;
  *(*(v1 + 48) + v4) = 2;
  v11 = *(v1 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_22:
    sub_21DBFC6FC();
    __break(1u);
    return;
  }

  *(v1 + 16) = v13;
LABEL_18:
  v14 = *(*v0 + 128);
  v15 = *(v0 + v14);
  *(v0 + v14) = v1;
  sub_21D8ABF78(v15);
}

void sub_21D8ABF78(uint64_t a1)
{
  v2 = *(*v1 + 128);
  if ((sub_21D32268C(*(v1 + v2), a1) & 1) == 0)
  {
    if (*(*(v1 + v2) + 16))
    {
      v3._countAndFlagsBits = 0x6465727265666564;
      v3._object = 0xEF73657461647055;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
    }
  }
}

double sub_21D8AC000(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  sub_21D8ABF78(v3);

  return result;
}

void _s15RemindersUICore63TTRICollectionViewPresentationTreeManagementPresenterCapabilityC21deferredActionPerform_6reasonyAA011TTRDeferredK0C_SStF_0_0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v3[10];
  MEMORY[0x28223BE20](a1);
  v21 = &v21 - v5;
  v6 = v3[11];
  v8 = type metadata accessor for TTRICollectionViewPresentationTreeUpdates(0, v4, v6, v7);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x28223BE20](v8);
  v22 = &v21 - v9;
  v10 = v3[16];
  v11 = *(v2 + v10);
  *(v2 + v10) = MEMORY[0x277D84FA0];
  v12 = sub_21DBF8E0C();
  sub_21D8ABF78(v12);

  v30 = v11;
  v27 = 0;
  v28 = 0;
  v29 = -1;
  v25 = v4;
  v26 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633C8, &unk_21DC2F338);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TTRICollectionViewPresentationTreeUpdateScope(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  sub_21DBFBA8C();
  sub_21D0D0F1C(&qword_280D0C378, &qword_27CE633C8, &unk_21DC2F338, MEMORY[0x277D83B68]);
  sub_21DBFA54C();

  if (v32 != 255)
  {
    v17 = v21;
    sub_21D0E20B4(v16, v21);
    v18 = v22;
    TTRICollectionViewPresentationTreeUpdates.init(scope:presentationTree:)(&v31, v17, v4, v6, v22);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = v2[3];
      ObjectType = swift_getObjectType();
      (*(v19 + 64))(v2, v18, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    (*(v23 + 8))(v18, v24);
  }
}

__int128 *sub_21D8AC3E0@<X0>(__int128 *result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a5@<X8>)
{
  v6 = *(result + 16);
  v7 = *a2;
  v8 = v7 == 2;
  v9 = v7 != 2;
  if (v8)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  if (v6 == 255)
  {
    v15 = 0;
  }

  else
  {
    v19 = *result;
    v20 = v6;
    v16 = v9;
    v17 = 0;
    v18 = v10;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    updated = type metadata accessor for TTRICollectionViewPresentationTreeUpdateScope(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
    TTRICollectionViewPresentationTreeUpdateScope.merging(with:)(&v16, updated, v21);
    result = sub_21D6B1C70(v16, v17, v18);
    v9 = v21[0];
    v15 = v21[1];
    v10 = v22;
  }

  *a5 = v9;
  *(a5 + 8) = v15;
  *(a5 + 16) = v10;
  return result;
}

uint64_t *TTRICollectionViewPresentationTreeManagementPresenterCapability.deinit()
{
  sub_21D157444(v0 + 16);
  v1 = *(*v0 + 104);
  v2 = sub_21DBFBA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TTRICollectionViewPresentationTreeManagementPresenterCapability.__deallocating_deinit()
{
  TTRICollectionViewPresentationTreeManagementPresenterCapability.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D8AC658(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63450, &qword_21DC2F3F0);
  result = sub_21DBFBE9C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D8ACAB4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619F8, &unk_21DC2F400);
  result = sub_21DBFBE9C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_21D8B7748(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.ItemID.hash(into:)(v32);
      result = sub_21DBFC82C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_21D8B7748(v5, *(v8 + 48) + v16 * v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}