uint64_t sub_25AFC2CE4()
{
  sub_25B006294();
  sub_25AFC2A20(v1);
  return sub_25B0062D4();
}

uint64_t sub_25AFC2D28(uint64_t a1)
{
  sub_25B006294();
  sub_25AFC2A20(v2);
  return sub_25B0062D4();
}

uint64_t sub_25AFC2D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v38 = *(a1 + 64);
  v31 = *(a1 + 56);
  v32 = *(a1 + 72);
  v33 = *(a1 + 80);
  v34 = *(a1 + 88);
  v35 = *(a1 + 96);
  v29 = *(a1 + 105);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 40);
  v11 = *(a2 + 48);
  v30 = *(a2 + 56);
  v36 = *(a1 + 104);
  v37 = *(a2 + 64);
  v39 = *(a2 + 72);
  v40 = *(a2 + 80);
  v41 = *(a2 + 88);
  v42 = *(a2 + 96);
  v13 = *(a2 + 104);
  v28 = *(a2 + 105);
  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  v48 = *a1;
  v49 = v2;
  v50 = v3;
  v51 = v4;
  v52 = v14;
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v46 = v10;
  v47 = v15;
  sub_25AF181DC(v48, v2, v3, v4, v14);
  sub_25AF181DC(v7, v8, v9, v10, v15);
  LOBYTE(v7) = sub_25AFD33F0(&v48, &v43);
  sub_25AF18128(v43, v44, v45, v46, v47);
  sub_25AF18128(v48, v49, v50, v51, v52);
  result = 0;
  if ((v7 & 1) != 0 && v5 == v12 && v6 == v11)
  {
    if (v38)
    {
      v17 = v13;
      v19 = v41;
      v18 = v42;
      v21 = v39;
      v20 = v40;
      if (!v37)
      {
        return 0;
      }
    }

    else
    {
      v22 = v37;
      if (v31 != v30)
      {
        v22 = 1;
      }

      v17 = v13;
      v19 = v41;
      v18 = v42;
      v21 = v39;
      v20 = v40;
      if (v22)
      {
        return 0;
      }
    }

    if (v36 <= 0xFD)
    {
      v26 = v34;
      v25 = v35;
      v24 = v32;
      v23 = v33;
      if (v17 <= 0xFD)
      {
        v48 = v32;
        v49 = v33;
        v50 = v34;
        v51 = v35;
        v52 = v36;
        v43 = v21;
        v44 = v20;
        v45 = v19;
        v46 = v18;
        v47 = v17;
        sub_25AF1D7EC(v32, v33, v34, v35, v36);
        sub_25AF1D7EC(v21, v20, v19, v18, v17);
        sub_25AF1D7EC(v32, v33, v34, v35, v36);
        sub_25AF181DC(v32, v33, v34, v35, v36);
        v27 = sub_25AFD33F0(&v48, &v43);
        sub_25AF18128(v43, v44, v45, v46, v47);
        sub_25AF18128(v48, v49, v50, v51, v52);
        sub_25AF18128(v32, v33, v34, v35, v36);
        sub_25AF231D0(v32, v33, v34, v35, v36);
        if (v27)
        {
          return v29 ^ v28 ^ 1u;
        }

        return 0;
      }

      sub_25AF1D7EC(v32, v33, v34, v35, v36);
      sub_25AF1D7EC(v21, v20, v19, v18, v17);
      sub_25AF1D7EC(v32, v33, v34, v35, v36);
      sub_25AF18128(v32, v33, v34, v35, v36);
    }

    else
    {
      v24 = v32;
      v23 = v33;
      v26 = v34;
      v25 = v35;
      sub_25AF1D7EC(v32, v33, v34, v35, v36);
      sub_25AF1D7EC(v21, v20, v19, v18, v17);
      if (v17 > 0xFD)
      {
        sub_25AF231D0(v32, v33, v34, v35, v36);
        return v29 ^ v28 ^ 1u;
      }
    }

    sub_25AF231D0(v24, v23, v26, v25, v36);
    sub_25AF231D0(v21, v20, v19, v18, v17);
    return 0;
  }

  return result;
}

void *sub_25AFC30E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v88 = MEMORY[0x277D84F90];
  v61 = v2;
  sub_25AF98AB0(0, v2, 0);
  v4 = 0;
  result = v88;
  v59 = (a1 + 64);
  v60 = a1 + 32;
  do
  {
    v5 = v4;
    v6 = v60 + 40 * v4;
    v62 = v5 + 1;
    v63 = result;
    v8 = *v6;
    v7 = *(v6 + 8);
    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = *(v6 + 32);
    sub_25AF181DC(*v6, v7, v10, v9, *(v6 + 32));
    v12 = v11;
    v13 = 0;
    v70 = v11 & 0xC0;
    v14 = v59;
    v73 = v7;
    v64 = v8;
    v65 = v9;
    v66 = v10;
    for (i = v11; ; v12 = i)
    {
      v16 = *(v14 - 4);
      v15 = *(v14 - 3);
      v17 = *(v14 - 2);
      v18 = *(v14 - 1);
      v19 = *v14;
      v78[0] = v16;
      v78[1] = v15;
      v78[2] = v17;
      v78[3] = v18;
      v79 = v19;
      v80 = v8;
      v81 = v7;
      v82 = v10;
      v83 = v9;
      v84 = v12;
      v75 = v13;
      if (!(v19 >> 6))
      {
        v27 = v12;
        sub_25AF181DC(v8, v7, v10, v9, v12);
        result = sub_25AFC3978(v78);
        if (v27 <= 0x3F && v16 == v8)
        {
          goto LABEL_52;
        }

        goto LABEL_32;
      }

      if (v19 >> 6 == 1)
      {
        break;
      }

      if (v70 != 128)
      {
        goto LABEL_30;
      }

      if (v19)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_30;
        }

        if ((v16 != v8 || v15 != v7) && (sub_25B006174() & 1) == 0)
        {
          v31 = v8;
          v32 = v7;
          v33 = v10;
          v34 = v9;
          LOBYTE(v12) = i;
          goto LABEL_31;
        }

        if (v17 == v10 && v18 == v9)
        {
          sub_25AF181DC(v8, v7, v10, v9, i);
          sub_25AF181DC(v16, v15, v10, v9, v19);
          sub_25AFC3978(v78);
          goto LABEL_52;
        }

        v28 = sub_25B006174();
        v29 = v7;
        v30 = v28;
        sub_25AF181DC(v8, v29, v10, v9, i);
        sub_25AF181DC(v16, v15, v17, v18, v19);
        result = sub_25AFC3978(v78);
        if (v30)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v12)
        {
LABEL_30:
          v31 = v8;
          v32 = v7;
          v33 = v10;
          v34 = v9;
LABEL_31:
          sub_25AF181DC(v31, v32, v33, v34, v12);
          sub_25AF181DC(v16, v15, v17, v18, v19);
          result = sub_25AFC3978(v78);
          goto LABEL_32;
        }

        sub_25AF67FDC();
        sub_25AF181DC(v16, v15, v17, v18, v19);
        v9 = v65;
        sub_25AF181DC(v8, v7, v10, v65, i);
        sub_25AF181DC(v16, v15, v17, v18, v19);
        if (sub_25B005DE4())
        {
          v10 = v66;
          if (v15 == v7 && v17 == v66)
          {
            sub_25AF18128(v16, v7, v66, v18, v19);
            sub_25AFC3978(v78);
            v8 = v64;
            goto LABEL_52;
          }

          v39 = sub_25B006174();
          sub_25AF18128(v16, v15, v17, v18, v19);
          result = sub_25AFC3978(v78);
          v8 = v64;
          if (v39)
          {
            goto LABEL_52;
          }
        }

        else
        {
          sub_25AF18128(v16, v15, v17, v18, v19);
          result = sub_25AFC3978(v78);
          v8 = v64;
          v10 = v66;
        }
      }

LABEL_32:
      if (v61 - 1 == v75)
      {
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }

      v14 += 40;
      v13 = v75 + 1;
      v7 = v73;
    }

    if (v70 != 64)
    {
      goto LABEL_30;
    }

    v68 = v14;
    v20 = v15;
    v21 = v19;
    v22 = v12;
    sub_25AF67FDC();
    sub_25AF181DC(v16, v20, v17, v18, v21);
    sub_25AF181DC(v8, v7, v10, v9, v22);
    sub_25AF181DC(v16, v20, v17, v18, v21);
    v23 = v22;
    v24 = v21;
    v25 = v20;
    sub_25AF181DC(v8, v7, v10, v9, v23);
    sub_25AF181DC(v16, v20, v17, v18, v24);
    if ((sub_25B005DE4() & 1) == 0)
    {
      sub_25AFC3978(v78);
      sub_25AF18128(v16, v20, v17, v18, v24);
      v9 = v65;
      v10 = v66;
      sub_25AF18128(v8, v73, v66, v65, i);
      result = sub_25AF18128(v16, v20, v17, v18, v24);
      v14 = v68;
      goto LABEL_32;
    }

    v14 = v68;
    if (v25 != v73)
    {
      sub_25AFC3978(v78);
      sub_25AF18128(v16, v25, v17, v18, v24);
      v8 = v64;
      v9 = v65;
      v10 = v66;
      sub_25AF18128(v64, v73, v66, v65, i);
      v35 = v16;
      v36 = v25;
      goto LABEL_35;
    }

    v8 = v64;
    v9 = v65;
    v10 = v66;
    if (!v18)
    {
      sub_25AFC3978(v78);
      sub_25AF18128(v16, v73, v17, 0, v24);
      if (!v65)
      {
        sub_25AF18128(v64, v73, v66, 0, i);
        v40 = v16;
        v41 = v73;
        v42 = v17;
        v43 = 0;
        goto LABEL_51;
      }

      sub_25AF18128(v64, v73, v66, v65, i);
      v35 = v16;
      v36 = v73;
      v37 = v17;
      v38 = 0;
      goto LABEL_44;
    }

    if (!v65)
    {
      sub_25AFC3978(v78);
      sub_25AF18128(v16, v73, v17, v18, v24);
      sub_25AF18128(v64, v73, v66, 0, i);
      v35 = v16;
      v36 = v73;
LABEL_35:
      v37 = v17;
      v38 = v18;
LABEL_44:
      result = sub_25AF18128(v35, v36, v37, v38, v24);
      goto LABEL_32;
    }

    if (v17 != v66 || v18 != v65)
    {
      v26 = sub_25B006174();
      sub_25AFC3978(v78);
      sub_25AF18128(v16, v73, v17, v18, v24);
      sub_25AF18128(v64, v73, v66, v65, i);
      v8 = v64;
      result = sub_25AF18128(v16, v73, v17, v18, v24);
      if (v26)
      {
        goto LABEL_52;
      }

      goto LABEL_32;
    }

    sub_25AFC3978(v78);
    sub_25AF18128(v16, v73, v66, v65, v24);
    sub_25AF18128(v64, v73, v66, v65, i);
    v40 = v16;
    v41 = v73;
    v42 = v66;
    v43 = v65;
LABEL_51:
    sub_25AF18128(v40, v41, v42, v43, v24);
LABEL_52:
    v44 = v75;
    result = v63;
    if (v75 < 2)
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = -2;
      v51 = v61;
      goto LABEL_56;
    }

    if (v75 - 2 >= v61)
    {
      goto LABEL_61;
    }

    v46 = *(v14 - 13);
    v71 = *(v14 - 14);
    v47 = *(v14 - 12);
    v48 = *(v14 - 11);
    v52 = *(v14 - 80);
    sub_25AF181DC(v71, v46, v47, v48, v52);
    v51 = v61;
    v50 = v52;
    v49 = v75 - 2;
    v45 = v71;
    v44 = v75;
    result = v63;
LABEL_56:
    v53 = v44 < 2;
    *v77 = *v87;
    *&v77[3] = *&v87[3];
    *v76 = *v85;
    *&v76[3] = *&v85[3];
    v55 = result[2];
    v54 = result[3];
    v86 = v44 < 2;
    v88 = result;
    if (v55 >= v54 >> 1)
    {
      v67 = v47;
      v69 = v46;
      v72 = v45;
      v57 = v49;
      v58 = v50;
      sub_25AF98AB0((v54 > 1), v55 + 1, 1);
      v50 = v58;
      v49 = v57;
      v47 = v67;
      v46 = v69;
      v45 = v72;
      v44 = v75;
      v51 = v61;
      result = v88;
    }

    result[2] = v55 + 1;
    v56 = &result[14 * v55];
    v56[4] = v8;
    v56[5] = v73;
    v56[6] = v10;
    v56[7] = v9;
    *(v56 + 64) = i;
    *(v56 + 65) = *v77;
    *(v56 + 17) = *&v77[3];
    v56[9] = v44;
    v56[10] = v44 >> 1;
    v56[11] = v49;
    *(v56 + 96) = v53;
    *(v56 + 25) = *&v76[3];
    *(v56 + 97) = *v76;
    v56[13] = v45;
    v56[14] = v46;
    v56[15] = v47;
    v56[16] = v48;
    *(v56 + 136) = v50;
    *(v56 + 137) = (v44 & 1) == 0;
    v4 = v62;
  }

  while (v62 != v51);
  return result;
}

uint64_t sub_25AFC3978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25590, qword_25B00A7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25AFC3A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 106))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 105);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25AFC3A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 105) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25AFC3AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA262B0;
  if (!qword_27FA262B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA262B0);
  }

  return result;
}

__n128 sub_25AFC3B2C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  result = *(a1 + 64);
  *(a2 + 64) = result;
  return result;
}

void *sub_25AFC3B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_25AF63C5C(a1, a2, a3);
  result = sub_25B004B24();
  *a4 = v6;
  return result;
}

void *sub_25AFC3BB8(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_25AFCD0E8(x0_0, a2, a3);

  return sub_25B004B24();
}

void *sub_25AFC3C00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_25AFCD0E8(a2, a3, a4);
  result = sub_25B004B24();
  *a1 = v6;
  return result;
}

id sub_25AFC3CC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA25098, type metadata accessor for ConfigureControlModel, &unk_25B00E4D0);
  sub_25B004234();

  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_25AF6B1F0(v4, v5, v6, v7);
}

void sub_25AFC3D74(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  sub_25AF6B1F0(v5[0], v1, v2, v3);
  sub_25AF6AC5C(v5, v4);
}

uint64_t SelectAvailableControlView.body.getter@<X0>(void *a1@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262B8, &qword_25B0125B0);
  MEMORY[0x28223BE20](v24);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262C0, &qword_25B0125B8);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262C8, &qword_25B0125C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - v10;
  v12 = v1[5];
  v38 = v1[4];
  v39 = v12;
  v40 = v1[6];
  v41 = *(v1 + 14);
  v13 = v1[1];
  v34 = *v1;
  v35 = v13;
  v14 = v1[3];
  v36 = v1[2];
  v37 = v14;
  if (v34 == 1)
  {
    v25 = *(v1 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26360, &qword_25B012600);
    v15 = sub_25B0054B4();
    v23[4] = v23;
    MEMORY[0x28223BE20](v15);
    v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26368, &unk_25B012608);
    sub_25AF0F274(&qword_27FA26370, &qword_27FA26368, &unk_25B012608, MEMORY[0x277D83960]);
    v23[2] = v5;
    sub_25AF0F274(&qword_27FA26378, &qword_27FA26368, &unk_25B012608, MEMORY[0x277D83980]);
    v23[3] = a1;
    sub_25AF0F274(&qword_27FA26380, &qword_27FA26368, &unk_25B012608, MEMORY[0x277D83990]);
    v22 = sub_25AFC4CEC();
    sub_25AFC51C0(v22, v16, v17);
    sub_25B004874();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_25AF0F274(&qword_27FA262D0, &qword_27FA262C8, &qword_25B0125C0, MEMORY[0x277CDDA18]);
    sub_25B004C74();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v19 = v1[5];
    v30 = v1[4];
    v31 = v19;
    v32 = v1[6];
    v33 = *(v1 + 14);
    v20 = v1[1];
    v26 = *v1;
    v27 = v20;
    v21 = v1[3];
    v28 = v1[2];
    v29 = v21;
    sub_25AFC4318(v4);
    sub_25AF25FC4(v4, v7, &qword_27FA262B8, &qword_25B0125B0);
    swift_storeEnumTagMultiPayload();
    sub_25AF0F274(&qword_27FA262D0, &qword_27FA262C8, &qword_25B0125C0, MEMORY[0x277CDDA18]);
    sub_25AFC4CEC();
    sub_25B004C74();
    return sub_25AF2602C(v4, &qword_27FA262B8, &qword_25B0125B0);
  }
}

double sub_25AFC4238@<D0>(uint64_t a1@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25AFC4318(a1);

  return result;
}

uint64_t sub_25AFC4318@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  *&v55 = type metadata accessor for AvailableControlsGrid(0) - 8;
  MEMORY[0x28223BE20](v55);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26328, &qword_25B0125E8) - 8;
  MEMORY[0x28223BE20](v57);
  v56 = &v51 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26318, &qword_25B0125E0) - 8;
  MEMORY[0x28223BE20](v61);
  v58 = &v51 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26308, &qword_25B0125D8) - 8;
  MEMORY[0x28223BE20](v65);
  v63 = &v51 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262F8, &qword_25B0125D0) - 8;
  MEMORY[0x28223BE20](v64);
  v60 = &v51 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262E8, &qword_25B0125C8) - 8;
  MEMORY[0x28223BE20](v62);
  v59 = &v51 - v8;
  v9 = v1[5];
  v83 = v1[4];
  *v84 = v9;
  *&v84[16] = v1[6];
  *&v84[32] = *(v1 + 14);
  v10 = v1[1];
  v79 = *v1;
  v80 = v10;
  v11 = v1[3];
  v81 = v1[2];
  v82 = v11;
  v67 = v79;
  v12 = *(v1 + 24);
  v75 = *(v1 + 8);
  v76 = v12;
  v77 = *(v1 + 40);
  v78 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26528, &qword_25B012DC0);
  sub_25B005534();
  v13 = v69[0];
  v14 = v71;
  v75 = v83;
  LOBYTE(v76) = v84[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26548, &qword_25B012DE8);
  v54 = v69[1];
  v51 = v70;
  sub_25B005534();
  v15 = v73;
  v16 = v74;
  v73 = *&v84[8];
  v75 = *&v84[8];
  *&v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26550, &unk_25B012DF0);
  sub_25B005494();
  v17 = v67;
  v18 = v72;
  v19 = v67 < 2;
  *v3 = v67;
  v3[1] = v19;
  v3[2] = v19;
  *(v3 + 8) = v13;
  *(v3 + 40) = v51;
  *(v3 + 24) = v54;
  v3[56] = v14;
  *(v3 + 4) = v15;
  v3[80] = v16;
  *(v3 + 11) = v18;
  v20 = v55;
  v21 = *(v55 + 48);
  v53 = v19;
  LODWORD(v54) = v17 == 2;
  *&v3[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24280, &unk_25B012DB0);
  swift_storeEnumTagMultiPayload();
  v22 = &v3[*(v20 + 52)];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = swift_allocObject();
  v24 = *v84;
  *(v23 + 80) = v83;
  *(v23 + 96) = v24;
  *(v23 + 112) = *&v84[16];
  *(v23 + 128) = *&v84[32];
  v25 = v80;
  *(v23 + 16) = v79;
  *(v23 + 32) = v25;
  v26 = v82;
  *(v23 + 48) = v81;
  *(v23 + 64) = v26;
  v27 = v56;
  sub_25AFCEB40(v3, v56, type metadata accessor for AvailableControlsGrid);
  v28 = (v27 + *(v57 + 44));
  *v28 = sub_25AFCE4D4;
  v28[1] = v23;
  v28[2] = 0;
  v28[3] = 0;
  v75 = *&v84[24];
  sub_25AFCE4DC(&v79, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26360, &qword_25B012600);
  sub_25B0054B4();
  v57 = *&v69[0];
  v55 = *(v69 + 8);
  v69[0] = v73;
  sub_25B005494();
  v29 = v75;
  KeyPath = swift_getKeyPath();
  LOBYTE(v72) = 0;
  v31 = swift_getKeyPath();
  v68 = 0;
  v75 = 0u;
  v76 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26428, &qword_25B012BE0);
  sub_25B005484();
  v32 = v70;
  v51 = v69[1];
  v52 = v69[0];
  v33 = v72;
  v34 = v68;
  v35 = v58;
  sub_25AF25B0C(v27, v58, &qword_27FA26328, &qword_25B0125E8);
  v36 = v35 + *(v61 + 44);
  LOBYTE(v27) = v67;
  *v36 = v67;
  *(v36 + 8) = v57;
  *(v36 + 16) = v55;
  *(v36 + 32) = 1;
  *(v36 + 40) = v29;
  *(v36 + 48) = v53;
  *(v36 + 56) = KeyPath;
  *(v36 + 64) = v33;
  *(v36 + 72) = v31;
  *(v36 + 80) = v34;
  v37 = v52;
  *(v36 + 104) = v51;
  *(v36 + 88) = v37;
  *(v36 + 120) = v32;
  *&v75 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26558, &qword_25B015DD0);
  sub_25B005484();
  v38 = v69[0];
  v39 = v63;
  sub_25AF25B0C(v35, v63, &qword_27FA26318, &qword_25B0125E0);
  v40 = v39 + *(v65 + 44);
  *v40 = v54;
  *(v40 + 8) = v38;
  v41 = v60;
  sub_25AF25B0C(v39, v60, &qword_27FA26308, &qword_25B0125D8);
  *(v41 + *(v64 + 44)) = 0;
  v42 = swift_getKeyPath();
  v43 = v41;
  v44 = v59;
  sub_25AF25B0C(v43, v59, &qword_27FA262F8, &qword_25B0125D0);
  v45 = v44 + *(v62 + 44);
  *v45 = v42;
  *(v45 + 8) = 1;
  v46 = swift_getKeyPath();
  v47 = v44;
  v48 = v66;
  sub_25AF25B0C(v47, v66, &qword_27FA262E8, &qword_25B0125C8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262B8, &qword_25B0125B0);
  v50 = v48 + *(result + 36);
  *v50 = v46;
  *(v50 + 8) = v27;
  return result;
}

double sub_25AFC49CC(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26550, &unk_25B012DF0);
  sub_25B005494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26528, &qword_25B012DC0);
  sub_25B005534();
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  v9 = v7;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
  sub_25B004224();
  sub_25AF2602C(v8, &qword_27FA26528, &qword_25B012DC0);

  sub_25B005494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26548, &qword_25B012DE8);
  sub_25B005534();
  v2 = swift_getKeyPath();
  MEMORY[0x28223BE20](v2);
  sub_25B004224();

  return result;
}

unint64_t sub_25AFC4CEC()
{
  result = qword_27FA262D8;
  if (!qword_27FA262D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA262B8, &qword_25B0125B0);
    sub_25AFC4DA4();
    sub_25AF0F274(&qword_27FA26350, &qword_27FA26358, &qword_25B0125F8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA262D8);
  }

  return result;
}

unint64_t sub_25AFC4DA4()
{
  result = qword_27FA262E0;
  if (!qword_27FA262E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA262E8, &qword_25B0125C8);
    sub_25AFC4E5C();
    sub_25AF0F274(&qword_27FA25AD0, &qword_27FA25AD8, &qword_25B0125F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA262E0);
  }

  return result;
}

unint64_t sub_25AFC4E5C()
{
  result = qword_27FA262F0;
  if (!qword_27FA262F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA262F8, &qword_25B0125D0);
    v3 = sub_25AFC4EE8();
    sub_25AFC5164(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA262F0);
  }

  return result;
}

unint64_t sub_25AFC4EE8()
{
  result = qword_27FA26300;
  if (!qword_27FA26300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26308, &qword_25B0125D8);
    v3 = sub_25AFC4F74();
    sub_25AFC5110(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26300);
  }

  return result;
}

unint64_t sub_25AFC4F74()
{
  result = qword_27FA26310;
  if (!qword_27FA26310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26318, &qword_25B0125E0);
    v3 = sub_25AFC5000();
    sub_25AFC50BC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26310);
  }

  return result;
}

unint64_t sub_25AFC5000()
{
  result = qword_27FA26320;
  if (!qword_27FA26320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26328, &qword_25B0125E8);
    sub_25AFCC394(&qword_27FA26330, type metadata accessor for AvailableControlsGrid, &unk_25B00AFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26320);
  }

  return result;
}

unint64_t sub_25AFC50BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26338;
  if (!qword_27FA26338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26338);
  }

  return result;
}

unint64_t sub_25AFC5110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26340;
  if (!qword_27FA26340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26340);
  }

  return result;
}

unint64_t sub_25AFC5164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26348;
  if (!qword_27FA26348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26348);
  }

  return result;
}

unint64_t sub_25AFC51C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26388;
  if (!qword_27FA26388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26388);
  }

  return result;
}

uint64_t SelectAvailableControlView.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_25B006294();
  MEMORY[0x25F85E0A0](v1);
  return sub_25B0062D4();
}

void *SelectAvailableControlView.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SelectControlModel(0);
  swift_allocObject();
  sub_25AFC8320();
  sub_25B005484();
  *(a1 + 88) = v3;
  *(a1 + 96) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26368, &unk_25B012608);
  sub_25B005484();
  *(a1 + 104) = v3;
  *(a1 + 112) = v4;
  *a1 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D78, &qword_25B009D80);
  sub_25B005544();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  *(a1 + 56) = v7;
  result = sub_25B005544();
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  return result;
}

void *SelectAvailableControlView.init(mode:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for SelectControlModel(0);
  swift_allocObject();
  sub_25AFC8320();
  sub_25B005484();
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26368, &unk_25B012608);
  sub_25B005484();
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  *a2 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D78, &qword_25B009D80);
  sub_25B005544();
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 40) = v8;
  *(a2 + 56) = v9;
  result = sub_25B005544();
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  return result;
}

uint64_t sub_25AFC5500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25AFCF42C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

char *sub_25AFC5564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265F0, &qword_25B012F78);
  sub_25B005494();
  v0 = v21;
  if (v21 == 1 || (v1 = , sub_25AFCEFF0(v1, v22), !v21))
  {

    v0 = MEMORY[0x277D84F90];
  }

  sub_25B005494();
  if (v21 == 1 || (, sub_25AFCEFF0(v21, v22), (v2 = v22) == 0))
  {

    v2 = MEMORY[0x277D84F90];
  }

  v23 = v0;
  sub_25AF36720(v2);
  result = v0;
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v0 + 64;
    v7 = MEMORY[0x277D84F90];
    v20 = *(v0 + 16);
    v18 = v4 - 1;
    v19 = v0 + 64;
    do
    {
      v8 = (v6 + 40 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= *(result + 2))
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 - 4);
        v10 = *(v8 - 3);
        v13 = *(v8 - 2);
        v12 = *(v8 - 1);
        v14 = *v8;
        sub_25B005B34();
        sub_25AF181DC(v11, v10, v13, v12, v14);
        sub_25B005B24();
        sub_25B005AE4();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v14 & 0xC0) == 0x40)
        {
          break;
        }

        ++v9;
        sub_25AF18128(v11, v10, v13, v12, v14);
        v8 += 40;
        result = v23;
        if (v20 == v9)
        {
          goto LABEL_23;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25AFCD46C(0, *(v7 + 2) + 1, 1, v7);
      }

      result = v23;
      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_25AFCD46C((v15 > 1), v16 + 1, 1, v7);
        result = v23;
      }

      v5 = v9 + 1;
      *(v7 + 2) = v16 + 1;
      v17 = &v7[32 * v16];
      *(v17 + 4) = v11;
      *(v17 + 5) = v10;
      *(v17 + 6) = v13;
      *(v17 + 7) = v12;
      v6 = v19;
    }

    while (v18 != v9);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_23:

  return v7;
}

uint64_t sub_25AFC5820@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for SelectAvailableControlView.AppControlsView(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26598, &qword_25B012F40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265A0, &qword_25B012F48);
  MEMORY[0x28223BE20](v32);
  v9 = &v30 - v8;
  v34 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265A8, &qword_25B012F50);
  sub_25AF0F274(&qword_27FA265B0, &qword_27FA265A8, &qword_25B012F50, MEMORY[0x277CE14C0]);
  sub_25B005044();
  v10 = *(v1 + 24);
  v11 = v1;
  v35 = *(v1 + 16);
  v36 = v10;
  v12 = sub_25AF0F274(&qword_27FA265B8, &qword_27FA26598, &qword_25B012F40, MEMORY[0x277CDE5A0]);
  sub_25AF2ECCC(v12, v13, v14);
  sub_25B0051E4();
  (*(v5 + 8))(v7, v4);
  sub_25AFCF0B4(v1, &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectAvailableControlView.AppControlsView);
  v15 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v16 = swift_allocObject();
  sub_25AFCEB40(&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SelectAvailableControlView.AppControlsView);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265C0, &qword_25B012F58) + 36);
  v30 = v9;
  v18 = &v9[v17];
  *v18 = sub_25AFCEBA8;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  sub_25AFCF0B4(v11, &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectAvailableControlView.AppControlsView);
  v19 = swift_allocObject();
  sub_25AFCEB40(&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v15, type metadata accessor for SelectAvailableControlView.AppControlsView);
  v20 = &v9[*(v32 + 36)];
  *v20 = 0;
  *(v20 + 1) = 0;
  *(v20 + 2) = sub_25AFCED48;
  *(v20 + 3) = v19;
  v35 = sub_25AFC5564();
  sub_25AFCF0B4(v11, &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectAvailableControlView.AppControlsView);
  v21 = swift_allocObject();
  sub_25AFCEB40(&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v15, type metadata accessor for SelectAvailableControlView.AppControlsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265C8, &qword_25B012F60);
  sub_25AFCEDEC();
  sub_25AFCEF88(&qword_27FA265E0, &qword_27FA265C8, &qword_25B012F60, MEMORY[0x277D83968]);
  v22 = v33;
  v23 = v30;
  sub_25B005374();

  sub_25AF2602C(v23, &qword_27FA265A0, &qword_25B012F48);
  v24 = sub_25AFC5564();
  v27 = sub_25AF9B3D0(v24, v25, v26);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265E8, &unk_25B012F68);
  v29 = v22 + *(result + 36);
  *v29 = 0;
  *(v29 + 8) = v27;
  *(v29 + 16) = 1;
  return result;
}

double sub_25AFC5CF0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265F8, &qword_25B012FA8);
  v52 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26600, &qword_25B012FB0);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = v43 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26608, &qword_25B012FB8);
  v8 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26610, &qword_25B012FC0);
  MEMORY[0x28223BE20](v11 - 8);
  v47 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v43 - v14;
  v16 = type metadata accessor for ButtonAndLabel.ParentState(0);
  MEMORY[0x28223BE20](v16);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B005B34();
  v46 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SelectAvailableControlView.AppControlsView(0);
  sub_25AF3D79C(&v18[*(v16 + 20)]);
  *v18 = 0;
  v20 = a1[15];
  v19 = a1[16];
  v21 = a1[17];
  v53 = v20;
  v54 = v19;
  v55 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265F0, &qword_25B012F78);
  sub_25B005494();
  v22 = v56;
  if (v56 == 1)
  {
    goto LABEL_8;
  }

  v23 = v57;

  v25 = sub_25AFCEFF0(v24, v23);
  if (!v22)
  {
    goto LABEL_8;
  }

  if (!*(v22 + 16))
  {

LABEL_8:
    v29 = 1;
    v28 = v45;
    goto LABEL_9;
  }

  v43[2] = v43;
  MEMORY[0x28223BE20](v25);
  v43[-2] = v22;
  v43[-1] = v18;
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26620, &unk_25B012FD0);
  sub_25AF0F274(&qword_27FA26628, &qword_27FA26620, &unk_25B012FD0, &unk_25B012260);
  sub_25B0055C4();

  v26 = v10;
  v27 = v45;
  (*(v8 + 32))(v15, v26, v45);
  v28 = v27;
  v29 = 0;
LABEL_9:
  v30 = 1;
  (*(v8 + 56))(v15, v29, 1, v28);
  v53 = v20;
  v54 = v19;
  v55 = v21;
  sub_25B005494();
  v31 = v56;
  v32 = v48;
  v33 = v49;
  if (v56 != 1)
  {
    v34 = v57;

    sub_25AFCEFF0(v31, v34);
    if (v34)
    {
      if (*(v34 + 16))
      {
        v35 = sub_25AFC30E4(v34);

        MEMORY[0x28223BE20](v36);
        v43[-2] = v35;
        v43[-1] = v18;
        sub_25AFC6AE0(&v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26620, &unk_25B012FD0);
        sub_25AF0F274(&qword_27FA26628, &qword_27FA26620, &unk_25B012FD0, &unk_25B012260);
        v37 = v44;
        sub_25B0055B4();

        (*(v52 + 32))(v33, v37, v32);
        v30 = 0;
      }

      else
      {
      }
    }
  }

  (*(v52 + 56))(v33, v30, 1, v32);
  v38 = v47;
  sub_25AF25FC4(v15, v47, &qword_27FA26610, &qword_25B012FC0);
  v39 = v50;
  sub_25AF25FC4(v33, v50, &qword_27FA26600, &qword_25B012FB0);
  v40 = v51;
  sub_25AF25FC4(v38, v51, &qword_27FA26610, &qword_25B012FC0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26618, &qword_25B012FC8);
  sub_25AF25FC4(v39, v40 + *(v41 + 48), &qword_27FA26600, &qword_25B012FB0);
  sub_25AF2602C(v33, &qword_27FA26600, &qword_25B012FB0);
  sub_25AF2602C(v15, &qword_27FA26610, &qword_25B012FC0);
  sub_25AF2602C(v39, &qword_27FA26600, &qword_25B012FB0);
  sub_25AF2602C(v38, &qword_27FA26610, &qword_25B012FC0);
  sub_25AF3D7C4(v18);

  return result;
}

uint64_t sub_25AFC63B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v18 = sub_25AFC30E4(a1);
  sub_25AFCF0B4(a2, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonAndLabel.ParentState);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25AFCEB40(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ButtonAndLabel.ParentState);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24428, &qword_25B00B440);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24450, &qword_25B00B460);
  v11 = sub_25AF0F274(&qword_27FA24CE0, &qword_27FA24428, &qword_25B00B440, MEMORY[0x277D83980]);
  v12 = sub_25AF0F274(&qword_27FA24458, &qword_27FA24450, &qword_25B00B460, MEMORY[0x277CDD870]);
  v15 = sub_25AF5A2DC(v12, v13, v14);
  return sub_25B005584(&v18, sub_25AFCF13C, v8, v9, &type metadata for GlanceButtonID, v10, v11, v12, v15);
}

void sub_25AFC65C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v14 = a3;
  v15 = a5;
  v9 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25AFCF0B4(a2, &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonAndLabel.ParentState);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  sub_25AFCEB40(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ButtonAndLabel.ParentState);

  *a6 = v15;
  a6[1] = v13;
}

uint64_t sub_25AFC675C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v18 = a1;
  sub_25AFCF0B4(a2, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonAndLabel.ParentState);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25AFCEB40(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ButtonAndLabel.ParentState);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24428, &qword_25B00B440);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24450, &qword_25B00B460);
  v11 = sub_25AF0F274(&qword_27FA24CE0, &qword_27FA24428, &qword_25B00B440, MEMORY[0x277D83980]);
  v12 = sub_25AF0F274(&qword_27FA24458, &qword_27FA24450, &qword_25B00B460, MEMORY[0x277CDD870]);
  v15 = sub_25AF5A2DC(v12, v13, v14);
  return sub_25B005584(&v18, sub_25AFCF3A8, v8, v9, &type metadata for GlanceButtonID, v10, v11, v12, v15);
}

void sub_25AFC6964(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v17 = *(a1 + 72);
  v18 = *(a1 + 48);
  v15 = *(a1 + 88);
  v16 = *(a1 + 80);
  v14 = *(a1 + 96);
  v10 = *(a1 + 104);
  v13 = *(a1 + 105);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for ButtonAndLabel(0);
  sub_25AFCF0B4(a2, a4 + *(v11 + 36), type metadata accessor for ButtonAndLabel.ParentState);
  *a4 = v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = v8;
  *(a4 + 24) = v7;
  *(a4 + 32) = v9;
  sub_25AF181DC(v5, v6, v8, v7, v9);
  sub_25AF1D7EC(v17, v16, v15, v14, v10);

  *(a4 + 40) = v17;
  *(a4 + 48) = v16;
  *(a4 + 56) = v15;
  *(a4 + 64) = v14;
  *(a4 + 72) = v10;
  *(a4 + 73) = v13;
  *(a4 + 80) = v18;
  *(a4 + 88) = 1;
  *(a4 + *(v11 + 40)) = 1;
}

void sub_25AFC6AE0(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v1 = sub_25B004204();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_25B005904();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25B0040A4();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_25B004094();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (v19 - v9);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = type metadata accessor for GlanceModel(0);
  (*(v5 + 104))(v10, *MEMORY[0x277CC9120], v4);
  sub_25B0058F4();
  (*(v5 + 16))(v7, v10, v4);
  sub_25B0041F4();
  sub_25B0040B4();
  v11 = sub_25B0050A4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v5 + 8))(v10, v4);

  v18 = v19[0];
  *v19[0] = v11;
  *(v18 + 8) = v13;
  *(v18 + 16) = v15 & 1;
  *(v18 + 24) = v17;
}

void sub_25AFC6DF8(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v2 = qword_27FA30B10;
    v3 = sub_25AFC5564();
    v6 = sub_25AF9B3D0(v3, v4, v5);

    sub_25AF72400(2, 2u, v6, 1);

    v10 = *(a1 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24408, &unk_25B00B410);
    sub_25B0054A4();
    v7 = *(a1 + 128);
    v8 = *(a1 + 136);
    *&v10 = *(a1 + 120);
    *(&v10 + 1) = v7;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265F0, &qword_25B012F78);
    sub_25B005494();
    sub_25AFCEFF0(2, v9);
  }

  else
  {
    __break(1u);
    __break(1u);
    __break(1u);
  }
}

void sub_25AFC7504(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v2 = qword_27FA30B10;
    v25 = a1;
    v3 = sub_25AFC5564();
    v6 = sub_25AF9B3D0(v3, v4, v5);

    v7 = v6 + 56;
    v8 = 1 << *(v6 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v6 + 56);
    v11 = (v8 + 63) >> 6;
    v27 = v6;

    v12 = 0;
    v26 = v2;
    while (v10)
    {
LABEL_13:
      v14 = *(v27 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v10))));
      v15 = *v14;
      v16 = *(v14 + 8);
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      swift_beginAccess();

      v19 = v16;
      v20 = v15;
      v21 = sub_25AF7E350(v28, v20, v19, v18, v17);
      if (*v22)
      {
        sub_25AF99800(2u);
      }

      (v21)(v28, 0);
      swift_endAccess();
      v2 = v26;
      swift_beginAccess();
      v23 = sub_25AF7E350(v28, v20, v19, v18, v17);
      if (*v24)
      {
        sub_25AF99800(2u);
      }

      (v23)(v28, 0);
      swift_endAccess();
      v10 &= v10 - 1;
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        sub_25AF7E44C(1);

        v28[0] = *(v25 + 144);
        v29 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24408, &unk_25B00B410);
        sub_25B0054A4();

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_25AFC77F4(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24408, &unk_25B00B410);
  sub_25B005494();
  if (qword_27FA30B10)
  {
    v1 = qword_27FA30B10;
    v2 = sub_25AFC5564();
    v5 = sub_25AF9B3D0(v2, v3, v4);

    sub_25AF72400(v6, 2u, v5, 1);

    sub_25B0054A4();
  }

  else
  {
    __break(1u);
  }
}

id sub_25AFC793C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v10 = v1;
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
  sub_25B004234();

  v3 = *(v1 + 24);
  v4 = *(v10 + 32);
  v5 = *(v10 + 40);
  v6 = *(v10 + 48);
  v7 = *(v10 + 56);
  *a1 = *(v10 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v10 + 64);
  *(a1 + 48) = v8;

  return sub_25AF1D7EC(v4, v5, v6, v7, v8);
}

id sub_25AFC7A30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
  sub_25B004234();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  LOBYTE(v3) = *(v3 + 64);
  *(a2 + 48) = v3;

  return sub_25AF1D7EC(v5, v6, v7, v8, v3);
}

double sub_25AFC7B24(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
  sub_25B004224();

  return result;
}

void *sub_25AFC7C08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v6;
  *(a1 + 48) = *(a2 + 32);
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 48);
  sub_25AF25FC4(a2, v9, &qword_27FA26528, &qword_25B012DC0);

  return sub_25AF231D0(v2, v3, v4, v5, v7);
}

uint64_t sub_25AFC7CBC()
{
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
  sub_25B004234();

  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_25AFC7D7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
  sub_25B004234();

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  *a2 = *(v3 + 72);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

double sub_25AFC7E38(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
  sub_25B004224();

  return result;
}

void sub_25AFC7F18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4 & 1;
}

uint64_t sub_25AFC7F78()
{
  swift_getKeyPath();
  v3 = v0;
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
  sub_25B004234();

  v1 = v0[12];
  sub_25AFCCC70(v1, v3[13], v3[14], v3[15]);
  return v1;
}

void sub_25AFC8040(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
  sub_25B004234();

  v4 = v3[12];
  v5 = v3[13];
  v6 = v3[14];
  v7 = v3[15];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  sub_25AFCCC70(v4, v5, v6, v7);
}

void sub_25AFC80F4(uint64_t *a1, __n128 a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_25AFCCC70(*a1, v3, v4, v5);
  sub_25AFC8154(v2, v3, v4, v5, v6);
}

void sub_25AFC8154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v10 = v5[12];
  v11 = v5[13];
  v12 = v5[14];
  v13 = v5[15];
  sub_25AFCCC70(v10, v11, v12, v13);
  v14 = sub_25AFCDF58(v10, v11, v12, v13, a1, a2, a3, a4);
  sub_25AFCCCB4(v10, v11, v12, v13);
  if (v14)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
    sub_25B004224();
    sub_25AFCCCB4(a1, a2, a3, a4);
  }

  else
  {
    v16 = v5[12];
    v17 = v5[13];
    v18 = v5[14];
    v19 = v5[15];
    v5[12] = a1;
    v5[13] = a2;
    v5[14] = a3;
    v5[15] = a4;

    sub_25AFCCCB4(v16, v17, v18, v19);
  }
}

uint64_t sub_25AFC8320()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D78, &qword_25B009D80);
  sub_25B005544();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  sub_25B005544();
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_25B004264();
  return v0;
}

unint64_t sub_25AFC83F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26390;
  if (!qword_27FA26390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26390);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25AFC8470(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AFC84B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AFC8534()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  sub_25AF231D0(v1, v2, v3, v4, v5);

  sub_25AFCCCB4(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  v6 = OBJC_IVAR____TtC17NanoControlCenter18SelectControlModel___observationRegistrar;
  v7 = sub_25B004274();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t sub_25AFC8640(uint64_t a1)
{
  result = sub_25B004274();
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

unint64_t sub_25AFC86F4()
{
  result = qword_27FA263B0;
  if (!qword_27FA263B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263B8, &qword_25B0128D0);
    sub_25AF0F274(&qword_27FA262D0, &qword_27FA262C8, &qword_25B0125C0, MEMORY[0x277CDDA18]);
    sub_25AFC4CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA263B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17NanoControlCenter06GlanceB2IDVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_25AFC8804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AFC884C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AFC88BC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_25B006294();
  if (v3)
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v1);
    if (!v2)
    {
      sub_25B0062B4();
      return sub_25B0062D4();
    }

    sub_25B0062B4();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    sub_25B005994();
  }

  sub_25B005994();
  return sub_25B0062D4();
}

uint64_t sub_25AFC8984(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  if (*(v1 + 32))
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v2);
    if (!v3)
    {
      return sub_25B0062B4();
    }

    sub_25B0062B4();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    sub_25B005994();
  }

  return sub_25B005994();
}

uint64_t sub_25AFC8A54(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_25B006294();
  if (v4)
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v2);
    if (!v3)
    {
      sub_25B0062B4();
      return sub_25B0062D4();
    }

    sub_25B0062B4();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    sub_25B005994();
  }

  sub_25B005994();
  return sub_25B0062D4();
}

unint64_t sub_25AFC8B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA263C0;
  if (!qword_27FA263C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA263C0);
  }

  return result;
}

void sub_25AFC8B90(uint64_t a1@<X0>, void *a2@<X8>)
{
  v153 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263C8, &qword_25B012B88);
  v136 = *(v4 - 8);
  v137 = v4;
  MEMORY[0x28223BE20](v4);
  v152 = &v134 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263D0, &qword_25B012B90);
  MEMORY[0x28223BE20](v6);
  v138 = &v134 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263D8, &qword_25B012B98);
  MEMORY[0x28223BE20](v8);
  v10 = &v134 - v9;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263E0, &qword_25B012BA0);
  MEMORY[0x28223BE20](v149);
  v144 = &v134 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263E8, &qword_25B012BA8);
  MEMORY[0x28223BE20](v12);
  v145 = &v134 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263F0, &qword_25B012BB0);
  v146 = *(v14 - 8);
  v147 = v14;
  MEMORY[0x28223BE20](v14);
  v157 = &v134 - v15;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263F8, &qword_25B012BB8);
  v148 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v156 = &v134 - v16;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26400, &qword_25B012BC0);
  v143 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v155 = &v134 - v17;
  v18 = v2[5];
  v174 = v2[4];
  *v175 = v18;
  v19 = v2[7];
  *&v175[16] = v2[6];
  *&v175[32] = v19;
  v20 = v2[1];
  v170 = *v2;
  v171 = v20;
  v21 = v2[3];
  v172 = v2[2];
  v173 = v21;
  v22 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v23 = (qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlNavigationBlock);
    swift_beginAccess();
    v24 = *v23;
    if (*v23)
    {
      v25 = v23[1];
      v151 = *v23;
      v152 = v25;
      v26 = *(v22 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_configureModelSelectionView);
      swift_getKeyPath();
      v140 = v6;
      *&v166 = v26;
      sub_25AF2EBC4(v24, v25);
      sub_25AFCC394(&qword_27FA25098, type metadata accessor for ConfigureControlModel, &unk_25B00E4D0);
      v142 = v8;

      sub_25B004234();

      v27 = v26[2];
      v28 = v26[3];
      v141 = a2;
      v29 = v26[4];
      v30 = v26[5];
      sub_25AF6B1F0(v27, v28, v29, v30);

      v162 = v27;
      v163 = v28;
      *&v164 = v29;
      *(&v164 + 1) = v30;
      v31 = swift_allocObject();
      v32 = *v175;
      v31[5] = v174;
      v31[6] = v32;
      v33 = *&v175[32];
      v31[7] = *&v175[16];
      v31[8] = v33;
      v34 = v171;
      v31[1] = v170;
      v31[2] = v34;
      v35 = v173;
      v31[3] = v172;
      v31[4] = v35;
      sub_25AFCCC28(&v170, &v166);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26408, &qword_25B012BC8);
      v139 = v10;
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26428, &qword_25B012BE0);
      v37 = sub_25AF0F274(&qword_27FA26430, &qword_27FA26408, &qword_25B012BC8, MEMORY[0x277CE04B0]);
      v135 = sub_25AFCEF88(&qword_27FA26438, &qword_27FA26428, &qword_25B012BE0, MEMORY[0x277D84F50]);
      v137 = v37;
      v138 = v36;
      sub_25B005374();

      sub_25AF1979C(v162, v163, v164, *(&v164 + 1));
      v38 = *(&v172 + 1);
      swift_getKeyPath();
      *&v166 = v38;
      sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
      sub_25B004234();

      v39 = v38[12];
      v40 = v38[13];
      v153 = v12;
      v41 = v38[14];
      v42 = v38[15];
      v162 = v39;
      v163 = v40;
      *&v164 = v41;
      *(&v164 + 1) = v42;
      v43 = swift_allocObject();
      v44 = *v175;
      *(v43 + 80) = v174;
      *(v43 + 96) = v44;
      v45 = *&v175[32];
      *(v43 + 112) = *&v175[16];
      *(v43 + 128) = v45;
      v46 = v171;
      *(v43 + 16) = v170;
      *(v43 + 32) = v46;
      v47 = v173;
      *(v43 + 48) = v172;
      *(v43 + 64) = v47;
      v48 = v151;
      v49 = v152;
      *(v43 + 144) = v151;
      *(v43 + 152) = v49;
      sub_25AF2EBC4(v48, v49);
      sub_25AFCCC28(&v170, &v166);
      sub_25AFCCC70(v39, v40, v41, v42);
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26420, &qword_25B012BD8);
      *&v166 = v36;
      *(&v166 + 1) = v136;
      *&v167 = v37;
      *(&v167 + 1) = v135;
      v136 = MEMORY[0x277CE0E40];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v51 = sub_25AFCC11C();
      v52 = v147;
      v53 = v157;
      sub_25B005374();

      sub_25AFCCCB4(v39, v40, v41, v42);
      (*(v146 + 8))(v53, v52);
      v166 = *&v175[8];
      v167 = *&v175[24];
      v168 = *&v175[40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26500, &qword_25B012C78);
      sub_25B0054B4();
      v158 = v162;
      v159 = v163;
      v160 = v164;
      v161 = v165;
      v54 = swift_allocObject();
      v55 = *v175;
      v54[5] = v174;
      v54[6] = v55;
      v56 = *&v175[32];
      v54[7] = *&v175[16];
      v54[8] = v56;
      v57 = v171;
      v54[1] = v170;
      v54[2] = v57;
      v58 = v173;
      v54[3] = v172;
      v54[4] = v58;
      v59 = swift_allocObject();
      *(v59 + 16) = sub_25AFCF62C;
      *(v59 + 24) = v54;
      sub_25AFCCC28(&v170, &v166);
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26418, &qword_25B012BD0);
      *&v166 = v52;
      *(&v166 + 1) = v134;
      *&v167 = OpaqueTypeConformance2;
      *(&v167 + 1) = v51;
      v157 = swift_getOpaqueTypeConformance2();
      v131 = sub_25AFCC1A0(v157, v60, v61);
      v132 = sub_25AFCC1F4();
      v62 = v154;
      v63 = v156;
      sub_25B005334();

      v64 = v160;
      v65 = v161;

      sub_25AF1979C(v64, *(&v64 + 1), v65, *(&v65 + 1));
      (*(v148 + 8))(v63, v62);
      v66 = v143;
      v67 = v155;
      v68 = v150;
      (*(v143 + 16))(v144, v155, v150);
      swift_storeEnumTagMultiPayload();
      *&v166 = v62;
      *(&v166 + 1) = &type metadata for GlanceControlID;
      *&v167 = v146;
      *(&v167 + 1) = v157;
      v168 = v131;
      v169 = v132;
      swift_getOpaqueTypeConformance2();
      sub_25AFCC3DC();
      v69 = v145;
      sub_25B004C74();
      sub_25AF25FC4(v69, v139, &qword_27FA263E8, &qword_25B012BA8);
      swift_storeEnumTagMultiPayload();
      sub_25AFCBEF0();
      sub_25B004C74();
      sub_25AF1895C(v151, v152);
      sub_25AF2602C(v69, &qword_27FA263E8, &qword_25B012BA8);
      (*(v66 + 8))(v67, v68);
    }

    else if (v170 == 1)
    {
      v70 = *(v22 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_configureModelSelectionView);
      swift_getKeyPath();
      v140 = v6;
      *&v166 = v70;
      sub_25AFCC394(&qword_27FA25098, type metadata accessor for ConfigureControlModel, &unk_25B00E4D0);
      v142 = v8;

      sub_25B004234();

      v71 = v70[2];
      v72 = v70[3];
      v141 = a2;
      v73 = v70[4];
      v74 = v70[5];
      sub_25AF6B1F0(v71, v72, v73, v74);

      v162 = v71;
      v163 = v72;
      *&v164 = v73;
      *(&v164 + 1) = v74;
      v75 = swift_allocObject();
      v76 = *v175;
      v75[5] = v174;
      v75[6] = v76;
      v77 = *&v175[32];
      v75[7] = *&v175[16];
      v75[8] = v77;
      v78 = v171;
      v75[1] = v170;
      v75[2] = v78;
      v79 = v173;
      v75[3] = v172;
      v75[4] = v79;
      sub_25AFCCC28(&v170, &v166);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26408, &qword_25B012BC8);
      v139 = v10;
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26428, &qword_25B012BE0);
      v81 = sub_25AF0F274(&qword_27FA26430, &qword_27FA26408, &qword_25B012BC8, MEMORY[0x277CE04B0]);
      v135 = sub_25AFCEF88(&qword_27FA26438, &qword_27FA26428, &qword_25B012BE0, MEMORY[0x277D84F50]);
      v155 = v80;
      v151 = v81;
      sub_25B005374();

      sub_25AF1979C(v162, v163, v164, *(&v164 + 1));
      v153 = v12;
      v82 = *(&v172 + 1);
      swift_getKeyPath();
      *&v166 = v82;
      sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
      sub_25B004234();

      v84 = v82[13];
      v85 = v82[14];
      v86 = v82[15];
      v162 = v82[12];
      v83 = v162;
      v163 = v84;
      *&v164 = v85;
      *(&v164 + 1) = v86;
      v87 = swift_allocObject();
      v88 = *v175;
      v87[5] = v174;
      v87[6] = v88;
      v89 = *&v175[32];
      v87[7] = *&v175[16];
      v87[8] = v89;
      v90 = v171;
      v87[1] = v170;
      v87[2] = v90;
      v91 = v173;
      v87[3] = v172;
      v87[4] = v91;
      sub_25AFCCC28(&v170, &v166);
      sub_25AFCCC70(v83, v84, v85, v86);
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26420, &qword_25B012BD8);
      *&v166 = v80;
      *(&v166 + 1) = v143;
      *&v167 = v81;
      *(&v167 + 1) = v135;
      v143 = MEMORY[0x277CE0E40];
      v92 = swift_getOpaqueTypeConformance2();
      v135 = sub_25AFCC11C();
      v93 = v156;
      v94 = v147;
      v95 = v157;
      sub_25B005374();

      sub_25AFCCCB4(v83, v84, v85, v86);
      (*(v146 + 8))(v95, v94);
      v96 = swift_allocObject();
      v97 = *v175;
      v96[5] = v174;
      v96[6] = v97;
      v98 = *&v175[32];
      v96[7] = *&v175[16];
      v96[8] = v98;
      v99 = v171;
      v96[1] = v170;
      v96[2] = v99;
      v100 = v173;
      v96[3] = v172;
      v96[4] = v100;
      sub_25AFCCC28(&v170, &v166);
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26478, &qword_25B012BF0);
      *&v166 = v94;
      *(&v166 + 1) = v134;
      *&v167 = v92;
      *(&v167 + 1) = v135;
      v102 = swift_getOpaqueTypeConformance2();
      v105 = sub_25AFC51C0(v102, v103, v104);
      v106 = sub_25AFCC6B4();
      v107 = v154;
      v108 = v102;
      v157 = v102;
      sub_25B0052F4();

      (*(v148 + 8))(v93, v107);
      v166 = *&v175[8];
      v167 = *&v175[24];
      v168 = *&v175[40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26500, &qword_25B012C78);
      sub_25B0054B4();
      v158 = v162;
      v159 = v163;
      v160 = v164;
      v161 = v165;
      v109 = swift_allocObject();
      v110 = *v175;
      v109[5] = v174;
      v109[6] = v110;
      v111 = *&v175[32];
      v109[7] = *&v175[16];
      v109[8] = v111;
      v112 = v171;
      v109[1] = v170;
      v109[2] = v112;
      v113 = v173;
      v109[3] = v172;
      v109[4] = v113;
      v114 = swift_allocObject();
      *(v114 + 16) = sub_25AFCCD00;
      *(v114 + 24) = v109;
      sub_25AFCCC28(&v170, &v166);
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26418, &qword_25B012BD0);
      *&v166 = v107;
      *(&v166 + 1) = &type metadata for SelectControlViewNavigationEffect.PathComponent;
      *&v167 = v101;
      *(&v167 + 1) = v108;
      v168 = v105;
      v169 = v106;
      v115 = swift_getOpaqueTypeConformance2();
      v156 = sub_25AFCC1A0(v115, v116, v117);
      v133 = sub_25AFCC1F4();
      v118 = v137;
      v119 = v138;
      v120 = v152;
      sub_25B005334();

      v121 = v160;
      v122 = v161;

      sub_25AF1979C(v121, *(&v121 + 1), v122, *(&v122 + 1));
      (*(v136 + 8))(v120, v118);
      v123 = swift_allocObject();
      v124 = *v175;
      v123[5] = v174;
      v123[6] = v124;
      v125 = *&v175[32];
      v123[7] = *&v175[16];
      v123[8] = v125;
      v126 = v171;
      v123[1] = v170;
      v123[2] = v126;
      v127 = v173;
      v123[3] = v172;
      v123[4] = v127;
      v128 = (v119 + *(v140 + 36));
      sub_25B004754();
      sub_25AFCCC28(&v170, &v166);
      sub_25B005B44();
      *v128 = &unk_25B012C88;
      v128[1] = v123;
      sub_25AF25FC4(v119, v144, &qword_27FA263D0, &qword_25B012B90);
      swift_storeEnumTagMultiPayload();
      *&v166 = v154;
      *(&v166 + 1) = &type metadata for GlanceControlID;
      *&v167 = v148;
      *(&v167 + 1) = v157;
      v168 = v156;
      v169 = v133;
      swift_getOpaqueTypeConformance2();
      sub_25AFCC3DC();
      v129 = v145;
      sub_25B004C74();
      sub_25AF25FC4(v129, v139, &qword_27FA263E8, &qword_25B012BA8);
      swift_storeEnumTagMultiPayload();
      sub_25AFCBEF0();
      sub_25B004C74();
      sub_25AF2602C(v129, &qword_27FA263E8, &qword_25B012BA8);
      sub_25AF2602C(v119, &qword_27FA263D0, &qword_25B012B90);
    }

    else
    {
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26408, &qword_25B012BC8);
      (*(*(v130 - 8) + 16))(v10, v153, v130);
      swift_storeEnumTagMultiPayload();
      sub_25AFCBEF0();
      sub_25AF0F274(&qword_27FA26430, &qword_27FA26408, &qword_25B012BC8, MEMORY[0x277CE04B0]);
      sub_25B004C74();
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_25AFC9F04(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26490, &qword_25B012BF8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + 5);
  swift_getKeyPath();
  *&v22 = v9;
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
  sub_25B004234();

  v10 = v9[13];
  if (v10)
  {
    v21[0] = a2;
    v21[1] = a3;
    v11 = v9[14];
    v12 = v9[15];
    v13 = v9[12];
    v14 = a1[5];
    v26 = a1[4];
    v27 = v14;
    v15 = a1[7];
    v28 = a1[6];
    v29 = v15;
    v16 = a1[1];
    v22 = *a1;
    v23 = v16;
    v17 = a1[3];
    v24 = a1[2];
    v25 = v17;
    v18 = *(a1 + 48);

    sub_25AFCA13C(v13, v10, v11, v12, v18, 1, v8);

    sub_25AFCC740();
    sub_25B005504();
    (v21[0])();

    sub_25AFC8154(0, 0, 0, 0, v19);
  }

  return result;
}

uint64_t sub_25AFCA13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v80) = a6;
  LODWORD(v91) = a5;
  v71 = a4;
  v75 = a3;
  v72 = a2;
  v73 = a1;
  v87 = a7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26510, &qword_25B012D18);
  MEMORY[0x28223BE20](v81);
  v86 = &v68 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA264C0, &qword_25B012C10);
  MEMORY[0x28223BE20](v85);
  v68 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA264B0, &qword_25B012C08);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v68 - v11;
  v89 = sub_25B004B14();
  v92 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA264E0, &qword_25B012C20);
  MEMORY[0x28223BE20](v77);
  v14 = &v68 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA264C8, &qword_25B012C18);
  MEMORY[0x28223BE20](v94);
  v84 = &v68 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26518, &qword_25B012D20);
  v96 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v93 = &v68 - v16;
  v90 = *v7;
  v17 = *(v7 + 5);
  v74 = *(v7 + 7);
  v95 = v7[64];
  v78 = *(v7 + 9);
  LODWORD(v76) = v7[80];
  swift_getKeyPath();
  v79 = OBJC_IVAR____TtC17NanoControlCenter18SelectControlModel___observationRegistrar;
  *&v99 = v17;
  v70 = sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);

  sub_25B004234();

  v18 = *(v17 + 16);
  v19 = *(v17 + 24);
  v21 = *(v17 + 32);
  v69 = *(v17 + 40);
  v20 = v69;
  v22 = *(v17 + 48);
  v23 = *(v17 + 56);
  v24 = *(v17 + 64);
  swift_getKeyPath();
  *&v99 = v17;

  sub_25AF1D7EC(v21, v20, v22, v23, v24);
  sub_25B004234();

  v25 = *(v17 + 72);
  v26 = *(v17 + 80);
  v79 = v17;
  v27 = *(v17 + 88);
  v28 = v72;
  *v14 = v73;
  *(v14 + 1) = v28;
  v29 = v71;
  *(v14 + 2) = v75;
  *(v14 + 3) = v29;
  v14[32] = v91;
  v14[33] = v90;
  *(v14 + 5) = v18;
  *(v14 + 6) = v19;
  v30 = v69;
  *(v14 + 7) = v21;
  *(v14 + 8) = v30;
  *(v14 + 9) = v22;
  *(v14 + 10) = v23;
  v14[88] = v24;
  *(v14 + 12) = v25;
  *(v14 + 13) = v26;
  v14[112] = v27;
  v97 = xmmword_25B0117E0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26520, &qword_25B012D78);
  sub_25B005484();
  v31 = v100;
  *(v14 + 120) = v99;
  *(v14 + 17) = v31;
  *&v97 = 0;
  type metadata accessor for CHSControlVisibility(0);
  sub_25B005484();
  *(v14 + 9) = v99;
  v32 = *(type metadata accessor for SelectAvailableControlView.AppControlsView(0) + 44);
  *&v14[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24280, &unk_25B012DB0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v34 = v74;
  if (v95 == 1)
  {
    v35 = v74;
    v36 = v89;
    v37 = v92;
    v38 = v88;
  }

  else
  {

    sub_25B005CC4();
    v39 = sub_25B004F24();
    sub_25B0044A4();

    v38 = v88;
    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v34, 0);
    v37 = v92;
    v36 = v89;
    (*(v92 + 8))(v38, v89);
    v35 = v99;
  }

  v40 = &v14[*(v77 + 36)];
  *v40 = KeyPath;
  v40[8] = v35;
  v41 = swift_getKeyPath();
  v42 = v93;
  v43 = v78;
  if (v76)
  {
    LOBYTE(v99) = v78;
  }

  else
  {

    sub_25B005CC4();
    v44 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v43, 0);
    (*(v37 + 8))(v38, v36);
    LOBYTE(v43) = v99;
  }

  v45 = v84;
  sub_25AF25B0C(v14, v84, &qword_27FA264E0, &qword_25B012C20);
  v46 = v94;
  v47 = v45 + *(v94 + 36);
  *v47 = v41;
  *(v47 + 8) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA241A8, &qword_25B00AB40);
  sub_25B004914();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_25B00A900;
  sub_25B004904();
  v49 = sub_25AFCC9E8();
  MEMORY[0x25F85D020](1, v48, v46, v49);

  sub_25AF2602C(v45, &qword_27FA264C8, &qword_25B012C18);
  sub_25B005B34();
  v84 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v80)
  {
    v50 = v91 & 1;
    *&v99 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26368, &unk_25B012608);
    sub_25B005544();
    v91 = v104;
    v80 = v105;
    v78 = swift_getKeyPath();
    v103 = 0;
    v51 = swift_getKeyPath();
    v102 = 0;
    v97 = 0u;
    v98 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26428, &qword_25B012BE0);
    sub_25B005484();
    v52 = v101;
    v77 = v99;
    v76 = v100;
    v53 = v103;
    v54 = v49;
    v55 = v34;
    v56 = v102;
    v57 = v68;
    v58 = v42;
    v59 = v82;
    (*(v96 + 16))(v68, v58, v82);
    v60 = v57 + *(v85 + 36);
    *v60 = v90;
    *(v60 + 8) = v91;
    *(v60 + 16) = v80;
    *(v60 + 32) = 1;
    *(v60 + 40) = v79;
    *(v60 + 48) = v50;
    *(v60 + 56) = v78;
    *(v60 + 64) = v53;
    *(v60 + 72) = v51;
    *(v60 + 80) = v56;
    v34 = v55;
    *(v60 + 104) = v76;
    *(v60 + 88) = v77;
    *(v60 + 120) = v52;
    sub_25AF25FC4(v57, v86, &qword_27FA264C0, &qword_25B012C10);
    swift_storeEnumTagMultiPayload();
    sub_25AFCC920();
    *&v99 = v94;
    *(&v99 + 1) = v54;
    swift_getOpaqueTypeConformance2();
    v61 = v83;
    v62 = v59;
    v42 = v93;
    sub_25B004C74();
    v63 = v57;
    v36 = v89;
    sub_25AF2602C(v63, &qword_27FA264C0, &qword_25B012C10);
  }

  else
  {

    v62 = v82;
    (*(v96 + 16))(v86, v42, v82);
    swift_storeEnumTagMultiPayload();
    sub_25AFCC920();
    *&v99 = v94;
    *(&v99 + 1) = v49;
    swift_getOpaqueTypeConformance2();
    v61 = v83;
    sub_25B004C74();
  }

  v64 = v87;
  sub_25AF25B0C(v61, v87, &qword_27FA264B0, &qword_25B012C08);

  if (!v95)
  {

    sub_25B005CC4();
    v65 = sub_25B004F24();
    sub_25B0044A4();

    v66 = v88;
    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v34, 0);
    (*(v92 + 8))(v66, v36);
    LOBYTE(v34) = v99;
  }

  (*(v96 + 8))(v42, v62);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26490, &qword_25B012BF8);
  *(v64 + *(result + 36)) = v34;
  return result;
}

id sub_25AFCAE18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_25B004B14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v26 = a1[1];
  v27 = v9;
  v10 = a1[3];
  v25 = a1[2];
  v11 = *(v2 + 56);
  v12 = *(v2 + 72);
  v13 = *(v2 + 80);
  if (*(v2 + 64) != 1)
  {

    sub_25B005CC4();
    v14 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v11, 0);
    (*(v6 + 8))(v8, v5);
    LOBYTE(v11) = v29;
  }

  if (v13)
  {
    v28 = v12;
  }

  else
  {

    sub_25B005CC4();
    v15 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v12, 0);
    (*(v6 + 8))(v8, v5);
    LOBYTE(v12) = v28;
  }

  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA241A0, &qword_25B012CC0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for ControlConfigurationView(0);
  v17 = (a2 + *(v16 + 20));
  v18 = v26;
  *v17 = v27;
  v17[1] = v18;
  v17[2] = v25;
  v17[3] = v10;
  *(a2 + *(v16 + 24)) = 1;
  KeyPath = swift_getKeyPath();
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26460, &qword_25B012BE8) + 36);
  *v20 = KeyPath;
  v20[8] = v11;
  v21 = swift_getKeyPath();
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26418, &qword_25B012BD0) + 36);
  *v22 = v21;
  v22[8] = v12;

  v23 = v27;

  return v23;
}

double sub_25AFCB108(uint64_t a1, void (*a2)(uint64_t))
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);

  return result;
}

void sub_25AFCB1D0(uint64_t a1, uint64_t a2)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v3 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_configureModelSelectionView);
    swift_getKeyPath();
    *&v19[0] = v3;
    sub_25AFCC394(&qword_27FA25098, type metadata accessor for ConfigureControlModel, &unk_25B00E4D0);

    sub_25B004234();

    v4 = v3[2];
    v5 = v3[3];
    v6 = v3[4];
    v7 = v3[5];
    sub_25AF6B1F0(v4, v5, v6, v7);

    if (!v4)
    {
LABEL_7:

      return;
    }

    v8 = *(a1 + 104);
    v19[0] = *(a1 + 88);
    v19[1] = v8;
    v20 = *(a1 + 120);
    v9 = *(a1 + 104);
    v16 = *(a1 + 88);
    v17 = v9;
    v18 = *(a1 + 120);
    v12 = v4;
    v13 = v5;
    v14 = v6;
    v15 = v7;
    sub_25AF6B1F0(v4, v5, v6, v7);
    sub_25AF25FC4(v19, v11, &qword_27FA26500, &qword_25B012C78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26500, &qword_25B012C78);
    sub_25B0054A4();
    sub_25AF1979C(v16, *(&v16 + 1), v17, *(&v17 + 1));

    if (qword_27FA30B10)
    {
      v16 = 0u;
      v17 = 0u;

      sub_25AF6AC5C(&v16, v10);
      sub_25AF1979C(v4, v5, v6, v7);

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_25AFCB428(void *a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[5];
  swift_getKeyPath();
  v19 = v2;
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel, &unk_25B012ADC);
  sub_25B004234();

  v3 = v2[13];
  if (v3)
  {
    v4 = v2[12];
    v5 = v2[14];
    v6 = v2[15];
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v24 = v7;
    v23 = v9;
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v16 = v5;
    v17 = v4;
    sub_25AFCCC70(v4, v3, v5, v6);
    sub_25AF40234(&v24, v18);

    sub_25AF25FC4(&v23, v18, &qword_27FA26368, &unk_25B012608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26530, &qword_25B012DC8);
    MEMORY[0x25F85D310](&v22);
    v10 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_25AFCDA5C(0, *(v10 + 2) + 1, 1, v10, &qword_27FA26538, &qword_25B012DD0, &type metadata for SelectControlViewNavigationEffect.PathComponent);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_25AFCDA5C((v11 > 1), v12 + 1, 1, v10, &qword_27FA26538, &qword_25B012DD0, &type metadata for SelectControlViewNavigationEffect.PathComponent);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    *(v13 + 4) = v17;
    *(v13 + 5) = v3;
    *(v13 + 6) = v16;
    *(v13 + 7) = v6;
    v13[64] = 0;
    v18[0] = v7;
    v18[1] = v8;
    v18[2] = v9;
    sub_25B005524();
    sub_25AFCE380(&v24);

    sub_25AF2602C(&v23, &qword_27FA26368, &unk_25B012608);
    sub_25AFC8154(0, 0, 0, 0, v14);
  }

  return result;
}

double sub_25AFCB6E0@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26418, &qword_25B012BD0);
  MEMORY[0x28223BE20](v29);
  v6 = (&v23 - v5);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26540, &unk_25B012DD8);
  MEMORY[0x28223BE20](v27);
  v8 = &v23 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26490, &qword_25B012BF8);
  MEMORY[0x28223BE20](v28);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26478, &qword_25B012BF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(a1 + 24);
  v24 = *(a1 + 16);
  v25 = v16;
  v17 = *(a1 + 32);
  sub_25B005B34();
  v26 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = a2[5];
  v36 = a2[4];
  v37 = v18;
  v19 = a2[7];
  v38 = a2[6];
  v39 = v19;
  v20 = a2[1];
  v32 = *a2;
  v33 = v20;
  v21 = a2[3];
  v34 = a2[2];
  v35 = v21;
  if (v17)
  {
    v31[0] = v15;
    v31[1] = v14;
    v31[2] = v24;
    v31[3] = v25;
    sub_25AFCAE18(v31, v6);
    sub_25AF25FC4(v6, v8, &qword_27FA26418, &qword_25B012BD0);
    swift_storeEnumTagMultiPayload();
    sub_25AFCC740();
    sub_25AFCC1F4();
    sub_25B004C74();
    sub_25AF2602C(v6, &qword_27FA26418, &qword_25B012BD0);
  }

  else
  {
    sub_25AFCA13C(v15, v14, v24, v25, *(a2 + 48), 0, v10);
    sub_25AF25FC4(v10, v8, &qword_27FA26490, &qword_25B012BF8);
    swift_storeEnumTagMultiPayload();
    sub_25AFCC740();
    sub_25AFCC1F4();
    sub_25B004C74();
    sub_25AF2602C(v10, &qword_27FA26490, &qword_25B012BF8);
  }

  sub_25AF25B0C(v13, v30, &qword_27FA26478, &qword_25B012BF0);

  return result;
}

uint64_t sub_25AFCBABC(uint64_t a1)
{
  *(v1 + 168) = a1;
  sub_25B005B34();
  *(v1 + 176) = sub_25B005B24();
  v3 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AFCBB54, v3, v2);
}

void sub_25AFCBB54()
{

  v1 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v2 = *(v0 + 168);
    v3 = swift_allocObject();
    v4 = v2[3];
    v6 = *v2;
    v5 = v2[1];
    v3[3] = v2[2];
    v3[4] = v4;
    v3[1] = v6;
    v3[2] = v5;
    v7 = v2[7];
    v9 = v2[4];
    v8 = v2[5];
    v3[7] = v2[6];
    v3[8] = v7;
    v3[5] = v9;
    v3[6] = v8;
    v10 = &v1[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlNavigationBackBlock];
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    *v10 = sub_25AFCE330;
    v10[1] = v3;
    v13 = v1;
    sub_25AFCCC28(v2, v0 + 16);
    sub_25AF1895C(v11, v12);

    v14 = *(v0 + 8);

    v14();
  }

  else
  {
    __break(1u);
  }
}

void sub_25AFCBC70(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v22 = v2;
  v23 = v1;
  v24 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26530, &qword_25B012DC8);
  MEMORY[0x25F85D310](v20);
  v5 = *(v20[0] + 16);

  if (v5)
  {
    v24 = v3;
    v25 = v2;
    v26 = v3;
    v22 = v2;
    v23 = v1;
    sub_25AF40234(&v25, v20);

    sub_25AF25FC4(&v26, v20, &qword_27FA26368, &unk_25B012608);
    MEMORY[0x25F85D310](&v21, v4);
    v6 = v21;
    if (*(v21 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = *(v6 + 2);
        if (v7)
        {
LABEL_5:
          v8 = v7 - 1;
          v9 = &v6[40 * v7];
          v10 = *(v9 - 1);
          v11 = *v9;
          v12 = *(v9 + 1);
          v13 = *(v9 + 2);
          v14 = v9[24];
          *(v6 + 2) = v8;
          sub_25AFCE338(v10, v11, v12, v13, v14);
          v20[0] = v2;
          v20[1] = v1;
          v20[2] = v3;
          sub_25B005524();
          sub_25AFCE380(&v25);

          sub_25AF2602C(&v26, &qword_27FA26368, &unk_25B012608);
          return;
        }

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    v6 = sub_25AFCDBE0(v6);
    v7 = *(v6 + 2);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (qword_27FA23800 != -1)
  {
LABEL_13:
    swift_once();
  }

  v15 = sub_25B0044C4();
  __swift_project_value_buffer(v15, qword_27FA30C28);
  v16 = sub_25B0044B4();
  v17 = sub_25B005CB4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, &v22);
    _os_log_impl(&dword_25AF0B000, v16, v17, "%s tried to go back when the navigation path is already empty. This indicates programmer error.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x25F85EC30](v19, -1, -1);
    MEMORY[0x25F85EC30](v18, -1, -1);
  }
}

unint64_t sub_25AFCBEF0()
{
  result = qword_27FA26410;
  if (!qword_27FA26410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263E8, &qword_25B012BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263F8, &qword_25B012BB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26418, &qword_25B012BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263F0, &qword_25B012BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26420, &qword_25B012BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26408, &qword_25B012BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26428, &qword_25B012BE0);
    sub_25AF0F274(&qword_27FA26430, &qword_27FA26408, &qword_25B012BC8, MEMORY[0x277CE04B0]);
    sub_25AFCEF88(&qword_27FA26438, &qword_27FA26428, &qword_25B012BE0, MEMORY[0x277D84F50]);
    swift_getOpaqueTypeConformance2();
    sub_25AFCC11C();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_25AFCC1A0(OpaqueTypeConformance2, v1, v2);
    sub_25AFCC1F4();
    swift_getOpaqueTypeConformance2();
    sub_25AFCC3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26410);
  }

  return result;
}

unint64_t sub_25AFCC11C()
{
  result = qword_27FA26440;
  if (!qword_27FA26440)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26420, &qword_25B012BD8);
    sub_25AF2C80C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26440);
  }

  return result;
}

unint64_t sub_25AFCC1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26448;
  if (!qword_27FA26448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26448);
  }

  return result;
}

unint64_t sub_25AFCC1F4()
{
  result = qword_27FA26450;
  if (!qword_27FA26450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26418, &qword_25B012BD0);
    sub_25AFCC2AC();
    sub_25AF0F274(&qword_27FA26350, &qword_27FA26358, &qword_25B0125F8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26450);
  }

  return result;
}

unint64_t sub_25AFCC2AC()
{
  result = qword_27FA26458;
  if (!qword_27FA26458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26460, &qword_25B012BE8);
    sub_25AFCC394(&qword_27FA26468, type metadata accessor for ControlConfigurationView, &unk_25B00AA9C);
    sub_25AF0F274(&qword_27FA25AD0, &qword_27FA25AD8, &qword_25B0125F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26458);
  }

  return result;
}

uint64_t sub_25AFCC394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25AFCC3DC()
{
  result = qword_27FA26470;
  if (!qword_27FA26470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263D0, &qword_25B012B90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263C8, &qword_25B012B88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26418, &qword_25B012BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263F8, &qword_25B012BB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26478, &qword_25B012BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263F0, &qword_25B012BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26420, &qword_25B012BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26408, &qword_25B012BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26428, &qword_25B012BE0);
    sub_25AF0F274(&qword_27FA26430, &qword_27FA26408, &qword_25B012BC8, MEMORY[0x277CE04B0]);
    sub_25AFCEF88(&qword_27FA26438, &qword_27FA26428, &qword_25B012BE0, MEMORY[0x277D84F50]);
    swift_getOpaqueTypeConformance2();
    sub_25AFCC11C();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_25AFC51C0(OpaqueTypeConformance2, v2, v3);
    sub_25AFCC6B4();
    v6 = swift_getOpaqueTypeConformance2();
    sub_25AFCC1A0(v6, v4, v5);
    sub_25AFCC1F4();
    swift_getOpaqueTypeConformance2();
    sub_25AFCC394(&qword_27FA23818, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26470);
  }

  return result;
}

unint64_t sub_25AFCC6B4()
{
  result = qword_27FA26480;
  if (!qword_27FA26480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26478, &qword_25B012BF0);
    sub_25AFCC740();
    sub_25AFCC1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26480);
  }

  return result;
}

unint64_t sub_25AFCC740()
{
  result = qword_27FA26488;
  if (!qword_27FA26488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26490, &qword_25B012BF8);
    v3 = sub_25AFCC7CC();
    sub_25AFCCBA8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26488);
  }

  return result;
}

unint64_t sub_25AFCC7CC()
{
  result = qword_27FA26498;
  if (!qword_27FA26498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264A0, &qword_25B012C00);
    sub_25AFCC850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26498);
  }

  return result;
}

unint64_t sub_25AFCC850()
{
  result = qword_27FA264A8;
  if (!qword_27FA264A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264B0, &qword_25B012C08);
    sub_25AFCC920();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264C8, &qword_25B012C18);
    sub_25AFCC9E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA264A8);
  }

  return result;
}

unint64_t sub_25AFCC920()
{
  result = qword_27FA264B8;
  if (!qword_27FA264B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264C0, &qword_25B012C10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264C8, &qword_25B012C18);
    sub_25AFCC9E8();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_25AFC50BC(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA264B8);
  }

  return result;
}

unint64_t sub_25AFCC9E8()
{
  result = qword_27FA264D0;
  if (!qword_27FA264D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264C8, &qword_25B012C18);
    sub_25AFCCAA0();
    sub_25AF0F274(&qword_27FA26350, &qword_27FA26358, &qword_25B0125F8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA264D0);
  }

  return result;
}

unint64_t sub_25AFCCAA0()
{
  result = qword_27FA264D8;
  if (!qword_27FA264D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264E0, &qword_25B012C20);
    sub_25AFCC394(&qword_27FA264E8, type metadata accessor for SelectAvailableControlView.AppControlsView, &unk_25B012EF0);
    sub_25AF0F274(&qword_27FA25AD0, &qword_27FA25AD8, &qword_25B0125F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA264D8);
  }

  return result;
}

unint64_t sub_25AFCCBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA264F0;
  if (!qword_27FA264F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA264F0);
  }

  return result;
}

void sub_25AFCCC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_25AFCCCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_25AFCCD04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AFCCD44()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25AF18ADC;

  return sub_25AFCBABC(v0 + 16);
}

uint64_t sub_25AFCCDF8()
{

  sub_25AF241CC(*(v0 + 72), *(v0 + 80));
  sub_25AF241CC(*(v0 + 88), *(v0 + 96));
  v1 = *(v0 + 104);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

id sub_25AFCCE90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = v2[6];
  v17 = v2[5];
  v18 = v5;
  v6 = v2[8];
  v19 = v2[7];
  v20 = v6;
  v7 = v2[2];
  v13 = v2[1];
  v14 = v7;
  v8 = v2[4];
  v15 = v2[3];
  v16 = v8;
  v10 = v3;
  v11 = *(a1 + 8);
  v12 = v4;
  return sub_25AFCAE18(&v10, a2);
}

uint64_t sub_25AFCCF1C(uint64_t a1)
{
  v2 = sub_25B004844();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_25B0049C4();
}

void *sub_25AFCD008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_25AF63C5C(a1, a2, a3);
  result = sub_25B004B24();
  *a4 = v6;
  return result;
}

void *sub_25AFCD078@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_25AFCD0E8(a2, a3, a4);
  result = sub_25B004B24();
  *a1 = v6;
  return result;
}

unint64_t sub_25AFCD0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26508;
  if (!qword_27FA26508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26508);
  }

  return result;
}

char *sub_25AFCD13C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26648, &unk_25B012FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25AFCD240(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26560, &unk_25B015AC0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25AFCD344(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA256A8, &unk_25B012E10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25AFCD46C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B00, &qword_25B0091B0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25AFCD594(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA256D8, &qword_25B00F178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25AFCD700(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_25AFCD834(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA23B30, qword_25B0091D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AFCD958(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26568, &qword_25B012E08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25AFCDA5C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25AFCDC20(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  if ((v6 & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      v19 = v3 == v8 && v2 == v7;
      if (v19 || (sub_25B006174() & 1) != 0)
      {
        if (v5 == v10 && v4 == v9)
        {
          sub_25AFCE3D4(v8, v7, v5, v4, 0);
          sub_25AFCE3D4(v3, v2, v5, v4, 0);
          sub_25AFCE338(v3, v2, v5, v4, 0);
          sub_25AFCE338(v8, v7, v5, v4, 0);
          v12 = 1;
          return v12 & 1;
        }

        v21 = sub_25B006174();
        sub_25AFCE3D4(v8, v7, v10, v9, 0);
        sub_25AFCE3D4(v3, v2, v5, v4, 0);
        sub_25AFCE338(v3, v2, v5, v4, 0);
        sub_25AFCE338(v8, v7, v10, v9, 0);
        if (v21)
        {
          v12 = 1;
          return v12 & 1;
        }

        goto LABEL_7;
      }

      sub_25AFCE3D4(v8, v7, v10, v9, 0);
      sub_25AFCE3D4(v3, v2, v5, v4, 0);
      sub_25AFCE338(v3, v2, v5, v4, 0);
      v13 = v8;
      v14 = v7;
      v15 = v10;
      v16 = v9;
      v17 = 0;
LABEL_6:
      sub_25AFCE338(v13, v14, v15, v16, v17);
LABEL_7:
      v12 = 0;
      return v12 & 1;
    }

LABEL_5:
    sub_25AFCE3D4(*a2, a2[1], v10, v9, v11);
    sub_25AFCE3D4(v3, v2, v5, v4, v6);
    sub_25AFCE338(v3, v2, v5, v4, v6);
    v13 = v8;
    v14 = v7;
    v15 = v10;
    v16 = v9;
    v17 = v11;
    goto LABEL_6;
  }

  if ((a2[4] & 1) == 0)
  {
    goto LABEL_5;
  }

  v23[0] = *a1;
  v23[1] = v2;
  v23[2] = v5;
  v23[3] = v4;
  v22[0] = v8;
  v22[1] = v7;
  v22[2] = v10;
  v22[3] = v9;
  sub_25AFCE3D4(v8, v7, v10, v9, 1);
  sub_25AFCE3D4(v3, v2, v5, v4, 1);
  sub_25AFCE3D4(v8, v7, v10, v9, 1);
  sub_25AFCE3D4(v3, v2, v5, v4, 1);
  v12 = _s17NanoControlCenter06GlanceB2IDV2eeoiySbAC_ACtFZ_0(v23, v22);
  sub_25AFCE338(v3, v2, v5, v4, 1);
  sub_25AFCE338(v8, v7, v10, v9, 1);
  sub_25AFCE338(v8, v7, v10, v9, 1);
  sub_25AFCE338(v3, v2, v5, v4, 1);
  return v12 & 1;
}

uint64_t sub_25AFCDF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    if (!a6)
    {
      v16 = 0;
      return v16 & 1;
    }

    goto LABEL_12;
  }

  if (!a6)
  {
    sub_25AFCCC70(a1, a2, a3, a4);
LABEL_12:
    sub_25AFCCC70(a5, a6, a7, a8);
    sub_25AFCCCB4(a1, a2, a3, a4);
    v17 = a5;
    v18 = a6;
    v19 = a7;
    v20 = a8;
LABEL_13:
    sub_25AFCCCB4(v17, v18, v19, v20);
    v16 = 1;
    return v16 & 1;
  }

  if ((a1 != a5 || a2 != a6) && (sub_25B006174() & 1) == 0)
  {
    sub_25AFCCC70(a1, a2, a3, a4);
    sub_25AFCCC70(a1, a2, a3, a4);
    sub_25AFCCC70(a5, a6, a7, a8);

    v17 = a1;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    goto LABEL_13;
  }

  if (a3 == a7 && a4 == a8)
  {
    sub_25AFCCC70(a1, a2, a3, a8);
    sub_25AFCCC70(a1, a2, a3, a8);
    sub_25AFCCC70(a5, a6, a3, a8);

    sub_25AFCCCB4(a1, a2, a3, a8);
    v16 = 0;
  }

  else
  {
    v21 = sub_25B006174();
    sub_25AFCCC70(a1, a2, a3, a4);
    sub_25AFCCC70(a1, a2, a3, a4);
    sub_25AFCCC70(a5, a6, a7, a8);

    sub_25AFCCCB4(a1, a2, a3, a4);
    v16 = v21 ^ 1;
  }

  return v16 & 1;
}

void sub_25AFCE1D8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v2[12];
  v7 = v2[13];
  v8 = v2[14];
  v9 = v2[15];
  v2[12] = v1;
  v2[13] = v3;
  v2[14] = v4;
  v2[15] = v5;
  sub_25AFCCC70(v1, v3, v4, v5);
  sub_25AFCCCB4(v6, v7, v8, v9);
}

uint64_t objectdestroyTm_5()
{

  sub_25AF241CC(*(v0 + 72), *(v0 + 80));
  sub_25AF241CC(*(v0 + 88), *(v0 + 96));
  v1 = *(v0 + 104);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_25AFCE338(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

id sub_25AFCE3D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_25AFCE44C()
{

  v1 = *(v0 + 72);
  if (v1 <= 0xFD)
  {
    sub_25AF18128(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_25AFCE538(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_25AFCE594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25AFCE618(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24240, &unk_25B00AFA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25AFCE6E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24240, &unk_25B00AFA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25AFCE798(uint64_t a1)
{
  sub_25AFCE994(319, &qword_27FA24258, &qword_27FA23D78, &qword_25B009D80, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_25AFCE944();
    if (v2 <= 0x3F)
    {
      sub_25AFCE994(319, &qword_27FA26580, &qword_27FA26520, &qword_25B012D78, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_25AFCE9F8(319, &qword_27FA242F0, type metadata accessor for CHSControlVisibility, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_25AFCE9F8(319, &qword_27FA24268, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25AFCE944()
{
  if (!qword_27FA24260)
  {
    v0 = sub_25B005554();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA24260);
    }
  }
}

void sub_25AFCE994(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_25AFCE9F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25AFCEA60()
{
  result = qword_27FA26588;
  if (!qword_27FA26588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26590, &qword_25B012EA0);
    sub_25AFCBEF0();
    sub_25AF0F274(&qword_27FA26430, &qword_27FA26408, &qword_25B012BC8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26588);
  }

  return result;
}

uint64_t sub_25AFCEB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_100Tm()
{
  v1 = type metadata accessor for SelectAvailableControlView.AppControlsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 88);
  if (v6 <= 0xFD)
  {
    sub_25AF18128(*(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), v6);
  }

  if (*(v5 + 120) != 1)
  {
  }

  v7 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24280, &unk_25B012DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_25B004844();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AFCED60(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SelectAvailableControlView.AppControlsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_25AFCEDEC()
{
  result = qword_27FA265D0;
  if (!qword_27FA265D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA265A0, &qword_25B012F48);
    sub_25AFCEE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA265D0);
  }

  return result;
}

unint64_t sub_25AFCEE78()
{
  result = qword_27FA265D8;
  if (!qword_27FA265D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA265C0, &qword_25B012F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26598, &qword_25B012F40);
    v1 = sub_25AF0F274(&qword_27FA265B8, &qword_27FA26598, &qword_25B012F40, MEMORY[0x277CDE5A0]);
    sub_25AF2ECCC(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA265D8);
  }

  return result;
}

uint64_t sub_25AFCEF88(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_25AFC1A9C(v6, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25AFCEFF0(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_25AFCF0B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_114Tm()
{
  v1 = (type metadata accessor for ButtonAndLabel.ParentState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v1[7];
  v6 = sub_25B004844();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AFCF244(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ButtonAndLabel.ParentState(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t objectdestroy_117Tm()
{
  v1 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  v7 = sub_25B004844();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_25AFCF42C()
{
  result = qword_27FA26630;
  if (!qword_27FA26630)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA249D8, qword_25B00C1B0);
    sub_25AFC83F0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26630);
  }

  return result;
}

unint64_t sub_25AFCF4B4()
{
  result = qword_27FA26638;
  if (!qword_27FA26638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA265E8, &unk_25B012F68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA265A0, &qword_25B012F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA265C8, &qword_25B012F60);
    sub_25AFCEDEC();
    sub_25AFCEF88(&qword_27FA265E0, &qword_27FA265C8, &qword_25B012F60, MEMORY[0x277D83968]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_25AF3FE24(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26638);
  }

  return result;
}

void sub_25AFCF648(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = v3;
  v7 = a3[1];
  v61 = *a3;
  v62 = v7;
  v8 = *(a3 + 32);
  v63 = *(a3 + 32);
  v9 = *(a3 + 1);
  v45 = *a3;
  v10 = *(a3 + 2);
  v11 = *(a3 + 3);
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v12 = sub_25B0044C4();
  __swift_project_value_buffer(v12, qword_27FA30C28);
  sub_25AF196CC(&v61, &v56);
  v13 = sub_25B0044B4();
  v14 = sub_25B005C94();
  sub_25AF1C414(&v61);
  if (os_log_type_enabled(v13, v14))
  {
    v48 = v3;
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50[0] = v43;
    *v15 = 136315394;
    *(v15 + 4) = sub_25AF8E7DC(0xD00000000000001DLL, 0x800000025B01A430, v50);
    *(v15 + 12) = 2080;
    v56 = v61;
    v57 = v62;
    LOBYTE(v58) = v63;
    sub_25AF196CC(&v61, &v51);
    v16 = sub_25AFD3228();
    v46 = a1;
    v17 = v9;
    v18 = a2;
    v19 = v8;
    v20 = v10;
    v21 = v11;
    v23 = v22;
    sub_25AF18128(v56, *(&v56 + 1), v57, *(&v57 + 1), v58);
    v24 = sub_25AF8E7DC(v16, v23, v50);
    v11 = v21;
    v10 = v20;
    v8 = v19;
    a2 = v18;
    v9 = v17;
    a1 = v46;

    *(v15 + 14) = v24;
    _os_log_impl(&dword_25AF0B000, v13, v14, "%s source: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v43, -1, -1);
    v25 = v15;
    v4 = v48;
    MEMORY[0x25F85EC30](v25, -1, -1);
  }

  if (!v4[2] && a2)
  {
    v26 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v26 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      swift_getKeyPath();
      v27 = OBJC_IVAR____TtC17NanoControlCenter15StatusTextModel___observationRegistrar;
      *&v56 = v4;
      sub_25AFD1304();
      v49 = v4;

      v28 = v4 + v27;
      sub_25B004234();

      v47 = a1;
      if (!v4[11])
      {
        v34 = 1;
        goto LABEL_21;
      }

      v44 = v11;
      v29 = v4;
      v31 = v4[12];
      v30 = v4[13];
      v33 = v29[14];
      v32 = v29[15];
      v28 = *(v29 + 128);
      if (v28 <= 0xFD)
      {
        if (v8 <= 0xFD)
        {
          *&v56 = v31;
          *(&v56 + 1) = v30;
          *&v57 = v33;
          *(&v57 + 1) = v32;
          LOBYTE(v58) = v28;
          v51 = v45;
          v52 = v9;
          v53 = v10;
          v54 = v44;
          v55 = v8;
          sub_25AF196CC(&v61, v50);
          sub_25AF1D7EC(v31, v30, v33, v32, v28);
          sub_25AF1D7EC(v31, v30, v33, v32, v28);
          sub_25AF181DC(v31, v30, v33, v32, v28);
          v34 = sub_25AFD33F0(&v56, &v51);
          sub_25AF18128(v51, v52, v53, v54, v55);
          sub_25AF18128(v56, *(&v56 + 1), v57, *(&v57 + 1), v58);
          sub_25AF18128(v31, v30, v33, v32, v28);
          v35 = v33;
          v11 = v44;
          sub_25AF231D0(v31, v30, v35, v32, v28);
          goto LABEL_20;
        }

        sub_25AF196CC(&v61, &v56);
        sub_25AF1D7EC(v31, v30, v33, v32, v28);
        sub_25AF1D7EC(v31, v30, v33, v32, v28);
        sub_25AF18128(v31, v30, v33, v32, v28);
      }

      else
      {
        if (v8 > 0xFD)
        {
          sub_25AF196CC(&v61, &v56);
          sub_25AF1D7EC(v31, v30, v33, v32, v28);
          sub_25AF231D0(v31, v30, v33, v32, v28);
          v34 = 1;
          v11 = v44;
LABEL_20:
          v4 = v49;
LABEL_21:
          swift_beginAccess();
          sub_25AF196CC(&v61, &v56);
          v36 = sub_25AFD0C88(v4 + 8, &v61);
          v37 = *(v4[8] + 16);
          if (v37 < v36)
          {
            __break(1u);
          }

          else
          {
            sub_25AF69174(v36, v37);
            swift_endAccess();
            if (v34)
            {
              v38 = v45;
              *&v56 = v47;
              *(&v56 + 1) = a2;
              *&v57 = v45;
              *(&v57 + 1) = v9;
              v58 = v10;
              v59 = v11;
              v60 = v8;
              sub_25AF196CC(&v61, &v51);

              sub_25AF1D7EC(v45, v9, v10, v11, v8);
              sub_25AFCFE54(&v56);
              *&v56 = v47;
              *(&v56 + 1) = a2;
              *&v57 = v45;
              *(&v57 + 1) = v9;
              v58 = v10;
              v59 = v11;
              v60 = v8;
              sub_25AFD085C(&v56);
LABEL_28:

              sub_25AF231D0(v38, v9, v10, v11, v8);
              return;
            }

            swift_beginAccess();
            v28 = v4[8];
            sub_25AF196CC(&v61, &v56);

            sub_25AF1D7EC(v45, v9, v10, v11, v8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v4[8] = v28;
            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_25:
              v41 = *(v28 + 2);
              v40 = *(v28 + 3);
              if (v41 >= v40 >> 1)
              {
                v28 = sub_25AFCD834((v40 > 1), v41 + 1, 1, v28);
              }

              *(v28 + 2) = v41 + 1;
              v42 = &v28[56 * v41];
              *(v42 + 4) = v47;
              *(v42 + 5) = a2;
              v38 = v45;
              *(v42 + 6) = v45;
              *(v42 + 7) = v9;
              *(v42 + 8) = v10;
              *(v42 + 9) = v11;
              v42[80] = v8;
              v49[8] = v28;
              swift_endAccess();
              goto LABEL_28;
            }
          }

          v28 = sub_25AFCD834(0, *(v28 + 2) + 1, 1, v28);
          v4[8] = v28;
          goto LABEL_25;
        }

        sub_25AF196CC(&v61, &v56);
        sub_25AF1D7EC(v31, v30, v33, v32, v28);
      }

      sub_25AF231D0(v31, v30, v33, v32, v28);
      v11 = v44;
      sub_25AF231D0(v45, v9, v10, v44, v8);
      v34 = 0;
      goto LABEL_20;
    }
  }
}

void sub_25AFCFCD0(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_25AFD1304();
  sub_25B004234();

  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v9 = *(v1 + 128);
  *(a1 + 48) = v9;
  sub_25AFD1930(v3, v4, v5, v6, v7, v8, v9);
}

void sub_25AFCFD64(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFD1304();
  sub_25B004234();

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  v8 = *(v3 + 112);
  v9 = *(v3 + 120);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v10 = *(v3 + 128);
  *(a2 + 48) = v10;
  sub_25AFD1930(v4, v5, v6, v7, v8, v9, v10);
}

void sub_25AFCFDF8(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *a1;
  *(&v8 + 1) = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  sub_25AFD1930(v8, v2, v3, v4, v5, v6, v7);
  sub_25AFCFE54(&v8);
}

void sub_25AFCFE54(__int128 *a1)
{
  v2 = a1[1];
  v15 = *a1;
  v16 = v2;
  v17 = a1[2];
  v18 = *(a1 + 48);
  v3 = *(v1 + 96);
  v19[0] = *(v1 + 80);
  v19[1] = v3;
  v19[2] = *(v1 + 112);
  v20 = *(v1 + 128);
  sub_25AFD183C(v19, v14);
  v4 = sub_25AFD15D0(v19, &v15);
  sub_25AFD18AC(v19);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14[0] = v1;
    sub_25AFD1304();
    sub_25B004224();
    sub_25AFD18AC(&v15);
  }

  else
  {
    v6 = *(v1 + 80);
    v7 = *(v1 + 88);
    v8 = *(v1 + 96);
    v9 = *(v1 + 104);
    v10 = *(v1 + 112);
    v11 = *(v1 + 120);
    v12 = v16;
    *(v1 + 80) = v15;
    *(v1 + 96) = v12;
    *(v1 + 112) = v17;
    v13 = *(v1 + 128);
    *(v1 + 128) = v18;
    sub_25AFD1288(v6, v7, v8, v9, v10, v11, v13);
  }
}

void sub_25AFCFFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  v7 = *(a1 + 120);
  v8 = *(a2 + 16);
  *(a1 + 80) = *a2;
  *(a1 + 96) = v8;
  *(a1 + 112) = *(a2 + 32);
  v9 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 48);
  sub_25AFD183C(a2, v10);
  sub_25AFD1288(v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_25AFD0048(uint64_t a1, uint64_t a2)
{
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v3 = *(a2 + 32);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v8 <= 0xFD)
  {
    if (v3 <= 0xFD)
    {
      v21 = v5;
      v22 = v4;
      v23 = v7;
      v24 = v6;
      v25 = v8;
      v16 = v11;
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = v3;
      sub_25AF1D7EC(v5, v4, v7, v6, v8);
      sub_25AF196CC(a2, v15);
      sub_25AF1D7EC(v5, v4, v7, v6, v8);
      sub_25AF181DC(v5, v4, v7, v6, v8);
      v9 = sub_25AFD33F0(&v21, &v16);
      sub_25AF18128(v16, v17, v18, v19, v20);
      sub_25AF18128(v21, v22, v23, v24, v25);
      sub_25AF18128(v5, v4, v7, v6, v8);
      sub_25AF231D0(v5, v4, v7, v6, v8);
      goto LABEL_11;
    }

    sub_25AF1D7EC(v5, v4, v7, v6, v8);
    sub_25AF196CC(a2, &v21);
    sub_25AF1D7EC(v5, v4, v7, v6, v8);
    sub_25AF18128(v5, v4, v7, v6, v8);
    goto LABEL_9;
  }

  sub_25AF1D7EC(v5, v4, v7, v6, v8);
  if (v3 <= 0xFD)
  {
    sub_25AF196CC(a2, &v21);
LABEL_9:
    sub_25AF231D0(v5, v4, v7, v6, v8);
    sub_25AF231D0(v11, v12, v13, v14, v3);
    v9 = 0;
    goto LABEL_11;
  }

  sub_25AF196CC(a2, &v21);
  sub_25AF231D0(v5, v4, v7, v6, v8);
  v9 = 1;
LABEL_11:

  return v9 & 1;
}

void sub_25AFD02DC(uint64_t *a1)
{
  v2 = a1[5];
  v3 = *(a1 + 48);
  v15 = *a1;
  v14 = *(a1 + 1);
  v16 = v14;
  v17 = *(a1 + 3);
  v18 = v2;
  v19 = v3;
  sub_25AFD0690(&v15, &v20);
  v4 = v21;
  if (v21)
  {
    v5 = v20;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    if (!v14)
    {
      swift_beginAccess();
      v11 = *(v1 + 64);
      v12 = *(v11 + 16);
      if (!v12)
      {
        __break(1u);
        return;
      }

      sub_25AF15B20(v11, v11 + 32, 1, (2 * v12) | 1);
      *(v1 + 64) = v13;
    }

    v20 = v5;
    v21 = v4;
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v26 = v10;
    sub_25AFD085C(&v20);
    sub_25AFD1288(v5, v4, v6, v7, v8, v9, v10);
  }
}

uint64_t sub_25AFD03F4()
{
  sub_25AF231D0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_25AFD1288(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
  v1 = OBJC_IVAR____TtC17NanoControlCenter15StatusTextModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StatusTextModel(uint64_t a1)
{
  result = qword_27FA26658;
  if (!qword_27FA26658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AFD0518(uint64_t a1)
{
  result = sub_25B004274();
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

uint64_t sub_25AFD05E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_25AFD062C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_25AFD0690(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v6 = a1[4];
  v5 = a1[5];
  v19 = a1[2];
  v20 = *a1;
  v23 = v4;
  v24 = *a1;
  v21 = a1[3];
  v22 = v19;
  v7 = *(a1 + 48);
  v17 = v6;
  v18 = v21;
  v8 = v5;
  v9 = v7;
  if (!v4)
  {
    swift_beginAccess();
    v10 = *(v25 + 64);
    if (!*(v10 + 16))
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      sub_25AFCFE54(&v26);
      v16 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v8 = 0;
      v9 = 0;
      goto LABEL_5;
    }

    v23 = *(v10 + 40);
    v24 = *(v10 + 32);
    v11 = *(v10 + 48);
    v12 = *(v10 + 56);
    v6 = *(v10 + 64);
    v8 = *(v10 + 72);
    v9 = *(v10 + 80);

    v21 = v12;
    v22 = v11;
    sub_25AF1D7EC(v11, v12, v6, v8, v9);
    v4 = 0;
  }

  v13 = v23;
  *&v26 = v24;
  *(&v26 + 1) = v23;
  v15 = v21;
  v14 = v22;
  *&v27 = v22;
  *(&v27 + 1) = v21;
  *&v28 = v6;
  *(&v28 + 1) = v8;
  v29 = v9;
  sub_25AFD1930(v24, v23, v22, v21, v6, v8, v9);
  sub_25AFD1930(v24, v23, v22, v21, v6, v8, v9);
  sub_25AFD1930(v20, v4, v19, v18, v17, v5, v7);
  sub_25AFCFE54(&v26);
  v16 = v24;
  sub_25AFD1288(v24, v23, v22, v21, v6, v8, v9);
LABEL_5:
  *a2 = v16;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
}

void sub_25AFD085C(void *a1)
{
  v2 = sub_25B0059A4();
  v3 = *(v1 + 72);
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = v2 / 30.0;
  if (v4 <= 1.0)
  {
    v4 = 1.0;
  }

  v5 = v4 + 2.0;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_25AFD14BC;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_25AFD0C20;
  v11[3] = &block_descriptor_3;
  v8 = _Block_copy(v11);

  v9 = [v6 scheduledTimerWithTimeInterval:0 repeats:v8 block:v5];
  _Block_release(v8);
  v10 = *(v1 + 72);
  *(v1 + 72) = v9;
}

double sub_25AFD09B0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_25B005B64();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_25B005B34();

  v7 = sub_25B005B24();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_25AF6D0D4(0, 0, v5, &unk_25B013228, v8);

  return result;
}

uint64_t sub_25AFD0AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_25B005B34();
  v4[7] = sub_25B005B24();
  v6 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AFD0B6C, v6, v5);
}

uint64_t sub_25AFD0B6C()
{
  v6 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_25AFD02DC(v4);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_25AFD0C20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_25AFD0C88(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  result = sub_25AFD135C(*a1, a2);
  v9 = v2;
  if (v2)
  {
    v10 = a2;
LABEL_8:
    sub_25AF1C414(v10);
    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);
    v10 = a2;
    goto LABEL_8;
  }

  v3 = result;
  v66 = a2;
  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v13 = (v6 + 16);
    v12 = *(v6 + 16);
    if (v11 == v12)
    {
LABEL_7:
      v10 = v66;
      goto LABEL_8;
    }

    v14 = 56 * result + 136;
    v52 = a1;
    while (v11 < v12)
    {
      v78 = v11;
      v70 = v14;
      v71 = v3;
      v67 = v6;
      v17 = (v6 + v14);
      v19 = *(v6 + v14 - 48);
      v18 = *(v6 + v14 - 40);
      v20 = *(v6 + v14 - 32);
      v21 = *(v6 + v14 - 24);
      v22 = *(v6 + v14 - 16);
      v23 = *(v17 - 1);
      v24 = *v17;
      v72[0] = v19;
      v72[1] = v18;
      v73 = v20;
      v74 = v21;
      v75 = v22;
      v76 = v23;
      v77 = v24;

      sub_25AF1D7EC(v20, v21, v22, v23, v24);
      v25 = v9;
      LOBYTE(v21) = sub_25AFD0048(v72, v66);
      v26 = v73;
      v27 = v74;
      v28 = v75;
      v29 = v76;
      v30 = v77;

      v31 = v30;
      v9 = v25;
      result = sub_25AF231D0(v26, v27, v28, v29, v31);
      if (v21)
      {
        v15 = v70;
        v3 = v71;
        v6 = v67;
        v16 = v78;
      }

      else
      {
        v15 = v70;
        v32 = v71;
        v16 = v78;
        v6 = v67;
        if (v78 != v71)
        {
          if ((v71 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          if (v71 >= *v13)
          {
            goto LABEL_26;
          }

          if (v78 >= *v13)
          {
            goto LABEL_27;
          }

          v60 = 56 * v71;
          v33 = v67 + 32 + 56 * v71;
          v56 = *(v33 + 8);
          v57 = *v33;
          v35 = *(v33 + 16);
          v34 = *(v33 + 24);
          v36 = *(v33 + 32);
          v37 = *(v33 + 40);
          v63 = *(v33 + 48);
          v59 = *(v17 - 6);
          v61 = *(v17 - 5);
          v38 = *(v17 - 4);
          v39 = *(v17 - 3);
          v40 = *(v17 - 2);
          v41 = *(v17 - 1);
          v64 = v40;
          v42 = *(v67 + v70);

          v55 = v34;
          v53 = v37;
          v54 = v36;
          sub_25AF1D7EC(v35, v34, v36, v37, v63);

          v58 = v38;
          sub_25AF1D7EC(v38, v39, v64, v41, v42);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_25AFCDBCC(v67);
            v6 = result;
          }

          if (v71 >= *(v6 + 16))
          {
            goto LABEL_28;
          }

          v43 = v6 + v60;
          v44 = *(v6 + v60 + 48);
          v46 = *(v6 + v60 + 56);
          v45 = *(v6 + v60 + 64);
          v68 = *(v6 + v60 + 72);
          *(v43 + 32) = v59;
          *(v43 + 40) = v61;
          *(v43 + 48) = v58;
          *(v43 + 56) = v39;
          *(v43 + 64) = v64;
          *(v43 + 72) = v41;
          v47 = *(v6 + v60 + 80);
          *(v43 + 80) = v42;

          v48 = v45;
          v16 = v78;
          result = sub_25AF231D0(v44, v46, v48, v68, v47);
          if (v16 >= *(v6 + 16))
          {
            goto LABEL_29;
          }

          v49 = (v6 + v70);
          v69 = *(v6 + v70 - 32);
          v50 = *(v6 + v70 - 16);
          v65 = *(v6 + v70 - 24);
          v62 = *(v6 + v70 - 8);
          *(v49 - 6) = v57;
          *(v49 - 5) = v56;
          *(v49 - 4) = v35;
          *(v49 - 3) = v55;
          *(v49 - 2) = v54;
          *(v49 - 1) = v53;
          v51 = *(v6 + v70);
          *v49 = v63;

          v15 = v70;
          result = sub_25AF231D0(v69, v65, v50, v62, v51);
          *v52 = v6;
          v9 = 0;
          v32 = v71;
        }

        v3 = v32 + 1;
      }

      v11 = v16 + 1;
      v13 = (v6 + 16);
      v12 = *(v6 + 16);
      v14 = v15 + 56;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_25AFD1018(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (v12 = sub_25B006174(), result = 0, (v12 & 1) != 0))
  {
    if (v6 <= 0xFD)
    {
      if (v11 <= 0xFD)
      {
        v20 = v2;
        v21 = v4;
        v22 = v3;
        v23 = v5;
        v24 = v6;
        v15 = v8;
        v16 = v7;
        v17 = v10;
        v18 = v9;
        v19 = v11;
        sub_25AF1D7EC(v2, v4, v3, v5, v6);
        sub_25AF1D7EC(v8, v7, v10, v9, v11);
        sub_25AF1D7EC(v2, v4, v3, v5, v6);
        sub_25AF181DC(v2, v4, v3, v5, v6);
        v14 = sub_25AFD33F0(&v20, &v15);
        sub_25AF18128(v15, v16, v17, v18, v19);
        sub_25AF18128(v20, v21, v22, v23, v24);
        sub_25AF18128(v2, v4, v3, v5, v6);
        sub_25AF231D0(v2, v4, v3, v5, v6);
        return (v14 & 1) != 0;
      }

      sub_25AF1D7EC(v2, v4, v3, v5, v6);
      sub_25AF1D7EC(v8, v7, v10, v9, v11);
      sub_25AF1D7EC(v2, v4, v3, v5, v6);
      sub_25AF18128(v2, v4, v3, v5, v6);
    }

    else
    {
      sub_25AF1D7EC(v2, v4, v3, v5, v6);
      sub_25AF1D7EC(v8, v7, v10, v9, v11);
      if (v11 > 0xFD)
      {
        sub_25AF231D0(v2, v4, v3, v5, v6);
        return 1;
      }
    }

    sub_25AF231D0(v2, v4, v3, v5, v6);
    sub_25AF231D0(v8, v7, v10, v9, v11);
    return 0;
  }

  return result;
}

void sub_25AFD1288(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a2)
  {

    sub_25AF231D0(a3, a4, a5, a6, a7);
  }
}

unint64_t sub_25AFD1304()
{
  result = qword_27FA26668;
  if (!qword_27FA26668)
  {
    type metadata accessor for StatusTextModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26668);
  }

  return result;
}

uint64_t sub_25AFD135C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v19 = *(a1 + 16);
  v4 = 0;
  if (v19)
  {
    for (i = (a1 + 80); ; i += 56)
    {
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      v20[0] = *(i - 6);
      v20[1] = v6;
      v21 = v7;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;

      sub_25AF1D7EC(v7, v8, v9, v10, v11);
      v12 = sub_25AFD0048(v20, v26);
      v13 = v21;
      v14 = v22;
      v15 = v23;
      v16 = v24;
      v17 = v25;

      sub_25AF231D0(v13, v14, v15, v16, v17);
      if (v3 || (v12 & 1) != 0)
      {
        break;
      }

      if (v19 == ++v4)
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_25AFD1484()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AFD14DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AFD151C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF18ADC;

  return sub_25AFD0AD4(a1, v4, v5, v6);
}

uint64_t sub_25AFD15D0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  v16 = *(a2 + 48);
  if (!v3)
  {
    v36 = *a1;
    if (!v11)
    {
      sub_25AFD183C(a1, v44);
      sub_25AFD183C(a2, v44);
      sub_25AFD1288(v36, 0, v6, v5, v8, v7, v9);
      v26 = 0;
      return v26 & 1;
    }

    v28 = *(a2 + 16);
    v29 = *(a2 + 24);
    v30 = *(a2 + 32);
    v32 = *(a2 + 40);
    v34 = *(a2 + 48);
    sub_25AFD183C(a1, v44);
    sub_25AFD183C(a2, v44);
    v4 = v36;
    goto LABEL_7;
  }

  v44[0] = *a1;
  v44[1] = v3;
  v45 = v6;
  v46 = v5;
  v47 = v8;
  v48 = v7;
  v49 = v9;
  if (!v11)
  {
    v28 = v13;
    v29 = v12;
    v30 = v15;
    v32 = v14;
    v34 = v16;
    sub_25AFD183C(a1, v38);
    sub_25AFD183C(a2, v38);
    sub_25AFD1930(v4, v3, v6, v5, v8, v7, v9);

    sub_25AF231D0(v6, v5, v8, v7, v9);
LABEL_7:
    sub_25AFD1288(v4, v3, v6, v5, v8, v7, v9);
    sub_25AFD1288(v10, v11, v28, v29, v30, v32, v34);
    v26 = 1;
    return v26 & 1;
  }

  v38[0] = v10;
  v38[1] = v11;
  v39 = v13;
  v40 = v12;
  v41 = v15;
  v42 = v14;
  v43 = v16;
  sub_25AFD183C(a1, v37);
  sub_25AFD183C(a2, v37);
  v35 = v4;
  sub_25AFD1930(v4, v3, v6, v5, v8, v7, v9);
  v33 = sub_25AFD1018(v44, v38);
  v17 = v39;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v31 = v9;
  v21 = v43;

  sub_25AF231D0(v17, v18, v19, v20, v21);
  v22 = v45;
  v23 = v46;
  v24 = v47;
  v25 = v48;
  LOBYTE(v19) = v49;

  sub_25AF231D0(v22, v23, v24, v25, v19);
  sub_25AFD1288(v35, v3, v6, v5, v8, v7, v31);
  v26 = !v33;
  return v26 & 1;
}

uint64_t sub_25AFD183C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26670, &unk_25B013230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AFD18AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26670, &unk_25B013230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25AFD1930(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a2)
  {

    sub_25AF1D7EC(a3, a4, a5, a6, a7);
  }
}

uint64_t sub_25AFD19A4()
{
  result = sub_25B005724();
  qword_27FA30BE8 = result;
  return result;
}

uint64_t sub_25AFD19C4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *v1;
  v47 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25590, qword_25B00A7F0);
  v46 = v7;
  if (v10 >> 6 == 1)
  {
    if ((v6 & 0xC0) == 0x40)
    {
      sub_25AF67FDC();
      sub_25AF181DC(v2, v3, v4, v5, v6);
      sub_25AF181DC(v7, v47, v9, v8, v10);
      sub_25AF181DC(v7, v47, v9, v8, v10);
      sub_25AF181DC(v2, v3, v4, v5, v6);
      v41 = v4;
      v40 = v5;
      v11 = [v7 extensionIdentity];
      v12 = [v2 extensionIdentity];
      v13 = sub_25B005DE4();

      if (v13)
      {
        v44 = v9;
        v14 = [v7 kind];
        v15 = sub_25B005934();
        v17 = v16;

        v18 = [v2 kind];
        v19 = sub_25B005934();
        v21 = v20;

        if (v15 == v19 && v17 == v21)
        {
          v22 = 1;
        }

        else
        {
          v22 = sub_25B006174();
        }

        sub_25AF18128(v2, v3, v41, v40, v6);
        sub_25AF18128(v46, v47, v44, v8, v10);

        sub_25AF18128(v46, v47, v44, v8, v10);
        sub_25AF18128(v2, v3, v41, v40, v6);
        return v22 & 1;
      }

      sub_25AF18128(v2, v3, v41, v40, v6);
      sub_25AF18128(v7, v47, v9, v8, v10);
      sub_25AF18128(v2, v3, v41, v40, v6);
      v34 = v7;
      v35 = v47;
      v36 = v9;
      v37 = v8;
      goto LABEL_30;
    }

    v42 = 1;
    v23 = swift_allocObject();
    *(v23 + 16) = v7;
    *(v23 + 24) = v47;
    *(v23 + 32) = v9;
    *(v23 + 40) = v8;
    sub_25AF181DC(v7, v47, v9, v8, v10);
    v43 = v8;

    v26 = v7;
    v25 = &off_286C51110;
    v24 = &type metadata for GlanceControlID;
  }

  else
  {
    v42 = v10 >> 6;
    v43 = v8;
    if (v10 >= 0x40)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v7;
      *(v23 + 24) = v47;
      *(v23 + 32) = v9;
      *(v23 + 40) = v8;
      *(v23 + 48) = v10 & 1;
      sub_25AF181DC(v7, v47, v9, v8, v10);
      sub_25AF18244(v7, v47, v9, v8, v10 & 1);
      v25 = &off_286C511A8;
      v24 = &type metadata for GlancePendingID;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }
  }

  v49[0] = v23;
  v49[1] = 0;
  v49[2] = 0;
  v49[3] = v24;
  v27 = v6 >> 6;
  v49[4] = v25;
  v45 = v9;
  if ((v6 >> 6))
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v2;
    *(v28 + 24) = v3;
    *(v28 + 32) = v4;
    *(v28 + 40) = v5;
    if (v27 == 1)
    {
      v29 = v4;
      v30 = &off_286C51110;
      v31 = v5;
      v32 = &type metadata for GlanceControlID;
    }

    else
    {
      *(v28 + 48) = v6 & 1;
      v29 = v4;
      v30 = &off_286C511A8;
      v31 = v5;
      v32 = &type metadata for GlancePendingID;
    }

    sub_25AF181DC(v2, v3, v29, v31, v6);
  }

  else
  {
    v31 = v5;
    v32 = (v6 >> 6);
    v28 = v6 >> 6;
    v29 = v4;
    v30 = (v6 >> 6);
  }

  v48[0] = v28;
  v48[1] = 0;
  v48[2] = 0;
  v48[3] = v32;
  v48[4] = v30;
  sub_25AF181DC(v2, v3, v29, v31, v6);
  v33 = sub_25AFD256C(v49, v48);
  sub_25AF2602C(v48, &qword_27FA266B0, &qword_25B013550);
  sub_25AF2602C(v49, &qword_27FA266B0, &qword_25B013550);
  if (v33)
  {
    sub_25AF18128(v2, v3, v29, v31, v6);
    sub_25AF18128(v46, v47, v45, v43, v10);
    v22 = 1;
    return v22 & 1;
  }

  if (!v42)
  {
    if (v6 > 0x3F)
    {
      v34 = v2;
      v35 = v3;
      v36 = v29;
      v37 = v31;
      v38 = v6;
      goto LABEL_31;
    }

    v22 = v46 == v2;
    return v22 & 1;
  }

  if (v42 != 1)
  {
    sub_25AF18128(v2, v3, v29, v31, v6);
    v34 = v46;
    v35 = v47;
    v36 = v45;
    goto LABEL_29;
  }

  if (!v27)
  {
LABEL_24:
    v34 = v46;
    v35 = v47;
    v36 = v45;
LABEL_29:
    v37 = v43;
LABEL_30:
    v38 = v10;
LABEL_31:
    sub_25AF18128(v34, v35, v36, v37, v38);
    v22 = 0;
    return v22 & 1;
  }

  if (v27 == 2)
  {
    sub_25AF18128(v2, v3, v29, v31, v6);
    goto LABEL_24;
  }

  sub_25AF18128(v2, v3, v29, v31, v6);
  result = sub_25B006164();
  __break(1u);
  return result;
}

uint64_t sub_25AFD1FEC()
{
  sub_25B005F24();

  v0 = sub_25B006124();
  MEMORY[0x25F85D7B0](v0);

  MEMORY[0x25F85D7B0](15913, 0xE200000000000000);
  MEMORY[0x25F85D7B0](0xD00000000000001BLL, 0x800000025B0198B0);
}

uint64_t sub_25AFD20B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 32);
  if (!(v3 >> 6))
  {
    MEMORY[0x25F85E0A0](0);
    return MEMORY[0x25F85E0A0](v2);
  }

  v4 = v1[1];
  v5 = v1[3];
  if (v3 >> 6 == 1)
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v4);
    if (!v5)
    {
      return sub_25B0062B4();
    }

    sub_25B0062B4();
  }

  else
  {
    MEMORY[0x25F85E0A0](2);
    if (v3)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005994();
    }

    else
    {
      MEMORY[0x25F85E0A0](0);
      sub_25B005DF4();
    }
  }

  return sub_25B005994();
}

uint64_t sub_25AFD21EC()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_25B006294();
  sub_25AFD20B0(v4);
  return sub_25B0062D4();
}

uint64_t sub_25AFD2244(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_25B006294();
  sub_25AFD20B0(v5);
  return sub_25B0062D4();
}

uint64_t sub_25AFD22AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B0062F4();
  if (!v2)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_25AFD44EC(v5, v6, v7);
    sub_25B0061A4();
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = 64;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25AFD2430(void *a1)
{
  v2 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B006314();
  if (v2 >> 6)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    if (v2 >> 6 == 1)
    {
      sub_25AFD4594(v3, v4, v5);
    }

    else
    {
      sub_25AFD4540(v3, v4, v5);
    }

    sub_25B0061C4();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_25B0061B4();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t sub_25AFD256C(uint64_t a1, uint64_t a2)
{
  sub_25AFD4278(a1, &v26);
  if (v27)
  {
    sub_25AF25F40(&v26, v29);
    sub_25AFD4278(a2, &v24);
    if (v25)
    {
      sub_25AF25F40(&v24, &v26);
      v3 = v30;
      v4 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v5 = (*(v4 + 8))(v3, v4);
      v7 = v6;
      v8 = v27;
      v9 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, v27);
      v10 = (*(v9 + 8))(v8, v9);
      v12 = v11;
      if (v7)
      {
        if (!v11)
        {
          goto LABEL_21;
        }

        if (v5 == v10 && v7 == v11)
        {
        }

        else
        {
          v14 = sub_25B006174();

          v12 = 0;
          if ((v14 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else if (v11)
      {

        v12 = 0;
LABEL_22:
        __swift_destroy_boxed_opaque_existential_0Tm(&v26);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        return v12 & 1;
      }

      v15 = v30;
      v16 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v17 = (*(v16 + 16))(v15, v16);
      v19 = v18;
      v20 = v27;
      v21 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, v27);
      if (v17 == (*(v21 + 16))(v20, v21) && v19 == v22)
      {

        v12 = 1;
        goto LABEL_22;
      }

      v12 = sub_25B006174();

LABEL_21:

      goto LABEL_22;
    }

    sub_25AF2602C(&v24, &qword_27FA266B0, &qword_25B013550);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    v12 = 0;
  }

  else
  {
    sub_25AF2602C(&v26, &qword_27FA266B0, &qword_25B013550);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_25AFD27E0(void *a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA266A0, &qword_25B013548);
  v26 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = &v19 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = a1[3];
  v19 = a1[4];
  v10 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = sub_25AF181DC(v5, v6, v7, v8, v10);
  sub_25AFD37C8(v11, v12, v13);
  v14 = sub_25B006324();
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v25 = v10;
  sub_25AFD3870(v14, v15, v16);
  v17 = v20;
  sub_25B006104();
  sub_25AF18128(v21, v22, v23, v24, v25);
  return (*(v26 + 8))(v4, v17);
}

uint64_t sub_25AFD2970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26688, &qword_25B013540);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AFD37C8(v9, v10, v11);
  v12 = sub_25B006304();
  if (!v2)
  {
    sub_25AFD381C(v12, v13, v14);
    sub_25B0060B4();
    (*(v6 + 8))(v8, v5);
    v15 = v19;
    v16 = v18[1];
    *a2 = v18[0];
    *(a2 + 16) = v16;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25AFD2AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25AFD37C8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_25AFD2B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25AFD37C8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_25AFD2B60()
{
  sub_25B006294();
  sub_25AFD20B0(v1);
  return sub_25B0062D4();
}

uint64_t sub_25AFD2BF0(uint64_t a1)
{
  sub_25B006294();
  sub_25AFD20B0(v2);
  return sub_25B0062D4();
}

BOOL sub_25AFD2C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return (sub_25AFD38C4(v7, v9) & 1) == 0;
}

BOOL sub_25AFD2CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return (sub_25AFD38C4(v9, v7) & 1) == 0;
}

uint64_t sub_25AFD2D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return sub_25AFD38C4(v7, v9) & 1;
}

uint64_t sub_25AFD2D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v9;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v10;
  sub_25AF181DC(v17, v2, v3, v4, v9);
  sub_25AF181DC(v5, v6, v7, v8, v10);
  LOBYTE(v5) = sub_25AFD33F0(&v17, &v12);
  sub_25AF18128(v12, v13, v14, v15, v16);
  sub_25AF18128(v17, v18, v19, v20, v21);
  return v5 & 1;
}

uint64_t sub_25AFD2E1C()
{
  v1 = [*v0 extensionIdentity];
  v2 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B28, &qword_25B0091D0);
  if ((*(*(v3 - 8) + 48))(&v1[v2], 1, v3))
  {
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70, &qword_25B0090A0);
  }

  v4 = sub_25B004294();
  swift_endAccess();

  return v4;
}

uint64_t sub_25AFD2F40()
{
  v1 = [*v0 kind];
  v2 = sub_25B005934();

  return v2;
}

unint64_t sub_25AFD2FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26678;
  if (!qword_27FA26678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26678);
  }

  return result;
}

unint64_t sub_25AFD3004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26680;
  if (!qword_27FA26680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26680);
  }

  return result;
}

void *sub_25AFD305C()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
  }

  else
  {
    v2 = v1;
    v3 = [v2 extensionIdentity];
    v4 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B28, &qword_25B0091D0);
    if ((*(*(v5 - 8) + 48))(&v3[v4], 1, v5))
    {
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70, &qword_25B0090A0);
    }

    v1 = sub_25B004294();
    swift_endAccess();
  }

  return v1;
}

uint64_t sub_25AFD31AC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = *v0;
    v3 = [v2 kind];
    v1 = sub_25B005934();
  }

  return v1;
}

unint64_t sub_25AFD3228()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 >> 6)
  {
    v4 = *(v0 + 8);
    v3 = *(v0 + 16);
    v5 = *(v0 + 24);
    if (v2 >> 6 == 1)
    {

      v1;
      sub_25B005F24();

      v8 = 0xD00000000000001ALL;
      v6 = GlanceControlID.description.getter();
    }

    else
    {
      sub_25AF18244(v1, v4, v3, v5, v2 & 1);
      sub_25B005F24();

      v8 = 0xD000000000000021;
      v6 = sub_25AF5B294();
    }

    MEMORY[0x25F85D7B0](v6);

    MEMORY[0x25F85D7B0](41, 0xE100000000000000);
    sub_25AF18128(v1, v4, v3, v5, v2);
    return v8;
  }

  else
  {
    sub_25B005F24();
    MEMORY[0x25F85D7B0](0xD000000000000019, 0x800000025B01A4F0);
    sub_25AFD1FEC();
    MEMORY[0x25F85D7B0](15913, 0xE200000000000000);
    return 0;
  }
}

uint64_t sub_25AFD33F0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v25[0] = *a1;
  v25[1] = v3;
  v25[2] = v4;
  v25[3] = v5;
  v26 = v6;
  v27 = v8;
  v28 = v7;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  if (!(v6 >> 6))
  {
    if (v11 <= 0x3F)
    {
      sub_25AF2602C(v25, &unk_27FA25590, qword_25B00A7F0);
      v12 = v2 == v8;
      return v12 & 1;
    }

    goto LABEL_18;
  }

  if (v6 >> 6 != 1)
  {
    if ((v11 & 0xC0) != 0x80)
    {
      sub_25AF18244(v2, v3, v4, v5, v6 & 1);
      goto LABEL_18;
    }

    if (v6)
    {
      if (v11 & 1) != 0 && (v2 == v8 && v3 == v7 || (sub_25B006174()))
      {
        if (v4 == v9 && v5 == v10)
        {
          sub_25AF181DC(v8, v7, v4, v5, v11);
          sub_25AF181DC(v2, v3, v4, v5, v6);
          goto LABEL_28;
        }

        v22 = sub_25B006174();
        sub_25AF181DC(v8, v7, v9, v10, v11);
        sub_25AF181DC(v2, v3, v4, v5, v6);
        sub_25AF2602C(v25, &unk_27FA25590, qword_25B00A7F0);
        if ((v22 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else if ((v11 & 1) == 0)
    {
      sub_25AF67FDC();
      sub_25AF181DC(v8, v7, v9, v10, v11);
      sub_25AF181DC(v2, v3, v4, v5, v6);
      if ((sub_25B005DE4() & 1) == 0)
      {
        goto LABEL_20;
      }

      if (v3 == v7 && v4 == v9)
      {
LABEL_28:
        sub_25AF2602C(v25, &unk_27FA25590, qword_25B00A7F0);
        v12 = 1;
        return v12 & 1;
      }

      v20 = sub_25B006174();
      sub_25AF2602C(v25, &unk_27FA25590, qword_25B00A7F0);
      if ((v20 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_32:
      v12 = 1;
      return v12 & 1;
    }

    sub_25AF181DC(v8, v7, v9, v10, v11);
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v18 = v6;
    goto LABEL_19;
  }

  if ((v11 & 0xC0) != 0x40)
  {

    v13 = v2;
LABEL_18:
    v14 = v8;
    v15 = v7;
    v16 = v9;
    v17 = v10;
    v18 = v11;
LABEL_19:
    sub_25AF181DC(v14, v15, v16, v17, v18);
LABEL_20:
    sub_25AF2602C(v25, &unk_27FA25590, qword_25B00A7F0);
LABEL_21:
    v12 = 0;
    return v12 & 1;
  }

  v24[0] = v2;
  v24[1] = v3;
  v24[2] = v4;
  v24[3] = v5;
  v23[0] = v8;
  v23[1] = v7;
  v23[2] = v9;
  v23[3] = v10;
  sub_25AF181DC(v8, v7, v9, v10, v11);
  sub_25AF181DC(v2, v3, v4, v5, v6);
  sub_25AF181DC(v8, v7, v9, v10, v11);
  sub_25AF181DC(v2, v3, v4, v5, v6);
  v21 = v4;
  v12 = _s17NanoControlCenter06GlanceB2IDV2eeoiySbAC_ACtFZ_0(v24, v23);
  sub_25AF2602C(v25, &unk_27FA25590, qword_25B00A7F0);
  sub_25AF18128(v8, v7, v9, v10, v11);
  sub_25AF18128(v2, v3, v21, v5, v6);
  return v12 & 1;
}

unint64_t sub_25AFD37C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26690;
  if (!qword_27FA26690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26690);
  }

  return result;
}

unint64_t sub_25AFD381C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA26698;
  if (!qword_27FA26698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26698);
  }

  return result;
}

unint64_t sub_25AFD3870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA266A8;
  if (!qword_27FA266A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266A8);
  }

  return result;
}

uint64_t sub_25AFD38C4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = *(a2 + 32);
  if (!(v3 >> 6))
  {
    if (!(v5 >> 6))
    {
      v17 = v2 < v4;
      return v17 & 1;
    }

    goto LABEL_8;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (v3 >> 6 != 1)
  {
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    sub_25AF181DC(*a2, *(a2 + 8), v10, v11, v5);
    sub_25AF181DC(v2, v7, v6, v8, v3);
    sub_25AF181DC(v4, v9, v10, v11, v5);
    sub_25AF181DC(v2, v7, v6, v8, v3);
    v84 = v8;
    if (v3)
    {

      if ((v5 & 1) == 0)
      {
        v82 = v11;
        v78 = v9;

        v39 = [v4 kind];
        v40 = sub_25B005934();
        v42 = v41;

        if (v6 == v40 && v84 == v42)
        {
          v17 = 0;
          v43 = v84;
        }

        else
        {
          v43 = v84;
          v17 = sub_25B006174();
        }

        sub_25AF18128(v4, v78, v10, v82, v5);
        v52 = v2;
        v53 = v7;
        v54 = v6;
        v55 = v43;
        goto LABEL_58;
      }

      if (v6 == v10 && v8 == v11)
      {
        v17 = 0;
      }

      else
      {
        v17 = sub_25B006174();
      }

      v56 = v4;
      v57 = v9;
    }

    else
    {
      v81 = v11;

      v77 = v9;
      if ((v5 & 1) == 0)
      {
        v73 = v7;
        v71 = v10;

        v44 = [v2 kind];
        v45 = sub_25B005934();
        v47 = v46;

        v48 = [v4 kind];
        v49 = sub_25B005934();
        v51 = v50;

        if (v45 == v49 && v47 == v51)
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_25B006174();
        }

        v7 = v73;

        v56 = v4;
        v57 = v77;
        v58 = v71;
        v59 = v81;
        goto LABEL_54;
      }

      v18 = [v2 kind];
      v19 = sub_25B005934();
      v21 = v20;

      v22 = v19 == v10;
      v11 = v81;
      if (v22 && v81 == v21)
      {
        v17 = 0;
      }

      else
      {
        v17 = sub_25B006174();
      }

      v56 = v4;
      v57 = v77;
    }

    v58 = v10;
    v59 = v11;
LABEL_54:
    sub_25AF18128(v56, v57, v58, v59, v5);
    v52 = v2;
    v53 = v7;
    v54 = v6;
    v55 = v84;
    goto LABEL_58;
  }

  if (!(v5 >> 6))
  {
LABEL_10:
    v17 = 0;
    return v17 & 1;
  }

  if (v5 >> 6 != 1)
  {
LABEL_8:
    v17 = 1;
    return v17 & 1;
  }

  v76 = *(a2 + 8);
  v70 = *(a2 + 16);
  v80 = *(a2 + 24);
  sub_25AF181DC(*a2, v9, v10, v11, v5);
  v72 = v7;
  v74 = v6;
  v83 = v8;
  sub_25AF181DC(v2, v7, v6, v8, v3);
  v12 = v2;
  v79 = v4;
  v75 = v12;
  v13 = [v12 extensionIdentity];
  v14 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B28, &qword_25B0091D0);
  v16 = *(*(v15 - 8) + 48);
  if (v16(&v13[v14], 1, v15))
  {
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70, &qword_25B0090A0);
  }

  v69 = sub_25B004294();
  v24 = v23;
  swift_endAccess();

  v25 = [v79 extensionIdentity];
  v26 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  if (v16(&v25[v26], 1, v15))
  {
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70, &qword_25B0090A0);
  }

  v27 = sub_25B004294();
  v29 = v28;
  swift_endAccess();

  if ((v69 != v27 || v24 != v29) && (sub_25B006174() & 1) == 0 || ((, , v30 = [v75 kind], v31 = sub_25B005934(), v33 = v32, v30, v34 = objc_msgSend(v79, sel_kind), v35 = sub_25B005934(), v37 = v36, v34, v31 != v35) || v33 != v37) && (sub_25B006174() & 1) == 0)
  {
    v17 = sub_25B006174();

    sub_25AF18128(v4, v76, v70, v80, v5);
    v52 = v2;
    v53 = v72;
    v54 = v6;
    v55 = v83;
LABEL_58:
    sub_25AF18128(v52, v53, v54, v55, v3);
    return v17 & 1;
  }

  if (v83)
  {
    if (v80)
    {
      if (v6 == v70 && v83 == v80)
      {
        v17 = 0;
        v38 = v80;
      }

      else
      {
        v38 = v80;
        v17 = sub_25B006174();
      }

      sub_25AF18128(v4, v76, v70, v38, v5);
      v52 = v2;
      v53 = v72;
      v54 = v74;
      v55 = v83;
      goto LABEL_58;
    }

    sub_25AF18128(v4, v76, v70, 0, v5);
    v60 = v2;
    v61 = v72;
    v62 = v6;
    v63 = v83;
LABEL_65:
    sub_25AF18128(v60, v61, v62, v63, v3);
    v17 = 0;
    return v17 & 1;
  }

  if (!v80)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v65 = sub_25B0044C4();
    __swift_project_value_buffer(v65, qword_27FA30C28);
    v66 = sub_25B0044B4();
    v67 = sub_25B005CB4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_25AF0B000, v66, v67, "Got two controls IDs with matching containerBundleIdentifiers and kinds, but no uniqueIdentifiers. This is likely due to a bug.", v68, 2u);
      MEMORY[0x25F85EC30](v68, -1, -1);
    }

    sub_25AF18128(v4, v76, v70, 0, v5);
    v60 = v2;
    v61 = v72;
    v62 = v74;
    v63 = 0;
    goto LABEL_65;
  }

  sub_25AF18128(v4, v76, v70, v80, v5);
  sub_25AF18128(v2, v72, v6, 0, v3);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_25AFD41F8()
{
  sub_25AF1818C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25AFD4238()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25AFD4278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA266B0, &qword_25B013550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AFD42FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25AFD4354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
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

unint64_t sub_25AFD43E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA266B8;
  if (!qword_27FA266B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266B8);
  }

  return result;
}

unint64_t sub_25AFD4440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA266C0;
  if (!qword_27FA266C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266C0);
  }

  return result;
}

unint64_t sub_25AFD4498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA266C8;
  if (!qword_27FA266C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266C8);
  }

  return result;
}

unint64_t sub_25AFD44EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA266D0;
  if (!qword_27FA266D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266D0);
  }

  return result;
}

unint64_t sub_25AFD4540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA266D8;
  if (!qword_27FA266D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266D8);
  }

  return result;
}

unint64_t sub_25AFD4594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA266E0;
  if (!qword_27FA266E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266E0);
  }

  return result;
}

uint64_t sub_25AFD45F4()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t get_enum_tag_for_layout_string_17NanoControlCenter17ColorMatrixEffectV0dF0O(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AFD4688(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25AFD46EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_25AFD473C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ColorMatrixEffect.ColorMatrixEffect(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy81_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ColorMatrixEffect.ColorMatrixEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ColorMatrixEffect.ColorMatrixEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 65) = 0u;
    *(result + 52) = 0u;
    *(result + 36) = 0u;
    *(result + 20) = 0u;
    *(result + 4) = 0u;
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

  *(result + 81) = v3;
  return result;
}

uint64_t sub_25AFD4830(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25AFD484C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    *(result + 80) = 1;
  }

  else
  {
    *(result + 80) = 0;
  }

  return result;
}

uint64_t sub_25AFD48A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA266E8, &qword_25B013868);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25AFD4984(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 96) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA266E8, &qword_25B013868);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ColorMatrixEffect(uint64_t a1)
{
  result = qword_27FA266F0;
  if (!qword_27FA266F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AFD4A80(uint64_t a1)
{
  sub_25AFD4BE8(319, &qword_27FA249C8, type metadata accessor for ControlCenterStyle.VisualsModel, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25AFD4BE8(319, &qword_27FA26700, MEMORY[0x277CE0040], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_25AF4A5F0(319, &qword_27FA24270, &qword_27FA24278, qword_25B00AFD0);
      if (v3 <= 0x3F)
      {
        sub_25AF4A5F0(319, &qword_27FA249D0, &qword_27FA249D8, qword_25B00C1B0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25AFD4BE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_25AFD4C4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  if (a1[10])
  {
    if (a1[2] | a1[1] | *a1 | a1[4] | a1[3] | a1[5] | a1[6] | a1[7] | a1[8] | a1[9])
    {
      if (a2[10])
      {
        return (v5 | v3 | v2 | v4 | v6 | v7 | v9 | v8 | v11 | v10) != 0;
      }
    }

    else if (a2[10])
    {
      return (v5 | v3 | v2 | v4 | v6 | v7 | v9 | v8 | v11 | v10) == 0;
    }

    return 0;
  }

  else
  {
    if (a2[10])
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_25B004534();
    }

    return v13 & 1;
  }
}

void sub_25AFD4DB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v97 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26708, &qword_25B0138F8);
  MEMORY[0x28223BE20](v84);
  v78 = &v72 - v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26710, &qword_25B013900);
  MEMORY[0x28223BE20](v89);
  v91 = &v72 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26718, &qword_25B013908);
  MEMORY[0x28223BE20](v82);
  v83 = &v72 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26720, &qword_25B013910);
  MEMORY[0x28223BE20](v90);
  v85 = &v72 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26728, &qword_25B013918);
  MEMORY[0x28223BE20](v81);
  v80 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26730, &qword_25B013920);
  MEMORY[0x28223BE20](v10);
  v92 = &v72 - v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26738, &qword_25B013928);
  MEMORY[0x28223BE20](v94);
  v96 = &v72 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26740, &qword_25B013930);
  MEMORY[0x28223BE20](v86);
  v88 = &v72 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26748, &qword_25B013938);
  MEMORY[0x28223BE20](v87);
  v79 = &v72 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26750, &qword_25B013940);
  MEMORY[0x28223BE20](v95);
  v16 = &v72 - v15;
  v17 = sub_25B004B14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v2;
  if (*v2 == 2)
  {
    if (!*(v2 + 96))
    {
LABEL_16:
      v22 = 0;
      goto LABEL_21;
    }

    v93.i64[0] = v10;
    if (qword_27FA30B10)
    {
      v76.i32[0] = *(v2 + 89);
      LODWORD(v75) = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_isCompanionReachable);
      v27 = type metadata accessor for ColorMatrixEffect(0);
      v28 = v2 + *(v27 + 40);
      v29 = *v28;
      v30 = *(v28 + 8) == 1;
      v77 = a1;
      v73 = v16;
      if (!v30)
      {

        sub_25B005CC4();
        v31 = sub_25B004F24();
        sub_25B0044A4();

        sub_25B004B04();
        swift_getAtKeyPath();
        sub_25AF241CC(v29, 0);
        (*(v18 + 8))(v20, v17);
        v29 = v99;
      }

      v32 = v2 + *(v27 + 44);
      v33 = *v32;
      if (*(v32 + 8) == 1)
      {
        LOBYTE(v99) = *v32;
      }

      else
      {

        sub_25B005CC4();
        v34 = sub_25B004F24();
        sub_25B0044A4();

        sub_25B004B04();
        swift_getAtKeyPath();
        sub_25AF241CC(v33, 0);
        (*(v18 + 8))(v20, v17);
        LOBYTE(v33) = v99;
      }

      a1 = v77;
      v16 = v73;
      LOBYTE(v98[0]) = v33;
      v22 = sub_25AFA8BE8(v76.i8[0], v75, v29, v98);
      v10 = v93.i64[0];
      goto LABEL_21;
    }
  }

  else
  {
    v22 = *v2;
    if (v21 != 1)
    {
      goto LABEL_21;
    }

    v77 = a1;
    if (!*(v2 + 96))
    {
      v22 = 0;
      a1 = v77;
      goto LABEL_21;
    }

    if (qword_27FA30B10)
    {
      v23 = v2 + *(type metadata accessor for ColorMatrixEffect(0) + 40);
      if ((*(v23 + 8) & 1) == 0)
      {
        v24 = *v23;

        sub_25B005CC4();
        v73 = v16;
        v25 = sub_25B004F24();
        v16 = v73;
        sub_25B0044A4();

        sub_25B004B04();
        swift_getAtKeyPath();
        sub_25AF241CC(v24, 0);
        (*(v18 + 8))(v20, v17);
      }

      if (swift_weakLoadStrong())
      {
        v26 = [objc_opt_self() systemWhiteColor];

        a1 = v77;
        if (v26)
        {
          v22 = sub_25B005434();
          goto LABEL_21;
        }

        goto LABEL_16;
      }

      v22 = 0;
      a1 = v77;
LABEL_21:
      v35 = *(v3 + 8);
      v36 = *(v3 + 16);
      v37 = *(v3 + 24);
      v38 = *(v3 + 40);
      v39 = *(v3 + 56);
      v40 = *(v3 + 72);
      if (*(v3 + 88))
      {
        v41 = v37.i64[0] | v36;
        v42 = vorrq_s8(v40, v39);
        *v37.i8 = vorr_s8(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
        v43 = vorrq_s8(v37, v38);
        if (v35 | vorrq_s8(v43, vdupq_laneq_s64(v43, 1)).u64[0] | v41)
        {
          LOBYTE(v99) = 1;
          sub_25AF49F2C(v21);
          v35 = 0;
          v36 = 0;
          v44 = v99;
          v45 = 0uLL;
          v46 = 0uLL;
          v47 = 0uLL;
          v48 = 0uLL;
        }

        else
        {
          sub_25AF49F2C(v21);
          if (qword_27FA23790 != -1)
          {
            swift_once();
          }

          v44 = 0;
          v36 = *(&xmmword_27FA30B70 + 1);
          v35 = xmmword_27FA30B70;
          v45 = xmmword_27FA30B80;
          v46 = xmmword_27FA30B90;
          v47 = xmmword_27FA30BA0;
          v48 = xmmword_27FA30BB0;
          LOBYTE(v99) = 0;
        }
      }

      else
      {
        LOBYTE(v99) = 0;
        v93 = v37;
        v76 = v38;
        v75 = v39;
        v74 = v40;
        sub_25AF49F2C(v21);
        v48 = v74;
        v47 = v75;
        v46 = v76;
        v45 = v93;
        v44 = v99;
      }

      if (*(v3 + 90) == 1)
      {
        if (v22)
        {
          v99 = v22;
        }

        else
        {
          if (v44)
          {
            goto LABEL_39;
          }

          v99 = v35;
          v100 = v36;
          v101 = v45;
          v102 = v46;
          v103 = v47;
          v104 = v48;
          sub_25AFC3B2C(&v99, v98);
        }

        v57 = sub_25B0046E4();
        if (v57)
        {
          v93.i64[0] = v10;
          sub_25B005B34();

          sub_25B005B24();
          sub_25B005AE4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26758, &qword_25B013948);
          v59 = v79;
          (*(*(v58 - 8) + 16))(v79, a1, v58);
          *(v59 + *(v87 + 36)) = v57;
          sub_25AF25FC4(v59, v88, &qword_27FA26748, &qword_25B013938);
          swift_storeEnumTagMultiPayload();
          sub_25AFD62AC();
          sub_25AF0F274(&qword_27FA26770, &qword_27FA26758, &qword_25B013948, MEMORY[0x277CE04B0]);
          sub_25B004C74();

          sub_25AF2602C(v59, &qword_27FA26748, &qword_25B013938);
          goto LABEL_40;
        }

LABEL_39:
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26758, &qword_25B013948);
        (*(*(v60 - 8) + 16))(v88, a1, v60);
        swift_storeEnumTagMultiPayload();
        sub_25AFD62AC();
        sub_25AF0F274(&qword_27FA26770, &qword_27FA26758, &qword_25B013948, MEMORY[0x277CE04B0]);
        sub_25B004C74();
LABEL_40:
        sub_25AF25FC4(v16, v96, &qword_27FA26750, &qword_25B013940);
        swift_storeEnumTagMultiPayload();
        sub_25AFD61FC(&qword_27FA267A0, &qword_27FA26750, &qword_25B013940, sub_25AFD62AC);
        sub_25AFD61FC(&qword_27FA267C0, &qword_27FA26730, &qword_25B013920, sub_25AFD5FA8);
        sub_25B004C74();

        v61 = v16;
        v62 = &qword_27FA26750;
        v63 = &qword_25B013940;
LABEL_46:
        sub_25AF2602C(v61, v62, v63);
        return;
      }

      if (v22)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26758, &qword_25B013948);
        v50 = v22;
        v51 = v80;
        (*(*(v49 - 8) + 16))(v80, a1, v49);
        *(v51 + *(v81 + 36)) = v50;
        sub_25AF25FC4(v51, v83, &qword_27FA26728, &qword_25B013918);
        swift_storeEnumTagMultiPayload();
        sub_25AFD6034();
        sub_25AFD6118();
        v93.i64[0] = v10;

        v52 = v85;
        sub_25B004C74();
        sub_25AF25FC4(v52, v91, &qword_27FA26720, &qword_25B013910);
        swift_storeEnumTagMultiPayload();
        sub_25AFD5FA8();
        sub_25AF0F274(&qword_27FA26770, &qword_27FA26758, &qword_25B013948, MEMORY[0x277CE04B0]);
        v53 = v92;
        sub_25B004C74();
        sub_25AF2602C(v52, &qword_27FA26720, &qword_25B013910);
        v54 = v51;
        v55 = &qword_27FA26728;
        v56 = &qword_25B013918;
      }

      else
      {
        if (v44)
        {
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26758, &qword_25B013948);
          (*(*(v64 - 8) + 16))(v91, a1, v64);
          swift_storeEnumTagMultiPayload();
          sub_25AFD5FA8();
          sub_25AF0F274(&qword_27FA26770, &qword_27FA26758, &qword_25B013948, MEMORY[0x277CE04B0]);
          v53 = v92;
          sub_25B004C74();
LABEL_45:
          sub_25AF25FC4(v53, v96, &qword_27FA26730, &qword_25B013920);
          swift_storeEnumTagMultiPayload();
          sub_25AFD61FC(&qword_27FA267A0, &qword_27FA26750, &qword_25B013940, sub_25AFD62AC);
          sub_25AFD61FC(&qword_27FA267C0, &qword_27FA26730, &qword_25B013920, sub_25AFD5FA8);
          sub_25B004C74();

          v61 = v53;
          v62 = &qword_27FA26730;
          v63 = &qword_25B013920;
          goto LABEL_46;
        }

        v99 = v35;
        v100 = v36;
        v101 = v45;
        v102 = v46;
        v103 = v47;
        v104 = v48;
        sub_25AFC3B2C(&v99, v98);
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26758, &qword_25B013948);
        v66 = v78;
        (*(*(v65 - 8) + 16))(v78, a1, v65);
        v67 = (v66 + *(v84 + 36));
        v68 = v98[3];
        v67[2] = v98[2];
        v67[3] = v68;
        v67[4] = v98[4];
        v69 = v98[1];
        *v67 = v98[0];
        v67[1] = v69;
        sub_25AF25FC4(v66, v83, &qword_27FA26708, &qword_25B0138F8);
        swift_storeEnumTagMultiPayload();
        sub_25AFD6034();
        sub_25AFD6118();
        v70 = v85;
        sub_25B004C74();
        sub_25AF25FC4(v70, v91, &qword_27FA26720, &qword_25B013910);
        swift_storeEnumTagMultiPayload();
        sub_25AFD5FA8();
        sub_25AF0F274(&qword_27FA26770, &qword_27FA26758, &qword_25B013948, MEMORY[0x277CE04B0]);
        v71 = v92;
        sub_25B004C74();
        v53 = v71;
        sub_25AF2602C(v70, &qword_27FA26720, &qword_25B013910);
        v54 = v66;
        v55 = &qword_27FA26708;
        v56 = &qword_25B0138F8;
      }

      sub_25AF2602C(v54, v55, v56);
      goto LABEL_45;
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_25AFD5FA8()
{
  result = qword_27FA26760;
  if (!qword_27FA26760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26720, &qword_25B013910);
    sub_25AFD6034();
    sub_25AFD6118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26760);
  }

  return result;
}

unint64_t sub_25AFD6034()
{
  result = qword_27FA26768;
  if (!qword_27FA26768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26728, &qword_25B013918);
    sub_25AF0F274(&qword_27FA26770, &qword_27FA26758, &qword_25B013948, MEMORY[0x277CE04B0]);
    sub_25AF0F274(&qword_27FA26778, &qword_27FA26780, &qword_25B013950, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26768);
  }

  return result;
}

unint64_t sub_25AFD6118()
{
  result = qword_27FA26788;
  if (!qword_27FA26788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26708, &qword_25B0138F8);
    sub_25AF0F274(&qword_27FA26770, &qword_27FA26758, &qword_25B013948, MEMORY[0x277CE04B0]);
    sub_25AF0F274(&qword_27FA26790, &qword_27FA26798, &qword_25B013958, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26788);
  }

  return result;
}

uint64_t sub_25AFD61FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_25AF0F274(&qword_27FA26770, &qword_27FA26758, &qword_25B013948, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AFD62AC()
{
  result = qword_27FA267A8;
  if (!qword_27FA267A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26748, &qword_25B013938);
    sub_25AF0F274(&qword_27FA26770, &qword_27FA26758, &qword_25B013948, MEMORY[0x277CE04B0]);
    sub_25AF0F274(&qword_27FA267B0, &qword_27FA267B8, &qword_25B013960, MEMORY[0x277CDFB08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA267A8);
  }

  return result;
}

unint64_t sub_25AFD6394()
{
  result = qword_27FA267C8;
  if (!qword_27FA267C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA267D0, &qword_25B013968);
    sub_25AFD61FC(&qword_27FA267A0, &qword_27FA26750, &qword_25B013940, sub_25AFD62AC);
    sub_25AFD61FC(&qword_27FA267C0, &qword_27FA26730, &qword_25B013920, sub_25AFD5FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA267C8);
  }

  return result;
}

uint64_t sub_25AFD6478()
{

  v1 = OBJC_IVAR____TtC17NanoControlCenter23LegacyWalkieTalkieModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LegacyWalkieTalkieModel(uint64_t a1)
{
  result = qword_27FA267E0;
  if (!qword_27FA267E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AFD6570(uint64_t a1)
{
  result = sub_25B004274();
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

void sub_25AFD6618()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_25B005924();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27FA267F0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_25AFD6690(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (v1)
  {
    v2 = v1;
    appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

    byte_27FA267F8 = appleInternalInstallCapability;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static InternalSettingsModel.isInternalInstall.getter()
{
  if (qword_27FA237B0 != -1)
  {
    swift_once();
  }

  return byte_27FA267F8;
}

id static InternalSettingsModel.shouldShowWaterLock.getter()
{
  if (qword_27FA237B0 != -1)
  {
    swift_once();
  }

  if (byte_27FA267F8 != 1)
  {
    return 0;
  }

  if (qword_27FA237A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27FA267F0;
  v1 = sub_25B005924();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t InternalSettingsModel.observer.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17NanoControlCenter21InternalSettingsModel_observer;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InternalSettingsModel.observer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17NanoControlCenter21InternalSettingsModel_observer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25AFD6990;
}

void sub_25AFD6990(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id InternalSettingsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InternalSettingsModel.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC17NanoControlCenter21InternalSettingsModel_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id InternalSettingsModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25AFD6BC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC17NanoControlCenter21InternalSettingsModel_observer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25AFD6C1C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC17NanoControlCenter21InternalSettingsModel_observer;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_25AFD6CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25AF701DC(a3, v22 - v9);
  v11 = sub_25B005B64();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25AF2602C(v10, &unk_27FA24790, &qword_25B0090E0);
  }

  else
  {
    sub_25B005B54();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25B005AE4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25B005984() + 32;

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

      sub_25AF2602C(a3, &unk_27FA24790, &qword_25B0090E0);

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

  sub_25AF2602C(a3, &unk_27FA24790, &qword_25B0090E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25AFD6F64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_25B0040A4();
  v76 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B004094();
  v8 = *(v7 - 8);
  v70 = v7;
  v71 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25B004204();
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x28223BE20](v11);
  v72 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  v16 = sub_25B005904();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26840, &unk_25B013BC0);
  MEMORY[0x28223BE20](v23 - 8);
  v77 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v66 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v75 = &v66 - v30;
  switch(a1)
  {
    case 0:
      v68 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 1:
      v68 = a2;
      v66 = v5;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 2:
      v66 = v5;
      v68 = a2;
      v37 = sub_25B005924();
      v38 = SFLocalizableWAPIStringKeyForKey();

      sub_25B005934();
      sub_25B005914();
      if (qword_27FA237B8 != -1)
      {
        swift_once();
      }

      v39 = qword_27FA26808;
      sub_25B0041F4();
      v40 = *(v17 + 16);
      v67 = v16;
      v40(v19, v22, v16);
      v41 = v73;
      v42 = v74;
      (*(v73 + 16))(v72, v15, v74);
      v43 = [v39 bundleURL];
      sub_25B004124();

      (*(v71 + 104))(v10, *MEMORY[0x277CC9118], v70);
      sub_25B0040C4();
      (*(v41 + 8))(v15, v42);
      (*(v17 + 8))(v22, v67);
      v31 = v76;
      v44 = v66;
      (*(v76 + 56))(v27, 0, 1, v66);
      v45 = v27;
      v33 = v75;
      sub_25AFDB1D0(v45, v75);
      v46 = sub_25B005924();
      v47 = SFLocalizableWAPIStringKeyForKey();

      v34 = sub_25B005934();
      v35 = v48;

      v5 = v44;
      a2 = v68;
      goto LABEL_64;
    case 3:
      v68 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 4:
      v68 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 5:
    case 13:
    case 14:
    case 15:
    case 17:
    case 19:
    case 23:
    case 50:
      v31 = v76;
      (*(v76 + 56))(v27, 1, 1, v5, v29);
      v32 = v27;
      v33 = v75;
      sub_25AFDB1D0(v32, v75);
      v34 = 0;
      if (a1 <= 16)
      {
        if (a1 <= 13)
        {
          if (a1 != 5)
          {
            v35 = 0;
            v36 = v77;
            if (a1 == 13)
            {
              v35 = 0xE800000000000000;
              v34 = 0x6563617254205241;
            }

            goto LABEL_65;
          }

          goto LABEL_17;
        }

        if (a1 != 14)
        {
          v35 = 0;
          v36 = v77;
          if (a1 == 15)
          {
            v35 = 0xEC00000049552065;
            v34 = 0x76697469736E6553;
          }

          goto LABEL_65;
        }

        v34 = 0xD000000000000010;
        v60 = "Screen Recording";
LABEL_63:
        v35 = (v60 - 32) | 0x8000000000000000;
        goto LABEL_64;
      }

      if (a1 > 22)
      {
        if (a1 == 23)
        {
          v34 = 0xD000000000000010;
          v60 = "Screen Mirroring";
          goto LABEL_63;
        }

        v35 = 0;
        v36 = v77;
        if (a1 == 50)
        {
          v35 = 0xE90000000000003ELL;
          v34 = 0x6465766F6D65723CLL;
        }
      }

      else
      {
        if (a1 == 17)
        {
LABEL_17:
          v35 = 0xE90000000000003ELL;
          v34 = 0x6465766F6D65723CLL;
LABEL_64:
          v36 = v77;
          goto LABEL_65;
        }

        v35 = 0;
        v36 = v77;
        if (a1 == 19)
        {
          v35 = 0xEC00000072616461;
          v34 = 0x522D6F742D706154;
        }
      }

LABEL_65:
      sub_25AFDB1D0(v33, v36);
      if ((*(v31 + 48))(v36, 1, v5) != 1)
      {

        v62 = *(v31 + 32);
        v63 = v69;
        v62(v69, v36, v5);
        v62(a2, v63, v5);
        v61 = type metadata accessor for ButtonAXString(0);
        goto LABEL_69;
      }

      sub_25AF2602C(v36, &qword_27FA26840, &unk_25B013BC0);
      if (v35)
      {
        *a2 = v34;
        a2[1] = v35;
        v61 = type metadata accessor for ButtonAXString(0);
LABEL_69:
        swift_storeEnumTagMultiPayload();
        return (*(*(v61 - 8) + 56))(a2, 0, 1, v61);
      }

      v65 = type metadata accessor for ButtonAXString(0);
      return (*(*(v65 - 8) + 56))(a2, 1, 1, v65);
    case 6:
      v68 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 7:
      v68 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 8:
      v68 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 9:
      v68 = a2;
      v66 = v5;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 10:
      v68 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 11:
      v68 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

LABEL_79:
      swift_once();
LABEL_58:
      v54 = qword_27FA26808;
      sub_25B0041F4();
      v55 = *(v17 + 16);
      v67 = v16;
      v55(v19, v22, v16);
      v56 = v73;
      (*(v73 + 16))(v72, v15, v74);
      v57 = [v54 bundleURL];
      sub_25B004124();

      (*(v71 + 104))(v10, *MEMORY[0x277CC9118], v70);
      sub_25B0040C4();
      (*(v56 + 8))(v15, v74);
      (*(v17 + 8))(v22, v67);
      v31 = v76;
      (*(v76 + 56))(v27, 0, 1, v5);
      goto LABEL_59;
    case 12:
      v68 = a2;
      v66 = v5;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 16:
      v68 = a2;
      v66 = v5;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 18:
      v68 = a2;
      v66 = v5;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 20:
      v68 = a2;
      v66 = v5;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 21:
      v68 = a2;
      v66 = v5;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 22:
      v68 = a2;
      v66 = v5;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 24:
      v68 = a2;
      v66 = v5;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 25:
      v68 = a2;
      v66 = v5;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 51:
      v31 = v76;
      (*(v76 + 56))(v27, 1, 1, v5, v29);
      v59 = v27;
      v33 = v75;
      sub_25AFDB1D0(v59, v75);
      v35 = 0xEA0000000000676ELL;
      v34 = 0x69676E615220494ELL;
      goto LABEL_64;
    case 100:
      v68 = a2;
      v66 = v5;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

LABEL_74:
      swift_once();
LABEL_54:
      v49 = qword_27FA26808;
      sub_25B0041F4();
      v50 = *(v17 + 16);
      v67 = v16;
      v50(v19, v22, v16);
      v51 = v73;
      v52 = v74;
      (*(v73 + 16))(v72, v15, v74);
      v53 = [v49 bundleURL];
      sub_25B004124();

      (*(v71 + 104))(v10, *MEMORY[0x277CC9118], v70);
      sub_25B0040C4();
      (*(v51 + 8))(v15, v52);
      (*(v17 + 8))(v22, v67);
      v31 = v76;
      v5 = v66;
      (*(v76 + 56))(v27, 0, 1, v66);
LABEL_59:
      v58 = v27;
      v33 = v75;
      sub_25AFDB1D0(v58, v75);
      v34 = 0;
      v35 = 0;
      v36 = v77;
      a2 = v68;
      goto LABEL_65;
    default:
      type metadata accessor for LegacyButtonIdentifier(0);
      v78 = a1;
      sub_25B0061E4();
      __break(1u);
      JUMPOUT(0x25AFD88FCLL);
  }
}

uint64_t sub_25AFD8A90@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_25B004094();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B004204();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = sub_25B005904();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  if (a1)
  {
    sub_25B0058F4();
    if (qword_27FA237B8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_25B0058F4();
  if (qword_27FA237B8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v21 = qword_27FA26808;
  sub_25B0041F4();
  (*(v15 + 16))(v17, v20, v14);
  (*(v8 + 16))(v10, v13, v7);
  v22 = [v21 bundleURL];
  sub_25B004124();

  (*(v24 + 104))(v6, *MEMORY[0x277CC9118], v25);
  sub_25B0040C4();
  (*(v8 + 8))(v13, v7);
  return (*(v15 + 8))(v20, v14);
}

uint64_t sub_25AFD8E8C@<X0>(unint64_t a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v7 = v6;
  v94 = a5;
  v12 = sub_25B004094();
  v90 = *(v12 - 8);
  v91 = v12;
  MEMORY[0x28223BE20](v12);
  v89 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25B004204();
  v92 = *(v14 - 8);
  v93 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  v20 = sub_25B005904();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v87 - v26;
  if (a1 <= 0x19)
  {
    if (((1 << a1) & 0x95E39A) != 0)
    {
      goto LABEL_3;
    }

    if (a1 == 2)
    {
      v51 = v25;
      swift_getKeyPath();
      v95 = v7;
      sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel, &unk_25B013B28);
      sub_25B004234();

      v52 = *(v7 + 40);
      if (v52 == 2)
      {
        LOBYTE(v52) = a2;
      }

      if ((v52 & 1) == 0)
      {
        v58 = v27;
        sub_25B0058F4();
        if (qword_27FA237B8 != -1)
        {
          swift_once();
        }

        v59 = qword_27FA26808;
        sub_25B0041F4();
        v60 = *(v21 + 16);
        v87 = v51;
        v60(v23, v27, v51);
        v62 = v92;
        v61 = v93;
        (*(v92 + 16))(v16, v19, v93);
        v63 = [v59 bundleURL];
        v64 = v89;
        sub_25B004124();

        (*(v90 + 104))(v64, *MEMORY[0x277CC9118], v91);
        v34 = v94;
        sub_25B0040C4();
        (*(v62 + 8))(v19, v61);
        (*(v21 + 8))(v58, v87);
        goto LABEL_9;
      }

      sub_25B0058F4();
      if (qword_27FA237B8 != -1)
      {
        swift_once();
      }

      v53 = qword_27FA26808;
      sub_25B0041F4();
      v28 = v51;
      (*(v21 + 16))(v23, v27, v51);
      v31 = v92;
      v30 = v93;
      (*(v92 + 16))(v16, v19, v93);
      v32 = [v53 bundleURL];
      v88 = v27;
LABEL_8:
      v33 = v89;
      sub_25B004124();

      (*(v90 + 104))(v33, *MEMORY[0x277CC9118], v91);
      v34 = v94;
      sub_25B0040C4();
      (*(v31 + 8))(v19, v30);
      (*(v21 + 8))(v88, v28);
LABEL_9:
      v35 = type metadata accessor for ButtonAXString(0);
LABEL_10:
      swift_storeEnumTagMultiPayload();
      v36 = *(*(v35 - 8) + 56);
      v37 = v34;
      return v36(v37, 0, 1, v35);
    }

    if (a1 == 25)
    {
      if ((a4 & 1) == 0)
      {
        v39 = a3;
        v40 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
        [v40 setNumberStyle_];
        sub_25B0041F4();
        v41 = sub_25B0041D4();
        (*(v92 + 8))(v19, v93);
        [v40 setLocale_];

        v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v43 = [v40 stringFromNumber_];

        if (v43)
        {
          v44 = sub_25B005934();
          v46 = v45;

          v34 = v94;
          *v94 = v44;
          v34[1] = v46;
          v35 = type metadata accessor for ButtonAXString(0);
          goto LABEL_10;
        }
      }

      goto LABEL_32;
    }
  }

  if (!a1)
  {
    if (a4)
    {
      v54 = 0;
      v55 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v65 = v25;
      v66 = a3;
      v67 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v67 setNumberStyle_];
      sub_25B0041F4();
      v68 = sub_25B0041D4();
      (*(v92 + 8))(v19, v93);
      [v67 setLocale_];

      v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v70 = [v67 stringFromNumber_];

      if (v70)
      {
        v54 = sub_25B005934();
        v55 = v71;
      }

      else
      {
        v54 = 0;
        v55 = 0;
      }

      v25 = v65;
      if ((a2 & 1) == 0)
      {
LABEL_30:
        if (v55)
        {
          v56 = v94;
          *v94 = v54;
          v56[1] = v55;
          v35 = type metadata accessor for ButtonAXString(0);
          swift_storeEnumTagMultiPayload();
          v36 = *(*(v35 - 8) + 56);
          v37 = v56;
          return v36(v37, 0, 1, v35);
        }

LABEL_32:
        v57 = type metadata accessor for ButtonAXString(0);
        return (*(*(v57 - 8) + 56))(v94, 1, 1, v57);
      }
    }

    if (v55)
    {
      v72 = qword_27FA237B8;

      if (v72 != -1)
      {
        swift_once();
      }

      sub_25B004014();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25770, &qword_25B00F360);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_25B00A900;
      *(v73 + 56) = MEMORY[0x277D837D0];
      *(v73 + 64) = sub_25AFA0878(v73, v74, v75);
      *(v73 + 32) = v54;
      *(v73 + 40) = v55;
      v76 = sub_25B005944();
      v78 = v77;

      v79 = v94;
      *v94 = v76;
      v79[1] = v78;
      v35 = type metadata accessor for ButtonAXString(0);
    }

    else
    {
      v80 = v25;
      sub_25B0058F4();
      if (qword_27FA237B8 != -1)
      {
        swift_once();
      }

      v81 = qword_27FA26808;
      sub_25B0041F4();
      v82 = *(v21 + 16);
      v87 = v80;
      v82(v23, v27, v80);
      v84 = v92;
      v83 = v93;
      (*(v92 + 16))(v16, v19, v93);
      v85 = [v81 bundleURL];
      v88 = v27;
      v86 = v89;
      sub_25B004124();

      (*(v90 + 104))(v86, *MEMORY[0x277CC9118], v91);
      v79 = v94;
      sub_25B0040C4();
      (*(v84 + 8))(v19, v83);
      (*(v21 + 8))(v88, v87);
      v35 = type metadata accessor for ButtonAXString(0);
    }

    swift_storeEnumTagMultiPayload();
    v36 = *(*(v35 - 8) + 56);
    v37 = v79;
    return v36(v37, 0, 1, v35);
  }

  if (a1 == 100)
  {
LABEL_3:
    v28 = v25;
    v88 = &v87 - v26;
    if (a2)
    {
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
LABEL_7:
        v29 = qword_27FA26808;
        sub_25B0041F4();
        (*(v21 + 16))(v23, v27, v28);
        v31 = v92;
        v30 = v93;
        (*(v92 + 16))(v16, v19, v93);
        v32 = [v29 bundleURL];
        goto LABEL_8;
      }
    }

    swift_once();
    goto LABEL_7;
  }

  v47 = type metadata accessor for ButtonAXString(0);
  v48 = *(*(v47 - 8) + 56);
  v49 = v47;
  v50 = v94;

  return v48(v50, 1, 1, v49);
}

double sub_25AFD9B98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  swift_getKeyPath();
  v12 = v0;
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel, &unk_25B013B28);
  sub_25B004234();

  if (*(v0 + 48))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25230, &qword_25B013B70);
    sub_25B005BF4();
  }

  v4 = sub_25B005B64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_25B005B34();

  v6 = sub_25B005B24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  v9 = sub_25AFD6CC8(0, 0, v3, &unk_25B013BB0, v7);
  return sub_25AFDA2C0(v9);
}

uint64_t sub_25AFD9DB4()
{
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel, &unk_25B013B28);
  sub_25B004234();

  return *(v0 + 40);
}

void sub_25AFD9E54(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel, &unk_25B013B28);
  sub_25B004234();

  *a2 = *(v3 + 40);
}

void sub_25AFD9EFC(int a1)
{
  v2 = *(v1 + 40);
  if (v2 != 2)
  {
    if (a1 != 2 && ((v2 ^ a1) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel, &unk_25B013B28);
    sub_25B004224();

    return;
  }

  if (a1 != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 40) = a1;
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel, &unk_25B013B28);
  sub_25B004234();

  if (*(v1 + 40) != 2)
  {
    sub_25AFD9B98();
  }
}

void sub_25AFDA0B4(uint64_t a1, char a2)
{
  *(a1 + 40) = a2;
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel, &unk_25B013B28);
  sub_25B004234();

  if (*(a1 + 40) != 2)
  {
    sub_25AFD9B98();
  }
}

uint64_t sub_25AFDA170()
{
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel, &unk_25B013B28);
  sub_25B004234();
}

uint64_t sub_25AFDA214@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel, &unk_25B013B28);
  sub_25B004234();

  *a2 = *(v3 + 48);
}

double sub_25AFDA2C0(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel, &unk_25B013B28);
    sub_25B004224();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25230, &qword_25B013B70);
  v3 = sub_25B005BE4();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 48) = a1;

  return result;
}

uint64_t sub_25AFDA45C()
{

  v1 = OBJC_IVAR____TtC17NanoControlCenter24LegacyAccessibilityModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}