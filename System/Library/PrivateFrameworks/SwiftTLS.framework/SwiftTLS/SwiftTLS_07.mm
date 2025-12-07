unint64_t sub_26C12EFB4(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v24 = bswap32(*a1) >> 16;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v27 = MEMORY[0x277D838B0];
  v28 = MEMORY[0x277CC9C18];
  v25 = &v24;
  v26 = &v25;
  __swift_project_boxed_opaque_existential_1(&v25, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v25);
  v7 = *v1;
  v8 = v1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v12 = *(v7 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v10 = BYTE6(v8);
    v11 = v7 >> 32;
    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }
  }

  v24 = 0;
  v27 = v5;
  v28 = v6;
  v25 = &v24;
  v26 = &v25;
  __swift_project_boxed_opaque_existential_1(&v25, v5);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v25);
  v13 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = 0;
      v15 = BYTE6(v2);
      if (BYTE6(v2) < v4)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    v14 = v3;
    v15 = v3 >> 32;
LABEL_15:
    sub_26C0BBAA4(v3, v2);
    if (v15 < v4)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  if (v13 == 2)
  {
    v14 = *(v3 + 16);
    v15 = *(v3 + 24);
    goto LABEL_15;
  }

  v15 = 0;
  v14 = 0;
  if (v4 > 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_18:
  if (v15 < v14)
  {
    goto LABEL_33;
  }

  v16 = sub_26C14889C();
  v18 = v17;
  sub_26C1488CC();
  v19 = v18;
  v20 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v20)
    {
      sub_26C0BB9B0(v16, v18);
      sub_26C0BB9B0(v3, v2);
      v2 = BYTE6(v18);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v20 != 2)
  {
LABEL_31:
    sub_26C0BB9B0(v16, v19);
    sub_26C0BB9B0(v3, v2);
    v2 = 0;
    goto LABEL_32;
  }

  v22 = *(v16 + 16);
  v21 = *(v16 + 24);
  sub_26C0BB9B0(v16, v19);
  sub_26C0BB9B0(v3, v2);
  v2 = v21 - v22;
  if (__OFSUB__(v21, v22))
  {
    __break(1u);
LABEL_26:
    sub_26C0BB9B0(v16, v19);
    sub_26C0BB9B0(v3, v2);
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      goto LABEL_35;
    }

    v2 = HIDWORD(v16) - v16;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  if (v2 >> 16)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  sub_26C10064C(v2, v12);
  return v2 + 4;
}

uint64_t sub_26C12F234@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26C0E0978(v2, &v24, &v26);
  if (v3)
  {
    v7 = v25;
    *a1 = v24;
    *(a1 + 16) = v7;
    return result;
  }

  v8 = *(&v26 + 1);
  if (*(&v26 + 1) >> 60 == 15)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    v26 = 0uLL;
    LOBYTE(v27) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v9 = v26;
  v10 = v27;
  sub_26C0E0978(v2, &v24, &v26);
  if (*(&v26 + 1) >> 60 == 15)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    v26 = 0uLL;
    LOBYTE(v27) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v11 = v9;
    v12 = v8;
    return sub_26C0BB344(v11, v12);
  }

  v21 = *(&v26 + 1);
  v22 = v27;
  v23 = v26;
  v14 = *v2;
  v13 = v2[1];
  v15 = v2[2];
  sub_26C0BBAA4(*v2, v13);
  v16 = sub_26C1365D4();
  if ((v16 & 0x10000) != 0 || (sub_26C0DE248(v16, &v24), *(&v24 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v14;
    v2[1] = v13;
    v2[2] = v15;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    v26 = 0uLL;
    LOBYTE(v27) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB344(v9, v8);
    v11 = v23;
    v12 = v21;
    return sub_26C0BB344(v11, v12);
  }

  v26 = v24;
  v27 = v25;
  sub_26C12F594(&v26, &v24, &v28);
  result = v26;
  v17 = *(&v26 + 1) >> 62;
  if ((*(&v26 + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v18 = *(v26 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v17)
  {
    v18 = v26 >> 32;
  }

  else
  {
    v18 = BYTE14(v26);
  }

  if (__OFSUB__(v18, v27))
  {
    __break(1u);
  }

  else if (v18 == v27)
  {
    sub_26C0BB9B0(v26, *(&v26 + 1));
    result = sub_26C0BB9B0(v14, v13);
    v19 = v28;
    *a2 = v9;
    a2[1] = v8;
    a2[2] = v10;
    a2[3] = v23;
    a2[4] = v21;
    a2[5] = v22;
    a2[6] = v19;
  }

  else
  {
    v24 = xmmword_26C149860;
    LOBYTE(v25) = 2;
    v20 = v26;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    sub_26C0BB9B0(v20, *(&v20 + 1));
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v14;
    v2[1] = v13;
    v2[2] = v15;
    v26 = 1uLL;
    LOBYTE(v27) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB344(v9, v8);
    result = sub_26C0BB344(v23, v21);
    *a1 = 1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
  }

  return result;
}

uint64_t sub_26C12F594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(v5 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = BYTE6(v6);
    v10 = v5 >> 32;
    if (!v8)
    {
      v10 = v9;
    }
  }

  v11 = v10 - v7;
  if (__OFSUB__(v10, v7))
  {
    goto LABEL_37;
  }

  if (v11 >= 0)
  {
    v12 = v10 - v7;
  }

  else
  {
    v12 = v11 + 31;
  }

  result = sub_26C0CE36C(0, (v12 >> 5) & ~(v12 >> 63), 0, MEMORY[0x277D84F90]);
  v14 = a1[1];
  v36 = *a1;
  v15 = a1[2];
  v16 = v15 + 2;
  if (__OFADD__(v15, 2))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  v17 = result;
  v18 = v14 >> 62;
  v37 = BYTE6(v14);
  while (1)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (*(v36 + 24) < v16)
        {
          goto LABEL_31;
        }
      }

      else if (v16 > 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = v37;
      if (v18)
      {
        v19 = v36 >> 32;
      }

      if (v19 < v16)
      {
LABEL_31:
        *a3 = v17;
        return result;
      }
    }

    v20 = *a1;
    v21 = a1[1];
    v42 = *a1;
    v43 = v21;
    if (v16 < v15)
    {
      goto LABEL_36;
    }

    v38 = v17;
    v39 = v15;
    v40 = v16;
    sub_26C0BBAA4(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v42, v43);
    a1[2] = v16;
    v23 = *a1;
    v22 = a1[1];
    sub_26C0BBAA4(*a1, v22);
    sub_26C0E09A8(a1, &v39, &v42);
    if (v3)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      v31 = v39;
      v32 = v40;
      v33 = v41;
      *a1 = v23;
      a1[1] = v22;
      a1[2] = v16;
      v42 = v31;
      v43 = v32;
      LOBYTE(v44) = v33;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();

      goto LABEL_34;
    }

    v24 = v43;
    if (v43 >> 60 == 15)
    {
      break;
    }

    v25 = v18;
    result = sub_26C0BB9B0(v23, v22);
    v26 = v42;
    v27 = v44;
    v17 = v38;
    v29 = *(v38 + 16);
    v28 = *(v38 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_26C0CE36C((v28 > 1), v29 + 1, 1, v38);
      v17 = result;
    }

    *(v17 + 16) = v29 + 1;
    v30 = v17 + 32 * v29;
    *(v30 + 32) = bswap32(0) >> 16;
    *(v30 + 40) = v26;
    *(v30 + 48) = v24;
    *(v30 + 56) = v27;
    v15 = a1[2];
    v16 = v15 + 2;
    v18 = v25;
    if (__OFADD__(v15, 2))
    {
      goto LABEL_35;
    }
  }

  sub_26C0BB9B0(*a1, a1[1]);
  sub_26C0BB344(v42, v24);
  *a1 = v23;
  a1[1] = v22;
  a1[2] = v16;
  v42 = 0;
  v43 = 0;
  v33 = 2;
  LOBYTE(v44) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();

  v31 = 0;
  v32 = 0;
LABEL_34:
  *a2 = v31;
  *(a2 + 8) = v32;
  *(a2 + 16) = v33;
  return result;
}

uint64_t sub_26C12F8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26C1365D4();
  if ((result & 0x10000) != 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = xmmword_26C14C1D0;
  }

  else
  {
    v7 = result;
    result = sub_26C0E0978(v2, &v12, &v14);
    if (v3)
    {
      v8 = v13;
      *a1 = v12;
      *(a1 + 16) = v8;
    }

    else
    {
      v9 = v15;
      if (v15 >> 60 == 15)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 2;
        v14 = 0;
        v15 = 0;
        LOBYTE(v16) = 2;
        sub_26C0BBAF8();
        return swift_willThrowTypedImpl();
      }

      else
      {
        v10 = v16;
        v11 = v14;
        *a2 = v7;
        *(a2 + 8) = v11;
        *(a2 + 16) = v9;
        *(a2 + 24) = v10;
      }
    }
  }

  return result;
}

unint64_t sub_26C12F9D0(void *a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  if (v2 >> 60 == 15)
  {
    goto LABEL_102;
  }

  v75 = a1[4];
  v3 = a1[8];
  if (v3 >> 60 == 15)
  {
    goto LABEL_107;
  }

  v5 = a1[1];
  v4 = a1[2];
  v72 = a1[3];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[9];
  v76 = __rev16(*a1);
  v79 = MEMORY[0x277D838B0];
  v80 = MEMORY[0x277CC9C18];
  v77 = &v76;
  v78 = &v77;
  __swift_project_boxed_opaque_existential_1(&v77, MEMORY[0x277D838B0]);
  sub_26C0BB37C(v75, v2);
  v73 = v3;
  sub_26C0BB37C(v7, v3);
  v74 = v5;
  sub_26C0BBAA4(v5, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v77);
  v9 = *v1;
  v10 = v1[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v9 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v9 >> 32;
  }

  else
  {
    v12 = BYTE6(v10);
  }

  v13 = MEMORY[0x277D838B0];
  v76 = 0;
  v79 = MEMORY[0x277D838B0];
  v80 = MEMORY[0x277CC9C18];
  v77 = &v76;
  v78 = &v77;
  __swift_project_boxed_opaque_existential_1(&v77, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v77);
  v14 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v75 + 16);
      v16 = *(v75 + 24);
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v75;
    v16 = v75 >> 32;
  }

  else
  {
    v15 = 0;
    v16 = BYTE6(v2);
  }

  if (v16 < v6 || v16 < v15)
  {
    __break(1u);
    goto LABEL_91;
  }

  v71 = v2;
  v17 = sub_26C14889C();
  v19 = v18;
  sub_26C1488CC();
  v20 = v19;
  v21 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v21 != 2)
    {
LABEL_30:
      sub_26C0BB9B0(v17, v20);
      v22 = 0;
      goto LABEL_31;
    }

    v23 = v8;
    v24 = v7;
    v26 = *(v17 + 16);
    v25 = *(v17 + 24);
    sub_26C0BB9B0(v17, v20);
    v22 = v25 - v26;
    if (__OFSUB__(v25, v26))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v7 = v24;
    v8 = v23;
    goto LABEL_27;
  }

  if (v21)
  {
    sub_26C0BB9B0(v17, v19);
    if (__OFSUB__(HIDWORD(v17), v17))
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v22 = HIDWORD(v17) - v17;
LABEL_27:
    v27 = v73;
    if ((v22 & 0x8000000000000000) == 0)
    {
      if (!(v22 >> 16))
      {
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  sub_26C0BB9B0(v17, v19);
  v22 = BYTE6(v19);
LABEL_31:
  v27 = v73;
LABEL_32:
  sub_26C10064C(v22, v12);
  v28 = *v1;
  v29 = v1[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v28 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v28 >> 32;
  }

  else
  {
    v31 = BYTE6(v29);
  }

  v76 = 0;
  v79 = v13;
  v80 = MEMORY[0x277CC9C18];
  v77 = &v76;
  v78 = &v77;
  __swift_project_boxed_opaque_existential_1(&v77, v13);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v77);
  v32 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v32 == 2)
    {
      v33 = *(v7 + 16);
      v34 = *(v7 + 24);
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }
  }

  else if (v32)
  {
    v33 = v7;
    v34 = v7 >> 32;
  }

  else
  {
    v33 = 0;
    v34 = BYTE6(v27);
  }

  if (v34 < v8 || v34 < v33)
  {
    goto LABEL_92;
  }

  v70 = v7;
  v35 = sub_26C14889C();
  v37 = v36;
  sub_26C1488CC();
  v38 = v37;
  v39 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v39 != 2)
    {
      goto LABEL_59;
    }

    v40 = v22;
    v42 = *(v35 + 16);
    v41 = *(v35 + 24);
    sub_26C0BB9B0(v35, v38);
    v35 = v41 - v42;
    if (__OFSUB__(v41, v42))
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v22 = v40;
  }

  else
  {
    if (!v39)
    {
      sub_26C0BB9B0(v35, v37);
      v35 = BYTE6(v37);
      goto LABEL_60;
    }

    sub_26C0BB9B0(v35, v37);
    if (__OFSUB__(HIDWORD(v35), v35))
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      if (qword_28047A778 != -1)
      {
        swift_once();
      }

      v63 = sub_26C148A9C();
      __swift_project_value_buffer(v63, qword_28047AE08);
      v2 = sub_26C148A7C();
      v64 = sub_26C14900C();
      if (os_log_type_enabled(v2, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_26C0B5000, v2, v64, "PAKE extension missing client identity", v65, 2u);
        MEMORY[0x26D69C3A0](v65, -1, -1);
      }

      __break(1u);
LABEL_107:
      sub_26C0BBAA4(v75, v2);
      if (qword_28047A778 != -1)
      {
        swift_once();
      }

      v66 = sub_26C148A9C();
      __swift_project_value_buffer(v66, qword_28047AE08);
      v67 = sub_26C148A7C();
      v68 = sub_26C14900C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_26C0B5000, v67, v68, "PAKE extension missing server identity", v69, 2u);
        MEMORY[0x26D69C3A0](v69, -1, -1);
      }

      __break(1u);
    }

    v35 = HIDWORD(v35) - v35;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (!(v35 >> 16))
  {
    goto LABEL_60;
  }

  __break(1u);
LABEL_59:
  sub_26C0BB9B0(v35, v38);
  v35 = 0;
LABEL_60:
  sub_26C10064C(v35, v31);
  v43 = *v1;
  v44 = v1[1];
  v45 = v44 >> 62;
  if ((v44 >> 62) > 1)
  {
    if (v45 == 2)
    {
      v46 = *(v43 + 24);
    }

    else
    {
      v46 = 0;
    }
  }

  else if (v45)
  {
    v46 = v43 >> 32;
  }

  else
  {
    v46 = BYTE6(v44);
  }

  v76 = 0;
  v79 = v13;
  v80 = MEMORY[0x277CC9C18];
  v77 = &v76;
  v78 = &v77;
  __swift_project_boxed_opaque_existential_1(&v77, v13);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v77);
  v47 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v48 = v72;
    if (v47 == 2)
    {
      v49 = *(v74 + 16);
      v50 = *(v74 + 24);
    }

    else
    {
      v50 = 0;
      v49 = 0;
    }
  }

  else
  {
    v48 = v72;
    if (v47)
    {
      v49 = v74;
      v50 = v74 >> 32;
    }

    else
    {
      v49 = 0;
      v50 = BYTE6(v4);
    }
  }

  if (v50 < v48 || v50 < v49)
  {
    goto LABEL_94;
  }

  v51 = sub_26C14889C();
  v53 = v52;
  sub_26C1488CC();
  v54 = v53;
  v55 = v53 >> 62;
  if ((v53 >> 62) > 1)
  {
    if (v55 != 2)
    {
LABEL_87:
      sub_26C0BB9B0(v51, v54);
      sub_26C0BB9B0(v74, v4);
      v56 = 0;
      goto LABEL_88;
    }

    v57 = v46;
    v58 = v22;
    v60 = *(v51 + 16);
    v59 = *(v51 + 24);
    sub_26C0BB9B0(v51, v54);
    sub_26C0BB9B0(v74, v4);
    v56 = v59 - v60;
    if (__OFSUB__(v59, v60))
    {
      goto LABEL_100;
    }

    v22 = v58;
    v46 = v57;
  }

  else
  {
    if (!v55)
    {
      sub_26C0BB9B0(v51, v53);
      sub_26C0BB9B0(v74, v4);
      v56 = BYTE6(v53);
LABEL_88:
      v61 = v70;
      goto LABEL_89;
    }

    sub_26C0BB9B0(v51, v53);
    sub_26C0BB9B0(v74, v4);
    if (__OFSUB__(HIDWORD(v51), v51))
    {
      goto LABEL_101;
    }

    v56 = HIDWORD(v51) - v51;
  }

  v61 = v70;
  if ((v56 & 0x8000000000000000) != 0)
  {
    goto LABEL_95;
  }

  if (v56 >> 16)
  {
    __break(1u);
    goto LABEL_87;
  }

LABEL_89:
  sub_26C10064C(v56, v46);
  sub_26C0BB344(v75, v71);
  sub_26C0BB344(v61, v73);
  return v22 + v35 + v56 + 8;
}

uint64_t sub_26C1301BC(void *a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v8 = a2[1];
  v7 = a2[2];
  v62 = a2[3];
  LOWORD(v70) = bswap32(*a2) >> 16;
  v9 = MEMORY[0x277D838B0];
  v66 = MEMORY[0x277D838B0];
  v67 = MEMORY[0x277CC9C18];
  v64 = &v70;
  v65 = (&v70 + 2);
  __swift_project_boxed_opaque_existential_1(&v64, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  v59 = a1;
  v10 = *a1 + 2;
  if (__OFADD__(*a1, 2))
  {
    __break(1u);
    goto LABEL_97;
  }

  v11 = *a3;
  v12 = a3[1];
  v13 = v12 >> 62;
  v60 = v8;
  v61 = v7;
  if ((v12 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v11 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v11 >> 32;
  }

  else
  {
    v14 = BYTE6(v12);
  }

  LOWORD(v70) = 0;
  v66 = v9;
  v67 = MEMORY[0x277CC9C18];
  v64 = &v70;
  v65 = (&v70 + 2);
  __swift_project_boxed_opaque_existential_1(&v64, v9);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  v70 = *a4;
  v71 = *(a4 + 2);
  v15 = *(&v70 + 1) >> 62;
  if ((*(&v70 + 1) >> 62) > 1)
  {
    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_18;
    }

    v17 = *(v70 + 16);
    v16 = *(v70 + 24);
  }

  else
  {
    if (!v15)
    {
      v16 = BYTE14(v70);
      goto LABEL_18;
    }

    v17 = v70;
    v16 = v70 >> 32;
  }

  sub_26C1318B0(&v70, &v64);
  if (v16 < v17)
  {
    goto LABEL_97;
  }

LABEL_18:
  if (v16 < v71)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v18 = sub_26C14889C();
  v20 = v19;
  sub_26C1488CC();
  v21 = v20;
  v22 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v22)
    {
      sub_26C0BB9B0(v18, v20);
      sub_26C13190C(&v70);
      v18 = BYTE6(v20);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v22 != 2)
  {
    goto LABEL_31;
  }

  v24 = *(v18 + 16);
  v23 = *(v18 + 24);
  sub_26C0BB9B0(v18, v21);
  sub_26C13190C(&v70);
  v18 = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
    __break(1u);
LABEL_26:
    sub_26C0BB9B0(v18, v21);
    sub_26C13190C(&v70);
    if (__OFSUB__(HIDWORD(v18), v18))
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v18 = HIDWORD(v18) - v18;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (!(v18 >> 16))
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_31:
  sub_26C0BB9B0(v18, v21);
  sub_26C13190C(&v70);
  v18 = 0;
LABEL_32:
  sub_26C10064C(v18, v14);
  v25 = __OFADD__(v10, v18 + 2);
  v26 = v10 + v18 + 2;
  if (v25)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v27 = *a3;
  v28 = a3[1];
  v29 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v29 == 2)
    {
      v30 = *(v27 + 24);
    }

    else
    {
      v30 = 0;
    }
  }

  else if (v29)
  {
    v30 = v27 >> 32;
  }

  else
  {
    v30 = BYTE6(v28);
  }

  LOWORD(v68) = 0;
  v66 = v9;
  v67 = MEMORY[0x277CC9C18];
  v64 = &v68;
  v65 = (&v68 + 2);
  __swift_project_boxed_opaque_existential_1(&v64, v9);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  v68 = *(a4 + 24);
  v69 = *(a4 + 5);
  v31 = *(&v68 + 1) >> 62;
  if ((*(&v68 + 1) >> 62) > 1)
  {
    if (v31 != 2)
    {
      v32 = 0;
      goto LABEL_49;
    }

    v33 = *(v68 + 16);
    v32 = *(v68 + 24);
  }

  else
  {
    if (!v31)
    {
      v32 = BYTE14(v68);
      goto LABEL_49;
    }

    v33 = v68;
    v32 = v68 >> 32;
  }

  sub_26C1318B0(&v68, &v64);
  if (v32 < v33)
  {
    goto LABEL_100;
  }

LABEL_49:
  if (v32 < v69)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v34 = sub_26C14889C();
  v36 = v35;
  sub_26C1488CC();
  v37 = v36;
  v38 = v36 >> 62;
  if ((v36 >> 62) <= 1)
  {
    if (!v38)
    {
      sub_26C0BB9B0(v34, v36);
      sub_26C13190C(&v68);
      v34 = BYTE6(v36);
      goto LABEL_63;
    }

    goto LABEL_57;
  }

  if (v38 != 2)
  {
    goto LABEL_62;
  }

  v40 = *(v34 + 16);
  v39 = *(v34 + 24);
  sub_26C0BB9B0(v34, v37);
  sub_26C13190C(&v68);
  v34 = v39 - v40;
  if (__OFSUB__(v39, v40))
  {
    __break(1u);
LABEL_57:
    sub_26C0BB9B0(v34, v37);
    sub_26C13190C(&v68);
    if (__OFSUB__(HIDWORD(v34), v34))
    {
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
    }

    v34 = HIDWORD(v34) - v34;
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (!(v34 >> 16))
  {
    goto LABEL_63;
  }

  __break(1u);
LABEL_62:
  sub_26C0BB9B0(v34, v37);
  sub_26C13190C(&v68);
  v34 = 0;
LABEL_63:
  sub_26C10064C(v34, v30);
  v25 = __OFADD__(v26, v34 + 2);
  v41 = v26 + v34 + 2;
  if (v25)
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v42 = *a3;
  v43 = a3[1];
  v44 = v43 >> 62;
  if ((v43 >> 62) > 1)
  {
    v46 = v60;
    v45 = v61;
    if (v44 == 2)
    {
      v47 = *(v42 + 24);
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v46 = v60;
    v45 = v61;
    if (v44)
    {
      v47 = v42 >> 32;
    }

    else
    {
      v47 = BYTE6(v43);
    }
  }

  v63 = 0;
  v66 = v9;
  v67 = MEMORY[0x277CC9C18];
  v64 = &v63;
  v65 = &v64;
  __swift_project_boxed_opaque_existential_1(&v64, v9);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  v48 = v45 >> 62;
  if ((v45 >> 62) > 1)
  {
    if (v48 != 2)
    {
      v50 = 0;
      v49 = 0;
      goto LABEL_79;
    }

    v49 = *(v46 + 16);
    v50 = *(v46 + 24);
    goto LABEL_77;
  }

  if (v48)
  {
    v49 = v46;
    v50 = v46 >> 32;
LABEL_77:
    sub_26C0BBAA4(v46, v45);
    goto LABEL_79;
  }

  v49 = 0;
  v50 = BYTE6(v45);
LABEL_79:
  if (v50 < v62 || v50 < v49)
  {
    goto LABEL_103;
  }

  v51 = sub_26C14889C();
  v53 = v52;
  sub_26C1488CC();
  v54 = v53;
  v55 = v53 >> 62;
  if ((v53 >> 62) <= 1)
  {
    if (!v55)
    {
      sub_26C0BB9B0(v51, v53);
      sub_26C0BB9B0(v46, v45);
      v51 = BYTE6(v53);
      goto LABEL_94;
    }

    goto LABEL_88;
  }

  if (v55 != 2)
  {
    goto LABEL_93;
  }

  v57 = *(v51 + 16);
  v56 = *(v51 + 24);
  sub_26C0BB9B0(v51, v54);
  sub_26C0BB9B0(v46, v45);
  v51 = v56 - v57;
  if (__OFSUB__(v56, v57))
  {
    __break(1u);
LABEL_88:
    sub_26C0BB9B0(v51, v54);
    sub_26C0BB9B0(v46, v45);
    if (__OFSUB__(HIDWORD(v51), v51))
    {
      goto LABEL_108;
    }

    v51 = HIDWORD(v51) - v51;
  }

  if ((v51 & 0x8000000000000000) != 0)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (!(v51 >> 16))
  {
    goto LABEL_94;
  }

  __break(1u);
LABEL_93:
  sub_26C0BB9B0(v51, v54);
  sub_26C0BB9B0(v46, v45);
  v51 = 0;
LABEL_94:
  result = sub_26C10064C(v51, v47);
  if (__OFADD__(v41, v51 + 2))
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  *v59 = v41 + v51 + 2;
  return result;
}

double sub_26C130848@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_26C1365D4();
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_5;
  }

  v7 = v6;
  sub_26C0E0978(v2, &v13, &v15);
  if (v3)
  {
    v8 = v14;
    result = *&v13;
    *a1 = v13;
    *(a1 + 16) = v8;
    return result;
  }

  if (v16 >> 60 == 15 || (sub_26C0BB344(v15, v16), sub_26C0E0978(v2, &v13, &v15), v16 >> 60 == 15) || (sub_26C0BB344(v15, v16), sub_26C0E0978(v2, &v13, &v15), v10 = v16, v16 >> 60 == 15))
  {
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    v15 = 0;
    v16 = 0;
    LOBYTE(v17) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  else
  {
    v11 = v17;
    v12 = v15;
    *a2 = v7;
    *(a2 + 8) = v12;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = xmmword_26C14A540;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    result = -3.10503618e231;
    *(a2 + 64) = xmmword_26C14C1D0;
  }

  return result;
}

char *sub_26C13099C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(v5 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = BYTE6(v6);
    v10 = v5 >> 32;
    if (!v8)
    {
      v10 = v9;
    }
  }

  v11 = v10 - v7;
  if (__OFSUB__(v10, v7))
  {
    goto LABEL_45;
  }

  v64 = v3;
  if (v11 >= 0)
  {
    v12 = v10 - v7;
  }

  else
  {
    v12 = v11 + 31;
  }

  result = sub_26C0CE36C(0, (v12 >> 5) & ~(v12 >> 63), 0, MEMORY[0x277D84F90]);
  v65 = result;
  v14 = a1[1];
  v53 = *a1;
  v15 = a1[2];
  v16 = v15 + 2;
  if (__OFADD__(v15, 2))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = v14 >> 62;
  v54 = BYTE6(v14);
  v55 = v14 >> 62;
  v22 = 0xF000000000000000;
  v23 = 0xF000000000000000;
  while (v21 > 1)
  {
    if (v21 == 2)
    {
      if (*(v53 + 24) < v16)
      {
        goto LABEL_33;
      }
    }

    else if (v16 > 0)
    {
      goto LABEL_33;
    }

LABEL_23:
    v25 = *a1;
    v26 = a1[1];
    v69 = *a1;
    v70 = v26;
    if (v16 < v15)
    {
      goto LABEL_44;
    }

    v59 = v23;
    v60 = v20;
    v61 = v22;
    v62 = v18;
    v66 = v15;
    v67 = v16;
    sub_26C0BBAA4(v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v69, v70);
    a1[2] = v16;
    v28 = *a1;
    v27 = a1[1];
    sub_26C0BBAA4(*a1, v27);
    sub_26C0E09A8(a1, &v66, &v69);
    if (v64)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      v46 = v66;
      v47 = v67;
      v48 = v68;
      *a1 = v28;
      a1[1] = v27;
      a1[2] = v16;
      v69 = v46;
      v70 = v47;
      LOBYTE(v71) = v48;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB344(v60, v59);
      sub_26C0BB344(v62, v61);

      *a2 = v46;
      *(a2 + 8) = v47;
      *(a2 + 16) = v48;
      return result;
    }

    v29 = v70;
    if (v70 >> 60 == 15)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      sub_26C0BB344(v69, v29);

      *a1 = v28;
      a1[1] = v27;
      a1[2] = v16;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      v69 = 0;
      v70 = 0;
      LOBYTE(v71) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
LABEL_39:
      sub_26C0BB344(v60, v23);
      v50 = v61;
      v49 = v62;
      return sub_26C0BB344(v49, v50);
    }

    v58 = v70;
    sub_26C0BB9B0(v28, v27);
    v57 = v69;
    v30 = v71;
    v32 = *a1;
    v31 = a1[1];
    v33 = a1[2];
    sub_26C0BBAA4(*a1, v31);
    sub_26C0E09A8(a1, &v66, &v69);
    v34 = v70;
    if (v70 >> 60 == 15)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      sub_26C0BB344(v69, v34);

      *a1 = v32;
      a1[1] = v31;
      a1[2] = v33;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      v69 = 0;
      v70 = 0;
      LOBYTE(v71) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB344(v57, v58);
      goto LABEL_39;
    }

    v56 = v30;
    sub_26C0BB9B0(v32, v31);
    v35 = v69;
    v36 = v71;
    sub_26C0BB344(v60, v23);
    sub_26C0BB344(v62, v61);
    v38 = *a1;
    v37 = a1[1];
    v39 = a1[2];
    sub_26C0BBAA4(*a1, v37);
    sub_26C0E09A8(a1, &v66, &v69);
    v40 = v70;
    if (v70 >> 60 == 15)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      sub_26C0BB344(v69, v40);

      *a1 = v38;
      a1[1] = v37;
      a1[2] = v39;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      v69 = 0;
      v70 = 0;
      LOBYTE(v71) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB344(v35, v34);
      v49 = v57;
      v50 = v58;
      return sub_26C0BB344(v49, v50);
    }

    v63 = v35;
    v64 = 0;
    sub_26C0BB9B0(v38, v37);
    v41 = v69;
    v42 = v71;
    sub_26C0BBAA4(v69, v40);
    v44 = *(v65 + 2);
    v43 = *(v65 + 3);
    if (v44 >= v43 >> 1)
    {
      v65 = sub_26C0CE36C((v43 > 1), v44 + 1, 1, v65);
    }

    result = sub_26C0BB344(v41, v40);
    *(v65 + 2) = v44 + 1;
    v45 = &v65[32 * v44];
    *(v45 + 16) = bswap32(0) >> 16;
    *(v45 + 5) = v41;
    *(v45 + 6) = v40;
    *(v45 + 7) = v42;
    v17 = v56;
    v18 = v57;
    v22 = v58;
    v15 = a1[2];
    v19 = v36;
    v23 = v34;
    v20 = v63;
    v16 = v15 + 2;
    LODWORD(v21) = v55;
    if (__OFADD__(v15, 2))
    {
      goto LABEL_43;
    }
  }

  v24 = v54;
  if (v21)
  {
    v24 = v53 >> 32;
  }

  if (v24 >= v16)
  {
    goto LABEL_23;
  }

LABEL_33:
  if (v22 >> 60 != 15 && v23 >> 60 != 15)
  {
    *a3 = v18;
    a3[1] = v22;
    a3[2] = v17;
    a3[3] = v20;
    a3[4] = v23;
    a3[5] = v19;
    a3[6] = v65;
    return result;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  v69 = 0;
  v70 = 0;
  LOBYTE(v71) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0BB344(v20, v23);
  v49 = v18;
  v50 = v22;
  return sub_26C0BB344(v49, v50);
}

uint64_t sub_26C131084(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v15 = *a1;
  v16 = *(a1 + 8);
  v13 = v6;
  v14 = *(a2 + 8);
  sub_26C0BBAA4(v15, v16);
  sub_26C0BBAA4(v6, v14);
  LOBYTE(v6) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v15, &v13);
  sub_26C0BB9B0(v13, v14);
  sub_26C0BB9B0(v15, v16);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v15 = v2;
  *&v16 = v3;
  *(&v16 + 1) = v5;
  v13 = v7;
  *&v14 = v8;
  *(&v14 + 1) = v10;
  sub_26C0BBAA4(v2, v3);
  sub_26C0BBAA4(v7, v8);
  v11 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v15, &v13);
  sub_26C0BB9B0(v13, v14);
  sub_26C0BB9B0(v15, v16);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  return sub_26C0BE8D4(v4, v9);
}

BOOL sub_26C1311C4(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v30 = v2;
  v31 = v3;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v22 = *(a1 + 7);
  v23 = *(a1 + 4);
  v7 = *(a2 + 5);
  v24 = *(a2 + 4);
  v8 = *(a2 + 6);
  v20 = *(a2 + 7);
  v21 = *(a2 + 4);
  v9 = *(a2 + 1);
  v10 = *(a1 + 1);
  v28 = v10;
  v29 = *(a1 + 1);
  v26 = v9;
  v11 = v29;
  v27 = *(a2 + 1);
  v25 = v27;
  sub_26C0BBAA4(v10, v29);
  sub_26C0BBAA4(v9, v27);
  sub_26C0BBAA4(v10, v29);
  sub_26C0BBAA4(v9, v27);
  v12 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v28, &v26);
  sub_26C0BB9B0(v26, v27);
  sub_26C0BB9B0(v28, v29);
  sub_26C0BB9B0(v9, v25);
  sub_26C0BB9B0(v10, v11);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 60 != 15)
  {
    v28 = v4;
    *&v29 = v5;
    *(&v29 + 1) = v6;
    v13 = v24;
    if (v7 >> 60 != 15)
    {
      v26 = v24;
      *&v27 = v7;
      *(&v27 + 1) = v8;
      sub_26C0BB37C(v4, v5);
      sub_26C0BB37C(v24, v7);
      sub_26C0BB37C(v4, v5);
      v15 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v28, &v26);
      sub_26C0BB9B0(v26, v27);
      sub_26C0BB9B0(v28, v29);
      sub_26C0BB344(v4, v5);
      if ((v15 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    sub_26C0BB37C(v4, v5);
    sub_26C0BB37C(v24, v7);
    sub_26C0BB37C(v4, v5);
    sub_26C0BB9B0(v4, v5);
LABEL_9:
    sub_26C0BB344(v4, v5);
    sub_26C0BB344(v13, v7);
    return 0;
  }

  sub_26C0BB37C(v4, v5);
  v13 = v24;
  sub_26C0BB37C(v24, v7);
  if (v7 >> 60 != 15)
  {
    goto LABEL_9;
  }

  sub_26C0BB344(v4, v5);
LABEL_11:
  if (v23 >> 60 == 15)
  {
    v16 = v22;
    sub_26C0BB37C(v22, v23);
    v18 = v20;
    v17 = v21;
    sub_26C0BB37C(v20, v21);
    if (v21 >> 60 == 15)
    {
      sub_26C0BB344(v22, v23);
      return 1;
    }

    goto LABEL_16;
  }

  v16 = v22;
  v28 = v22;
  v29 = v23;
  v18 = v20;
  v17 = v21;
  if (v21 >> 60 == 15)
  {
    sub_26C0BB37C(v22, v23);
    sub_26C0BB37C(v20, v21);
    sub_26C0BB37C(v22, v23);
    sub_26C0BB9B0(v22, v23);
LABEL_16:
    sub_26C0BB344(v16, v23);
    sub_26C0BB344(v18, v17);
    return 0;
  }

  v26 = v20;
  v27 = v21;
  sub_26C0BB37C(v22, v23);
  sub_26C0BB37C(v20, v21);
  sub_26C0BB37C(v22, v23);
  v19 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v28, &v26);
  sub_26C0BB9B0(v26, v27);
  sub_26C0BB9B0(v28, v29);
  sub_26C0BB344(v22, v23);
  return (v19 & 1) != 0;
}

uint64_t sub_26C131574(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v28 = *(a1 + 32);
  v29 = v2;
  v4 = *(a1 + 48);
  v30 = *(a1 + 64);
  v5 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v5;
  v6 = a2[3];
  v7 = a2[1];
  v34 = a2[2];
  v35 = v6;
  v8 = a2[3];
  v36 = a2[4];
  v9 = a2[1];
  v32 = *a2;
  v33 = v9;
  v38[2] = v28;
  v38[3] = v4;
  v38[4] = *(a1 + 64);
  v38[0] = v27[0];
  v38[1] = v3;
  v44 = a2[4];
  v43 = v8;
  v42 = v34;
  v40 = v32;
  v31 = *(a1 + 80);
  v37 = *(a2 + 80);
  v39 = *(a1 + 80);
  v45 = *(a2 + 80);
  v41 = v7;
  if (v31)
  {
    if (v37)
    {
      v20 = v27[0];
      v21 = v5;
      v22 = v28;
      v23 = v29;
      v24 = *(a1 + 56);
      v25 = *(a1 + 72);
      v10 = a2[3];
      v17 = a2[2];
      v18 = v10;
      v19 = a2[4];
      v11 = a2[1];
      v15 = *a2;
      v16 = v11;
      sub_26C0FF0B0(&v32, v26);
      sub_26C0FF0B0(v27, v26);
      sub_26C0FF0B0(v27, v26);
      sub_26C0FF0B0(&v32, v26);
      v12 = sub_26C1311C4(&v20, &v15);
LABEL_7:
      v13 = v12;
      sub_26C13176C(v38);
      sub_26C1317D4(&v32);
      sub_26C1317D4(v27);
      return v13 & 1;
    }
  }

  else if ((v37 & 1) == 0)
  {
    v20 = v27[0];
    v21 = v5;
    v22 = v28;
    v23 = v29;
    v15 = v32;
    v16 = v33;
    v17 = v34;
    *&v18 = v35;
    sub_26C0FF0B0(&v32, v26);
    sub_26C0FF0B0(v27, v26);
    sub_26C0FF0B0(v27, v26);
    sub_26C0FF0B0(&v32, v26);
    v12 = sub_26C131084(&v20, &v15);
    goto LABEL_7;
  }

  sub_26C0FF0B0(v27, v26);
  sub_26C0FF0B0(&v32, v26);
  sub_26C13176C(v38);
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_26C13176C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AE40, &qword_26C14F360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C131804(uint64_t result, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  v13 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    for (i = (a2 + 48); ; i += 2)
    {
      v9 = *(i - 1);
      LOWORD(v10) = *(i - 8);
      v11 = v9;
      v12 = *i;
      sub_26C0BBAA4(v9, v12);
      sub_26C1301BC(&v13, &v10, a3, a4);
      result = sub_26C0BB9B0(v11, v12);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v13;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26C13197C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C1319C4(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t type metadata accessor for TLSRecordProtector(uint64_t a1)
{
  result = qword_28047AE60;
  if (!qword_28047AE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C131AA4(uint64_t a1)
{
  sub_26C0ED1C8(319);
  if (v1 <= 0x3F)
  {
    sub_26C131B58(319);
    if (v2 <= 0x3F)
    {
      sub_26C131BBC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26C131B58(uint64_t a1)
{
  if (!qword_28047AE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047A840, &unk_26C14A530);
    v1 = sub_26C14902C();
    if (!v2)
    {
      atomic_store(v1, &qword_28047AE70);
    }
  }
}

void sub_26C131BBC()
{
  if (!qword_2815902F8)
  {
    v0 = sub_26C14902C();
    if (!v1)
    {
      atomic_store(v0, &qword_2815902F8);
    }
  }
}

uint64_t sub_26C131C0C()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AE48);
  __swift_project_value_buffer(v0, qword_28047AE48);
  return sub_26C148A8C();
}

double sub_26C131C8C(unint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v10 = HIBYTE(a1);
  v11 = a2 >> 8;
  v14 = HIBYTE(a2);
  v15 = HIWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C0, qword_26C14C170);
  v12 = swift_allocObject();
  *&result = 12;
  *(v12 + 16) = xmmword_26C14F510;
  *(v12 + 32) = v3;
  *(v12 + 33) = v4;
  *(v12 + 34) = v5;
  *(v12 + 35) = v6;
  *(v12 + 36) = v7;
  *(v12 + 37) = v8;
  *(v12 + 38) = v9;
  *(v12 + 39) = v10;
  *(v12 + 40) = v2;
  *(v12 + 41) = v11;
  *(v12 + 42) = v15;
  *(v12 + 43) = v14;
  return result;
}

uint64_t sub_26C131D64(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 12)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = a2;
    if (qword_28047A780 != -1)
    {
      swift_once();
    }

    v4 = sub_26C148A9C();
    __swift_project_value_buffer(v4, qword_28047AE48);

    v5 = sub_26C148A7C();
    v6 = sub_26C14900C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      v8 = *(a1 + 16);

      *(v7 + 4) = v8;

      _os_log_impl(&dword_26C0B5000, v5, v6, "tried to initialize a nonce with array length %ld, but expected 12", v7, 0xCu);
      MEMORY[0x26D69C3A0](v7, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    *v3 = xmmword_26C14F520;
    *(v3 + 16) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  return v3;
}

uint64_t sub_26C131EF8(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = sub_26C131C8C(a2, a3);
  v5 = v4;
  v6 = *(v4 + 16);
  MEMORY[0x26D69BEF0](v6, v3);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      ++v7;
      sub_26C1491CC();
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_26C131F68(unint64_t a1, unsigned int a2)
{
  sub_26C1491AC();
  v4 = sub_26C131C8C(a1, a2);
  v6 = v5;
  v7 = *(v5 + 16);
  MEMORY[0x26D69BEF0](v7, v4);
  if (v7)
  {
    v8 = v6 + 32;
    do
    {
      ++v8;
      sub_26C1491CC();
      --v7;
    }

    while (v7);
  }

  return sub_26C14920C();
}

uint64_t sub_26C13200C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_26C1491AC();
  v4 = sub_26C131C8C(v2, v3);
  v6 = v5;
  v7 = *(v5 + 16);
  MEMORY[0x26D69BEF0](v7, v4);
  if (v7)
  {
    v8 = v6 + 32;
    do
    {
      ++v8;
      sub_26C1491CC();
      --v7;
    }

    while (v7);
  }

  return sub_26C14920C();
}

uint64_t sub_26C132094(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  sub_26C131C8C(*a1, *(a1 + 8));
  v5 = v4;
  sub_26C131C8C(v2, v3);
  LOBYTE(v3) = sub_26C0BC82C(v5, v6);

  return v3 & 1;
}

unint64_t sub_26C132110()
{
  result = qword_28047AE78;
  if (!qword_28047AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE78);
  }

  return result;
}

uint64_t sub_26C132164(unint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = xmmword_26C14A1B0;
  v23 = 0;
  LOBYTE(v17) = 23;
  v2 = MEMORY[0x277D838B0];
  v3 = MEMORY[0x277CC9C18];
  v20 = MEMORY[0x277D838B0];
  v21 = MEMORY[0x277CC9C18];
  v18 = &v17;
  v19 = (&v17 + 1);
  __swift_project_boxed_opaque_existential_1(&v18, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v17 = 771;
  v20 = v2;
  v21 = v3;
  v18 = &v17;
  v19 = &v18;
  __swift_project_boxed_opaque_existential_1(&v18, v2);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(a1 >> 16))
  {
    v17 = bswap32(a1) >> 16;
    v20 = v2;
    v21 = v3;
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_1(&v18, v2);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    if (qword_28047A780 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_4:
  v4 = sub_26C148A9C();
  __swift_project_value_buffer(v4, qword_28047AE48);
  v5 = sub_26C148A7C();
  v6 = sub_26C148FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_26C0E5DE8(0xD000000000000010, 0x800000026C15AA60, &v18);
    *(v7 + 12) = 2080;
    v9 = sub_26C0D52F0(771);
    v11 = sub_26C0E5DE8(v9, v10, &v18);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2048;
    *(v7 + 24) = a1;
    _os_log_impl(&dword_26C0B5000, v5, v6, "additional data: content type = %s, protocol version = %s, length = %ld", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v8, -1, -1);
    MEMORY[0x26D69C3A0](v7, -1, -1);
  }

  v12 = v22;
  v13 = *(&v22 + 1) >> 62;
  if ((*(&v22 + 1) >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_14;
    }

    v14 = *(v22 + 24);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = v22 >> 32;
  }

  if (v14 < 0)
  {
    __break(1u);
  }

LABEL_14:
  v15 = sub_26C14889C();
  sub_26C0BB9B0(v12, *(&v12 + 1));
  return v15;
}

uint64_t sub_26C132474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C148FCC();
  *(result + 16) = 12;
  *(result + 32) = 0;
  v8 = (result + 32);
  *(result + 36) = HIBYTE(a2);
  *(result + 37) = BYTE6(a2);
  *(result + 38) = BYTE5(a2);
  *(result + 39) = BYTE4(a2);
  *(result + 40) = BYTE3(a2);
  *(result + 41) = BYTE2(a2);
  *(result + 42) = BYTE1(a2);
  *(result + 43) = a2;
  v9 = *(a1 + 16);
  if (v9)
  {
    if (v9 > 0xC)
    {
      __break(1u);
      return result;
    }

    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      *v8++ ^= v11;
      --v9;
    }

    while (v9);
  }

  result = sub_26C131D64(result, &v13);
  if (v3)
  {
    v12 = v14;
    *a3 = v13;
    *(a3 + 16) = v12;
  }

  return result;
}

uint64_t sub_26C132568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(type metadata accessor for TLSRecordProtector(0) + 40));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    result = sub_26C148BCC();
    if (v7 == 4866)
    {
      if (result != 256)
      {
        v16 = 0;
        v17 = 0xE000000000000000;
        sub_26C14908C();
        MEMORY[0x26D69BC90](0xD00000000000003FLL, 0x800000026C15B050);
        sub_26C148BCC();
        v9 = sub_26C14911C();
        MEMORY[0x26D69BC90](v9);

        v10 = "LS_AES_256_GCM_SHA384: key has ";
        v11 = 0xD000000000000011;
LABEL_11:
        v14 = v10 | 0x8000000000000000;
LABEL_12:
        MEMORY[0x26D69BC90](v11, v14);
        *a3 = v16;
        *(a3 + 8) = v17;
        *(a3 + 16) = 1;
        goto LABEL_13;
      }
    }

    else if (result != 128)
    {
      result = sub_26C148BCC();
      if (result != 256)
      {
        v16 = 0;
        v17 = 0xE000000000000000;
        sub_26C14908C();
        MEMORY[0x26D69BC90](0xD00000000000002CLL, 0x800000026C15AFE0);
        sub_26C148BCC();
        v15 = sub_26C14911C();
        MEMORY[0x26D69BC90](v15);

        v10 = "c key size for AES. key has ";
        v11 = 0xD000000000000018;
        goto LABEL_11;
      }
    }

    if (*(a2 + 16) == 12)
    {
      return result;
    }

    sub_26C14908C();

    v16 = 0xD00000000000001DLL;
    v17 = 0x800000026C15B030;
    v12 = sub_26C14911C();
    MEMORY[0x26D69BC90](v12);

    MEMORY[0x26D69BC90](0x202C736574796220, 0xEE0020736465656ELL);
    v13 = sub_26C14911C();
    MEMORY[0x26D69BC90](v13);

    v11 = 46;
    v14 = 0xE100000000000000;
    goto LABEL_12;
  }

  *a3 = 0xD00000000000002ELL;
  *(a3 + 8) = 0x800000026C15AFB0;
  *(a3 + 16) = 1;
LABEL_13:
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

unint64_t sub_26C132868(unint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a1;
  v50 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_26C148BDC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = &v41 - v15;
  v16 = type metadata accessor for TLSRecordProtector(0);
  v17 = *(v4 + *(v16 + 20));
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v16;
  sub_26C133364(v4, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26C1333D4(v9);
LABEL_4:
    *a4 = 0xD00000000000002CLL;
    *(a4 + 8) = 0x800000026C15AF00;
    *(a4 + 16) = 1;
    *&v53 = 0xD00000000000002CLL;
    *(&v53 + 1) = 0x800000026C15AF00;
    v54 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return v17;
  }

  v49 = v14;
  v20 = v55;
  (*(v11 + 32))(v55, v9, v10);
  v21 = *(v52 + 16);
  if (v21 > 0x4000)
  {
    *a4 = 0xD000000000000030;
    *(a4 + 8) = 0x800000026C15AF70;
    *(a4 + 16) = 1;
    *&v53 = 0xD000000000000030;
    *(&v53 + 1) = 0x800000026C15AF70;
    v54 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    (*(v11 + 8))(v20, v10);
    return v17;
  }

  v22 = *(v18 + 32);
  v23 = *(v4 + v22);
  v24 = sub_26C132474(v17, v23, &v53);
  if (v5)
  {
    (*(v11 + 8))(v55, v10);
    v26 = v54;
    *a4 = v53;
    *(a4 + 16) = v26;
    return v17;
  }

  v27 = v21 + 1 + v51;
  v17 = v55;
  if (__OFADD__(v21 + 1, v51))
  {
    __break(1u);
  }

  else if (!__OFADD__(v27, 16))
  {
    if (v27 + 16 > 16640)
    {
      *a4 = 0xD000000000000036;
      *(a4 + 8) = 0x800000026C15AEC0;
      *(a4 + 16) = 1;
      *&v53 = 0xD000000000000036;
      *(&v53 + 1) = 0x800000026C15AEC0;
      v54 = 1;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      (*(v11 + 8))(v17, v10);
      return v17;
    }

    v45 = v27 + 16;
    v46 = v25;
    v47 = v24;
    v48 = v11;
    v42 = v4;
    v43 = v23;
    if (qword_28047A780 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_25:
  swift_once();
LABEL_15:
  v28 = sub_26C148A9C();
  __swift_project_value_buffer(v28, qword_28047AE48);

  v29 = sub_26C148A7C();
  v44 = sub_26C148FFC();
  v30 = os_log_type_enabled(v29, v44);
  v41 = v22;
  if (v30)
  {
    v31 = swift_slowAlloc();
    *v31 = 134218496;
    *(v31 + 4) = v51;
    *(v31 + 12) = 2048;
    *(v31 + 14) = v21;

    *(v31 + 22) = 2048;
    v32 = v45;
    *(v31 + 24) = v45;
    _os_log_impl(&dword_26C0B5000, v29, v44, "creating ciphertext record: paddingLength: %ld, pt len: %ld, ct len: %ld", v31, 0x20u);
    v33 = v31;
    v17 = v55;
    MEMORY[0x26D69C3A0](v33, -1, -1);
  }

  else
  {

    v32 = v45;
  }

  v34 = sub_26C132164(v32);
  v36 = v35;
  v37 = v49;
  (*(v48 + 16))(v49, v17, v10);
  v17 = sub_26C1349FC(v37, v47, v46, v34, v36, v52, v50, v51, &v53);
  v52 = v36;
  if (v17)
  {
    v51 = 0;
    v38 = *(v11 + 8);
    v38(v49, v10);
    v39 = v43;
    if (v43 == -1)
    {

      *a4 = 0xD00000000000001ELL;
      *(a4 + 8) = 0x800000026C15AF50;
      *(a4 + 16) = 1;
      *&v53 = 0xD00000000000001ELL;
      *(&v53 + 1) = 0x800000026C15AF50;
      v54 = 1;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v34, v52);
      v38(v55, v10);
    }

    else
    {
      v38(v55, v10);
      sub_26C0BB9B0(v34, v52);
      *(v42 + v41) = v39 + 1;
    }
  }

  else
  {
    v17 = 0x800000026C15AF30;
    *&v53 = 0xD000000000000018;
    *(&v53 + 1) = 0x800000026C15AF30;
    v54 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v34, v52);
    v40 = *(v11 + 8);
    v40(v49, v10);
    v40(v55, v10);
    *a4 = 0xD000000000000018;
    *(a4 + 8) = 0x800000026C15AF30;
    *(a4 + 16) = 1;
  }

  return v17;
}

NSObject *sub_26C132EFC(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_26C148BDC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TLSRecordProtector(0);
  v13 = *(&v2->isa + *(v12 + 28));
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = v12;
  sub_26C133364(v2 + *(v12 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26C1333D4(v8);
LABEL_4:
    *a2 = 0xD00000000000002DLL;
    *(a2 + 8) = 0x800000026C15AE70;
    *(a2 + 16) = 1;
    *&v39 = 0xD00000000000002DLL;
    *(&v39 + 1) = 0x800000026C15AE70;
    v40 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return v2;
  }

  v38 = a1;
  v15 = v41;
  (*(v10 + 32))(v41, v8, v9);
  v16 = *(v14 + 36);
  v17 = *(&v2->isa + v16);
  v18 = sub_26C132474(v13, v17, &v39);
  if (v3)
  {
    (*(v10 + 8))(v15, v9);
LABEL_7:
    v20 = v40;
    *a2 = v39;
    *(a2 + 16) = v20;
    return v2;
  }

  v21 = v38;
  v22 = *(v38 + 16);
  if (v22 > 0x4100)
  {
    *a2 = 0xD000000000000036;
    *(a2 + 8) = 0x800000026C15AEC0;
    *(a2 + 16) = 1;
    *&v39 = 0xD000000000000036;
    *(&v39 + 1) = 0x800000026C15AEC0;
    v40 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    (*(v10 + 8))(v41, v9);
    return v2;
  }

  v36 = v19;
  v34 = v2;
  v35 = v18;
  v37 = 0;
  v24 = v41;
  if (qword_28047A780 != -1)
  {
    swift_once();
  }

  v25 = sub_26C148A9C();
  __swift_project_value_buffer(v25, qword_28047AE48);
  v2 = sub_26C148A7C();
  v33 = sub_26C148FFC();
  if (os_log_type_enabled(v2, v33))
  {
    v32 = v22 - 17;
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    *(v26 + 4) = v32;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v22;
    _os_log_impl(&dword_26C0B5000, v2, v33, "deprotecting ciphertext record: pt len: %ld, ct len: %ld", v26, 0x16u);
    v27 = v26;
    v24 = v41;
    MEMORY[0x26D69C3A0](v27, -1, -1);
  }

  v28 = v37;
  v29 = sub_26C133E1C(v24, v35, v36, 16, v21, &v39);
  v30 = v34;
  if (v28)
  {
    (*(v10 + 8))(v24, v9);
    goto LABEL_7;
  }

  v2 = v29;
  if (v17 == -1)
  {

    *a2 = 0xD00000000000001DLL;
    *(a2 + 8) = 0x800000026C15AEA0;
    *(a2 + 16) = 1;
    *&v39 = 0xD00000000000001DLL;
    *(&v39 + 1) = 0x800000026C15AEA0;
    v40 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    (*(v10 + 8))(v24, v9);
  }

  else
  {
    (*(v10 + 8))(v24, v9);
    *(&v30->isa + v16) = (v17 + 1);
  }

  return v2;
}

uint64_t sub_26C133364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C1333D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Nonce(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Nonce(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_26C1334BC(uint64_t a1, uint64_t a2)
{
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  sub_26C1491CC();
  v3 = *(a2 + 16);
  MEMORY[0x26D69BEF0](v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      ++v4;
      sub_26C1491CC();
      --v3;
    }

    while (v3);
  }

  return sub_26C14920C();
}

uint64_t sub_26C133590()
{
  v1 = *(v0 + 8);
  sub_26C1491CC();
  sub_26C1491CC();
  sub_26C1491CC();
  result = MEMORY[0x26D69BEF0](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      ++v4;
      result = sub_26C1491CC();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26C133604(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  sub_26C1491CC();
  MEMORY[0x26D69BEF0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      ++v4;
      sub_26C1491CC();
      --v3;
    }

    while (v3);
  }

  return sub_26C14920C();
}

uint64_t sub_26C1336A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    return sub_26C0BC82C(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26C1336E8()
{
  result = qword_28047AE80;
  if (!qword_28047AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE80);
  }

  return result;
}

uint64_t sub_26C133778()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AE88);
  __swift_project_value_buffer(v0, qword_28047AE88);
  return sub_26C148A8C();
}

uint64_t (*sub_26C1337F8(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  v68 = *MEMORY[0x277D85DE8];
  v60 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v61 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v62 = &v49[-v9];
  MEMORY[0x28223BE20](v8);
  v59 = &v49[-v10];
  v57 = *(v11 + 8);
  v58 = v11 + 8;
  LOBYTE(v63) = v57(v12, v11);
  v13 = &v63;
  v14 = MEMORY[0x277D838B0];
  v15 = MEMORY[0x277CC9C18];
  v66 = MEMORY[0x277D838B0];
  v67 = MEMORY[0x277CC9C18];
  v64 = &v63;
  v65 = (&v63 + 1);
  __swift_project_boxed_opaque_existential_1(&v64, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  v55 = *(a3 + 16);
  v56 = a3 + 16;
  v63 = v55(a2, a3);
  v66 = v14;
  v67 = v15;
  v64 = &v63;
  v65 = &v64;
  __swift_project_boxed_opaque_existential_1(&v64, v14);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  v16 = *(a3 + 24);
  v17 = *(v16(a2, a3) + 16);

  if (v17 >> 16)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  v63 = bswap32(v17) >> 16;
  v66 = v14;
  v67 = MEMORY[0x277CC9C18];
  v64 = &v63;
  v65 = &v64;
  __swift_project_boxed_opaque_existential_1(&v64, v14);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  v18 = v16(a2, a3);
  v19 = v16;
  if (*(v18 + 16))
  {
    v20 = v18;
    sub_26C14888C();
    v13 = *(v20 + 16);
  }

  else
  {
    v13 = 0;
  }

  v16 = v62;
  v52 = v19;
  v53 = a3;
  v54 = a3 + 24;

  if (qword_28047A788 != -1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v21 = sub_26C148A9C();
  __swift_project_value_buffer(v21, qword_28047AE88);
  v22 = sub_26C148A7C();
  v23 = sub_26C148FFC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = v13;
    _os_log_impl(&dword_26C0B5000, v22, v23, "wrote contentlength: %ld", v24, 0xCu);
    v25 = v24;
    v16 = v62;
    MEMORY[0x26D69C3A0](v25, -1, -1);
  }

  if (__OFADD__(v13, 5))
  {
    __break(1u);
  }

  v62 = (v13 + 5);
  v26 = v59;
  v27 = v60;
  v28 = *(v60 + 16);
  v28(v59, a1, a2);
  v28(v16, a1, a2);
  v29 = v61;
  v28(v61, a1, a2);
  v30 = sub_26C148A7C();
  v31 = sub_26C148FFC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v64 = v51;
    *v32 = 136315906;
    v50 = v31;
    v33 = v53;
    v34 = v57(a2, v53);
    v35 = *(v27 + 8);
    v35(v26, a2);
    v36 = sub_26C0DA72C(v34);
    v38 = sub_26C0E5DE8(v36, v37, &v64);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2080;
    v39 = v55(a2, v33);
    v35(v16, a2);
    v40 = sub_26C0D52F0(v39);
    v42 = sub_26C0E5DE8(v40, v41, &v64);

    *(v32 + 14) = v42;
    *(v32 + 22) = 2048;
    v43 = v61;
    v44 = *(v52(a2, v33) + 16);

    v35(v43, a2);
    *(v32 + 24) = v44;
    *(v32 + 32) = 2048;
    v45 = v62;
    *(v32 + 34) = v62;
    _os_log_impl(&dword_26C0B5000, v30, v50, "wrote record with contentType: %s, protocolVersion: %s, contentLength: %ld, total: %ld", v32, 0x2Au);
    v46 = v51;
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v46, -1, -1);
    MEMORY[0x26D69C3A0](v32, -1, -1);
  }

  else
  {
    v47 = *(v27 + 8);
    v47(v29, a2);
    v47(v16, a2);
    v47(v26, a2);

    return v62;
  }

  return v45;
}

unint64_t sub_26C133E1C(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, char *a5, __int128 *a6)
{
  v84 = a6;
  v82 = a5;
  *&v81 = a4;
  v79 = a1;
  v92 = *MEMORY[0x277D85DE8];
  v9 = sub_26C148C9C();
  v80 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C148C5C();
  *&v83 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v62 - v16;
  sub_26C131C8C(a2, a3);
  *&v89 = v18;
  v19 = &unk_26C14A530;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C20]);
  sub_26C148C4C();
  if (v6)
  {

    v83 = xmmword_26C14A900;
    v89 = xmmword_26C14A900;
    LOBYTE(v90) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v20 = v84;
    *v84 = v83;
    *(v20 + 16) = 2;
    return v17;
  }

  v77 = v11;
  v75 = v9;
  v78 = v17;
  v17 = v82;
  v21 = *(v82 + 2);
  v22 = v21 - v81;
  if (v21 <= v81)
  {
    v25 = v84;
    *v84 = xmmword_26C14F6F0;
    *(v25 + 16) = 2;
    v89 = xmmword_26C14F6F0;
    LOBYTE(v90) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    (*(v83 + 8))(v78, v12);
    return v17;
  }

  v23 = v15;
  v24 = v78;
  if (__OFSUB__(v21, v81))
  {
    __break(1u);
    goto LABEL_90;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v76 = v12;
  if (v21 < v22)
  {
    goto LABEL_91;
  }

  (*(v83 + 16))(v23, v78, v76);
  *&v89 = v17;
  *(&v89 + 1) = v17 + 32;
  v90 = 0;
  v91 = (2 * v22) | 1;
  v85 = v17;
  v86 = v17 + 32;
  v87 = v22;
  v88 = (2 * v21) | 1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AEB8, &qword_26C14F710);
  sub_26C0FF1C4(&qword_28047AEC0, &qword_28047AEB8, &qword_26C14F710, MEMORY[0x277CC9ED8]);
  sub_26C148C8C();
  v26 = sub_26C132164(v21);
  v28 = v27;
  *&v89 = v26;
  *(&v89 + 1) = v27;
  sub_26C0BE710();
  result = sub_26C148C2C();
  v24 = result;
  v9 = v30;
  v22 = v30 >> 62;
  v31 = v76;
  v19 = v75;
  v32 = v80;
  if ((v30 >> 62) <= 1)
  {
    if (!v22)
    {
      v63 = v26;
      v64 = v28;
      v33 = BYTE6(v30);
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v22 != 2)
  {
    v63 = v26;
    v64 = v28;
    v33 = 0;
    goto LABEL_25;
  }

  v35 = *(result + 16);
  v34 = *(result + 24);
  v36 = __OFSUB__(v34, v35);
  v37 = v34 - v35;
  if (v36)
  {
    __break(1u);
LABEL_17:
    LODWORD(v37) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
    }

    v37 = v37;
  }

  if (v37 > 16385)
  {
    v38 = v84;
    *v84 = xmmword_26C14F700;
    *(v38 + 16) = 2;
    v89 = xmmword_26C14F700;
    LOBYTE(v90) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    swift_bridgeObjectRelease_n();
    sub_26C0BB9B0(v26, v28);
    sub_26C0BB9B0(v24, v9);
    v39 = *(v32 + 8);
    v17 = (v32 + 8);
    v39(v77, v19);
    (*(v83 + 8))(v78, v31);
    return v17;
  }

  v64 = v28;
  v63 = v26;
  if (v22 == 2)
  {
    v33 = *(result + 24);
  }

  else
  {
    v33 = result >> 32;
  }

LABEL_25:
  v11 = v33 - 1;
  if (__OFSUB__(v33, 1))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v62[1] = 0;
  if (v11 < 1)
  {
    goto LABEL_50;
  }

  if (v22 == 3)
  {
    goto LABEL_107;
  }

  v84 = result;
  v79 = result >> 32;
  *&v81 = BYTE6(v30);
  v74 = result >> 8;
  v73 = result >> 16;
  v72 = result >> 24;
  v71 = HIDWORD(result);
  v70 = result >> 40;
  v69 = HIWORD(result);
  v68 = HIBYTE(result);
  v67 = v30 >> 8;
  v66 = v30 >> 16;
  v65 = v30 >> 24;
  v19 = HIDWORD(v30);
  v40 = v30 >> 40;
  while (1)
  {
    if (v22 == 1)
    {
      if (v11 < v84 || v11 >= v79)
      {
        goto LABEL_94;
      }

      result = sub_26C1487BC();
      if (result)
      {
        v42 = result;
        v43 = sub_26C1487EC();
        v44 = v11 - v43;
        if (__OFSUB__(v11, v43))
        {
          goto LABEL_96;
        }

LABEL_29:
        if (*(v42 + v44))
        {
          goto LABEL_49;
        }

        goto LABEL_30;
      }

      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      return result;
    }

    if (v22)
    {
      break;
    }

    if (v11 >= v81)
    {
      goto LABEL_93;
    }

    LOBYTE(v89) = v24;
    BYTE1(v89) = v74;
    BYTE2(v89) = v73;
    BYTE3(v89) = v72;
    BYTE4(v89) = v71;
    BYTE5(v89) = v70;
    BYTE6(v89) = v69;
    BYTE7(v89) = v68;
    BYTE8(v89) = v9;
    BYTE9(v89) = v67;
    BYTE10(v89) = v66;
    BYTE11(v89) = v65;
    BYTE12(v89) = v19;
    BYTE13(v89) = v40;
    if (*(&v89 + v11))
    {
      goto LABEL_49;
    }

LABEL_30:
    if (v11-- <= 1)
    {
      goto LABEL_48;
    }
  }

  if (v11 < *(v24 + 16))
  {
    goto LABEL_92;
  }

  if (v11 >= *(v24 + 24))
  {
    goto LABEL_95;
  }

  result = sub_26C1487BC();
  if (!result)
  {
    goto LABEL_106;
  }

  v42 = result;
  v45 = sub_26C1487EC();
  v44 = v11 - v45;
  if (!__OFSUB__(v11, v45))
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_48:
  v11 = 0;
LABEL_49:
  v19 = v75;
LABEL_50:
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v46 = *(v24 + 24);
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = BYTE6(v9);
    if (v22)
    {
      v46 = v24 >> 32;
    }
  }

  v36 = __OFSUB__(v46, 1);
  v47 = v46 - 1;
  if (v36)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v11 == v47)
  {
    goto LABEL_81;
  }

  if (qword_28047A790 != -1)
  {
    goto LABEL_100;
  }

  while (2)
  {
    v48 = sub_26C148A9C();
    __swift_project_value_buffer(v48, qword_28047AEA0);
    sub_26C0BBAA4(v24, v9);
    v49 = sub_26C148A7C();
    v50 = sub_26C148FFC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v51;
      *v51 = 134218496;
      *(v51 + 4) = v11;
      *(v51 + 12) = 2048;
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v53 = *(v24 + 24);
        }

        else
        {
          v53 = 0;
        }
      }

      else if (v22)
      {
        v53 = v24 >> 32;
      }

      else
      {
        v53 = BYTE6(v9);
      }

      v36 = __OFSUB__(v53, 1);
      v54 = v53 - 1;
      if (v36)
      {
        goto LABEL_102;
      }

      *(v51 + 14) = v54;
      *(v51 + 22) = 2048;
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v55 = *(v24 + 24);
        }

        else
        {
          v55 = 0;
        }
      }

      else if (v22)
      {
        v55 = v24 >> 32;
      }

      else
      {
        v55 = BYTE6(v9);
      }

      v36 = __OFSUB__(v55, 1);
      v56 = v55 - 1;
      if (v36)
      {
        goto LABEL_103;
      }

      v36 = __OFSUB__(v56, v11);
      v57 = v56 - v11;
      if (v36)
      {
        goto LABEL_104;
      }

      *(v51 + 24) = v57;
      sub_26C0BB9B0(v24, v9);
      _os_log_impl(&dword_26C0B5000, v49, v50, "contentTypeIndex is: %ld. Last index is: %ld. Padding length = %ld", v52, 0x20u);
      MEMORY[0x26D69C3A0](v52, -1, -1);
    }

    else
    {
      sub_26C0BB9B0(v24, v9);
    }

LABEL_81:
    v58 = 0;
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v58 = *(v24 + 16);
LABEL_86:
        sub_26C0BBAA4(v24, v9);
      }
    }

    else if (v22)
    {
      v58 = v24;
      goto LABEL_86;
    }

    if (v11 < v58)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      swift_once();
      continue;
    }

    break;
  }

  v59 = sub_26C14889C();
  v61 = v60;
  sub_26C0BB9B0(v24, v9);
  sub_26C0BBAA4(v59, v61);
  v17 = sub_26C148778(v59, v61);
  sub_26C1488AC();
  swift_bridgeObjectRelease_n();
  sub_26C0BB9B0(v63, v64);
  sub_26C0BB9B0(v24, v9);
  sub_26C0BB9B0(v59, v61);
  (*(v80 + 8))(v77, v19);
  (*(v83 + 8))(v78, v76);
  return v17;
}

uint64_t sub_26C13497C()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AEA0);
  __swift_project_value_buffer(v0, qword_28047AEA0);
  return sub_26C148A8C();
}

uint64_t sub_26C1349FC(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, __int128 *a9)
{
  *&v54 = a8;
  v49 = a7;
  v50 = a6;
  *&v51 = a4;
  *(&v51 + 1) = a5;
  v52 = a1;
  v55 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AEC8, &qword_26C14F718);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = sub_26C148C9C();
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26C148C5C();
  v53 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C131C8C(a2, a3);
  *&v56 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C20]);
  result = sub_26C148C4C();
  if (v9)
  {

    v54 = xmmword_26C14A900;
    v56 = xmmword_26C14A900;
    v23 = 2;
    v57 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v24 = v55;
    *v55 = v54;
    *(v24 + 16) = 2;
    return v23;
  }

  v46 = v17;
  v47 = v18;
  v25 = v54;
  if ((v54 & 0x8000000000000000) == 0)
  {
    v45 = v15;
    if (v54)
    {
      v26 = sub_26C148FCC();
      *(v26 + 16) = v25;
      bzero((v26 + 32), v25);
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    v27 = v50;
    v28 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C0, qword_26C14C170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C14A550;
    *(inited + 32) = v28;
    v62 = v27;

    sub_26C0C6548(inited);
    sub_26C0C6548(v26);
    v60 = v62;
    v30 = v53;
    v31 = v20;
    v32 = v14;
    v33 = v47;
    (*(v53 + 16))(v14, v31, v47);
    (*(v30 + 56))(v14, 0, 1, v33);
    v56 = v51;
    sub_26C0BE710();
    v34 = MEMORY[0x277CC9318];
    v35 = v46;
    sub_26C148C3C();
    v55 = 0;
    sub_26C1350AC(v32);

    v36 = sub_26C148C6C();
    v38 = v37;
    v39 = sub_26C148C7C();
    v41 = v40;
    v60 = v36;
    v61 = v38;
    v58 = v34;
    v59 = MEMORY[0x277CC9300];
    *&v56 = v39;
    *(&v56 + 1) = v40;
    v42 = __swift_project_boxed_opaque_existential_1(&v56, v34);
    v43 = *v42;
    v44 = v42[1];
    sub_26C0BBAA4(v36, v38);
    sub_26C0BBAA4(v39, v41);
    sub_26C135114(v43, v44, &v60);
    sub_26C0BB9B0(v39, v41);
    sub_26C0BB9B0(v36, v38);
    __swift_destroy_boxed_opaque_existential_1(&v56);
    v23 = sub_26C148778(v60, v61);
    (*(v48 + 8))(v35, v45);
    (*(v30 + 8))(v31, v47);
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C134F50(uint64_t a1)
{
  sub_26C1491AC();
  v2 = *(a1 + 16);
  MEMORY[0x26D69BEF0](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      ++v3;
      sub_26C1491CC();
      --v2;
    }

    while (v2);
  }

  return sub_26C14920C();
}

uint64_t sub_26C134FE0()
{
  v1 = *v0;
  result = MEMORY[0x26D69BEF0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      ++v4;
      result = sub_26C1491CC();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26C135034(uint64_t a1)
{
  v2 = *v1;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      ++v4;
      sub_26C1491CC();
      --v3;
    }

    while (v3);
  }

  return sub_26C14920C();
}

uint64_t sub_26C1350AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AEC8, &qword_26C14F718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C135114(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_26C14888C();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_26C13524C(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_26C13524C(v4, v5);
  }

  return sub_26C14888C();
}

uint64_t sub_26C13524C(uint64_t a1, uint64_t a2)
{
  result = sub_26C1487BC();
  if (!result || (result = sub_26C1487EC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C1487DC();
      return sub_26C14888C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26C1352F4()
{
  result = qword_28047AED0;
  if (!qword_28047AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AED0);
  }

  return result;
}

uint64_t sub_26C135348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26C1353A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_26C135404(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_26C1488AC();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_26C13548C()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AED8);
  __swift_project_value_buffer(v0, qword_28047AED8);
  return sub_26C148A8C();
}

uint64_t sub_26C13550C(uint64_t a1)
{
  result = sub_26C135678(0, &v14);
  if (v1)
  {
    v6 = v15;
    *a1 = v14;
    *(a1 + 16) = v6;
  }

  else if (v5 == -1)
  {
    return 0;
  }

  else if (v5)
  {
    v7 = result;
    v8 = v5;
    v9 = v4;
    if (qword_28047A798 != -1)
    {
      swift_once();
    }

    v10 = sub_26C148A9C();
    __swift_project_value_buffer(v10, qword_28047AED8);
    v11 = sub_26C148A7C();
    v12 = sub_26C14900C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C0B5000, v11, v12, "unexpectedly parsed ciphertext when expecting plaintext", v13, 2u);
      MEMORY[0x26D69C3A0](v13, -1, -1);
    }

    sub_26C135AA8(v7, v9, v8);
    return 0;
  }

  else
  {
    return result & 0xFFFFFF;
  }

  return result;
}

uint64_t sub_26C135678(char a1, uint64_t a2)
{
  v4 = v3;
  v33 = 0;
  v5 = v2[1];
  if (v5 >> 60 == 15)
  {
LABEL_2:
    if (qword_28047A798 != -1)
    {
LABEL_36:
      swift_once();
    }

    v6 = sub_26C148A9C();
    __swift_project_value_buffer(v6, qword_28047AED8);
    v7 = sub_26C148A7C();
    v8 = sub_26C148FFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26C0B5000, v7, v8, "less than 5 bytes to parse, need at least 5 for any valid record, waiting for more data", v9, 2u);
      MEMORY[0x26D69C3A0](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    while (1)
    {
      v13 = *v2;
      v14 = v5 >> 62;
      if ((v5 >> 62) > 1)
      {
        if (v14 == 2)
        {
          v15 = *(v13 + 24);
        }

        else
        {
          v15 = 0;
        }
      }

      else if (v14)
      {
        v15 = v13 >> 32;
      }

      else
      {
        v15 = BYTE6(v5);
      }

      v16 = v2[2];
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 < 5)
      {
        goto LABEL_2;
      }

      sub_26C0BBAA4(*v2, v5);
      sub_26C135ACC(v2, a1 & 1, v2, &v33, v28, &v30);
      if (v4)
      {
        sub_26C0BB9B0(*v2, v2[1]);
        v21 = v28[0];
        v10 = v28[1];
        v22 = v29;
        *v2 = v13;
        v2[1] = v5;
        v2[2] = v16;
        v30 = v21;
        v31 = v10;
        v32 = v22;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        *a2 = v21;
        *(a2 + 8) = v10;
        *(a2 + 16) = v22;
        return v10;
      }

      v4 = 0;
      v10 = v30;
      v19 = v31;
      v20 = v32;
      if (v32 == 255)
      {
        sub_26C0BB9B0(*v2, v2[1]);
        *v2 = v13;
        v2[1] = v5;
        v2[2] = v16;
      }

      else
      {
        sub_26C0BB9B0(v13, v5);
      }

      if (v33 != 1)
      {
        break;
      }

      sub_26C135AA8(v10, v19, v20);
      v5 = v2[1];
      if (v5 >> 60 == 15)
      {
        goto LABEL_2;
      }
    }

    result = *v2;
    v23 = v2[1];
    v24 = v2[2];
    if (v23 >> 60 == 15)
    {
LABEL_34:
      sub_26C0BB344(result, v23);
      *v2 = xmmword_26C14A1B0;
      v2[2] = 0;
      return v10;
    }

    v25 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v25 == 2)
      {
        v26 = *(result + 24);
      }

      else
      {
        v26 = 0;
      }
    }

    else if (v25)
    {
      v26 = result >> 32;
    }

    else
    {
      v26 = BYTE6(v23);
    }

    if (!__OFSUB__(v26, v24))
    {
      if (v26 != v24)
      {
        return v10;
      }

      goto LABEL_34;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26C13594C(uint64_t a1)
{
  result = sub_26C135678(1, &v14);
  if (v1)
  {
    v6 = v15;
    *a1 = v14;
    *(a1 + 16) = v6;
  }

  else if (v5 == -1)
  {
    return 0;
  }

  else if ((v5 & 1) == 0)
  {
    v7 = v4;
    v8 = v5;
    v9 = result;
    if (qword_28047A798 != -1)
    {
      swift_once();
    }

    v10 = sub_26C148A9C();
    __swift_project_value_buffer(v10, qword_28047AED8);
    v11 = sub_26C148A7C();
    v12 = sub_26C14900C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C0B5000, v11, v12, "unexpectedly parsed plaintext when expecting ciphertext", v13, 2u);
      MEMORY[0x26D69C3A0](v13, -1, -1);
    }

    sub_26C135AA8(v9, v7, v8);
    return 0;
  }

  return result;
}

uint64_t sub_26C135AA8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26C135AC0(result, a2, a3 & 1);
  }

  return result;
}

void sub_26C135ACC(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a2;
  v11 = sub_26C1368E8();
  if ((v11 & 0x100) != 0 || (v12 = v11, v13 = sub_26C1365D4(), (v13 & 0x10000) != 0))
  {
    if (qword_28047A798 != -1)
    {
      swift_once();
    }

    v20 = sub_26C148A9C();
    __swift_project_value_buffer(v20, qword_28047AED8);
    v16 = sub_26C148A7C();
    v17 = sub_26C14900C();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "failed to parse contentType and protocolVersion";
    goto LABEL_13;
  }

  v14 = v13;
  if (v12 == 23 && (v99 & 1) == 0)
  {
    if (qword_28047A798 != -1)
    {
      swift_once();
    }

    v15 = sub_26C148A9C();
    __swift_project_value_buffer(v15, qword_28047AED8);
    v16 = sub_26C148A7C();
    v17 = sub_26C14900C();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "record protection not enabled and received record with content type application data";
    goto LABEL_13;
  }

  if (qword_28047A798 != -1)
  {
    swift_once();
  }

  v22 = sub_26C148A9C();
  __swift_project_value_buffer(v22, qword_28047AED8);
  v23 = sub_26C148A7C();
  v24 = sub_26C148FEC();
  v95 = a3;
  v96 = a6;
  v94 = a4;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v97 = v26;
    *v25 = 136315138;
    v27 = sub_26C0D52F0(bswap32(v14) >> 16);
    v29 = sub_26C0E5DE8(v27, v28, &v97);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_26C0B5000, v23, v24, "protocolVersion is %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x26D69C3A0](v26, -1, -1);
    MEMORY[0x26D69C3A0](v25, -1, -1);
  }

  v30 = sub_26C148A7C();
  v31 = sub_26C148FEC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v97 = v33;
    *v32 = 136315138;
    v34 = sub_26C0DA72C(v12);
    v36 = sub_26C0E5DE8(v34, v35, &v97);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_26C0B5000, v30, v31, "content type is %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x26D69C3A0](v33, -1, -1);
    MEMORY[0x26D69C3A0](v32, -1, -1);
  }

  LODWORD(v37) = sub_26C1365D4();
  v16 = sub_26C148A7C();
  if ((v37 & 0x10000) != 0)
  {
    v17 = sub_26C14900C();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "unable to read content length";
LABEL_13:
    _os_log_impl(&dword_26C0B5000, v16, v17, v19, v18, 2u);
    MEMORY[0x26D69C3A0](v18, -1, -1);
LABEL_14:

    v21 = xmmword_26C14F7D0;
LABEL_15:
    *a5 = v21;
    *(a5 + 16) = 2;
    v97 = v21;
    LOBYTE(v98) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return;
  }

  v38 = v37;
  v39 = sub_26C148FEC();
  if (os_log_type_enabled(v16, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 33554688;
    *(v40 + 4) = v37;
    _os_log_impl(&dword_26C0B5000, v16, v39, "content length is: %hu", v40, 6u);
    MEMORY[0x26D69C3A0](v40, -1, -1);
  }

  if ((v99 & 1) == 0)
  {
    if (v37 <= 0x4000u)
    {
      goto LABEL_41;
    }

    v41 = 0x4000;
LABEL_32:
    v42 = sub_26C148A7C();
    v43 = sub_26C14900C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v97 = v45;
      *v44 = 33555202;
      *(v44 + 4) = v38;
      *(v44 + 6) = 512;
      *(v44 + 8) = v41;
      *(v44 + 10) = 2080;
      if (v99)
      {
        v46 = 0x6574726568706963;
      }

      else
      {
        v46 = 0x7865746E69616C70;
      }

      if (v99)
      {
        v47 = 0xEA00000000007478;
      }

      else
      {
        v47 = 0xE900000000000074;
      }

      v48 = sub_26C0E5DE8(v46, v47, &v97);

      *(v44 + 12) = v48;
      _os_log_impl(&dword_26C0B5000, v42, v43, "contentLength (%hu bytes) exceeds maximum length of %hu bytes for %s messages", v44, 0x14u);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x26D69C3A0](v45, -1, -1);
      MEMORY[0x26D69C3A0](v44, -1, -1);
    }

    v21 = xmmword_26C14F700;
    goto LABEL_15;
  }

  v41 = 16640;
  if (v37 > 0x4100u)
  {
    goto LABEL_32;
  }

LABEL_41:
  v37 = v37;
  sub_26C0DE248(v37, &v97);
  v49 = *(&v97 + 1);
  if (*(&v97 + 1) >> 60 == 15)
  {
    v50 = sub_26C148A7C();
    v51 = sub_26C148FEC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v37;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26C0B5000, v50, v51, "unable to read full content, waiting for more data", v53, 2u);
      v54 = v53;
      v37 = v52;
      MEMORY[0x26D69C3A0](v54, -1, -1);
    }

    v55 = *a1;
    v56 = a1[1];
    v57 = a1[2];
    v58 = v56 >> 62;
    if ((v56 >> 62) > 1)
    {
      if (v58 == 2)
      {
        v59 = *(v55 + 24);
      }

      else
      {
        v59 = 0;
      }
    }

    else if (v58)
    {
      v59 = v55 >> 32;
    }

    else
    {
      v59 = BYTE6(v56);
    }

    v67 = __OFSUB__(v59, v57);
    v68 = v59 - v57;
    if (v67)
    {
      __break(1u);
    }

    else
    {
      v67 = __OFSUB__(v37, v68);
      v69 = v37 - v68;
      if (!v67)
      {
        *(v95 + 24) = v69;
        *v96 = 0;
        *(v96 + 8) = 0;
        *(v96 + 16) = -1;
        return;
      }
    }

    __break(1u);
    goto LABEL_111;
  }

  v60 = v97;
  v61 = v98;
  *(v95 + 24) = 5;
  if (v12 == 20)
  {
    v62 = v60;
    if (v38 == 1)
    {
      v63 = v49 >> 62;
      if ((v49 >> 62) > 1)
      {
        if (v63 == 2)
        {
          v64 = *(v60 + 24);
        }

        else
        {
          v64 = 0;
        }
      }

      else if (v63)
      {
        v64 = v60 >> 32;
      }

      else
      {
        v64 = BYTE6(v49);
      }

      if (v64 < v61)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v71 = sub_26C14889C();
      v73 = v72;
      v74 = sub_26C135404(v71, v72);
      sub_26C0BB9B0(v71, v73);
      if ((v74 & 0x1FF) == 1)
      {
        v75 = sub_26C148A7C();
        v76 = sub_26C148FEC();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_26C0B5000, v75, v76, "got a change cipher spec message with value 0x01, ignoring", v77, 2u);
          MEMORY[0x26D69C3A0](v77, -1, -1);
        }

        *v94 = 1;
        if (v63 > 1)
        {
          if (v63 == 2)
          {
            v78 = *(v62 + 24);
          }

          else
          {
            v78 = 0;
          }
        }

        else if (v63)
        {
          v78 = v62 >> 32;
        }

        else
        {
          v78 = BYTE6(v49);
        }

        if (v78 >= v61)
        {
          v88 = sub_26C14889C();
          v90 = sub_26C148778(v88, v89);
          sub_26C0BB344(v62, v49);
          *v96 = 197396;
          *(v96 + 8) = v90;
          *(v96 + 16) = 0;
          return;
        }

        goto LABEL_114;
      }
    }

    v79 = sub_26C148A7C();
    v80 = sub_26C148FFC();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_26C0B5000, v79, v80, "received unexpected change cipher spec message", v81, 2u);
      MEMORY[0x26D69C3A0](v81, -1, -1);
    }

    *a5 = xmmword_26C14A560;
    *(a5 + 16) = 2;
    v97 = xmmword_26C14A560;
    LOBYTE(v98) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v82 = v62;
LABEL_90:
    sub_26C0BB344(v82, v49);
    return;
  }

  *v94 = 0;
  v65 = v49 >> 62;
  if ((v99 & 1) == 0)
  {
    if (v65 > 1)
    {
      if (v65 == 2)
      {
        v70 = *(v60 + 24);
      }

      else
      {
        v70 = 0;
      }
    }

    else if (v65)
    {
      v70 = v60 >> 32;
    }

    else
    {
      v70 = BYTE6(v49);
    }

    if (v70 >= v61)
    {
      v85 = sub_26C14889C();
      v87 = sub_26C148778(v85, v86);
      sub_26C0BB344(v60, v49);
      *v96 = v12 | 0x30300;
      *(v96 + 8) = v87;
      *(v96 + 16) = 0;
      return;
    }

    goto LABEL_113;
  }

  if (v65 > 1)
  {
    if (v65 == 2)
    {
      v66 = *(v60 + 24);
    }

    else
    {
      v66 = 0;
    }
  }

  else if (v65)
  {
    v66 = v60 >> 32;
  }

  else
  {
    v66 = BYTE6(v49);
  }

  v67 = __OFSUB__(v66, v61);
  v83 = v66 - v61;
  if (v67)
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (v83 < 16)
  {
    *a5 = xmmword_26C14F6F0;
    *(a5 + 16) = 2;
    v97 = xmmword_26C14F6F0;
    LOBYTE(v98) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v82 = v60;
    goto LABEL_90;
  }

  if (v65 > 1)
  {
    if (v65 == 2)
    {
      v84 = *(v60 + 24);
    }

    else
    {
      v84 = 0;
    }
  }

  else if (v65)
  {
    v84 = v60 >> 32;
  }

  else
  {
    v84 = BYTE6(v49);
  }

  if (v84 >= v61)
  {
    v91 = sub_26C14889C();
    v93 = sub_26C148778(v91, v92);
    sub_26C0BB344(v60, v49);
    *v96 = v93;
    *(v96 + 8) = 0;
    *(v96 + 16) = 1;
    return;
  }

LABEL_115:
  __break(1u);
}

uint64_t sub_26C1365D4()
{
  v1 = v0[2];
  v2 = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    return v8 | (v7 << 16);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26C0BBAA4(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
  sub_26C0BE710();
  sub_26C0FF1C4(&qword_28047A7D8, &qword_28047A7C8, &qword_26C149F40, MEMORY[0x277D83D30]);
  sub_26C14878C();
  sub_26C0BB9B0(v10, v11);
  v7 = 0;
  v8 = bswap32(0) >> 16;
  v0[2] = v2;
  return v8 | (v7 << 16);
}

unint64_t sub_26C13675C()
{
  v1 = v0[2];
  v2 = v1 + 4;
  if (__OFADD__(v1, 4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    return v8 | (v7 << 32);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26C0BBAA4(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
  sub_26C0BE710();
  sub_26C0FF1C4(&qword_28047A7D8, &qword_28047A7C8, &qword_26C149F40, MEMORY[0x277D83D30]);
  sub_26C14878C();
  sub_26C0BB9B0(v10, v11);
  v7 = 0;
  v8 = bswap32(0);
  v0[2] = v2;
  return v8 | (v7 << 32);
}

uint64_t sub_26C1368E8()
{
  v1 = v0[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    return (v7 << 8);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = *v0;
  v10 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26C0BBAA4(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
  sub_26C0BE710();
  sub_26C0FF1C4(&qword_28047A7D8, &qword_28047A7C8, &qword_26C149F40, MEMORY[0x277D83D30]);
  sub_26C14878C();
  sub_26C0BB9B0(v9, v10);
  v7 = 0;
  v0[2] = v2;
  return (v7 << 8);
}

unint64_t sub_26C136A68()
{
  v1 = v0[2];
  v2 = v1 + 8;
  if (__OFADD__(v1, 8))
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v5)
    {
      v6 = v3 >> 32;
    }

    else
    {
      v6 = BYTE6(v4);
    }

    if (v6 >= v2)
    {
LABEL_7:
      v8 = *v0;
      v9 = v0[1];
      if (v2 >= v1)
      {
        sub_26C0BBAA4(v3, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
        sub_26C0BE710();
        sub_26C0FF1C4(&qword_28047A7D8, &qword_28047A7C8, &qword_26C149F40, MEMORY[0x277D83D30]);
        sub_26C14878C();
        sub_26C0BB9B0(v8, v9);
        result = bswap64(0);
        v0[2] = v2;
        return result;
      }

LABEL_16:
      __break(1u);
    }
  }

  return 0;
}

uint64_t sub_26C136BE8@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v12 = sub_26C0CDAAC(0, 514, 0, MEMORY[0x277D84F90]);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a4 >> 16;
    if (!(a4 >> 16))
    {
      v5 = v12;
      v6 = *(v12 + 2);
      v13 = *(v12 + 3);
      v14 = v13 >> 1;
      v7 = v6 + 1;
      if (v13 >> 1 > v6)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v5 = sub_26C0CDAAC((v13 > 1), v7, 1, v5);
  v13 = *(v5 + 3);
  v14 = v13 >> 1;
LABEL_4:
  *(v5 + 2) = v7;
  v5[v6 + 32] = BYTE1(a4);
  v15 = v6 + 2;
  if (v14 < (v6 + 2))
  {
    v5 = sub_26C0CDAAC((v13 > 1), v6 + 2, 1, v5);
  }

  *(v5 + 2) = v15;
  v5[v7 + 32] = a4;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v16 = sub_26C148F6C();
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v16 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v16 = HIBYTE(a3) & 0xF;
LABEL_12:
  LODWORD(v6) = v16 + 6;
  if ((v6 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a5 = *(v5 + 2);
  v15 = *(v5 + 3);
  v7 = a5 + 1;

  if (a5 >= v15 >> 1)
  {
LABEL_21:
    v5 = sub_26C0CDAAC((v15 > 1), v7, 1, v5);
  }

  *(v5 + 2) = v7;
  v5[a5 + 32] = v6;
  sub_26C0C6040(0x203331736C74, 0xE600000000000000);
  v17 = sub_26C0C6040(a2, a3);
  MEMORY[0x28223BE20](v17);
  sub_26C148B5C();
  sub_26C13F1B8(&qword_28047AF28, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  sub_26C14880C();
  sub_26C148E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A838, &qword_26C14A528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C13F1B8(&qword_28047A848, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_26C0FF1C4(&qword_28047AF30, &qword_28047A838, &qword_26C14A528, MEMORY[0x277CC53C0]);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C20]);
  sub_26C148CDC();
}

uint64_t sub_26C136F6C@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v14 = sub_26C0CDAAC(0, 514, 0, MEMORY[0x277D84F90]);
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = a5 >> 16;
    if (!(a5 >> 16))
    {
      v6 = v14;
      v7 = *(v14 + 2);
      v15 = *(v14 + 3);
      v16 = v15 >> 1;
      v8 = v7 + 1;
      if (v15 >> 1 > v7)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  v6 = sub_26C0CDAAC((v15 > 1), v8, 1, v6);
  v15 = *(v6 + 3);
  v16 = v15 >> 1;
LABEL_4:
  *(v6 + 2) = v8;
  v6[v7 + 32] = BYTE1(a5);
  v17 = v7 + 2;
  if (v16 < (v7 + 2))
  {
    v6 = sub_26C0CDAAC((v15 > 1), v7 + 2, 1, v6);
  }

  *(v6 + 2) = v17;
  v6[v8 + 32] = a5;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v18 = sub_26C148F6C();
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v18 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v18 = HIBYTE(a3) & 0xF;
LABEL_12:
  LOBYTE(v7) = v18 + 6;
  if (((v18 + 6) & 0x100) == 0)
  {
    v17 = *(v6 + 2);
    a6 = *(v6 + 3);
    v8 = v17 + 1;

    if (v17 < a6 >> 1)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  v6 = sub_26C0CDAAC((a6 > 1), v8, 1, v6);
LABEL_14:
  *(v6 + 2) = v8;
  v6[v17 + 32] = v7;
  v24 = v6;
  sub_26C0C6040(0x203331736C74, 0xE600000000000000);
  v19 = &v24;
  sub_26C0C6040(a2, a3);
  v20 = *(a4 + 16);
  if (v20 > 0xFF)
  {
    __break(1u);
  }

  else
  {
    v19 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_16;
    }
  }

  v19 = sub_26C0CDAAC(0, *(v19 + 2) + 1, 1, v19);
LABEL_16:
  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    v19 = sub_26C0CDAAC((v21 > 1), v22 + 1, 1, v19);
  }

  *(v19 + 2) = v22 + 1;
  v19[v22 + 32] = v20;
  v24 = v19;
  sub_26C0C62A0((a4 + 32), (a4 + 32 + v20));
  sub_26C148E9C();
  sub_26C148BDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C13F1B8(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  sub_26C13F1B8(&qword_28047AC00, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C20]);
  sub_26C148CDC();
}

uint64_t sub_26C1372CC@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v12 = sub_26C0CDAAC(0, 514, 0, MEMORY[0x277D84F90]);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a4 >> 16;
    if (!(a4 >> 16))
    {
      v5 = v12;
      v6 = *(v12 + 2);
      v13 = *(v12 + 3);
      v14 = v13 >> 1;
      v7 = v6 + 1;
      if (v13 >> 1 > v6)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v5 = sub_26C0CDAAC((v13 > 1), v7, 1, v5);
  v13 = *(v5 + 3);
  v14 = v13 >> 1;
LABEL_4:
  *(v5 + 2) = v7;
  v5[v6 + 32] = BYTE1(a4);
  v15 = v6 + 2;
  if (v14 < (v6 + 2))
  {
    v5 = sub_26C0CDAAC((v13 > 1), v6 + 2, 1, v5);
  }

  *(v5 + 2) = v15;
  v5[v7 + 32] = a4;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v16 = sub_26C148F6C();
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v16 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v16 = HIBYTE(a3) & 0xF;
LABEL_12:
  LODWORD(v6) = v16 + 6;
  if ((v6 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a5 = *(v5 + 2);
  v15 = *(v5 + 3);
  v7 = a5 + 1;

  if (a5 >= v15 >> 1)
  {
LABEL_21:
    v5 = sub_26C0CDAAC((v15 > 1), v7, 1, v5);
  }

  *(v5 + 2) = v7;
  v5[a5 + 32] = v6;
  sub_26C0C6040(0x203331736C74, 0xE600000000000000);
  v17 = sub_26C0C6040(a2, a3);
  MEMORY[0x28223BE20](v17);
  sub_26C148B6C();
  sub_26C13F1B8(&qword_28047A9D0, MEMORY[0x277CC52C8], MEMORY[0x277CC52B8]);
  sub_26C14880C();
  sub_26C148E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C13F1B8(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110, MEMORY[0x277CC53C0]);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C20]);
  sub_26C148CDC();
}

uint64_t sub_26C137650@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v12 = sub_26C0CDAAC(0, 514, 0, MEMORY[0x277D84F90]);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a4 >> 16;
    if (!(a4 >> 16))
    {
      v5 = v12;
      v6 = *(v12 + 2);
      v13 = *(v12 + 3);
      v14 = v13 >> 1;
      v7 = v6 + 1;
      if (v13 >> 1 > v6)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v5 = sub_26C0CDAAC((v13 > 1), v7, 1, v5);
  v13 = *(v5 + 3);
  v14 = v13 >> 1;
LABEL_4:
  *(v5 + 2) = v7;
  v5[v6 + 32] = BYTE1(a4);
  v15 = v6 + 2;
  if (v14 < (v6 + 2))
  {
    v5 = sub_26C0CDAAC((v13 > 1), v6 + 2, 1, v5);
  }

  *(v5 + 2) = v15;
  v5[v7 + 32] = a4;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v16 = sub_26C148F6C();
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v16 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v16 = HIBYTE(a3) & 0xF;
LABEL_12:
  LODWORD(v6) = v16 + 6;
  if ((v6 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(v5 + 2);
  a5 = *(v5 + 3);
  v7 = v15 + 1;

  if (v15 >= a5 >> 1)
  {
LABEL_21:
    v5 = sub_26C0CDAAC((a5 > 1), v7, 1, v5);
  }

  *(v5 + 2) = v7;
  v5[v15 + 32] = v6;
  sub_26C0C6040(0x203331736C74, 0xE600000000000000);
  v17 = sub_26C0C6040(a2, a3);
  MEMORY[0x28223BE20](v17);
  sub_26C148B6C();
  sub_26C13F1B8(&qword_28047A9D0, MEMORY[0x277CC52C8], MEMORY[0x277CC52B8]);
  sub_26C14880C();
  sub_26C148E9C();
  sub_26C148BDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C13F1B8(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  sub_26C13F1B8(&qword_28047AC00, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C20]);
  sub_26C148CDC();
}

uint64_t sub_26C1379CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v16 = sub_26C0CDAAC(0, 514, 0, MEMORY[0x277D84F90]);
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v17 = a6 >> 16;
    if (!(a6 >> 16))
    {
      v7 = v16;
      a7 = *(v16 + 2);
      v17 = *(v16 + 3);
      v18 = v17 >> 1;
      v8 = a7 + 1;
      if (v17 >> 1 > a7)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v7 = sub_26C0CDAAC((v17 > 1), v8, 1, v7);
  v17 = *(v7 + 3);
  v18 = v17 >> 1;
LABEL_4:
  *(v7 + 2) = v8;
  v7[a7 + 32] = BYTE1(a6);
  v19 = a7 + 2;
  if (v18 < (a7 + 2))
  {
    v7 = sub_26C0CDAAC((v17 > 1), a7 + 2, 1, v7);
  }

  *(v7 + 2) = v19;
  v7[v8 + 32] = a6;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v20 = sub_26C148F6C();
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v20 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v20 = HIBYTE(a3) & 0xF;
LABEL_12:
  LODWORD(a7) = v20 + 6;
  if ((a7 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + 2);
  a1 = *(v7 + 3);
  v8 = v19 + 1;

  if (v19 >= a1 >> 1)
  {
LABEL_21:
    v7 = sub_26C0CDAAC((a1 > 1), v8, 1, v7);
  }

  *(v7 + 2) = v8;
  v7[v19 + 32] = a7;
  v22 = v7;
  sub_26C0C6040(0x203331736C74, 0xE600000000000000);
  sub_26C0C6040(a2, a3);
  sub_26C13EAE4(a4, a5, &v22);
  sub_26C148E9C();
  sub_26C148BDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C13F1B8(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  sub_26C13F1B8(&qword_28047AC00, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C20]);
  sub_26C148CDC();
}

unint64_t sub_26C137CB8(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  LOBYTE(v17) = 23;
  v2 = MEMORY[0x277D838B0];
  v3 = MEMORY[0x277CC9C18];
  v20 = MEMORY[0x277D838B0];
  v21 = MEMORY[0x277CC9C18];
  v18 = &v17;
  v19 = (&v17 + 1);
  __swift_project_boxed_opaque_existential_1(&v18, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v17 = 771;
  v20 = v2;
  v21 = v3;
  v18 = &v17;
  v19 = &v18;
  __swift_project_boxed_opaque_existential_1(&v18, v2);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v4 = *(a1 + 16);
  if (v4 >> 16)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v17 = bswap32(v4) >> 16;
  v20 = v2;
  v21 = v3;
  v18 = &v17;
  v19 = &v18;
  __swift_project_boxed_opaque_existential_1(&v18, v2);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  if (v4)
  {
    sub_26C14888C();
  }

  if (qword_28047A788 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = sub_26C148A9C();
  __swift_project_value_buffer(v5, qword_28047AE88);
  v6 = sub_26C148A7C();
  v7 = sub_26C148FFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_26C0B5000, v6, v7, "wrote contentlength: %ld", v8, 0xCu);
    MEMORY[0x26D69C3A0](v8, -1, -1);
  }

  swift_bridgeObjectRetain_n();
  v9 = sub_26C148A7C();
  v10 = sub_26C148FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315906;
    *(v11 + 4) = sub_26C0E5DE8(0xD000000000000010, 0x800000026C15AA60, &v18);
    *(v11 + 12) = 2080;
    v13 = sub_26C0D52F0(771);
    v15 = sub_26C0E5DE8(v13, v14, &v18);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2048;

    *(v11 + 24) = v4;

    *(v11 + 32) = 2048;
    *(v11 + 34) = v4 + 5;
    _os_log_impl(&dword_26C0B5000, v9, v10, "wrote record with contentType: %s, protocolVersion: %s, contentLength: %ld, total: %ld", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v12, -1, -1);
    MEMORY[0x26D69C3A0](v11, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  return v4 + 5;
}

uint64_t sub_26C138004()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AEF0);
  __swift_project_value_buffer(v0, qword_28047AEF0);
  return sub_26C148A8C();
}

uint64_t TLSRecordHandler.pendingApplicationDataBytes.getter()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler(0) + 40));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TLSRecordHandler(uint64_t a1)
{
  result = qword_28047AF08;
  if (!qword_28047AF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void TLSRecordHandler.receivedApplicationData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TLSRecordHandler(0) + 44);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  sub_26C0BBAA4(v4, v5);
}

__n128 TLSRecordHandler.receivedApplicationData.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for TLSRecordHandler(0) + 44));
  sub_26C0BB9B0(*v3, v3[1]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t TLSRecordHandler.outgoingBytesCount.getter()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler(0) + 48));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}

unint64_t TLSRecordHandler.bytesToReadCount.getter()
{
  result = *(v0 + *(type metadata accessor for TLSRecordHandler(0) + 20) + 24);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t TLSRecordHandler.getNegotiatedCiphersuite.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v1, v10, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v10, v4, type metadata accessor for ServerHandshakeStateMachine);
    v11 = ServerHandshakeStateMachine.negotiatedCiphersuite.getter();
    v12 = type metadata accessor for ServerHandshakeStateMachine;
    v13 = v4;
  }

  else
  {
    sub_26C13F0CC(v10, v7, type metadata accessor for HandshakeStateMachine);
    v11 = HandshakeStateMachine.negotiatedCiphersuite.getter();
    v12 = type metadata accessor for HandshakeStateMachine;
    v13 = v7;
  }

  sub_26C13F06C(v13, v12);
  if ((v11 & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t TLSRecordHandler.getNegotiatedPAKE.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26C13F134(v1, v10, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v10, v4, type metadata accessor for ServerHandshakeStateMachine);
    v11 = ServerHandshakeStateMachine.negotiatedPAKE.getter();
    v12 = type metadata accessor for ServerHandshakeStateMachine;
    v13 = v4;
  }

  else
  {
    sub_26C13F0CC(v10, v7, type metadata accessor for HandshakeStateMachine);
    v11 = HandshakeStateMachine.negotiatedPAKE.getter();
    v12 = type metadata accessor for HandshakeStateMachine;
    v13 = v7;
  }

  sub_26C13F06C(v13, v12);
  return v11 & 0x1FFFF;
}

uint64_t TLSRecordHandler.getNegotiatedEPSK.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v27);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v1, v18, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v18, v4, type metadata accessor for ServerHandshakeStateMachine);
    v19 = ServerHandshakeStateMachine.negotiatedEPSK.getter();
    v20 = type metadata accessor for ServerHandshakeStateMachine;
    v21 = v4;
LABEL_13:
    sub_26C13F06C(v21, v20);
    return v19 & 1;
  }

  sub_26C13F0CC(v18, v15, type metadata accessor for HandshakeStateMachine);
  sub_26C13F134(&v15[*(v13 + 24)], v12, type metadata accessor for HandshakeState);
  sub_26C13F06C(v15, type metadata accessor for HandshakeStateMachine);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      sub_26C13F0CC(v12, v9, type metadata accessor for HandshakeState.ServerHelloState);
      v19 = v9[*(v7 + 36)];
      v20 = type metadata accessor for HandshakeState.ServerHelloState;
      v21 = v9;
      goto LABEL_13;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v23 = v28;
      sub_26C13F0CC(v12, v28, type metadata accessor for HandshakeState.ReadyState);
      v19 = *(v23 + *(ready + 52));
      v24 = type metadata accessor for HandshakeState.ReadyState;
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v23 = v26;
    sub_26C13F0CC(v12, v26, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v19 = *(v23 + *(v27 + 40));
    v24 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
LABEL_12:
    v20 = v24;
    v21 = v23;
    goto LABEL_13;
  }

  sub_26C13F06C(v12, type metadata accessor for HandshakeState);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_26C138B38(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v5, v14, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_26C13F0CC(v14, v8, type metadata accessor for ServerHandshakeStateMachine);
    v16 = a2(v15);
    v17 = type metadata accessor for ServerHandshakeStateMachine;
    v18 = v8;
  }

  else
  {
    v19 = sub_26C13F0CC(v14, v11, type metadata accessor for HandshakeStateMachine);
    v16 = a1(v19);
    v17 = type metadata accessor for HandshakeStateMachine;
    v18 = v11;
  }

  sub_26C13F06C(v18, v17);
  return v16 & 1;
}

uint64_t TLSRecordHandler.getNegotiatedGroup.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v1, v10, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v10, v4, type metadata accessor for ServerHandshakeStateMachine);
    v11 = ServerHandshakeStateMachine.negotiatedGroup.getter();
    v13 = v12;
    v14 = type metadata accessor for ServerHandshakeStateMachine;
    v15 = v4;
  }

  else
  {
    sub_26C13F0CC(v10, v7, type metadata accessor for HandshakeStateMachine);
    v11 = HandshakeStateMachine.negotiatedGroup.getter();
    v13 = v16;
    v14 = type metadata accessor for HandshakeStateMachine;
    v15 = v7;
  }

  sub_26C13F06C(v15, v14);
  if (v13)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t TLSRecordHandler.writeOutput()()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler(0) + 48));
  v2 = *v1;
  v3 = v1[1];
  result = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v2 >> 32;
    }
  }

  if (__OFSUB__(v6, result))
  {
    __break(1u);
  }

  else
  {
    if (v6 == result)
    {
      return 0;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else if (v5)
    {
      v7 = v2 >> 32;
    }

    else
    {
      v7 = BYTE6(v3);
    }

    if (v7 >= result)
    {
      v8 = sub_26C14889C();
      sub_26C0BB9B0(*v1, v1[1]);
      result = v8;
      *v1 = xmmword_26C14A1B0;
      v1[2] = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t TLSRecordHandler.getOutputData(_:)(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for TLSRecordHandler(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  result = v3[2];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v5);
    if (v7)
    {
      v8 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v8, result);
  v10 = v8 - result;
  if (v9)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (v10 < 1)
  {
    return 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v11 = *(v4 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v5);
    if (v7)
    {
      v11 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v11, result);
  v12 = v11 - result;
  if (v9)
  {
    goto LABEL_32;
  }

  if (v12 <= a1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v14 = *(v4 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v7)
    {
      v14 = v4 >> 32;
    }

    else
    {
      v14 = BYTE6(v5);
    }

    if (v14 >= result)
    {
      v15 = sub_26C14889C();
      sub_26C0BB9B0(*v3, v3[1]);
      result = v15;
      *v3 = xmmword_26C14A1B0;
      v3[2] = 0;
      return result;
    }

    goto LABEL_33;
  }

  result = sub_26C0DEDBC(a1);
  if (result)
  {
    v13 = sub_26C11EF18(result);

    return v13;
  }

  return result;
}

uint64_t TLSRecordHandler.getApplicationData(_:)(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for TLSRecordHandler(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  result = v3[2];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v5);
    if (v7)
    {
      v8 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v8, result);
  v10 = v8 - result;
  if (v9)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (v10 < 1)
  {
    return 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v11 = *(v4 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v5);
    if (v7)
    {
      v11 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v11, result);
  v12 = v11 - result;
  if (v9)
  {
    goto LABEL_32;
  }

  if (v12 <= a1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v14 = *(v4 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v7)
    {
      v14 = v4 >> 32;
    }

    else
    {
      v14 = BYTE6(v5);
    }

    if (v14 >= result)
    {
      v15 = sub_26C14889C();
      sub_26C0BB9B0(*v3, v3[1]);
      result = v15;
      *v3 = xmmword_26C14A1B0;
      v3[2] = 0;
      return result;
    }

    goto LABEL_33;
  }

  result = sub_26C0DEDBC(a1);
  if (result)
  {
    v13 = sub_26C11EF18(result);

    return v13;
  }

  return result;
}

Swift::Int __swiftcall TLSRecordHandler.getApplicationDataLength()()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler(0) + 44));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}

BOOL TLSRecordHandler.handshakeComplete.getter()
{
  v1 = v0;
  v21 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v1, v15, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v15, v6, type metadata accessor for ServerHandshakeStateMachine);
    sub_26C13F134(&v6[*(v4 + 24)], v3, type metadata accessor for ServerHandshakeState);
    sub_26C13F06C(v6, type metadata accessor for ServerHandshakeStateMachine);
    v16 = swift_getEnumCaseMultiPayload() > 6;
    v17 = type metadata accessor for ServerHandshakeState;
    v18 = v3;
  }

  else
  {
    sub_26C13F0CC(v15, v12, type metadata accessor for HandshakeStateMachine);
    sub_26C13F134(&v12[*(v10 + 24)], v9, type metadata accessor for HandshakeState);
    sub_26C13F06C(v12, type metadata accessor for HandshakeStateMachine);
    v16 = swift_getEnumCaseMultiPayload() > 5;
    v17 = type metadata accessor for HandshakeState;
    v18 = v9;
  }

  sub_26C13F06C(v18, v17);
  return v16;
}

uint64_t TLSRecordHandler.handshakeStarted.getter()
{
  v20 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v0, v14, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v14, v5, type metadata accessor for ServerHandshakeStateMachine);
    sub_26C13F134(&v5[*(v3 + 24)], v2, type metadata accessor for ServerHandshakeState);
    if (swift_getEnumCaseMultiPayload())
    {
      v15 = 1;
    }

    else
    {
      v15 = v5[24];
    }

    sub_26C13F06C(v5, type metadata accessor for ServerHandshakeStateMachine);
    v16 = type metadata accessor for ServerHandshakeState;
    v17 = v2;
  }

  else
  {
    sub_26C13F0CC(v14, v11, type metadata accessor for HandshakeStateMachine);
    sub_26C13F134(&v11[*(v9 + 24)], v8, type metadata accessor for HandshakeState);
    sub_26C13F06C(v11, type metadata accessor for HandshakeStateMachine);
    v15 = swift_getEnumCaseMultiPayload() != 0;
    v16 = type metadata accessor for HandshakeState;
    v17 = v8;
  }

  sub_26C13F06C(v17, v16);
  return v15;
}

double TLSRecordHandler.init(stateMachine:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TLSRecordHandler(0);
  v5 = v4[7];
  v6 = type metadata accessor for EncryptionLevel(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v7(a2 + v4[8], 1, 1, v6);
  *(a2 + v4[9]) = 0;
  v8 = a2 + v4[13];
  *v8 = 0;
  *(v8 + 2) = 1;
  v9 = a2 + v4[14];
  *v9 = 0;
  *(v9 + 2) = 1;
  *(a2 + v4[15]) = 0;
  v10 = a2 + v4[16];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = -1;
  sub_26C13F0CC(a1, a2, type metadata accessor for TLSHandshakeStateMachine);
  v11 = (a2 + v4[5]);
  *v11 = xmmword_26C14A540;
  v11[1] = xmmword_26C14F8B0;
  v12 = a2 + v4[6];
  v13 = sub_26C148BDC();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v15 = type metadata accessor for TLSRecordProtector(0);
  v16 = v15[6];
  v22 = v15[5];
  v14(v12 + v16, 1, 1, v13);
  v23 = v15[7];
  *(v12 + v15[8]) = 0;
  *(v12 + v15[9]) = 0;
  v17 = v12 + v15[10];
  sub_26C0CF5C4(v12, &qword_28047A930, qword_26C14C120);
  v14(v12, 1, 1, v13);
  *(v12 + v22) = 0;
  sub_26C0CF5C4(v12 + v16, &qword_28047A930, qword_26C14C120);
  v14(v12 + v16, 1, 1, v13);
  *(v12 + v23) = 0;
  *v17 = 0;
  *(v17 + 2) = 1;
  v18 = a2 + v4[11];
  result = 0.0;
  *v18 = xmmword_26C14A1B0;
  *(v18 + 16) = 0;
  v20 = a2 + v4[10];
  *v20 = xmmword_26C14A1B0;
  *(v20 + 16) = 0;
  v21 = a2 + v4[12];
  *v21 = xmmword_26C14A1B0;
  *(v21 + 16) = 0;
  return result;
}

uint64_t _s8SwiftTLS16TLSRecordHandlerV14startHandshakeyyAA8TLSErrorOYKF(uint64_t a1)
{
  v4 = v1;
  v5 = type metadata accessor for PartialHandshakeResult(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v4, v10, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F06C(v10, type metadata accessor for TLSHandshakeStateMachine);
    if (qword_28047A7A0 != -1)
    {
      swift_once();
    }

    v14 = sub_26C148A9C();
    __swift_project_value_buffer(v14, qword_28047AEF0);
    v15 = sub_26C148A7C();
    v16 = sub_26C14900C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26C0B5000, v15, v16, "startHandshake called on server", v17, 2u);
      MEMORY[0x26D69C3A0](v17, -1, -1);
    }

    *a1 = xmmword_26C14F8C0;
    *(a1 + 16) = 2;
    v20 = xmmword_26C14F8C0;
    v21 = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  else
  {
    sub_26C13F0CC(v10, v13, type metadata accessor for HandshakeStateMachine);
    _s8SwiftTLS21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF(&v20, v7);
    if (v2)
    {
      result = sub_26C13F06C(v13, type metadata accessor for HandshakeStateMachine);
      v19 = v21;
      *a1 = v20;
      *(a1 + 16) = v19;
    }

    else
    {
      sub_26C139F60(v7, &v20);
      sub_26C13F06C(v7, type metadata accessor for PartialHandshakeResult);
      sub_26C13F06C(v4, type metadata accessor for TLSHandshakeStateMachine);
      sub_26C13F0CC(v13, v4, type metadata accessor for HandshakeStateMachine);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_26C139F60(uint64_t a1, void *a2)
{
  v65 = sub_26C1488DC();
  v4 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v6 = MEMORY[0x28223BE20](a1);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v71 = &v60 - v9;
  v10 = *(a1 + 8);
  if (v10 >> 60 == 15)
  {
LABEL_63:
    v53 = v69;
    result = sub_26C13A8C8(v8, &v81);
    if (v53)
    {
      v54 = v82;
      *a2 = v81;
      *(a2 + 16) = v54;
    }

    return result;
  }

  v62 = a2;
  v11 = *v8;
  v61 = v8;
  v12 = v8[2];
  sub_26C0BBAA4(v11, v10);
  result = v12;
  v14 = (v10 >> 62);
  v74 = v11;
  v67 = v11 >> 32;
  v63 = (v4 + 8);
  v72 = BYTE6(v10);
  v15 = v73;
  v70 = v10;
  for (i = v10 >> 62; ; LODWORD(v14) = i)
  {
    if (v14 > 1)
    {
      v19 = v14 == 2 ? *(v74 + 24) : 0;
    }

    else
    {
      v19 = v72;
      if (v14)
      {
        v19 = v67;
      }
    }

    v20 = __OFSUB__(v19, result);
    v21 = v19 - result;
    if (v20)
    {
      break;
    }

    if (v21 < 1)
    {
      sub_26C0BB9B0(v74, v10);
      a2 = v62;
      v8 = v61;
      goto LABEL_63;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v22 = *(v74 + 24);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = v72;
      if (v14)
      {
        v22 = v67;
      }
    }

    v20 = __OFSUB__(v22, result);
    v23 = v22 - result;
    if (v20)
    {
      goto LABEL_70;
    }

    if (v23 >= 0x4000)
    {
      v23 = 0x4000;
    }

    v24 = result + v23;
    if (__OFADD__(result, v23))
    {
      goto LABEL_71;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        if (*(v74 + 24) < v24)
        {
          goto LABEL_65;
        }
      }

      else if (v24 > 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v25 = v72;
      if (v14)
      {
        v25 = v67;
      }

      if (v25 < v24)
      {
LABEL_65:
        v55 = v62;
        *v62 = 0xD000000000000046;
        v55[1] = 0x800000026C15B170;
        *(v55 + 16) = 1;
        *&v81 = 0xD000000000000046;
        *(&v81 + 1) = 0x800000026C15B170;
        v82 = 1;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v56 = v74;
        v57 = v10;
        return sub_26C0BB9B0(v56, v57);
      }
    }

    if (v24 < result)
    {
      goto LABEL_72;
    }

    result = sub_26C14889C();
    v26 = result;
    v28 = v27;
    v29 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_41;
      }

      result = *(result + 16);
      v30 = *(v26 + 24);
    }

    else
    {
      if (!v29)
      {
        goto LABEL_41;
      }

      result = result;
      v30 = v26 >> 32;
    }

    if (v30 < result)
    {
      goto LABEL_73;
    }

LABEL_41:
    v85 = sub_26C14889C();
    v32 = v31;
    sub_26C0BB9B0(v26, v28);
    v75 = type metadata accessor for TLSRecordHandler(0);
    v33 = *(v75 + 28);
    v34 = v71;
    sub_26C0CF768(v15 + v33, v71);
    v35 = type metadata accessor for EncryptionLevel(0);
    v36 = *(*(v35 - 8) + 48);
    v37 = v36(v34, 1, v35);
    result = sub_26C0CF5C4(v34, &qword_28047A998, &qword_26C14A860);
    if (v37 == 1)
    {
      goto LABEL_42;
    }

    v42 = v66;
    sub_26C0CF768(v15 + v33, v66);
    if (v36(v42, 1, v35) == 1)
    {
      sub_26C0CF5C4(v42, &qword_28047A998, &qword_26C14A860);
      v40 = v85;
      v39 = v32;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v40 = v85;
      v39 = v32;
      if (!EnumCaseMultiPayload)
      {
        v52 = sub_26C148BDC();
        result = (*(*(v52 - 8) + 8))(v42, v52);
LABEL_42:
        v38 = v32 >> 62;
        v39 = v32;
        if ((v32 >> 62) > 1)
        {
          v40 = v85;
          if (v38 != 2)
          {
            goto LABEL_3;
          }

          v44 = *(v85 + 16);
          v43 = *(v85 + 24);
          v41 = v43 - v44;
          if (__OFSUB__(v43, v44))
          {
            goto LABEL_76;
          }
        }

        else
        {
          v40 = v85;
          if (!v38)
          {
            v41 = BYTE6(v32);
            if (!BYTE6(v32))
            {
LABEL_3:
              sub_26C0BB9B0(v40, v32);
              v16 = MEMORY[0x277D84F90];
LABEL_4:
              v14 = &off_287CCC068;
              v84 = &off_287CCC068;
              LOWORD(v81) = 790;
              BYTE2(v81) = 3;
              v17 = &type metadata for TLSPlaintext;
              v83 = &type metadata for TLSPlaintext;
              *(&v81 + 1) = v16;
              goto LABEL_5;
            }

LABEL_59:
            v16 = sub_26C148520(v41, 0);
            v50 = v64;
            v51 = sub_26C14884C();
            sub_26C0BB9B0(v40, v32);
            result = (*v63)(v50, v65);
            if (v51 != v41)
            {
              goto LABEL_74;
            }

            goto LABEL_4;
          }

          if (__OFSUB__(HIDWORD(v85), v85))
          {
            goto LABEL_75;
          }

          v41 = HIDWORD(v85) - v85;
        }

        sub_26C0BBAA4(v40, v32);
        if (!v41)
        {
          goto LABEL_3;
        }

        goto LABEL_59;
      }

      sub_26C13F06C(v42, type metadata accessor for EncryptionLevel);
    }

    sub_26C0BBAA4(v40, v39);
    v46 = sub_26C148778(v40, v39);
    v47 = v69;
    v48 = sub_26C132868(v46, 22, 0, &v76);
    if (v47)
    {
      sub_26C0BB9B0(v40, v39);

      v58 = v77;
      v59 = v62;
      *v62 = v76;
      *(v59 + 16) = v58;
      v56 = v74;
      v57 = v70;
      return sub_26C0BB9B0(v56, v57);
    }

    v49 = v48;
    v69 = 0;

    v80 = &off_287CCC0B0;
    v79 = &type metadata for TLSCiphertext;
    *&v78 = v49;
    sub_26C0D3CB0(&v78, &v81);
    v17 = v83;
    v14 = v84;
LABEL_5:
    v18 = __swift_project_boxed_opaque_existential_1(&v81, v17);
    v15 = v73;
    sub_26C1337F8(v18, v17, v14);
    sub_26C0BB9B0(v40, v39);
    __swift_destroy_boxed_opaque_existential_1(&v81);
    result = v24;
    v10 = v70;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_26C13A6B8(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v2, v12, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v12, v6, type metadata accessor for ServerHandshakeStateMachine);
    ServerHandshakeStateMachine.receivedNetworkData(_:)(a1);
    sub_26C13F06C(v2, type metadata accessor for TLSHandshakeStateMachine);
    sub_26C13F0CC(v6, v2, type metadata accessor for ServerHandshakeStateMachine);
  }

  else
  {
    sub_26C13F0CC(v12, v9, type metadata accessor for HandshakeStateMachine);
    HandshakeStateMachine.receivedNetworkData(_:)(a1);
    sub_26C13F06C(v2, type metadata accessor for TLSHandshakeStateMachine);
    sub_26C13F0CC(v9, v2, type metadata accessor for HandshakeStateMachine);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26C13A8C8(uint64_t a1, _OWORD *a2)
{
  v75 = a2;
  v3 = v2;
  v81 = a1;
  v4 = sub_26C148BDC();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v71 - v11;
  v13 = type metadata accessor for EncryptionLevel(0);
  v82 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v72 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v73 = &v71 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v71 - v18;
  v20 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v3, v28, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v28, v22, type metadata accessor for ServerHandshakeStateMachine);
    v29 = ServerHandshakeStateMachine.negotiatedCiphersuite.getter();
    v30 = type metadata accessor for ServerHandshakeStateMachine;
    v31 = v22;
  }

  else
  {
    sub_26C13F0CC(v28, v25, type metadata accessor for HandshakeStateMachine);
    v29 = HandshakeStateMachine.negotiatedCiphersuite.getter();
    v30 = type metadata accessor for HandshakeStateMachine;
    v31 = v25;
  }

  sub_26C13F06C(v31, v30);
  v32 = v13;
  v33 = v81;
  if ((v29 & 0x10000) == 0)
  {
    v34 = v3 + *(type metadata accessor for TLSRecordHandler(0) + 24);
    v35 = v34 + *(type metadata accessor for TLSRecordProtector(0) + 40);
    *v35 = v29;
    *(v35 + 2) = 0;
  }

  v78 = v3;
  v36 = type metadata accessor for PartialHandshakeResult(0);
  sub_26C0CF768(v33 + *(v36 + 24), v12);
  v37 = v82;
  v38 = *(v82 + 48);
  if (v38(v12, 1, v32) == 1)
  {
    sub_26C0CF5C4(v12, &qword_28047A998, &qword_26C14A860);
  }

  else
  {
    sub_26C13F0CC(v12, v19, type metadata accessor for EncryptionLevel);
    v39 = v32;
    v40 = type metadata accessor for TLSRecordHandler(0);
    v41 = *(v40 + 32);
    v42 = v78;
    sub_26C0CF5C4(v78 + v41, &qword_28047A998, &qword_26C14A860);
    sub_26C13F134(v19, v42 + v41, type metadata accessor for EncryptionLevel);
    v43 = *(v37 + 56);
    v71 = v39;
    v43(v42 + v41, 0, 1, v39);
    v44 = v76;
    v45 = sub_26C13B154(v76, v19);
    v46 = v42 + *(v40 + 24);
    v47 = v85;
    sub_26C132568(v44, v45, &v83);
    if (v47)
    {

      (*(v79 + 8))(v44, v80);
LABEL_16:
      result = sub_26C13F06C(v19, type metadata accessor for EncryptionLevel);
      v66 = v84;
      v67 = v75;
      *v75 = v83;
      *(v67 + 16) = v66;
      return result;
    }

    v85 = 0;
    sub_26C13F06C(v19, type metadata accessor for EncryptionLevel);
    v48 = type metadata accessor for TLSRecordProtector(0);
    v49 = v48[6];
    sub_26C0CF5C4(v46 + v49, &qword_28047A930, qword_26C14C120);
    v50 = v79;
    v51 = v44;
    v52 = v80;
    (*(v79 + 32))(v46 + v49, v51, v80);
    v53 = v52;
    v33 = v81;
    (*(v50 + 56))(v46 + v49, 0, 1, v53);
    v54 = v48[7];

    *(v46 + v54) = v45;
    *(v46 + v48[9]) = 0;
    v32 = v71;
  }

  v55 = v77;
  sub_26C0CF768(v33 + *(v36 + 20), v77);
  if (v38(v55, 1, v32) == 1)
  {
    return sub_26C0CF5C4(v55, &qword_28047A998, &qword_26C14A860);
  }

  v19 = v73;
  sub_26C13F0CC(v55, v73, type metadata accessor for EncryptionLevel);
  v57 = type metadata accessor for TLSRecordHandler(0);
  v58 = *(v57 + 28);
  v59 = v78;
  sub_26C0CF5C4(v78 + v58, &qword_28047A998, &qword_26C14A860);
  sub_26C13F134(v19, v59 + v58, type metadata accessor for EncryptionLevel);
  (*(v82 + 56))(v59 + v58, 0, 1, v32);
  v60 = v72;
  sub_26C13F134(v19, v72, type metadata accessor for EncryptionLevel);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26C13F06C(v60, type metadata accessor for EncryptionLevel);
    v61 = v74;
    v62 = sub_26C13B154(v74, v19);
    v63 = v59 + *(v57 + 24);
    v64 = v85;
    sub_26C132568(v61, v62, &v83);
    v65 = v79;
    if (v64)
    {

      (*(v65 + 8))(v74, v80);
      goto LABEL_16;
    }

    sub_26C13F06C(v19, type metadata accessor for EncryptionLevel);
    sub_26C0CF5C4(v63, &qword_28047A930, qword_26C14C120);
    v68 = v80;
    (*(v65 + 32))(v63, v74, v80);
    (*(v65 + 56))(v63, 0, 1, v68);
    v69 = type metadata accessor for TLSRecordProtector(0);
    v70 = *(v69 + 20);

    *(v63 + v70) = v62;
    *(v63 + *(v69 + 32)) = 0;
  }

  else
  {
    sub_26C13F06C(v19, type metadata accessor for EncryptionLevel);
    return (*(v79 + 8))(v60, v80);
  }

  return result;
}

uint64_t sub_26C13B154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionLevel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C148BDC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v21 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  sub_26C13F134(a2, v6, type metadata accessor for EncryptionLevel);
  (*(v8 + 32))(v16, v6, v7);
  v17 = MEMORY[0x277D84F90];
  sub_26C136F6C(7955819, 0xE300000000000000, MEMORY[0x277D84F90], 0x20uLL, v14);
  sub_26C136F6C(30313, 0xE200000000000000, v17, 0xCuLL, v11);
  v18 = *(v8 + 8);
  v18(v16, v7);
  (*(v8 + 16))(a1, v14, v7);
  sub_26C148B8C();
  v19 = sub_26C148778(v21[2], v21[3]);
  v18(v11, v7);
  v18(v14, v7);
  return v19;
}

uint64_t sub_26C13B3C0(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for TLSRecordHandler(0);
  sub_26C0CF768(v1 + *(v7 + 32), v6);
  v8 = type metadata accessor for EncryptionLevel(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_26C0CF5C4(v6, &qword_28047A998, &qword_26C14A860);
  if (v9 == 1)
  {
    result = sub_26C13550C(&v31);
    if (v2)
    {
      v24 = v32;
      *a1 = v31;
      *(a1 + 16) = v24;
    }

    else if (v11)
    {
      return result & 0xFFFFFF;
    }

    else
    {
      return 0;
    }

    return result;
  }

  result = sub_26C13594C(&v31);
  if (v2)
  {
    v12 = v31;
    v13 = v32;
    if (*(v1 + *(v7 + 36)))
    {
LABEL_8:
      *a1 = v12;
      *(a1 + 16) = v13;
      v31 = v12;
      v32 = v13;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    if (qword_28047A7A0 != -1)
    {
      swift_once();
    }

    v14 = sub_26C148A9C();
    v15 = __swift_project_value_buffer(v14, qword_28047AEF0);
    sub_26C0CF018(v12, *(&v12 + 1), v13);
    v33 = v15;
    v16 = sub_26C148A7C();
    v17 = sub_26C148FFC();
    sub_26C0CF030(v12, *(&v12 + 1), v13);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v18 = 138412290;
      sub_26C0BBAF8();
      swift_allocError();
      HIDWORD(v29) = v17;
      *v19 = v12;
      *(v19 + 16) = v13;
      sub_26C0CF018(v12, *(&v12 + 1), v13);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      v21 = v30;
      *v30 = v20;
      _os_log_impl(&dword_26C0B5000, v16, BYTE4(v29), "error parsing first potential ciphertext record: %@. checking for plaintext alert.", v18, 0xCu);
      sub_26C0CF5C4(v21, &qword_28047A880, &qword_26C14A5B0);
      MEMORY[0x26D69C3A0](v21, -1, -1);
      MEMORY[0x26D69C3A0](v18, -1, -1);
    }

    v22 = sub_26C13550C(&v31);
    if (!v23)
    {
      sub_26C0CF030(v12, *(&v12 + 1), v13);
      return 0;
    }

    if (v22 != 21)
    {

      goto LABEL_8;
    }

    v25 = v22;
    sub_26C0CF030(v12, *(&v12 + 1), v13);
    v26 = sub_26C148A7C();
    v27 = sub_26C148FFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26C0B5000, v26, v27, "Received plaintext alert record", v28, 2u);
      MEMORY[0x26D69C3A0](v28, -1, -1);
    }

    return *&v25 & 0xFFFF15;
  }

  else if (result)
  {
    *(v1 + *(v7 + 36)) = 1;
  }

  return result;
}

uint64_t sub_26C13B808(uint64_t *a1, unint64_t *a2)
{
  v45 = a2;
  v4 = v3;
  v5 = v2;
  v6 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v61);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v47 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v54 = &v44 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = type metadata accessor for PartialHandshakeResult(0);
  v53 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);

  v55 = sub_26C11EF18(v25);
  v27 = v26;

  v28 = 0;
  v29 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    v30 = v55;
    if (v29 == 2)
    {
      v28 = *(v55 + 16);
    }
  }

  else
  {
    v30 = v55;
    if (v29)
    {
      v28 = v55;
    }
  }

  v58 = v30;
  v59 = v27;
  v60 = v28;
  sub_26C13A6B8(&v58);
  v31 = type metadata accessor for TLSRecordHandler(0);
  v55 = v2 + *(v31 + 56);
  v50 = v2 + 2;
  v51 = v31;
  v32 = (v53 + 7);
  v52 = (v53 + 7);
  v53 += 6;
  v46 = v24;
  while (1)
  {
    if (*(v55 + 2) == 1)
    {
      (*v32)(v19, 1, 1, v22);
      goto LABEL_11;
    }

    v33 = *v32;
    if ((*(v50 + *(v51 + 52)) & 1) == 0)
    {
      break;
    }

    v33(v19, 1, 1, v22);
LABEL_11:
    sub_26C13F134(v5, v11, type metadata accessor for TLSHandshakeStateMachine);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v49;
      sub_26C13F0CC(v11, v49, type metadata accessor for ServerHandshakeStateMachine);
      v35 = v47;
      _s8SwiftTLS27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF(&v56, v47);
      if (v4)
      {
        v40 = *(&v56 + 1);
        v39 = v56;
        v41 = v57;
        sub_26C13F06C(v5, type metadata accessor for TLSHandshakeStateMachine);
        sub_26C13F134(v34, v5, type metadata accessor for ServerHandshakeStateMachine);
        swift_storeEnumTagMultiPayload();
        v56 = __PAIR128__(v40, v39);
        v57 = v41;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v42 = type metadata accessor for ServerHandshakeStateMachine;
        goto LABEL_24;
      }

      v4 = 0;
      sub_26C0CF5C4(v19, &qword_28047A938, &qword_26C14A7E0);
      sub_26C13EFFC(v35, v19);
      sub_26C13F06C(v5, type metadata accessor for TLSHandshakeStateMachine);
      sub_26C13F0CC(v34, v5, type metadata accessor for ServerHandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
      v24 = v46;
    }

    else
    {
      v34 = v48;
      sub_26C13F0CC(v11, v48, type metadata accessor for HandshakeStateMachine);
      _s8SwiftTLS21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF(&v56, v54);
      if (v4)
      {
        v40 = *(&v56 + 1);
        v39 = v56;
        v41 = v57;
        sub_26C13F06C(v5, type metadata accessor for TLSHandshakeStateMachine);
        sub_26C13F134(v34, v5, type metadata accessor for HandshakeStateMachine);
        swift_storeEnumTagMultiPayload();
        v56 = __PAIR128__(v40, v39);
        v57 = v41;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v42 = type metadata accessor for HandshakeStateMachine;
LABEL_24:
        sub_26C13F06C(v34, v42);
        sub_26C0CF5C4(v19, &qword_28047A938, &qword_26C14A7E0);
        result = sub_26C0BB9B0(v58, v59);
        v43 = v45;
        *v45 = v39;
        v43[1] = v40;
        *(v43 + 16) = v41;
        return result;
      }

      v4 = 0;
      sub_26C0CF5C4(v19, &qword_28047A938, &qword_26C14A7E0);
      sub_26C13EFFC(v54, v19);
      sub_26C13F06C(v5, type metadata accessor for TLSHandshakeStateMachine);
      sub_26C13F0CC(v34, v5, type metadata accessor for HandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
    }

    sub_26C13EFFC(v19, v21);
    if ((*v53)(v21, 1, v22) == 1)
    {
      goto LABEL_19;
    }

    sub_26C13F0CC(v21, v24, type metadata accessor for PartialHandshakeResult);
    sub_26C139F60(v24, &v56);
    sub_26C13F06C(v24, type metadata accessor for PartialHandshakeResult);
    v32 = v52;
  }

  v33(v21, 1, 1, v22);
LABEL_19:
  sub_26C0CF5C4(v21, &qword_28047A938, &qword_26C14A7E0);
  if (!TLSRecordHandler.handshakeComplete.getter())
  {
    return sub_26C0BB9B0(v58, v59);
  }

  sub_26C13BF40(&v56);
  if (!v4)
  {
    return sub_26C0BB9B0(v58, v59);
  }

  result = sub_26C0BB9B0(v58, v59);
  v37 = v57;
  v38 = v45;
  *v45 = v56;
  *(v38 + 16) = v37;
  return result;
}

uint64_t sub_26C13BF40(void *a1)
{
  v4 = v2;
  v5 = v1;
  v49 = sub_26C1488DC();
  v6 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TLSRecordHandler(0);
  if (*(v5 + *(result + 56) + 2) != 1)
  {
    return result;
  }

  v9 = result;
  v10 = (v5 + *(result + 40));
  v11 = v10[1];
  v12 = v11 >> 62;
  v45 = *v10;
  v43 = a1;
  v44 = v45 >> 32;
  v46 = (v6 + 8);
  v47 = BYTE6(v11);
  v50 = v11 >> 62;
  v53 = v5;
  while (1)
  {
    v13 = v10[2];
    if (v12 > 1)
    {
      v14 = v12 == 2 ? *(v45 + 24) : 0;
    }

    else
    {
      v14 = v47;
      if (v12)
      {
        v14 = v44;
      }
    }

    v15 = __OFSUB__(v14, v13);
    v16 = v14 - v13;
    if (v15)
    {
      break;
    }

    result = *v10;
    v17 = v10[1];
    if (v16 < 1)
    {
      result = sub_26C0BB9B0(result, v17);
      *v10 = xmmword_26C14A1B0;
      v10[2] = 0;
      return result;
    }

    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 == 2)
      {
        v19 = *(result + 24);
      }

      else
      {
        v19 = 0;
      }
    }

    else if (v18)
    {
      v19 = result >> 32;
    }

    else
    {
      v19 = BYTE6(v17);
    }

    v15 = __OFSUB__(v19, v13);
    v20 = v19 - v13;
    if (v15)
    {
      goto LABEL_52;
    }

    if (v20 >= 0x4000)
    {
      v21 = 0x4000;
    }

    else
    {
      v21 = v20;
    }

    result = sub_26C0DE248(v21, &v51);
    v22 = *(&v51 + 1);
    if (*(&v51 + 1) >> 60 == 15)
    {
      v40 = v43;
      *v43 = 0xD000000000000046;
      v40[1] = 0x800000026C15B170;
      *(v40 + 16) = 1;
      *&v51 = 0xD000000000000046;
      *(&v51 + 1) = 0x800000026C15B170;
      LOBYTE(v52) = 1;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    v23 = v51;
    v24 = *(&v51 + 1) >> 62;
    if ((*(&v51 + 1) >> 62) > 1)
    {
      if (v24 == 2)
      {
        v25 = *(v51 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v24)
    {
      v25 = v51 >> 32;
    }

    else
    {
      v25 = BYTE14(v51);
    }

    if (v25 < v52)
    {
      goto LABEL_53;
    }

    v26 = sub_26C14889C();
    v28 = v27;
    result = sub_26C0BB344(v23, v22);
    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_44;
      }

      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      v30 = v31 - v32;
      if (__OFSUB__(v31, v32))
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (!v29)
      {
        v30 = BYTE6(v28);
        if (!BYTE6(v28))
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_55;
      }

      v30 = HIDWORD(v26) - v26;
    }

    sub_26C0BBAA4(v26, v28);
    if (!v30)
    {
LABEL_44:
      sub_26C0BB9B0(v26, v28);
      v33 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

LABEL_42:
    v33 = sub_26C148520(v30, 0);
    v34 = v9;
    v35 = v48;
    v36 = sub_26C14884C();
    sub_26C0BB9B0(v26, v28);
    v37 = v35;
    v9 = v34;
    result = (*v46)(v37, v49);
    if (v36 != v30)
    {
      goto LABEL_54;
    }

LABEL_45:
    v38 = sub_26C132868(v33, 23, 0, &v51);
    if (v4)
    {
      sub_26C0BB9B0(v26, v28);

      v41 = v52;
      v42 = v43;
      *v43 = v51;
      *(v42 + 16) = v41;
      return result;
    }

    v39 = v38;
    v4 = 0;

    sub_26C137CB8(v39);
    sub_26C0BB9B0(v26, v28);

    LODWORD(v12) = v50;
  }

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
  return result;
}

double _s8SwiftTLS16TLSRecordHandlerV18addApplicationDatayyAA10ByteBufferVzAA8TLSErrorOYKF(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for TLSRecordHandler(0);
  sub_26C0DE7D4(a1);
  if (TLSRecordHandler.handshakeComplete.getter())
  {
    sub_26C13BF40(&v7);
    if (v2)
    {
      v6 = v8;
      result = *&v7;
      *a2 = v7;
      *(a2 + 16) = v6;
    }
  }

  return result;
}

uint64_t TLSRecordHandler.alertRead.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TLSRecordHandler(0);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 2);
  *a1 = v5;
  *(a1 + 2) = v4;
  return result;
}

uint64_t TLSRecordHandler.alertRead.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  result = type metadata accessor for TLSRecordHandler(0);
  v5 = v1 + *(result + 52);
  *v5 = v2;
  *(v5 + 2) = v3;
  return result;
}

uint64_t TLSRecordHandler.alertWrote.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TLSRecordHandler(0);
  v4 = (v1 + *(result + 56));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 2);
  *a1 = v5;
  *(a1 + 2) = v4;
  return result;
}

uint64_t TLSRecordHandler.alertWrote.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  result = type metadata accessor for TLSRecordHandler(0);
  v5 = v1 + *(result + 56);
  *v5 = v2;
  *(v5 + 2) = v3;
  return result;
}

uint64_t TLSRecordHandler.tlsError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TLSRecordHandler(0) + 64);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_26C13EE88(v4, v5, v6);
}

uint64_t TLSRecordHandler.tlsError.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for TLSRecordHandler(0) + 64);
  result = sub_26C13EE9C(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t TLSRecordHandler.alertSentOrReceived.getter()
{
  v1 = type metadata accessor for TLSRecordHandler(0);
  if (*(v0 + *(v1 + 52) + 2) == 1)
  {
    v2 = *(v0 + *(v1 + 56) + 2) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

Swift::Void __swiftcall TLSRecordHandler.sendCloseNotify()()
{
  if (qword_28047A650 != -1)
  {
    swift_once();
  }

  v1 = word_280480310;
  sub_26C13C8D4(&v1, &v0);
}

uint64_t sub_26C13C8D4(unsigned __int8 *a1, _OWORD *a2)
{
  v5 = v3;
  v6 = v2;
  v75 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v13 = *a1;
  v14 = a1[1];
  result = type metadata accessor for TLSRecordHandler(0);
  v16 = v6 + *(result + 56);
  if (*(v16 + 2) == 1)
  {
    *v16 = v13 | (v14 << 8);
    *(v16 + 2) = 0;
    v60 = a2;
    if (qword_28047A650 != -1)
    {
      v57 = result;
      swift_once();
      result = v57;
    }

    v61 = v6;
    v63 = result;
    if (v13 == word_280480310 && v14 == HIBYTE(word_280480310))
    {
      if (qword_28047A7A0 != -1)
      {
        swift_once();
      }

      v17 = sub_26C148A9C();
      __swift_project_value_buffer(v17, qword_28047AEF0);
      v18 = sub_26C148A7C();
      v19 = sub_26C148FEC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_26C0B5000, v18, v19, "write alert close notify", v20, 2u);
        v21 = v20;
        v6 = v61;
        MEMORY[0x26D69C3A0](v21, -1, -1);
      }
    }

    else
    {
      if (qword_28047A7A0 != -1)
      {
        swift_once();
      }

      v22 = sub_26C148A9C();
      __swift_project_value_buffer(v22, qword_28047AEF0);
      v23 = sub_26C148A7C();
      v24 = sub_26C14900C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v59 = v3;
        v26 = v25;
        v27 = swift_slowAlloc();
        v69 = v27;
        *v26 = 136315138;
        LOBYTE(v66) = v13;
        BYTE1(v66) = v14;
        v28 = Alert.description.getter();
        v30 = sub_26C0E5DE8(v28, v29, &v69);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_26C0B5000, v23, v24, "write alert %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x26D69C3A0](v27, -1, -1);
        v31 = v26;
        v5 = v59;
        MEMORY[0x26D69C3A0](v31, -1, -1);
      }

      v6 = v61;
    }

    v73 = xmmword_26C14A1B0;
    v74 = 0;
    LOBYTE(v66) = v13;
    v32 = MEMORY[0x277D838B0];
    v33 = MEMORY[0x277CC9C18];
    v71 = MEMORY[0x277D838B0];
    v72 = MEMORY[0x277CC9C18];
    v69 = &v66;
    v70 = &v66 + 1;
    __swift_project_boxed_opaque_existential_1(&v69, MEMORY[0x277D838B0]);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v69);
    LOBYTE(v66) = v14;
    v71 = v32;
    v72 = v33;
    v69 = &v66;
    v70 = &v66 + 1;
    __swift_project_boxed_opaque_existential_1(&v69, v32);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v69);
    v34 = *(v63 + 28);
    sub_26C0CF768(v6 + v34, v12);
    v35 = type metadata accessor for EncryptionLevel(0);
    v36 = *(*(v35 - 8) + 48);
    LODWORD(v32) = v36(v12, 1, v35);
    sub_26C0CF5C4(v12, &qword_28047A998, &qword_26C14A860);
    if (v32 == 1)
    {
LABEL_17:
      v38 = *(&v73 + 1);
      v37 = v73;
      v39 = *(&v73 + 1) >> 62;
      if ((*(&v73 + 1) >> 62) > 1)
      {
        if (v39 != 2)
        {
LABEL_34:
          v44 = sub_26C14889C();
          v46 = sub_26C148778(v44, v45);
          v47 = &type metadata for TLSPlaintext;
          v48 = &off_287CCC068;
          v71 = &type metadata for TLSPlaintext;
          v72 = &off_287CCC068;
          LOWORD(v69) = 789;
          BYTE2(v69) = 3;
          v70 = v46;
LABEL_41:
          v55 = __swift_project_boxed_opaque_existential_1(&v69, v47);
          sub_26C1337F8(v55, v47, v48);
          sub_26C0BB9B0(v37, v38);
          return __swift_destroy_boxed_opaque_existential_1(&v69);
        }

        v41 = *(v73 + 24);
      }

      else
      {
        if (!v39)
        {
          goto LABEL_34;
        }

        v41 = v73 >> 32;
      }

      if (v41 < 0)
      {
        __break(1u);
      }

      goto LABEL_34;
    }

    v40 = v62;
    sub_26C0CF768(v6 + v34, v62);
    if (v36(v40, 1, v35) == 1)
    {
      sub_26C0CF5C4(v40, &qword_28047A998, &qword_26C14A860);
    }

    else
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        v56 = sub_26C148BDC();
        (*(*(v56 - 8) + 8))(v40, v56);
        goto LABEL_17;
      }

      sub_26C13F06C(v40, type metadata accessor for EncryptionLevel);
    }

    v38 = *(&v73 + 1);
    v37 = v73;
    v42 = *(&v73 + 1) >> 62;
    if ((*(&v73 + 1) >> 62) > 1)
    {
      if (v42 != 2)
      {
LABEL_38:
        v49 = sub_26C14889C();
        v51 = sub_26C148778(v49, v50);
        v52 = sub_26C132868(v51, 21, 0, &v64);

        if (v5)
        {
          v53 = v65;
          v54 = v60;
          *v60 = v64;
          *(v54 + 16) = v53;
          return sub_26C0BB9B0(v37, v38);
        }

        v67 = &type metadata for TLSCiphertext;
        v68 = &off_287CCC0B0;
        *&v66 = v52;
        sub_26C0D3CB0(&v66, &v69);
        v47 = v71;
        v48 = v72;
        goto LABEL_41;
      }

      v43 = *(v73 + 24);
    }

    else
    {
      if (!v42)
      {
        goto LABEL_38;
      }

      v43 = v73 >> 32;
    }

    if (v43 < 0)
    {
      __break(1u);
    }

    goto LABEL_38;
  }

  return result;
}

uint64_t sub_26C13CF9C(uint64_t a1, uint64_t a2)
{
  v5 = v2;

  v7 = sub_26C11EF18(v6);
  v9 = v8;

  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(v7 + 16);
    }
  }

  else
  {
    v11 = v7;
    if (!v10)
    {
      v11 = 0;
    }
  }

  v36 = v7;
  v37 = v9;
  v38 = v11;
  v12 = sub_26C1368E8();
  v13 = sub_26C1368E8();
  if (((v12 | v13) & 0x100) != 0)
  {
    return sub_26C0BB9B0(v36, v37);
  }

  v14 = v13;
  if (qword_28047A650 != -1)
  {
    swift_once();
  }

  if (word_280480310 != v12 || HIBYTE(word_280480310) != v14)
  {
    if (qword_28047A7A0 != -1)
    {
      swift_once();
    }

    v23 = sub_26C148A9C();
    __swift_project_value_buffer(v23, qword_28047AEF0);
    v24 = sub_26C148A7C();
    v25 = sub_26C14900C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = v5;
      *&v34 = swift_slowAlloc();
      v27 = v34;
      *v26 = 136315138;
      LOBYTE(v39) = v12;
      HIBYTE(v39) = v14;
      v28 = Alert.description.getter();
      v30 = sub_26C0E5DE8(v28, v29, &v34);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_26C0B5000, v24, v25, "read alert %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v31 = v27;
      v5 = v33;
      MEMORY[0x26D69C3A0](v31, -1, -1);
      MEMORY[0x26D69C3A0](v26, -1, -1);
    }

    v32 = v5 + *(type metadata accessor for TLSRecordHandler(0) + 52);
    *v32 = v12 | (v14 << 8);
    *(v32 + 2) = 0;
    return sub_26C0BB9B0(v36, v37);
  }

  if (qword_28047A7A0 != -1)
  {
    swift_once();
  }

  v15 = sub_26C148A9C();
  __swift_project_value_buffer(v15, qword_28047AEF0);
  v16 = sub_26C148A7C();
  v17 = sub_26C148FEC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26C0B5000, v16, v17, "read alert close notify", v18, 2u);
    MEMORY[0x26D69C3A0](v18, -1, -1);
  }

  v19 = type metadata accessor for TLSRecordHandler(0);
  v20 = v5 + *(v19 + 52);
  *v20 = v12 | (v14 << 8);
  *(v20 + 2) = 0;
  *(v5 + *(v19 + 60)) = 1;
  v39 = word_280480310;
  sub_26C13C8D4(&v39, &v34);
  result = sub_26C0BB9B0(v36, v37);
  if (v3)
  {
    v22 = v35;
    *a2 = v34;
    *(a2 + 16) = v22;
  }

  return result;
}

uint64_t sub_26C13D304@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  if (*(result + 16))
  {
    if (*(result + 16) == 1)
    {
LABEL_4:
      if (qword_28047A6D8 != -1)
      {
        v3 = a2;
        result = swift_once();
        a2 = v3;
      }

      v2 = &word_280480332;
    }

    else
    {
      switch(*result)
      {
        case 2:
        case 6:
        case 0x10:
        case 0x23:
          if (qword_28047A670 != -1)
          {
            v5 = a2;
            result = swift_once();
            a2 = v5;
          }

          v2 = &word_280480318;
          break;
        case 3:
        case 4:
          if (qword_28047A658 != -1)
          {
            v9 = a2;
            result = swift_once();
            a2 = v9;
          }

          v2 = &word_280480312;
          break;
        case 7:
        case 0x21:
          if (qword_28047A6A0 != -1)
          {
            v7 = a2;
            result = swift_once();
            a2 = v7;
          }

          v2 = &word_280480324;
          break;
        case 8:
        case 9:
        case 0xALL:
        case 0xBLL:
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x17:
        case 0x18:
        case 0x1ALL:
        case 0x1ELL:
        case 0x20:
        case 0x24:
        case 0x25:
          goto LABEL_4;
        case 0xCLL:
          if (qword_28047A678 != -1)
          {
            v12 = a2;
            result = swift_once();
            a2 = v12;
          }

          v2 = &word_28048031A;
          break;
        case 0xDLL:
          if (qword_28047A6C8 != -1)
          {
            v10 = a2;
            result = swift_once();
            a2 = v10;
          }

          v2 = &word_28048032E;
          break;
        case 0xELL:
        case 0x19:
          if (qword_28047A6F0 != -1)
          {
            v8 = a2;
            result = swift_once();
            a2 = v8;
          }

          v2 = &word_280480338;
          break;
        case 0xFLL:
          if (qword_28047A680 != -1)
          {
            v14 = a2;
            result = swift_once();
            a2 = v14;
          }

          v2 = &word_28048031C;
          break;
        case 0x11:
          if (qword_28047A720 != -1)
          {
            v13 = a2;
            result = swift_once();
            a2 = v13;
          }

          v2 = &word_280480344;
          break;
        case 0x1CLL:
          if (qword_28047A668 != -1)
          {
            v11 = a2;
            result = swift_once();
            a2 = v11;
          }

          v2 = &word_280480316;
          break;
        case 0x1DLL:
        case 0x1FLL:
          if (qword_28047A6C0 != -1)
          {
            v6 = a2;
            result = swift_once();
            a2 = v6;
          }

          v2 = &word_28048032C;
          break;
        default:
          goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (qword_28047A6B8 != -1)
    {
      v4 = a2;
      result = swift_once();
      a2 = v4;
    }

    v2 = &word_28048032A;
  }

  *a2 = *v2;
  return result;
}

uint64_t _s8SwiftTLS16TLSRecordHandlerV18processNetworkData07networkG2InyAA10ByteBufferVz_tAA8TLSErrorOYKF(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v7 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TLSRecordHandler(0);
  if (*(v5 + v10[13] + 2) == 1 && (*(v5 + v10[14] + 2) & 1) != 0)
  {
    v59 = v10;
    v11 = *a1;
    v12 = a1[1];
    v13 = a1[2];
    sub_26C0BBAA4(*a1, v12);
    sub_26C13DCA4(a1, v5, &v61);
    if (v3)
    {
      v55 = v7;
      v57 = a2;
      v14 = v13;
      v16 = *(&v61 + 1);
      v15 = v61;
      v17 = v62;
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v11;
      a1[1] = v12;
      LODWORD(v11) = v17;
      v18 = v16;
      v19 = v15;
      a1[2] = v14;
      v61 = __PAIR128__(v18, v15);
      v62 = v17;
      v58 = sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      if (qword_28047A7A0 != -1)
      {
        swift_once();
      }

      v20 = sub_26C148A9C();
      __swift_project_value_buffer(v20, qword_28047AEF0);
      sub_26C0CF018(v15, v18, v17);
      v21 = sub_26C148A7C();
      v22 = sub_26C14900C();
      sub_26C0CF030(v15, v18, v11);
      v23 = os_log_type_enabled(v21, v22);
      v60 = v18;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v63 = v11;
        v11 = v24;
        v25 = swift_slowAlloc();
        v56 = v15;
        v26 = v25;
        *v11 = 138412290;
        swift_allocError();
        v27 = v60;
        *v28 = v56;
        *(v28 + 8) = v27;
        *(v28 + 16) = v63;
        sub_26C0CF018(v56, v60, v63);
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v29;
        *v26 = v29;
        _os_log_impl(&dword_26C0B5000, v21, v22, "error processing network data: %@", v11, 0xCu);
        sub_26C0CF5C4(v26, &qword_28047A880, &qword_26C14A5B0);
        v30 = v26;
        v18 = v60;
        v19 = v56;
        MEMORY[0x26D69C3A0](v30, -1, -1);
        v31 = v11;
        LOBYTE(v11) = v63;
        MEMORY[0x26D69C3A0](v31, -1, -1);
      }

      if (TLSRecordHandler.handshakeStarted.getter())
      {
        *&v61 = v19;
        *(&v61 + 1) = v18;
        v62 = v11;
        sub_26C13D304(&v61, &v64);
        v32 = v64;
        v33 = HIBYTE(v64);
        if (qword_28047A650 != -1)
        {
          swift_once();
        }

        if (v32 != word_280480310 || v33 != HIBYTE(word_280480310))
        {
          v34 = v5 + v59[16];
          v35 = v11;
          v11 = *v34;
          v59 = *(v34 + 8);
          v36 = *(v34 + 16);
          v37 = v19;
          v38 = v19;
          v39 = v60;
          sub_26C0CF018(v37, v60, v35);
          v40 = v11;
          LOBYTE(v11) = v35;
          sub_26C13EE9C(v40, v59, v36);
          *v34 = v38;
          *(v34 + 8) = v39;
          v19 = v38;
          *(v34 + 16) = v35;
        }

        LOBYTE(v64) = v32;
        HIBYTE(v64) = v33;
        sub_26C13C8D4(&v64, &v61);
        v53 = v57;
        v54 = v60;
        *v57 = v19;
        v53[1] = v54;
        *(v53 + 16) = v11;
        *&v61 = v19;
        *(&v61 + 1) = v54;
        v62 = v11;
      }

      else
      {
        sub_26C0CF030(v19, v18, v11);
        sub_26C13F134(v5, v9, type metadata accessor for TLSHandshakeStateMachine);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_26C13F06C(v9, type metadata accessor for TLSHandshakeStateMachine);
        if (EnumCaseMultiPayload == 1)
        {
          v44 = " bits, needs 256.";
        }

        else
        {
          v44 = "alid Client Hello";
        }

        v45 = sub_26C148A7C();
        v46 = sub_26C14900C();

        if (os_log_type_enabled(v45, v46))
        {
          if (EnumCaseMultiPayload == 1)
          {
            v47 = 0xD000000000000041;
          }

          else
          {
            v47 = 0xD000000000000065;
          }

          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v61 = v49;
          *v48 = 136315138;
          v50 = sub_26C0E5DE8(v47, v44 | 0x8000000000000000, &v61);

          *(v48 + 4) = v50;
          _os_log_impl(&dword_26C0B5000, v45, v46, "TLS error occurred from processing network data before handshake started: %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v49);
          MEMORY[0x26D69C3A0](v49, -1, -1);
          MEMORY[0x26D69C3A0](v48, -1, -1);
        }

        else
        {
        }

        v51 = v5 + v59[16];
        sub_26C13EE9C(*v51, *(v51 + 8), *(v51 + 16));
        *v51 = xmmword_26C14F8D0;
        *(v51 + 16) = 2;
        v52 = v57;
        *v57 = xmmword_26C14F8D0;
        *(v52 + 16) = 2;
        v61 = xmmword_26C14F8D0;
        v62 = 2;
      }

      return swift_willThrowTypedImpl();
    }

    else
    {
      return sub_26C0BB9B0(v11, v12);
    }
  }

  else
  {
    v41 = (v5 + v10[5]);
    result = sub_26C0BB344(*v41, v41[1]);
    *v41 = xmmword_26C14A540;
    v41[2] = 0;
  }

  return result;
}

void sub_26C13DCA4(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v86 = a3;
  v6 = v3;
  v96 = type metadata accessor for ServerHandshakeState(0);
  v9 = MEMORY[0x28223BE20](v96);
  v90 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v81 - v11;
  v94 = type metadata accessor for ServerHandshakeStateMachine(0);
  v12 = MEMORY[0x28223BE20](v94);
  v99 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v81 - v14;
  v95 = type metadata accessor for HandshakeState(0);
  v15 = MEMORY[0x28223BE20](v95);
  v89 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v81 - v17;
  v93 = type metadata accessor for HandshakeStateMachine(0);
  v18 = MEMORY[0x28223BE20](v93);
  v88 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v83 = &v81 - v20;
  v21 = type metadata accessor for TLSHandshakeStateMachine(0);
  v22 = MEMORY[0x28223BE20](v21);
  v98 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v91 = &v81 - v24;
  v25 = type metadata accessor for TLSRecordHandler(0);
  v26 = MEMORY[0x28223BE20](v25);
  v97 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v81 - v29;
  v100 = v28;
  v31 = (a2 + *(v28 + 20));
  sub_26C0E0B74(a1);
  v32 = v31[1];
  if (v32 >> 60 == 15)
  {
    return;
  }

  v92 = v21;
  v87 = v30;
  while (1)
  {
    v33 = *v31;
    v34 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v34 == 2)
      {
        v35 = *(v33 + 24);
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = BYTE6(v32);
      v36 = v33 >> 32;
      if (v34)
      {
        v35 = v36;
      }
    }

    v37 = v31[2];
    v38 = __OFSUB__(v35, v37);
    v39 = v35 - v37;
    if (v38)
    {
      __break(1u);
LABEL_70:
      swift_once();
LABEL_42:
      v62 = sub_26C148A9C();
      __swift_project_value_buffer(v62, qword_28047AEF0);
      sub_26C13EFF0(v5, v4, 0);
      v63 = sub_26C148A7C();
      v64 = sub_26C14900C();
      sub_26C135AA8(v5, v4, v6);
      if (!os_log_type_enabled(v63, v64))
      {
        goto LABEL_66;
      }

      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v101 = v66;
      *v65 = 136315138;
      v67 = sub_26C0DA72C(v5);
      v69 = sub_26C0E5DE8(v67, v68, &v101);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_26C0B5000, v63, v64, "got a plaintext record with type not handshake or alert: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x26D69C3A0](v66, -1, -1);
LABEL_65:
      MEMORY[0x26D69C3A0](v65, -1, -1);
      goto LABEL_66;
    }

    if (v39 < 1)
    {
      return;
    }

    v40 = sub_26C13B3C0(&v101);
    if (v3)
    {
      v76 = v102;
      v77 = v86;
      *v86 = v101;
      *(v77 + 16) = v76;
      return;
    }

    v6 = v42;
    if (v42 == -1)
    {
      return;
    }

    v5 = v40;
    v4 = v41;
    if ((v42 & 1) == 0)
    {
      if ((v40 - 21) >= 2u)
      {
        if (qword_28047A7A0 == -1)
        {
          goto LABEL_42;
        }

        goto LABEL_70;
      }

      v103 = v41;
      if (v40 == 21)
      {
        v51 = v97;
        sub_26C13F134(a2, v97, type metadata accessor for TLSRecordHandler);
        v52 = v98;
        sub_26C13F134(v51, v98, type metadata accessor for TLSHandshakeStateMachine);
        sub_26C13EFF0(v5, v4, 0);
        sub_26C13F06C(v51, type metadata accessor for TLSRecordHandler);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v53 = v99;
          sub_26C13F0CC(v52, v99, type metadata accessor for ServerHandshakeStateMachine);
          v54 = v90;
          sub_26C13F134(v53 + *(v94 + 24), v90, type metadata accessor for ServerHandshakeState);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_26C13F06C(v99, type metadata accessor for ServerHandshakeStateMachine);
            sub_26C13F06C(v54, type metadata accessor for ServerHandshakeState);
            v30 = v87;
          }

          else
          {
            v61 = *(v99 + 24);
            sub_26C13F06C(v99, type metadata accessor for ServerHandshakeStateMachine);
            sub_26C13F06C(v54, type metadata accessor for ServerHandshakeState);
            v30 = v87;
            if ((v61 & 1) == 0)
            {
LABEL_44:
              sub_26C135AA8(v5, v4, v6);
              v70 = xmmword_26C14F8E0;
              goto LABEL_67;
            }
          }
        }

        else
        {
          v55 = v52;
          v56 = v88;
          sub_26C13F0CC(v55, v88, type metadata accessor for HandshakeStateMachine);
          v57 = v89;
          sub_26C13F134(v56 + *(v93 + 24), v89, type metadata accessor for HandshakeState);
          sub_26C13F06C(v56, type metadata accessor for HandshakeStateMachine);
          LODWORD(v56) = swift_getEnumCaseMultiPayload();
          sub_26C13F06C(v57, type metadata accessor for HandshakeState);
          v30 = v87;
          if (!v56)
          {
            goto LABEL_44;
          }
        }

        sub_26C13CF9C(v4, &v101);
        sub_26C135AA8(v5, v4, v6);
        sub_26C135AA8(v5, v4, v6);
        goto LABEL_38;
      }

      sub_26C13EFF0(v40, v41, 0);
      sub_26C13B808(&v103, &v101);
      sub_26C135AA8(v5, v4, v6);
      goto LABEL_29;
    }

    v43 = sub_26C132EFC(v40, &v101);
    v45 = v43;
    v103 = v43;
    if (v44 == 21)
    {
      sub_26C13CF9C(v43, &v101);

LABEL_29:
      sub_26C135AA8(v5, v4, v6);
      goto LABEL_38;
    }

    if (v44 != 22)
    {
      break;
    }

    sub_26C13B808(&v103, &v101);
    sub_26C135AA8(v5, v4, v6);

LABEL_38:
    v3 = 0;
LABEL_39:
    v32 = v31[1];
    if (v32 >> 60 == 15)
    {
      return;
    }
  }

  if (v44 != 23)
  {
    v71 = v44;

    if (v71)
    {
      if (v71 == 20)
      {
        if (qword_28047A7A0 != -1)
        {
          swift_once();
        }

        v72 = sub_26C148A9C();
        __swift_project_value_buffer(v72, qword_28047AEF0);
        v63 = sub_26C148A7C();
        v73 = sub_26C14900C();
        if (os_log_type_enabled(v63, v73))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          v74 = "got an encrypted change cipher spec message";
          goto LABEL_64;
        }

        goto LABEL_66;
      }

      if (qword_28047A7A0 != -1)
      {
        swift_once();
      }

      v79 = sub_26C148A9C();
      __swift_project_value_buffer(v79, qword_28047AEF0);
      v63 = sub_26C148A7C();
      v73 = sub_26C14900C();
      if (!os_log_type_enabled(v63, v73))
      {
        goto LABEL_66;
      }

      v65 = swift_slowAlloc();
      *v65 = 0;
      v74 = "got an encrypted record with an unrecognized content type";
    }

    else
    {
      if (qword_28047A7A0 != -1)
      {
        swift_once();
      }

      v78 = sub_26C148A9C();
      __swift_project_value_buffer(v78, qword_28047AEF0);
      v63 = sub_26C148A7C();
      v73 = sub_26C14900C();
      if (!os_log_type_enabled(v63, v73))
      {
        goto LABEL_66;
      }

      v65 = swift_slowAlloc();
      *v65 = 0;
      v74 = "got an encrypted record with an invalid content type";
    }

LABEL_64:
    _os_log_impl(&dword_26C0B5000, v63, v73, v74, v65, 2u);
    goto LABEL_65;
  }

  v81 = 0;
  sub_26C13F134(a2, v30, type metadata accessor for TLSRecordHandler);
  v46 = v91;
  sub_26C13F134(v30, v91, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = v30;
    v48 = v46;
    v49 = v84;
    sub_26C13F0CC(v48, v84, type metadata accessor for ServerHandshakeStateMachine);
    v50 = v85;
    sub_26C13F134(v49 + *(v94 + 24), v85, type metadata accessor for ServerHandshakeState);
    sub_26C13F06C(v49, type metadata accessor for ServerHandshakeStateMachine);
    LODWORD(v49) = swift_getEnumCaseMultiPayload();
    sub_26C13F06C(v50, type metadata accessor for ServerHandshakeState);
    sub_26C13F06C(v47, type metadata accessor for TLSRecordHandler);
    v30 = v47;
    if (v49 <= 6)
    {
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  v58 = v83;
  sub_26C13F0CC(v46, v83, type metadata accessor for HandshakeStateMachine);
  v59 = v82;
  sub_26C13F134(v58 + *(v93 + 24), v82, type metadata accessor for HandshakeState);
  sub_26C13F06C(v58, type metadata accessor for HandshakeStateMachine);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_26C13F06C(v59, type metadata accessor for HandshakeState);
  v30 = v87;
  sub_26C13F06C(v87, type metadata accessor for TLSRecordHandler);
  if (EnumCaseMultiPayload >= 6)
  {
LABEL_33:
    if (v45[2].isa)
    {
      sub_26C14888C();
    }

    sub_26C135AA8(v5, v4, v6);

    v3 = v81;
    goto LABEL_39;
  }

LABEL_51:

  if (qword_28047A7A0 != -1)
  {
    swift_once();
  }

  v75 = sub_26C148A9C();
  __swift_project_value_buffer(v75, qword_28047AEF0);
  v63 = sub_26C148A7C();
  v73 = sub_26C14900C();
  if (os_log_type_enabled(v63, v73))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    v74 = "got application data before handshake complete";
    goto LABEL_64;
  }

LABEL_66:

  v70 = xmmword_26C14A560;
LABEL_67:
  v80 = v86;
  *v86 = v70;
  *(v80 + 16) = 2;
  v101 = v70;
  v102 = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C135AA8(v5, v4, v6);
}

_BYTE *sub_26C13EA50@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26C13ECD0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26C13ED88(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26C13EE04(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

char *sub_26C13EAE4(uint64_t a1, unint64_t a2, char **a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_26C12401C(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_26C13EC0C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_26C13EC0C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_26C12401C(v8, v4, a3);
}

char *sub_26C13EC0C(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  result = sub_26C1487BC();
  v8 = result;
  if (result)
  {
    result = sub_26C1487EC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_26C1487DC();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v8[v12];
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_26C12401C(v8, v14, a4);
}

unint64_t sub_26C13ECB0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C13ECD0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_26C13ED88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26C1487FC();
  swift_allocObject();
  result = sub_26C1487AC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26C14885C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26C13EE04(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26C1487FC();
  swift_allocObject();
  result = sub_26C1487AC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26C13EE88(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26C0CF018(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_26C13EE9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26C0CF030(a1, a2, a3);
  }

  return a1;
}

void sub_26C13EED8(uint64_t a1)
{
  type metadata accessor for TLSHandshakeStateMachine(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TLSRecordProtector(319);
    if (v2 <= 0x3F)
    {
      sub_26C0CFD04(319);
      if (v3 <= 0x3F)
      {
        sub_26C0CFD5C(319, &qword_28047AF18, &type metadata for Alert);
        if (v4 <= 0x3F)
        {
          sub_26C0CFD5C(319, &qword_28047AF20, &type metadata for TLSError);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_26C13EFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C13F06C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C13F0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C13F134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C13F1B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C13F218(uint64_t a1, uint64_t a2)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  while (v3)
  {
    v7 = *v4++;
    v10 = bswap32(v7) >> 16;
    v11[3] = v5;
    v11[4] = v6;
    v11[0] = &v10;
    v11[1] = v11;
    __swift_project_boxed_opaque_existential_1(v11, v5);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(v11);
    --v3;
    v8 = __OFADD__(a1, 2);
    a1 += 2;
    if (v8)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

unint64_t sub_26C13F30C(uint64_t a1)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v8 = 0;
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v12 = 0;
  v13[3] = MEMORY[0x277D838B0];
  v13[4] = MEMORY[0x277CC9C18];
  v13[0] = &v12;
  v13[1] = v13;
  __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = sub_26C13F218(0, a1);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v10 = v9;
  if (v9 >> 16)
  {
    goto LABEL_11;
  }

  sub_26C10064C(v9, v8);
  return v10 + 2;
}

unint64_t sub_26C13F41C()
{
  result = qword_28047AF38;
  if (!qword_28047AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF38);
  }

  return result;
}

unint64_t sub_26C13F480(uint64_t *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = *v1;
  v5 = v1[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v4 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v4 >> 32;
  }

  else
  {
    v7 = BYTE6(v5);
  }

  v8 = *a1;
  v9 = a1[2];
  v27 = 0;
  v10 = MEMORY[0x277D838B0];
  v11 = MEMORY[0x277CC9C18];
  v30 = MEMORY[0x277D838B0];
  v31 = MEMORY[0x277CC9C18];
  v28 = &v27;
  v29 = &v28;
  __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  LOBYTE(v27) = 0;
  v30 = v10;
  v31 = v11;
  v28 = &v27;
  v29 = (&v27 + 1);
  __swift_project_boxed_opaque_existential_1(&v28, v10);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  v12 = *v1;
  v13 = v1[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v12 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v12 >> 32;
  }

  else
  {
    v15 = BYTE6(v13);
  }

  v27 = 0;
  v30 = v10;
  v31 = v11;
  v28 = &v27;
  v29 = &v28;
  __swift_project_boxed_opaque_existential_1(&v28, v10);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  v16 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = 0;
      v18 = BYTE6(v2);
      if (BYTE6(v2) < v9)
      {
        goto LABEL_44;
      }

      goto LABEL_27;
    }

    v17 = v8;
    v18 = v8 >> 32;
LABEL_24:
    sub_26C10B340(v8, v2);
    if (v18 < v9)
    {
      goto LABEL_44;
    }

    goto LABEL_27;
  }

  if (v16 == 2)
  {
    v17 = *(v8 + 16);
    v18 = *(v8 + 24);
    goto LABEL_24;
  }

  v18 = 0;
  v17 = 0;
  if (v9 > 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_27:
  if (v18 < v17)
  {
    goto LABEL_44;
  }

  v19 = sub_26C14889C();
  v21 = v20;
  sub_26C1488CC();
  v22 = v21;
  v23 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v23 != 2)
    {
      sub_26C0BB9B0(v19, v21);
      sub_26C0BB344(v8, v2);
      sub_26C10064C(0, v15);
      v2 = 0;
      v26 = 3;
      goto LABEL_42;
    }

    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    sub_26C0BB9B0(v19, v22);
    sub_26C0BB344(v8, v2);
    v2 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      goto LABEL_37;
    }

    __break(1u);
LABEL_35:
    sub_26C0BB9B0(v19, v22);
    sub_26C0BB344(v8, v2);
    if (__OFSUB__(HIDWORD(v19), v19))
    {
      goto LABEL_48;
    }

    v2 = HIDWORD(v19) - v19;
LABEL_37:
    if ((v2 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v2 >> 16)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    sub_26C10064C(v2, v15);
    if (v2 > 0xFFFC)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }

    goto LABEL_40;
  }

  if (v23)
  {
    goto LABEL_35;
  }

  sub_26C0BB9B0(v19, v21);
  sub_26C0BB344(v8, v2);
  v2 = BYTE6(v21);
  sub_26C10064C(BYTE6(v21), v15);
LABEL_40:
  v26 = v2 + 3;
LABEL_42:
  sub_26C10064C(v26, v7);
  return v2 + 5;
}