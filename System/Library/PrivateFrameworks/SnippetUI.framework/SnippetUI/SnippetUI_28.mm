uint64_t sub_26A75D50C()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v17 = *(v0 + 280);
  v8 = *(v0 + 272);
  v16 = v8;
  if ((v17 & 1) == 0)
  {

    v9 = sub_26A851EA8();
    v10 = sub_26A8501F8();
    OUTLINED_FUNCTION_7_62(v9, &dword_26A48D000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v12, v13, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4DBD10(&v16, &qword_2803ABF98, &unk_26A85A380);
    (*(v3 + 8))(v7, v1);
    return v15;
  }

  return v8;
}

void *sub_26A75D648@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_26A75D680(a2, &v4);
  *a1 = v4;
  return result;
}

uint64_t sub_26A75D680@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a1;
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D88, &qword_26A880910);
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v5 = &v33 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D90, &qword_26A880918);
  MEMORY[0x28223BE20](v38);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = (&v33 - v9);
  v10 = sub_26A84F988();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D98, &qword_26A880920);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v33 - v15;
  v17 = type metadata accessor for ComponentSeparator(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26A75D50C();
  if (sub_26A61B05C(v20, &unk_287B13068) && !_UISolariumEnabled())
  {
    goto LABEL_9;
  }

  v34 = v13;
  v39 = v17;
  if (*(v2 + 240))
  {
    v45 = *(v2 + 264);
    v35 = v2;
    v36 = v7;
    v21 = *(v2 + 256);
    v44 = v21;
    if (v45 == 1)
    {
    }

    else
    {

      sub_26A51D0F8(&v44, &v43, &qword_2803B6DA0, &qword_26A880928);
      sub_26A851EA8();
      v33 = v10;
      v22 = sub_26A8501F8();
      sub_26A84EA78();

      v23 = v34;
      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A4DBD10(&v44, &qword_2803B6DA0, &qword_26A880928);
      (*(v11 + 8))(v23, v33);
      v21 = v43;
    }

    sub_26A66A04C(v21, v16);

    if (__swift_getEnumTagSinglePayload(v16, 1, v39) == 1)
    {
      sub_26A4DBD10(v16, &qword_2803B6D98, &qword_26A880920);
LABEL_9:
      (*(v3 + 16))(v5, v40, v41);
      sub_26A4DBCC8(&qword_2803B6DA8, &qword_2803B6D88, &qword_26A880910, MEMORY[0x277CE04B0]);
      result = sub_26A851248();
      *v42 = result;
      return result;
    }

    sub_26A66DC54(v16, v19);
    v25 = sub_26A84FBF8();
    v26 = v19;
    v27 = v37;
    *v37 = v25;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6DB0, &qword_26A880930) + 44);
    v29 = sub_26A75DC34(v26);
    v30 = *(v3 + 16);
    v31 = v41;
    v30(v5, v40, v41);
    v30(v28, v5, v31);
    *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6DB8, &qword_26A880938) + 48)) = v29;
    (*(v3 + 8))(v5, v31);
    sub_26A51D0F8(v27, v36, &qword_2803B6D90, &qword_26A880918);
    sub_26A4DBCC8(&qword_2803B6DC0, &qword_2803B6D90, &qword_26A880918, MEMORY[0x277CE1198]);
    v32 = sub_26A851248();
    sub_26A4DBD10(v27, &qword_2803B6D90, &qword_26A880918);
    *v42 = v32;
    return sub_26A75F4B0(v26);
  }

  else
  {
    type metadata accessor for ResponseSeparators(0);
    sub_26A75F50C(&qword_2803B2928, type metadata accessor for ResponseSeparators, &unk_26A870A3C);
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A75DC34(uint64_t a1)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69F0, &qword_26A880940);
  MEMORY[0x28223BE20](v59);
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &v53 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6DC8, &qword_26A880948);
  MEMORY[0x28223BE20](v56);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B69F8, &unk_26A880950);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A28, &qword_26A87F3C0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v17 = sub_26A84BBF8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 != *MEMORY[0x277D62F50] && v22 != *MEMORY[0x277D62F48])
  {
    if (v22 == *MEMORY[0x277D62F30])
    {
      *v13 = sub_26A84FBF8();
      *(v13 + 1) = 0;
      v13[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6A90, &unk_26A880960);
      sub_26A8512C8();
      sub_26A75F50C(&qword_2803B6A50, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
      sub_26A851318();
      *&v13[*(v8 + 36)] = 0x3FD3333333333333;
      sub_26A51D0F8(v13, v10, &qword_2803B69F8, &unk_26A880950);
      sub_26A74AF8C();
      v24 = sub_26A851248();
      v25 = v13;
      v26 = &qword_2803B69F8;
      v27 = &unk_26A880950;
LABEL_16:
      sub_26A4DBD10(v25, v26, v27);
      return v24;
    }

    if (v22 != *MEMORY[0x277D62F20])
    {
      if (v22 == *MEMORY[0x277D62F28])
      {
        v30 = v58;
        sub_26A8512B8();
        sub_26A851448();
        sub_26A84F028();
        v31 = (v30 + *(v14 + 36));
        v32 = v62;
        *v31 = v61;
        v31[1] = v32;
        v31[2] = v63;
        v33 = sub_26A850278();
        sub_26A75E31C(&v64);
        v34 = v66;
        sub_26A6AEE74(v60);
        v35 = v30 + *(v59 + 36);
        memcpy(v35, v60, 0xC0uLL);
        v36 = v65;
        *(v35 + 192) = v64;
        *(v35 + 208) = v36;
        *(v35 + 224) = v34;
        *(v35 + 232) = v33;
        v37 = &qword_2803B69F0;
        v38 = &qword_26A880940;
        sub_26A51D0F8(v30, v57, &qword_2803B69F0, &qword_26A880940);
        sub_26A74B0D0();
        v24 = sub_26A851248();
        v25 = v30;
      }

      else
      {
        if (v22 != *MEMORY[0x277D62F58])
        {
          if (v22 != *MEMORY[0x277D62F38])
          {
            v24 = sub_26A851248();
            (*(v18 + 8))(v21, v17);
            return v24;
          }

          return sub_26A851248();
        }

        v39 = v55;
        sub_26A8512B8();
        sub_26A851448();
        sub_26A84F028();
        v40 = (v39 + *(v14 + 36));
        v41 = v62;
        *v40 = v61;
        v40[1] = v41;
        v40[2] = v63;
        v42 = sub_26A850278();
        sub_26A75E31C(&v64);
        v43 = v66;
        sub_26A6AEE74(v60);
        v44 = v39 + *(v59 + 36);
        memcpy(v44, v60, 0xC0uLL);
        v45 = v65;
        *(v44 + 192) = v64;
        *(v44 + 208) = v45;
        *(v44 + 224) = v43;
        *(v44 + 232) = v42;
        v46 = sub_26A850298();
        sub_26A84ED48();
        v47 = v39 + *(v56 + 36);
        *v47 = v46;
        *(v47 + 8) = v48;
        *(v47 + 16) = v49;
        *(v47 + 24) = v50;
        *(v47 + 32) = v51;
        *(v47 + 40) = 0;
        v37 = &qword_2803B6DC8;
        v38 = &qword_26A880948;
        sub_26A51D0F8(v39, v54, &qword_2803B6DC8, &qword_26A880948);
        sub_26A75F554();
        v24 = sub_26A851248();
        v25 = v39;
      }

      v26 = v37;
      v27 = v38;
      goto LABEL_16;
    }

    sub_26A8512B8();
    sub_26A851448();
    sub_26A84F028();
    v28 = &v16[*(v14 + 36)];
    v29 = v60[1];
    *v28 = v60[0];
    *(v28 + 1) = v29;
    *(v28 + 2) = v60[2];
    sub_26A74AEA8();
  }

  return sub_26A851248();
}

void sub_26A75E31C(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D98, &qword_26A880920);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for ComponentSeparator(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  v13 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v19 = v18 - v17;
  v20 = sub_26A75D50C();
  if (sub_26A61B05C(v20, &unk_287B13248))
  {
LABEL_8:
    if (qword_2803A8CE0 != -1)
    {
      OUTLINED_FUNCTION_2_15(&qword_2803A8CE0);
    }

    OUTLINED_FUNCTION_9_55();

    goto LABEL_26;
  }

  v1 = *(v1 + 240);
  if (v1)
  {
    v48 = v15;
    v45 = v12;
    v46 = v13;
    v51 = *(v3 + 264);
    v21 = *(v3 + 256);
    v50 = v21;
    v47 = v51;
    if (v51 == 1)
    {
      swift_retain_n();
      v22 = v21;
    }

    else
    {
      swift_retain_n();
      sub_26A51D0F8(&v50, v49, &qword_2803B6DA0, &qword_26A880928);
      sub_26A851EA8();
      v23 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      OUTLINED_FUNCTION_6_61();
      sub_26A4DBD10(&v50, &qword_2803B6DA0, &qword_26A880928);
      (*(v48 + 8))(v19, v13);
      v22 = v49[0];
    }

    v12 = sub_26A66915C();

    v24 = COERCE_DOUBLE(sub_26A507558(v22, v12));
    v13 = v25;

    if (v13)
    {

      goto LABEL_8;
    }

    v26 = v21;
    if ((v47 & 1) == 0)
    {

      v12 = sub_26A851EA8();
      v27 = sub_26A8501F8();
      OUTLINED_FUNCTION_7_62(v12, &dword_26A48D000, v28, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v29, v30, MEMORY[0x277D84F90]);

      sub_26A84F978();
      OUTLINED_FUNCTION_6_61();
      sub_26A4DBD10(&v50, &qword_2803B6DA0, &qword_26A880928);
      (*(v48 + 8))(v19, v46);
      v26 = v49[0];
    }

    v2 = *&v24;
    sub_26A66A04C(v26, v7);

    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {

      sub_26A4DBD10(v7, &qword_2803B6D98, &qword_26A880920);
LABEL_24:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
      OUTLINED_FUNCTION_3_80(&qword_28157D8B8);
      v41 = sub_26A8516A8();
      sub_26A80D9E4(v41, v49, v24);
      goto LABEL_25;
    }

    v31 = v7;
    v32 = v45;
    sub_26A66DC54(v31, v45);
    if (*(v32 + *(v8 + 24)) != 1)
    {

      sub_26A75F4B0(v32);
      goto LABEL_24;
    }

    if ((v47 & 1) == 0)
    {

      v12 = sub_26A851EA8();
      v33 = sub_26A8501F8();
      OUTLINED_FUNCTION_7_62(v12, &dword_26A48D000, v34, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v35, v36, MEMORY[0x277D84F90]);

      sub_26A84F978();
      OUTLINED_FUNCTION_6_61();
      sub_26A4DBD10(&v50, &qword_2803B6DA0, &qword_26A880928);
      (*(v48 + 8))(v19, v46);
      v21 = v49[0];
    }

    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = sub_26A66915C();

      v1 = sub_26A507558(v21 + 1, v12);
      v13 = v37;

      v38 = *&v1;
      if (v13)
      {
        v38 = 0.0;
      }

      if (vabdd_f64(v24, v38) < 0.01)
      {
        v39 = *(v3 + 192) + v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
        OUTLINED_FUNCTION_3_80(&qword_28157D8B8);
        v40 = sub_26A8516A8();
        sub_26A80D9E4(v40, v49, v39);
        sub_26A75F4B0(v32);
LABEL_25:
        v2 = v49[4];
        v1 = v49[2];
        v3 = v49[3];
        v12 = v49[0];
        v13 = v49[1];
LABEL_26:
        *a1 = v12;
        a1[1] = v13;
        a1[2] = v1;
        a1[3] = v3;
        a1[4] = v2;
        return;
      }

      if (qword_2803A8CE0 == -1)
      {
LABEL_28:
        OUTLINED_FUNCTION_9_55();

        sub_26A75F4B0(v32);
        goto LABEL_26;
      }
    }

    OUTLINED_FUNCTION_2_15(&qword_2803A8CE0);
    goto LABEL_28;
  }

  type metadata accessor for ResponseSeparators(0);
  OUTLINED_FUNCTION_2_89();
  sub_26A75F50C(v42, v43, &unk_26A870A3C);
  sub_26A84F668();
  __break(1u);
}

uint64_t sub_26A75E980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v30 = a3;
  v31 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D68, &qword_26A8808E8);
  OUTLINED_FUNCTION_15();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v29[-v15];
  v17 = *(v10 + 16);
  (v17)(&v29[-v15], a1, v8, v14);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v18, v16, v8);
  v21 = v20 + v19;
  *v21 = a2;
  v22 = v30 & 1;
  *(v21 + 8) = v30 & 1;
  *(v21 + 16) = a5;
  sub_26A4C24D0(a2, v22);
  v23 = sub_26A851448();
  v25 = v24;
  v26 = v31;
  v17(v31, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D70, &qword_26A8808F0);
  v28 = (v26 + *(result + 36));
  *v28 = sub_26A75EFEC;
  v28[1] = v20;
  v28[2] = 0;
  v28[3] = v23;
  v28[4] = v25;
  return result;
}

uint64_t sub_26A75EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v21 = a2;
  v11 = sub_26A84F088();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_26A851098();
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  a4 &= 1u;
  *(v16 + 24) = a4;
  *(v16 + 32) = a6;
  (*(v12 + 32))(v16 + v15, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D68, &qword_26A8808E8);
  (*(*(v17 - 8) + 16))(a5, v21, v17);
  v18 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D78, &qword_26A8808F8) + 36));
  *v18 = v14;
  v18[1] = sub_26A75F0B8;
  v18[2] = v16;
  return sub_26A4C24D0(a3, a4);
}

void sub_26A75ED20(uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v9 = sub_26A84F988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D80, &unk_26A880900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  if ((a3 & 1) == 0)
  {

    sub_26A851EA8();
    v17 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a2, 0);
    (*(v10 + 8))(v12, v9);
    a2 = v18[0];
  }

  *(inited + 32) = a2;
  type metadata accessor for CGRect(0, v13, v14, v15);
  sub_26A84F098();
  *(inited + 40) = *&v18[2] + a5;
  *a4 = sub_26A8516A8();
}

uint64_t sub_26A75EFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6D68, &qword_26A8808E8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);

  return sub_26A75EB44(a1, v2 + v6, v8, v9, a2, v10);
}

void sub_26A75F0B8(uint64_t *a2@<X8>)
{
  sub_26A84F088();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);

  sub_26A75ED20(v4, v5, a2, v6);
}

uint64_t sub_26A75F14C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_26A71D074();
  v6 = v33[3];
  v7 = v33[5];
  v8 = v34;
  v29 = v35;
  v30 = v33[2];
  v9 = (v33[4] + 64) >> 6;

  if (v34)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
      v13 = *(*(v30 + 56) + v12);
      v33[0] = *(*(v30 + 48) + v12);
      v33[1] = v13;
      v29(v32, v33);
      v14 = v32[0];
      v15 = v32[1];
      v16 = *a5;
      v18 = sub_26A5484D4(v32[0]);
      v19 = v16[2];
      v20 = (v17 & 1) == 0;
      if (__OFADD__(v19, v20))
      {
        break;
      }

      v21 = v17;
      if (v16[3] >= v19 + v20)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC670, &qword_26A86E6E0);
          sub_26A8523F8();
        }
      }

      else
      {
        sub_26A71CC20();
        v22 = sub_26A5484D4(v14);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_23;
        }

        v18 = v22;
      }

      v8 &= v8 - 1;
      v24 = *a5;
      if (v21)
      {
        *(v24[7] + 8 * v18) = v15;
      }

      else
      {
        v24[(v18 >> 6) + 8] |= 1 << v18;
        *(v24[6] + 8 * v18) = v14;
        *(v24[7] + 8 * v18) = v15;
        v25 = v24[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_22;
        }

        v24[2] = v27;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        sub_26A55E6A0();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_26A852618();
  __break(1u);
  return result;
}

uint64_t sub_26A75F3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A549760(a3, a1);

  return sub_26A5136A0(a4, a2);
}

uint64_t sub_26A75F3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_26A75F14C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

double sub_26A75F46C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_26A75F3EC(&v5, *a1, *(a1 + 8));
  result = v5;
  *a2 = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_26A75F4B0(uint64_t a1)
{
  v2 = type metadata accessor for ComponentSeparator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A75F50C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A75F554()
{
  result = qword_2803B6DD0;
  if (!qword_2803B6DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6DC8, &qword_26A880948);
    sub_26A74B0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6DD0);
  }

  return result;
}

unint64_t sub_26A75F5E0()
{
  result = qword_28157FD30;
  if (!qword_28157FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD30);
  }

  return result;
}

unint64_t sub_26A75F644()
{
  result = qword_28157FE38;
  if (!qword_28157FE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6D70, &qword_26A8808F0);
    sub_26A4DBCC8(&qword_28157FBE0, &qword_2803B6D68, &qword_26A8808E8, MEMORY[0x277CE04B0]);
    sub_26A4DBCC8(&qword_28157FD60, &qword_2803B6DD8, &qword_26A8809C0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_80(unint64_t *a1)
{
  v4 = MEMORY[0x277D83B58];

  return sub_26A4DBCC8(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_6_61()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_7_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_26A84EA78();
}

uint64_t OUTLINED_FUNCTION_9_55()
{
}

uint64_t sub_26A75F7C4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_26A75F908@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SummaryItemAlignedTextView(0);
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A75FAF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryItemAlignedTextView(0);
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SummaryItemAlignedTextView.init(text1:text2:text3:text4:text5:text6:thumbnail:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a7;
  v43 = a6;
  v45 = a8;
  v14 = type metadata accessor for SummaryItemAlignedTextView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v14[5];
  *&v17[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v19 = v14[6];
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v20 = a1[3];
  v21 = a1[4];
  v22 = __swift_project_boxed_opaque_existential_1(a1, v20);
  *&v17[v14[7]] = (*(v21 + 8))(v20, v21);
  v44 = a2;
  sub_26A4DBD68(a2, v46, &qword_2803A91B8, &qword_26A8575C0);
  if (v47)
  {
    v23 = OUTLINED_FUNCTION_0_88();
    v24(v23);
    OUTLINED_FUNCTION_5_72();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8, &qword_26A8575C0);
    v22 = 0;
  }

  *&v17[v14[8]] = v22;
  v25 = a3;
  sub_26A4DBD68(a3, v46, &qword_2803A91B8, &qword_26A8575C0);
  if (v47)
  {
    v26 = OUTLINED_FUNCTION_0_88();
    v27(v26);
    OUTLINED_FUNCTION_5_72();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8, &qword_26A8575C0);
    v22 = 0;
  }

  v28 = a4;
  *&v17[v14[9]] = v22;
  sub_26A4DBD68(a4, v46, &qword_2803A91B8, &qword_26A8575C0);
  v29 = v43;
  if (v47)
  {
    v30 = OUTLINED_FUNCTION_0_88();
    v31(v30);
    OUTLINED_FUNCTION_5_72();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8, &qword_26A8575C0);
    v22 = 0;
  }

  *&v17[v14[10]] = v22;
  sub_26A4DBD68(a5, v46, &qword_2803A91B8, &qword_26A8575C0);
  if (v47)
  {
    v32 = OUTLINED_FUNCTION_0_88();
    v33(v32);
    OUTLINED_FUNCTION_5_72();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8, &qword_26A8575C0);
    v22 = 0;
  }

  *&v17[v14[11]] = v22;
  sub_26A4DBD68(v29, v46, &qword_2803A91B8, &qword_26A8575C0);
  if (v47)
  {
    v34 = OUTLINED_FUNCTION_0_88();
    v35(v34);
    OUTLINED_FUNCTION_5_72();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8, &qword_26A8575C0);
    v22 = 0;
  }

  *&v17[v14[12]] = v22;
  v36 = v42;
  sub_26A4DBD68(v42, v46, &qword_2803A91B8, &qword_26A8575C0);
  if (v47)
  {
    v41 = a1;
    v37 = OUTLINED_FUNCTION_0_88();
    v39 = v38(v37);
    OUTLINED_FUNCTION_4_75(v36);
    OUTLINED_FUNCTION_4_75(v29);
    OUTLINED_FUNCTION_4_75(a5);
    OUTLINED_FUNCTION_4_75(v28);
    a1 = v41;
    OUTLINED_FUNCTION_4_75(v25);
    OUTLINED_FUNCTION_4_75(v44);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    OUTLINED_FUNCTION_2_90(v36);
    OUTLINED_FUNCTION_2_90(v29);
    OUTLINED_FUNCTION_2_90(a5);
    OUTLINED_FUNCTION_2_90(v28);
    OUTLINED_FUNCTION_2_90(v25);
    OUTLINED_FUNCTION_2_90(v44);
    OUTLINED_FUNCTION_2_90(v46);
    v39 = 0;
  }

  *&v17[v14[13]] = v39;
  sub_26A760194(v17, v45);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SummaryItemAlignedTextView(uint64_t a1)
{
  result = qword_2803B6E18;
  if (!qword_2803B6E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A760194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemAlignedTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SummaryItemAlignedTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A75F908(&v15[-v7]);
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  sub_26A75F7C4();
  sub_26A75FAF0(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v16 = v1;
  sub_26A4CE9F8();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A68CCBC;
  *(v9 + 24) = 0;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6E10, &unk_26A880A88) + 36);
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + *(v11 + 44);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  *v10 = sub_26A4D1F7C;
  *(v10 + 8) = v9;
  return result;
}

uint64_t sub_26A760430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9850, &unk_26A855800);
  MEMORY[0x28223BE20](v42);
  v4 = (&v41 - v3);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6E38, &qword_26A880B50);
  MEMORY[0x28223BE20](v41);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9840, &qword_26A8557F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9830, &qword_26A8557F0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = sub_26A84F3A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A75FAF0(v16);
  v17 = sub_26A84F388();
  v18 = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v19 = sub_26A84FC08();
    sub_26A7608F8(v19);
    *v9 = v19;
    *(v9 + 1) = v20;
    v9[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6E48, &unk_26A880BC0);
    sub_26A7615DC(a1);
    sub_26A851458();
    sub_26A84F628();
    sub_26A4DBDB4(v9, v12, &qword_2803A9840, &qword_26A8557F8);
    memcpy(&v12[*(v10 + 36)], __src, 0x70uLL);
    v21 = &qword_2803A9830;
    v22 = &qword_26A8557F0;
    sub_26A4DBD68(v12, v6, &qword_2803A9830, &qword_26A8557F0);
    swift_storeEnumTagMultiPayload();
    sub_26A4D4554();
    sub_26A4D460C();
    sub_26A84FDF8();
    v23 = v12;
  }

  else
  {
    v24 = sub_26A7608F8(v18);
    *v4 = sub_26A84FA78();
    v4[1] = v24;
    *(v4 + 16) = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6E40, &qword_26A880B58);
    sub_26A760AB4(a1, v4 + *(v25 + 44));
    v26 = sub_26A850298();
    v27 = v26;
    sub_26A7608F8(v26);
    sub_26A84ED48();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9860, &qword_26A880B60) + 36);
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    KeyPath = swift_getKeyPath();
    v38 = swift_getKeyPath();
    v39 = v4 + *(v42 + 36);
    *v39 = KeyPath;
    v39[8] = 0;
    *(v39 + 2) = v38;
    *(v39 + 12) = 256;
    v21 = &qword_2803A9850;
    v22 = &unk_26A855800;
    sub_26A4DBD68(v4, v6, &qword_2803A9850, &unk_26A855800);
    swift_storeEnumTagMultiPayload();
    sub_26A4D4554();
    sub_26A4D460C();
    sub_26A84FDF8();
    v23 = v4;
  }

  return sub_26A4DBD10(v23, v21, v22);
}

uint64_t sub_26A760AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v3 = sub_26A84B1D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v21 - v12);
  v14 = *(a1 + *(type metadata accessor for SummaryItemAlignedTextView(0) + 52));
  (*(v4 + 104))(v6, *MEMORY[0x277D62B38], v3);
  KeyPath = swift_getKeyPath();
  v16 = (v13 + *(v8 + 44));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
  (*(v4 + 32))(v16 + v17, v6, v3);
  __swift_storeEnumTagSinglePayload(v16 + v17, 0, 1, v3);
  *v16 = KeyPath;
  *v13 = v14;

  v25[0] = sub_26A84FC08();
  v25[1] = 0;
  v26 = 0;
  sub_26A760D84(v22, v27);
  sub_26A4DBD68(v13, v10, &qword_2803AA438, &unk_26A855FC0);
  sub_26A4DBD68(v25, v24, &qword_2803B6E50, &qword_26A880BF8);
  v18 = v23;
  sub_26A4DBD68(v10, v23, &qword_2803AA438, &unk_26A855FC0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6E58, &qword_26A880C00);
  sub_26A4DBD68(v24, v18 + *(v19 + 48), &qword_2803B6E50, &qword_26A880BF8);
  sub_26A4DBD10(v25, &qword_2803B6E50, &qword_26A880BF8);
  sub_26A4DBD10(v13, &qword_2803AA438, &unk_26A855FC0);
  sub_26A4DBD10(v24, &qword_2803B6E50, &qword_26A880BF8);
  return sub_26A4DBD10(v10, &qword_2803AA438, &unk_26A855FC0);
}

uint64_t sub_26A760D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = sub_26A84FA38();
  v14[1] = 0;
  v15 = 1;
  sub_26A760F3C(a1, v16);
  v16[79] = sub_26A84FBD8();
  v16[80] = sub_26A48F9E4;
  v16[81] = 0;
  v11[0] = sub_26A84FA38();
  v11[1] = 0;
  v12 = 1;
  sub_26A761194(a1, v13);
  v8[0] = sub_26A84FA38();
  v8[1] = 0;
  v9 = 1;
  sub_26A7613B8(a1, v10);
  sub_26A4DBD68(v14, v7, &qword_2803B6E60, &qword_26A880C08);
  sub_26A4DBD68(v11, v6, &qword_2803B6E68, &qword_26A880C10);
  sub_26A4DBD68(v8, v5, &qword_2803B6E68, &qword_26A880C10);
  sub_26A4DBD68(v7, a2, &qword_2803B6E60, &qword_26A880C08);
  sub_26A4DBD68(v6, a2 + 680, &qword_2803B6E68, &qword_26A880C10);
  sub_26A4DBD68(v5, a2 + 1336, &qword_2803B6E68, &qword_26A880C10);
  sub_26A4DBD10(v8, &qword_2803B6E68, &qword_26A880C10);
  sub_26A4DBD10(v11, &qword_2803B6E68, &qword_26A880C10);
  sub_26A4DBD10(v14, &qword_2803B6E60, &qword_26A880C08);
  sub_26A4DBD10(v5, &qword_2803B6E68, &qword_26A880C10);
  sub_26A4DBD10(v6, &qword_2803B6E68, &qword_26A880C10);
  return sub_26A4DBD10(v7, &qword_2803B6E60, &qword_26A880C08);
}

uint64_t sub_26A760F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemAlignedTextView(0);
  v5 = *(a1 + *(v4 + 28));
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v16, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v15, __src, sizeof(v15));
  v16[11] = 0;
  v16[10] = sub_26A80A810;
  v14 = v5;
  v16[12] = swift_getKeyPath();
  v16[13] = 1;
  v17 = 0;
  v6 = *(a1 + *(v4 + 40));
  v7 = qword_28157E6A8;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588848, v13, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v19);
  memcpy(v12, v19, sizeof(v12));
  v13[11] = 0;
  v13[10] = sub_26A80A810;
  v11 = v6;
  sub_26A4DBD68(&v14, v10, &qword_2803B6E70, qword_26A880C50);
  sub_26A4DBD68(&v11, v9, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD68(v10, a2, &qword_2803B6E70, qword_26A880C50);
  *(a2 + 320) = 0x4020000000000000;
  *(a2 + 328) = 0;
  sub_26A4DBD68(v9, a2 + 336, &qword_2803AAFE0, &qword_26A857AA0);

  sub_26A4DBD10(&v11, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(&v14, &qword_2803B6E70, qword_26A880C50);
  sub_26A4DBD10(v9, &qword_2803AAFE0, &qword_26A857AA0);
  return sub_26A4DBD10(v10, &qword_2803B6E70, qword_26A880C50);
}

uint64_t sub_26A761194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemAlignedTextView(0);
  v5 = *(a1 + *(v4 + 32));
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588848, v15, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v14, __src, sizeof(v14));
  v15[11] = 0;
  v15[10] = sub_26A80A810;
  v13 = v5;
  v15[12] = swift_getKeyPath();
  v15[13] = 1;
  v16 = 0;
  v6 = *(a1 + *(v4 + 44));
  sub_26A4DBD68(&unk_281588848, v12, &qword_2803AA880, &unk_26A8567F0);

  sub_26A6AEE74(v18);
  memcpy(v11, v18, sizeof(v11));
  v12[11] = 0;
  v12[10] = sub_26A80A810;
  v10 = v6;
  sub_26A4DBD68(&v13, v9, &qword_2803B21E8, &unk_26A86FE00);
  sub_26A4DBD68(&v10, v8, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD68(v9, a2, &qword_2803B21E8, &unk_26A86FE00);
  *(a2 + 320) = 0x4020000000000000;
  *(a2 + 328) = 0;
  sub_26A4DBD68(v8, a2 + 336, &qword_2803AAFE0, &qword_26A857AA0);

  sub_26A4DBD10(&v10, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(&v13, &qword_2803B21E8, &unk_26A86FE00);
  sub_26A4DBD10(v8, &qword_2803AAFE0, &qword_26A857AA0);
  return sub_26A4DBD10(v9, &qword_2803B21E8, &unk_26A86FE00);
}

uint64_t sub_26A7613B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemAlignedTextView(0);
  v5 = *(a1 + *(v4 + 36));
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588848, v15, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v14, __src, sizeof(v14));
  v15[11] = 0;
  v15[10] = sub_26A80A810;
  v13 = v5;
  v15[12] = swift_getKeyPath();
  v15[13] = 1;
  v16 = 0;
  v6 = *(a1 + *(v4 + 48));
  sub_26A4DBD68(&unk_281588848, v12, &qword_2803AA880, &unk_26A8567F0);

  sub_26A6AEE74(v18);
  memcpy(v11, v18, sizeof(v11));
  v12[11] = 0;
  v12[10] = sub_26A80A810;
  v10 = v6;
  sub_26A4DBD68(&v13, v9, &qword_2803B21E8, &unk_26A86FE00);
  sub_26A4DBD68(&v10, v8, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD68(v9, a2, &qword_2803B21E8, &unk_26A86FE00);
  *(a2 + 320) = 0x4020000000000000;
  *(a2 + 328) = 0;
  sub_26A4DBD68(v8, a2 + 336, &qword_2803AAFE0, &qword_26A857AA0);

  sub_26A4DBD10(&v10, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(&v13, &qword_2803B21E8, &unk_26A86FE00);
  sub_26A4DBD10(v8, &qword_2803AAFE0, &qword_26A857AA0);
  return sub_26A4DBD10(v9, &qword_2803B21E8, &unk_26A86FE00);
}

uint64_t sub_26A7615DC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v31 = v1;
  v33 = v3;
  v4 = sub_26A84B1D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v31 - v12);
  v14 = type metadata accessor for SummaryItemAlignedTextView(0);
  v15 = *(v2 + v14[13]);
  (*(v5 + 104))(v7, *MEMORY[0x277D62B38], v4);
  KeyPath = swift_getKeyPath();
  v17 = (v13 + *(v9 + 44));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
  (*(v5 + 32))(v17 + v18, v7, v4);
  __swift_storeEnumTagSinglePayload(v17 + v18, 0, 1, v4);
  *v17 = KeyPath;
  v32 = v13;
  *v13 = v15;
  v19 = v31;
  v20 = *(v31 + v14[7]);
  v21 = qword_28157E6C0;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v59, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v60);
  memcpy(v58, v60, sizeof(v58));
  v59[11] = 0;
  v59[10] = sub_26A80A810;
  v57 = v20;
  v22 = *(v19 + v14[10]);
  v23 = qword_28157E6A8;

  if (v23 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588848, v56, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v61);
  memcpy(v55, v61, sizeof(v55));
  v56[11] = 0;
  v56[10] = sub_26A80A810;
  v54 = v22;
  v24 = *(v19 + v14[8]);
  sub_26A4DBD68(&unk_281588848, v53, &qword_2803AA880, &unk_26A8567F0);

  sub_26A6AEE74(v62);
  memcpy(v52, v62, sizeof(v52));
  v53[11] = 0;
  v53[10] = sub_26A80A810;
  v51 = v24;
  v25 = *(v19 + v14[11]);
  sub_26A4DBD68(&unk_281588848, v50, &qword_2803AA880, &unk_26A8567F0);

  sub_26A6AEE74(v63);
  memcpy(v49, v63, sizeof(v49));
  v50[11] = 0;
  v50[10] = sub_26A80A810;
  v48 = v25;
  v26 = *(v19 + v14[9]);
  sub_26A4DBD68(&unk_281588848, v47, &qword_2803AA880, &unk_26A8567F0);

  sub_26A6AEE74(v64);
  memcpy(v46, v64, sizeof(v46));
  v47[11] = 0;
  v47[10] = sub_26A80A810;
  v45 = v26;
  v27 = *(v19 + v14[12]);
  sub_26A4DBD68(&unk_281588848, v44, &qword_2803AA880, &unk_26A8567F0);

  sub_26A6AEE74(v65);
  memcpy(v43, v65, sizeof(v43));
  v44[11] = 0;
  v44[10] = sub_26A80A810;
  v42 = v27;
  v28 = v32;
  v29 = v34;
  sub_26A4DBD68(v32, v34, &qword_2803AA438, &unk_26A855FC0);
  v41[0] = v29;
  sub_26A4DBD68(&v57, v40, &qword_2803A99A0, &unk_26A856800);
  v41[1] = v40;
  sub_26A4DBD68(&v54, v39, &qword_2803AAFE0, &qword_26A857AA0);
  v41[2] = v39;
  sub_26A4DBD68(&v51, v38, &qword_2803AAFE0, &qword_26A857AA0);
  v41[3] = v38;
  sub_26A4DBD68(&v48, v37, &qword_2803AAFE0, &qword_26A857AA0);
  v41[4] = v37;
  sub_26A4DBD68(&v45, v36, &qword_2803AAFE0, &qword_26A857AA0);
  v41[5] = v36;
  sub_26A4DBD68(&v42, v35, &qword_2803AAFE0, &qword_26A857AA0);
  v41[6] = v35;
  sub_26A594A3C(v41);

  sub_26A4DBD10(&v42, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(&v45, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(&v48, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(&v51, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(&v54, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(&v57, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD10(v28, &qword_2803AA438, &unk_26A855FC0);
  sub_26A4DBD10(v35, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(v36, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(v37, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(v38, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(v39, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(v40, &qword_2803A99A0, &unk_26A856800);
  return sub_26A4DBD10(v29, &qword_2803AA438, &unk_26A855FC0);
}

void sub_26A761C88(uint64_t a1)
{
  sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  if (v1 <= 0x3F)
  {
    sub_26A4D27F4(319);
    if (v2 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_26A4E5E18();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26A761D88()
{
  result = qword_2803B6E28;
  if (!qword_2803B6E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6E10, &unk_26A880A88);
    sub_26A4DBCC8(&qword_2803B6E30, &qword_2803A9818, &unk_26A880B40, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6E28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_90(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_75(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_5_72()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 - 120);
}

void sub_26A761EE8(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = [v3 text];
  if (v5)
  {
    v6 = v5;
    v65 = v2;
    RFTextProperty.asPartialText()(__dst);
    KeyPath = swift_getKeyPath();
    v9 = sub_26A6670BC(v8);
    v61 = KeyPath;
    v62 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6E78, &unk_26A880CE0);
    v10 = sub_26A7622A0();
    OUTLINED_FUNCTION_0_89(v10, v11, v12, v13, v14, v15, v16, v17, v56, a1, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], *&__src[176], *&__src[184], *&__src[192], *&__src[200], *&__src[208], *&__src[216], *&__src[224], *&__src[232], *&__src[240], *&__src[248], __dst[0]);
    v18 = [v3 text_compact];
    if (v18)
    {
      v19 = v18;
      RFTextProperty.asPartialText()(__src);

      v20 = swift_getKeyPath();
      v21 = [v3 text_compact];
      if (v21)
      {
        v23 = v21;
        v24 = sub_26A6670BC(v22);
      }

      else
      {
        v24 = 0;
      }

      v27 = memcpy(__dst, __src, 0xFAuLL);
      v61 = v20;
      v62 = v24;
      v26 = OUTLINED_FUNCTION_0_89(v27, v28, v29, v30, v31, v32, v33, v34, v57, v58, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], *&__src[176], *&__src[184], *&__src[192], *&__src[200], *&__src[208], *&__src[216], *&__src[224], *&__src[232], *&__src[240], *&__src[248], __dst[0]);
    }

    else
    {
      v26 = 0;
    }

    v35 = [v3 text_minimal];
    if (v35)
    {
      RFTextProperty.asPartialText()(__src);

      v36 = swift_getKeyPath();
      v37 = [v3 text_minimal];
      if (v37)
      {
        v39 = v37;
        v40 = sub_26A6670BC(v38);
      }

      else
      {
        v40 = 0;
      }

      v41 = memcpy(__dst, __src, 0xFAuLL);
      v61 = v36;
      v62 = v40;
      v35 = OUTLINED_FUNCTION_0_89(v41, v42, v43, v44, v45, v46, v47, v48, v57, v58, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], *&__src[176], *&__src[184], *&__src[192], *&__src[200], *&__src[208], *&__src[216], *&__src[224], *&__src[232], *&__src[240], *&__src[248], __dst[0]);
    }

    if (v26)
    {
      v49 = &protocol witness table for AnyView;
      v50 = MEMORY[0x277CE11C8];
      v51 = v26;
    }

    else
    {
      v51 = 0;
      v50 = 0;
      v49 = 0;
      __dst[1] = 0;
      __dst[2] = 0;
    }

    __dst[0] = v51;
    __dst[3] = v50;
    __dst[4] = v49;
    if (v35)
    {
      v52 = &protocol witness table for AnyView;
      v53 = MEMORY[0x277CE11C8];
    }

    else
    {
      v53 = 0;
      v52 = 0;
      *&__src[8] = 0;
      *&__src[16] = 0;
    }

    *__src = v35;
    *&__src[24] = v53;
    *&__src[32] = v52;

    sub_26A762390(v54, __dst, __src, v63);

    v55 = v63[1];
    *v58 = v63[0];
    *(v58 + 16) = v55;
    *(v58 + 32) = v64;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = &unk_287B13140;
    *(v25 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_26A7621DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A744D2C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_26A7622A0()
{
  result = qword_2803B6E80;
  if (!qword_2803B6E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6E78, &unk_26A880CE0);
    sub_26A4EC4B4();
    sub_26A76232C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6E80);
  }

  return result;
}

unint64_t sub_26A76232C()
{
  result = qword_28157FB50;
  if (!qword_28157FB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FB50);
  }

  return result;
}

uint64_t sub_26A762390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_26A5582C8(a2, v15);
  v9 = v16;
  if (v16)
  {
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = (*(v10 + 8))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_26A537648(v15);
  }

  sub_26A5582C8(a3, v15);
  v11 = v16;
  if (v16)
  {
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v13 = (*(v12 + 8))(v11, v12);
    sub_26A537648(a3);
    sub_26A537648(a2);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_26A537648(a3);
    sub_26A537648(a2);
    result = sub_26A537648(v15);
    v13 = 0;
  }

  *a4 = KeyPath;
  *(a4 + 8) = 0;
  *(a4 + 16) = a1;
  *(a4 + 24) = v9;
  *(a4 + 32) = v13;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_89(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  return sub_26A851248();
}

uint64_t sub_26A7624FC@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for SimpleItemRichView(0);
  MEMORY[0x28223BE20](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = v15 - v9;
  v11 = [v1 simple:v8 item:? rich:? card:?section];
  if (v11)
  {
    v12 = v11;
    sub_26A5C1320(v10);
    if (v2)
    {

      v13 = 0;
    }

    else
    {

      sub_26A762734(v10, v6);
      sub_26A5C1D00();
      v13 = sub_26A851248();
      sub_26A762798(v10);
    }
  }

  else
  {
    v13 = 0;
  }

  *a1 = swift_getKeyPath();
  *(a1 + 9) = 0;
  swift_unknownObjectWeakInit();
  result = swift_getKeyPath();
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  *(a1 + 40) = v13;
  return result;
}

uint64_t sub_26A762678@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A73D268();
  *a1 = result;
  return result;
}

uint64_t sub_26A7626A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_26A73D2A4(v1);
}

uint64_t sub_26A762734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleItemRichView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A762798(uint64_t a1)
{
  v2 = type metadata accessor for SimpleItemRichView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A7627F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = var50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26A762A60(v2))
  {
    sub_26A7EA53C([v2 image_style]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF860, &qword_26A8657D8);
    v10 = sub_26A84B058();
    OUTLINED_FUNCTION_15();
    v12 = v11;
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26A8570D0;
    (*(v12 + 104))(v14 + v13, *MEMORY[0x277D62A28], v10);
    sub_26A67BF28(v14);
    sub_26A84B1A8();

    (*(v6 + 8))(v9, v4);
    v15 = sub_26A84B718();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v15);
  }

  else
  {
    v17 = sub_26A851E98();
    LOBYTE(v19) = 2;
    sub_26A7A7A58(v17, 1, "SnippetUI/RFAvatarImage+ImageElement.swift", 42, 2, 16, "asImageElement()", 16, v19, v20, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], vars8);
    v18 = sub_26A84B718();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v18);
  }
}

uint64_t sub_26A762A60(void *a1)
{
  v1 = [a1 contact_ids];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A851A98();

  return v3;
}

unint64_t sub_26A762ABC()
{
  result = qword_2803B6E88;
  if (!qword_2803B6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6E88);
  }

  return result;
}

uint64_t sub_26A762B24()
{
  OUTLINED_FUNCTION_1_91();
  result = MEMORY[0x277D84F90];
  if (v0)
  {
    OUTLINED_FUNCTION_0_90();
    OUTLINED_FUNCTION_4_76(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23);
    do
    {
      if (v5 >= v3)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = *(v2 + 8 * v5);
      }

      v17 = 0.0;
      if (v5 < v4)
      {
        v17 = *(v6 + 8 * v5);
      }

      OUTLINED_FUNCTION_3_81();
      if (v20)
      {
        sub_26A7DCD20(v19 > 1, v1, 1);
        v18 = v24;
      }

      ++v5;
      result = OUTLINED_FUNCTION_2_91(v18, v17 + v16);
    }

    while (!v21);
  }

  return result;
}

uint64_t sub_26A762BF4()
{
  OUTLINED_FUNCTION_1_91();
  result = MEMORY[0x277D84F90];
  if (v0)
  {
    OUTLINED_FUNCTION_0_90();
    OUTLINED_FUNCTION_4_76(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23);
    do
    {
      if (v5 >= v3)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = *(v2 + 8 * v5);
      }

      v17 = 0.0;
      if (v5 < v4)
      {
        v17 = *(v6 + 8 * v5);
      }

      OUTLINED_FUNCTION_3_81();
      if (v20)
      {
        sub_26A7DCD20(v19 > 1, v1, 1);
        v18 = v24;
      }

      ++v5;
      result = OUTLINED_FUNCTION_2_91(v18, v16 - v17);
    }

    while (!v21);
  }

  return result;
}

void sub_26A762CC4(double a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A848F18();
      v2 = v6;
    }

    if (v3 > *(v2 + 16))
    {
      __break(1u);
    }

    else
    {
      v5 = 32;
      do
      {
        *(v2 + v5) = *(v2 + v5) * a1;
        v5 += 8;
        --v3;
      }

      while (v3);
      *v1 = v2;
    }
  }
}

double sub_26A762D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 32);
  result = 0.0;
  do
  {
    v4 = *v2++;
    result = result + v4 * v4;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_26A762D90()
{
  result = qword_2803B6E90;
  if (!qword_2803B6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6E90);
  }

  return result;
}

double sub_26A762DE4@<D0>(void *a1@<X8>)
{
  if (qword_2803A8E60 != -1)
  {
    swift_once();
  }

  *a1 = qword_2803D2430;

  return result;
}

uint64_t sub_26A762E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A762B24();
  *a1 = result;
  return result;
}

void sub_26A762E88(uint64_t *a1)
{
  v2 = sub_26A762B24();

  *a1 = v2;
}

uint64_t sub_26A762ECC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A762BF4();
  *a1 = result;
  return result;
}

void sub_26A762F04(uint64_t *a1)
{
  v2 = sub_26A762BF4();

  *a1 = v2;
}

void OUTLINED_FUNCTION_0_90()
{

  sub_26A7DCD20(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_2_91(uint64_t result, double a2)
{
  *(result + 16) = v2;
  *(result + 8 * v3 + 32) = a2;
  return result;
}

uint64_t sub_26A76300C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6E98, &qword_26A880F68);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6EA0, &unk_26A880F70);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  if (AFIsInternalInstall())
  {
    *v11 = sub_26A84FBF8();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6EB8, &qword_26A880F80);
    sub_26A7632F8(a2, a3, a1, &v11[*(v12 + 44)]);
    sub_26A4EA070(v11, v8, &qword_2803B6EA0, &unk_26A880F70);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A80, &qword_26A878640);
    sub_26A4DBCC8(&qword_2803B6EA8, &qword_2803B6EA0, &unk_26A880F70, MEMORY[0x277CE1198]);
    sub_26A4DBCC8(&qword_2803B6EB0, &qword_2803B4A80, &qword_26A878640, MEMORY[0x277CE04B0]);
    sub_26A84FDF8();
    return sub_26A4E2544(v11, &qword_2803B6EA0, &unk_26A880F70);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A80, &qword_26A878640);
    (*(*(v14 - 8) + 16))(v8, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBCC8(&qword_2803B6EA8, &qword_2803B6EA0, &unk_26A880F70, MEMORY[0x277CE1198]);
    sub_26A4DBCC8(&qword_2803B6EB0, &qword_2803B4A80, &qword_26A878640, MEMORY[0x277CE04B0]);
    return sub_26A84FDF8();
  }
}

uint64_t sub_26A7632F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v63 = a3;
  v64 = a4;
  v54 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4A88, &qword_26A878648);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v54 - v9;
  sub_26A850D68();
  v60 = sub_26A850E68();

  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  sub_26A850F08();
  v11 = *MEMORY[0x277CE1020];
  v12 = sub_26A850F68();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  v13 = sub_26A850F38();

  sub_26A4E2544(v10, &qword_2803AC918, &qword_26A85DBA0);
  v67[0] = v13;
  sub_26A8523D8();

  sub_26A850E58();
  v14 = sub_26A8506A8();
  v57 = v15;
  v58 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v59 = v19;

  v67[0] = 0;
  v67[1] = 0xE000000000000000;
  v68[0] = v14;
  v68[1] = v16;
  v56 = v18 & 1;
  LOBYTE(v68[2]) = v18 & 1;
  v68[3] = v20;
  sub_26A8523D8();
  MEMORY[0x26D663B00](32, 0xE100000000000000);
  v21 = sub_26A850718();
  v23 = v22;
  v68[0] = v21;
  v68[1] = v22;
  LOBYTE(v20) = v24 & 1;
  LOBYTE(v68[2]) = v24 & 1;
  v68[3] = v25;
  sub_26A8523D8();
  sub_26A4EC448(v21, v23, v20);

  MEMORY[0x26D663B00](8250, 0xE200000000000000);
  MEMORY[0x26D663B00](v54, v55);
  sub_26A850498();
  v26 = sub_26A850738();
  v28 = v27;
  LOBYTE(v20) = v29;
  v31 = v30;

  sub_26A851458();
  sub_26A84F628();
  LOBYTE(v13) = v20 & 1;
  v69 = v20 & 1;
  LOBYTE(v23) = sub_26A850238();
  sub_26A84ED48();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v70 = 0;
  LOBYTE(v14) = sub_26A8502A8();
  sub_26A84ED48();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v71 = 0;
  LOBYTE(v20) = sub_26A850248();
  v66[0] = v26;
  v66[1] = v28;
  LOBYTE(v66[2]) = v13;
  v66[3] = v31;
  memcpy(&v66[4], v73, 0x70uLL);
  LOBYTE(v66[18]) = v23;
  v66[19] = v33;
  v66[20] = v35;
  v66[21] = v37;
  v66[22] = v39;
  LOBYTE(v66[23]) = 0;
  LOBYTE(v66[24]) = v14;
  v66[25] = v41;
  v66[26] = v43;
  v66[27] = v45;
  v66[28] = v47;
  LOBYTE(v66[29]) = 0;
  *(&v66[29] + 1) = *v72;
  HIDWORD(v66[29]) = *&v72[3];
  v66[30] = v60;
  LOBYTE(v66[31]) = v20;

  v49 = v61;
  sub_26A6EB0C8(v48, v61);
  memcpy(v65, v66, sizeof(v65));
  v50 = v62;
  sub_26A4EA070(v49, v62, &qword_2803B4A88, &qword_26A878648);
  memcpy(v67, v65, 0xF9uLL);
  v51 = v64;
  memcpy(v64, v65, 0xF9uLL);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6EC0, &qword_26A880F88) + 48);
  sub_26A4EA070(v50, v52, &qword_2803B4A88, &qword_26A878648);
  sub_26A4EA070(v66, v68, &qword_2803B6EC8, &qword_26A880F90);
  sub_26A4EA070(v67, v68, &qword_2803B6EC8, &qword_26A880F90);
  sub_26A4EC448(v58, v57, v56);

  sub_26A4E2544(v66, &qword_2803B6EC8, &qword_26A880F90);
  sub_26A4E2544(v49, &qword_2803B4A88, &qword_26A878648);
  sub_26A4E2544(v50, &qword_2803B4A88, &qword_26A878648);
  memcpy(v68, v65, 0xF9uLL);
  return sub_26A4E2544(v68, &qword_2803B6EC8, &qword_26A880F90);
}

unint64_t sub_26A763928()
{
  result = qword_2803B6ED0;
  if (!qword_2803B6ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6ED8, qword_26A880F98);
    sub_26A4DBCC8(&qword_2803B6EA8, &qword_2803B6EA0, &unk_26A880F70, MEMORY[0x277CE1198]);
    sub_26A4DBCC8(&qword_2803B6EB0, &qword_2803B4A80, &qword_26A878640, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6ED0);
  }

  return result;
}

uint64_t sub_26A763A34@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 number];
  if (v4)
  {
    v5 = v4;
    *(&v24 + 1) = &type metadata for PartialText;
    v25 = &protocol witness table for PartialText;
    *&v23 = swift_allocObject();
    RFTextProperty.asPartialText()(v23 + 16);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
  }

  v6 = [v2 text_1];
  if (v6)
  {
    v7 = v6;
    *(&v21 + 1) = &type metadata for PartialText;
    v22 = &protocol witness table for PartialText;
    *&v20 = swift_allocObject();
    RFTextProperty.asPartialText()(v20 + 16);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  v8 = [v2 button];
  if (v8)
  {
    v9 = v8;
    *(&v18 + 1) = &type metadata for SearchUIButtonView;
    v19 = &off_287B20490;
    *&v17 = swift_allocObject();
    sub_26A6F9608(0, 0, v17 + 16, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  return FactItemHeroButtonView.init(number:text1:button:)(&v23, &v20, &v17, a1);
}

unint64_t sub_26A763BF8()
{
  result = qword_2803B6EE0;
  if (!qword_2803B6EE0)
  {
    type metadata accessor for FactItemHeroButtonView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6EE0);
  }

  return result;
}

BOOL sub_26A763C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A565064(v4);
  return v5 != 0;
}

uint64_t sub_26A763D50@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 number];
  if (v4)
  {
    v5 = v4;
    *(&v35 + 1) = &type metadata for PartialText;
    v36 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v34 = swift_allocObject();
    RFTextProperty.asPartialText()(v34 + 16);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  v6 = [v2 text_1];
  if (v6)
  {
    v7 = v6;
    *(&v32 + 1) = &type metadata for PartialText;
    v33 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v31 = swift_allocObject();
    RFTextProperty.asPartialText()(v31 + 16);
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
  }

  v8 = [v2 text_2];
  if (v8)
  {
    v9 = v8;
    *(&v29 + 1) = &type metadata for PartialText;
    v30 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v28 = swift_allocObject();
    RFTextProperty.asPartialText()(v28 + 16);
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  v10 = [v2 text_3];
  if (v10)
  {
    v11 = v10;
    *(&v26 + 1) = &type metadata for PartialText;
    v27 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v25 = swift_allocObject();
    RFTextProperty.asPartialText()(v25 + 16);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
  }

  v12 = [v2 text_4];
  if (v12 && (v13 = v12, sub_26A763FFC(), v15 = v14, v13, (v15 & 1) == 0) && (v16 = [v2 text_4]) != 0)
  {
    v17 = v16;
    RFTextProperty.asPartialText()(v21);

    *(&v23 + 1) = &type metadata for PartialText;
    v24 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v22 = swift_allocObject();
    memcpy((v22 + 16), v21, 0xFAuLL);
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
  }

  v18 = [v2 thumbnail];
  if (v18)
  {
    v19 = v18;
    *(&v21[1] + 1) = sub_26A84BD28();
    *&v21[2] = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(v21);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    memset(v21, 0, 40);
  }

  return FactItemDetailedNumberView.init(number:text1:text2:text3:text4:thumbnail:)(&v34, &v31, &v28, &v25, &v22, v21, a1);
}

void sub_26A763FFC()
{
  v1 = sub_26A7364C8(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_26A73670C();
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v24 = v2 + 32;
      v25 = v2 & 0xFFFFFFFFFFFFFF8;
      v27 = v3;
      v28 = v2;
      v26 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v6)
        {
          v7 = MEMORY[0x26D6644E0](v5, v2);
        }

        else
        {
          if (v5 >= *(v25 + 16))
          {
            goto LABEL_36;
          }

          v7 = *(v24 + 8 * v5);
        }

        v8 = v7;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        v10 = sub_26A589524(v7);
        if (v10)
        {
          v11 = v10;
          v29 = v8;
          v12 = v10 & 0xFFFFFFFFFFFFFF8;
          if (v10 >> 62)
          {
            v13 = sub_26A852168();
            if (v13)
            {
LABEL_12:
              v14 = 0;
              while (1)
              {
                if ((v11 & 0xC000000000000001) != 0)
                {
                  v15 = MEMORY[0x26D6644E0](v14, v11);
                }

                else
                {
                  if (v14 >= *(v12 + 16))
                  {
                    goto LABEL_34;
                  }

                  v15 = *(v11 + 8 * v14 + 32);
                }

                v16 = v15;
                v17 = v14 + 1;
                if (__OFADD__(v14, 1))
                {
                  break;
                }

                v18 = sub_26A58945C(v15);
                if (v19)
                {
                  v20 = v18;
                  v21 = v19;

                  v22 = HIBYTE(v21) & 0xF;
                  if ((v21 & 0x2000000000000000) == 0)
                  {
                    v22 = v20 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v22)
                  {

                    return;
                  }
                }

                v23 = [v16 inline:v24 image:?element];

                if (v23)
                {

                  return;
                }

                ++v14;
                if (v17 == v13)
                {
                  goto LABEL_24;
                }
              }

              __break(1u);
LABEL_34:
              __break(1u);
              break;
            }
          }

          else
          {
            v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v13)
            {
              goto LABEL_12;
            }
          }

LABEL_24:

          v4 = v27;
          v2 = v28;
          v6 = v26;
          v8 = v29;
        }

        if (v5 == v4)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

    else
    {
LABEL_29:
    }
  }
}

unint64_t sub_26A764284()
{
  result = qword_2803B6EE8;
  if (!qword_2803B6EE8)
  {
    type metadata accessor for FactItemDetailedNumberView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6EE8);
  }

  return result;
}

uint64_t IntentsUIStandardView.model.getter@<X0>(uint64_t a1@<X8>)
{
  sub_26A84C368();
  OUTLINED_FUNCTION_46();
  v6 = *(v5 + 16);

  return v6(a1, v2, v4);
}

uint64_t IntentsUIStandardView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A84C368();
  OUTLINED_FUNCTION_46();
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t IntentsUIStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6EF0, &qword_26A881050);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  v4 = v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6EF8, &qword_26A881058);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  v8 = v36 - v7;
  v36[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6F00, &qword_26A881060);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  v12 = type metadata accessor for CustomCanvasView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v13);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26A7649CC();
  v18 = (v17 >> 60) & 3;
  v36[4] = a1;
  if (v18)
  {
    if (v18 == 2)
    {
      v27 = sub_26A84FA78();
      v39 = 1;
      sub_26A764B3C(v42);
      memcpy(v40, v42, 0x61uLL);
      memcpy(v41, v42, 0x61uLL);
      sub_26A51D0F8(v40, v37, &qword_2803B6F08, &qword_26A881068);
      sub_26A4DBD10(v41, &qword_2803B6F08, &qword_26A881068);
      memcpy(&v38[7], v40, 0x61uLL);
      v28 = v39;
      v29 = sub_26A850248();
      v37[0] = 1;
      v42[0] = v27;
      v42[1] = 0;
      LOBYTE(v42[2]) = v28;
      memcpy(&v42[2] + 1, v38, 0x68uLL);
      LOBYTE(v42[16]) = v29;
      memset(&v42[17], 0, 32);
      LOBYTE(v42[21]) = 1;
      memcpy(v8, v42, 0xA9uLL);
      swift_storeEnumTagMultiPayload();
      sub_26A51D0F8(v42, v37, &qword_2803B6F10, &qword_26A881070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6F10, &qword_26A881070);
      OUTLINED_FUNCTION_1_92();
      sub_26A765294(v30, v31, &protocol conformance descriptor for CustomCanvasView);
      sub_26A764DE4();
      OUTLINED_FUNCTION_2_92();
      sub_26A84FDF8();
      sub_26A51D0F8(v11, v4, &qword_2803B6F00, &qword_26A881060);
      swift_storeEnumTagMultiPayload();
      sub_26A764ED4();
      sub_26A84FDF8();
      sub_26A4DBD10(v42, &qword_2803B6F10, &qword_26A881070);
      return sub_26A4DBD10(v11, &qword_2803B6F00, &qword_26A881060);
    }

    else
    {
      v32 = v16;
      v33 = v16;
      v34 = sub_26A851EA8();
      sub_26A7C5404(v34, 0, "SnippetUI/IntentsUIStandardView.swift", 37, 2, 42, "body", 4, 2, v32);
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      sub_26A852248();

      v42[0] = 0xD00000000000002FLL;
      v42[1] = 0x800000026A88F3A0;
      swift_getErrorValue();
      v35 = sub_26A852658();
      MEMORY[0x26D663B00](v35);

      result = sub_26A852418();
      __break(1u);
    }
  }

  else
  {
    v19 = v17;
    v36[1] = v5;
    v20 = v16;
    sub_26A54D260(v16, v17);
    sub_26A84C338();
    sub_26A84B0F8();
    v21 = &v15[v12[5]];
    *v21 = 0xD000000000000023;
    *(v21 + 1) = 0x800000026A88B1A0;
    v22 = &v15[v12[6]];
    *v22 = swift_getKeyPath();
    v22[8] = 0;
    v23 = &v15[v12[7]];
    *v23 = swift_getKeyPath();
    v23[8] = 0;
    sub_26A764F90(v15, v8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6F10, &qword_26A881070);
    OUTLINED_FUNCTION_1_92();
    sub_26A765294(v24, v25, &protocol conformance descriptor for CustomCanvasView);
    sub_26A764DE4();
    OUTLINED_FUNCTION_2_92();
    sub_26A84FDF8();
    sub_26A51D0F8(v11, v4, &qword_2803B6F00, &qword_26A881060);
    swift_storeEnumTagMultiPayload();
    sub_26A764ED4();
    sub_26A84FDF8();
    sub_26A764FF4(v20, v19);
    sub_26A4DBD10(v11, &qword_2803B6F00, &qword_26A881060);
    return sub_26A765010(v15);
  }

  return result;
}

uint64_t sub_26A7649CC()
{
  v0 = sub_26A84D938();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AFIsInternalInstall())
  {
    v4 = sub_26A84C328();
    if (!v4)
    {
      return 0;
    }
  }

  sub_26A84C348();
  sub_26A765294(&qword_2803B6F68, MEMORY[0x277D63598], MEMORY[0x277D63590]);
  v5 = sub_26A84E9E8();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_26A764B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29[-v3];
  v5 = sub_26A850F08();
  v6 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208, &qword_26A857FD0);
  KeyPath = swift_getKeyPath();
  v9 = sub_26A850D68();
  v10 = swift_getKeyPath();
  LOBYTE(v34) = 1;
  v11 = sub_26A84C338();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = sub_26A84C338();
  }

  else
  {
    v16 = 0x800000026A88F3F0;
    v15 = 0xD00000000000001ALL;
  }

  *&v34 = v15;
  *(&v34 + 1) = v16;
  sub_26A53ACC8();
  v17 = sub_26A850898();
  v19 = v18;
  *&v30 = v5;
  *(&v30 + 1) = KeyPath;
  *&v31 = v7;
  *(&v31 + 1) = v10;
  v32 = v9;
  v33 = 1;
  LOWORD(v37) = 1;
  v35 = v31;
  v36 = v9;
  v34 = v30;
  v20 = v9;
  v21 = v7;
  v23 = v22 & 1;
  v29[16] = v22 & 1;
  v29[8] = 0;
  v24 = v30;
  v25 = v32;
  v26 = v37;
  *(a1 + 16) = v31;
  *(a1 + 32) = v25;
  *a1 = v24;
  *(a1 + 48) = v26;
  *(a1 + 56) = v17;
  *(a1 + 64) = v18;
  *(a1 + 72) = v22 & 1;
  *(a1 + 80) = v27;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_26A51D0F8(&v30, v38, &qword_2803B6F60, &qword_26A887E70);
  sub_26A4EF6C0(v17, v19, v23);

  sub_26A4EC448(v17, v19, v23);

  v38[0] = v5;
  v38[1] = KeyPath;
  v38[2] = v21;
  v38[3] = v10;
  v38[4] = v20;
  v38[5] = 0;
  v39 = 1;
  v40 = 0;
  return sub_26A4DBD10(v38, &qword_2803B6F60, &qword_26A887E70);
}

unint64_t sub_26A764DE4()
{
  result = qword_2803B6F18;
  if (!qword_2803B6F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6F10, &qword_26A881070);
    sub_26A764E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6F18);
  }

  return result;
}

unint64_t sub_26A764E70()
{
  result = qword_2803B6F20;
  if (!qword_2803B6F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6F28, &qword_26A881078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6F20);
  }

  return result;
}

unint64_t sub_26A764ED4()
{
  result = qword_2803B6F30;
  if (!qword_2803B6F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6F00, &qword_26A881060);
    sub_26A765294(&qword_2803ABC08, type metadata accessor for CustomCanvasView, &protocol conformance descriptor for CustomCanvasView);
    sub_26A764DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6F30);
  }

  return result;
}

uint64_t sub_26A764F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomCanvasView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26A764FF4(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
  }

  else if (!v2)
  {
    sub_26A513D40(a1, a2);
  }
}

uint64_t sub_26A765010(uint64_t a1)
{
  v2 = type metadata accessor for CustomCanvasView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for IntentsUIStandardView(uint64_t a1)
{
  result = qword_2803B6F40;
  if (!qword_2803B6F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A76511C(uint64_t a1)
{
  result = sub_26A765294(&qword_2803B6F38, MEMORY[0x277D632B0], MEMORY[0x277D632A8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A76519C(uint64_t a1, __n128 a2)
{
  result = sub_26A84C368();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26A765208()
{
  result = qword_2803B6F50;
  if (!qword_2803B6F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6F58, &unk_26A881168);
    sub_26A764ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6F50);
  }

  return result;
}

uint64_t sub_26A765294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_3_82(__n128 a1)
{

  return sub_26A84C368();
}

uint64_t SimpleItemVisualElementView.init(image:text1:text2:footnote:alignment:attributionStyle:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = type metadata accessor for SimpleItemVisualElementView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = (v16 - v15);
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v19 = v13[6];
  *(v17 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v22);
  v23 = v17 + v13[10];
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_225(v24);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = OUTLINED_FUNCTION_2_93();
  *(v17 + v13[11]) = v27(v26, v25);
  sub_26A4D7E54();
  if (v43)
  {
    OUTLINED_FUNCTION_12_42();
    v28 = OUTLINED_FUNCTION_2_93();
    v29(v28, v44);
    OUTLINED_FUNCTION_5_72();
  }

  else
  {
    sub_26A6AC8E8(v42, &qword_2803A91B8);
    v23 = 0;
  }

  *(v17 + v13[12]) = v23;
  sub_26A4D7E54();
  if (v43)
  {
    v30 = v44;
    OUTLINED_FUNCTION_12_42();
    v31 = OUTLINED_FUNCTION_2_93();
    v32(v31, v30);
    OUTLINED_FUNCTION_5_72();
  }

  else
  {
    sub_26A6AC8E8(v42, &qword_2803A91B8);
    v23 = 0;
  }

  *(v17 + v13[13]) = v23;
  sub_26A4D7E54();
  if (v43)
  {
    v33 = v44;
    OUTLINED_FUNCTION_12_42();
    v34 = OUTLINED_FUNCTION_2_93();
    v35(v34, v33);
    OUTLINED_FUNCTION_5_72();
  }

  else
  {
    sub_26A6AC8E8(v42, &qword_2803A91B8);
    v23 = 0;
  }

  *(v17 + v13[14]) = v23;
  v36 = a5;
  if (a6)
  {
    v36 = sub_26A84FC08();
  }

  sub_26A6AC8E8(a4, &qword_2803A91B8);
  *(v17 + v13[15]) = v36;
  if (*(a2 + 24))
  {
    v37 = 0;
  }

  else
  {
    v37 = *(a3 + 24) == 0;
  }

  *(v17 + v13[16]) = v37;
  if ((a7 & 0x100000000) != 0)
  {
    LODWORD(a7) = 0;
  }

  OUTLINED_FUNCTION_21_28(a2);
  *(v17 + v13[17]) = a7;
  sub_26A74BD54(v17, a8);
  OUTLINED_FUNCTION_21_28(a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A7656E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A51A3E0(v8, a1);
  }

  sub_26A851EA8();
  v10 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26A7658B4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleItemVisualElementView(0) + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A765A08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SimpleItemVisualElementView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A765C10()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleItemVisualElementView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
  }

  else
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4F5714(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t SimpleItemVisualElementView.init(image:text1:text2:footnote:alignment:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = type metadata accessor for SimpleItemVisualElementView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = (v15 - v14);
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v18 = v12[6];
  *(v16 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v21);
  v22 = v16 + v12[10];
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_225(v23);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = OUTLINED_FUNCTION_1_93();
  *(v16 + v12[11]) = v25(v24);
  sub_26A4D7E54();
  if (v37)
  {
    OUTLINED_FUNCTION_12_42();
    v26 = OUTLINED_FUNCTION_1_93();
    v27(v26);
    OUTLINED_FUNCTION_5_72();
  }

  else
  {
    sub_26A6AC8E8(v36, &qword_2803A91B8);
    v22 = 0;
  }

  *(v16 + v12[12]) = v22;
  sub_26A4D7E54();
  if (v37)
  {
    OUTLINED_FUNCTION_12_42();
    v28 = OUTLINED_FUNCTION_1_93();
    v29(v28);
    OUTLINED_FUNCTION_5_72();
  }

  else
  {
    sub_26A6AC8E8(v36, &qword_2803A91B8);
    v22 = 0;
  }

  *(v16 + v12[13]) = v22;
  sub_26A4D7E54();
  if (v37)
  {
    OUTLINED_FUNCTION_12_42();
    v30 = OUTLINED_FUNCTION_1_93();
    v31(v30);
    OUTLINED_FUNCTION_5_72();
  }

  else
  {
    sub_26A6AC8E8(v36, &qword_2803A91B8);
    v22 = 0;
  }

  *(v16 + v12[14]) = v22;
  if (a6)
  {
    a5 = sub_26A84FC08();
  }

  sub_26A6AC8E8(a4, &qword_2803A91B8);
  *(v16 + v12[15]) = a5;
  if (*(a2 + 24))
  {
    v32 = 0;
  }

  else
  {
    v32 = *(a3 + 24) == 0;
  }

  OUTLINED_FUNCTION_21_28(a2);
  *(v16 + v12[16]) = v32;
  *(v16 + v12[17]) = 0;
  sub_26A74BD54(v16, a7);
  OUTLINED_FUNCTION_21_28(a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SimpleItemVisualElementView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v28[1] = a1;
  v2 = type metadata accessor for SimpleItemVisualElementView(0);
  v3 = v2 - 8;
  v28[0] = *(v2 - 8);
  v4 = *(v28[0] + 64);
  MEMORY[0x28223BE20](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6FF0, &qword_26A881318);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  sub_26A7656E4(v10);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_26A7658B4();
  sub_26A765A08(v7);
  v15 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
  v29 = v1;
  sub_26A4CEA68();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26A68CD04;
  *(v16 + 24) = 0;
  v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6FF8, &unk_26A881320) + 36)];
  *(v17 + 2) = swift_getKeyPath();
  v17[24] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v19 = *(v18 + 40);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[*(v18 + 44)];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  *v17 = sub_26A4D1F7C;
  *(v17 + 1) = v16;
  KeyPath = swift_getKeyPath();
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7000, &qword_26A881380) + 36)];
  *v22 = KeyPath;
  v22[8] = 0;
  v23 = swift_getKeyPath();
  LOBYTE(v19) = *(v1 + *(v3 + 72));
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7008, &qword_26A8813B0) + 36)];
  *v24 = v23;
  v24[8] = v19;
  v14[*(v11 + 36)] = sub_26A766568() & 1;
  sub_26A7693FC();
  v25 = (*(v28[0] + 80) + 16) & ~*(v28[0] + 80);
  v26 = swift_allocObject();
  sub_26A74BD54(v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  sub_26A76691C();
  sub_26A850A38();

  return sub_26A6AC8E8(v14, &qword_2803B6FF0);
}

uint64_t sub_26A766500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SimpleItemVisualElementView(0) + 60));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7058, &qword_26A8814E8);
  return sub_26A766D18(a1);
}

uint64_t sub_26A766568()
{
  v1 = v0;
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + *(type metadata accessor for SimpleItemVisualElementView(0) + 20);
  v7 = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v7, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v13[1];
  }

  if (v7 == 7)
  {
    sub_26A4D7E10();
    switch(sub_26A63CD18(v9))
    {
      case 1u:
      case 2u:
      case 3u:
        v10 = sub_26A852598();

        result = 0;
        if ((v10 & 1) == 0)
        {
          goto LABEL_6;
        }

        break;
      case 4u:
        goto LABEL_6;
      default:
        goto LABEL_10;
    }
  }

  else
  {
LABEL_6:
    v12 = sub_26A765C10();
    if (sub_26A73670C())
    {
      sub_26A736710();
      if ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D6644E0](0, v12);
        swift_unknownObjectRelease();
      }

      return 1;
    }

    else
    {
LABEL_10:

      return 0;
    }
  }

  return result;
}

double sub_26A7667E8()
{
  v0 = sub_26A765C10();
  if (sub_26A73670C())
  {
    sub_26A736710();
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D6644E0](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }

    v3 = v1;

    type metadata accessor for SimpleItemVisualElementView(0);
    InteractionDelegateWrapper.perform(sfCommand:)();
  }

  else
  {
  }

  return result;
}

double sub_26A7668BC()
{
  type metadata accessor for SimpleItemVisualElementView(0);

  return sub_26A7667E8();
}

unint64_t sub_26A76691C()
{
  result = qword_2803B7010;
  if (!qword_2803B7010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6FF0, &qword_26A881318);
    sub_26A766A04(&qword_2803B7018, &qword_2803B7008, &qword_26A8813B0, sub_26A7669D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7010);
  }

  return result;
}

uint64_t sub_26A766A04(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    sub_26A769310(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A766AB0()
{
  result = qword_2803B7028;
  if (!qword_2803B7028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6FF8, &unk_26A881320);
    sub_26A769310(&qword_2803B7030, &unk_2803A97F8, &unk_26A8557D0, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A769310(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7028);
  }

  return result;
}

uint64_t sub_26A766BB0()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleItemVisualElementView(0) + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
  }

  return sub_26A5A06E8();
}

uint64_t sub_26A766D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7060, &qword_26A8814F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7068, &unk_26A8814F8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v29[-v10];
  sub_26A767134(v4);
  v12 = sub_26A850268();
  v13 = type metadata accessor for SimpleItemVisualElementView(0);
  sub_26A84ED48();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_26A4B7FE8();
  v22 = &v11[*(v6 + 44)];
  *v22 = v12;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = *(a1 + v13[12]);
  if (qword_2803A9108 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(v43);
  memcpy(v38, v43, sizeof(v38));
  v40 = 0;
  v39 = sub_26A80A810;
  v37 = v23;
  v24 = *(a1 + v13[15]);

  v25 = sub_26A5F8964(v24);
  KeyPath = swift_getKeyPath();
  v42 = v25;
  v26 = *(a1 + v13[13]);
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(v44);
  memcpy(v32, v44, sizeof(v32));
  v34 = 0;
  v33 = sub_26A80A810;
  v31 = v26;

  v27 = sub_26A5F8964(v24);
  v35 = swift_getKeyPath();
  v36 = v27;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7078, &unk_26A881540);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A6AC8E8(&v31, &unk_2803B7070);
  sub_26A6AC8E8(&v37, &unk_2803B7070);
  sub_26A6AC8E8(v11, &qword_2803B7068);
  sub_26A6AC8E8(v29, &unk_2803B7070);
  sub_26A6AC8E8(&v30, &unk_2803B7070);
  return sub_26A6AC8E8(v8, &qword_2803B7068);
}

uint64_t sub_26A767134@<X0>(uint64_t a1@<X8>)
{
  v124 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v4);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7080, &qword_26A881550);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = v111 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7088, &qword_26A881558);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7090, &qword_26A881560);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v14 = v111 - v13;
  v114 = sub_26A84FA98();
  OUTLINED_FUNCTION_15();
  v113 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v18 - v17);
  v120 = type metadata accessor for SimpleItemVisualElementView.Constants(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v19);
  v116 = v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_0(v111 - v22);
  v23 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_41();
  v29 = v28 - v27;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7098, &qword_26A881568);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B70A0, &qword_26A881570);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v34);
  v35 = type metadata accessor for SimpleItemVisualElementView(0);
  v36 = *(v1 + v35[14]);
  v123 = v2;
  if (v36)
  {
    v111[0] = v36;
    v111[1] = v11;
    v111[2] = v14;
    v111[3] = v32;
    v112 = v8;
    v119 = v7;
    v37 = *(v1 + v35[17]);
    v38 = *(v1 + v35[11]);
    v39 = v125;
    sub_26A766BB0();
    v40 = *(v25 + 32);
    v40(v29, v39, v23);
    KeyPath = swift_getKeyPath();
    v42 = *(v2 + 36);
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    if (v37 == 1)
    {
      v44 = (v117 + v42);
      v45 = v117;
      v40(v44 + v43, v29, v23);
      v46 = OUTLINED_FUNCTION_13_38(v44 + v43);
      *v44 = KeyPath;
      *v45 = v38;
      v47 = v45;
      v48 = MEMORY[0x28223BE20](v46);
      (*(v113 + 104))(v115, *MEMORY[0x277CE00F0], v114, v48);
      v49 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B70C0, &qword_26A8815A8) + 36);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7130, &qword_26A8815F8);
      sub_26A769310(&qword_2803B7138, &qword_2803B7130, &qword_26A8815F8, MEMORY[0x277CE14C0]);
      sub_26A8510F8();
      *&v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7140, &qword_26A881600) + 36)] = v38;

      v50 = sub_26A851448();
      v52 = v51;
      v53 = &v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B70E8, &qword_26A8815B8) + 36)];
      *v53 = v50;
      v53[1] = v52;
      v54 = v111[0];

      sub_26A850498();
      sub_26A8503A8();
      v55 = sub_26A850428();

      v56 = swift_getKeyPath();
      sub_26A850E18();
      v57 = sub_26A850E68();

      v58 = (v47 + *(v121 + 36));
      v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7148, &unk_26A881638) + 36);
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1838, &qword_26A86D470) + 36);
      v61 = *MEMORY[0x277CE13B8];
      sub_26A8514D8();
      OUTLINED_FUNCTION_46();
      (*(v62 + 104))(&v59[v60], v61);
      *v59 = v57;
      sub_26A850DD8();
      sub_26A850E68();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7150, &qword_26A881648);
      sub_26A84EEC8();

      *v58 = v54;
      v58[1] = v56;
      v58[2] = v55;
      v63 = v125;
      sub_26A766BB0();
      v64 = v120;
      v65 = *(v63 + *(v120 + 28));
      sub_26A769258(v63);
      v66 = v116;
      sub_26A766BB0();
      v67 = *(v66 + *(v64 + 32));
      sub_26A769258(v66);
      LOBYTE(v64) = sub_26A850248();
      v68 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7158, &qword_26A881650) + 36);
      *v68 = v64;
      *(v68 + 1) = 0;
      *(v68 + 2) = 0;
      *(v68 + 3) = v65;
      *(v68 + 4) = v67;
      v68[40] = 0;
      v69 = sub_26A851428();
      v71 = v70;
      v72 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B70F8, &qword_26A8815C0) + 36));
      *v72 = v69;
      v72[1] = v71;
      OUTLINED_FUNCTION_10_50();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A768F50();
      sub_26A7691A0();
      OUTLINED_FUNCTION_8_60();
      sub_26A84FDF8();
      sub_26A6AC8E8(v47, &qword_2803B7098);
    }

    else
    {
      v82 = v118;
      v83 = (v118 + v42);
      v40(v83 + v43, v29, v23);
      OUTLINED_FUNCTION_13_38(v83 + v43);
      *v83 = KeyPath;
      *v82 = v38;
      v84 = qword_2803A8E68;

      if (v84 != -1)
      {
        swift_once();
      }

      v85 = v82 + *(v112 + 36);
      sub_26A4D7E54();
      sub_26A6AEE74(__src);
      memcpy(v85 + 8, __src, 0xBFuLL);
      *(v85 + 35) = sub_26A80A810;
      *(v85 + 36) = 0;
      *v85 = v111[0];

      v86 = v125;
      sub_26A766BB0();
      v59 = v120;
      sub_26A769258(v86);
      v87 = sub_26A850248();
      sub_26A84ED48();
      v85[296] = v87;
      *(v85 + 38) = v88;
      *(v85 + 39) = v89;
      *(v85 + 40) = v90;
      *(v85 + 41) = v91;
      v85[336] = 0;
      v92 = &v85[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7118, &unk_26A8815D0) + 36)];
      sub_26A8513D8();
      v93 = sub_26A850248();
      v92[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440, &unk_26A877510) + 36)] = v93;
      v94 = &v85[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7120, &unk_26A8815E0) + 36)];
      v95 = *(sub_26A84F5F8() + 20);
      v96 = *MEMORY[0x277CE0118];
      sub_26A84FB88();
      OUTLINED_FUNCTION_46();
      (*(v97 + 104))(&v94->i8[v95], v96);
      *v94 = vdupq_n_s64(0x4059000000000000uLL);
      *(v94->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)) = 256;
      sub_26A766BB0();
      sub_26A769258(v86);
      LOBYTE(v96) = sub_26A850248();
      sub_26A84ED48();
      v99 = v98;
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v106 = &v85[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7128, &qword_26A8815F0) + 36)];
      *v106 = v96;
      *(v106 + 1) = v99;
      *(v106 + 2) = v101;
      *(v106 + 3) = v103;
      *(v106 + 4) = v105;
      v106[40] = 0;
      v107 = sub_26A851428();
      v109 = v108;
      v110 = &v85[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7110, &qword_26A8815C8) + 36)];
      *v110 = v107;
      v110[1] = v109;
      OUTLINED_FUNCTION_10_50();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A768F50();
      sub_26A7691A0();
      OUTLINED_FUNCTION_8_60();
      sub_26A84FDF8();
      sub_26A6AC8E8(v82, &qword_2803B7088);
    }

    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A768EC4();
    sub_26A52E814();
    sub_26A84FDF8();
    return sub_26A6AC8E8(v59, &qword_2803B70A0);
  }

  else
  {
    v121 = *(v1 + v35[11]);
    v73 = v125;
    sub_26A766BB0();
    v74 = *(v25 + 32);
    v74(v29, v73, v23);
    v75 = swift_getKeyPath();
    v76 = v119;
    v77 = (v119 + *(v2 + 36));
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    v74(v77 + v78, v29, v23);
    OUTLINED_FUNCTION_13_38(v77 + v78);
    *v77 = v75;
    *v76 = v121;
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A768EC4();
    sub_26A52E814();

    sub_26A84FDF8();
    v79 = OUTLINED_FUNCTION_211();
    return sub_26A6AC8E8(v79, v80);
  }
}

uint64_t sub_26A767DE8(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A767E18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26A767DE8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26A767E44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A767E00(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26A767E70(void *a1, CGFloat a2, CGFloat a3)
{
  v6 = sub_26A84F468();
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A84F4A8();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7178, &qword_26A881670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = sub_26A84F3E8();
  v53 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v52 = &v43 - v20;
  LOBYTE(v55.a) = 0;
  sub_26A7692BC();
  sub_26A84F3C8();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    v21 = v15;
    return sub_26A6AC8E8(v21, &qword_2803B7178);
  }

  v45 = v6;
  v46 = a1;
  v22 = *(v53 + 32);
  v22(v52, v15, v16);
  LOBYTE(v55.a) = 1;
  sub_26A84F3C8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
  {
    (*(v53 + 8))(v52, v16);
    v21 = v12;
    return sub_26A6AC8E8(v21, &qword_2803B7178);
  }

  v24 = v18;
  v22(v18, v12, v16);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = a2;
  v58.size.height = a3;
  CGRectGetMaxX(v58);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = a2;
  v59.size.height = a3;
  CGRectGetMaxY(v59);
  sub_26A84F3D8();
  v26 = v25 / a2 * 10.0;
  if (v26 > 2.5)
  {
    v27 = v26;
  }

  else
  {
    v27 = 2.5;
  }

  v60.origin.x = 0.0;
  v60.origin.y = 0.0;
  v60.size.width = a2;
  v60.size.height = a3;
  MaxX = CGRectGetMaxX(v60);
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = a2;
  v61.size.height = a3;
  MaxY = CGRectGetMaxY(v61);
  v55.a = 1.0;
  v55.b = 0.0;
  v55.c = 0.0;
  v55.d = 1.0;
  v55.tx = 0.0;
  v55.ty = 0.0;
  CGAffineTransformTranslate(&v54, &v55, MaxX, MaxY);
  v55 = v54;
  CGAffineTransformScale(&v54, &v55, v27, 1.0);
  tx = v54.tx;
  ty = v54.ty;
  v43 = *&v54.c;
  v44 = *&v54.a;
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = a2;
  v62.size.height = a3;
  v32 = -CGRectGetMaxX(v62);
  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.width = a2;
  v63.size.height = a3;
  v33 = CGRectGetMaxY(v63);
  *&v55.a = v44;
  *&v55.c = v43;
  v55.tx = tx;
  v55.ty = ty;
  CGAffineTransformTranslate(&v54, &v55, v32, -v33);
  v43 = *&v54.c;
  v44 = *&v54.a;
  v57 = v54;
  v34 = v54.tx;
  v35 = v54.ty;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE8A8, &qword_26A862530);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26A8570F0;
  *(v36 + 32) = sub_26A850DD8();
  *(v36 + 40) = sub_26A850DF8();
  MEMORY[0x26D6635D0](v36);
  v37 = v48;
  sub_26A84F488();

  sub_26A84FC38();
  v38 = v47;
  sub_26A84F448();
  sub_26A84F4C8();
  v39 = *(v51 + 8);
  v40 = v45;
  v39(v38, v45);
  sub_26A84F438();
  sub_26A84F4C8();
  v39(v38, v40);
  *&v55.a = v44;
  *&v55.c = v43;
  v55.tx = v34;
  v55.ty = v35;
  CGAffineTransformInvert(&v56, &v55);
  sub_26A84FC38();
  sub_26A84F448();
  sub_26A84F4C8();
  v39(v38, v40);
  v41 = v52;
  sub_26A84F3F8();
  (*(v49 + 8))(v37, v50);
  v42 = *(v53 + 8);
  v42(v24, v16);
  return (v42)(v41, v16);
}

uint64_t sub_26A7684D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7160, &qword_26A881658);
  v4 = *(v3 - 8);
  v29 = v3;
  v30 = v4;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7168, &qword_26A881660);
  v33 = *(v9 - 8);
  v10 = v33;
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for SimpleItemVisualElementView(0);
  v32 = *(a1 + *(v16 + 44));
  *v15 = v32;
  *(v15 + 4) = 256;
  v31 = *(a1 + *(v16 + 56));
  *v8 = v31;
  *(v8 + 4) = 257;
  v17 = *(v10 + 16);
  v17(v12, v15, v9);
  v18 = *(v4 + 16);
  v19 = v34;
  v18(v34, v8, v3);
  v20 = v35;
  v17(v35, v12, v9);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7170, &qword_26A881668);
  v22 = v29;
  v18(&v20[*(v21 + 48)], v19, v29);
  v23 = *(v30 + 8);

  v24 = v8;
  v25 = v22;
  v23(v24, v22);
  v26 = *(v33 + 8);
  v26(v15, v9);
  v23(v19, v25);
  return (v26)(v12, v9);
}

void sub_26A7687E0(uint64_t a1)
{
  sub_26A576B80(319, &qword_2803A9220, &qword_2803A91C8, &unk_26A856820);
  if (v1 <= 0x3F)
  {
    sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v2 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_26A576B80(319, &qword_2803B7048, &qword_2803AFA48, &qword_26A881430);
        if (v4 <= 0x3F)
        {
          sub_26A573614(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_26A573614(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for RFSimpleItemVisualAttributionStyle(319, v6, v7, v8);
              if (v9 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SimpleItemVisualElementView.SymbolID(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A768A90()
{
  result = qword_2803B7050;
  if (!qword_2803B7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7050);
  }

  return result;
}

void sub_26A768AE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  sub_26A850458();
  sub_26A8503C8();
  v5 = sub_26A850428();

  v6 = sub_26A84FEA8();
  v7 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v7;
  *(inited + 48) = v6;
  *(inited + 40) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A769310(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v8 = sub_26A8516A8();
  sub_26A850498();
  sub_26A8503C8();
  sub_26A850428();

  sub_26A84FEA8();
  sub_26A80D690(v8);
}

uint64_t sub_26A768CE0(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for SimpleItemVisualElementView.Constants(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  result = (*(v8 + 104))(v6, v7);
  *(v6 + v5[5]) = 0x4020000000000000;
  *(v6 + v5[6]) = 0x4024000000000000;
  *(v6 + v5[7]) = 0x4030000000000000;
  *(v6 + v5[8]) = 0x4030000000000000;
  return result;
}

uint64_t sub_26A768D94(uint64_t a1)
{
  if (qword_2803A8E70 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, qword_2803B6FC0);
  return sub_26A7693FC();
}

uint64_t sub_26A768E14(uint64_t a1)
{
  if (qword_2803A8E78 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, qword_2803B6FD8);
  return sub_26A7693FC();
}

unint64_t sub_26A768EC4()
{
  result = qword_2803B70A8;
  if (!qword_2803B70A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B70A0, &qword_26A881570);
    sub_26A768F50();
    sub_26A7691A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B70A8);
  }

  return result;
}

unint64_t sub_26A768F50()
{
  result = qword_2803B70B0;
  if (!qword_2803B70B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7098, &qword_26A881568);
    sub_26A769008();
    sub_26A769310(&qword_2803B70F0, &qword_2803B70F8, &qword_26A8815C0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B70B0);
  }

  return result;
}

unint64_t sub_26A769008()
{
  result = qword_2803B70B8;
  if (!qword_2803B70B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B70C0, &qword_26A8815A8);
    sub_26A7690C0();
    sub_26A769310(&qword_2803B70E0, &qword_2803B70E8, &qword_26A8815B8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B70B8);
  }

  return result;
}

unint64_t sub_26A7690C0()
{
  result = qword_2803B70C8;
  if (!qword_2803B70C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B70D0, &qword_26A8815B0);
    sub_26A52E814();
    sub_26A76914C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B70C8);
  }

  return result;
}

unint64_t sub_26A76914C()
{
  result = qword_2803B70D8;
  if (!qword_2803B70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B70D8);
  }

  return result;
}

unint64_t sub_26A7691A0()
{
  result = qword_2803B7100;
  if (!qword_2803B7100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7088, &qword_26A881558);
    sub_26A52E814();
    sub_26A769310(&qword_2803B7108, &qword_2803B7110, &qword_26A8815C8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7100);
  }

  return result;
}

uint64_t sub_26A769258(uint64_t a1)
{
  v2 = type metadata accessor for SimpleItemVisualElementView.Constants(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A7692BC()
{
  result = qword_2803B7180;
  if (!qword_2803B7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7180);
  }

  return result;
}

uint64_t sub_26A769310(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26A76937C(uint64_t a1)
{
  result = sub_26A84B1D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A7693FC()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

void *OUTLINED_FUNCTION_12_42()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 120), v0);
}

uint64_t OUTLINED_FUNCTION_13_38(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_21_28(uint64_t a1)
{

  return sub_26A6AC8E8(a1, v1);
}

uint64_t sub_26A7694FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A76C8C8(a1, a2);
  v3 = type metadata accessor for ImageSourceView(0);
  EnvironmentImageStyle.init()(a2 + v3[5]);
  v4 = v3[6];
  *(a2 + v4) = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0, &qword_26A868B30);
  OUTLINED_FUNCTION_27_13(v5);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(KeyPath);
  v7 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v7);
  v8 = a2 + v3[9];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a2 + v3[10];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = v3[11];
  *(a2 + v10) = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C98, &unk_26A87C5B0);
  OUTLINED_FUNCTION_27_13(v11);
  v12 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v12);
  v13 = v3[13];
  *(a2 + v13) = swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  OUTLINED_FUNCTION_27_13(v14);
  v15 = v3[14];
  *(a2 + v15) = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E8, &qword_26A868C00);
  OUTLINED_FUNCTION_27_13(v16);
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v18);
  v19 = a2 + v3[17];
  result = swift_getKeyPath();
  *v19 = result;
  *(v19 + 8) = 0;
  return result;
}

uint64_t ImageElement.ImageStyle.isContactStyle.getter()
{
  v1 = v0;
  v2 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  v17 = v9 == *MEMORY[0x277D62A80] || v9 == *MEMORY[0x277D62A88] || v9 == *MEMORY[0x277D62A90] || v9 == *MEMORY[0x277D62A98] || v9 == *MEMORY[0x277D62AA8] || v9 == *MEMORY[0x277D62AB0] || v9 == *MEMORY[0x277D62AB8] || v9 == *MEMORY[0x277D62AC0] || v9 == *MEMORY[0x277D62AC8];
  v18 = v17;
  if (!v17)
  {
    (*(v4 + 8))(v8, v2);
  }

  return v18;
}

void sub_26A769888(uint64_t a1)
{
  sub_26A76CBF0(319, &qword_2803B7198, MEMORY[0x277CE1088], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A76CC40(319, &qword_28157FFD0, MEMORY[0x277D62CD8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26A84B1D8();
      if (v3 <= 0x3F)
      {
        sub_26A76CBF0(319, &qword_2803B0190, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_26A76CBF0(319, &qword_2803B71A0, MEMORY[0x277CDF400], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_26A84B2E8();
            if (v6 <= 0x3F)
            {
              sub_26A76CC40(319, &qword_28157FFA8, MEMORY[0x277D63648], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_26A84B2F8();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26A769A70@<X0>(uint64_t *a1@<X8>)
{
  v141 = a1;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0270, &qword_26A868DA8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  v140 = &v131 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50, &unk_26A867F20);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  v133 = v6;
  MEMORY[0x28223BE20](v7);
  v145 = &v131 - v8;
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v148 = v10;
  v149 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v147 = v12 - v11;
  v13 = sub_26A84B2F8();
  OUTLINED_FUNCTION_15();
  v135 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v134 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0, &unk_26A87C580);
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19();
  v132 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v131 - v22;
  v150 = sub_26A84B2B8();
  OUTLINED_FUNCTION_15();
  v142 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_41();
  v151 = v27 - v26;
  v28 = sub_26A84B048();
  OUTLINED_FUNCTION_15();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038, &qword_26A872050);
  v36 = OUTLINED_FUNCTION_79(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  v138 = v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v131 - v39;
  v41 = type metadata accessor for ImageStyleAppearance(0);
  v42 = OUTLINED_FUNCTION_79(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_41();
  v45 = v44 - v43;
  sub_26A76A774((v44 - v43));
  v46 = *(v45 + 8);
  v146 = v45;
  v47 = v1;
  v143 = type metadata accessor for ImageSourceView.Model(0);
  v137 = v143[12];
  sub_26A4DBD68(v1 + v137, v40, &qword_2803AD038, &qword_26A872050);
  v48 = sub_26A84DFA8();
  v49 = OUTLINED_FUNCTION_12_43();
  if (__swift_getEnumTagSinglePayload(v49, v50, v48) == 1)
  {
    sub_26A4DBD10(v40, &qword_2803AD038, &qword_26A872050);
    v144 = 0;
  }

  else
  {
    sub_26A84DF78();
    v144 = _ProtoColor.swiftValue.getter();
    (*(v30 + 8))(v34, v28);
    (*(*(v48 - 8) + 8))(v40, v48);
  }

  v51 = v143;
  sub_26A4DBD68(v1 + v143[6], v23, &qword_2803AF0C0, &unk_26A87C580);
  v52 = v150;
  OUTLINED_FUNCTION_15_34(v23, 1);
  v53 = v151;
  v136 = v48;
  if (v54)
  {
    type metadata accessor for ImageSourceView(0);
    v55 = v132;
    sub_26A72046C(v132);
    v56 = OUTLINED_FUNCTION_12_43();
    OUTLINED_FUNCTION_15_34(v56, v57);
    if (v54)
    {
      if (v46 == INFINITY)
      {
        sub_26A84B298();
      }

      else
      {
        sub_26A84B268();
      }

      v58 = OUTLINED_FUNCTION_12_43();
      OUTLINED_FUNCTION_15_34(v58, v59);
      if (!v54)
      {
        sub_26A4DBD10(v55, &qword_2803AF0C0, &unk_26A87C580);
      }
    }

    else
    {
      (*(v142 + 32))(v53, v55, v52);
    }

    OUTLINED_FUNCTION_15_34(v23, 1);
    if (!v54)
    {
      sub_26A4DBD10(v23, &qword_2803AF0C0, &unk_26A87C580);
    }
  }

  else
  {
    (*(v142 + 32))(v151, v23, v52);
  }

  v60 = sub_26A720778(v53, v1 + v51[13]);
  v61 = v135;
  v62 = v134;
  (*(v135 + 104))(v134, *MEMORY[0x277D62D20], v13);
  sub_26A76D21C(&qword_2803B5FB0, MEMORY[0x277D62D38], MEMORY[0x277D62D48]);
  sub_26A851A48();
  sub_26A851A48();
  (*(v61 + 8))(v62, v13);
  if (v153 == v152)
  {
    LODWORD(v134) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_3_83();
    sub_26A76D21C(v63, v64, MEMORY[0x277D62CD0]);
    LODWORD(v134) = sub_26A84C968();
  }

  LODWORD(v65) = *(v1 + v51[8]);
  if (v65 == 2)
  {
    v66 = v1 + *(type metadata accessor for ImageSourceView(0) + 28);
    v65 = *v66;
    if (*(v66 + 8) != 1)
    {

      sub_26A851EA8();
      v67 = sub_26A8501F8();
      OUTLINED_FUNCTION_7_63(v67, &dword_26A48D000, v68, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v69, v70, MEMORY[0x277D84F90]);

      OUTLINED_FUNCTION_14_40();
      OUTLINED_FUNCTION_13_39();
      swift_getAtKeyPath();
      v71 = OUTLINED_FUNCTION_4_77(v65);
      v72(v71);
      LOBYTE(v65) = v153;
    }
  }

  v73 = *(v1 + v51[9]);
  if (v73 == 2)
  {
    v74 = v47 + *(type metadata accessor for ImageSourceView(0) + 32);
    v73 = *v74;
    if (*(v74 + 8) != 1)
    {

      sub_26A851EA8();
      v75 = sub_26A8501F8();
      OUTLINED_FUNCTION_7_63(v75, &dword_26A48D000, v76, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v77, v78, MEMORY[0x277D84F90]);

      OUTLINED_FUNCTION_14_40();
      OUTLINED_FUNCTION_13_39();
      swift_getAtKeyPath();
      v79 = OUTLINED_FUNCTION_4_77(v73);
      v80(v79);
      v73 = v153;
    }
  }

  v81 = type metadata accessor for ImageSourceView(0);
  v82 = v47 + *(v81 + 60);
  v83 = *v82;
  if (*(v82 + 8) != 1)
  {

    sub_26A851EA8();
    v84 = sub_26A8501F8();
    sub_26A84EA78();

    OUTLINED_FUNCTION_14_40();
    OUTLINED_FUNCTION_13_39();
    swift_getAtKeyPath();
    v85 = OUTLINED_FUNCTION_4_77(v83);
    v86(v85);
    LOBYTE(v83) = v153;
  }

  if (v83 == 2)
  {
    LOBYTE(v83) = *(v47 + v51[10]);
  }

  v135 = v73;
  v87 = v47 + *(v81 + 68);
  v88 = *v87;
  v89 = *(v87 + 8);
  if (v89 == 1)
  {
    v90 = *v87;
  }

  else
  {

    sub_26A851EA8();
    v91 = sub_26A8501F8();
    OUTLINED_FUNCTION_7_63(v91, &dword_26A48D000, v92, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v93, v94, MEMORY[0x277D84F90]);

    OUTLINED_FUNCTION_14_40();
    OUTLINED_FUNCTION_13_39();
    swift_getAtKeyPath();
    v95 = OUTLINED_FUNCTION_4_77(v88);
    v96(v95);
    LOBYTE(v90) = v153;
  }

  v97 = v138;
  sub_26A4DBD68(v47 + v137, v138, &qword_2803AD038, &qword_26A872050);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, 1, v136);
  sub_26A4DBD10(v97, &qword_2803AD038, &qword_26A872050);
  v99 = v143[7];
  v100 = sub_26A84B1D8();
  OUTLINED_FUNCTION_179();
  v102 = v101;
  v103 = v47 + v99;
  v104 = v145;
  (*(v101 + 16))(v145, v103, v100);
  __swift_storeEnumTagSinglePayload(v104, 0, 1, v100);
  if ((v90 & 1) == 0)
  {
    v105 = v140;
    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_38;
    }

LABEL_36:
    LODWORD(v143) = v89;
    v107 = v65;
    v108 = v145;
    v109 = v133;
    sub_26A4DBD68(v145, v133, &qword_2803AFE50, &unk_26A867F20);
    v110 = OUTLINED_FUNCTION_12_43();
    if (__swift_getEnumTagSinglePayload(v110, v111, v100) == 1)
    {
      sub_26A4DBD10(v108, &qword_2803AFE50, &unk_26A867F20);
      sub_26A4DBD10(v109, &qword_2803AFE50, &unk_26A867F20);
      v106 = 2;
    }

    else
    {
      v112 = v109;
      v113 = ImageElement.ImageStyle.isContactStyle.getter();
      sub_26A4DBD10(v108, &qword_2803AFE50, &unk_26A867F20);
      (*(v102 + 8))(v112, v100);
      if (v113)
      {
        v106 = 1;
      }

      else
      {
        v106 = 2;
      }
    }

    LOBYTE(v65) = v107;
    v89 = v143;
    goto LABEL_43;
  }

  v105 = v140;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_36;
  }

  if (v134)
  {
    sub_26A4DBD10(v145, &qword_2803AFE50, &unk_26A867F20);
    v106 = 0;
    goto LABEL_43;
  }

LABEL_38:
  sub_26A4DBD10(v145, &qword_2803AFE50, &unk_26A867F20);
  v106 = 2;
LABEL_43:
  *v105 = sub_26A84FBF8();
  *(v105 + 8) = 0;
  *(v105 + 16) = 0;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B71B8, &qword_26A8818F8);
  sub_26A76AFDC(v47, v144, v105 + *(v114 + 44), v60);
  OUTLINED_FUNCTION_3_83();
  sub_26A76D21C(v115, v116, MEMORY[0x277D62CD0]);
  v117 = v150;
  sub_26A84C958();
  v119 = v105 + *(v139 + 36);
  *v119 = v118;
  *(v119 + 8) = 0;
  *(v119 + 9) = v83 & 1;
  if (!v89)
  {

    sub_26A851EA8();
    v120 = sub_26A8501F8();
    sub_26A84EA78();

    v117 = v150;
    v121 = v147;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v88, 0);
    (*(v148 + 8))(v121, v149);
    LOBYTE(v88) = v153;
  }

  v122 = v65 & 1;
  v123 = v151;
  v124 = sub_26A5F64E0(v122, v135 & 1, v88 & 1, v151, v83 & 1);
  sub_26A4DBD10(v105, &qword_2803B0270, &qword_26A868DA8);
  v125 = sub_26A76BB40(v106);
  v126 = sub_26A851448();
  v128 = v127;

  (*(v142 + 8))(v123, v117);
  result = sub_26A51DA28(v146);
  v130 = v141;
  *v141 = v124;
  *(v130 + 4) = 0;
  v130[2] = v125;
  v130[3] = v126;
  v130[4] = v128;
  return result;
}

uint64_t sub_26A76A774@<X0>(uint64_t *a1@<X8>)
{
  v103 = a1;
  v2 = sub_26A84F988();
  v99 = *(v2 - 8);
  v100 = v2;
  MEMORY[0x28223BE20](v2);
  v97 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for ImageStyleAppearance(0);
  MEMORY[0x28223BE20](v101);
  v98 = (&v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50, &unk_26A867F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v93 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0, &qword_26A86DCC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v93 - v9;
  v11 = sub_26A84B1D8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v93 - v15;
  v17 = *(type metadata accessor for ImageSourceView.Model(0) + 28);
  v18 = *(v12 + 104);
  v95 = *MEMORY[0x277D62B70];
  v94 = v18;
  v18(v16);
  sub_26A76D21C(&qword_28157FFF0, MEMORY[0x277D62C10], MEMORY[0x277D62C30]);
  v19 = v1;
  v20 = sub_26A851758();
  v102 = *(v12 + 8);
  v102(v16, v11);
  v21 = type metadata accessor for ImageSourceView(0);
  if (v20)
  {
    v93 = v10;
    v22 = v21;
    sub_26A720448(v7);
    v23 = v11;
    if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
    {
      sub_26A4DBD10(v7, &qword_2803AFE50, &unk_26A867F20);
      v24 = &v19[v22[5]];
      v25 = *(v24 + 24);
      v26 = *(v24 + 26);
      v112 = v24[216];
      v111 = v24[217];
      v110 = v24[218];
      v109 = v24[219];
      v108 = v24[220];
      v107 = v24[221];
      v27 = v24[222];
      v96 = v19;
      v28 = v24[200];
      v106 = v27;
      v94(v16, v95, v11);
      v29 = v93;
      sub_26A77F8A4(v16, v93);
      v30 = 256;
      if (!v111)
      {
        v30 = 0;
      }

      v31 = v30 | v112;
      v32 = 0x10000;
      if (!v110)
      {
        v32 = 0;
      }

      v33 = 0x1000000;
      if (!v109)
      {
        v33 = 0;
      }

      v34 = v31 | v32 | v33;
      v35 = 0x100000000;
      if (!v108)
      {
        v35 = 0;
      }

      v36 = 0x10000000000;
      if (!v107)
      {
        v36 = 0;
      }

      v37 = 0x1000000000000;
      if (!v106)
      {
        v37 = 0;
      }

      v38 = v98;
      v39 = v96;
      sub_26A647150(v25, v28, v26, v34 | v35 | v36 | v37, v98);
      sub_26A4DBD10(v29, &unk_2803ABFF0, &qword_26A86DCC0);
      v102(v16, v11);
      v40 = &v39[v22[9]];
      v41 = *v40;
      v42 = v40[8];
      if (v40[9] == 1)
      {
        if ((v42 & 1) == 0)
        {
          v43 = *v40;
          goto LABEL_47;
        }
      }

      else
      {
        v81 = v22;

        sub_26A851EA8();
        v82 = sub_26A8501F8();
        sub_26A84EA78();

        v39 = v96;
        v83 = v97;
        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A4F5724(v41, v42, 0);
        (*(v99 + 8))(v83, v100);
        v22 = v81;
        if (v105 != 1)
        {
          v43 = v104;
LABEL_47:
          v84 = &v39[v22[10]];
          v85 = *v84;
          v86 = v84[8];
          if (v84[9] == 1)
          {
            v87 = v103;
            if ((v86 & 1) == 0)
            {
              v88 = *v84;
LABEL_53:
              v92 = v38[2];
              v91 = v38[3];

              sub_26A51DA28(v38);
              result = __swift_storeEnumTagSinglePayload(v87 + *(v101 + 36), 1, 1, v11);
              *v87 = v88;
              v87[1] = v43;
              v87[2] = v92;
              v87[3] = v91;
              v87[4] = 0;
              v87[5] = 0;
              return result;
            }
          }

          else
          {

            sub_26A851EA8();
            v89 = sub_26A8501F8();
            sub_26A84EA78();

            v90 = v97;
            sub_26A84F978();
            swift_getAtKeyPath();
            sub_26A4F5724(v85, v86, 0);
            (*(v99 + 8))(v90, v100);
            v87 = v103;
            if (v105 != 1)
            {
              v88 = v104;
              goto LABEL_53;
            }
          }

          v88 = *v38;
          goto LABEL_53;
        }
      }

      v43 = v38[1];
      goto LABEL_47;
    }

    v62 = v96;
    (*(v12 + 32))(v96, v7, v11);
    v63 = &v19[v22[5]];
    v64 = *(v63 + 26);
    v99 = *(v63 + 24);
    v100 = v64;
    v65 = v63[216];
    v66 = v63[217];
    v67 = v63[218];
    v68 = v63[219];
    v69 = v63[220];
    v101 = v23;
    v70 = v63[221];
    v71 = v63[222];
    LODWORD(v98) = v63[200];
    v72 = v93;
    sub_26A77F8A4(v62, v93);
    v73 = 256;
    if ((v66 & 1) == 0)
    {
      v73 = 0;
    }

    v74 = v73 & 0xFFFFFFFFFFFFFFFELL | v65 & 1;
    v75 = 0x10000;
    if ((v67 & 1) == 0)
    {
      v75 = 0;
    }

    v76 = 0x1000000;
    if ((v68 & 1) == 0)
    {
      v76 = 0;
    }

    v77 = v74 | v75 | v76;
    v78 = 0x100000000;
    if ((v69 & 1) == 0)
    {
      v78 = 0;
    }

    v79 = 0x10000000000;
    if ((v70 & 1) == 0)
    {
      v79 = 0;
    }

    v80 = 0x1000000000000;
    if ((v71 & 1) == 0)
    {
      v80 = 0;
    }

    sub_26A647150(v99, v98, v100, v77 | v78 | v79 | v80, v103);
    sub_26A4DBD10(v72, &unk_2803ABFF0, &qword_26A86DCC0);
    return (v102)(v62, v101);
  }

  else
  {
    v44 = &v19[*(v21 + 20)];
    v45 = *(v44 + 26);
    v101 = *(v44 + 24);
    v102 = v45;
    v46 = v44[216];
    v47 = v44[217];
    v48 = v44[218];
    v49 = v44[219];
    v50 = v44[220];
    v51 = v44[221];
    v52 = v44[222];
    LODWORD(v100) = v44[200];
    sub_26A77F8A4(&v19[v17], v10);
    v53 = 256;
    if ((v47 & 1) == 0)
    {
      v53 = 0;
    }

    v54 = v53 & 0xFFFFFFFFFFFFFFFELL | v46 & 1;
    v55 = 0x10000;
    if ((v48 & 1) == 0)
    {
      v55 = 0;
    }

    v56 = 0x1000000;
    if ((v49 & 1) == 0)
    {
      v56 = 0;
    }

    v57 = v54 | v55 | v56;
    v58 = 0x100000000;
    if ((v50 & 1) == 0)
    {
      v58 = 0;
    }

    v59 = 0x10000000000;
    if ((v51 & 1) == 0)
    {
      v59 = 0;
    }

    v60 = 0x1000000000000;
    if ((v52 & 1) == 0)
    {
      v60 = 0;
    }

    sub_26A647150(v101, v100, v102, v57 | v58 | v59 | v60, v103);
    return sub_26A4DBD10(v10, &unk_2803ABFF0, &qword_26A86DCC0);
  }
}

uint64_t sub_26A76AFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v55 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B71F8, &qword_26A881920);
  MEMORY[0x28223BE20](v52);
  v54 = &v38 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7200, &qword_26A881928);
  MEMORY[0x28223BE20](v53);
  v40 = &v38 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7208, &qword_26A881930);
  MEMORY[0x28223BE20](v48);
  v10 = (&v38 - v9);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7210, &qword_26A881938);
  MEMORY[0x28223BE20](v56);
  v12 = (&v38 - v11);
  v13 = sub_26A84B2F8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7218, &qword_26A881940);
  MEMORY[0x28223BE20](v49);
  v47 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v38 - v19;
  sub_26A76B6CC(&v58);
  v41 = v58;
  v42 = sub_26A851448();
  v43 = v20;
  v21 = *(type metadata accessor for ImageSourceView.Model(0) + 52);
  v22 = *(v14 + 104);
  v45 = *MEMORY[0x277D62D20];
  v44 = v22;
  v22(v16);
  sub_26A76D21C(&qword_2803B7220, MEMORY[0x277D62D38], MEMORY[0x277D62D40]);

  v51 = a1;
  v46 = v21;
  LOBYTE(a1) = sub_26A851758();
  v23 = *(v14 + 8);
  v23(v16, v13);
  if (a1)
  {
    v24 = v42;
    *v10 = v41;
    v10[1] = a2;
    v25 = v43;
    v10[2] = v24;
    v10[3] = v25;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7228, &qword_26A881948);
    sub_26A76CD78();
    sub_26A76CE30();
    v26 = v47;
    sub_26A84FDF8();
  }

  else
  {
    v27 = (v12 + *(v56 + 36));
    v28 = sub_26A84F5F8();
    v39 = v23;
    v29 = *(v28 + 20);
    v30 = *MEMORY[0x277CE0118];
    v31 = sub_26A84FB88();
    (*(*(v31 - 8) + 104))(v27 + v29, v30, v31);
    *v27 = a4;
    v27[1] = a4;
    *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)) = 256;
    v32 = v42;
    *v12 = v41;
    v12[1] = a2;
    v33 = v43;
    v12[2] = v32;
    v12[3] = v33;
    sub_26A4DBD68(v12, v10, &qword_2803B7210, &qword_26A881938);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7228, &qword_26A881948);
    sub_26A76CD78();
    sub_26A76CE30();
    v26 = v47;
    v23 = v39;
    sub_26A84FDF8();
    sub_26A4DBD10(v12, &qword_2803B7210, &qword_26A881938);
  }

  v34 = v50;
  sub_26A4DBDB4(v26, v50, &qword_2803B7218, &qword_26A881940);
  v44(v16, v45, v13);
  sub_26A76D21C(&qword_2803B5FB0, MEMORY[0x277D62D38], MEMORY[0x277D62D48]);
  sub_26A851A48();
  sub_26A851A48();
  v23(v16, v13);
  if (v58 == v57)
  {
    v35 = v40;
    sub_26A4DBD68(v34, v40, &qword_2803B7218, &qword_26A881940);
    *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7248, &qword_26A881950) + 36)) = 256;
    v36 = v54;
    *(v35 + *(v53 + 36)) = 0;
    sub_26A4DBD68(v35, v36, &qword_2803B7200, &qword_26A881928);
    swift_storeEnumTagMultiPayload();
    sub_26A76CEE8();
    sub_26A76D058();
    sub_26A84FDF8();
    sub_26A4DBD10(v35, &qword_2803B7200, &qword_26A881928);
  }

  else
  {
    sub_26A4DBD68(v34, v54, &qword_2803B7218, &qword_26A881940);
    swift_storeEnumTagMultiPayload();
    sub_26A76CEE8();
    sub_26A76D058();
    sub_26A84FDF8();
  }

  return sub_26A4DBD10(v34, &qword_2803B7218, &qword_26A881940);
}

uint64_t sub_26A76B6CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ImageStyleAppearance(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36[-v7 - 8];
  v9 = sub_26A850F28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (sub_26A76C490())
  {
    (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
    sub_26A850F98();
    (*(v10 + 8))(v12, v9);
    sub_26A76C218(v8);
    v13 = sub_26A850F68();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
    v14 = sub_26A850F38();

    sub_26A4DBD10(v8, &qword_2803AC918, &qword_26A85DBA0);
    if (*(v1 + *(type metadata accessor for ImageSourceView.Model(0) + 56)) <= 0.0)
    {
      v35 = v14;
      v33 = sub_26A851248();
    }

    else
    {
      sub_26A76A774(v5);
      sub_26A51DA28(v5);
      sub_26A76A774(v5);
      sub_26A51DA28(v5);
      sub_26A851448();
      sub_26A84F628();

      v15 = sub_26A850238();
      sub_26A84ED48();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v48[112] = 0;
      v24 = sub_26A8502A8();
      sub_26A84ED48();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v48[120] = 0;
      v35 = v14;
      memcpy(v36, v48, 0x70uLL);
      v36[112] = v15;
      v37 = v17;
      v38 = v19;
      v39 = v21;
      v40 = v23;
      v41 = 0;
      v42 = v24;
      v43 = v26;
      v44 = v28;
      v45 = v30;
      v46 = v32;
      v47 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7258, &qword_26A881958);
      sub_26A76D0E4(&qword_2803B7260, &qword_2803B7258, &qword_26A881958, sub_26A76D168);
      v33 = sub_26A851248();
    }

    *a1 = v33;
  }

  else
  {
    v35 = sub_26A850DF8();
    result = sub_26A851248();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26A76BB40(char a1)
{
  v47 = sub_26A84EE68();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v46 = sub_26A8514D8();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_26A8513F8();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B71C0, &qword_26A881900);
  MEMORY[0x28223BE20](v38);
  v11 = &v37 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B71C8, &qword_26A881908);
  MEMORY[0x28223BE20](v41);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = sub_26A84B048();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038, &qword_26A872050);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v37 - v21;
  if (!a1)
  {
    v32 = type metadata accessor for ImageSourceView.Model(0);
    sub_26A4DBD68(v48 + *(v32 + 48), v22, &qword_2803AD038, &qword_26A872050);
    v33 = sub_26A84DFA8();
    if (__swift_getEnumTagSinglePayload(v22, 1, v33) == 1)
    {
      sub_26A4DBD10(v22, &qword_2803AD038, &qword_26A872050);
    }

    else
    {
      sub_26A84DF78();
      v35 = _ProtoColor.swiftValue.getter();
      (*(v17 + 8))(v19, v16);
      (*(*(v33 - 8) + 8))(v22, v33);
      if (v35)
      {
LABEL_13:

        sub_26A850DD8();
        v36 = sub_26A850E68();

        v49 = v35;
        v50 = 256;
        v51 = v36;
        v52 = xmmword_26A8606B0;
        v53 = 0x4000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B71D8, &qword_26A881910);
        sub_26A76CCC0();
        v31 = sub_26A851248();

        return v31;
      }
    }

    v35 = sub_26A850DF8();
    goto LABEL_13;
  }

  if (a1 == 1)
  {
    sub_26A8513D8();
    type metadata accessor for ImageSourceView(0);
    sub_26A720064(v6);
    v23 = v45;
    v24 = v47;
    (*(v45 + 104))(v3, *MEMORY[0x277CDF3C0], v47);
    v25 = sub_26A84EE58();
    v26 = *(v23 + 8);
    v26(v3, v24);
    v26(v6, v24);
    v27 = v44;
    v28 = MEMORY[0x277CE13B8];
    if ((v25 & 1) == 0)
    {
      v28 = MEMORY[0x277CE13D8];
    }

    v29 = v43;
    v30 = v46;
    (*(v44 + 104))(v43, *v28, v46);
    (*(v40 + 32))(v11, v9, v42);
    (*(v27 + 32))(&v11[*(v38 + 36)], v29, v30);
    sub_26A4DBDB4(v11, v15, &qword_2803B71C0, &qword_26A881900);
    *&v15[*(v41 + 56)] = 256;
    sub_26A4DBD68(v15, v39, &qword_2803B71C8, &qword_26A881908);
    sub_26A4DBCC8(&qword_2803B71D0, &qword_2803B71C8, &qword_26A881908, MEMORY[0x277CDF3A0]);
    v31 = sub_26A851248();
    sub_26A4DBD10(v15, &qword_2803B71C8, &qword_26A881908);
    return v31;
  }

  return sub_26A851248();
}

uint64_t sub_26A76C218@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_26A84B2E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImageSourceView.Model(0);
  (*(v6 + 104))(v8, *MEMORY[0x277D62D00], v5);
  sub_26A76D21C(&qword_2803B7288, MEMORY[0x277D62D10], MEMORY[0x277D62D18]);
  v9 = sub_26A851758();
  v10 = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    return sub_26A5B8444(v10);
  }

  type metadata accessor for ImageSourceView(0);
  sub_26A720508(v4);
  v11 = sub_26A850F68();
  if (__swift_getEnumTagSinglePayload(v4, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a1, v4, v11);
  }

  sub_26A4DBD10(v4, &qword_2803AC918, &qword_26A85DBA0);
  return (*(*(v11 - 8) + 104))(a1, *MEMORY[0x277CE1010], v11);
}

uint64_t sub_26A76C490()
{
  v1 = v0;
  v2 = sub_26A84EE68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_26A84F988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ImageSourceView(0);
  v14 = v1 + *(v13 + 64);
  v15 = *v14;
  if ((v14[8] & 1) == 0)
  {

    sub_26A851EA8();
    v27 = v10;
    v16 = sub_26A8501F8();
    v26 = v12;
    v17 = v16;
    v10 = v27;
    sub_26A84EA78();

    v12 = v26;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v15, 0);
    (*(v10 + 1))(v12, v9);
    v15 = v29;
  }

  if (sub_26A61B05C(v15, &unk_287B13248))
  {
    v18 = v1 + *(v13 + 48);
    v19 = *v18;
    if (v18[8] != 1)
    {

      sub_26A851EA8();
      v26 = v9;
      v27 = v8;
      v20 = v12;
      v21 = sub_26A8501F8();
      v8 = v27;
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v19, 0);
      (*(v10 + 1))(v20, v26);
      LOBYTE(v19) = v28;
    }

    if (v19 != 2 && (v19 & 1) != 0)
    {
      goto LABEL_11;
    }
  }

  v22 = v1[1];
  if (!v22)
  {
    goto LABEL_11;
  }

  sub_26A720064(v8);
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
  v23 = sub_26A84EE58();
  v24 = *(v3 + 8);
  v24(v5, v2);
  v24(v8, v2);
  if ((v23 & 1) == 0)
  {

LABEL_11:
    v22 = *v1;
  }

  return v22;
}

uint64_t sub_26A76C8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSourceView.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A76C974(uint64_t a1)
{
  v1 = type metadata accessor for ImageSourceView.Model(319);
  if (v2 <= 0x3F)
  {
    sub_26A576B80(319, &qword_2803AFE48, &qword_2803AFE50, &unk_26A867F20);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A76CBF0(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26A576B80(319, &qword_2803B0178, &qword_2803AA470, &qword_26A8560B0);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_26A576B80(319, &qword_2803B71B0, &qword_2803AC918, &qword_26A85DBA0);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_26A576B80(319, &qword_2803B2E18, &qword_2803AFAE8, &qword_26A8676A0);
        if (v10 > 0x3F)
        {
          return v7;
        }

        sub_26A76CC40(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v11 > 0x3F)
        {
          return v7;
        }

        sub_26A576B80(319, &qword_2803AFE58, &qword_2803AF0C0, &unk_26A87C580);
        if (v12 > 0x3F)
        {
          return v7;
        }

        sub_26A576B80(319, &qword_2803B0180, &qword_2803B0188, &unk_26A868C80);
        if (v13 > 0x3F)
        {
          return v7;
        }

        sub_26A76CC40(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v14 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_26A76CBF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26A76CC40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26A76CCC0()
{
  result = qword_2803B71E0;
  if (!qword_2803B71E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B71D8, &qword_26A881910);
    sub_26A4DBCC8(&qword_2803B71E8, &qword_2803B71F0, &qword_26A881918, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B71E0);
  }

  return result;
}

unint64_t sub_26A76CD78()
{
  result = qword_2803B7230;
  if (!qword_2803B7230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7210, &qword_26A881938);
    sub_26A76CE30();
    sub_26A4DBCC8(&qword_28157FEA0, &qword_2803A9E58, &unk_26A857A00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7230);
  }

  return result;
}

unint64_t sub_26A76CE30()
{
  result = qword_28157FDE0;
  if (!qword_28157FDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7228, &qword_26A881948);
    sub_26A4DBCC8(&qword_28157FC60, &qword_2803AD100, &unk_26A85D3C0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FDE0);
  }

  return result;
}

unint64_t sub_26A76CEE8()
{
  result = qword_2803B7238;
  if (!qword_2803B7238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7200, &qword_26A881928);
    sub_26A76CFA0();
    sub_26A4DBCC8(&qword_2803B63F8, &qword_2803B6400, &qword_26A87DEE8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7238);
  }

  return result;
}

unint64_t sub_26A76CFA0()
{
  result = qword_2803B7240;
  if (!qword_2803B7240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7248, &qword_26A881950);
    sub_26A76D058();
    sub_26A4DBCC8(&qword_2803AE090, &qword_2803AE098, &qword_26A8608C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7240);
  }

  return result;
}

unint64_t sub_26A76D058()
{
  result = qword_2803B7250;
  if (!qword_2803B7250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7218, &qword_26A881940);
    sub_26A76CD78();
    sub_26A76CE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7250);
  }

  return result;
}

uint64_t sub_26A76D0E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A76D198()
{
  result = qword_2803B7278;
  if (!qword_2803B7278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7280, &qword_26A881968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7278);
  }

  return result;
}

uint64_t sub_26A76D21C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A76D264()
{
  result = qword_28157FD90;
  if (!qword_28157FD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7290, &qword_26A881970);
    sub_26A5F7870();
    sub_26A4DBCC8(&qword_28157FC58, &qword_2803B7298, &qword_26A881978, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_26A84EA78();
}

uint64_t OUTLINED_FUNCTION_14_40()
{

  return sub_26A84F978();
}

id sub_26A76D3EC()
{
  v2 = sub_26A76D4D0();
  if (v2)
  {
    v3 = v2;
    v4 = [v1 secondary_button];
    if (v4)
    {
      v5 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150, &unk_26A857200);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_26A881980;
      *(v6 + 32) = v5;
      *(v6 + 40) = v3;
      return sub_26A6F9208(v6, 4, 0, 0);
    }
  }

  sub_26A4E353C();
  swift_allocError();
  *v8 = v1;
  *(v8 + 8) = &unk_287B13528;
  *(v8 + 16) = 0;
  swift_willThrow();
  return v1;
}

id sub_26A76D4D0()
{
  v1 = [v0 primary_button];
  if (v1 && (sub_26A76D67C() & 1) == 0)
  {
    v2 = [v1 buttonAppearance];
    if (v2 && (v3 = v2, [v2 copy], v3, sub_26A852108(), swift_unknownObjectRelease(), sub_26A4EC5B0(0, &qword_2803B4FF0, 0x277D4C208), swift_dynamicCast()))
    {
      v4 = v7;
    }

    else
    {
      v4 = [objc_allocWithZone(MEMORY[0x277D4C208]) init];
    }

    [v4 setRole_];
    [v1 copy];
    sub_26A852108();
    swift_unknownObjectRelease();
    sub_26A4EC5B0(0, &qword_2803AFE28, 0x277D4C200);
    if (swift_dynamicCast())
    {
      v5 = v7;
      [v5 setButtonAppearance_];

      return v7;
    }

    else
    {

      return 0;
    }
  }

  return v1;
}

unint64_t sub_26A76D67C()
{
  result = [v0 primary_button];
  if (result)
  {
    v2 = result;
    v3 = [v0 secondary_button];
    if (v3)
    {
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150, &unk_26A857200);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26A881980;
      *(inited + 32) = v2;
      *(inited + 40) = v4;
      v15 = v2;
      v14 = v4;
      v6 = 0;
      for (result = 0; ; result = 1)
      {
        v7 = v6;
        if ((inited & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x26D6644E0](result, inited);
        }

        else
        {
          if (result >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v8 = *(inited + 32 + 8 * result);
        }

        v9 = v8;
        v10 = [v8 buttonAppearance];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 tintColor];
          if (v12)
          {

LABEL_18:
            swift_setDeallocating();
            sub_26A7A0CA4();
            return 1;
          }

          v13 = [v11 role];

          if (v13)
          {
            goto LABEL_18;
          }
        }

        else
        {
        }

        v6 = 1;
        if (v7)
        {

          swift_setDeallocating();
          sub_26A7A0CA4();
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_26A76D8AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50, &unk_26A857890);
  return v5 != 0;
}

id sub_26A76D994@<X0>(char *a1@<X8>)
{
  v3 = v1;
  v5 = [v1 text_1];
  if (v5)
  {
    v6 = v5;
    v279 = v2;
    v277[3] = &type metadata for PartialText;
    v277[4] = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    v277[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v277[0] + 16);
    v7 = [v1 text_2];
    if (v7)
    {
      v8 = v7;
      *(&v275 + 1) = &type metadata for PartialText;
      v276 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v274 = swift_allocObject();
      RFTextProperty.asPartialText()(v274 + 16);
    }

    else
    {
      v276 = 0;
      v274 = 0u;
      v275 = 0u;
    }

    v11 = sub_26A54AB40(v3, &selRef_text_3);
    if (v11)
    {
      sub_26A51B744(v11, v256);
      sub_26A54AAEC();
      v11 = sub_26A851248();
      v12 = &protocol witness table for AnyView;
      v13 = MEMORY[0x277CE11C8];
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v273[2] = 0;
      v273[1] = 0;
    }

    v273[0] = v11;
    v273[3] = v13;
    v273[4] = v12;
    v14 = [v3 text_4];
    if (v14)
    {
      v15 = v14;
      *(&v271 + 1) = &type metadata for PartialText;
      v272 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v270 = swift_allocObject();
      RFTextProperty.asPartialText()(v270 + 16);
    }

    else
    {
      v272 = 0;
      v270 = 0u;
      v271 = 0u;
    }

    v16 = sub_26A54AB40(v3, &selRef_text_5);
    if (v16)
    {
      sub_26A51B744(v16, v256);
      sub_26A54AAEC();
      v16 = sub_26A851248();
      v17 = &protocol witness table for AnyView;
      v18 = MEMORY[0x277CE11C8];
    }

    else
    {
      v18 = 0;
      v17 = 0;
      v269[2] = 0;
      v269[1] = 0;
    }

    v269[0] = v16;
    v269[3] = v18;
    v269[4] = v17;
    v19 = [v3 text_6];
    if (v19)
    {
      v20 = v19;
      *(&v267 + 1) = &type metadata for PartialText;
      v268 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v266 = swift_allocObject();
      RFTextProperty.asPartialText()(v266 + 16);
    }

    else
    {
      v268 = 0;
      v266 = 0u;
      v267 = 0u;
    }

    v21 = [v3 text_7];
    if (v21)
    {
      v22 = v21;
      *(&v264 + 1) = &type metadata for PartialText;
      v265 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v263 = swift_allocObject();
      RFTextProperty.asPartialText()(v263 + 16);
    }

    else
    {
      v265 = 0;
      v263 = 0u;
      v264 = 0u;
    }

    v23 = [v3 text_8];
    if (v23)
    {
      v24 = v23;
      *(&v261 + 1) = &type metadata for PartialText;
      v262 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v260 = swift_allocObject();
      RFTextProperty.asPartialText()(v260 + 16);
    }

    else
    {
      v262 = 0;
      v260 = 0u;
      v261 = 0u;
    }

    v25 = [v3 thumbnail];
    if (v25)
    {
      v26 = v25;
      *(&v258 + 1) = sub_26A84BD28();
      v259 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(&v257);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v259 = 0;
      v257 = 0u;
      v258 = 0u;
    }

    if (qword_2803A89D0 != -1)
    {
      swift_once();
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8, &qword_26A85B990);
    v28 = __swift_project_value_buffer(v27, qword_2803D1900);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908, &qword_26A864570);
    v30 = &a1[*(v29 + 32)];
    sub_26A4EA070(v28, v30, &qword_2803AADC8, &qword_26A85B990);
    sub_26A6AEE74(__src);
    memcpy(a1, __src, 0xBFuLL);
    sub_26A5375E4(&v30[*(v27 + 36)], &a1[*(v29 + 28)]);
    v31 = type metadata accessor for SimpleItemRichSearchResultView(0);
    v32 = &a1[v31[5]];
    if (qword_28157E660 != -1)
    {
      swift_once();
    }

    v251[0] = xmmword_281588758;
    v251[1] = unk_281588768;
    v251[2] = xmmword_281588778;
    v251[3] = xmmword_281588788;
    v252 = xmmword_281588758;
    v253 = unk_281588768;
    v254 = xmmword_281588778;
    v255 = xmmword_281588788;
    v194 = xmmword_281588788;
    v221 = xmmword_281588778;
    sub_26A4EA070(v251, v256, &qword_2803A91B0, &unk_26A854CA0);
    sub_26A6AEE74(v256);
    memcpy(v32, v256, 0xC0uLL);
    *(v32 + 12) = v221;
    *(v32 + 13) = v194;
    v33 = v253;
    *(v32 + 14) = v252;
    *(v32 + 15) = v33;
    v34 = v255;
    *(v32 + 16) = v254;
    *(v32 + 17) = v34;
    v35 = v31[6];
    *&a1[v35] = swift_getKeyPath();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
    OUTLINED_FUNCTION_5_73(v36);
    v37 = &a1[v31[7]];
    *v37 = swift_getKeyPath();
    v37[8] = 0;
    v38 = v31[8];
    *&a1[v38] = swift_getKeyPath();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
    OUTLINED_FUNCTION_5_73(v39);
    v40 = &a1[v31[9]];
    *v40 = swift_getKeyPath();
    v40[8] = 0;
    v41 = v31[10];
    *&a1[v41] = swift_getKeyPath();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
    OUTLINED_FUNCTION_5_73(v42);
    v43 = &a1[v31[11]];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    sub_26A50429C(v277, &v247);
    OUTLINED_FUNCTION_80();
    v44 = swift_allocObject();
    sub_26A4C2314(&v247, v44 + 16);
    v45 = &a1[v31[12]];
    *v45 = sub_26A6C0750;
    *(v45 + 1) = v44;
    OUTLINED_FUNCTION_1_94(&v274, v46, v47, v48, v49, v50, v51, v52, v194, *(&v194 + 1), v221);
    OUTLINED_FUNCTION_80();
    v53 = swift_allocObject();
    *&v63 = OUTLINED_FUNCTION_0_91(v53, v54, v55, v56, v57, v58, v59, v60, v61, v195, v208, v221, *(&v221 + 1), v240, v62, v247, v248).n128_u64[0];
    v64 = &a1[v31[13]];
    *v64 = sub_26A76E380;
    *(v64 + 1) = v65;
    OUTLINED_FUNCTION_1_94(v273, v66, v67, v68, v69, v70, v71, v72, v196, v209, v222, v63);
    OUTLINED_FUNCTION_80();
    v73 = swift_allocObject();
    *&v83 = OUTLINED_FUNCTION_0_91(v73, v74, v75, v76, v77, v78, v79, v80, v81, v197, v210, v223, v234, v241, v82, v247, v248).n128_u64[0];
    v84 = &a1[v31[14]];
    *v84 = sub_26A76E380;
    *(v84 + 1) = v85;
    OUTLINED_FUNCTION_1_94(&v270, v86, v87, v88, v89, v90, v91, v92, v198, v211, v224, v83);
    OUTLINED_FUNCTION_80();
    v93 = swift_allocObject();
    *&v103 = OUTLINED_FUNCTION_0_91(v93, v94, v95, v96, v97, v98, v99, v100, v101, v199, v212, v225, v235, v242, v102, v247, v248).n128_u64[0];
    v104 = &a1[v31[15]];
    *v104 = sub_26A76E380;
    *(v104 + 1) = v105;
    OUTLINED_FUNCTION_1_94(v269, v106, v107, v108, v109, v110, v111, v112, v200, v213, v226, v103);
    OUTLINED_FUNCTION_80();
    v113 = swift_allocObject();
    *&v123 = OUTLINED_FUNCTION_0_91(v113, v114, v115, v116, v117, v118, v119, v120, v121, v201, v214, v227, v236, v243, v122, v247, v248).n128_u64[0];
    v124 = &a1[v31[16]];
    *v124 = sub_26A76E380;
    *(v124 + 1) = v125;
    OUTLINED_FUNCTION_1_94(&v266, v126, v127, v128, v129, v130, v131, v132, v202, v215, v228, v123);
    OUTLINED_FUNCTION_80();
    v133 = swift_allocObject();
    *&v143 = OUTLINED_FUNCTION_0_91(v133, v134, v135, v136, v137, v138, v139, v140, v141, v203, v216, v229, v237, v244, v142, v247, v248).n128_u64[0];
    v144 = &a1[v31[17]];
    *v144 = sub_26A76E380;
    *(v144 + 1) = v145;
    OUTLINED_FUNCTION_1_94(&v263, v146, v147, v148, v149, v150, v151, v152, v204, v217, v230, v143);
    OUTLINED_FUNCTION_80();
    v153 = swift_allocObject();
    *&v163 = OUTLINED_FUNCTION_0_91(v153, v154, v155, v156, v157, v158, v159, v160, v161, v205, v218, v231, v238, v245, v162, v247, v248).n128_u64[0];
    v164 = &a1[v31[18]];
    *v164 = sub_26A76E380;
    *(v164 + 1) = v165;
    OUTLINED_FUNCTION_1_94(&v260, v166, v167, v168, v169, v170, v171, v172, v206, v219, v232, v163);
    OUTLINED_FUNCTION_80();
    v173 = swift_allocObject();
    OUTLINED_FUNCTION_0_91(v173, v174, v175, v176, v177, v178, v179, v180, v181, v207, v220, v233, v239, v246, v182, v247, v248);
    v183 = &a1[v31[19]];
    *v183 = sub_26A76E380;
    *(v183 + 1) = v184;
    sub_26A4EA070(&v257, &v247, &qword_2803A91B8, &qword_26A8575C0);
    v185 = v249;
    if (v249)
    {
      v186 = v250;
      __swift_project_boxed_opaque_existential_1(&v247, v249);
      v187 = (v186[1])(v185, v186);
      __swift_destroy_boxed_opaque_existential_1(&v247);
      v188 = &protocol witness table for AnyView;
      v189 = MEMORY[0x277CE11C8];
    }

    else
    {
      sub_26A4E2544(&v247, &qword_2803A91B8, &qword_26A8575C0);
      v187 = 0;
      v189 = 0;
      v188 = 0;
      *(&v247 + 1) = 0;
      v248 = 0;
    }

    *&v247 = v187;
    v249 = v189;
    v250 = v188;
    v190 = sub_26A6A8134(&v247);
    v192 = v191;

    sub_26A4E2544(&v257, &qword_2803A91B8, &qword_26A8575C0);
    OUTLINED_FUNCTION_4_54(&v260);
    OUTLINED_FUNCTION_4_54(&v263);
    OUTLINED_FUNCTION_4_54(&v266);
    OUTLINED_FUNCTION_4_54(v269);
    OUTLINED_FUNCTION_4_54(&v270);
    OUTLINED_FUNCTION_4_54(v273);
    OUTLINED_FUNCTION_4_54(&v274);
    result = __swift_destroy_boxed_opaque_existential_1(v277);
    v193 = &a1[v31[20]];
    *v193 = v190;
    v193[8] = v192;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v9 = v1;
    *(v9 + 8) = &unk_287B13AD8;
    *(v9 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A76E328()
{
  result = qword_2803B3B88;
  if (!qword_2803B3B88)
  {
    type metadata accessor for SimpleItemRichSearchResultView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3B88);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_0_91(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a14, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 a15, __int128 a16, uint64_t a17)
{
  result = a15;
  *(a1 + 16) = a15;
  *(a1 + 32) = a16;
  *(a1 + 48) = a17;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_26A4EA070(a1, va, v11, v12);
}

uint64_t OUTLINED_FUNCTION_5_73(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t TextProperty.asAnyView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B72A0, &qword_26A881B60);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v37 - v7;
  sub_26A84B888();
  OUTLINED_FUNCTION_46();
  (*(v9 + 16))(v8, v0);
  v10 = type metadata accessor for TextPropertyView(0);
  v11 = &v8[v10[5]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v10[6];
  *&v8[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v13 = &v8[v10[7]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v8[v10[8]];
  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 3) = swift_getKeyPath();
  v14[32] = 0;
  v15 = type metadata accessor for ActionHandler(0);
  v16 = v15[6];
  *&v14[v16] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v17 = &v14[v15[7]];
  *v17 = swift_getKeyPath();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = &v14[v15[8]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = &v14[v15[9]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v14[v15[10]];
  *v20 = swift_getKeyPath();
  v20[9] = 0;
  swift_unknownObjectWeakInit();
  v21 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  v28 = sub_26A84B848();
  v30 = v29;
  v31 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B72A8, &unk_26A881CB8) + 36)];
  *v31 = v28;
  v31[1] = v30;
  v37[0] = sub_26A84B848();
  v37[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFB8, &qword_26A85A410);
  sub_26A851048();
  v33 = v39;
  v34 = &v8[*(v1 + 36)];
  *v34 = v38;
  *(v34 + 2) = v33;
  sub_26A51D0F8(v8, v5, &qword_2803B72A0, &qword_26A881B60);
  sub_26A76F6C4(&qword_2803B72B0, &qword_2803B72A0, &qword_26A881B60, sub_26A76EEB4);
  v35 = sub_26A851248();
  sub_26A4D6FD8();
  return v35;
}

uint64_t MultilineTextProperty.asAnyView()()
{
  v1 = type metadata accessor for MultilineTextPropertyView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_44();
  sub_26A84D098();
  OUTLINED_FUNCTION_46();
  (*(v4 + 16))(v0, v0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(KeyPath);
  v6 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v6);
  v7 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v7);
  v8 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v8);
  v9 = v0 + *(v1 + 36);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = swift_getKeyPath();
  *(v9 + 32) = 0;
  v10 = type metadata accessor for ActionHandler(0);
  v11 = v10[6];
  *(v9 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v12 = v9 + v10[7];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = v9 + v10[8];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v9 + v10[9];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = v9 + v10[10];
  *v15 = swift_getKeyPath();
  *(v15 + 9) = 0;
  swift_unknownObjectWeakInit();
  v16 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  OUTLINED_FUNCTION_6_62();
  sub_26A76F8E0();
  v23 = OUTLINED_FUNCTION_7_64();
  sub_26A76F82C();
  return v23;
}

uint64_t VisualProperty.asAnyView()()
{
  v1 = type metadata accessor for VisualPropertyView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_44();
  sub_26A84BD28();
  OUTLINED_FUNCTION_46();
  (*(v4 + 16))(v0, v0);
  v5 = v0 + v1[5];
  *v5 = swift_getKeyPath();
  *(v5 + 9) = 0;
  swift_unknownObjectWeakInit();
  v6 = v0 + v1[6];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = v0 + v1[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v1[8];
  *(v0 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v9 = v0 + v1[9];
  sub_26A851048();
  *v9 = v12;
  *(v9 + 8) = v13;
  OUTLINED_FUNCTION_6_62();
  sub_26A76F8E0();
  v10 = OUTLINED_FUNCTION_7_64();
  sub_26A76F82C();
  return v10;
}

uint64_t sub_26A76EBE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A62FF24();
  *a1 = v3;
  return result;
}

uint64_t sub_26A76ECC8()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.hideRedactions.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_26A76ED18()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.viewId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A76ED40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EnvironmentValues.viewId.setter(v1, v2);
}

uint64_t sub_26A76EDA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8, &qword_26A868130);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_26A51D0F8(a1, &v6 - v3, &qword_2803ADBC8, &qword_26A868130);
  return EnvironmentValues.response.setter(v4);
}

uint64_t sub_26A76EE4C()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A76EE74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EnvironmentValues.componentName.setter(v1, v2);
}

unint64_t sub_26A76EEB4()
{
  result = qword_2803B72B8;
  if (!qword_2803B72B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B72A8, &unk_26A881CB8);
    sub_26A76F8E0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B72B8);
  }

  return result;
}

uint64_t String.asAnyView()(uint64_t a1, uint64_t a2)
{
  sub_26A53ACC8();

  sub_26A850898();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFB8, &qword_26A85A410);
  sub_26A851048();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B72D0, &qword_26A881D30);
  sub_26A76F6C4(&qword_2803B72D8, &qword_2803B72D0, &qword_26A881D30, sub_26A76F774);
  return sub_26A851248();
}

uint64_t Text.asAnyView()(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_26A4EF6C0(a1, a2, a3 & 1);

  return sub_26A851248();
}

uint64_t RFImageView.asAnyView()()
{
  type metadata accessor for RFImageView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_2_94();
  sub_26A76F880(v0, v4, v5);
  OUTLINED_FUNCTION_1_95();
  sub_26A76F8E0();
  return OUTLINED_FUNCTION_7_64();
}

uint64_t RFImage.asAnyView()()
{
  v1 = sub_26A84B718();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = sub_26A84E338();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  v15 = type metadata accessor for RFImageView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (v31 - v22);
  (*(v10 + 16))(v14, v0, v8, v21);
  sub_26A5E9128(v23);
  v24 = v23 + v15[5];
  *v24 = sub_26A725F68;
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = v15[8];
  v31[1] = 0;
  sub_26A851048();
  *(v23 + v25) = v32;
  sub_26A84E2E8();
  v26 = sub_26A84B2D8();
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
  *(v23 + v15[6]) = v26;
  v27 = (v23 + v15[7]);
  *v27 = 0;
  v27[1] = 0;
  OUTLINED_FUNCTION_2_94();
  sub_26A76F880(v23, v19, v28);
  OUTLINED_FUNCTION_1_95();
  sub_26A76F8E0();
  v29 = sub_26A851248();
  sub_26A76F82C();
  return v29;
}

uint64_t RichTextView.asAnyView()()
{
  type metadata accessor for RichTextView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_6_62();
  sub_26A76F8E0();
  return OUTLINED_FUNCTION_7_64();
}

uint64_t Button.asAnyView()(uint64_t a1)
{
  swift_getWitnessTable();

  return View.eraseToAnyView()(a1);
}

uint64_t PartialText.asAnyView()()
{
  memcpy(__dst, v0, 0xFAuLL);
  memcpy(v3, v0, sizeof(v3));
  sub_26A4EC458(__dst, &v2);
  sub_26A4EC4B4();
  return sub_26A851248();
}

uint64_t sub_26A76F6C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A76F774()
{
  result = qword_2803B72E0;
  if (!qword_2803B72E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B72E8, &qword_26A881D38);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B72E0);
  }

  return result;
}

uint64_t sub_26A76F82C()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A76F880(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_26A76F8E0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_62()
{

  return sub_26A76F880(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_7_64()
{

  return sub_26A851248();
}

void sub_26A76F9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_0();
  v102 = v24;
  v103 = v23;
  v105 = v25;
  v104 = v26;
  v92 = v27;
  v101 = v28;
  v99 = v29;
  v100 = v30;
  v32 = v31;
  v98 = a21;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v33);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v34);
  v91 = &v91 - v35;
  v97 = *(a22 - 8);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_41();
  v39 = v38 - v37;
  v117[0] = a22;
  v117[1] = a23;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_15();
  v95 = v41;
  v96 = v40;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v42);
  v44 = &v91 - v43;
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v109 = xmmword_281588758;
  v110 = unk_281588768;
  v111 = xmmword_281588778;
  v112 = xmmword_281588788;
  v113 = xmmword_281588758;
  v114 = unk_281588768;
  v115 = xmmword_281588778;
  v116 = xmmword_281588788;
  v93 = xmmword_281588788;
  v94 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(v117);
  memcpy((v32 + 16), v117, 0xC0uLL);
  v45 = v93;
  *(v32 + 208) = v94;
  *(v32 + 224) = v45;
  v46 = v114;
  *(v32 + 240) = v113;
  *(v32 + 256) = v46;
  v47 = v116;
  *(v32 + 272) = v115;
  *(v32 + 288) = v47;
  *(v32 + 304) = swift_getKeyPath();
  *(v32 + 312) = 0;
  *(v32 + 320) = 0;
  *(v32 + 328) = swift_getKeyPath();
  *(v32 + 336) = 0;
  *(v32 + 344) = 0;
  *(v32 + 352) = swift_getKeyPath();
  *(v32 + 360) = 0;
  *(v32 + 368) = swift_getKeyPath();
  *(v32 + 376) = 0;
  *(v32 + 384) = swift_getKeyPath();
  *(v32 + 392) = 0;
  *(v32 + 400) = swift_getKeyPath();
  *(v32 + 408) = 0;
  v49 = type metadata accessor for ComponentWithAction(0, a22, a23, v48);
  v50 = v32 + v49[20];
  *v50 = swift_getKeyPath();
  *(v50 + 8) = 0;
  *(v50 + 16) = 0;
  *(v50 + 24) = swift_getKeyPath();
  *(v50 + 32) = 0;
  v51 = type metadata accessor for ActionHandler(0);
  v52 = v51[6];
  *(v50 + v52) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v53 = v50 + v51[7];
  *v53 = swift_getKeyPath();
  *(v53 + 8) = 0;
  *(v53 + 16) = 0;
  v54 = v50 + v51[8];
  *v54 = swift_getKeyPath();
  *(v54 + 8) = 0;
  v55 = v50 + v51[9];
  *v55 = swift_getKeyPath();
  *(v55 + 8) = 0;
  v56 = v50 + v51[10];
  *v56 = swift_getKeyPath();
  *(v56 + 9) = 0;
  swift_unknownObjectWeakInit();
  v57 = v51[11];
  v58 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
  sub_26A5DFFA0(v50 + v57, &qword_2803B3910, &qword_26A855580);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v58);
  v65 = v32 + v49[22];
  *v65 = sub_26A778EE0;
  *(v65 + 8) = 0;
  *(v65 + 16) = 0;
  v66 = v32 + v49[23];
  *(v66 + 32) = 0;
  *v66 = 0u;
  *(v66 + 16) = 0u;
  v67 = v103;
  v68 = sub_26A4D7E54();
  v69 = v32 + v49[18];
  v70 = v99;
  v71 = v99[1];
  *v69 = *v99;
  *(v69 + 16) = v71;
  *(v69 + 32) = *(v70 + 32);
  v72 = v100;
  if (v101)
  {
    v72 = 16.0;
  }

  *(v32 + v49[21]) = v72;
  v102(v68);
  sub_26A4E34A0();
  sub_26A850AF8();
  (*(v97 + 8))(v39, a22);
  v106[0] = a22;
  v106[1] = a23;
  swift_getOpaqueTypeConformance2();
  v73 = v96;
  v74 = View.eraseToAnyView()(v96);
  (*(v95 + 8))(v44, v73);
  *(v32 + v49[17]) = v74;
  v75 = v67;
  if ((v104 & 1) == 0)
  {
    v78 = v92;
    *(v32 + v49[19]) = v92;
    v79 = sub_26A61B05C(v78, &unk_287B13068);
    v80 = v105;
    if (v79)
    {
      v107 = &type metadata for CarPlayComponentWithAction;
      v108 = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v81 = swift_allocObject();
      OUTLINED_FUNCTION_23_22(v81);
      sub_26A775874(v82);
LABEL_16:
      sub_26A5DFFA0(v80, &qword_2803A91C0, &unk_26A854CB0);
      sub_26A5DFFA0(v75, &qword_2803A91C8, &unk_26A856820);
      goto LABEL_17;
    }

    v83 = v91;
    sub_26A4D7E54();
    v84 = sub_26A84F3A8();
    if (__swift_getEnumTagSinglePayload(v83, 1, v84) == 1)
    {
      sub_26A5DFFA0(v83, &qword_2803A91C0, &unk_26A854CB0);
    }

    else
    {
      v85 = sub_26A84F388();
      OUTLINED_FUNCTION_4_11();
      (*(v86 + 8))(v83, v84);
      if (v85)
      {
        v107 = &type metadata for WatchComponentWithAction;
        v108 = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v87 = swift_allocObject();
        OUTLINED_FUNCTION_23_22(v87);
        sub_26A775930();
        goto LABEL_16;
      }
    }

    v107 = &type metadata for DefaultComponentWithAction;
    v108 = sub_26A4D32E0();
    v88 = swift_allocObject();
    v89 = OUTLINED_FUNCTION_23_22(v88);
    sub_26A7759F8(v89, v90);
    goto LABEL_16;
  }

  v76 = v105;
  if (qword_28157F7C0 != -1)
  {
    swift_once();
  }

  *(v32 + v49[19]) = qword_2815889C0;
  sub_26A5DFFA0(v76, &qword_2803A91C0, &unk_26A854CB0);
  sub_26A5DFFA0(v67, &qword_2803A91C8, &unk_26A856820);
  v107 = type metadata accessor for RuntimeComponentWithAction(0);
  v108 = sub_26A7766F8(&unk_2803A9450);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v106);
  sub_26A775D44(v49, boxed_opaque_existential_1);
LABEL_17:
  sub_26A4D3270(v106, v66);
  OUTLINED_FUNCTION_27_0();
}

void ComponentWithAction.init(action:marginPadding:chevronPadding:idiom:dynamicTypeSize:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_0();
  v71 = v25;
  v72 = v24;
  HIDWORD(v67) = v26;
  v69 = v27;
  v70 = v28;
  HIDWORD(v65) = v29;
  v68 = v30;
  v32 = v31;
  v66 = v33;
  v64 = a22;
  v62 = a23;
  v63 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v34);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v35);
  v37 = &v62 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  OUTLINED_FUNCTION_79(v38);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_48_4();
  v40 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_41();
  v46 = v45 - v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  v48 = OUTLINED_FUNCTION_79(v47);
  MEMORY[0x28223BE20](v48);
  v50 = &v62 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v53 = &v62 - v52;
  v73 = v32;
  OUTLINED_FUNCTION_50_5();
  if (__swift_getEnumTagSinglePayload(v23, 1, v40) == 1)
  {
    sub_26A5DFFA0(v23, &qword_2803B3800, &unk_26A856760);
    type metadata accessor for ActionType(0);
    OUTLINED_FUNCTION_81();
  }

  else
  {
    v58 = *(v42 + 32);
    v58(v46, v23, v40);
    v58(v53, v46, v40);
    v59 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    v54 = v53;
    v55 = 0;
    v56 = 1;
    v57 = v59;
  }

  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  sub_26A4D7E54();
  v60 = v72;
  OUTLINED_FUNCTION_50_5();
  sub_26A76F9B4(v50, v68, v69, BYTE4(v65) & 1, v70, BYTE4(v67) & 1, v37, v71, v63, v64, v62, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  sub_26A5DFFA0(v60, &qword_2803A91C0, &unk_26A854CB0);
  sub_26A5DFFA0(v73, &qword_2803B3800, &unk_26A856760);
  sub_26A5DFFA0(v53, &qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_27_0();
}

void ComponentWithAction.init(action:content:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v14[-v12];
  OUTLINED_FUNCTION_50_5();
  memset(v14, 0, 32);
  v14[32] = 1;
  (ComponentWithAction.init(action:marginPadding:chevronPadding:content:))(v13, v14, 0, 1, v7, v5, v3, v1);
  sub_26A5DFFA0(v9, &qword_2803B3800, &unk_26A856760);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A770588(uint64_t a1@<X8>)
{
  *a1 = OUTLINED_FUNCTION_2_88();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_26A7705B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A778598();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double sub_26A770618()
{
  sub_26A776860();
  sub_26A84F998();
  return v1;
}

uint64_t sub_26A770698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A778514();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double sub_26A7706FC@<D0>(uint64_t a1@<X8>)
{
  sub_26A77680C();
  sub_26A84F998();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_26A770798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_26A84F3A8();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v29 = *(a1 + 24);
  v30 = v5;
  v6 = sub_26A8510E8();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = sub_26A84F588();
  v27 = v9;
  WitnessTable = swift_getWitnessTable();
  v25 = WitnessTable;
  v26 = sub_26A7766F8(&qword_28157FD68);
  v41 = v6;
  v42 = v9;
  v43 = WitnessTable;
  v44 = v26;
  v24[1] = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = sub_26A84FE08();
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;

  v18 = v29;
  v17 = v30;
  sub_26A8510D8();
  v19 = v32;
  sub_26A72003C(v32);
  sub_26A84F388();
  (*(v33 + 8))(v19, v34);
  v37 = v17;
  v38 = v18;
  v41 = v6;
  v42 = v27;
  v20 = v25;
  v43 = v25;
  v44 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.if<A>(_:transform:)();
  (*(v35 + 8))(v8, v6);
  v39 = OpaqueTypeConformance2;
  v40 = v20;
  swift_getWitnessTable();
  sub_26A80757C();
  v22 = *(v31 + 8);
  v22(v13, v11);
  sub_26A80757C();
  return (v22)(v16, v11);
}

uint64_t sub_26A770BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26A84F588();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84F578();
  sub_26A8510E8();
  swift_getWitnessTable();
  sub_26A7766F8(&qword_28157FD68);
  sub_26A850978();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A770D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = a1;
  v3 = type metadata accessor for ActionType(0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  sub_26A4D7E54();
  sub_26A7777A4();
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_26A7778B0(v7, v9 + v8);
  sub_26A7777F8();
  sub_26A80B4C4(sub_26A777B70, v9);
}

uint64_t sub_26A770F04(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-v6];
  sub_26A4D7E54();
  v8 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A5DFFA0(v7, &qword_2803B3910, &qword_26A855580);
  }

  sub_26A7777A4();
  v10 = type metadata accessor for ActionType(0);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v10);
  v11[15] = 3;
  sub_26A573B9C();
  sub_26A5DFFA0(v4, &qword_2803A91C8, &unk_26A856820);
  return sub_26A777C3C(v7, type metadata accessor for StandardActionHandler);
}

double sub_26A7710B4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for WatchComponentWithAction.WithAction(0) + 32);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v5 + 32) == 1)
  {
    return *v5;
  }

  sub_26A851EA8();
  v11 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A4D3334(v7, v6, v9, v8, 0);
  (*(v2 + 8))(v4, v1);
  return v12;
}

uint64_t sub_26A771240@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for ActionType(0);
  v32 = *(v2 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  v30 = *(v4 - 8);
  v29 = *(v30 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v22 - v5;
  v6 = type metadata accessor for WatchComponentWithAction.WithAction(0);
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v28 = v7;
  v35 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE370, &qword_26A8829C0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = (&v22 - v10);
  type metadata accessor for ActionTapThrottler();
  sub_26A7766F8(&qword_2803B1140);
  v23 = sub_26A84EEF8();
  type metadata accessor for ActionHandler(0);
  v25 = v1;
  v26 = type metadata accessor for WatchComponentWithAction.WithAction;
  sub_26A7777A4();
  v24 = swift_allocObject();
  sub_26A7777F8();
  v12 = v27;
  sub_26A4D7E54();
  sub_26A7777A4();
  v13 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v23;
  sub_26A7778B0(v12, v14 + v13);
  sub_26A7777F8();
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v15 = (v11 + *(v9 + 44));
  *v15 = sub_26A778EE4;
  v15[1] = v14;
  v16 = (v11 + *(v9 + 48));
  v17 = v24;
  *v16 = sub_26A777C90;
  v16[1] = v17;
  v18 = v34;
  sub_26A58C500();
  sub_26A5DFFA0(v11, &qword_2803AE370, &qword_26A8829C0);
  sub_26A7777A4();
  v19 = swift_allocObject();
  sub_26A7777F8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7440, &qword_26A8829C8);
  v21 = (v18 + *(result + 36));
  *v21 = sub_26A777F10;
  v21[1] = v19;
  v21[2] = 0;
  v21[3] = 0;
  return result;
}

void *sub_26A7716F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for WatchComponentWithAction.WithAction(0) + 36));
  sub_26A771D7C(type metadata accessor for WatchComponentWithAction.WithAction);
  sub_26A851448();
  sub_26A84F628();
  memcpy(&v14[6], __src, 0x70uLL);

  v5 = sub_26A7710B4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_26A850248();
  *a2 = v4;
  *(a2 + 8) = 256;
  result = memcpy((a2 + 10), v14, 0x76uLL);
  *(a2 + 128) = v12;
  *(a2 + 136) = v5;
  *(a2 + 144) = v7;
  *(a2 + 152) = v9;
  *(a2 + 160) = v11;
  *(a2 + 168) = 256;
  return result;
}

void *sub_26A771874@<X0>(uint64_t a1@<X8>)
{
  sub_26A772AA0();
  sub_26A851448();
  v3 = *(v1 + 56);
  sub_26A84F628();
  memcpy(&v24[6], __src, 0x70uLL);
  v26 = v3;
  v27 = 256;
  memcpy(v28, v24, sizeof(v28));

  sub_26A772BD0();
  sub_26A772BD0();
  sub_26A58C61C();
  sub_26A5DFFA0(&v26, &qword_2803AE368, &unk_26A861230);
  v4 = sub_26A850278();
  sub_26A772BD0();
  sub_26A84ED48();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v24[118] = 0;
  v13 = sub_26A850298();
  sub_26A772BD0();
  sub_26A84ED48();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = memcpy(a1, v23, 0x120uLL);
  *(a1 + 288) = v4;
  *(a1 + 296) = v6;
  *(a1 + 304) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v12;
  *(a1 + 328) = 0;
  *(a1 + 336) = v13;
  *(a1 + 344) = v15;
  *(a1 + 352) = v17;
  *(a1 + 360) = v19;
  *(a1 + 368) = v21;
  *(a1 + 376) = 0;
  return result;
}

void sub_26A771AB4()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ActionType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_50_5();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_26A5DFFA0(v11, &qword_2803A91C8, &unk_26A856820);
LABEL_6:
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();
    v24 = 0;
    v23 = 0;
    v7[3] = &type metadata for WatchComponentWithAction.WithoutAction;
    v7[4] = sub_26A77673C();
    v22 = swift_allocObject();
    *v7 = v22;
    *(v22 + 16) = KeyPath;
    *(v22 + 24) = v24;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = v23;
    *(v22 + 72) = v5;
    sub_26A5DFFA0(v3, &qword_2803A91C8, &unk_26A856820);
    goto LABEL_7;
  }

  sub_26A7777F8();
  if (!sub_26A6ACFB8(v1))
  {
    sub_26A777C3C(v16, type metadata accessor for ActionType);
    goto LABEL_6;
  }

  v17 = type metadata accessor for WatchComponentWithAction.WithAction(0);
  v7[3] = v17;
  v7[4] = sub_26A7766F8(&unk_2803B7378);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_6_63();
  sub_26A7777A4();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  ActionHandler.init()(boxed_opaque_existential_1);
  OUTLINED_FUNCTION_21_29(boxed_opaque_existential_1 + *(v17 + 20));
  *(v19 + 32) = 0;
  *(boxed_opaque_existential_1 + *(v17 + 36)) = v5;
  sub_26A5DFFA0(v3, &qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_9_56();
LABEL_7:
  OUTLINED_FUNCTION_27_0();
}

double sub_26A771D7C(uint64_t (*a1)(void))
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_2();
  v4 = (v1 + *(a1(0) + 24));
  v5 = *v4;
  if (v4[8] == 1)
  {
    return *v4;
  }

  sub_26A851EA8();
  v7 = sub_26A8501F8();
  OUTLINED_FUNCTION_55(v7, &dword_26A48D000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v9, v10, MEMORY[0x277D84F90]);

  sub_26A84F978();
  OUTLINED_FUNCTION_18_23();
  sub_26A49035C(v5, 0);
  v11 = OUTLINED_FUNCTION_16_29();
  v12(v11);
  return v13;
}

uint64_t sub_26A771EA0(uint64_t (*a1)(void))
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_2();
  v4 = (v1 + *(a1(0) + 28));
  v5 = *v4;
  v6 = *(v4 + 8);

  if ((v6 & 1) == 0)
  {
    sub_26A851EA8();
    v7 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v7, &dword_26A48D000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v9, v10, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_18_23();

    v11 = OUTLINED_FUNCTION_16_29();
    v12(v11);
    return v14;
  }

  return v5;
}

uint64_t sub_26A771FB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CarPlayComponentWithAction.WithAction(0);
  v8 = (v1 + *(result + 32));
  v10 = *v8;
  v9 = v8[1];
  v11 = *(v8 + 32);
  if (*(v8 + 33) != 1)
  {
    v14 = *v8;
    v12 = v14;
    v15 = v9;

    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A59DDB4(v12, *(&v14 + 1), v15, *(&v15 + 1), v11, 0);
    result = (*(v4 + 8))(v6, v3);
    v10 = v16;
    v9 = v17;
    LOBYTE(v11) = v18;
  }

  *a1 = v10;
  *(a1 + 16) = v9;
  *(a1 + 32) = v11 & 1;
  return result;
}

uint64_t sub_26A772148@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v56 = type metadata accessor for CarPlayComponentButtonStyle(0);
  MEMORY[0x28223BE20](v56);
  v2 = (&v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for ActionType(0);
  v47 = *(v3 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  v44 = *(v5 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v40 - v6;
  v7 = type metadata accessor for CarPlayComponentWithAction.WithAction(0);
  v58 = *(v7 - 8);
  v8 = *(v58 + 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7410, &qword_26A882938);
  MEMORY[0x28223BE20](v45);
  v42 = (&v40 - v10);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7418, &qword_26A882940);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v49 = &v40 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7420, &qword_26A882948);
  MEMORY[0x28223BE20](v52);
  v54 = &v40 - v12;
  type metadata accessor for ActionTapThrottler();
  sub_26A7766F8(&qword_2803B1140);
  v40 = sub_26A84EEF8();
  type metadata accessor for ActionHandler(0);
  sub_26A7777A4();
  v13 = v58[80];
  v57 = v8;
  v14 = (v13 + 16) & ~v13;
  v51 = v13;
  v15 = swift_allocObject();
  v50 = v14;
  v58 = v9;
  sub_26A7777F8();
  v16 = v41;
  sub_26A4D7E54();
  sub_26A7777A4();
  v17 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v40;
  sub_26A7778B0(v16, v18 + v17);
  sub_26A7777F8();
  KeyPath = swift_getKeyPath();
  v20 = v42;
  *v42 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v21 = v45;
  v22 = (v20 + *(v45 + 36));
  *v22 = sub_26A777920;
  v22[1] = v18;
  v23 = v20;
  v24 = (v20 + *(v21 + 40));
  *v24 = sub_26A77784C;
  v24[1] = v15;
  sub_26A771FB8(v60);
  if (qword_2803A8CE0 != -1)
  {
    swift_once();
  }

  v25 = *(&xmmword_2803D1FA8 + 1);
  v26 = qword_2803D1FB8;
  v27 = unk_2803D1FC0;
  v28 = qword_2803D1FC8;
  v2[25] = xmmword_2803D1FA8;
  v2[26] = v25;
  v2[27] = v26;
  v2[28] = v27;
  v2[29] = v28;

  sub_26A6AEE74(v62);
  memcpy(v2, v62, 0xBFuLL);
  v2[24] = v28;
  v29 = v56;
  v30 = *(v56 + 20);
  *(v2 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v31 = v2 + *(v29 + 24);
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v2 + *(v29 + 28);
  v33 = v60[1];
  *v32 = v60[0];
  *(v32 + 1) = v33;
  v32[32] = v61;
  sub_26A5340D8(&unk_2803B7428);
  sub_26A7766F8(&unk_2803B7430);
  v34 = v49;
  sub_26A850988();
  sub_26A777C3C(v2, type metadata accessor for CarPlayComponentButtonStyle);
  sub_26A5DFFA0(v23, &qword_2803B7410, &qword_26A882938);
  sub_26A771D7C(type metadata accessor for CarPlayComponentWithAction.WithAction);
  sub_26A851448();
  sub_26A84F628();
  v35 = v54;
  (*(v53 + 32))(v54, v34, v55);
  memcpy(&v35[*(v52 + 36)], __src, 0x70uLL);
  sub_26A7777A4();
  v36 = swift_allocObject();
  sub_26A7777F8();
  v37 = v59;
  sub_26A4B9210();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7438, &unk_26A8829B0);
  v39 = (v37 + *(result + 36));
  *v39 = sub_26A777B44;
  v39[1] = v36;
  v39[2] = 0;
  v39[3] = 0;
  return result;
}

uint64_t sub_26A772A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for CarPlayComponentWithAction.WithAction(0) + 36));
  *(a2 + 8) = 256;
  *(a2 + 10) = 0;
}

uint64_t sub_26A772A54(uint64_t a1, uint64_t (*a2)(void))
{
  sub_26A771EA0(a2);
  sub_26A84EB98();
}

double sub_26A772AA0()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_2();
  v12 = *(v0 + 8);
  v2 = *v0;
  v11 = *v0;
  if (v12 == 1)
  {
    return v2;
  }

  sub_26A851EA8();
  v4 = sub_26A8501F8();
  OUTLINED_FUNCTION_55(v4, &dword_26A48D000, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, MEMORY[0x277D84F90]);

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A5DFFA0(&v11, &qword_2803ABF70, &qword_26A85A340);
  v8 = OUTLINED_FUNCTION_16_29();
  v9(v8);
  return v10;
}

double sub_26A772BD0()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_2();
  v12 = *(v0 + 48);
  v2 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v11[1] = v2;
  if (v12 == 1)
  {
    return *v11;
  }

  sub_26A851EA8();
  v4 = sub_26A8501F8();
  OUTLINED_FUNCTION_55(v4, &dword_26A48D000, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, MEMORY[0x277D84F90]);

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A5DFFA0(v11, &qword_2803B7408, &qword_26A882930);
  v8 = OUTLINED_FUNCTION_16_29();
  v9(v8);
  return v10;
}

uint64_t sub_26A772D14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A772BD0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_26A850248();
  sub_26A772AA0();
  sub_26A851448();
  v11 = *(v1 + 56);
  sub_26A84F628();
  v13[120] = 0;
  memcpy(&v13[7], __src, 0x70uLL);
  *a1 = v11;
  *(a1 + 8) = v10;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  memcpy((a1 + 49), v13, 0x77uLL);
}

uint64_t sub_26A772EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_48_4();
  v10 = type metadata accessor for ActionType(v9);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
  {
    sub_26A5DFFA0(v3, &qword_2803A91C8, &unk_26A856820);
  }

  else
  {
    sub_26A7777F8();
    if (sub_26A6ACFB8(4))
    {
      v15 = type metadata accessor for CarPlayComponentWithAction.WithAction(0);
      a3[3] = v15;
      a3[4] = sub_26A7766F8(&unk_2803B7368);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      OUTLINED_FUNCTION_6_63();
      sub_26A7777A4();
      swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      ActionHandler.init()(boxed_opaque_existential_1);
      OUTLINED_FUNCTION_21_29(boxed_opaque_existential_1 + *(v15 + 20));
      *(v17 + 32) = 0;
      *(boxed_opaque_existential_1 + *(v15 + 36)) = a1;
      sub_26A5DFFA0(a2, &qword_2803A91C8, &unk_26A856820);
      return OUTLINED_FUNCTION_9_56();
    }

    sub_26A777C3C(v14, type metadata accessor for ActionType);
  }

  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  a3[3] = &type metadata for CarPlayComponentWithAction.WithoutAction;
  a3[4] = sub_26A776684();
  v21 = swift_allocObject();
  *a3 = v21;
  *(v21 + 16) = KeyPath;
  *(v21 + 24) = 0;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 64) = 0;
  *(v21 + 72) = a1;
  return sub_26A5DFFA0(a2, &qword_2803A91C8, &unk_26A856820);
}

uint64_t sub_26A77317C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  result = View.eraseToAnyView()(v4);
  *a1 = result;
  return result;
}

double sub_26A7731D0()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  sub_26A851EA8();
  v7 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

double sub_26A77331C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    return *(v0 + 16);
  }

  sub_26A851EA8();
  v10 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A4D3334(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

uint64_t sub_26A773498()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for DefaultComponentWithAction.WithAction(0) + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

double sub_26A7735E8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for DefaultComponentWithAction.WithAction(0) + 28);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v5 + 32) == 1)
  {
    return *v5;
  }

  sub_26A851EA8();
  v11 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A4D3334(v7, v6, v9, v8, 0);
  (*(v2 + 8))(v4, v1);
  return v12;
}

uint64_t sub_26A773774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  v10 = type metadata accessor for ActionHandler(0);
  v11 = v10[6];
  *(a4 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v12 = a4 + v10[7];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = a4 + v10[8];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a4 + v10[9];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a4 + v10[10];
  *v15 = swift_getKeyPath();
  *(v15 + 9) = 0;
  swift_unknownObjectWeakInit();
  v16 = v10[11];
  v17 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  sub_26A5DFFA0(a4 + v16, &qword_2803B3910, &qword_26A855580);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  v24 = type metadata accessor for DefaultComponentWithAction.WithAction(0);
  v25 = a4 + v24[5];
  *v25 = sub_26A778EE0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  v26 = a4 + v24[6];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a4 + v24[7];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  v28 = a4 + v24[11];
  *(v28 + 32) = 0;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(a4 + v24[8]) = a1;
  OUTLINED_FUNCTION_6_63();
  sub_26A7777A4();
  *(a4 + v24[10]) = a5;
  if (sub_26A6AD4FC(a3))
  {
    v29 = sub_26A850F08();
    v30 = sub_26A850E88();
    KeyPath = swift_getKeyPath();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7380, &unk_26A8820F0);
    v33 = sub_26A5340D8(&unk_2803B7388);
    OUTLINED_FUNCTION_80();
    v34 = swift_allocObject();
    *(v34 + 16) = a5;
    *(v34 + 24) = 0;
    *(v34 + 32) = v29;
    *(v34 + 40) = KeyPath;
    *(v34 + 48) = v30;
    OUTLINED_FUNCTION_9_56();
  }

  else
  {
    sub_26A777C3C(a2, type metadata accessor for ActionType);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v36[1] = 0;
    v36[2] = 0;
  }

  v36[3] = v32;
  v36[4] = v33;
  v36[0] = v34;
  return sub_26A4D3270(v36, v28);
}

uint64_t sub_26A773AA0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_26A84F588();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x28223BE20](v2);
  v41 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActionType(0);
  v39 = *(v5 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  v35 = *(v7 - 8);
  v32 = *(v35 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = &v27 - v8;
  v9 = type metadata accessor for DefaultComponentWithAction.WithAction(0);
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v38 = v10;
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7448, &qword_26A8829D0);
  MEMORY[0x28223BE20](v36);
  v13 = (&v27 - v12);
  type metadata accessor for ActionTapThrottler();
  sub_26A7766F8(&qword_2803B1140);
  v28 = sub_26A84EEF8();
  type metadata accessor for ActionHandler(0);
  v31 = v1;
  v33 = type metadata accessor for DefaultComponentWithAction.WithAction;
  v34 = v11;
  sub_26A7777A4();
  v14 = swift_allocObject();
  sub_26A7777F8();
  v15 = v30;
  sub_26A4D7E54();
  sub_26A7777A4();
  v16 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v28;
  sub_26A7778B0(v15, v17 + v16);
  sub_26A7777F8();
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v18 = v36;
  v19 = (v13 + *(v36 + 36));
  *v19 = sub_26A778EE4;
  v19[1] = v17;
  v20 = (v13 + *(v18 + 40));
  *v20 = sub_26A777F9C;
  v20[1] = v14;
  v21 = v41;
  sub_26A84F578();
  sub_26A5340D8(&unk_2803B7450);
  sub_26A7766F8(&qword_28157FD68);
  v22 = v44;
  v23 = v42;
  sub_26A850978();
  (*(v43 + 8))(v21, v23);
  sub_26A5DFFA0(v13, &qword_2803B7448, &qword_26A8829D0);
  sub_26A7777A4();
  v24 = swift_allocObject();
  sub_26A7777F8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7458, &qword_26A8829D8);
  v26 = (v22 + *(result + 36));
  *v26 = sub_26A7784C0;
  v26[1] = v24;
  v26[2] = 0;
  v26[3] = 0;
  return result;
}

void sub_26A774070(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FA78();
  sub_26A77414C(a1, v21);
  v5 = v21[0];
  v6 = v21[1];
  v7 = sub_26A850278();
  sub_26A7735E8();
  sub_26A84ED48();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v23 = 0;
  v22 = 0;
  v16 = sub_26A850298();
  sub_26A7735E8();
  sub_26A84ED48();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13;
  *(a2 + 72) = v15;
  *(a2 + 80) = 0;
  *(a2 + 88) = v16;
  *(a2 + 96) = v17;
  *(a2 + 104) = v18;
  *(a2 + 112) = v19;
  *(a2 + 120) = v20;
  *(a2 + 128) = 0;
}

uint64_t sub_26A77414C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for DefaultComponentWithAction.WithAction(0) + 32));
  sub_26A4D7E54();
  v4 = v7;
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = View.eraseToAnyView()(v4);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_26A5DFFA0(v6, &qword_2803A9458, &qword_26A8555C0);
  }

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_26A774210()
{
  sub_26A773498();
  sub_26A84EB98();
}

double sub_26A774258()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = *(v0 + 32);
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  if (v10 == 1)
  {
    return *v9;
  }

  sub_26A851EA8();
  v7 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A5DFFA0(v9, &qword_2803B7408, &qword_26A882930);
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_26A7743D0@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 40);
  v5 = sub_26A850278();
  sub_26A774258();
  sub_26A84ED48();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_26A850298();
  sub_26A774258();
  sub_26A84ED48();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = 0;
  *(a2 + 56) = v14;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = v18;
  *(a2 + 96) = 0;
}

uint64_t sub_26A7744D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  sub_26A7731D0();
  sub_26A851448();
  v17 = sub_26A84F4F8();
  v15[3] = v3;
  v15[4] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_26A850BD8();
  v4 = v17;
  v5 = WitnessTable;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v6 = sub_26A84F4F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  v10 = sub_26A77331C();
  sub_26A77331C();
  sub_26A69BDE0(v4, v5, v10, v11);
  v12 = sub_26A4D6BF8();
  v15[1] = v5;
  v15[2] = v12;
  swift_getWitnessTable();
  v13 = View.eraseToAnyView()(v6);
  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  *a1 = v13;
  return result;
}

uint64_t sub_26A774700()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for RuntimeComponentWithAction(0) + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A774858@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ActionType(0);
  MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v34 - v7;
  v8 = sub_26A84F3A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  v21 = sub_26A774700();
  if (sub_26A61B05C(v21, &unk_287B13068))
  {
    type metadata accessor for RuntimeComponentWithAction(0);
    sub_26A4D7E54();

    sub_26A772EB4(v22, v20, v37);
    sub_26A77773C(v37, __src);
    LOBYTE(__src[5]) = 0;
    sub_26A4D33E8();
    sub_26A4D3340();
    sub_26A84FDF8();
    sub_26A4D7E54();
    v39 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B73F8, &unk_26A882920);
    sub_26A777618();
    sub_26A4D32E0();
    sub_26A84FDF8();
    sub_26A5DFFA0(__dst, &qword_2803B73F8, &unk_26A882920);
    return sub_26A777774(v37);
  }

  v34 = a1;
  v24 = type metadata accessor for RuntimeComponentWithAction(0);
  sub_26A72003C(v11);
  v25 = sub_26A84F388();
  (*(v9 + 8))(v11, v8);
  if (v25)
  {
    sub_26A4D7E54();

    sub_26A774700();
    sub_26A771AB4();
    sub_26A7776D4(v37, __src);
    LOBYTE(__src[5]) = 1;
    sub_26A4D33E8();
    sub_26A4D3340();
    sub_26A84FDF8();
    sub_26A4D7E54();
    v39 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B73F8, &unk_26A882920);
    sub_26A777618();
    sub_26A4D32E0();
    sub_26A84FDF8();
    sub_26A5DFFA0(__dst, &qword_2803B73F8, &unk_26A882920);
    return sub_26A77770C(v37);
  }

  v26 = *v2;
  sub_26A4D7E54();

  v27 = sub_26A774700();
  v28 = *(v2 + *(v24 + 24));
  __src[0] = swift_getKeyPath();
  LOBYTE(__src[1]) = 0;
  __src[2] = swift_getKeyPath();
  memset(&__src[3], 0, 25);
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) == 1)
  {
    sub_26A5DFFA0(v14, &qword_2803A91C8, &unk_26A856820);
LABEL_10:
    KeyPath = swift_getKeyPath();
    __src[10] = &type metadata for DefaultComponentWithAction.WithoutAction;
    __src[11] = sub_26A4D343C();
    v33 = swift_allocObject();
    __src[7] = v33;
    *(v33 + 16) = KeyPath;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = v26;
    goto LABEL_11;
  }

  v29 = v36;
  sub_26A7777F8();
  if (!sub_26A6ACFB8(v27))
  {
    sub_26A777C3C(v29, type metadata accessor for ActionType);
    goto LABEL_10;
  }

  v30 = v35;
  sub_26A7777A4();
  __src[10] = type metadata accessor for DefaultComponentWithAction.WithAction(0);
  __src[11] = sub_26A7766F8(&unk_2803A9488);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&__src[7]);
  sub_26A773774(v26, v30, v27, boxed_opaque_existential_1, v28);
  sub_26A777C3C(v29, type metadata accessor for ActionType);
LABEL_11:
  sub_26A5DFFA0(v17, &qword_2803A91C8, &unk_26A856820);
  memcpy(__dst, __src, sizeof(__dst));
  sub_26A7775E0(__dst, __src);
  v39 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B73F8, &unk_26A882920);
  sub_26A777618();
  sub_26A4D32E0();
  sub_26A84FDF8();
  return sub_26A7776A4(__dst);
}

uint64_t sub_26A774F6C()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_2();
  v2 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v3 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v3, &dword_26A48D000, v4, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v5, v6, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_18_23();
    sub_26A49035C(v2, 0);
    v7 = OUTLINED_FUNCTION_16_29();
    v8(v7);
    return v10;
  }

  return v2;
}

void sub_26A775070(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 304);
  v7 = *(v1 + 312);
  v9 = *(v1 + 320);
  if (*(v1 + 321) == 1)
  {
    *a1 = v8;
    *(a1 + 8) = v7;
    *(a1 + 16) = v9;
  }

  else
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4C23D0(v8, v7, v9, 0);
    (*(v4 + 8))(v6, v3);
  }
}

void sub_26A7751D8(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 328);
  v7 = *(v1 + 336);
  v9 = *(v1 + 344);
  if (*(v1 + 345) == 1)
  {
    *a1 = v8;
    *(a1 + 8) = v7;
    *(a1 + 16) = v9;
  }

  else
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4C23D0(v8, v7, v9, 0);
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A775340()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 368);
  if (*(v0 + 376) != 1)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_26A775488()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 384);
  if (*(v0 + 392) != 1)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_26A7755D0()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 400);
  if (*(v0 + 408) != 1)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_26A775874@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_26A4D7E54();

  return sub_26A772EB4(v5, v4, a1);
}

void sub_26A775930()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A4D7E54();

  sub_26A774F6C();
  sub_26A771AB4();
}

uint64_t sub_26A7759F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ActionType(0);
  MEMORY[0x28223BE20](v5);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = *(v2 + a1[17]);
  sub_26A4D7E54();
  v25 = *(v2 + a1[19]);
  v17 = *(v2 + a1[21]);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {

    sub_26A5DFFA0(v12, &qword_2803A91C8, &unk_26A856820);
LABEL_6:
    KeyPath = swift_getKeyPath();
    *(a2 + 80) = &type metadata for DefaultComponentWithAction.WithoutAction;
    *(a2 + 88) = sub_26A4D343C();
    v22 = swift_allocObject();
    *(a2 + 56) = v22;
    *(v22 + 16) = KeyPath;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = v16;
    return sub_26A5DFFA0(v15, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A7777F8();

  v18 = v25;
  if (!sub_26A6ACFB8(v25))
  {
    sub_26A777C3C(v9, type metadata accessor for ActionType);
    goto LABEL_6;
  }

  v19 = v24;
  sub_26A7777A4();
  *(a2 + 80) = type metadata accessor for DefaultComponentWithAction.WithAction(0);
  *(a2 + 88) = sub_26A7766F8(&unk_2803A9488);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 56));
  sub_26A773774(v16, v19, v18, boxed_opaque_existential_1, v17);
  sub_26A777C3C(v9, type metadata accessor for ActionType);
  return sub_26A5DFFA0(v15, &qword_2803A91C8, &unk_26A856820);
}

uint64_t sub_26A775D44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + *(a1 + 68));
  v6 = type metadata accessor for RuntimeComponentWithAction(0);
  sub_26A4D7E54();
  v7 = *(v2 + *(a1 + 84));
  KeyPath = swift_getKeyPath();
  *a2 = v5;
  *(a2 + v6[6]) = v7;
  v9 = a2 + v6[7];
  *v9 = KeyPath;
  v9[8] = 0;
  v10 = v6[8];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
}

double sub_26A775E30(uint64_t a1)
{
  v2 = v1 + *(a1 + 72);
  if (*(v2 + 32))
  {
    v2 = v1 + 208;
  }

  v3 = *v2;
  if ((sub_26A7755D0() & 1) == 0)
  {
    if ((sub_26A775488() & 1) == 0)
    {
      sub_26A7751D8(&v6);
      if (v7)
      {
        v4 = v3;
      }

      else
      {
        v4 = v6;
      }

      if (v7 == 2)
      {
        v3 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    if ((sub_26A775340() & 1) == 0)
    {
      sub_26A7751D8(&v6);
    }
  }

  sub_26A775070(&v6);
  return v3;
}

__n128 ComponentWithAction.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  sub_26A776040(*(a1 + 16), *(a1 + 24), &v20, a3);
  v6 = v20;
  KeyPath = swift_getKeyPath();
  v8 = sub_26A775E30(a1);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = swift_getKeyPath();
  v16 = v3 + *(a1 + 72);
  v21 = *(v16 + 32);
  v17 = v21;
  *a2 = v6;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  result = *v16;
  v19 = *(v16 + 16);
  *(a2 + 56) = *v16;
  *(a2 + 72) = v19;
  *(a2 + 88) = v17;
  return result;
}

uint64_t sub_26A776040@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for ComponentWithAction(0, a1, a2, a4);
  sub_26A4D7E54();
  v5 = v8;
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = View.eraseToAnyView()(v5);
    result = __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    result = sub_26A5DFFA0(v7, &qword_2803A9458, &qword_26A8555C0);
  }

  *a3 = v5;
  return result;
}

void sub_26A7760F4(uint64_t a1@<X8>)
{
  *a1 = sub_26A770618();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

void sub_26A7761A0(uint64_t a1)
{
  sub_26A77735C(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26A776CBC(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v2 <= 0x3F)
    {
      sub_26A776CBC(319, &qword_2803B3EA0, &type metadata for CustomHorizontalComponentPadding, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A776CBC(319, &qword_2803B72F8, &type metadata for CustomVerticalSnippetPadding, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26A776CBC(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_26A77735C(319, qword_28157FA80, type metadata accessor for ActionType, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_26A776CBC(319, &qword_2803AADC0, MEMORY[0x277CDF310], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for VRXIdiom(319, v7, v8, v9);
                if (v10 <= 0x3F)
                {
                  type metadata accessor for ActionHandler(319);
                  if (v11 <= 0x3F)
                  {
                    sub_26A6260E8(319);
                    if (v12 <= 0x3F)
                    {
                      sub_26A77701C(319, &qword_2803B7300, &qword_2803B7308, qword_26A881F08, MEMORY[0x277D83D88]);
                      if (v13 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26A776490()
{
  result = qword_2803B7310;
  if (!qword_2803B7310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7318, &qword_26A881F20);
    sub_26A776548();
    sub_26A5340D8(&unk_2803B7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7310);
  }

  return result;
}

unint64_t sub_26A776548()
{
  result = qword_2803B7320;
  if (!qword_2803B7320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7328, &qword_26A881F28);
    sub_26A776600();
    sub_26A5340D8(&unk_2803B7340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7320);
  }

  return result;
}

unint64_t sub_26A776600()
{
  result = qword_2803B7330;
  if (!qword_2803B7330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7338, &unk_26A881F30);
    sub_26A4EA164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7330);
  }

  return result;
}

unint64_t sub_26A776684()
{
  result = qword_2803B7360;
  if (!qword_2803B7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7360);
  }

  return result;
}

unint64_t sub_26A7766F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A77673C()
{
  result = qword_2803B7370;
  if (!qword_2803B7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7370);
  }

  return result;
}

uint64_t objectdestroyTm_29()
{
  OUTLINED_FUNCTION_51_6();

  return swift_deallocObject();
}

unint64_t sub_26A77680C()
{
  result = qword_2803B7390;
  if (!qword_2803B7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7390);
  }

  return result;
}

unint64_t sub_26A776860()
{
  result = qword_2803B7398;
  if (!qword_2803B7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7398);
  }

  return result;
}

void sub_26A77691C(uint64_t a1)
{
  type metadata accessor for ActionHandler(319);
  if (v1 <= 0x3F)
  {
    sub_26A6260E8(319);
    if (v2 <= 0x3F)
    {
      sub_26A77701C(319, &qword_2803B3E98, &qword_2803AFA68, &qword_26A86B340, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A776CBC(319, &qword_2803B73B0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ActionType(319);
          if (v5 <= 0x3F)
          {
            sub_26A77701C(319, &qword_2803B7300, &qword_2803B7308, qword_26A881F08, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26A776A98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_26A776AD8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void sub_26A776B5C(uint64_t a1)
{
  type metadata accessor for ActionHandler(319);
  if (v1 <= 0x3F)
  {
    sub_26A6260E8(319);
    if (v2 <= 0x3F)
    {
      sub_26A776CBC(319, &qword_2803AB0C8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A77701C(319, &qword_2803B3E98, &qword_2803AFA68, &qword_26A86B340, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26A776CBC(319, &qword_2803B73B0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ActionType(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A776CBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_113Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for ActionHandler(0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_49_0(*(v4 + *(a3 + 36)));
    }

    v8 = type metadata accessor for ActionType(0);
    v9 = v4 + *(a3 + 40);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void __swift_store_extra_inhabitant_index_114Tm()
{
  OUTLINED_FUNCTION_59_1();
  type metadata accessor for ActionHandler(0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 36)) = (v0 - 1);
      return;
    }

    type metadata accessor for ActionType(0);
  }

  OUTLINED_FUNCTION_19_22();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_26A776EB4(uint64_t a1)
{
  type metadata accessor for ActionHandler(319);
  if (v1 <= 0x3F)
  {
    sub_26A6260E8(319);
    if (v2 <= 0x3F)
    {
      sub_26A776CBC(319, &qword_2803AB0C8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A77701C(319, &qword_2803B3E98, &qword_2803AFA68, &qword_26A86B340, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26A77701C(319, &qword_2803B73D8, &qword_2803B73E0, &qword_26A8823D8, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ActionType(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A77701C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26A777080(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_26A7770C0(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_26A777148(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_26A777188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26A777218(uint64_t a1)
{
  sub_26A77735C(319, qword_28157FA80, type metadata accessor for ActionType, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A77735C(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26A77735C(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A77735C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26A7773C0(uint64_t a1)
{
  result = sub_26A7766F8(&unk_2803B7368);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A777418(uint64_t a1)
{
  result = sub_26A7766F8(&unk_2803B7378);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A777470(uint64_t a1)
{
  result = sub_26A7766F8(&unk_2803A9488);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A777618()
{
  result = qword_2803B7400;
  if (!qword_2803B7400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B73F8, &unk_26A882920);
    sub_26A4D33E8();
    sub_26A4D3340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7400);
  }

  return result;
}

uint64_t sub_26A7777A4()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A7777F8()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A77784C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CarPlayComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_79(v2);
  v4 = OUTLINED_FUNCTION_37_1(*(v3 + 80));

  return sub_26A772A00(v4, a1);
}

uint64_t sub_26A7778B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_165Tm()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for CarPlayComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_37_0();
  v3 = OUTLINED_FUNCTION_13_40();
  v4 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_33_13(v5))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v6 + 8))(v2 + v4, v1);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_65();
  if (v7)
  {
    if ((*(v1 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v1);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v1 + 16);
  v8 = OUTLINED_FUNCTION_42_9();
  if (!OUTLINED_FUNCTION_25_6(v8))
  {
    MEMORY[0x26D665710](v3);
    v9 = OUTLINED_FUNCTION_45_8();
    if (!OUTLINED_FUNCTION_20_27(v9))
    {
      OUTLINED_FUNCTION_4_11();
      v10 = OUTLINED_FUNCTION_40_9();
      v11(v10);
    }

    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_27_15();
  }

  v12 = OUTLINED_FUNCTION_11_48(v0[5]);
  OUTLINED_FUNCTION_41_10(v12, v13);
  v14 = OUTLINED_FUNCTION_37_13(v0[8]);
  sub_26A59DDB4(v14, v16, v17, v18, *(v15 + 32), *(v15 + 33));

  v19 = (v2 + v0[10]);
  type metadata accessor for ActionType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_26A84BAB8();
      OUTLINED_FUNCTION_1_4();
      (*(v21 + 8))(v19);
      break;
    case 0:

      break;
  }

  OUTLINED_FUNCTION_36_8();
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A777B70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  OUTLINED_FUNCTION_2_5(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ActionType(0);
  OUTLINED_FUNCTION_79(v6);
  v8 = v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_26A770F04(v0 + v3, v8);
}

uint64_t sub_26A777C3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_26A777C90@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WatchComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_79(v2);
  v4 = OUTLINED_FUNCTION_37_1(*(v3 + 80));

  return sub_26A7716F8(v4, a1);
}

uint64_t objectdestroy_185Tm()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for WatchComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_37_0();
  v3 = OUTLINED_FUNCTION_13_40();
  v4 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_33_13(v5))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v6 + 8))(v2 + v4, v1);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_65();
  if (v7)
  {
    if ((*(v1 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v1);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v1 + 16);
  v8 = OUTLINED_FUNCTION_42_9();
  if (!OUTLINED_FUNCTION_25_6(v8))
  {
    MEMORY[0x26D665710](v3);
    v9 = OUTLINED_FUNCTION_45_8();
    if (!OUTLINED_FUNCTION_20_27(v9))
    {
      OUTLINED_FUNCTION_4_11();
      v10 = OUTLINED_FUNCTION_40_9();
      v11(v10);
    }

    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_27_15();
  }

  v12 = OUTLINED_FUNCTION_11_48(v0[5]);
  OUTLINED_FUNCTION_41_10(v12, v13);
  v14 = OUTLINED_FUNCTION_37_13(v0[8]);
  sub_26A4D3334(v14, v16, v17, v18, *(v15 + 32));

  v19 = (v2 + v0[10]);
  type metadata accessor for ActionType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_26A84BAB8();
      OUTLINED_FUNCTION_1_4();
      (*(v21 + 8))(v19);
      break;
    case 0:

      break;
  }

  OUTLINED_FUNCTION_36_8();
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A777F3C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_79(v3);
  v5 = OUTLINED_FUNCTION_37_1(*(v4 + 80));
  return sub_26A772A54(v5, a2);
}

void sub_26A777F9C(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DefaultComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_79(v2);
  v4 = OUTLINED_FUNCTION_37_1(*(v3 + 80));

  sub_26A774070(v4, a1);
}

uint64_t objectdestroy_168Tm()
{
  OUTLINED_FUNCTION_28_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  OUTLINED_FUNCTION_2_5(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  type metadata accessor for ActionType(0);
  OUTLINED_FUNCTION_37_0();
  v7 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);

  v8 = v0 + v3;
  v9 = type metadata accessor for StandardActionHandler(0);
  if (!OUTLINED_FUNCTION_25_6(v9))
  {
    MEMORY[0x26D665710](v8);
    v10 = OUTLINED_FUNCTION_45_8();
    if (!OUTLINED_FUNCTION_20_27(v10))
    {
      OUTLINED_FUNCTION_4_11();
      v11 = OUTLINED_FUNCTION_40_9();
      v12(v11);
    }

    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_27_15();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_26A84BAB8();
      OUTLINED_FUNCTION_1_4();
      (*(v14 + 8))(v0 + v7);
      break;
    case 0:

      break;
  }

  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}