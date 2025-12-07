uint64_t sub_1ADEA6504(_BOOL8 a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  if (!sub_1ADDD6F8C(a1, a2, a4, a5) || (v19 = *(a3 + 16), v19 != *(a6 + 16)))
  {
LABEL_9:
    v22 = 0;
    return v22 & 1;
  }

  if (v19 && a3 != a6)
  {
    v20 = (a3 + 32);
    v21 = (a6 + 32);
    while (*v20 == *v21)
    {
      ++v20;
      ++v21;
      if (!--v19)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_9;
  }

LABEL_8:
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = sub_1AE23CCBC();
  v23 = *(v13 + 8);
  v23(v15, v12);
  v23(v18, v12);
  return v22 & 1;
}

uint64_t sub_1ADEA66EC(_BOOL8 a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v15 = sub_1AE23C32C();
  v34 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  if (!sub_1ADDD6F8C(a1, a2, a5, a6))
  {
    goto LABEL_14;
  }

  if (a3)
  {
    if (!a7)
    {
      goto LABEL_14;
    }

    sub_1ADE4E9A0(v21, a7);
    if ((v22 & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v23 = sub_1AE23CCBC();
    v24 = *(v34 + 8);
    v24(v17, v15);
    v24(v20, v15);

    if ((v23 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (a7)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    v25 = v33;
    if (!v33)
    {
      goto LABEL_14;
    }

    sub_1ADE4E9A0(v26, v25);
    if (v27)
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v28 = sub_1AE23CCBC();
      v29 = *(v34 + 8);
      v29(v17, v15);
      v29(v20, v15);

      if (v28)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v33)
  {
LABEL_17:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v30 = sub_1AE23CCBC();
    v32 = *(v34 + 8);
    v32(v17, v15);
    v32(v20, v15);
    return v30 & 1;
  }

LABEL_14:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1ADEA6A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  if ((v19 != a4 || a2 != a5) && (sub_1AE23E00C() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!a3)
  {
    if (!a6)
    {
LABEL_11:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      LOBYTE(a6) = sub_1AE23CCBC();
      v22 = *(v13 + 8);
      v22(v15, v12);
      v22(v18, v12);
      return a6 & 1;
    }

LABEL_13:
    LOBYTE(a6) = 0;
    return a6 & 1;
  }

  if (a6)
  {

    if (a3 == a6 || sub_1ADE97EF4(a3, a6))
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = sub_1AE23CCBC();
      v21 = *(v13 + 8);
      v21(v15, v12);
      v21(v18, v12);

      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    goto LABEL_13;
  }

  return a6 & 1;
}

uint64_t sub_1ADEA6CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  if (!a2)
  {
    v22 = v9;
    if (!a4)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  if (!a4)
  {
    goto LABEL_11;
  }

  if (a2 != a4 && !sub_1ADE97EF4(a2, a4))
  {

    goto LABEL_11;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v15 = sub_1AE23CCBC();
  v22 = v9;
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);

  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1ADE4E764(a1, a3);
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v18 = sub_1AE23CCBC();
  v19 = *(v22 + 8);
  v19(v11, v8);
  v19(v14, v8);
  return v18 & 1;
}

uint64_t sub_1ADEA6F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  if (a1 == a2 || (, , v13 = a3(a1, a2), , , (v13 & 1) != 0))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v14 = sub_1AE23CCBC();
    v15 = *(v7 + 8);
    v15(v9, v6);
    v15(v12, v6);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1ADEA712C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 48);
  if (v15 <= 3)
  {
    if (*(a1 + 48) > 1u)
    {
      if (v15 != 2)
      {
        if (*(a2 + 48) != 3)
        {
          goto LABEL_38;
        }

        sub_1ADE4D4A4(v11, *a2);
        if ((v31 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

      if (*(a2 + 48) != 2)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (!*(a1 + 48))
      {
        if (*(a2 + 48))
        {
          goto LABEL_38;
        }

        v19 = *a2;
        if (*a2 == v11)
        {
          goto LABEL_34;
        }

        v20 = *a1;
        sub_1ADEA842C(a1, &v38);
        sub_1ADEA842C(a2, &v38);
        v18 = sub_1ADE9A71C(v20, v19);
        goto LABEL_13;
      }

      if (*(a2 + 48) != 1)
      {
        goto LABEL_38;
      }
    }

    v27 = *(a2 + 16);
    v28 = *(a2 + 24);
    v29 = *a2;
    v30 = *(a2 + 8);

    return sub_1ADEA74BC(v11, v12, v13, v14, v29, v30, v27, v28);
  }

  else
  {
    if (*(a1 + 48) <= 5u)
    {
      if (v15 == 4)
      {
        v38 = *a1;
        v39 = v12;
        v40 = v13;
        v41 = v14;
        v42 = *(a1 + 32);
        if (*(a2 + 48) != 4)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v38 = *a1;
        v39 = v12;
        v40 = v13;
        v41 = v14;
        v42 = *(a1 + 32);
        if (*(a2 + 48) != 5)
        {
          goto LABEL_38;
        }
      }

      v36 = *(a2 + 16);
      v43[0] = *a2;
      v43[1] = v36;
      v43[2] = *(a2 + 32);
      v35 = sub_1ADEA5E98(&v38, v43);
      return v35 & 1;
    }

    if (v15 != 6)
    {
      if (v15 != 7)
      {
        if (*(a2 + 48) != 8)
        {
          goto LABEL_38;
        }

        sub_1ADE4A5B0(v11, *a2);
        if ((v32 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

      if (*(a2 + 48) != 7)
      {
        goto LABEL_38;
      }

      v16 = *a2;
      if (*a2 == v11)
      {
LABEL_34:
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v33 = sub_1AE23CCBC();
        v34 = *(v5 + 8);
        v34(v7, v4);
        v34(v10, v4);
        if (v33)
        {
          v35 = 1;
          return v35 & 1;
        }

LABEL_38:
        v35 = 0;
        return v35 & 1;
      }

      v17 = *a1;
      sub_1ADEA842C(a1, &v38);
      sub_1ADEA842C(a2, &v38);
      v18 = sub_1ADE9F7A8(v17, v16, sub_1ADE97EF4);
LABEL_13:
      v21 = v18;
      sub_1ADEA8464(a1);
      sub_1ADEA8464(a2);
      if (!v21)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    if (*(a2 + 48) != 6)
    {
      goto LABEL_38;
    }

    v22 = *(a2 + 16);
    v23 = *(a2 + 24);
    v24 = *a2;
    v25 = *(a2 + 8);

    return sub_1ADEA66EC(v11, v12, v13, v14, v24, v25, v22, v23);
  }
}

uint64_t sub_1ADEA74BC(_BOOL8 a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v15 = sub_1AE23C32C();
  v30 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  if (!sub_1ADDD6F8C(a1, a2, a5, a6))
  {
    goto LABEL_11;
  }

  if (!a4)
  {
    if (!a8)
    {
      goto LABEL_8;
    }

LABEL_11:
    v26 = 0;
    return v26 & 1;
  }

  if (!a8)
  {
    goto LABEL_11;
  }

  sub_1ADE4E9A0(v21, a8);
  if ((v22 & 1) == 0)
  {

    goto LABEL_11;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v23 = sub_1AE23CCBC();

  v24 = *(v30 + 8);
  v24(v17, v15);
  v24(v20, v15);
  if ((v23 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1ADE4ED9C(a3, v29);
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v26 = sub_1AE23CCBC();
  v27 = *(v30 + 8);
  v27(v17, v15);
  v27(v20, v15);
  return v26 & 1;
}

uint64_t sub_1ADEA7754(uint64_t a1, char *a2)
{
  v81 = a1;
  v82 = a2;
  v2 = sub_1AE23C32C();
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v73 - v5;
  v6 = sub_1AE23C2FC();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v73 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v73 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v73 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v73 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v73 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v73 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v73 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA868, &qword_1AE244FF0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v73 - v32;
  v35 = (&v73 + *(v34 + 56) - v32);
  sub_1ADEA8554(v81, &v73 - v32);
  sub_1ADEA8554(v82, v35);
  v82 = v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v37 = v82;
      if (EnumCaseMultiPayload)
      {
        sub_1ADEA8554(v82, v27);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v38 = *v27 == *v35;
LABEL_24:
          v43 = v38;
          goto LABEL_34;
        }
      }

      else
      {
        sub_1ADEA8554(v82, v30);
        if (!swift_getEnumCaseMultiPayload())
        {
          v38 = *v30 == *v35;
          goto LABEL_24;
        }
      }

      goto LABEL_46;
    }

    v37 = v82;
    if (EnumCaseMultiPayload != 2)
    {
      sub_1ADEA8554(v82, v21);
      v59 = *v21;
      v60 = v21[1];
      v61 = swift_getEnumCaseMultiPayload();
      if (v61 == 3)
      {
        v62 = *v35;
        v63 = v35[1];
        v43 = sub_1ADDD6F8C(v59, v60, *v35, v63);
        sub_1ADDCC35C(*&v62, v63);
        sub_1ADDCC35C(v59, v60);
        goto LABEL_34;
      }

      sub_1ADDCC35C(v59, v60);
LABEL_46:
      sub_1ADDCEDE0(v37, &qword_1EB5BA868, &qword_1AE244FF0);
LABEL_47:
      v43 = 0;
      return v43 & 1;
    }

    sub_1ADEA8554(v82, v24);
    v46 = *v24;
    v45 = v24[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      goto LABEL_46;
    }

    if (v46 == *v35 && v45 == v35[1])
    {
    }

    else
    {
      v48 = sub_1AE23E00C();

      if ((v48 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_50:
    v58 = v37;
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v37 = v82;
      sub_1ADEA8554(v82, v13);
      v49 = *v13;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v43 = sub_1ADEA621C(v49, *v35);

        goto LABEL_34;
      }
    }

    else
    {
      v37 = v82;
      sub_1ADEA8554(v82, v10);
      v64 = *v10;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v65 = *v35;
        if (v64 != *v35)
        {

          v66 = sub_1ADE9F7A8(v64, v65, sub_1ADE9604C);

          if (!v66)
          {

LABEL_55:
            sub_1ADEA8494(v37);
            goto LABEL_47;
          }
        }

        v67 = v75;
        sub_1AE23C31C();
        v68 = v74;
        sub_1AE23C31C();
        sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v69 = v77;
        v70 = sub_1AE23CCBC();
        v71 = *(v76 + 8);
        v71(v68, v69);
        v71(v67, v69);

        if ((v70 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_50;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_1ADEA8554(v82, v16);
    v50 = *v16;
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      v37 = v82;
      goto LABEL_46;
    }

    v51 = *v35;
    if (v50 == *v35 || (, , v52 = sub_1ADE9DC04(v50, v51), , , v52))
    {
      v53 = v75;
      sub_1AE23C31C();
      v54 = v74;
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v55 = v77;
      v56 = sub_1AE23CCBC();
      v57 = *(v76 + 8);
      v57(v54, v55);
      v57(v53, v55);

      v58 = v82;
      if (v56)
      {
LABEL_51:
        sub_1ADEA8494(v58);
        v43 = 1;
        return v43 & 1;
      }
    }

    else
    {

      v58 = v82;
    }

    sub_1ADEA8494(v58);
    goto LABEL_47;
  }

  v37 = v82;
  v39 = v78;
  sub_1ADEA8554(v82, v78);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    (*(v79 + 8))(v39, v80);
    goto LABEL_46;
  }

  v41 = v79;
  v40 = v80;
  v42 = v73;
  (*(v79 + 32))(v73, v35, v80);
  v43 = sub_1AE23C29C();
  v44 = *(v41 + 8);
  v44(v42, v40);
  v44(v39, v40);
LABEL_34:
  sub_1ADEA8494(v37);
  return v43 & 1;
}

uint64_t sub_1ADEA7FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30[-v17];
  if (a1)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    if (a1 != a4 && !sub_1ADE9604C(a1, a4))
    {
      goto LABEL_23;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v31 = sub_1AE23CCBC();
    v32 = a2;
    v33 = a3;
    v19 = a6;
    v20 = *(v13 + 8);
    v20(v15, v12);
    v20(v18, v12);
    a6 = v19;
    a2 = v32;
    a3 = v33;

    if ((v31 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (a4)
  {
    goto LABEL_24;
  }

  if (a2)
  {
    if (!a5)
    {
      goto LABEL_24;
    }

    if (a2 == a5 || sub_1ADE97EF4(a2, a5))
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      LODWORD(v33) = sub_1AE23CCBC();
      v21 = v13;
      v22 = *(v13 + 8);
      v22(v15, v12);
      v22(v18, v12);
      v13 = v21;

      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_23:

    goto LABEL_24;
  }

  if (a5)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (!a3)
  {
    if (!a6)
    {
LABEL_22:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      LOBYTE(a6) = sub_1AE23CCBC();
      v28 = *(v13 + 8);
      v28(v15, v12);
      v28(v18, v12);
      return a6 & 1;
    }

LABEL_24:
    LOBYTE(a6) = 0;
    return a6 & 1;
  }

  if (a6)
  {

    sub_1ADE4E9A0(v23, a6);
    if (v24)
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADEA860C(&qword_1EB5BA018, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v25 = sub_1AE23CCBC();

      v26 = v13;
      v27 = *(v13 + 8);
      v27(v15, v12);
      v27(v18, v12);
      v13 = v26;
      if (v25)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    goto LABEL_24;
  }

  return a6 & 1;
}

uint64_t sub_1ADEA8494(uint64_t a1)
{
  v2 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADEA84F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADEA8554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto4_Value.OneOf_TaggedOneOf(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ADEA85B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA870;
  if (!qword_1EB5BA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA870);
  }

  return result;
}

uint64_t sub_1ADEA860C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ADEA8654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA028, &qword_1AE241808);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ADEA86C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA880;
  if (!qword_1EB5BA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA880);
  }

  return result;
}

uint64_t sub_1ADEA8718(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADDCC35C(result, a2);
  }

  return result;
}

uint64_t sub_1ADEA8764(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ADEA87D4(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_1ADDCC35C(result, a2);
  }

  return result;
}

unint64_t sub_1ADEA8824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA888;
  if (!qword_1EB5BA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA888);
  }

  return result;
}

unint64_t sub_1ADEA8878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA890;
  if (!qword_1EB5BA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA890);
  }

  return result;
}

unint64_t sub_1ADEA88CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA898;
  if (!qword_1EB5BA898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA898);
  }

  return result;
}

unint64_t sub_1ADEA8920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8A0;
  if (!qword_1EB5BA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8A0);
  }

  return result;
}

unint64_t sub_1ADEA8974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8A8;
  if (!qword_1EB5BA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8A8);
  }

  return result;
}

unint64_t sub_1ADEA89C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8B0;
  if (!qword_1EB5BA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8B0);
  }

  return result;
}

unint64_t sub_1ADEA8A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8B8;
  if (!qword_1EB5BA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8B8);
  }

  return result;
}

unint64_t sub_1ADEA8A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8C0;
  if (!qword_1EB5BA8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8C0);
  }

  return result;
}

unint64_t sub_1ADEA8AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8C8;
  if (!qword_1EB5BA8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8C8);
  }

  return result;
}

unint64_t sub_1ADEA8B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8D0;
  if (!qword_1EB5BA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8D0);
  }

  return result;
}

unint64_t sub_1ADEA8B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8D8;
  if (!qword_1EB5BA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8D8);
  }

  return result;
}

uint64_t sub_1ADEA8BC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  if (result)
  {
    a5();
    return sub_1AE23C66C();
  }

  return result;
}

unint64_t sub_1ADEA8C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8E0;
  if (!qword_1EB5BA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8E0);
  }

  return result;
}

unint64_t sub_1ADEA8C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8E8;
  if (!qword_1EB5BA8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8E8);
  }

  return result;
}

unint64_t sub_1ADEA8CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8F0;
  if (!qword_1EB5BA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8F0);
  }

  return result;
}

unint64_t sub_1ADEA8D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA8F8;
  if (!qword_1EB5BA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA8F8);
  }

  return result;
}

unint64_t sub_1ADEA8D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA900;
  if (!qword_1EB5BA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA900);
  }

  return result;
}

unint64_t sub_1ADEA8DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA908;
  if (!qword_1EB5BA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA908);
  }

  return result;
}

unint64_t sub_1ADEA8E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA910;
  if (!qword_1EB5BA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA910);
  }

  return result;
}

uint64_t sub_1ADEA8E90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    sub_1ADEA468C(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

unint64_t sub_1ADEA8F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA918;
  if (!qword_1EB5BA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA918);
  }

  return result;
}

unint64_t sub_1ADEA8F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA920;
  if (!qword_1EB5BA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA920);
  }

  return result;
}

unint64_t sub_1ADEA8FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA928;
  if (!qword_1EB5BA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA928);
  }

  return result;
}

unint64_t sub_1ADEA9004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA930;
  if (!qword_1EB5BA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA930);
  }

  return result;
}

uint64_t sub_1ADEA9058(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 1) == 0)
  {
    sub_1ADEA47EC(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADEA90D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1ADEA911C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADEA9158(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1ADEA91B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1ADEA9208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1ADEA9250(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1ADEA9290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1ADEA92EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ADEA9354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1ADEA939C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1ADEA93FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1ADEA9444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1ADEA94BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADEA94DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1ADEA9524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1ADEA9580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
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

uint64_t sub_1ADEA95E8(uint64_t a1, int a2)
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

uint64_t sub_1ADEA9630(uint64_t result, int a2, int a3)
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

unint64_t sub_1ADEA9680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA938;
  if (!qword_1EB5BA938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA938);
  }

  return result;
}

unint64_t sub_1ADEA96D8()
{
  result = qword_1EB5BA940;
  if (!qword_1EB5BA940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BA948, qword_1AE245518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA940);
  }

  return result;
}

unint64_t sub_1ADEA9740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA950;
  if (!qword_1EB5BA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA950);
  }

  return result;
}

unint64_t sub_1ADEA9798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA958;
  if (!qword_1EB5BA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA958);
  }

  return result;
}

void sub_1ADEA980C(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return;
  }

  v6 = v4;
  v7 = *a2;
  v8 = a2[1];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 48);
  v22 = v10;
  *(v6 + 48) = 0x8000000000000000;
  v11 = sub_1ADDDE7CC(v7, v8);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v12;
  if (v10[3] >= v16)
  {
    goto LABEL_6;
  }

  sub_1ADE1D52C(v16, isUniquelyReferenced_nonNull_native);
  v11 = sub_1ADDDE7CC(v7, v8);
  if ((v5 & 1) != (v17 & 1))
  {
    v11 = sub_1AE23E27C();
    __break(1u);
LABEL_6:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  *(v6 + 48) = v10;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_8:
  v6 = v11;
  sub_1ADDE8C98(v11, v7, v8, 0, v10);
  sub_1ADDD86D8(v7, v8);
  v11 = v6;
LABEL_9:
  while (1)
  {
    v18 = v10[7];
    v19 = *(v18 + 8 * v11);
    v15 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v15)
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v21 = v11;
    sub_1ADF6F1AC();
    v11 = v21;
    v10 = v22;
    *(v6 + 48) = v22;
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  *(v18 + 8 * v11) = v20;
  swift_endAccess();
}

void *sub_1ADEA9974@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = v3;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 40);
  v23 = v10;
  *(v5 + 40) = 0x8000000000000000;
  v11 = sub_1ADDDE7CC(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v4) = v12;
  if (v10[3] < v16)
  {
    sub_1ADF69618(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_1ADDDE7CC(a1, a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_1AE23E27C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(v5 + 40) = v10;
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_7:
  v4 = v11;
  sub_1ADDE8C98(v11, a1, a2, 0, v10);
  sub_1ADDD86D8(a1, a2);
  v11 = v4;
LABEL_8:
  while (1)
  {
    v18 = v10[7];
    v19 = *(v18 + 8 * v11);
    v15 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v15)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v22 = v11;
    sub_1ADF6F314();
    v11 = v22;
    v10 = v23;
    *(v5 + 40) = v23;
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v18 + 8 * v11) = v20;
  swift_endAccess();
  return sub_1AE1A3880(a1, a2, a3);
}

uint64_t sub_1ADEA9AF4()
{
}

uint64_t sub_1ADEA9B24()
{

  return swift_deallocClassInstance();
}

void sub_1ADEA9BC0(int a1, int a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v68 = a2;
  v69 = a1;
  v76 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v65 - v9;
  v10 = a4[1];
  v66 = *a4;
  v65 = v10;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v13 = sub_1ADDD9ECC(v11);
  v90 = v12;
  v91 = v13;
  v14 = OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated;
  swift_beginAccess();

  sub_1ADDDBFE0(v15);

  v67 = v14;
  v16 = *(v5 + v14);
  v17 = v16 + 56;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 56);
  v21 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v74 = v16;

  v80 = v21;
  swift_beginAccess();
  v22 = 0;
  v23 = (v18 + 63) >> 6;
  v71 = v17;
  v70 = v23;
  v75 = v5;
  while (v20)
  {
    v24 = v5;
    v25 = v22;
LABEL_12:
    v26 = (*(v74 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v20)))));
    v28 = *v26;
    v27 = v26[1];
    v29 = type metadata accessor for RetainVisitor();
    v30 = swift_allocObject();
    sub_1ADDD86D8(v28, v27);
    v31 = MEMORY[0x1E69E7CC0];
    v32 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ADDD9ECC(v31);
    *(v30 + 16) = v32;
    v79 = v30;
    *(v30 + 24) = v33;
    v34 = v73;
    sub_1ADECD9E8(v24 + v80, v73, type metadata accessor for PartiallyOrderedReferenceMap);
    v35 = *(v34 + *(v76 + 20));
    sub_1ADDD86D8(v28, v27);
    sub_1ADDDF7A8(v28, v27, v35, &v84);
    v77 = v28;
    v78 = v27;
    sub_1ADDCC35C(v28, v27);
    sub_1ADDD872C(v34, type metadata accessor for PartiallyOrderedReferenceMap);
    v36 = v86;
    if (!v86)
    {
      goto LABEL_23;
    }

    v38 = v88;
    v37 = v89;
    v39 = v87;
    v40 = v84;
    v41 = v85;

    sub_1ADDDC21C(v42, v41, v36, v39, v38, v37);
    if (!v40)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v83[3] = v29;
    v83[4] = &off_1F23C4550;
    v43 = v79;
    v83[0] = v79;
    v44 = *(*v40 + 128);

    v44(v83);

    __swift_destroy_boxed_opaque_existential_1(v83);
    swift_beginAccess();
    v45 = *(v43 + 16);
    v46 = *(v43 + 24);

    sub_1ADDDC8DC(v45, v46);

    v5 = v75;
    v47 = v72;
    sub_1ADECD9E8(v75 + v80, v72, type metadata accessor for PartiallyOrderedReferenceMap);
    v48 = *(v47 + *(v76 + 20));
    v49 = v77;
    v50 = v78;
    sub_1ADDD86D8(v77, v78);
    sub_1ADDDF7A8(v49, v50, v48, &v84);
    sub_1ADDCC35C(v49, v50);
    sub_1ADDD872C(v47, type metadata accessor for PartiallyOrderedReferenceMap);
    v51 = v86;
    if (v86)
    {
      v53 = v88;
      v52 = v89;
      v54 = v87;
      v56 = v84;
      v55 = v85;

      v57 = v56;
      v50 = v78;
      v58 = v55;
      v49 = v77;
      sub_1ADDDC21C(v57, v58, v51, v54, v53, v52);
      sub_1ADDDCE90(v53, v52);
    }

    v20 &= v20 - 1;
    swift_beginAccess();
    v81 = v49;
    v82 = v50;
    sub_1ADDD86D8(v49, v50);
    v60 = sub_1ADDDD4A0(&v84, &v81);
    if (*(v59 + 16))
    {
      v61 = v59;
      swift_beginAccess();
      v62 = *(v79 + 24);
      *(v61 + 32) = *(v79 + 16);
      *(v61 + 40) = v62;

      (v60)(&v84, 0);
      swift_endAccess();

      sub_1ADDCC35C(v49, v50);
      v5 = v75;

      sub_1ADDCC35C(v81, v82);
    }

    else
    {
      (v60)(&v84, 0);
      sub_1ADDCC35C(v81, v82);
      swift_endAccess();
      sub_1ADDCC35C(v49, v50);
    }

    v22 = v25;
    v17 = v71;
    v23 = v70;
  }

  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v25 >= v23)
    {
      break;
    }

    v20 = *(v17 + 8 * v25);
    ++v22;
    if (v20)
    {
      v24 = v5;
      goto LABEL_12;
    }
  }

  sub_1ADEB3780(v90, v91, v68 & 1, v66, v65);

  v63 = v67;
  if (v69)
  {

    sub_1ADEB41A8(v64, 0);
  }

  *(v5 + v63) = MEMORY[0x1E69E7CD0];
}

uint64_t sub_1ADEAA2FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v94 = a3;
  v95 = a4;
  v93 = a5;
  v127 = *MEMORY[0x1E69E9840];
  v102 = sub_1AE23BFEC();
  v8 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  *&v107 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v98 = a1[1];
  v99 = v13;
  v14 = *a2;
  v96 = a2[1];
  v97 = v14;
  v15 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  v116 = v15;
  v16 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v92 = v5;
  sub_1ADECD9E8(v5 + v16, v12, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1AE23C1FC();
  sub_1ADDD872C(v12, type metadata accessor for PartiallyOrderedReferenceMap);
  v101 = (v8 + 8);
  while (1)
  {
    v20 = v109;
    if (v109 < DWORD1(v109))
    {
      v21 = *(&v108 + 1);
      LODWORD(v109) = v109 + 1;
      goto LABEL_7;
    }

    v21 = sub_1AE23C20C();
    if (!v21)
    {
      v125 = v114;
      v126[0] = v115[0];
      *(v126 + 11) = *(v115 + 11);
      v121 = v110;
      v122 = v111;
      v123 = v112;
      v124 = v113;
      v119 = v108;
      v120 = v109;
      sub_1ADDFD834(&v119);
      if (!v15[2])
      {
        goto LABEL_58;
      }

      v80 = sub_1ADDDE7CC(v99, v98);
      if (v81)
      {
        if (v15[2])
        {
          v82 = (v15[7] + 16 * v80);
          v83 = *v82;
          v84 = v82[1];
          sub_1ADDD86D8(*v82, v84);
          v85 = sub_1ADDDE7CC(v97, v96);
          if (v86)
          {
            v107 = *(v15[7] + 16 * v85);
            v118 = v107;
            v87 = v107;
            sub_1ADDD86D8(v107, *(&v107 + 1));
            sub_1ADDD86D8(v87, *(&v87 + 1));
            v88 = v92;

            v89 = sub_1ADECC43C(&v118, &v116, v88);

            *&v118 = v83;
            *(&v118 + 1) = v84;
            v117 = v107;
            sub_1AE1EB038(&v118, &v117, v89, v93);
          }

LABEL_61:
          __break(1u);
        }
      }

      else
      {
LABEL_59:
        __break(1u);
      }

      __break(1u);
      goto LABEL_61;
    }

LABEL_7:
    v22 = (v21 + *(v21 + 24) + (~v20 << 6));
    v24 = v22[4];
    v23 = v22[5];
    v26 = v22[8];
    v25 = v22[9];
    v27 = v22[10];
    v28 = v22[11];
    sub_1ADDD86D8(v24, v23);

    v106 = v25;

    v105 = v27;

    v104 = v28;

    sub_1ADDD86D8(v24, v23);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    v29 = qword_1ED96F298;
    v30 = clock_gettime_nsec_np(_CLOCK_REALTIME);
    v31 = ((v30 / 0xF4240) << 12) | (4095 * (v30 % 0xF4240) / 0xF4240);
    v32 = *(v29 + 24);
    os_unfair_lock_lock((v32 + 32));
    v33 = *(v32 + 16);
    if (v33 <= v31)
    {
      v34 = v31;
    }

    else
    {
      v34 = *(v32 + 16);
    }

    if (v33 < v31)
    {
      *&v119 = 0;
      MEMORY[0x1B26FDA70](&v119, 8);
      v35 = v119 >> 3;
LABEL_24:
      *(v32 + 16) = v34;
      *(v32 + 24) = v35;
      goto LABEL_28;
    }

    v36 = *(v29 + 16);
    if (v36 > 0x4000000000000000)
    {
      goto LABEL_53;
    }

    v37 = *(v32 + 24);
    if (v36)
    {
      *&v119 = 0;
      MEMORY[0x1B26FDA70](&v119, 8);
      v38 = (v119 * v36) >> 64;
      if (v36 > v119 * v36)
      {
        v39 = -v36 % v36;
        if (v39 > v119 * v36)
        {
          do
          {
            *&v119 = 0;
            MEMORY[0x1B26FDA70](&v119, 8);
          }

          while (v39 > v119 * v36);
          v38 = (v119 * v36) >> 64;
        }
      }
    }

    else
    {
      v38 = 0;
    }

    v40 = v37 + 1;
    if (v37 == -1)
    {
      goto LABEL_54;
    }

    v35 = v40 + v38;
    if (__CFADD__(v40, v38))
    {
      goto LABEL_55;
    }

    if (!(v35 >> 62))
    {
      goto LABEL_24;
    }

    if (__CFADD__(v34++, 1))
    {
      goto LABEL_57;
    }

    v42 = sub_1ADDCC2D0(0x2000000000000000uLL);
    *(v32 + 16) = v34;
    *(v32 + 24) = v42;
    if (v42 >> 62)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v35 = v42;
LABEL_28:
    os_unfair_lock_unlock((v32 + 32));
    sub_1AE001F28(v34 >> 12, v34 & 0xFFF, v35);
    sub_1AE23BFBC();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA110, &qword_1AE241928);
    *(&v120 + 1) = v43;
    *&v121 = sub_1ADDCC7D4(&qword_1ED96AA40, &qword_1EB5BA110, &qword_1AE241928, MEMORY[0x1E6969E08]);
    *&v119 = &unk_1F23BBEC8;
    v44 = __swift_project_boxed_opaque_existential_1(&v119, v43);
    v45 = *v44;
    v46 = *(*v44 + 16);
    v103 = v26;
    if (v46)
    {
      if (v46 <= 0xE)
      {
        *&v118 = sub_1AE1A3858(v46);
        DWORD2(v118) = v51;
        BYTE14(v118) = v52;
        WORD6(v118) = v53;
        memcpy(&v118, (v45 + 32), v46);
        v49 = v118;
        v50 = v100 & 0xF00000000000000 | DWORD2(v118) | ((WORD6(v118) | (BYTE14(v118) << 16)) << 32);
        v100 = v50;
      }

      else
      {
        sub_1AE23BBCC();
        swift_allocObject();
        v47 = sub_1AE23BB6C();
        v48 = v47;
        if (v46 >= 0x7FFFFFFF)
        {
          sub_1AE23BE2C();
          v49 = swift_allocObject();
          *(v49 + 16) = 0;
          *(v49 + 24) = v46;
          v50 = v48 | 0x8000000000000000;
        }

        else
        {
          v49 = v46 << 32;
          v50 = v47 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v49 = 0;
      v50 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v119);
    *&v118 = v49;
    *(&v118 + 1) = v50;
    v54 = v107;
    *&v117 = sub_1AE23BFCC();
    WORD4(v117) = v55;
    BYTE10(v117) = v56;
    BYTE11(v117) = v57;
    BYTE12(v117) = v58;
    BYTE13(v117) = v59;
    BYTE14(v117) = v60;
    HIBYTE(v117) = v61;
    sub_1AE23BFCC();
    v62 = sub_1ADDD8EE0(&v117, 0x10uLL);
    v64 = v63;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v62, v64);
    (*v101)(v54, v102);
    v65 = v118;
    v66 = v116;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v117 = v66;
    v69 = sub_1ADDDE7CC(v24, v23);
    v70 = *(v66 + 16);
    v71 = (v68 & 1) == 0;
    v72 = v70 + v71;
    if (__OFADD__(v70, v71))
    {
      goto LABEL_52;
    }

    v73 = v68;
    if (*(v66 + 24) < v72)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v15 = v117;
      if (v68)
      {
        goto LABEL_2;
      }
    }

    else
    {
      sub_1ADF70D5C();
      v15 = v117;
      if (v73)
      {
LABEL_2:
        v17 = (v15[7] + 16 * v69);
        v18 = *v17;
        v19 = v17[1];
        *v17 = v65;
        sub_1ADDCC35C(v18, v19);
        sub_1ADDCC35C(v24, v23);
        goto LABEL_3;
      }
    }

LABEL_42:
    v15[(v69 >> 6) + 8] |= 1 << v69;
    v76 = (v15[6] + 16 * v69);
    *v76 = v24;
    v76[1] = v23;
    *(v15[7] + 16 * v69) = v65;
    v77 = v15[2];
    v78 = __OFADD__(v77, 1);
    v79 = v77 + 1;
    if (v78)
    {
      goto LABEL_56;
    }

    v15[2] = v79;
LABEL_3:
    sub_1ADDCC35C(v24, v23);

    v116 = v15;
  }

  sub_1ADF6BDB0(v72, isUniquelyReferenced_nonNull_native);
  v74 = sub_1ADDDE7CC(v24, v23);
  if ((v73 & 1) == (v75 & 1))
  {
    v69 = v74;
    v15 = v117;
    if (v73)
    {
      goto LABEL_2;
    }

    goto LABEL_42;
  }

  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void sub_1ADEAAC3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v32 = a1;
  v36 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  v6 = *a2;
  v7 = (*a2 + 64);
  v8 = 1 << *(*a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *v7;
  v11 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v38 = v6;

  v37 = a3;
  v34 = v11;
  swift_beginAccess();
  v12 = 0;
  v13 = (v8 + 63) >> 6;
  v31 = v7;
  v30 = v13;
  if (v10)
  {
    while (1)
    {
      v14 = v12;
LABEL_8:
      v15 = (v14 << 10) | (16 * __clz(__rbit64(v10)));
      v16 = (*(v38 + 48) + v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = (*(v38 + 56) + v15);
      v20 = *v19;
      v21 = v19[1];
      v22 = v35;
      sub_1ADECD9E8(v37 + v34, v35, type metadata accessor for PartiallyOrderedReferenceMap);
      v23 = *(v22 + *(v36 + 20));
      sub_1ADDD86D8(v18, v17);
      sub_1ADDD86D8(v20, v21);
      sub_1ADDD86D8(v18, v17);
      sub_1ADDD86D8(v20, v21);
      sub_1ADDDF7A8(v18, v17, v23, &v43);
      sub_1ADDCC35C(v18, v17);
      sub_1ADDD872C(v22, type metadata accessor for PartiallyOrderedReferenceMap);
      v24 = v45;
      if (!v45)
      {
        break;
      }

      v39 = v47;
      v40 = v48;
      v25 = v46;
      v26 = v43;
      v27 = v44;

      sub_1ADDDC21C(v28, v27, v24, v25, v39, v40);
      if (!v26)
      {
        goto LABEL_14;
      }

      v10 &= v10 - 1;
      sub_1ADDCC35C(v20, v21);
      v29 = (*(*v26 + 80))(v33);

      v42 = v29;
      sub_1ADDD86D8(v18, v17);
      sub_1ADDD86D8(v20, v21);
      sub_1ADDCC35C(v18, v17);
      v41[0] = v20;
      v41[1] = v21;
      sub_1ADEAAF7C(&v42, v41, &v43);
      sub_1ADDCC35C(v18, v17);
      sub_1ADDCC35C(v20, v21);
      sub_1ADDE158C(v20, v21);

      sub_1ADDCC35C(v43, v44);
      v12 = v14;
      v7 = v31;
      v13 = v30;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        return;
      }

      v10 = v7[v14];
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
}

void sub_1ADEAAF7C(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v34 = a3;
  v33 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a1;
  v13 = *a2;
  v14 = a2[1];
  v15 = *a2;
  v16 = v14;
  if (v14 >> 60 == 15)
  {
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    *&v38 = sub_1ADDCC6B4(&unk_1F23BBEA0);
    *(&v38 + 1) = v17;
    v18 = sub_1ADDD8E0C(v38);
    v20 = v19;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v18, v20);
    (*(v10 + 8))(v12, v9);
    v16 = *(&v38 + 1);
    v15 = v38;
  }

  v21 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v4 + v21, v8, type metadata accessor for PartiallyOrderedReferenceMap);
  v22 = *&v8[*(v33 + 20)];
  sub_1ADDD86D8(v15, v16);
  sub_1ADDE0F78(v13, v14);
  sub_1ADDDF7A8(v15, v16, v22, &v38);
  sub_1ADDCC35C(v15, v16);
  sub_1ADDD872C(v8, type metadata accessor for PartiallyOrderedReferenceMap);
  if (v39)
  {
    sub_1ADDDC21C(v38, *(&v38 + 1), v39, v40, v41, v42);
    swift_beginAccess();
    v36 = v15;
    v37 = v16;
    sub_1ADDD86D8(v15, v16);
    v24 = sub_1ADDDD4A0(&v38, &v36);
    if (v23[2])
    {
      *v23 = v32;

      (v24)(&v38, 0);
      swift_endAccess();

      sub_1ADDCC35C(v36, v37);
    }

    else
    {
      (v24)(&v38, 0);
      sub_1ADDCC35C(v36, v37);
      swift_endAccess();
    }
  }

  else
  {
    v25 = v32;

    v26 = MEMORY[0x1E69E7CC0];
    v27 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v28 = sub_1ADDD9ECC(v26);
    sub_1ADDDA5BC(v26);
    sub_1ADDD9ECC(v26);

    v29 = MEMORY[0x1E69E7CC8];
    swift_bridgeObjectRelease_n();
    v38 = v25;
    v39 = v29;
    v40 = v29;
    v41 = v27;
    v42 = v28;
    v36 = v15;
    v37 = v16;
    swift_beginAccess();
    sub_1ADDD82B0(&v38, &v36);
    swift_endAccess();
  }

  swift_beginAccess();
  sub_1ADDD86D8(v15, v16);
  sub_1ADDE0110(v35, v15, v16);
  swift_endAccess();
  sub_1ADDCC35C(v35[0], v35[1]);
  v30 = v34;
  *v34 = v15;
  v30[1] = v16;
}

void sub_1ADEAB444(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a3;
  v103 = a4;
  v120 = a1;
  v97 = a5;
  v119 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v119);
  v107 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v96 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v117 = &v96 - v11;
  v12 = sub_1AE23BFEC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v100 = a2[1];
  v101 = v16;
  if (qword_1ED969288 != -1)
  {
LABEL_39:
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_1ED96F228);
  (*(v13 + 16))(v15, v17, v12);
  type metadata accessor for ReplicaState(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v20 = type metadata accessor for Replica(0);
  v21 = *(*(v20 - 8) + 56);
  v21(v18 + v19, 1, 1, v20);
  (*(v13 + 32))(v18 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v15, v12);
  *(v18 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v18 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v22 = v117;
  v21(v117, 1, 1, v20);
  swift_beginAccess();
  sub_1ADDD85E4(v22, v18 + v19);
  swift_endAccess();
  v98 = sub_1ADDD94CC(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  v25 = v100;
  v24 = v101;
  *(inited + 32) = v101;
  *(inited + 40) = v25;
  sub_1ADDD86D8(v24, v25);
  v28 = sub_1ADF7E6A4(inited, v26, v27);
  swift_setDeallocating();
  sub_1ADECDAB4(inited + 32);
  v131 = v28;
  v29 = MEMORY[0x1E69E7CC0];
  v130 = MEMORY[0x1E69E7CC0];
  v30 = type metadata accessor for RetainVisitor();
  v31 = swift_allocObject();
  v32 = sub_1ADDDA5BC(v29);
  v33 = sub_1ADDD9ECC(v29);
  *(v31 + 16) = v32;
  *(v31 + 24) = v33;
  v134 = v30;
  v135 = &off_1F23C4550;
  *&v132 = v31;
  v34 = *(v103 + 16);
  v35 = *(v34 + 48);
  v12 = v34 + 48;
  v99 = v31;

  v35(&v132, v102, v34);
  __swift_destroy_boxed_opaque_existential_1(&v132);
  swift_beginAccess();
  v117 = (v31 + 16);

  sub_1ADFB6A38(v36);
  v120 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v37 = v118;
  swift_beginAccess();
  v15 = v130;
  if (!*(v130 + 2))
  {
    goto LABEL_14;
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v38 = *(v15 + 2);
    if (!v38)
    {
      goto LABEL_12;
    }

LABEL_7:
    v39 = v38 - 1;
    v40 = &v15[16 * v39];
    v42 = *(v40 + 4);
    v41 = *(v40 + 5);
    *(v15 + 2) = v39;
    v130 = v15;
    sub_1ADDD86D8(v42, v41);
    v43 = sub_1ADDE0110(&v132, v42, v41);
    sub_1ADDCC35C(v132, *(&v132 + 1));
    if ((v43 & 1) != 0 && (sub_1ADECD9E8(v37 + v120, v9, type metadata accessor for PartiallyOrderedReferenceMap), v44 = &v9[*(v119 + 20)], v45 = *v44, v12 = *(v44 + 1), sub_1ADDD86D8(v42, v41), sub_1ADDDF7A8(v42, v41, v45, &v132), sub_1ADDCC35C(v42, v41), sub_1ADDD872C(v9, type metadata accessor for PartiallyOrderedReferenceMap), (v46 = v133) != 0))
    {
      v47 = v135;
      v12 = v136;
      v48 = v134;
      v49 = *(&v132 + 1);
      v50 = v132;

      v51 = v50;
      v37 = v118;
      sub_1ADDDC21C(v51, v49, v46, v48, v47, v12);

      sub_1ADFB6A38(v52);
      swift_beginAccess();
      sub_1ADDDC8DC(v47, v12);
      swift_endAccess();

      sub_1ADDCC35C(v42, v41);
      v15 = v130;
      if (!*(v130 + 2))
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1ADDCC35C(v42, v41);
      if (!*(v15 + 2))
      {
        goto LABEL_13;
      }
    }
  }

  v15 = sub_1ADF79A04(v15);
  v38 = *(v15 + 2);
  if (v38)
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v28 = v131;
LABEL_14:
  v53 = v28 + 56;
  v54 = 1 << *(v28 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v13 = v55 & *(v28 + 56);

  swift_beginAccess();
  v56 = 0;
  v57 = (v54 + 63) >> 6;
  v58 = MEMORY[0x1E69E7CC8];
  v104 = v57;
  v105 = v28 + 56;
  v106 = v28;
  while (v13)
  {
    v115 = v58;
LABEL_25:
    v68 = (*(v28 + 48) + ((v56 << 10) | (16 * __clz(__rbit64(v13)))));
    v69 = *v68;
    v70 = v68[1];
    v71 = v107;
    sub_1ADECD9E8(v118 + v120, v107, type metadata accessor for PartiallyOrderedReferenceMap);
    v72 = *(v71 + *(v119 + 20));
    sub_1ADDD86D8(v69, v70);
    v116 = v70;
    sub_1ADDDF7A8(v69, v70, v72, &v125);
    sub_1ADDD872C(v71, type metadata accessor for PartiallyOrderedReferenceMap);
    if (!v126)
    {
      goto LABEL_41;
    }

    v73 = v126;
    v74 = v127;
    v111 = v128;
    v112 = v125;
    v113 = v129;
    v75 = *v117;
    v76 = *(*v117 + 16);

    v114 = v69;
    if (v76)
    {

      v77 = sub_1ADDDE7CC(v69, v116);
      if (v78)
      {
        v79 = *(*(v75 + 56) + 8 * v77);
      }

      else
      {
        v79 = 0;
      }

      v110 = v79;
    }

    else
    {
      v110 = 0;
    }

    v13 &= v13 - 1;
    v59 = v73;
    v108 = v73;

    v60 = v74;

    v9 = v111;

    v12 = v113;

    v109 = v60;
    v61 = MEMORY[0x1E69E7CC0];
    sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    sub_1ADDD9ECC(v61);

    swift_bridgeObjectRelease_n();
    v62 = v112.n128_u64[0];
    *&v132 = v112.n128_u64[0];
    *(&v132 + 1) = v110;
    v133 = v59;
    v134 = v60;
    v135 = v9;
    v136 = v12;
    v63 = v115;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125.n128_u64[0] = v63;
    v65 = v114;
    v66 = v116;
    sub_1ADEBF7C0(&v132, v114, v116, isUniquelyReferenced_nonNull_native);
    sub_1ADDDC21C(v62, v112.n128_i64[1], v108, v109, v9, v12);
    sub_1ADDCC35C(v65, v66);
    v58 = v125.n128_u64[0];
    v53 = v105;
    v28 = v106;
    v57 = v104;
  }

  while (1)
  {
    v67 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v67 >= v57)
    {
      break;
    }

    v13 = *(v53 + 8 * v67);
    ++v56;
    if (v13)
    {
      v115 = v58;
      v56 = v67;
      goto LABEL_25;
    }
  }

  v80 = (v118 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v81 = v80[1];
  v124[0] = *v80;
  v124[1] = v81;
  v82 = v98;
  swift_beginAccess();

  sub_1ADE18DC0(v58, v124);
  swift_endAccess();

  v83 = *(v99 + 24);
  v84 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  swift_beginAccess();
  *(v82 + v84) = v83;

  v86 = *v80;
  v85 = v80[1];
  v87 = (v82 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  *v87 = v86;
  v87[1] = v85;

  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v88 = v87[1];
  v125.n128_u64[0] = MEMORY[0x1E69E7CC8];
  v125.n128_u64[1] = v88;

  sub_1ADDE1CB8(&v125);

  swift_beginAccess();
  v90 = v100;
  v89 = v101;
  v121 = v101;
  v122 = v100;
  sub_1ADDD86D8(v101, v100);
  v92 = sub_1ADDDD4A0(&v125, &v121);
  if (!*(v91 + 16))
  {
    (v92)(&v125, 0);
    sub_1ADDCC35C(v121, v122);
    swift_endAccess();
    goto LABEL_37;
  }

  v93 = *(v91 + 8);
  v94 = __OFADD__(v93, 1);
  v95 = v93 + 1;
  if (!v94)
  {
    *(v91 + 8) = v95;
    (v92)(&v125, 0);
    swift_endAccess();
    sub_1ADDCC35C(v121, v122);
LABEL_37:
    v125.n128_u64[0] = v89;
    v125.n128_u64[1] = v90;
    *&v123 = v89;
    *(&v123 + 1) = v90;
    sub_1AE1EB038(&v125, &v123, v82, v97);
    sub_1ADDD86D8(v89, v90);
    sub_1ADDD86D8(v89, v90);

    return;
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

void sub_1ADEABF90(uint64_t a1, uint64_t *a2, _UNKNOWN **a3, uint64_t a4)
{
  v5 = v4;
  v85 = a3;
  v84 = a1;
  v76 = sub_1AE23C96C();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23C9BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v81 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v82);
  v79 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v86 = (v71 - v14);
  v16 = *a2;
  v15 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  *(inited + 32) = v16;
  *(inited + 40) = v15;
  sub_1ADDD86D8(v16, v15);
  v20 = sub_1ADF7E6A4(inited, v18, v19);
  swift_setDeallocating();
  sub_1ADECDAB4(inited + 32);
  v94 = v20;
  v21 = MEMORY[0x1E69E7CC0];
  v93 = MEMORY[0x1E69E7CC0];
  v22 = type metadata accessor for RetainVisitor();
  v23 = swift_allocObject();
  v24 = sub_1ADDDA5BC(v21);
  v25 = sub_1ADDD9ECC(v21);
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  v90 = v22;
  v91 = &off_1F23C4550;
  v87 = v23;
  v26 = *(a4 + 16);
  v27 = *(v26 + 48);
  v73 = v23;

  v27(&v87, v85, v26);
  __swift_destroy_boxed_opaque_existential_1(&v87);
  swift_beginAccess();
  v85 = (v23 + 16);

  sub_1ADFB6A38(v28);
  v84 = v5;
  v83 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v29 = v93;
  v30 = *(v93 + 2);
  v77 = v9;
  if (!v30)
  {
    v46 = v20;
    goto LABEL_14;
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v31 = *(v29 + 2);
    if (!v31)
    {
      goto LABEL_11;
    }

LABEL_6:
    v32 = v31 - 1;
    v33 = &v29[16 * v32];
    v35 = *(v33 + 4);
    v34 = *(v33 + 5);
    *(v29 + 2) = v32;
    v93 = v29;
    sub_1ADDD86D8(v35, v34);
    v36 = sub_1ADDE0110(&v87, v35, v34);
    sub_1ADDCC35C(v87, v88);
    if ((v36 & 1) != 0 && (v37 = v86, sub_1ADECD9E8(v84 + v83, v86, type metadata accessor for PartiallyOrderedReferenceMap), v38 = *(v37 + *(v82 + 20)), sub_1ADDD86D8(v35, v34), sub_1ADDDF7A8(v35, v34, v38, &v87), sub_1ADDCC35C(v35, v34), sub_1ADDD872C(v37, type metadata accessor for PartiallyOrderedReferenceMap), (v39 = v89) != 0))
    {
      v41 = v91;
      v40 = v92;
      v42 = v90;
      v43 = v87;
      v44 = v88;

      sub_1ADDDC21C(v43, v44, v39, v42, v41, v40);

      sub_1ADFB6A38(v45);
      swift_beginAccess();
      sub_1ADDDC8DC(v41, v40);
      swift_endAccess();

      sub_1ADDCC35C(v35, v34);
      v29 = v93;
      if (!*(v93 + 2))
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1ADDCC35C(v35, v34);
      if (!*(v29 + 2))
      {
        goto LABEL_12;
      }
    }
  }

  v29 = sub_1ADF79A04(v29);
  v31 = *(v29 + 2);
  if (v31)
  {
    goto LABEL_6;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  v46 = v94;
LABEL_14:
  sub_1AE23C9AC();
  v47 = *(v46 + 16);
  v72 = v10;
  v71[1] = v29;
  v71[0] = v46;
  if (v47)
  {
    v48 = sub_1AE1941D0(v47, 0);
    v86 = sub_1AE03A790(&v87, v48 + 2, v47, v46);
    v49 = v87;

    sub_1ADDDCE74(v49);
    if (v86 != v47)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
LABEL_17:
    v48 = MEMORY[0x1E69E7CC0];
  }

  v87 = v48;
  sub_1ADEBD3F8(&v87);
  v80 = v87;
  v50 = *(v87 + 2);
  swift_beginAccess();
  v78 = v50;
  if (v50)
  {
    v51 = 0;
    v52 = (v80 + 40);
    while (v51 < *(v80 + 2))
    {
      v53 = *(v52 - 1);
      v54 = *v52;
      v55 = v79;
      sub_1ADECD9E8(v84 + v83, v79, type metadata accessor for PartiallyOrderedReferenceMap);
      v56 = *(v55 + *(v82 + 20));
      sub_1ADDD86D8(v53, v54);
      sub_1ADDD86D8(v53, v54);
      sub_1ADDDF7A8(v53, v54, v56, &v87);
      sub_1ADDCC35C(v53, v54);
      sub_1ADDD872C(v55, type metadata accessor for PartiallyOrderedReferenceMap);
      v57 = v89;
      if (!v89)
      {
        goto LABEL_25;
      }

      ++v51;
      v86 = v92;
      v85 = v91;
      v58 = v90;
      v59 = v87;
      v60 = v88;
      sub_1ADDD86D8(v53, v54);
      v61 = v81;
      sub_1AE1B1DC4(v53, v54, v81, v62);
      sub_1ADDCC35C(v53, v54);

      sub_1ADF65B3C(v61, v58);
      sub_1ADF65B3C(v61, v57);
      sub_1ADDDC21C(v59, v60, v57, v58, v85, v86);
      sub_1ADDCC35C(v53, v54);

      v52 += 2;
      if (v78 == v51)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_23:

    v63 = v74;
    v64 = v81;
    sub_1AE23C99C();
    sub_1ADDE5F54(&qword_1ED9664C0, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8]);
    v65 = v76;
    v66 = sub_1AE23C97C();
    v68 = v67;
    (*(v75 + 8))(v63, v65);
    sub_1AE03C8CC(v66, v68);
    v70 = v69;

    sub_1ADDCC6B4(v70);

    (*(v72 + 8))(v64, v77);
  }
}

uint64_t sub_1ADEAC8A8(uint64_t a1)
{
  if (sub_1ADEACB44(v1))
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    v3 = (v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    swift_beginAccess();
    v4 = *v3;
    v5 = v3[1];
    v22 = *v3;
    v6 = (a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    swift_beginAccess();
    v20 = *v6;
    v21 = v6[1];
    v7 = *(v21 + 16);

    if (v7)
    {
      sub_1ADDF8898(v23, v24, v25);
    }

    if (*(v5 + 16))
    {
      sub_1ADDF8898(v23, v24, v25);

      v4 = v22;
    }

    else
    {
    }

    sub_1ADF637A8(v5, v21);
    if (v17)
    {
      v15 = 1;
    }

    else
    {
      sub_1ADF637A8(v4, v20);
      v15 = v18;
    }

    goto LABEL_16;
  }

  v8 = (v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = (a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];

  sub_1ADF637A8(v10, v13);
  if ((v14 & 1) == 0)
  {
    sub_1ADF637A8(v9, v12);
    v15 = v16;

LABEL_16:

    return v15 & 1;
  }

  v15 = 1;
  return v15 & 1;
}

BOOL sub_1ADEACB44(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v4 = *(*(v3 + 8) + 16);
  if (v4)
  {
    v5 = a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
    swift_beginAccess();
    if (!*(*(v5 + 8) + 16) && *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) < *(a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration))
    {
      return 1;
    }
  }

  v7 = a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v8 = *(*(v7 + 8) + 16);
  if (v8)
  {
    v9 = v4 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    return *(a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) < *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration);
  }

  if (v4)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  return !v10 && *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) != *(a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration);
}

void sub_1ADEACC78(uint64_t a1@<X0>, void *a2@<X8>)
{
  v75 = a2;
  v4 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v75 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - v9;
  v131 = MEMORY[0x1E69E7CC8];
  v11 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v81 = v2;
  v77 = v11;
  sub_1ADECD9E8(v2 + v11, v10, type metadata accessor for PartiallyOrderedReferenceMap);
  v12 = (a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v4 + 20);
  v90 = v4;
  v16 = &v10[v15];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);

  sub_1ADEBE8DC(v20);
  v22 = v21;
  v76 = v10;
  sub_1ADDD872C(v10, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1ADECD850(&v132);
  *(&v128[5] + 8) = v137;
  *(&v128[6] + 8) = v138;
  *(&v128[7] + 8) = v139[0];
  *(&v128[8] + 3) = *(v139 + 11);
  *(&v128[1] + 8) = v133;
  *(&v128[2] + 8) = v134;
  *(&v128[3] + 8) = v135;
  *(&v128[4] + 8) = v136;
  *(v128 + 8) = v132;
  *&v126 = v17;
  *(&v126 + 1) = v18;
  *&v127 = v19;
  *(&v127 + 1) = v22;
  *&v128[0] = 0;
  *(&v128[9] + 1) = v13;
  *&v129 = v14;
  BYTE8(v129) = 0;
  v130 = 0;
  v82 = a1;
  v80 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1AE03163C(&v112);
  v23 = v114;
  if (!v114)
  {
LABEL_11:
    v122 = v128[8];
    v123 = v128[9];
    v124 = v129;
    v125 = v130;
    v118 = v128[4];
    v119 = v128[5];
    v120 = v128[6];
    v121 = v128[7];
    v114 = v128[0];
    v115 = v128[1];
    v116 = v128[2];
    v117 = v128[3];
    v112 = v126;
    v113 = v127;
    sub_1ADECD8C8(&v112);
    v37 = v76;
    sub_1ADECD9E8(v82 + v80, v76, type metadata accessor for PartiallyOrderedReferenceMap);
    v38 = (v81 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    swift_beginAccess();
    v39 = *v38;
    v40 = v38[1];
    v41 = (v37 + *(v90 + 20));
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];

    sub_1ADEBE8DC(v45);
    v47 = v46;
    sub_1ADDD872C(v37, type metadata accessor for PartiallyOrderedReferenceMap);
    *(&v109[5] + 8) = v137;
    *(&v109[6] + 8) = v138;
    *(&v109[7] + 8) = v139[0];
    *(&v109[8] + 3) = *(v139 + 11);
    *(&v109[1] + 8) = v133;
    *(&v109[2] + 8) = v134;
    *(&v109[3] + 8) = v135;
    *(&v109[4] + 8) = v136;
    *(v109 + 8) = v132;
    *&v107 = v42;
    *(&v107 + 1) = v43;
    *&v108 = v44;
    *(&v108 + 1) = v47;
    *&v109[0] = 0;
    *(&v109[9] + 1) = v39;
    *&v110 = v40;
    BYTE8(v110) = 0;
    v111 = 0;
    sub_1AE03163C(&v93);
    if (v95)
    {
      v48 = *(&v93 + 1);
      v49 = v93;
      v50 = v94;
      v51 = *(&v95 + 1);
      v52 = v96;
      do
      {
        v88 = v52;
        v89 = v51;
        v53 = v78;
        sub_1ADECD9E8(v81 + v77, v78, type metadata accessor for PartiallyOrderedReferenceMap);
        v54 = *(v53 + *(v90 + 20));
        sub_1ADDD86D8(v49, v48);
        sub_1ADDDF7A8(v49, v48, v54, &v93);
        sub_1ADDCC35C(v49, v48);
        sub_1ADDD872C(v53, type metadata accessor for PartiallyOrderedReferenceMap);
        if (v94)
        {
          v55 = v93;
          if (!v93)
          {
            goto LABEL_30;
          }

          v87 = v94;
          if (!v50)
          {
            goto LABEL_31;
          }

          v85 = v95;
          v86 = *(&v94 + 1);
          v83 = *(&v93 + 1);
          v84 = *(&v95 + 1);
          v56 = *(*v93 + 136);

          v56(&v93, v57);

          if (*(&v94 + 1))
          {
            sub_1ADDEE390(&v93, v92);
            v58 = v131;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v91 = v58;
            sub_1ADEBFD44(v92, v49, v48, isUniquelyReferenced_nonNull_native);

            sub_1ADDDC21C(v55, v83, v87, v86, v85, v84);
            sub_1ADDCC35C(v49, v48);
            v131 = v91;
          }

          else
          {
            sub_1ADDCEDE0(&v93, &qword_1EB5BAA00, &qword_1AE2587A0);
            sub_1ADEBF000(v49, v48, v92);
            sub_1ADDCC35C(v49, v48);

            sub_1ADDDC21C(v55, v83, v87, v86, v85, v84);
            sub_1ADDCEDE0(v92, &qword_1EB5BAA00, &qword_1AE2587A0);
          }
        }

        else
        {
          sub_1ADDCC35C(v49, v48);
        }

        sub_1AE03163C(&v93);
        v48 = *(&v93 + 1);
        v49 = v93;
        v50 = v94;
        v51 = *(&v95 + 1);
        v52 = v96;
      }

      while (v95);
    }

    v103 = v109[8];
    v104 = v109[9];
    v105 = v110;
    v106 = v111;
    v99 = v109[4];
    v100 = v109[5];
    v101 = v109[6];
    v102 = v109[7];
    v95 = v109[0];
    v96 = v109[1];
    v97 = v109[2];
    v98 = v109[3];
    v93 = v107;
    v94 = v108;
    sub_1ADECD8C8(&v93);
    v60 = v131;

    sub_1ADF7BBFC(v61, v62, v63);
    v64 = v82;
    sub_1ADEAD708(v65, v81);
    v67 = v66;
    v69 = v68;

    v70 = sub_1ADECB734(v67, v64);

    if (*(v70 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9F8, &qword_1AE245688);
      v71 = sub_1AE23DCDC();
    }

    else
    {
      v71 = MEMORY[0x1E69E7CC8];
    }

    *&v92[0] = v71;

    sub_1ADEC07E0(v72, 1, v92);

    v73 = *&v92[0];
    if (*(v60 + 16))
    {
    }

    else
    {

      v60 = 0;
      v73 = 0;
      v69 = 0;
    }

    v74 = v75;
    *v75 = v60;
    v74[1] = v73;
    v74[2] = v69;
    return;
  }

  v25 = *(&v112 + 1);
  v24 = v112;
  v26 = v113;
  v27 = *(&v114 + 1);
  v28 = v115;
  while (1)
  {
    v88 = v28;
    v89 = v27;
    v29 = v79;
    sub_1ADECD9E8(v82 + v80, v79, type metadata accessor for PartiallyOrderedReferenceMap);
    v30 = *(v29 + *(v90 + 20));
    sub_1ADDD86D8(v24, v25);
    sub_1ADDDF7A8(v24, v25, v30, &v112);
    sub_1ADDCC35C(v24, v25);
    sub_1ADDD872C(v29, type metadata accessor for PartiallyOrderedReferenceMap);
    v31 = v113;
    if (!v113)
    {
      sub_1ADDCC35C(v24, v25);

      goto LABEL_4;
    }

    if (!v26)
    {
      break;
    }

    v87 = v23;
    v32 = v112;
    if (!v112)
    {
      goto LABEL_29;
    }

    v85 = v114;
    v86 = *(&v113 + 1);
    v83 = *(&v112 + 1);
    v84 = *(&v114 + 1);
    v33 = *(*v26 + 136);

    v33(&v112, v34);

    if (*(&v113 + 1))
    {
      sub_1ADDEE390(&v112, &v107);
      v35 = v131;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      *&v93 = v35;
      sub_1ADEBFD44(&v107, v24, v25, v36);
      sub_1ADDDC21C(v32, v83, v31, v86, v85, v84);

      sub_1ADDCC35C(v24, v25);
      v131 = v93;
    }

    else
    {
      sub_1ADDCEDE0(&v112, &qword_1EB5BAA00, &qword_1AE2587A0);
      sub_1ADEBF000(v24, v25, &v107);
      sub_1ADDCC35C(v24, v25);
      sub_1ADDDC21C(v32, v83, v31, v86, v85, v84);

      sub_1ADDCEDE0(&v107, &qword_1EB5BAA00, &qword_1AE2587A0);
    }

LABEL_4:
    sub_1AE03163C(&v112);
    v25 = *(&v112 + 1);
    v24 = v112;
    v26 = v113;
    v27 = *(&v114 + 1);
    v23 = v114;
    v28 = v115;
    if (!v114)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void sub_1ADEAD708(uint64_t a1, uint64_t a2)
{
  v90 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v90);
  v84 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v80 - v8;

  v11 = sub_1ADECC810(v10, a2);
  v81 = v3;
  v97 = a2;

  v106 = v11;
  v104 = a1;
  v105 = MEMORY[0x1E69E7CD0];
  v12 = *(a1 + 16);
  if (v12)
  {
    v85 = sub_1AE1941D0(*(a1 + 16), 0);
    v96 = sub_1AE03A790(&v98, v85 + 2, v12, a1);
    v13 = v98;
    swift_bridgeObjectRetain_n();
    sub_1ADDDCE74(v13);
    if (v96 != v12)
    {
      goto LABEL_52;
    }

    v14 = v85;
    if (!*(v85 + 2))
    {
      goto LABEL_48;
    }
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_48:

      return;
    }
  }

  v89 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  v92 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v15 = 0;
  v16 = *(v14 + 2);
  v83 = v2;
  v82 = v9;
  while (1)
  {
    if (v15 >= v16)
    {
      goto LABEL_51;
    }

    v91 = v15;
    v17 = &v14[16 * v15];
    v18 = *(v17 + 4);
    v19 = *(v17 + 5);
    sub_1ADECD9E8(v2 + v92, v9, type metadata accessor for PartiallyOrderedReferenceMap);
    v20 = *&v9[*(v90 + 20)];
    sub_1ADDD86D8(v18, v19);
    sub_1ADDDF7A8(v18, v19, v20, &v98);
    sub_1ADDD872C(v9, type metadata accessor for PartiallyOrderedReferenceMap);
    v21 = v100;
    if (v100)
    {
      break;
    }

    v79 = v18;
LABEL_47:
    sub_1ADDCC35C(v79, v19);
LABEL_8:
    v15 = v91 + 1;
    v16 = *(v14 + 2);
    if (v91 + 1 >= v16)
    {
      goto LABEL_48;
    }
  }

  v96 = v18;
  v23 = v102;
  v22 = v103;
  v24 = v101;
  v25 = v98;
  v26 = v99;

  sub_1ADDDC21C(v27, v26, v21, v24, v23, v22);
  if (!v25)
  {
    v79 = v96;
    goto LABEL_47;
  }

  v85 = v14;
  v28 = type metadata accessor for RetainVisitor();
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v32 = sub_1ADDD9ECC(v30);
  *(v29 + 16) = v31;
  *(v29 + 24) = v32;
  v101 = v28;
  v102 = &off_1F23C4550;
  v98 = v29;
  v33 = *(*v25 + 128);

  v33(&v98);

  __swift_destroy_boxed_opaque_existential_1(&v98);
  swift_beginAccess();
  v34 = *(v29 + 16);
  v35 = *(v29 + 24);

  v94 = v35;

  v37 = v34 + 64;
  v36 = *(v34 + 64);
  v93 = v34;
  v38 = 1 << *(v34 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & v36;
  swift_beginAccess();
  v41 = 0;
  v42 = (v38 + 63) >> 6;
  v95 = v19;
  while (v40)
  {
    v43 = v41;
LABEL_22:
    v44 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v45 = (*(v93 + 48) + ((v43 << 10) | (16 * v44)));
    v46 = *v45;
    v47 = v45[1];
    sub_1ADDD86D8(*v45, v47);
    sub_1ADDD86D8(v46, v47);
    v48 = sub_1ADDE0110(&v98, v46, v47);
    sub_1ADDCC35C(v98, v99);
    if (v48)
    {
      v49 = v84;
      sub_1ADECD9E8(v97 + v92, v84, type metadata accessor for PartiallyOrderedReferenceMap);
      sub_1ADDDF7A8(v46, v47, *(v49 + *(v90 + 20)), &v98);
      sub_1ADDD872C(v49, type metadata accessor for PartiallyOrderedReferenceMap);
      v50 = v100;
      if (v100)
      {
        v88 = v103;
        v87 = v102;
        v86 = v101;
        v51 = v98;
        v52 = v99;
        sub_1ADDCC35C(v46, v47);
        v53 = v52;
        v19 = v95;
        sub_1ADDDC21C(v51, v53, v50, v86, v87, v88);
        v41 = v43;
      }

      else
      {
        sub_1ADDD86D8(v46, v47);
        sub_1ADDE0110(&v98, v46, v47);
        sub_1ADDCC35C(v98, v99);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1ADE5534C(0, *(v85 + 2) + 1, 1, v85);
        }

        v55 = *(v85 + 2);
        v54 = *(v85 + 3);
        if (v55 >= v54 >> 1)
        {
          v85 = sub_1ADE5534C((v54 > 1), v55 + 1, 1, v85);
        }

        v56 = v85;
        *(v85 + 2) = v55 + 1;
        v57 = &v56[16 * v55];
        *(v57 + 4) = v46;
        *(v57 + 5) = v47;
        v41 = v43;
      }
    }

    else
    {
      sub_1ADDCC35C(v46, v47);
      v41 = v43;
    }
  }

  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v42)
    {

      v58 = 0;
      v59 = v94 + 64;
      v60 = 1 << *(v94 + 32);
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      else
      {
        v61 = -1;
      }

      v62 = v61 & *(v94 + 64);
      v63 = (v60 + 63) >> 6;
      v64 = v96;
      if (v62)
      {
        goto LABEL_38;
      }

      while (1)
      {
        do
        {
          v65 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_50;
          }

          if (v65 >= v63)
          {
            sub_1ADDCC35C(v64, v19);

            v2 = v83;
            v9 = v82;
            v14 = v85;
            goto LABEL_8;
          }

          v62 = *(v59 + 8 * v65);
          ++v58;
        }

        while (!v62);
        v58 = v65;
        do
        {
LABEL_38:
          v66 = __clz(__rbit64(v62));
          v62 &= v62 - 1;
          v67 = (v58 << 10) | (16 * v66);
          v68 = (*(v94 + 48) + v67);
          v70 = *v68;
          v69 = v68[1];
          v71 = *(*(v94 + 56) + v67);
          v72 = v97;
          v73 = v89;
          swift_beginAccess();
          v74 = *(v72 + v73);
          v75 = *(v74 + 16);
          sub_1ADDD86D8(v70, v69);

          if (v75 && (v76 = sub_1ADDDE7CC(v70, v69), (v77 & 1) != 0) && (v78 = *(*(v74 + 56) + 16 * v76), , v78))
          {
            swift_endAccess();
            sub_1ADDCC35C(v70, v69);
          }

          else
          {
            swift_endAccess();

            sub_1ADEC1658(&v98, v71);
            sub_1ADDCC35C(v70, v69);
          }

          v19 = v95;
          v64 = v96;
        }

        while (v62);
      }
    }

    v40 = *(v37 + 8 * v43);
    ++v41;
    if (v40)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_1ADEADF58(char a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5 + 16;
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v11 = v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v12 = *(v11 + 1);
  v24[0] = MEMORY[0x1E69E7CC8];
  v24[1] = v12;

  sub_1ADDE1CB8(v24);

  v13 = *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
  if (a1)
  {
    v14 = qword_1ED967EE8;

    if (v14 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v15 = sub_1AE1FEFC0(&dword_1ED96F1F8, v13);
    os_unfair_lock_unlock(&dword_1ED96F1F8);
  }

  else
  {
    v16 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
    swift_beginAccess();
    (*(v8 + 16))(v10, v13 + v16, v7);
    type metadata accessor for ReplicaState(0);
    v15 = swift_allocObject();
    v17 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    v18 = type metadata accessor for Replica(0);
    v19 = *(*(v18 - 8) + 56);
    v23 = v3;
    v19(v15 + v17, 1, 1, v18);
    (*(v8 + 32))(v15 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v10, v7);
    *(v15 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
    *(v15 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
    v19(v6, 1, 1, v18);
    swift_beginAccess();
    sub_1ADDD85E4(v6, v15 + v17);
    swift_endAccess();
  }

  swift_allocObject();

  v21 = sub_1ADDE1CF0(v20, v15);

  return v21;
}

void sub_1ADEAE30C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x1E8uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[52] = a3;
  v11[53] = v5;
  v13 = *(a3 - 8);
  v11[54] = v13;
  if (v10)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v16 = *a2;
  v17 = a2[1];
  *(v12 + 440) = v14;
  *(v12 + 448) = v16;
  *(v12 + 456) = v17;
  *(v12 + 368) = v16;
  *(v12 + 376) = v17;
  v18 = type metadata accessor for Ref(0, a3, a4, v15);
  *(v12 + 464) = v18;
  WitnessTable = swift_getWitnessTable();
  *(v12 + 472) = WitnessTable;
  Reference.identity.getter(v18, WitnessTable);
  v20 = *(v12 + 384);
  v21 = *(v12 + 392);
  v22 = v5 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v23 = (v22 + *(type metadata accessor for PartiallyOrderedReferenceMap(0) + 20));
  ++v23[2];
  sub_1AE23E31C();
  sub_1AE23BECC();
  v24 = sub_1AE23E34C();
  v25 = *v23;
  swift_beginAccess();
  v26 = *(v25 + 16) != 0;
  *v12 = v20;
  *(v12 + 8) = v21;
  sub_1ADDD86D8(v20, v21);
  sub_1ADDDC21C(0, 0, 0, 0, 0, 0);
  *(v12 + 16) = 0u;
  v27 = (v12 + 16);
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = v24;
  *(v12 + 72) = 0;
  *(v12 + 80) = v25;
  *(v12 + 88) = 0;
  *(v12 + 92) = 0;
  *(v12 + 93) = v26;
  *(v12 + 94) = 0;
  sub_1ADDDD688(v12);
  if (!*(v12 + 32))
  {
    __break(1u);
    goto LABEL_13;
  }

  v28 = *v27;
  if (!*v27)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = (*(*v28 + 168))();

    *v27 = v29;
    v28 = v29;
  }

  v30 = type metadata accessor for CRDTBox();
  *(v12 + 480) = v30;
  *(v12 + 216) = v30;
  *(v12 + 224) = &off_1F23C9908;
  *(v12 + 192) = v28;

  sub_1ADDDD94C(v23, v12);
  v31 = *(v12 + 48);
  *(v12 + 128) = *(v12 + 32);
  *(v12 + 144) = v31;
  *(v12 + 160) = *(v12 + 64);
  *(v12 + 175) = *(v12 + 79);
  v32 = *(v12 + 16);
  *(v12 + 96) = *v12;
  *(v12 + 112) = v32;
  sub_1ADDCEDE0(v12 + 96, &qword_1EB5BA960, &qword_1AE2455E0);
  swift_endAccess();
  sub_1ADDCC35C(v20, v21);
  (*(*v28 + 248))();
  swift_dynamicCast();
}

void sub_1ADEAE67C(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[55];
    (*(v2[54] + 8))(v3, v2[52]);
  }

  else
  {
    v4 = v2[60];
    v11 = v2[59];
    v6 = v2[57];
    v5 = v2[58];
    v3 = v2[55];
    v7 = v2[56];
    v8 = v2[54];
    v9 = v2[52];
    __swift_project_boxed_opaque_existential_1(v2 + 24, v4);
    v2[36] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 33);
    (*(v8 + 16))(boxed_opaque_existential_1, v3, v9);
    off_1F23C9918(v2 + 33, v4);
    __swift_destroy_boxed_opaque_existential_1(v2 + 33);
    v2[50] = v7;
    v2[51] = v6;
    Reference.identity.getter(v5, v11);
    swift_beginAccess();
    sub_1ADDE0110(v12, v12[2], v12[3]);
    swift_endAccess();
    sub_1ADDCC35C(v12[0], v12[1]);
    (*(v8 + 8))(v3, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + 24);
  free(v3);

  free(v2);
}

uint64_t sub_1ADEAE800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v15 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v4 + v15, v12, type metadata accessor for PartiallyOrderedReferenceMap);
  v38 = v14;
  v39 = v13;
  v17 = type metadata accessor for WeakRef(0, a2, a3, v16);
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v17, WitnessTable);
  v19 = v36;
  v20 = v37;
  sub_1ADDDF7A8(v36, v37, *&v12[*(v10 + 28)], v31);
  sub_1ADDCC35C(v19, v20);
  sub_1ADDD872C(v12, type metadata accessor for PartiallyOrderedReferenceMap);
  v21 = v32;
  if (!v32)
  {
    memset(v40, 0, sizeof(v40));
    goto LABEL_5;
  }

  v23 = v34;
  v22 = v35;
  v24 = v33;
  v25 = v31[0];
  v26 = v31[1];

  result = sub_1ADDDC21C(v27, v26, v21, v24, v23, v22);
  if (v25)
  {
    (*(*v25 + 88))(v40, result);

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
    v29 = swift_dynamicCast();
    return (*(*(a2 - 8) + 56))(a4, v29 ^ 1u, 1, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADEAEA50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = a4;
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = *a2;
  v20 = a2[1];
  (*(v8 + 16))(v10, a1, v7, v16);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    v21 = *(v8 + 8);
    v21(a1, v7);
    sub_1ADDCC35C(v19, v20);
    return (v21)(v10, v7);
  }

  else
  {
    v34 = v7;
    v36 = a1;
    (*(v11 + 32))(v18, v10, a3);
    v23 = *(v11 + 16);
    v35 = v18;
    v23(v14, v18, a3);
    v24 = WitnessTable;
    sub_1ADDD9FE4(v14, a3, v39);
    v37 = v39[0];
    v45 = v19;
    v46 = v20;
    v26 = type metadata accessor for WeakRef(0, a3, v24, v25);
    WitnessTable = swift_getWitnessTable();
    Reference.identity.getter(v26, WitnessTable);
    v27 = v43;
    v28 = v44;
    swift_beginAccess();
    v40 = v27;
    v41 = v28;
    v30 = sub_1ADDDD4A0(v39, &v40);
    if (v29[2])
    {
      *v29 = v37;

      (v30)(v39, 0);
      swift_endAccess();

      sub_1ADDCC35C(v40, v41);
    }

    else
    {
      (v30)(v39, 0);
      sub_1ADDCC35C(v40, v41);
      swift_endAccess();
    }

    v31 = v34;
    v45 = v19;
    v46 = v20;
    Reference.identity.getter(v26, WitnessTable);
    sub_1ADDCC35C(v19, v20);
    v32 = v43;
    v33 = v44;
    swift_beginAccess();
    sub_1ADDE0110(v42, v32, v33);
    swift_endAccess();

    (*(v8 + 8))(v36, v31);
    sub_1ADDCC35C(v42[0], v42[1]);
    return (*(v11 + 8))(v35, a3);
  }
}

void sub_1ADEAEE48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[4];
  type metadata accessor for TypedReference(0, a2, a3, a4);
  v11.n128_u64[0] = v4;
  v11.n128_u64[1] = v5;
  sub_1ADF97074(&v11);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA38, &unk_1AE2456C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2455D0;
  *(inited + 32) = v8;

  sub_1ADDD86D8(v4, v5);
  v10 = sub_1ADF7E8E4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v6)
  {
    sub_1ADEAEF54(v6, 0, 0, v10, &v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ADEAEF54@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v6 = v5;
  v71 = a4;
  v69 = a3;
  v68 = a2;
  v72 = a5;
  v66 = sub_1AE23C88C();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1AE23C8CC();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v56 - v15;
  v59 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v20 = sub_1ADEACB44(a1);
  v73 = v19;
  if (v20)
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    v21 = aBlock;
    v22 = v76;
    v23 = v77;
    v24 = a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
    swift_beginAccess();
    if (*(*(v24 + 8) + 16))
    {
      a1 = sub_1ADEADF58(0);
      sub_1ADEB0918(v21, v22, v23, 0);
    }

    else
    {
    }

    v25 = v6 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
    swift_beginAccess();
    if (*(*(v25 + 8) + 16))
    {
      sub_1ADEB0918(v21, v22, v23, 0);
    }
  }

  else
  {
  }

  v26 = *(a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
  v27 = qword_1ED967EE8;

  if (v27 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  v28 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  swift_beginAccess();
  sub_1ADDCEE40(v26 + v28, v73, &unk_1EB5B9E70, &unk_1AE240EC0);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v29 = OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState;

  os_unfair_lock_lock(&dword_1ED96F1F8);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v30 = v6 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v31 = *(v30 + 8);

  v32 = sub_1ADEB1ADC(&aBlock, a1, v68, v69, v71);
  LODWORD(v69) = aBlock;
  LODWORD(v68) = BYTE1(aBlock);
  v67 = BYTE2(aBlock);
  swift_beginAccess();
  sub_1AE00F014(v32);
  swift_endAccess();

  os_unfair_lock_lock(&dword_1ED96F1F8);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v33 = *(v30 + 8);
  v34 = qword_1ED96B308;

  if (v34 != -1)
  {
    swift_once();
  }

  v71 = a1;
  v35 = qword_1ED96F2F8;
  v36 = *(v6 + v29);

  os_unfair_lock_lock(&dword_1ED96F1F8);
  v37 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  swift_beginAccess();
  v38 = v70;
  sub_1ADDCEE40(v36 + v37, v70, &unk_1EB5B9E70, &unk_1AE240EC0);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  if (*(v31 + 16) || *(v33 + 16))
  {
    v56 = *(v35 + 40);
    v39 = v57;
    sub_1ADDCEE40(v38, v57, &unk_1EB5B9E70, &unk_1AE240EC0);
    v40 = v60;
    sub_1ADDCEE40(v73, v60, &unk_1EB5B9E70, &unk_1AE240EC0);
    v41 = *(v58 + 80);
    v42 = (v41 + 56) & ~v41;
    v43 = (v59 + v41 + v42) & ~v41;
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E7CC8];
    v44[2] = MEMORY[0x1E69E7CC8];
    v44[3] = v31;
    v44[4] = v45;
    v44[5] = v33;
    v44[6] = v35;
    sub_1ADECD978(v39, v44 + v42);
    sub_1ADECD978(v40, v44 + v43);
    v79 = sub_1ADE4315C;
    v80 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1ADDD2200;
    v78 = &block_descriptor_30;
    v46 = _Block_copy(&aBlock);
    swift_bridgeObjectRetain_n();

    v47 = v38;
    v48 = v61;
    sub_1AE23C8AC();
    v74 = MEMORY[0x1E69E7CC0];
    sub_1ADDE5F54(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0, MEMORY[0x1E69E6328]);
    v49 = v63;
    v50 = v66;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v48, v49, v46);
    v51 = v73;
    _Block_release(v46);

    swift_bridgeObjectRelease_n();
    (*(v65 + 8))(v49, v50);
    (*(v62 + 8))(v48, v64);
    sub_1ADDCEDE0(v47, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_1ADDCEDE0(v38, &unk_1EB5B9E70, &unk_1AE240EC0);
    v51 = v73;
  }

  v52 = sub_1ADDD9D48(MEMORY[0x1E69E7CC0]);

  sub_1ADDCEDE0(v51, &unk_1EB5B9E70, &unk_1AE240EC0);
  v53 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
  swift_beginAccess();
  *(v6 + v53) = v52;

  v55 = v72;
  *v72 = v69;
  v55[1] = v68;
  v55[2] = v67;
  return result;
}

void sub_1ADEAF914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedReference(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v11 = *(a5 + 48);
  v11(&v25, a3, a5);
  v24 = v25;
  sub_1ADF97074(&v24);
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA38, &unk_1AE2456C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2455D0;
  *(inited + 32) = v13;

  v15 = sub_1ADF7E8E4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1AE2418F0;
  (v11)(a3, a5);
  v19 = sub_1ADF7E6A4(v16, v17, v18);
  swift_setDeallocating();
  sub_1ADECDAB4(v16 + 32);
  sub_1ADF99278(v19, v23);
  v21 = v20;

  if (v7)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    sub_1ADEAEF54(v7, sub_1ADECDBD8, v22, v15, &v25);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADEAFB4C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 32);
  v11 = type metadata accessor for TypedRefVisitor();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CD0];
  v13 = *a1;
  v26 = a1[1];
  v25 = v13;
  v27 = v10;
  v15 = type metadata accessor for Capsule(0, a2, a3, v14);
  Capsule.root.getter(v15, v16, v17, v18, v19);
  v24[3] = v11;
  v24[4] = &off_1F23C45A0;
  v24[0] = v12;
  v20 = *(a3 + 16);
  v21 = *(v20 + 48);

  v21(v24, a2, v20);
  (*(v6 + 8))(v8, a2);
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (v10)
  {
    swift_beginAccess();
    v22 = *(v12 + 16);

    sub_1ADEAEF54(v10, 0, 0, v22, v24);
  }

  else
  {
    __break(1u);
  }
}

double sub_1ADEAFD1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v8;
  v10 = v8[1];
  (*(v11 + 16))(v7, v12, v5);
  sub_1ADDD9FE4(v7, a2, &v16);
  v14[1] = v10;
  v15 = v16;
  v14[0] = v9;
  sub_1ADEAAF7C(&v15, v14, a3);

  return result;
}

void sub_1ADEAFE28(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  v34 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a1;
  v11 = *a2;
  v12 = a2[1];
  v13 = *a2;
  v14 = v12;
  if (v12 >> 60 == 15)
  {
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    *&v40 = sub_1ADDCC6B4(&unk_1F23BBEF0);
    *(&v40 + 1) = v15;
    v16 = sub_1ADDD8E0C(v40);
    v18 = v17;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v16, v18);
    (*(v8 + 8))(v10, v7);
    v14 = *(&v40 + 1);
    v13 = v40;
  }

  v19 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v20 = v35;
  swift_beginAccess();
  sub_1ADECD9E8(v20 + v19, v6, type metadata accessor for PartiallyOrderedReferenceMap);
  v21 = *&v6[*(v34 + 20)];
  sub_1ADDD86D8(v13, v14);
  sub_1ADDE0F78(v11, v12);
  sub_1ADDDF7A8(v13, v14, v21, &v40);
  sub_1ADDCC35C(v13, v14);
  sub_1ADDD872C(v6, type metadata accessor for PartiallyOrderedReferenceMap);
  if (!v41)
  {
    v26 = v32;

    v27 = MEMORY[0x1E69E7CC0];
    v28 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v29 = sub_1ADDD9ECC(v27);
    sub_1ADDDA5BC(v27);
    sub_1ADDD9ECC(v27);

    v30 = MEMORY[0x1E69E7CC8];
    swift_bridgeObjectRelease_n();
    v40 = v26;
    v41 = v30;
    v42 = v30;
    v43 = v28;
    v44 = v29;
    v38 = v13;
    v39 = v14;
    swift_beginAccess();
    sub_1ADDD82B0(&v40, &v38);
    swift_endAccess();

LABEL_17:
    swift_beginAccess();
    sub_1ADDD86D8(v13, v14);
    sub_1ADDE0110(v37, v13, v14);
    swift_endAccess();
    sub_1ADDCC35C(v37[0], v37[1]);
    v31 = v33;
    *v33 = v13;
    v31[1] = v14;
    return;
  }

  sub_1ADDDC21C(v40, *(&v40 + 1), v41, v42, v43, v44);
  swift_beginAccess();
  v38 = v13;
  v39 = v14;
  sub_1ADDD86D8(v13, v14);
  v23 = sub_1ADDDD4A0(&v40, &v38);
  if (!v22[2])
  {
    (v23)(&v40, 0);
    sub_1ADDCC35C(v38, v39);
    swift_endAccess();
    goto LABEL_17;
  }

  v24 = v22;
  if (*v22)
  {
    v25 = v32;
    if (v32 == *v22)
    {
      if (qword_1ED9670C0 != -1)
      {
        swift_once();
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *v24 = (*(**v24 + 168))();
      }

      (*(**v24 + 96))(v36, v25);
    }

    (v23)(&v40, 0);
    swift_endAccess();
    sub_1ADDCC35C(v38, v39);
    goto LABEL_17;
  }

  __break(1u);
}

double sub_1ADEB03A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v34 = a1;
  v35 = a4;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v41.n128_u64[0] = sub_1ADDCC6B4(&unk_1F23BBF18);
  v41.n128_u64[1] = v14;
  v15 = sub_1ADDD8E0C(v41.n128_i64[0]);
  v17 = v16;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v15, v17);
  (*(v11 + 8))(v13, v10);
  v18 = v41;
  v19 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v4 + v19, v9, type metadata accessor for PartiallyOrderedReferenceMap);
  v20 = *&v9[*(v7 + 20)];
  sub_1ADDD86D8(v18.n128_i64[0], v18.n128_u64[1]);
  sub_1ADDDF7A8(v18.n128_i64[0], v18.n128_u64[1], v20, &v41);
  sub_1ADDCC35C(v18.n128_i64[0], v18.n128_u64[1]);
  sub_1ADDD872C(v9, type metadata accessor for PartiallyOrderedReferenceMap);
  if (v42)
  {
    sub_1ADDDC21C(v41.n128_i64[0], v41.n128_i64[1], v42, v43, v44, v45);
    swift_beginAccess();
    v40 = v18;
    sub_1ADDD86D8(v18.n128_i64[0], v18.n128_u64[1]);
    v22 = sub_1ADDDD4A0(&v41, &v40);
    if (v21[2])
    {
      v23 = v21;
      v24 = v36;
      (*(v33 + 16))(v6, v34, v36);
      sub_1ADDD9FE4(v6, v24, &v38);
      *v23 = v38;

      (v22)(&v41, 0);
      swift_endAccess();
      sub_1ADDCC35C(v40.n128_i64[0], v40.n128_u64[1]);
    }

    else
    {
      (v22)(&v41, 0);
      sub_1ADDCC35C(v40.n128_i64[0], v40.n128_u64[1]);
      swift_endAccess();
    }
  }

  else
  {
    v25 = v36;
    (*(v33 + 16))(v6, v34, v36);
    sub_1ADDD9FE4(v6, v25, &v41);
    v26 = v41.n128_u64[0];
    v27 = MEMORY[0x1E69E7CC0];
    v28 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v29 = sub_1ADDD9ECC(v27);
    sub_1ADDDA5BC(v27);
    sub_1ADDD9ECC(v27);

    v30 = MEMORY[0x1E69E7CC8];
    swift_bridgeObjectRelease_n();
    v41 = v26;
    v42 = v30;
    v43 = v30;
    v44 = v28;
    v45 = v29;
    v40 = v18;
    swift_beginAccess();
    sub_1ADDD82B0(&v41, &v40);
    swift_endAccess();
  }

  swift_beginAccess();
  sub_1ADDD86D8(v18.n128_i64[0], v18.n128_u64[1]);
  sub_1ADDE0110(v39, v18.n128_i64[0], v18.n128_u64[1]);
  swift_endAccess();
  sub_1ADDCC35C(v39[0], v39[1]);
  v41 = v18;
  *&result = WeakRef.init(id:)(&v41, v35).n128_u64[0];
  return result;
}

void sub_1ADEB0918(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_1AE23C88C();
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1AE23C8CC();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  MEMORY[0x1EEE9AC00](v22);
  if (*(a3 + 16))
  {
    v51 = v10;
    v25 = v5 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
    if (a4)
    {
      swift_beginAccess();
      sub_1ADDF8898(a1, a2 & 1, a3);
      swift_endAccess();
      swift_beginAccess();
      sub_1ADDFBCE8(a1, a2 & 1, a3);
      swift_endAccess();
      *(v5 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = a1;
    }

    else
    {
      v48 = v24;
      v50 = &v47 - v23;
      swift_beginAccess();
      v26 = *(v25 + 8);
      swift_beginAccess();
      v49 = v26;

      sub_1ADDF8898(a1, a2 & 1, a3);
      swift_endAccess();
      swift_beginAccess();
      sub_1ADDFBCE8(a1, a2 & 1, a3);
      swift_endAccess();
      *(v5 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = a1;
      v27 = *(v25 + 8);
      v28 = qword_1ED96B308;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = qword_1ED96F2F8;
      v30 = *(v5 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
      v31 = qword_1ED967EE8;

      if (v31 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1ED96F1F8);
      v32 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
      swift_beginAccess();
      v33 = v30 + v32;
      v34 = v50;
      sub_1ADDCEE40(v33, v50, &unk_1EB5B9E70, &unk_1AE240EC0);
      os_unfair_lock_unlock(&dword_1ED96F1F8);

      v35 = type metadata accessor for Replica(0);
      (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
      v36 = v49;
      if (*(v49 + 16) || *(v27 + 16))
      {
        v47 = *(v29 + 40);
        sub_1ADDCEE40(v34, v18, &unk_1EB5B9E70, &unk_1AE240EC0);
        sub_1ADDCEE40(v21, v15, &unk_1EB5B9E70, &unk_1AE240EC0);
        v37 = *(v48 + 80);
        v38 = (v37 + 56) & ~v37;
        v39 = (v14 + v37 + v38) & ~v37;
        v40 = v27;
        v41 = swift_allocObject();
        v42 = MEMORY[0x1E69E7CC8];
        v41[2] = MEMORY[0x1E69E7CC8];
        v41[3] = v36;
        v41[4] = v42;
        v41[5] = v40;
        v41[6] = v29;
        sub_1ADECD978(v18, v41 + v38);
        sub_1ADECD978(v15, v41 + v39);
        aBlock[4] = sub_1ADE4315C;
        aBlock[5] = v41;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1ADDD2200;
        aBlock[3] = &block_descriptor_21;
        v43 = _Block_copy(aBlock);
        swift_bridgeObjectRetain_n();

        v44 = v52;
        sub_1AE23C8AC();
        v57 = MEMORY[0x1E69E7CC0];
        sub_1ADDE5F54(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
        sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0, MEMORY[0x1E69E6328]);
        v45 = v54;
        v46 = v51;
        sub_1AE23D8DC();
        MEMORY[0x1B26FBF60](0, v44, v45, v43);
        _Block_release(v43);

        swift_bridgeObjectRelease_n();
        (*(v56 + 8))(v45, v46);
        (*(v53 + 8))(v44, v55);
        sub_1ADDCEDE0(v21, &unk_1EB5B9E70, &unk_1AE240EC0);
        sub_1ADDCEDE0(v50, &unk_1EB5B9E70, &unk_1AE240EC0);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        sub_1ADDCEDE0(v21, &unk_1EB5B9E70, &unk_1AE240EC0);
        sub_1ADDCEDE0(v34, &unk_1EB5B9E70, &unk_1AE240EC0);
      }
    }
  }
}

uint64_t sub_1ADEB10CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *)@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v70 = a6;
  v9 = v8;
  v67 = a4;
  v68 = a5;
  v58 = a2;
  v65 = a8;
  v13 = *v8;
  v14 = sub_1AE23C88C();
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v61 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1AE23C8CC();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v55 = *(v17 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v57 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v56 = v54 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v66 = v54 - v22;
  v23 = OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState;
  v24 = qword_1ED967EE8;

  if (v24 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v25 = v9 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v26 = *(v25 + 1);
  v27 = sub_1ADDE5F54(&qword_1EB5BA9D8, type metadata accessor for CapsuleRef, &unk_1AE245614);

  v28 = v27;
  v29 = v69;
  v30 = sub_1ADF9975C(aBlock, a1, a3, v67, v68, v13, v70, v28, a7);
  if (v29)
  {
  }

  else
  {
    v70 = 0;
    LODWORD(v69) = LOBYTE(aBlock[0]);
    LODWORD(v68) = BYTE1(aBlock[0]);
    LODWORD(v67) = BYTE2(aBlock[0]);
    v32 = v30;
    swift_beginAccess();
    sub_1AE00F014(v32);
    swift_endAccess();

    os_unfair_lock_lock(&dword_1ED96F1F8);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    v33 = *(v25 + 1);
    v34 = qword_1ED96B308;

    if (v34 != -1)
    {
      swift_once();
    }

    v35 = qword_1ED96F2F8;
    v36 = *(v9 + v23);

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v37 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    swift_beginAccess();
    v38 = v66;
    sub_1ADDCEE40(v36 + v37, v66, &unk_1EB5B9E70, &unk_1AE240EC0);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    if (*(v26 + 16) || *(v33 + 16))
    {
      v54[2] = *(v35 + 40);
      v39 = v38;
      v40 = v56;
      sub_1ADDCEE40(v39, v56, &unk_1EB5B9E70, &unk_1AE240EC0);
      v41 = v57;
      sub_1ADDCEE40(v58, v57, &unk_1EB5B9E70, &unk_1AE240EC0);
      v42 = *(v55 + 80);
      v43 = (v42 + 56) & ~v42;
      v44 = (v18 + v42 + v43) & ~v42;
      v45 = swift_allocObject();
      v46 = MEMORY[0x1E69E7CC8];
      v45[2] = MEMORY[0x1E69E7CC8];
      v45[3] = v26;
      v45[4] = v46;
      v45[5] = v33;
      v54[1] = v33;
      v45[6] = v35;
      sub_1ADECD978(v40, v45 + v43);
      sub_1ADECD978(v41, v45 + v44);
      aBlock[4] = sub_1ADE42B98;
      aBlock[5] = v45;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1ADDD2200;
      aBlock[3] = &block_descriptor_3;
      v47 = _Block_copy(aBlock);
      swift_bridgeObjectRetain_n();

      v48 = v59;
      sub_1AE23C8AC();
      v72 = MEMORY[0x1E69E7CC0];
      sub_1ADDE5F54(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
      sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0, MEMORY[0x1E69E6328]);
      v49 = v61;
      v50 = v64;
      sub_1AE23D8DC();
      MEMORY[0x1B26FBF60](0, v48, v49, v47);
      _Block_release(v47);

      swift_bridgeObjectRelease_n();
      (*(v63 + 8))(v49, v50);
      (*(v60 + 8))(v48, v62);
      sub_1ADDCEDE0(v66, &unk_1EB5B9E70, &unk_1AE240EC0);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_1ADDCEDE0(v38, &unk_1EB5B9E70, &unk_1AE240EC0);
    }

    v51 = sub_1ADDD9D48(MEMORY[0x1E69E7CC0]);
    v52 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
    swift_beginAccess();
    *(v9 + v52) = v51;

    v53 = v65;
    *v65 = v69;
    v53[1] = v68;
    v53[2] = v67;
  }

  return result;
}

uint64_t sub_1ADEB18E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = v3 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  if (*(*(v10 + 8) + 16))
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    if (*(*(v10 + 8) + 16))
    {
      sub_1ADEB0918(v13, v14, v15, 0);
    }
  }

  v11 = type metadata accessor for Replica(0);
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1ADEB10CC(a1, v9, 0, 0, 0, a2, a3, &v13);
  return sub_1ADDCEDE0(v9, &unk_1EB5B9E70, &unk_1AE240EC0);
}

uint64_t sub_1ADEB1ADC(_WORD *a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v239 = a5;
  v252 = a4;
  v277 = a3;
  v213 = a1;
  v210 = sub_1AE23BFEC();
  v212 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v209 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v249);
  v232 = &v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v222 = &v209 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v223 = &v209 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v241 = &v209 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v224 = &v209 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v225 = &v209 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v242 = &v209 - v20;
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CD0];
  v221 = v21;
  *(v21 + 16) = MEMORY[0x1E69E7CD0];
  v23 = v22;
  v235 = (v21 + 16);
  v24 = swift_allocObject();
  v219 = v24;
  *(v24 + 16) = v23;
  v251 = v24 + 16;
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E7CC8];
  v220 = v25;
  *(v25 + 16) = MEMORY[0x1E69E7CC8];
  v234 = (v25 + 16);
  v27 = swift_allocObject();
  v238 = v27;
  *(v27 + 16) = v26;
  v233 = (v27 + 16);
  v28 = (a2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  v31 = v5;
  v32 = (v5 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v33 = *v32;
  v214 = v32;
  v34 = v32[1];
  v211 = v32 + 1;
  *&v260 = v33;
  *(&v260 + 1) = v34;
  v217 = v30;

  v216 = v29;

  v244 = a2;
  v35 = sub_1ADEB86C4(&v260);
  v36 = v31;

  v37 = swift_allocObject();
  v218 = v37;
  *(v37 + 16) = MEMORY[0x1E69E7CD0];
  v215 = (v37 + 16);
  v38 = *v28;
  v39 = v28[1];
  *&v260 = v38;
  *(&v260 + 1) = v39;

  v247 = sub_1ADEB86C4(&v260);

  v40 = swift_allocObject();
  if (qword_1ED9670C0 != -1)
  {
    goto LABEL_151;
  }

  while (1)
  {
    v41 = byte_1ED96F222;
    *(v40 + 16) = word_1ED96F220;
    v243 = v40;
    *(v40 + 18) = v41;
    v42 = *(v35 + 16);
    v250 = v36;
    v43 = v35;
    v246 = v35;
    v35 = v247;
    v44 = v252;
    v36 = v277;
    v248 = v42;
    if (!v42)
    {
      break;
    }

    v45 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;

    v245 = v45;
    swift_beginAccess();
    v40 = swift_beginAccess();
    v46 = 0;
    while (v46 < *(v43 + 16))
    {
      v47 = v43 + 16 * v46;
      v48 = *(v47 + 32);
      v49 = *(v47 + 40);
      v253 = v48;
      if (v36)
      {
        v260 = v48;
        v50 = v48;
        sub_1ADDD86D8(v48, v49);
        sub_1ADE74334(v36, v44);
        v51 = v36;
        v52 = (v36)(&v260);
        sub_1ADDDCE80(v51, v44);
        if ((v52 & 1) == 0)
        {
          sub_1ADDCC35C(v50, v49);
          goto LABEL_31;
        }
      }

      else
      {
        sub_1ADDD86D8(v48, v49);
      }

      swift_beginAccess();
      v53 = v253;
      sub_1ADDD86D8(v253, v49);
      v54 = sub_1ADDE0110(&v254, v53, v49);
      swift_endAccess();
      sub_1ADDCC35C(v254, v255);
      if ((v54 & 1) != 0 && (v55 = v242, sub_1ADECD9E8(v250 + v245, v242, type metadata accessor for PartiallyOrderedReferenceMap), sub_1ADDDF7A8(v53, v49, *(v55 + *(v249 + 20)), &v260), sub_1ADDD872C(v55, type metadata accessor for PartiallyOrderedReferenceMap), (v56 = v261) != 0))
      {
        v58 = v263;
        v57 = v264;
        v59 = v262;
        v60 = v260;

        sub_1ADDDC21C(v61, *(&v60 + 1), v56, v59, v58, v57);
        if (v60)
        {

          sub_1ADEB6B04(v53, v49, v60, sub_1ADEB7364, &v260);

          v62 = v260;
          v35 = v247;
          if (v260)
          {
            v63 = *(&v260 + 1);
            v237 = v261;
            v64 = v234;
            swift_beginAccess();
            sub_1ADDD86D8(v53, v49);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v254 = *v64;
            v229 = v60;
            sub_1ADEBFB8C(v60, v62, v53, v49, isUniquelyReferenced_nonNull_native);
            sub_1ADDCC35C(v53, v49);
            *v64 = v254;
            swift_endAccess();
            v254 = v53;
            v255 = v49;
            v230 = v62;
            v270[0] = v62;
            v228 = v63;
            v271[0] = v63;
            v271[1] = v237;
            v66 = v250;
            v67 = v245;
            swift_beginAccess();
            sub_1AE0323AC(&v254, v270, v271, v269);
            swift_endAccess();
            v236 = LOBYTE(v269[0]);
            LODWORD(v253) = BYTE1(v269[0]);
            LODWORD(v231) = BYTE2(v269[0]);
            v68 = v225;
            sub_1ADECD9E8(v66 + v67, v225, type metadata accessor for PartiallyOrderedReferenceMap);
            sub_1ADDDF7A8(v53, v49, *(v68 + *(v249 + 20)), &v260);
            result = sub_1ADDD872C(v68, type metadata accessor for PartiallyOrderedReferenceMap);
            v70 = v261;
            if (!v261)
            {
              goto LABEL_154;
            }

            v72 = v263;
            v71 = v264;
            v73 = v262;
            v74 = v260;

            result = sub_1ADDDC21C(v75, *(&v74 + 1), v70, v73, v72, v71);
            v227 = v74;
            if (!v74)
            {
              goto LABEL_153;
            }

            v76 = v224;
            sub_1ADECD9E8(v250 + v245, v224, type metadata accessor for PartiallyOrderedReferenceMap);
            sub_1ADDDF7A8(v53, v49, *(v76 + *(v249 + 20)), &v254);
            result = sub_1ADDD872C(v76, type metadata accessor for PartiallyOrderedReferenceMap);
            v77 = v256;
            if (!v256)
            {
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
              return result;
            }

            v78 = v258;
            v226 = v259;
            v79 = v257;
            v80 = v254;
            v81 = v255;

            v237 = v77;
            v228 = v79;
            sub_1ADDDC21C(v80, v81, v77, v79, v78, v226);
            v82 = v236;
            LOBYTE(v260) = v236;
            v83 = v253;
            BYTE1(v260) = v253;
            v84 = v231;
            BYTE2(v260) = v231;
            v85 = &v260;
            MergeResult.merge(_:)(v85);
            v86 = v233;
            swift_beginAccess();
            v87 = swift_isUniquelyReferenced_nonNull_native();
            v254 = *v86;
            if (v84)
            {
              v88 = 0x10000;
            }

            else
            {
              v88 = 0;
            }

            sub_1ADEBFA40(v88 | (v83 << 8) | v82, v53, v49, v87);
            *v86 = v254;
            swift_endAccess();
            if (v82 > 1 || v253 >= 2)
            {
              swift_beginAccess();
              sub_1ADDD86D8(v53, v49);
              sub_1ADDE0110(&v254, v53, v49);
              swift_endAccess();
              sub_1ADDCC35C(v254, v255);
            }

            v43 = v246;
            v35 = v247;
            if (qword_1EB5B9920 != -1)
            {
              swift_once();
            }

            v36 = v277;
            if (v236 == word_1EB5D750E && v253 == HIBYTE(word_1EB5D750E) && v231 == byte_1EB5D7510)
            {
              swift_beginAccess();
              sub_1ADDE0110(&v254, v53, v49);
              v36 = v277;
              swift_endAccess();

              sub_1ADDCC35C(v254, v255);
            }

            else
            {
              sub_1ADDCC35C(v53, v49);
            }

            v44 = v252;
            goto LABEL_32;
          }

          sub_1ADDCC35C(v53, v49);

          v43 = v246;
        }

        else
        {
          sub_1ADDCC35C(v53, v49);
          v43 = v246;
          v35 = v247;
        }
      }

      else
      {
        sub_1ADDCC35C(v53, v49);
      }

      v44 = v252;
LABEL_31:
      v36 = v277;
LABEL_32:
      if (v248 == ++v46)
      {

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v208 = v40;
    swift_once();
    v40 = v208;
  }

LABEL_37:
  v248 = *(v35 + 16);
  if (!v248)
  {
    goto LABEL_72;
  }

  v89 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;

  v245 = v89;
  swift_beginAccess();
  v40 = swift_beginAccess();
  v90 = 0;
  while (2)
  {
    if (v90 >= *(v35 + 16))
    {
      goto LABEL_149;
    }

    v91 = v35 + 16 * v90;
    v92 = *(v91 + 32);
    v93 = *(v91 + 40);
    v253 = v92;
    if (v36)
    {
      v260 = v92;
      sub_1ADE74334(v36, v44);
      v94 = v253;
      sub_1ADDD86D8(v253, v93);
      v95 = v36;
      v96 = (v36)(&v260);
      sub_1ADDDCE80(v95, v44);
      if ((v96 & 1) == 0)
      {
        sub_1ADDCC35C(v94, v93);
        goto LABEL_66;
      }
    }

    else
    {
      sub_1ADDD86D8(v92, v93);
    }

    swift_beginAccess();
    v97 = v253;
    sub_1ADDD86D8(v253, v93);
    v98 = sub_1ADDE0110(&v254, v97, v93);
    swift_endAccess();
    sub_1ADDCC35C(v254, v255);
    if ((v98 & 1) != 0 && (v99 = v241, sub_1ADECD9E8(v250 + v245, v241, type metadata accessor for PartiallyOrderedReferenceMap), sub_1ADDDF7A8(v97, v93, *(v99 + *(v249 + 20)), &v260), sub_1ADDD872C(v99, type metadata accessor for PartiallyOrderedReferenceMap), (v100 = v261) != 0))
    {
      v102 = v263;
      v101 = v264;
      v103 = v262;
      v104 = v260;

      sub_1ADDDC21C(v105, *(&v104 + 1), v100, v103, v102, v101);
      if (v104)
      {

        sub_1ADEB6B04(v97, v93, v104, sub_1ADEB7364, &v260);

        v106 = v260;
        v35 = v247;
        if (v260)
        {
          v107 = *(&v260 + 1);
          v242 = v261;
          v108 = v234;
          swift_beginAccess();
          sub_1ADDD86D8(v97, v93);

          v109 = swift_isUniquelyReferenced_nonNull_native();
          v254 = *v108;
          v230 = v104;
          sub_1ADEBFB8C(v104, v106, v97, v93, v109);
          sub_1ADDCC35C(v97, v93);
          *v108 = v254;
          swift_endAccess();
          v254 = v97;
          v255 = v93;
          v231 = v106;
          v267[0] = v106;
          v229 = v107;
          v269[0] = v107;
          v269[1] = v242;
          v110 = v250;
          v111 = v245;
          swift_beginAccess();
          sub_1AE0323AC(&v254, v267, v269, &v265);
          swift_endAccess();
          LODWORD(v253) = HIBYTE(v265);
          v236 = v266;
          LODWORD(v237) = v265;
          v112 = v223;
          sub_1ADECD9E8(v110 + v111, v223, type metadata accessor for PartiallyOrderedReferenceMap);
          sub_1ADDDF7A8(v97, v93, *(v112 + *(v249 + 20)), &v260);
          result = sub_1ADDD872C(v112, type metadata accessor for PartiallyOrderedReferenceMap);
          v113 = v261;
          if (!v261)
          {
            goto LABEL_157;
          }

          v115 = v263;
          v114 = v264;
          v116 = v262;
          v117 = v260;

          result = sub_1ADDDC21C(v118, *(&v117 + 1), v113, v116, v115, v114);
          v228 = v117;
          if (!v117)
          {
            goto LABEL_156;
          }

          v119 = v222;
          sub_1ADECD9E8(v250 + v245, v222, type metadata accessor for PartiallyOrderedReferenceMap);
          sub_1ADDDF7A8(v97, v93, *(v119 + *(v249 + 20)), &v254);
          result = sub_1ADDD872C(v119, type metadata accessor for PartiallyOrderedReferenceMap);
          v120 = v256;
          if (!v256)
          {
            goto LABEL_155;
          }

          v121 = v258;
          v227 = v259;
          v122 = v257;
          v123 = v254;
          v124 = v255;

          v242 = v120;
          v229 = v122;
          sub_1ADDDC21C(v123, v124, v120, v122, v121, v227);
          v125 = v236;
          v126 = v237;
          LOBYTE(v260) = v237;
          v127 = v253;
          BYTE1(v260) = v253;
          BYTE2(v260) = v236;
          v128 = &v260;
          MergeResult.merge(_:)(v128);
          v129 = v233;
          swift_beginAccess();
          v130 = swift_isUniquelyReferenced_nonNull_native();
          v254 = *v129;
          if (v125)
          {
            v131 = 0x10000;
          }

          else
          {
            v131 = 0;
          }

          sub_1ADEBFA40(v131 | (v127 << 8) | v126, v97, v93, v130);
          *v129 = v254;
          swift_endAccess();
          if (v126 > 1 || v253 >= 2)
          {
            swift_beginAccess();
            sub_1ADDD86D8(v97, v93);
            sub_1ADDE0110(&v254, v97, v93);
            swift_endAccess();
            sub_1ADDCC35C(v254, v255);
          }

          v35 = v247;
          if (qword_1EB5B9920 != -1)
          {
            swift_once();
          }

          v36 = v277;
          if (v237 == word_1EB5D750E && v253 == HIBYTE(word_1EB5D750E) && v236 == byte_1EB5D7510)
          {
            swift_beginAccess();
            sub_1ADDE0110(&v254, v97, v93);
            v36 = v277;
            swift_endAccess();

            sub_1ADDCC35C(v254, v255);
          }

          else
          {
            sub_1ADDCC35C(v97, v93);
          }

          v44 = v252;
          goto LABEL_67;
        }

        sub_1ADDCC35C(v97, v93);
      }

      else
      {
        sub_1ADDCC35C(v97, v93);
        v35 = v247;
      }
    }

    else
    {
      sub_1ADDCC35C(v97, v93);
    }

    v44 = v252;
LABEL_66:
    v36 = v277;
LABEL_67:
    if (v248 != ++v90)
    {
      continue;
    }

    break;
  }

LABEL_72:
  if (!v239)
  {
    i = v238;
    goto LABEL_118;
  }

  if ((v239 & 0xC000000000000001) != 0)
  {

    v36 = sub_1AE23D93C();
    type metadata accessor for AnyReference();
    sub_1ADDE5F54(&qword_1EB5B9508, type metadata accessor for AnyReference, &unk_1AE24E640);
    sub_1AE23D36C();
    v40 = v272;
    v132 = v273;
    v133 = v274;
    v134 = v275;
    v135 = v276;
  }

  else
  {
    v137 = -1 << *(v239 + 32);
    v132 = v239 + 56;
    v133 = ~v137;
    v138 = -v137;
    if (v138 < 64)
    {
      v139 = ~(-1 << v138);
    }

    else
    {
      v139 = -1;
    }

    v135 = v139 & *(v239 + 56);

    v40 = v239;
    v134 = 0;
  }

  v140 = (v133 + 64) >> 6;
  v239 = v40;
  v241 = v133;
  v242 = v140;
  v245 = v132;
  v248 = v134;
  if ((v40 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v144 = v134;
      v145 = v135;
      for (i = v238; !v145; ++v144)
      {
        v134 = v144 + 1;
        if (__OFADD__(v144, 1))
        {
          goto LABEL_150;
        }

        if (v134 >= v140)
        {
          goto LABEL_117;
        }

        v145 = *(v132 + 8 * v134);
      }

      v143 = (v145 - 1) & v145;
      v142 = *(*(v40 + 48) + ((v134 << 9) | (8 * __clz(__rbit64(v145)))));

      if (!v142)
      {
        goto LABEL_126;
      }

LABEL_89:
      *&v253 = v143;
      v146 = *(v142 + 16);
      v147 = *(v142 + 24);
      v148 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
      v149 = v250;
      swift_beginAccess();
      v150 = v149 + v148;
      v151 = v232;
      sub_1ADECD9E8(v150, v232, type metadata accessor for PartiallyOrderedReferenceMap);
      sub_1ADDDF7A8(v146, v147, *(v151 + *(v249 + 20)), &v260);
      sub_1ADDD872C(v151, type metadata accessor for PartiallyOrderedReferenceMap);
      v36 = v261;
      if (!v261)
      {
        break;
      }

      v152 = v263;
      v153 = v264;
      v154 = v262;
      v156 = *(&v260 + 1);
      v155 = v260;

      sub_1ADDDC21C(v155, v156, v36, v154, v152, v153);
      v135 = v253;
      v35 = v247;
      v40 = v239;
      v132 = v245;
LABEL_115:
      v140 = v242;
      v248 = v134;
      if (v40 < 0)
      {
        goto LABEL_81;
      }
    }

    v157 = *(v142 + 16);
    v158 = *(v142 + 24);
    swift_beginAccess();
    sub_1ADDD86D8(v157, v158);
    sub_1ADDE0110(&v254, v157, v158);
    swift_endAccess();
    sub_1ADDCC35C(v254, v255);
    v159 = v240;
    sub_1ADEB7670(v142, &v260);
    v240 = v159;
    if (v159)
    {

      sub_1ADDDCE74(v239);

      goto LABEL_120;
    }

    v35 = v247;
    v132 = v245;
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    v160 = word_1EB5D750B;
    v161 = HIBYTE(word_1EB5D750B);
    v36 = byte_1EB5D750D;

    v162 = v243;
    swift_beginAccess();
    v40 = v239;
    v135 = v253;
    if (v160)
    {
      v163 = v162[16];
      if (v163 != v160)
      {
        if (v162[16] <= 1u)
        {
          if (!v162[16])
          {
LABEL_103:
            v162[16] = v160;
            goto LABEL_104;
          }

          v164 = v160 == 2;
LABEL_101:
          if (v164)
          {
            LOBYTE(v160) = 3;
          }

          goto LABEL_103;
        }

        if (v163 == 2)
        {
          v164 = v160 == 1;
          goto LABEL_101;
        }
      }
    }

LABEL_104:
    if (!v161)
    {
      goto LABEL_114;
    }

    v165 = v162[17];
    if (v165 == v161)
    {
      goto LABEL_114;
    }

    if (v162[17] > 1u)
    {
      if (v165 != 2)
      {
LABEL_114:
        v162[18] = (v162[18] | v36) & 1;
        goto LABEL_115;
      }

      v166 = v161 == 1;
    }

    else
    {
      if (!v162[17])
      {
LABEL_113:
        v162[17] = v161;
        goto LABEL_114;
      }

      v166 = v161 == 2;
    }

    if (v166)
    {
      LOBYTE(v161) = 3;
    }

    goto LABEL_113;
  }

LABEL_81:
  v141 = sub_1AE23D9AC();
  i = v238;
  if (v141)
  {
    v254 = v141;
    type metadata accessor for AnyReference();
    swift_dynamicCast();
    v142 = v260;
    v143 = v135;
    if (v260)
    {
      goto LABEL_89;
    }

LABEL_126:
    v40 = v239;
  }

  else
  {
    v40 = v239;
  }

LABEL_117:
  sub_1ADDDCE74(v40);
LABEL_118:
  v167 = v250;
  v168 = v235;
  swift_beginAccess();
  v169 = v244;
  v170 = v240;
  v171 = sub_1ADEB89D8(*v168, v244);
  v240 = v170;
  if (!v170)
  {
    v173 = v171;
    swift_beginAccess();

    sub_1AE00F014(v174);
    swift_endAccess();
    swift_beginAccess();
    sub_1AE00F014(v173);
    swift_endAccess();
    v175 = v218;
    v172 = v221;
    v176 = i;
    v178 = v219;
    v177 = v220;
    v179 = v277;
    v180 = v252;
    v181 = v240;
    sub_1ADEBD93C(0, v176, v220, v167, v277, v252, v219, v169, v243, v221, v218);
    if (v181)
    {
      v240 = v181;

      goto LABEL_124;
    }

    sub_1ADEBD93C(1, v238, v177, v167, v179, v180, v178, v169, v243, v172, v175);
    v240 = 0;
    v182 = v214;
    swift_beginAccess();
    sub_1ADF5F770(v216, v269);
    sub_1ADF5F770(v217, v267);
    v265 = v267[0];
    v266 = BYTE2(v267[0]);
    v183 = &v265;
    MergeResult.merge(_:)(v183);
    LOWORD(v267[0]) = v269[0];
    BYTE2(v267[0]) = BYTE2(v269[0]);
    v184 = v243;
    swift_beginAccess();
    v185 = v267;
    MergeResult.merge(_:)(v185);
    swift_endAccess();

    v186 = v184[16];
    v187 = v184[17];
    v188 = v184[18];
    if (qword_1EB5B9910 != -1)
    {
      swift_once();
    }

    v189 = v212;
    if (v186 == word_1EB5D750B && v187 == HIBYTE(word_1EB5D750B) && ((v188 ^ byte_1EB5D750D) & 1) == 0)
    {
      v190 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
      v191 = v244;
      swift_beginAccess();
      v192 = v191 + v190;
      v194 = v209;
      v193 = v210;
      (*(v189 + 16))(v209, v192, v210);
      v195 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
      v196 = v250;
      swift_beginAccess();
      v197 = v196 + v195;
      v198 = v194;
      v182 = v214;
      (*(v189 + 24))(v197, v198, v193);
    }

    else
    {
      if (v186 <= 1 && v187 < 2)
      {
        goto LABEL_141;
      }

      if (qword_1ED96AC50 != -1)
      {
        swift_once();
      }

      sub_1ADDD0F70();
      v199 = v209;
      sub_1AE23BFBC();
      v200 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
      v201 = v250;
      swift_beginAccess();
      v202 = v201 + v200;
      v198 = v199;
      v203 = v199;
      v193 = v210;
      (*(v189 + 24))(v202, v203, v210);
    }

    swift_endAccess();
    (*(v189 + 8))(v198, v193);
LABEL_141:
    if (qword_1EB5B9920 != -1)
    {
      swift_once();
    }

    if (v186 == word_1EB5D750E && v187 == HIBYTE(word_1EB5D750E) && ((v188 ^ byte_1EB5D7510) & 1) == 0)
    {
      v204 = v215;
      swift_beginAccess();
      sub_1ADEB41A8(*v204, 1);
    }

    v205 = v182[1];
    v268[0] = *v182;
    v268[1] = v205;
    swift_beginAccess();

    sub_1AE032778(v268);
    swift_endAccess();

    v172 = *(v221 + 16);
    v206 = *(v243 + 18);
    v207 = v213;
    *v213 = *(v243 + 16);
    *(v207 + 2) = v206;

    return v172;
  }

LABEL_120:
  v172 = v221;
LABEL_124:

  return v172;
}

char *sub_1ADEB3780(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v11 = sub_1ADDD9ECC(MEMORY[0x1E69E7CC0]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v146[0] = v11;
  sub_1ADDDCB94(a2, sub_1ADF9811C, 0, isUniquelyReferenced_nonNull_native, v146);

  v13 = v146[0];
  v145 = v5;
  if (!a1[2])
  {
    goto LABEL_47;
  }

  v135 = v146[0];

  v137 = a3;
  while (1)
  {
    v133 = v7;
    v16 = MEMORY[0x1E69E7CC0];
    v143 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v17 = 0;
    v148 = sub_1ADDD9ECC(v16);
    v18 = 1 << *(a1 + 32);
    v19 = v18 < 64 ? ~(-1 << v18) : -1;
    v20 = v19 & a1[8];
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
LABEL_13:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = v23 | (v17 << 6);
      v25 = *(a1[7] + 8 * v24);
      if ((a3 & 1) != 0 || v25)
      {
        *v146 = *(a1[6] + 16 * v24);
        v147[0] = a4;
        v147[1] = a5;
        v26 = v146[1];
        v27 = v146[0];
        sub_1ADDD86D8(v146[0], v146[1]);
        v28 = sub_1ADEB5924(v146, v25, v147);
        v30 = v28;
        if ((v28 - 1) < 2)
        {
          sub_1ADDDDEAC(v28, v29);
        }

        else if (v28 != 3 && v28 != 0)
        {
          v114 = v29;
          v32 = v28 + 64;
          v33 = 1 << *(v28 + 32);
          if (v33 < 64)
          {
            v34 = ~(-1 << v33);
          }

          else
          {
            v34 = -1;
          }

          v35 = v34 & *(v28 + 64);
          v117 = (v33 + 63) >> 6;

          v36 = 0;
          v37 = 0;
          while (1)
          {
            v123 = v36;
            if (!v35)
            {
              while (1)
              {
                v38 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
                  goto LABEL_94;
                }

                if (v38 >= v117)
                {

                  sub_1ADDDD108(v114);
                  sub_1ADDDCE80(v123, 0);
                  sub_1ADDCC35C(v27, v26);

                  goto LABEL_44;
                }

                v35 = *(v32 + 8 * v38);
                ++v37;
                if (v35)
                {
                  goto LABEL_29;
                }
              }
            }

            v38 = v37;
LABEL_29:
            v119 = v38;
            v39 = __clz(__rbit64(v35)) | (v38 << 6);
            v40 = (*(v30 + 48) + 16 * v39);
            v131 = *v40;
            v129 = v40[1];
            v121 = *(*(v30 + 56) + 8 * v39);
            sub_1ADDD86D8(*v40, v129);
            sub_1ADDDCE80(v123, 0);
            v124 = swift_isUniquelyReferenced_nonNull_native();
            v146[0] = v143;
            v42 = sub_1ADDDE7CC(v131, v129);
            v43 = v143[2];
            v44 = (v41 & 1) == 0;
            v45 = v43 + v44;
            if (__OFADD__(v43, v44))
            {
              goto LABEL_95;
            }

            if (v143[3] >= v45)
            {
              if (v124)
              {
                if (v41)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v126 = v42;
                v116 = v41;
                sub_1ADF6F1AC();
                v42 = v126;
                v143 = v146[0];
                if (v116)
                {
                  goto LABEL_38;
                }
              }
            }

            else
            {
              v115 = v41;
              sub_1ADE1D52C(v45, v124);
              v143 = v146[0];
              v46 = sub_1ADDDE7CC(v131, v129);
              if ((v115 & 1) != (v47 & 1))
              {
                goto LABEL_102;
              }

              v42 = v46;
              if (v115)
              {
                goto LABEL_38;
              }
            }

            v125 = v42;
            sub_1ADF98C94(v146);
            v48 = v146[0];
            v143[(v125 >> 6) + 8] |= 1 << v125;
            v49 = (v143[6] + 16 * v125);
            *v49 = v131;
            v49[1] = v129;
            *(v143[7] + 8 * v125) = v48;
            v50 = v143[2];
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (v51)
            {
              goto LABEL_97;
            }

            v143[2] = v52;
            sub_1ADDD86D8(v131, v129);
            v42 = v125;
LABEL_38:
            v53 = v143[7];
            v54 = *(v53 + 8 * v42);
            v51 = __OFSUB__(v54, v121);
            v55 = v54 - v121;
            if (v51)
            {
              goto LABEL_96;
            }

            v35 &= v35 - 1;
            *(v53 + 8 * v42) = v55;
            sub_1ADDCC35C(v131, v129);
            v36 = sub_1ADF98C94;
            v37 = v119;
            v32 = v30 + 64;
          }
        }

        sub_1ADDCC35C(v27, v26);
LABEL_44:
        a3 = v137;
      }
    }

LABEL_9:
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 < v21)
    {
      v20 = a1[v22 + 8];
      ++v17;
      if (v20)
      {
        v17 = v22;
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    v14 = v148;

    v15 = swift_isUniquelyReferenced_nonNull_native();
    v146[0] = v135;
    sub_1ADDDCB94(v14, sub_1ADF9811C, 0, v15, v146);
    v7 = v133;
    swift_bridgeObjectRelease_n();
    v135 = v146[0];
    a1 = v143;
    if (!v143[2])
    {

      v13 = v135;
LABEL_47:
      v56 = 0;
      v57 = v13 + 64;
      v58 = 1 << *(v13 + 32);
      v59 = -1;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      v60 = v59 & *(v13 + 64);
      v61 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
      v62 = (v58 + 63) >> 6;
      v63 = MEMORY[0x1E69E7CC0];
      for (i = MEMORY[0x1E69E7CC0]; ; i = v120)
      {
        while (1)
        {
          do
          {
            if (!v60)
            {
              while (1)
              {
                v69 = v56 + 1;
                if (__OFADD__(v56, 1))
                {
                  goto LABEL_93;
                }

                if (v69 >= v62)
                {

                  return i;
                }

                v60 = *(v57 + 8 * v69);
                ++v56;
                if (v60)
                {
                  v56 = v69;
                  break;
                }
              }
            }

            v65 = __clz(__rbit64(v60));
            v60 &= v60 - 1;
            v66 = v65 | (v56 << 6);
            v67 = (*(v13 + 56) + 16 * v66);
            v68 = v67[1];
          }

          while (!v68);
          v120 = i;
          v122 = v63;
          v70 = (*(v13 + 48) + 16 * v66);
          v71 = v61;
          v136 = v13;
          v138 = *v70;
          v132 = v70[1];
          v72 = *v67;
          v140 = *(*v67 + 24);
          v142 = *(*v67 + 16);
          swift_beginAccess();
          v130 = v71;
          v73 = *(v145 + v71);
          v74 = *(v73 + 16);
          v144 = v72;
          swift_retain_n();
          sub_1ADDD86D8(v138, v132);
          sub_1ADDD86D8(v142, v140);
          if (v74)
          {
            v75 = sub_1ADDDE7CC(v142, v140);
            if (v76)
            {
              v77 = *(*(v73 + 56) + 16 * v75 + 8);
              if ()
              {
                break;
              }
            }
          }

          v134 = v7;
          if (v68 <= 0)
          {
            goto LABEL_103;
          }

          v82 = *(v72 + 16);
          v81 = *(v144 + 24);

          sub_1ADDD86D8(v82, v81);
          v118 = swift_isUniquelyReferenced_nonNull_native();
          v146[0] = *(v145 + v130);
          v83 = v146[0];
          *(v145 + v130) = 0x8000000000000000;
          v127 = v82;
          v128 = v81;
          v85 = sub_1ADDDE7CC(v82, v81);
          v86 = *(v83 + 16);
          v87 = (v84 & 1) == 0;
          v88 = v86 + v87;
          if (__OFADD__(v86, v87))
          {
            goto LABEL_98;
          }

          v89 = v84;
          if (*(v83 + 24) >= v88)
          {
            if ((v118 & 1) == 0)
            {
              sub_1ADF703A0();
            }
          }

          else
          {
            sub_1ADF6AF70(v88, v118);
            v90 = sub_1ADDDE7CC(v82, v128);
            if ((v89 & 1) != (v91 & 1))
            {
              goto LABEL_104;
            }

            v85 = v90;
          }

          v61 = v130;
          v92 = v146[0];
          if (v89)
          {
            v93 = (*(v146[0] + 56) + 16 * v85);
            *v93 = v144;
            v93[1] = v68;

            sub_1ADDCC35C(v127, v128);
            *(v145 + v130) = v92;
            v7 = v134;
            v94 = v120;
            goto LABEL_77;
          }

          *(v146[0] + 8 * (v85 >> 6) + 64) |= 1 << v85;
          v95 = (v92[6] + 16 * v85);
          *v95 = v127;
          v95[1] = v128;
          v96 = (v92[7] + 16 * v85);
          *v96 = v144;
          v96[1] = v68;
          v97 = v92[2];
          v51 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v51)
          {
            goto LABEL_99;
          }

          v92[2] = v98;
          *(v145 + v130) = v92;
          v7 = v134;
LABEL_76:
          v94 = v120;
LABEL_77:
          swift_endAccess();

          sub_1ADDCC35C(v142, v140);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = sub_1ADE556B0(0, *(v94 + 2) + 1, 1, v94);
          }

          v100 = *(v94 + 2);
          v99 = *(v94 + 3);
          v101 = v94;
          if (v100 >= v99 >> 1)
          {
            v101 = sub_1ADE556B0((v99 > 1), v100 + 1, 1, v94);
          }

          sub_1ADDCC35C(v138, v132);
          *(v101 + 2) = v100 + 1;
          v102 = &v101[8 * v100];
          i = v101;
          *(v102 + 4) = v144;
          v13 = v136;
          v63 = v122;
        }

        v51 = __OFADD__(v77, v68);
        v78 = v77 + v68;
        if (v51)
        {
          goto LABEL_100;
        }

        v61 = v130;
        if (v78 < 0)
        {
          goto LABEL_101;
        }

        if (v78)
        {
          v80 = sub_1ADF5EFC4(v146, v142, v140);
          if (*v79)
          {
            v79[1] = v78;
          }

          (v80)(v146, 0);
          goto LABEL_76;
        }

        v103 = sub_1ADDDE7CC(v142, v140);
        if (v104)
        {
          v105 = v103;
          v106 = swift_isUniquelyReferenced_nonNull_native();
          v107 = *(v145 + v130);
          v146[0] = v107;
          *(v145 + v130) = 0x8000000000000000;
          if (!v106)
          {
            sub_1ADF703A0();
            v107 = v146[0];
          }

          sub_1ADDCC35C(*(*(v107 + 48) + 16 * v105), *(*(v107 + 48) + 16 * v105 + 8));

          sub_1ADF6DA1C(v105, v107);
          *(v145 + v130) = v107;
        }

        swift_endAccess();

        sub_1ADDCC35C(v142, v140);
        v108 = v122;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1ADE55498(0, *(v122 + 2) + 1, 1, v122);
        }

        v110 = *(v108 + 2);
        v109 = *(v108 + 3);
        v111 = v108;
        if (v110 >= v109 >> 1)
        {
          v111 = sub_1ADE55498((v109 > 1), v110 + 1, 1, v108);
        }

        *(v111 + 2) = v110 + 1;
        v63 = v111;
        v112 = &v111[16 * v110];
        v13 = v136;
        *(v112 + 4) = v138;
        *(v112 + 5) = v132;
      }
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  sub_1AE23E27C();
  __break(1u);
LABEL_103:
  sub_1AE23DC5C();
  __break(1u);
LABEL_104:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void sub_1ADEB41A8(uint64_t a1, char a2)
{
  v31 = a1;
  v3 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) != 0 || *(v31 + 16))
  {
    v6 = v30;
    sub_1ADDD7B68(v5);
    sub_1ADDD872C(v5, type metadata accessor for Timestamp);
    v7 = v31 + 56;
    v8 = 1 << *(v31 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v31 + 56);
    v28 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    v27 = (v6 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    while (v10)
    {
      v15 = v12;
LABEL_13:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = (*(v31 + 48) + ((v15 << 10) | (16 * v16)));
      v18 = *v17;
      v19 = v17[1];
      swift_beginAccess();
      v33 = v18;
      v34 = v19;
      sub_1ADDD86D8(v18, v19);
      sub_1ADDD86D8(v18, v19);
      v21 = sub_1ADDE13D8(v32, &v33);
      if (*(v20 + 16))
      {
        v22 = v20;
        v23 = v27;
        swift_beginAccess();
        v24 = *v23;
        v25 = v23[1];
        v29 = *(v22 + 24);
        *(v22 + 16) = v24;
        *(v22 + 24) = v25;

        v21(v32, 0);
        swift_endAccess();

        sub_1ADDCC35C(v18, v19);
        v13 = v33;
        v14 = v34;
      }

      else
      {
        v21(v32, 0);
        sub_1ADDCC35C(v33, v34);
        swift_endAccess();
        v13 = v18;
        v14 = v19;
      }

      sub_1ADDCC35C(v13, v14);
      v12 = v15;
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v15 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v15);
      ++v12;
      if (v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1ADEB4434(uint64_t *a1, uint64_t *a2)
{
  v214 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v5);
  v148 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v153 = a1[1];
  v154 = v7;
  v8 = *a2;
  v151 = a2[1];
  v152 = v8;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v11 = sub_1ADDD9ECC(v9);
  v169 = v10;
  v170 = v11;
  v12 = v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v149 = 0;
  swift_beginAccess();
  v150 = v5;
  v155 = v12;
  sub_1AE23C1FC();
  v13 = &qword_1EB5BA9E8;
  for (i = &qword_1AE251DE0; ; sub_1ADDCEDE0(&v198, v13, i))
  {
    v15 = v162;
    if (v162 < DWORD1(v162))
    {
      v16 = *(&v161 + 1);
      LODWORD(v162) = v162 + 1;
      goto LABEL_5;
    }

    v16 = sub_1AE23C20C();
    if (!v16)
    {
      v212 = v167;
      v213[0] = v168[0];
      *(v213 + 11) = *(v168 + 11);
      v208 = v163;
      v209 = v164;
      v211 = v166;
      v210 = v165;
      v206 = v161;
      v207 = v162;
      sub_1ADDCEDE0(&v206, &qword_1EB5BA9F0, &unk_1AE25A260);
      sub_1AE23C1FC();
      if (v154)
      {
        v48 = 0;
      }

      else
      {
        v48 = v153 == 0xC000000000000000;
      }

      v49 = !v48;
      LODWORD(v156) = v49;
      v158 = v153 >> 62;
      v50 = __OFSUB__(HIDWORD(v154), v154);
      v144 = v50;
      v143 = HIDWORD(v154) - v154;
      v147 = BYTE6(v153);
      if (v152)
      {
        v51 = 0;
      }

      else
      {
        v51 = v151 == 0xC000000000000000;
      }

      v52 = !v51;
      v146 = v52;
      v157 = v151 >> 62;
      v53 = __OFSUB__(HIDWORD(v152), v152);
      v142 = v53;
      v141 = HIDWORD(v152) - v152;
      v145 = BYTE6(v151);
      while (1)
      {
        while (1)
        {
          v54 = v199;
          if (v199 >= DWORD1(v199))
          {
            v55 = sub_1AE23C20C();
            if (!v55)
            {
              v196 = v204;
              v197[0] = v205[0];
              *(v197 + 11) = *(v205 + 11);
              v192 = v200;
              v193 = v201;
              v194 = v202;
              v195 = v203;
              v190 = v198;
              v191 = v199;
              sub_1ADDCEDE0(&v190, &qword_1EB5BA9F0, &unk_1AE25A260);
              v125 = v148;
              sub_1ADECD9E8(v155, v148, type metadata accessor for PartiallyOrderedReferenceMap);
              sub_1AE23C1FC();
              sub_1ADDD872C(v125, type metadata accessor for PartiallyOrderedReferenceMap);
              do
              {
                v138 = v183;
                if (v183 < DWORD1(v183))
                {
                  v126 = *(&v182 + 1);
                  LODWORD(v183) = v183 + 1;
                }

                else
                {
                  v126 = sub_1AE23C20C();
                  if (!v126)
                  {
                    v180 = v188;
                    v181[0] = v189[0];
                    *(v181 + 11) = *(v189 + 11);
                    v176 = v184;
                    v177 = v185;
                    v178 = v186;
                    v179 = v187;
                    v174 = v182;
                    v175 = v183;
                    sub_1ADDFD834(&v174);
                    v46 = 1;
                    goto LABEL_19;
                  }
                }

                v127 = (v126 + *(v126 + 24) + (~v138 << 6));
                v128 = v127[5];
                v130 = v127[2];
                v129 = v127[3];
                v172 = v127[4];
                v173 = v128;
                v171[0] = v130;
                v171[1] = v129;
                v131 = v130;
                sub_1ADDCEE40(v171, &v174, &qword_1EB5BA9E8, &qword_1AE251DE0);
                sub_1ADDCEE40(v171, &v174, &qword_1EB5BA9E8, &qword_1AE251DE0);
                sub_1ADDCC35C(v131, *(&v131 + 1));
                v132 = *(&v172 + 1);

                v133 = *(v132 + 16);

                v134 = *(v155 + *(v150 + 28));
                sub_1AE23E31C();

                sub_1AE23BECC();
                v135 = sub_1AE23E34C();
                v137 = sub_1ADECB280(0, v131, *(&v131 + 1), v135, v134, v136);

                sub_1ADDCEDE0(v171, &qword_1EB5BA9E8, &qword_1AE251DE0);
              }

              while ((((v133 == 0) ^ v137) & 1) != 0);
              v180 = v188;
              v181[0] = v189[0];
              *(v181 + 11) = *(v189 + 11);
              v176 = v184;
              v177 = v185;
              v178 = v186;
              v179 = v187;
              v174 = v182;
              v175 = v183;
              sub_1ADDFD834(&v174);
              goto LABEL_18;
            }
          }

          else
          {
            v55 = *(&v198 + 1);
            LODWORD(v199) = v199 + 1;
          }

          v56 = (v55 + *(v55 + 24) + (~v54 << 6));
          v58 = v56[4];
          v57 = v56[5];
          v59 = v56[3];
          v182 = v56[2];
          v183 = v59;
          v184 = v58;
          v185 = v57;
          v60 = *(&v182 + 1);
          v61 = v182;
          v62 = v59;
          v63 = v58;
          sub_1ADDCEE40(&v182, &v190, &qword_1EB5BA9E8, &qword_1AE251DE0);
          sub_1ADDCEE40(&v182, &v190, &qword_1EB5BA9E8, &qword_1AE251DE0);

          v159 = v63;

          v160 = v62;

          v64 = v153;
          if (v60 >> 60 == 15)
          {
            break;
          }

          if (v153 >> 60 != 15)
          {
            v76 = v60 >> 62;
            v77 = v154;
            if (v60 >> 62 == 3)
            {
              if (v61)
              {
                v78 = 0;
              }

              else
              {
                v78 = v60 == 0xC000000000000000;
              }

              v80 = !v78 || v158 < 3;
              if (((v80 | v156) & 1) == 0)
              {
LABEL_70:
                sub_1ADDE0F78(0, 0xC000000000000000);
                sub_1ADDE0F78(0, 0xC000000000000000);
                v81 = 0;
                v82 = 0xC000000000000000;
                goto LABEL_119;
              }

LABEL_108:
              v97 = 0;
              if (v158 > 1)
              {
                goto LABEL_109;
              }

LABEL_105:
              v100 = v147;
              if (v158)
              {
                v100 = v143;
                if (v144)
                {
                  __break(1u);
LABEL_164:
                  __break(1u);
LABEL_165:
                  __break(1u);
LABEL_166:
                  __break(1u);
LABEL_167:
                  __break(1u);
LABEL_168:
                  __break(1u);
LABEL_169:
                  __break(1u);
LABEL_170:
                  __break(1u);
LABEL_171:
                  __break(1u);
LABEL_172:
                  __break(1u);
LABEL_173:
                  __break(1u);
LABEL_174:
                  __break(1u);
LABEL_175:
                  __break(1u);
                }
              }

LABEL_111:
              if (v97 == v100)
              {
                if (v97 < 1)
                {
                  goto LABEL_118;
                }

                if (v76 > 1)
                {
                  if (v76 == 2)
                  {
                    v109 = *(v61 + 16);
                    v139 = *(v61 + 24);
                    v140 = v109;
                    sub_1ADDE0F78(v154, v153);
                    sub_1ADDE0F78(v61, v60);
                    sub_1ADDD86D8(v61, v60);
                    sub_1ADDE0F78(v77, v64);
                    v110 = sub_1AE23BB7C();
                    if (v110)
                    {
                      v111 = v110;
                      v112 = sub_1AE23BBAC();
                      v113 = v140;
                      if (__OFSUB__(v140, v112))
                      {
                        goto LABEL_173;
                      }

                      v114 = v140 - v112 + v111;
                    }

                    else
                    {
                      v114 = 0;
                      v113 = v140;
                    }

                    if (__OFSUB__(v139, v113))
                    {
                      goto LABEL_172;
                    }

                    sub_1AE23BB9C();
                    v121 = v114;
                    goto LABEL_153;
                  }

                  *(&v190 + 6) = 0;
                  *&v190 = 0;
                  sub_1ADDE0F78(v154, v153);
                  sub_1ADDE0F78(v61, v60);
                  sub_1ADDD86D8(v61, v60);
                  sub_1ADDE0F78(v77, v64);
LABEL_147:
                  v119 = v149;
                  sub_1ADDD8820(&v190, v77, v64, &v174);
                  v149 = v119;
                  sub_1ADDCC35C(v61, v60);
                  sub_1ADDE158C(v77, v64);
                  sub_1ADDE158C(v77, v64);
                  v120 = v174;
                }

                else
                {
                  if (!v76)
                  {
                    *&v190 = v61;
                    WORD4(v190) = v60;
                    BYTE10(v190) = BYTE2(v60);
                    BYTE11(v190) = BYTE3(v60);
                    BYTE12(v190) = BYTE4(v60);
                    BYTE13(v190) = BYTE5(v60);
                    sub_1ADDE0F78(v154, v153);
                    sub_1ADDE0F78(v61, v60);
                    sub_1ADDD86D8(v61, v60);
                    sub_1ADDE0F78(v77, v64);
                    goto LABEL_147;
                  }

                  v140 = (v61 >> 32) - v61;
                  if (v61 >> 32 < v61)
                  {
                    goto LABEL_171;
                  }

                  sub_1ADDE0F78(v154, v153);
                  sub_1ADDE0F78(v61, v60);
                  sub_1ADDD86D8(v61, v60);
                  sub_1ADDE0F78(v77, v64);
                  v115 = sub_1AE23BB7C();
                  if (v115)
                  {
                    v116 = v115;
                    v117 = sub_1AE23BBAC();
                    if (__OFSUB__(v61, v117))
                    {
                      goto LABEL_174;
                    }

                    v118 = v61 - v117 + v116;
                  }

                  else
                  {
                    v118 = 0;
                  }

                  sub_1AE23BB9C();
                  v121 = v118;
LABEL_153:
                  v123 = v153;
                  v122 = v154;
                  v124 = v149;
                  sub_1ADDD8820(v121, v154, v153, &v190);
                  v149 = v124;
                  sub_1ADDCC35C(v61, v60);
                  sub_1ADDE158C(v122, v123);
                  sub_1ADDE158C(v122, v123);
                  v120 = v190;
                }

                sub_1ADDCC35C(v61, v60);
                sub_1ADDE158C(v61, v60);
                if (v120)
                {
                  goto LABEL_155;
                }

                goto LABEL_50;
              }
            }

            else
            {
              if (v76 <= 1)
              {
                if (v76)
                {
                  LODWORD(v97) = HIDWORD(v61) - v61;
                  if (__OFSUB__(HIDWORD(v61), v61))
                  {
                    goto LABEL_165;
                  }

                  v97 = v97;
                  if (v158 > 1)
                  {
                    goto LABEL_109;
                  }
                }

                else
                {
                  v97 = BYTE6(v60);
                  if (v158 > 1)
                  {
                    goto LABEL_109;
                  }
                }

                goto LABEL_105;
              }

              if (v76 != 2)
              {
                goto LABEL_108;
              }

              v99 = *(v61 + 16);
              v98 = *(v61 + 24);
              v91 = __OFSUB__(v98, v99);
              v97 = v98 - v99;
              if (v91)
              {
                goto LABEL_166;
              }

              if (v158 <= 1)
              {
                goto LABEL_105;
              }

LABEL_109:
              if (v158 == 2)
              {
                v102 = *(v154 + 16);
                v101 = *(v154 + 24);
                v91 = __OFSUB__(v101, v102);
                v100 = v101 - v102;
                if (v91)
                {
                  goto LABEL_164;
                }

                goto LABEL_111;
              }

              if (!v97)
              {
LABEL_118:
                sub_1ADDE0F78(v154, v153);
                sub_1ADDE0F78(v61, v60);
                v81 = v77;
                v82 = v64;
                goto LABEL_119;
              }
            }

            sub_1ADDE0F78(v154, v153);
            sub_1ADDE0F78(v61, v60);
            sub_1ADDE158C(v77, v64);
            sub_1ADDCC35C(v61, v60);
            v66 = v61;
            v67 = v60;
            goto LABEL_49;
          }

          v65 = v154;
          sub_1ADDE0F78(v154, v153);
          sub_1ADDE0F78(v61, v60);
          sub_1ADDCC35C(v61, v60);
LABEL_48:
          sub_1ADDE158C(v61, v60);
          v66 = v65;
          v67 = v64;
LABEL_49:
          sub_1ADDE158C(v66, v67);
LABEL_50:
          sub_1ADDCEE40(&v182, &v190, &qword_1EB5BA9E8, &qword_1AE251DE0);

          if (v60 >> 60 == 15)
          {
            v68 = v151;
            v69 = v152;
            sub_1ADDE0F78(v152, v151);
            if (v68 >> 60 == 15)
            {
              goto LABEL_52;
            }

            goto LABEL_55;
          }

          v68 = v151;
          v69 = v152;
          if (v151 >> 60 == 15)
          {
            sub_1ADDE0F78(v152, v151);
            sub_1ADDE0F78(v61, v60);
            sub_1ADDCC35C(v61, v60);
LABEL_55:
            sub_1ADDE158C(v61, v60);
            v70 = v69;
            v71 = v68;
LABEL_56:
            sub_1ADDE158C(v70, v71);
LABEL_57:
            sub_1ADDCEE40(&v182, &v190, &qword_1EB5BA9E8, &qword_1AE251DE0);

            swift_beginAccess();
            *&v171[0] = v61;
            *(&v171[0] + 1) = v60;
            v73 = sub_1AE031554(&v190, v171);
            v74 = *(v72 + 16);
            if (v74)
            {
              v75 = *(v72 + 8);
              (v73)(&v190, 0);
              swift_endAccess();
              sub_1ADDCC35C(*&v171[0], *(&v171[0] + 1));
            }

            else
            {
              (v73)(&v190, 0);
              sub_1ADDCC35C(*&v171[0], *(&v171[0] + 1));
              swift_endAccess();
              v75 = 0;
            }

            sub_1ADDCEE40(&v182, &v190, &qword_1EB5BA9E8, &qword_1AE251DE0);

            v93 = v169;
            if (*(v169 + 16) && (v94 = sub_1ADDDE7CC(v61, v60), (v95 & 1) != 0))
            {
              v96 = *(*(v93 + 56) + 8 * v94);
              sub_1ADDCC35C(v61, v60);
              sub_1ADDCEDE0(&v182, &qword_1EB5BA9E8, &qword_1AE251DE0);
              if (!v74 || v75 != v96)
              {
LABEL_162:
                v196 = v204;
                v197[0] = v205[0];
                *(v197 + 11) = *(v205 + 11);
                v192 = v200;
                v193 = v201;
                v194 = v202;
                v195 = v203;
                v190 = v198;
                v191 = v199;
                v45 = &v190;
                goto LABEL_16;
              }
            }

            else
            {
              sub_1ADDCC35C(v61, v60);
              sub_1ADDCEDE0(&v182, &qword_1EB5BA9E8, &qword_1AE251DE0);
              if (v74)
              {
                goto LABEL_162;
              }
            }
          }

          else
          {
            v83 = v60 >> 62;
            if (v60 >> 62 == 3)
            {
              if (v61)
              {
                v84 = 0;
              }

              else
              {
                v84 = v60 == 0xC000000000000000;
              }

              v85 = v157;
              v87 = !v84 || v157 < 3;
              if (((v87 | v146) & 1) == 0)
              {
                goto LABEL_70;
              }

              v88 = 0;
              if (v157 > 1)
              {
LABEL_83:
                if (v85 != 2)
                {
                  if (v88)
                  {
                    goto LABEL_134;
                  }

LABEL_135:
                  sub_1ADDE0F78(v152, v151);
                  sub_1ADDE0F78(v61, v60);
                  v81 = v69;
                  v82 = v68;
LABEL_119:
                  sub_1ADDE158C(v81, v82);
                  sub_1ADDCC35C(v61, v60);
                  sub_1ADDE158C(v61, v60);
                  goto LABEL_155;
                }

                v90 = *(v152 + 16);
                v89 = *(v152 + 24);
                v91 = __OFSUB__(v89, v90);
                v92 = v89 - v90;
                if (v91)
                {
                  goto LABEL_168;
                }

                goto LABEL_130;
              }
            }

            else
            {
              v85 = v157;
              if (v83 == 2)
              {
                v104 = *(v61 + 16);
                v103 = *(v61 + 24);
                v91 = __OFSUB__(v103, v104);
                v88 = v103 - v104;
                if (v91)
                {
                  goto LABEL_169;
                }

                if (v157 > 1)
                {
                  goto LABEL_83;
                }
              }

              else if (v83 == 1)
              {
                LODWORD(v88) = HIDWORD(v61) - v61;
                if (__OFSUB__(HIDWORD(v61), v61))
                {
                  goto LABEL_170;
                }

                v88 = v88;
                if (v157 > 1)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v88 = BYTE6(v60);
                if (v157 > 1)
                {
                  goto LABEL_83;
                }
              }
            }

            v92 = v145;
            if (v85)
            {
              v92 = v141;
              if (v142)
              {
                goto LABEL_167;
              }
            }

LABEL_130:
            if (v88 != v92)
            {
LABEL_134:
              sub_1ADDE0F78(v152, v151);
              sub_1ADDE0F78(v61, v60);
              sub_1ADDE158C(v69, v68);
              sub_1ADDCC35C(v61, v60);
              v70 = v61;
              v71 = v60;
              goto LABEL_56;
            }

            if (v88 < 1)
            {
              goto LABEL_135;
            }

            v105 = v151;
            sub_1ADDD86D8(v61, v60);
            sub_1ADDE0F78(v69, v68);
            sub_1ADDE0F78(v61, v60);
            sub_1ADDE0F78(v69, v68);
            v106 = v68;
            v107 = v149;
            v108 = sub_1ADDD1544(v61, v60, v69, v106);
            v149 = v107;
            sub_1ADDCC35C(v61, v60);
            sub_1ADDE158C(v69, v105);
            sub_1ADDCC35C(v61, v60);
            sub_1ADDE158C(v61, v60);
            if ((v108 & 1) == 0)
            {
              goto LABEL_57;
            }

LABEL_155:
            sub_1ADDCEDE0(&v182, &qword_1EB5BA9E8, &qword_1AE251DE0);
          }
        }

        v65 = v154;
        sub_1ADDE0F78(v154, v153);
        if (v64 >> 60 != 15)
        {
          goto LABEL_48;
        }

LABEL_52:
        sub_1ADDCEDE0(&v182, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDE158C(v61, v60);
      }
    }

LABEL_5:
    v17 = (v16 + *(v16 + 24) + (~v15 << 6));
    v18 = v17[5];
    v20 = v17[2];
    v19 = v17[3];
    v200 = v17[4];
    v201 = v18;
    v198 = v20;
    v199 = v19;
    v21 = type metadata accessor for RetainVisitor();
    v22 = swift_allocObject();
    sub_1ADDCEE40(&v198, &v206, v13, i);
    v23 = MEMORY[0x1E69E7CC0];
    v24 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v25 = sub_1ADDD9ECC(v23);
    *(v22 + 16) = v24;
    v157 = v22 + 16;
    *(v22 + 24) = v25;
    v26 = v199;
    v27 = v200;
    v28 = i;
    v29 = v201;
    sub_1ADDCEE40(&v198, &v206, v13, v28);

    v158 = v29;

    v159 = *(&v27 + 1);

    v160 = v27;

    if (!v26)
    {
      goto LABEL_175;
    }

    i = v28;
    v30 = v13;
    v32 = *(&v198 + 1);
    v31 = v198;
    sub_1ADDCC35C(v198, *(&v198 + 1));
    *&v208 = &off_1F23C4550;
    *(&v207 + 1) = v21;
    *&v206 = v22;
    v33 = *(*v26 + 128);
    swift_retain_n();
    v33(&v206);

    v156 = v22;

    __swift_destroy_boxed_opaque_existential_1(&v206);
    sub_1ADDCEE40(&v198, &v206, v30, i);

    swift_beginAccess();
    v182 = __PAIR128__(v32, v31);
    v35 = sub_1AE031554(&v206, &v182);
    v13 = v30;
    if (v34[2])
    {
      v36 = v34[4];
      v37 = v34[5];

      (v35)(&v206, 0);
      swift_endAccess();
      sub_1ADDCC35C(v182, *(&v182 + 1));
    }

    else
    {
      (v35)(&v206, 0);
      sub_1ADDCC35C(v182, *(&v182 + 1));
      swift_endAccess();
      v36 = 0;
      v37 = 0;
    }

    swift_beginAccess();
    v38 = v156;
    v39 = *(v156 + 16);
    v40 = *(v156 + 24);
    if (!v36)
    {

      sub_1ADDCEDE0(&v198, &qword_1EB5BA9E8, &qword_1AE251DE0);

      goto LABEL_15;
    }

    sub_1ADF65450(v36, v39);
    if ((v41 & 1) == 0)
    {
      break;
    }

    v42 = sub_1ADF655B8(v37, v40);

    sub_1ADECDB08(v36, v37, MEMORY[0x1E69E7CF8]);
    if (!v42)
    {
      v212 = v167;
      v213[0] = v168[0];
      *(v213 + 11) = *(v168 + 11);
      v208 = v163;
      v209 = v164;
      v211 = v166;
      v210 = v165;
      v206 = v161;
      v207 = v162;
      sub_1ADDCEDE0(&v206, &qword_1EB5BA9F0, &unk_1AE25A260);
      sub_1ADDCEDE0(&v198, &qword_1EB5BA9E8, &qword_1AE251DE0);

      goto LABEL_18;
    }

    v43 = *(v38 + 16);
    v44 = *(v38 + 24);

    sub_1ADDDC8DC(v43, v44);
  }

  sub_1ADDCEDE0(&v198, &qword_1EB5BA9E8, &qword_1AE251DE0);

  sub_1ADECDB08(v36, v37, MEMORY[0x1E69E7CF8]);
LABEL_15:
  v212 = v167;
  v213[0] = v168[0];
  *(v213 + 11) = *(v168 + 11);
  v208 = v163;
  v209 = v164;
  v211 = v166;
  v210 = v165;
  v206 = v161;
  v207 = v162;
  v45 = &v206;
LABEL_16:
  sub_1ADDCEDE0(v45, &qword_1EB5BA9F0, &unk_1AE25A260);
LABEL_18:
  v46 = 0;
LABEL_19:

  return v46;
}

uint64_t sub_1ADEB58D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (!*(a3 + 16) || (sub_1ADDDE7CC(a1, a2), (v5 & 1) == 0) || (result = ) == 0)
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t sub_1ADEB5924(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v52 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = *a3;
  v17 = a3[1];
  v56 = v16;
  v18 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v55 = v19;
  if (!a2)
  {
    swift_beginAccess();
    sub_1ADECD9E8(v4 + v18, v13, type metadata accessor for PartiallyOrderedReferenceMap);
    sub_1ADDDF7A8(v15, v14, *&v13[*(v8 + 20)], &v73);
    sub_1ADDD872C(v13, type metadata accessor for PartiallyOrderedReferenceMap);
    if (v74)
    {
      v24 = *(&v73 + 1);
      sub_1ADDDC21C(v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1));
      if (!v24)
      {
        goto LABEL_9;
      }

      return 2;
    }

LABEL_30:
    result = sub_1AE23DC5C();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v81 = v15;
  v82 = v14;
  sub_1ADDD86D8(v15, v14);
  v21 = sub_1ADDDD4A0(&v73, &v81);
  if (!*(v20 + 16))
  {
LABEL_29:
    (v21)(&v73, 0);
    sub_1ADDCC35C(v81, v82);
    swift_endAccess();
    goto LABEL_30;
  }

  v22 = *(v20 + 8);
  v23 = v22 + a2;
  if (__OFADD__(v22, a2))
  {
    __break(1u);
    goto LABEL_28;
  }

  *(v20 + 8) = v23;
  if (v23 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  (v21)(&v73, 0);
  swift_endAccess();
  sub_1ADDCC35C(v81, v82);
  if (v23)
  {
    return 2;
  }

LABEL_9:
  sub_1ADDD86D8(v15, v14);
  if (v14 >> 60 == 15)
  {
    v25 = v56;
    sub_1ADDE0F78(v56, v17);
    if (v17 >> 60 == 15)
    {
      sub_1ADDE158C(v15, v14);
      return 2;
    }
  }

  else
  {
    v25 = v56;
    if (v17 >> 60 != 15)
    {
      sub_1ADDD86D8(v15, v14);
      sub_1ADDE0F78(v25, v17);
      sub_1ADDE0F78(v15, v14);
      sub_1ADDE0F78(v25, v17);
      v37 = sub_1ADDD6F8C(v15, v14, v25, v17);
      sub_1ADDE158C(v25, v17);
      sub_1ADDE158C(v25, v17);
      sub_1ADDCC35C(v15, v14);
      sub_1ADDCC35C(v15, v14);
      sub_1ADDE158C(v15, v14);
      if (v37)
      {
        return 2;
      }

      goto LABEL_15;
    }

    sub_1ADDE0F78(v56, v17);
    sub_1ADDE0F78(v15, v14);
    sub_1ADDCC35C(v15, v14);
  }

  sub_1ADDE158C(v15, v14);
  sub_1ADDE158C(v25, v17);
LABEL_15:
  v26 = v4 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v26, v10, type metadata accessor for PartiallyOrderedReferenceMap);
  v27 = v55;
  sub_1ADDDF7A8(v15, v14, *&v10[*(v55 + 20)], &v81);
  sub_1ADDD872C(v10, type metadata accessor for PartiallyOrderedReferenceMap);
  v28 = v83;
  if (v83)
  {
    v30 = v85;
    v29 = v86;
    v53 = v26;
    v31 = v84;
    v32 = v27;
    v33 = v81;
    v34 = v82;

    v35 = v33;
    v27 = v32;
    v36 = v34;
    v56 = v30;
    v26 = v53;
    v54 = v29;
    sub_1ADDDC21C(v35, v36, v28, v31, v30, v29);
  }

  else
  {
    v56 = 0;
    v54 = 0;
  }

  swift_beginAccess();
  v39 = v26 + *(v27 + 20);
  sub_1AE23E31C();
  sub_1AE23BECC();
  v40 = sub_1AE23E34C();
  sub_1AE036CC4(0, v15, v14, v40, &v65);
  v77 = v69;
  v78 = v70;
  v79 = v71;
  v80 = v72;
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v76 = v68;
  if (sub_1ADE23F54(&v73) == 1)
  {
    v61 = v69;
    v62 = v70;
    v63 = v71;
    v64 = v72;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v60 = v68;
    sub_1ADDCEDE0(&v57, &qword_1EB5BA978, &qword_1AE251DD0);
  }

  else
  {
    v41 = v27;
    v43 = *(&v65 + 1);
    v42 = v65;
    v52[2] = v67;
    v53 = v66;
    v52[1] = *(&v67 + 1);
    v44 = v69;
    v45 = v70;
    v46 = v71;
    ++*(v39 + 16);
    sub_1ADECD7D0(v44, *(&v44 + 1), v45, *(&v45 + 1), v46);
    v47 = v43;
    v27 = v41;
    sub_1ADDCC35C(v42, v47);
  }

  v48 = v26 + *(v27 + 28);
  sub_1AE23E31C();
  sub_1AE23BECC();
  v49 = sub_1AE23E34C();
  sub_1ADDE0898(0, v15, v14, v49, &v57);
  v50 = v57;
  v51 = v58;
  if (*(&v57 + 1) >> 60 == 15)
  {
    sub_1ADECD780(v57, *(&v57 + 1), v58, *(&v58 + 1));
  }

  else
  {
    ++*(v48 + 16);
    sub_1ADDE158C(v51, *(&v51 + 1));
    sub_1ADDCC35C(v50, *(&v50 + 1));
  }

  *&v57 = v15;
  *(&v57 + 1) = v14;
  sub_1ADDE0708(&v57, 1);
  swift_endAccess();
  return v56;
}

uint64_t sub_1ADEB5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = *v5;
  if (!v10[2] || (v13 = sub_1ADDDE7CC(a1, a2), (v14 & 1) == 0) || (v15 = *(v10[7] + 16 * v13 + 8), !))
  {
    if (a4 <= 0)
    {
      if (!a4)
      {
        return 0;
      }
    }

    else if (a3 && (a5 & 1) == 0)
    {
      v21 = *(a3 + 16);
      v20 = *(a3 + 24);
      sub_1ADDD86D8(v21, v20);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24[0] = *v6;
      sub_1ADEBF66C(a3, a4, v21, v20, isUniquelyReferenced_nonNull_native);
      sub_1ADDCC35C(v21, v20);
      result = 0;
      *v6 = v24[0];
      return result;
    }

    goto LABEL_19;
  }

  v16 = __OFADD__(v15, a4);
  v17 = v15 + a4;
  if (v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v17 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1AE23DC5C();
    __break(1u);
    return result;
  }

  if (v17)
  {
    v19 = sub_1ADF5EFC4(v24, a1, a2);
    if (*v18)
    {
      v18[1] = v17;
    }

    (v19)(v24, 0);
    return 0;
  }

  sub_1ADEBEF54(a1, a2, v24);

  return 1;
}

uint64_t sub_1ADEB61F0(uint64_t *a1)
{
  v3 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v9 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v1 + v9, v6, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1ADDDF7A8(v8, v7, *&v6[*(v4 + 28)], v25);
  sub_1ADDD872C(v6, type metadata accessor for PartiallyOrderedReferenceMap);
  v10 = v26;
  if (!v26)
  {
    return 0;
  }

  v12 = v28;
  v11 = v29;
  v13 = v27;
  v14 = v25[0];
  v15 = v25[1];

  sub_1ADDDC21C(v16, v15, v10, v13, v12, v11);
  if (v14)
  {
    v17 = type metadata accessor for RetainVisitor();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC0];
    v20 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v21 = sub_1ADDD9ECC(v19);
    *(v18 + 16) = v20;
    *(v18 + 24) = v21;
    v27 = v17;
    v28 = &off_1F23C4550;
    v25[0] = v18;
    v22 = *(*v14 + 128);

    v22(v25);

    __swift_destroy_boxed_opaque_existential_1(v25);
    swift_beginAccess();
    v14 = *(v18 + 16);
  }

  return v14;
}

double sub_1ADEB6404(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v15 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v4 + v15, v12, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1ADDDF7A8(v14, v13, *&v12[*(v10 + 28)], v25);
  sub_1ADDD872C(v12, type metadata accessor for PartiallyOrderedReferenceMap);
  v17 = v26;
  if (v26)
  {
    v19 = v28;
    v18 = v29;
    v20 = v27;
    v21 = v25[0];
    v22 = v25[1];

    sub_1ADDDC21C(v23, v22, v17, v20, v19, v18);
    if (v21)
    {
      v25[0] = v21;
      sub_1AE2131AC(a2, v25, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1ADEB6578(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, __int128 *a6)
{
  v7 = v6;
  v39 = a3;
  v41 = a2;
  v12 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = *a4;
  v19 = a4[1];
  v20 = *a5;
  v43 = v18;
  v44 = v19;
  v55 = v20;
  v54 = *a6;
  v21 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1AE0323AC(&v43, &v55, &v54, &v56);
  swift_endAccess();
  v22 = v57;
  *a1 = v56;
  *(a1 + 2) = v22;
  sub_1ADECD9E8(v7 + v21, v17, type metadata accessor for PartiallyOrderedReferenceMap);
  v42 = v12;
  v23 = *&v17[*(v12 + 20)];
  v40 = v18;
  sub_1ADDDF7A8(v18, v19, v23, v49);
  result = sub_1ADDD872C(v17, type metadata accessor for PartiallyOrderedReferenceMap);
  v25 = v50;
  if (!v50)
  {
    __break(1u);
    goto LABEL_6;
  }

  v27 = v52;
  v26 = v53;
  v28 = v51;
  v29 = v49[0];
  v30 = v49[1];

  result = sub_1ADDDC21C(v31, v30, v25, v28, v27, v26);
  if (!v29)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *v41 = v29;
  sub_1ADECD9E8(v7 + v21, v14, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1ADDDF7A8(v40, v19, *&v14[*(v42 + 20)], &v43);
  result = sub_1ADDD872C(v14, type metadata accessor for PartiallyOrderedReferenceMap);
  v32 = v45;
  if (v45)
  {
    v34 = v47;
    v33 = v48;
    v35 = v46;
    v37 = v43;
    v36 = v44;

    result = sub_1ADDDC21C(v37, v36, v32, v35, v34, v33);
    v38 = v39;
    *v39 = v32;
    v38[1] = v35;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1ADEB6804@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v2 + v11, v8, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1ADDDF7A8(v10, v9, *&v8[*(v6 + 28)], v21);
  result = sub_1ADDD872C(v8, type metadata accessor for PartiallyOrderedReferenceMap);
  v13 = v22;
  if (v22)
  {
    v15 = v24;
    v14 = v25;
    v16 = v23;
    v17 = v21[0];
    v18 = v21[1];

    result = sub_1ADDDC21C(v19, v18, v13, v16, v15, v14);
  }

  else
  {
    v17 = 0;
  }

  *a2 = v17;
  return result;
}

void sub_1ADEB6950(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_1ADDDE7CC(a1, a2), (v10 & 1) != 0) && (v11 = *(*(v8 + 56) + 16 * v9), , v11))
  {

    swift_endAccess();

    *a3 = v11;
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADEB6A04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (*(v6 + 16))
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    sub_1ADDD86D8(v7, v8);
    v9 = sub_1ADDDE7CC(v7, v8);
    if ((v10 & 1) == 0)
    {
LABEL_5:
      sub_1ADDCC35C(v7, v8);
      goto LABEL_6;
    }

    v11 = *(*(v6 + 56) + 16 * v9);

    sub_1ADDCC35C(v7, v8);

    if (v11)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

LABEL_6:
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  sub_1ADDD86D8(v12, v13);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_1ADEBF66C(a1, a2, v12, v13, isUniquelyReferenced_nonNull_native);
  sub_1ADDCC35C(v12, v13);
  *v3 = v15;
}

uint64_t sub_1ADEB6B04@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *__return_ptr, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v11 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v5 + v15, v14, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1ADDDF7A8(a1, a2, *&v14[*(v12 + 28)], v25);
  result = sub_1ADDD872C(v14, type metadata accessor for PartiallyOrderedReferenceMap);
  v17 = v26;
  if (!v26)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return result;
  }

  v18 = v25[0];
  v19 = v25[1];
  v20 = v27;
  v21 = v28;
  v22 = v29;
  if (!a3)
  {
    if (v25[0])
    {

      result = sub_1ADDDC21C(v18, v19, v17, v20, v21, v22);
      *a5 = v18;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  if (!v25[0])
  {
    __break(1u);
    goto LABEL_11;
  }

  a4(v25, a3, v18);

  v23 = v25[0];

  result = sub_1ADDDC21C(v18, v19, v17, v20, v21, v22);
  *a5 = v23;
LABEL_8:
  a5[1] = v17;
  a5[2] = v20;
  return result;
}

uint64_t sub_1ADEB6CEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v33 = a4;
  v34 = a2;
  v9 = sub_1AE23D7CC();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v37 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v19 = a1[1];
  v21 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v5 + v21, v18, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1ADDDF7A8(v20, v19, *&v18[*(v16 + 28)], v39);
  result = sub_1ADDD872C(v18, type metadata accessor for PartiallyOrderedReferenceMap);
  v23 = v40;
  if (!v40)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return result;
  }

  v24 = v39[0];
  v25 = v41;
  v32 = v42;
  v30 = v39[1];
  v31 = v43;
  v26 = v35;
  v27 = v36;
  (*(v35 + 16))(v11, v34, v36);
  v28 = v37;
  if ((*(v37 + 48))(v11, 1, a3) != 1)
  {
    result = (*(v28 + 32))(v14, v11, a3);
    if (v24)
    {
      v38 = v24;

      sub_1AE202E2C(a3, v33, v39);

      (*(v28 + 8))(v14, a3);
      v29 = v39[0];

      result = sub_1ADDDC21C(v24, v30, v23, v25, v32, v31);
      *a5 = v29;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  result = (*(v26 + 8))(v11, v27);
  if (!v24)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1ADDDC21C(v24, v30, v23, v25, v32, v31);
  *a5 = v24;
LABEL_8:
  a5[1] = v23;
  a5[2] = v25;
  return result;
}

double sub_1ADEB7058@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v11[0] = a2;
  if ((*(*a1 + 120))(v11))
  {
    *a3 = a2;
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v7 = sub_1ADDCE2E4(0, v11);
    sub_1ADDCEDE0(v11, &qword_1EB5B9DB0, &qword_1AE240B80);
    LOBYTE(v11[0]) = 2;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v8 = v7;
    CREncoder.init(_:version:fileSignature:)(v8, v11, 0, 0xF000000000000000);
    (*(*a2 + 184))();
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v10 = sub_1ADE72118(v9);

    (*(*a1 + 112))(v10);
  }

  return result;
}

double sub_1ADEB7364@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1 == *a2)
  {
    *a3 = a2;
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v6 = sub_1ADDCE2E4(0, v10);
    sub_1ADDCEDE0(v10, &qword_1EB5B9DB0, &qword_1AE240B80);
    LOBYTE(v10[0]) = 2;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v7 = v6;
    CREncoder.init(_:version:fileSignature:)(v7, v10, 0, 0xF000000000000000);
    (*(*a2 + 184))();
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v9 = sub_1ADE72118(v8);

    (*(*a1 + 176))(v9);
  }

  return result;
}

void sub_1ADEB7670(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1ADEB6B04(*(a1 + 16), *(a1 + 24), a1, sub_1ADEB7058, &v13);
  v3 = v13;
  if (v13)
  {
    v5 = *(&v13 + 1);
    v4 = v14;

    v6 = MEMORY[0x1E69E7CC0];
    v7 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v8 = sub_1ADDD9ECC(v6);
    sub_1ADDDA5BC(v6);
    sub_1ADDD9ECC(v6);

    swift_bridgeObjectRelease_n();
    v13 = v3;
    v14 = v5;
    v15 = v4;
    v16 = v7;
    v17 = v8;
    v9 = *(a1 + 24);
    v11 = *(a1 + 16);
    v12 = v9;
    swift_beginAccess();
    sub_1ADDD86D8(v11, v9);
    sub_1ADDD82B0(&v13, &v11);
    swift_endAccess();

    sub_1ADDCC35C(v11, v12);

    *a2 = v5;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADEB780C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v9 = *(a1 + 24);
  v22 = *(a1 + 16);
  v23 = v9;
  v24 = a1;
  v10 = *(a3 + 48);
  sub_1ADDD86D8(v22, v9);
  v11 = type metadata accessor for AnyReference();
  v10(&v26, &v22, &v24, v11, &off_1F23C1040, a2, a3);
  sub_1ADDCC35C(v22, v23);
  if (!v4)
  {
    v31 = a4;
    v12 = v26;
    if (v26)
    {
      v13 = *(&v26 + 1);
      v14 = v27;

      v21 = v13;

      v15 = MEMORY[0x1E69E7CC0];
      v16 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v17 = sub_1ADDD9ECC(v15);
      sub_1ADDDA5BC(v15);
      sub_1ADDD9ECC(v15);

      swift_bridgeObjectRelease_n();
      v26 = v12;
      v27 = v13;
      v28 = v14;
      v29 = v16;
      v30 = v17;
      v19 = *(a1 + 24);
      v24 = *(a1 + 16);
      v18 = v24;
      v25 = v19;
      swift_beginAccess();
      sub_1ADDD86D8(v18, v19);
      sub_1ADDD82B0(&v26, &v24);
      swift_endAccess();

      sub_1ADDCC35C(v24, v25);

      v20 = v31;
      *v31 = v21;
      v20[1] = v14;
    }

    else
    {
      __break(1u);
    }
  }
}

BOOL sub_1ADEB7A00(uint64_t a1)
{
  v2 = v1;
  v92 = sub_1AE23BFEC();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v88 - v12;
  v122 = MEMORY[0x1E69E7CD0];
  v13 = (v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v89 = v13;
  v14 = *v13;
  v15 = v13[1];
  v116 = v14;
  v117 = v15;

  v16 = sub_1ADEB86C4(&v116);

  v109 = a1;
  v17 = a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v18 = *v17;
  v19 = *(v17 + 8);
  v88 = v17;
  v116 = v18;
  v117 = v19;

  v108 = v2;
  v94 = sub_1ADEB86C4(&v116);

  v93 = v16;
  v20 = *(v16 + 16);
  v107 = v5;
  if (v20)
  {
    v21 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    swift_beginAccess();
    swift_beginAccess();
    v22 = (v93 + 40);
    v102 = v21;
    while (1)
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v25 = v103;
      sub_1ADECD9E8(v109 + v21, v103, type metadata accessor for PartiallyOrderedReferenceMap);
      v26 = *(v25 + *(v5 + 20));
      sub_1ADDD86D8(v23, v24);
      sub_1ADDDF7A8(v23, v24, v26, &v116);
      sub_1ADDD872C(v25, type metadata accessor for PartiallyOrderedReferenceMap);
      if (v118)
      {
        break;
      }

      sub_1ADDCC35C(v23, v24);
LABEL_4:
      v22 += 2;
      if (!--v20)
      {
        goto LABEL_16;
      }
    }

    v105 = v20;
    v106 = v118;
    v27 = v21;
    v29 = v116;
    v28 = v117;
    v30 = v5;
    v32 = v119;
    v31 = v120;
    v33 = v121;
    v34 = v97;
    sub_1ADECD9E8(v108 + v27, v97, type metadata accessor for PartiallyOrderedReferenceMap);
    sub_1ADDDF7A8(v23, v24, *(v34 + *(v30 + 20)), &v116);
    sub_1ADDD872C(v34, type metadata accessor for PartiallyOrderedReferenceMap);
    if (v118)
    {
      v99 = v29;
      v100 = v28;
      v101 = v33;
      sub_1ADDDC21C(v116, v117, v118, v119, v120, v121);
      swift_beginAccess();
      sub_1ADDD86D8(v23, v24);
      v35 = sub_1ADDE0110(v115, v23, v24);
      swift_endAccess();
      sub_1ADDCC35C(v115[0], v115[1]);
      if (v35)
      {
        swift_beginAccess();
        v113 = v23;
        v114 = v24;
        sub_1ADDD86D8(v23, v24);
        v37 = sub_1ADDE13D8(&v116, &v113);
        v38 = v100;
        v39 = v99;
        if (v36[2])
        {
          v96 = *v36;
          *v36 = v99;
          v95 = v36[3];
          v40 = v106;
          v36[2] = v106;
          v36[3] = v32;

          v37(&v116, 0);
          swift_endAccess();

          sub_1ADDDC21C(v39, v38, v40, v32, v31, v101);
          sub_1ADDCC35C(v113, v114);
LABEL_15:
          sub_1ADDCC35C(v23, v24);
          v5 = v107;
          v21 = v102;
          v20 = v105;
          goto LABEL_4;
        }

        v37(&v116, 0);
        sub_1ADDCC35C(v113, v114);
        swift_endAccess();
        v41 = v39;
        v42 = v38;
      }

      else
      {
        v41 = v99;
        v42 = v100;
      }

      v43 = v106;
      v44 = v32;
      v45 = v31;
      v46 = v101;
    }

    else
    {
      v41 = v29;
      v42 = v28;
      v43 = v106;
      v44 = v32;
      v45 = v31;
      v46 = v33;
    }

    sub_1ADDDC21C(v41, v42, v43, v44, v45, v46);
    goto LABEL_15;
  }

LABEL_16:

  v47 = *(v94 + 16);
  if (v47)
  {
    v48 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    swift_beginAccess();
    swift_beginAccess();
    v49 = (v94 + 40);
    v100 = v48;
    do
    {
      v51 = *(v49 - 1);
      v50 = *v49;
      v52 = v104;
      sub_1ADECD9E8(v109 + v48, v104, type metadata accessor for PartiallyOrderedReferenceMap);
      v53 = v48;
      v54 = *(v52 + *(v5 + 20));
      sub_1ADDD86D8(v51, v50);
      sub_1ADDDF7A8(v51, v50, v54, &v116);
      sub_1ADDD872C(v52, type metadata accessor for PartiallyOrderedReferenceMap);
      if (v118)
      {
        v105 = v47;
        v106 = v118;
        v55 = v5;
        v57 = v116;
        v56 = v117;
        v58 = v119;
        v59 = v120;
        v60 = v121;
        v61 = v108 + v53;
        v62 = v98;
        sub_1ADECD9E8(v61, v98, type metadata accessor for PartiallyOrderedReferenceMap);
        sub_1ADDDF7A8(v51, v50, *(v62 + *(v55 + 20)), &v116);
        sub_1ADDD872C(v62, type metadata accessor for PartiallyOrderedReferenceMap);
        if (v118)
        {
          v101 = v56;
          v63 = v58;
          v102 = v59;
          v103 = v60;
          sub_1ADDDC21C(v116, v117, v118, v119, v120, v121);
          swift_beginAccess();
          sub_1ADDD86D8(v51, v50);
          v64 = sub_1ADDE0110(v112, v51, v50);
          swift_endAccess();
          sub_1ADDCC35C(v112[0], v112[1]);
          if (v64)
          {
            v65 = v100;
            swift_beginAccess();
            v110 = v51;
            v111 = v50;
            sub_1ADDD86D8(v51, v50);
            v48 = v65;
            v67 = sub_1ADDE13D8(&v116, &v110);
            v68 = v63;
            v69 = v57;
            v47 = v105;
            if (v66[2])
            {
              v99 = *v66;
              *v66 = v69;
              v97 = v66[3];
              v70 = v106;
              v66[2] = v106;
              v66[3] = v68;

              v67(&v116, 0);
              swift_endAccess();

              sub_1ADDDC21C(v69, v101, v70, v68, v102, v103);
              sub_1ADDCC35C(v110, v111);
            }

            else
            {
              v67(&v116, 0);
              sub_1ADDCC35C(v110, v111);
              swift_endAccess();
              sub_1ADDDC21C(v69, v101, v106, v63, v102, v103);
            }

            sub_1ADDCC35C(v51, v50);
            v5 = v107;
            goto LABEL_19;
          }

          v71 = v57;
          v72 = v101;
          v73 = v106;
          v74 = v58;
          v75 = v102;
          v76 = v103;
        }

        else
        {
          v71 = v57;
          v72 = v56;
          v73 = v106;
          v74 = v58;
          v75 = v59;
          v76 = v60;
        }

        sub_1ADDDC21C(v71, v72, v73, v74, v75, v76);
        sub_1ADDCC35C(v51, v50);
        v5 = v107;
        v48 = v100;
        v47 = v105;
      }

      else
      {
        sub_1ADDCC35C(v51, v50);
        v48 = v53;
      }

LABEL_19:
      v49 += 2;
      --v47;
    }

    while (v47);
  }

  swift_beginAccess();
  v77 = v122;

  v79 = v108;
  v80 = sub_1ADEB89D8(v78, v109);

  v81 = v88[1];
  v82 = v89;
  *v89 = *v88;
  v82[1] = v81;

  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  v83 = v90;
  sub_1AE23BFBC();
  v84 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  swift_beginAccess();
  (*(v91 + 40))(v79 + v84, v83, v92);
  swift_endAccess();
  swift_beginAccess();

  sub_1AE00F014(v85);
  sub_1AE00F014(v80);
  swift_endAccess();
  v86 = *(v77 + 16);

  return v86 != 0;
}

uint64_t sub_1ADEB86C4(uint64_t *a1)
{
  v3 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v1 + v9, v6, type metadata accessor for PartiallyOrderedReferenceMap);
  v10 = &v6[*(v4 + 28)];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);

  sub_1ADEBE8DC(v14);
  v16 = v15;
  sub_1ADDD872C(v6, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1ADECD850(v43);
  *(&v47[5] + 8) = v43[5];
  *(&v47[6] + 8) = v43[6];
  *(&v47[7] + 8) = v44[0];
  *(&v47[8] + 3) = *(v44 + 11);
  *(&v47[1] + 8) = v43[1];
  *(&v47[2] + 8) = v43[2];
  *(&v47[3] + 8) = v43[3];
  *(&v47[4] + 8) = v43[4];
  *(v47 + 8) = v43[0];
  *&v45 = v11;
  *(&v45 + 1) = v12;
  *&v46 = v13;
  *(&v46 + 1) = v16;
  *&v47[0] = 0;
  *(&v47[9] + 1) = v7;
  *&v48 = v8;
  BYTE8(v48) = 0;
  v49 = 0;
  v42 = MEMORY[0x1E69E7CC0];

  sub_1ADE6F2E4(0, 0, 0);
  v17 = v42;
  v38 = v47[8];
  v39 = v47[9];
  v40 = v48;
  v41 = v49;
  v34 = v47[4];
  v35 = v47[5];
  v36 = v47[6];
  v37 = v47[7];
  v30 = v47[0];
  v31 = v47[1];
  v32 = v47[2];
  v33 = v47[3];
  v28 = v45;
  v29 = v46;
  sub_1ADECD86C(&v45, v26);
  while (1)
  {
    sub_1AE03163C(v23);
    if (!v24)
    {
      break;
    }

    v18 = v23[0];

    v42 = v17;
    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1ADE6F2E4((v19 > 1), v20 + 1, 1);
      v17 = v42;
    }

    *(v17 + 16) = v20 + 1;
    *(v17 + 16 * v20 + 32) = v18;
  }

  sub_1ADECD8C8(&v45);
  v26[10] = v38;
  v26[11] = v39;
  v26[12] = v40;
  v27 = v41;
  v26[6] = v34;
  v26[7] = v35;
  v26[8] = v36;
  v26[9] = v37;
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v26[5] = v33;
  v26[0] = v28;
  v26[1] = v29;
  sub_1ADECD8C8(v26);
  v22[0] = v23[0];
  v22[1] = v23[1];
  v22[2] = v24;
  v22[3] = v25;
  sub_1ADDCEDE0(v22, &qword_1EB5BA980, &qword_1AE245630);
  return v17;
}

uint64_t sub_1ADEB89D8(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v111 = a2;
  v116 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v116);
  v110 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = a1;
  v126 = MEMORY[0x1E69E7CD0];
  v8 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v9 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  v105[0] = v5;
  if (!v9)
  {
    v55 = a1;
    goto LABEL_30;
  }

  v109 = v8;
  v108 = v5 + v8;
  while (2)
  {
    v18 = v4;
    sub_1ADECBAD4(a1, v5);
    v20 = v19;

    if (v18)
    {
LABEL_31:
    }

    v107 = 0;
    v106 = v20;
    if ((v20 & 0xC000000000000001) != 0)
    {

      sub_1AE23D93C();
      type metadata accessor for AnyReference();
      sub_1ADDE5F54(&qword_1EB5B9508, type metadata accessor for AnyReference, &unk_1AE24E640);
      sub_1AE23D36C();
      v20 = v127;
      v21 = v128;
      v22 = v129;
      v23 = v130;
      v24 = v131;
    }

    else
    {
      v25 = -1 << *(v20 + 32);
      v21 = v20 + 56;
      v22 = ~v25;
      v26 = -v25;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v24 = v27 & *(v20 + 56);

      v23 = 0;
    }

    v105[1] = v22;
    v28 = (v22 + 64) >> 6;
    v114 = v28;
    v113 = v21;
    v112 = v20;
    while (v20 < 0)
    {
      v34 = sub_1AE23D9AC();
      if (!v34)
      {
        goto LABEL_3;
      }

      v119[0] = v34;
      type metadata accessor for AnyReference();
      swift_dynamicCast();
      v33 = v120;
      v31 = v23;
      v32 = v24;
      if (!v120)
      {
        goto LABEL_3;
      }

LABEL_23:
      v115 = v32;
      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      v117 = v33;
      v37 = v111;
      swift_beginAccess();
      v38 = v37 + v8;
      v39 = v110;
      sub_1ADECD9E8(v38, v110, type metadata accessor for PartiallyOrderedReferenceMap);
      sub_1ADDDF7A8(v36, v35, *(v39 + *(v116 + 20)), &v120);
      sub_1ADDD872C(v39, type metadata accessor for PartiallyOrderedReferenceMap);
      v40 = v122;
      if (!v122)
      {
        goto LABEL_65;
      }

      v41 = v120;
      if (!v120)
      {
        goto LABEL_66;
      }

      v42 = v121;
      v43 = v123;
      v44 = v124;
      v45 = v125;

      v46 = v117;
      sub_1ADEB7058(v117, v41, &v120);

      v47 = v120;

      sub_1ADDDC21C(v41, v42, v40, v43, v44, v45);

      v48 = MEMORY[0x1E69E7CC0];
      v49 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v50 = sub_1ADDD9ECC(v48);
      sub_1ADDDA5BC(v48);
      sub_1ADDD9ECC(v48);

      swift_bridgeObjectRelease_n();
      v132 = v47;
      *&v133 = v40;
      *(&v133 + 1) = v43;
      v134 = v49;
      v135 = v50;
      v52 = *(v46 + 16);
      v51 = *(v46 + 24);
      v53 = v108;
      swift_beginAccess();
      v54 = v53 + *(v116 + 20);
      sub_1ADDD86D8(v52, v51);
      sub_1ADDDA6BC(&v132, &v120);
      sub_1ADDDA718(&v132, v52, v51);
      ++*(v54 + 16);
      v136 = v133;
      if (*(*(&v133 + 1) + 16))
      {
        sub_1ADDD86D8(v52, v51);
        sub_1ADDD7B0C(&v136, &v120);
        sub_1ADDDB0F8(&v120, v52, v51);
        sub_1ADDCC35C(v120, v121);
      }

      else
      {
        sub_1ADDD7B0C(&v136, &v120);
      }

      v21 = v113;
      v20 = v112;
      v120 = v52;
      v121 = v51;
      v118 = v136;
      sub_1ADDDAD3C(&v120, &v118);

      swift_endAccess();

      sub_1ADDCC35C(v52, v51);
      sub_1ADECDB64(&v132);
      v23 = v31;
      v24 = v115;
      v8 = v109;
      v28 = v114;
    }

    v29 = v23;
    v30 = v24;
    v31 = v23;
    if (!v24)
    {
      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31 >= v28)
        {
          goto LABEL_3;
        }

        v30 = *(v21 + 8 * v31);
        ++v29;
        if (v30)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_61;
    }

LABEL_19:
    v32 = (v30 - 1) & v30;

    if (v33)
    {
      goto LABEL_23;
    }

LABEL_3:
    sub_1ADDDCE74(v20);
    v10 = v106;
    v11 = v107;
    sub_1ADF98C9C(v106);
    v4 = v11;
    a1 = sub_1ADF7E6A4(v12, v13, v14);

    sub_1AE00F014(v15);
    sub_1ADF98FF0(v10);
    v17 = v16;

    sub_1AE017714(v17);

    v5 = v105[0];
    if (*(a1 + 16))
    {
      continue;
    }

    break;
  }

  v55 = v137;
LABEL_30:

  sub_1ADEBD464(v55);
  v107 = v4;
  if (v4)
  {
    goto LABEL_31;
  }

  v58 = v56;

  v59 = 0;
  v60 = v58 + 56;
  v61 = 1 << *(v58 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v58 + 56);
  v117 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  v64 = (v61 + 63) >> 6;
  v115 = v58 + 56;
  v114 = v64;
  v116 = v58;
  while (v63)
  {
LABEL_42:
    v67 = *(*(v58 + 48) + ((v59 << 9) | (8 * __clz(__rbit64(v63)))));
    v68 = *(v67 + 16);
    v69 = *(v67 + 24);
    v70 = v111;
    v71 = v117;
    swift_beginAccess();
    v72 = *(v70 + v71);
    v73 = *(v72 + 16);

    sub_1ADDD86D8(v68, v69);
    if (!v73)
    {
      goto LABEL_67;
    }

    v74 = sub_1ADDDE7CC(v68, v69);
    if ((v75 & 1) == 0)
    {
      goto LABEL_67;
    }

    v76 = *(*(v72 + 56) + 16 * v74);

    if (!v76)
    {
      goto LABEL_67;
    }

    swift_endAccess();

    sub_1ADDCC35C(v68, v69);
    v77 = v117;
    swift_beginAccess();
    v78 = *(v5 + v77);
    if (*(v78 + 16))
    {
      v79 = *(v76 + 16);
      v80 = *(v76 + 24);
      sub_1ADDD86D8(v79, v80);
      v81 = sub_1ADDDE7CC(v79, v80);
      if (v82)
      {
        v83 = *(*(v78 + 56) + 16 * v81);

        sub_1ADDCC35C(v79, v80);

        if (v83)
        {
          goto LABEL_62;
        }
      }

      else
      {
        sub_1ADDCC35C(v79, v80);
      }
    }

    v85 = *(v76 + 16);
    v84 = *(v76 + 24);

    sub_1ADDD86D8(v85, v84);
    v86 = v117;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v5;
    v89 = isUniquelyReferenced_nonNull_native;
    v119[0] = *(v88 + v86);
    v90 = v119[0];
    *(v88 + v86) = 0x8000000000000000;
    v91 = sub_1ADDDE7CC(v85, v84);
    v93 = *(v90 + 16);
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      goto LABEL_63;
    }

    v97 = v92;
    if (*(v90 + 24) >= v96)
    {
      if ((v89 & 1) == 0)
      {
        v104 = v91;
        sub_1ADF703A0();
        v91 = v104;
      }
    }

    else
    {
      sub_1ADF6AF70(v96, v89);
      v91 = sub_1ADDDE7CC(v85, v84);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_68;
      }
    }

    v5 = v105[0];
    v99 = v119[0];
    if (v97)
    {
      v65 = (*(v119[0] + 56) + 16 * v91);
      *v65 = v76;
      v65[1] = 0;

      sub_1ADDCC35C(v85, v84);
    }

    else
    {
      *(v119[0] + 8 * (v91 >> 6) + 64) |= 1 << v91;
      v100 = (v99[6] + 16 * v91);
      *v100 = v85;
      v100[1] = v84;
      v101 = (v99[7] + 16 * v91);
      *v101 = v76;
      v101[1] = 0;
      v102 = v99[2];
      v95 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v95)
      {
        goto LABEL_64;
      }

      v99[2] = v103;
    }

    v63 &= v63 - 1;
    *(v5 + v117) = v99;
    swift_endAccess();

    v58 = v116;
    v60 = v115;
    v64 = v114;
  }

  while (1)
  {
    v66 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v66 >= v64)
    {

      return v126;
    }

    v63 = *(v60 + 8 * v66);
    ++v59;
    if (v63)
    {
      v59 = v66;
      goto LABEL_42;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void sub_1ADEB9440(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v40 = a1[1];
    v3 = v2 + 64;
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v45 = v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    v7 = (v4 + 63) >> 6;
    v42 = *a1;

    v8 = 0;
    v43 = v7;
    v44 = v3;
    if (!v6)
    {
      goto LABEL_7;
    }

    do
    {
      while (1)
      {
        v11 = v8;
LABEL_17:
        v12 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(v42 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1ADDE4E28(*(v42 + 56) + 32 * v13, v48);
        *&v49 = v15;
        *(&v49 + 1) = v16;
        sub_1ADDEE390(v48, &v50);
        sub_1ADDD86D8(v15, v16);
LABEL_18:
        v52 = v49;
        v53[0] = v50;
        v53[1] = v51;
        if (!*(&v51 + 1))
        {

          v27 = 1 << *(v40 + 32);
          v28 = -1;
          if (v27 < 64)
          {
            v28 = ~(-1 << v27);
          }

          v29 = v28 & *(v40 + 64);
          v30 = (v27 + 63) >> 6;

          v31 = 0;
          while (v29)
          {
            v32 = v31;
LABEL_36:
            v33 = __clz(__rbit64(v29));
            v29 &= v29 - 1;
            v34 = v33 | (v32 << 6);
            v35 = *(v40 + 48);
            *&v48[0] = *(*(v40 + 56) + 8 * v34);
            v49 = *(v35 + 16 * v34);
            v36 = *(&v49 + 1);
            v37 = v49;
            sub_1ADDD86D8(v49, *(&v49 + 1));
            sub_1ADDD86D8(v37, v36);

            sub_1ADEAFE28(v48, &v49, &v52);
            sub_1ADDCC35C(v37, v36);
            sub_1ADDE158C(v37, v36);
            sub_1ADDCC35C(v52, *(&v52 + 1));
          }

          while (1)
          {
            v32 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_41;
            }

            if (v32 >= v30)
            {

              v38 = sub_1ADDD9D48(MEMORY[0x1E69E7CC0]);
              v39 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
              swift_beginAccess();
              *(v41 + v39) = v38;

              return;
            }

            v29 = *(v40 + 64 + 8 * v32);
            ++v31;
            if (v29)
            {
              v31 = v32;
              goto LABEL_36;
            }
          }
        }

        v17 = v52;
        sub_1ADDEE390(v53, v48);
        swift_beginAccess();
        v18 = *(v45 + *(type metadata accessor for PartiallyOrderedReferenceMap(0) + 20));
        sub_1ADDD86D8(v17, *(&v17 + 1));
        sub_1ADDDF7A8(v17, *(&v17 + 1), v18, &v49);
        v19 = v49;
        v20 = v50;
        v21 = v51;
        sub_1ADDDDE40(v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1));
        sub_1ADDDC21C(v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1));
        swift_endAccess();
        sub_1ADDCC35C(v17, *(&v17 + 1));
        if (v20)
        {
          break;
        }

        sub_1ADDCC35C(v17, *(&v17 + 1));
        __swift_destroy_boxed_opaque_existential_1(v48);
        v7 = v43;
        v3 = v44;
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      sub_1ADDDC21C(v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1));
      swift_beginAccess();
      v47 = v17;
      sub_1ADDD86D8(v17, *(&v17 + 1));
      v23 = sub_1ADDDD4A0(&v49, &v47);
      if (*(v22 + 16))
      {
        v24 = v22;
        sub_1ADDE4E28(v48, v46);
        if (!*v24)
        {
          goto LABEL_42;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *v24 = (*(**v24 + 168))();
        }

        v25 = *(&v17 + 1);
        v26 = v17;
        (*(**v24 + 144))(v46);
        (v23)(&v49, 0);
        swift_endAccess();
        sub_1ADDCEDE0(v46, &qword_1EB5BAA00, &qword_1AE2587A0);
        sub_1ADDCC35C(v47, *(&v47 + 1));
      }

      else
      {
        v25 = *(&v17 + 1);
        v26 = v17;
        (v23)(&v49, 0);
        sub_1ADDCC35C(v47, *(&v47 + 1));
        swift_endAccess();
      }

      v3 = v44;
      swift_beginAccess();
      sub_1ADDD86D8(v26, v25);
      sub_1ADDE0110(v46, v26, v25);
      swift_endAccess();
      sub_1ADDCC35C(v26, v25);
      sub_1ADDCC35C(v46[0], v46[1]);
      __swift_destroy_boxed_opaque_existential_1(v48);
      v7 = v43;
    }

    while (v6);
LABEL_7:
    if (v7 <= v8 + 1)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9 - 1;
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        v6 = 0;
        v51 = 0u;
        v8 = v10;
        v49 = 0u;
        v50 = 0u;
        goto LABEL_18;
      }

      v6 = *(v3 + 8 * v11);
      ++v8;
      if (v6)
      {
        v8 = v11;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}