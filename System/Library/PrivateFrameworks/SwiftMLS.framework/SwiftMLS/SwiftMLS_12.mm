unint64_t sub_26BEE6420()
{

  return sub_26BEE6478();
}

unint64_t sub_26BEE6478()
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
        sub_26BE00608(v3, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
        sub_26BE016A8();
        sub_26BE016FC();
        sub_26C008E1C();
        sub_26BE00258(v8, v9);
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

void MLS.RatchetTree.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = 0;
  v65 = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v7 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v7 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
  }

  v62 = a1;
  v63 = a2;
  v64 = v7;
  sub_26BE00608(a1, a2);
  sub_26BE00608(a1, a2);
  sub_26BF30764(&v62, &v50);
  if (v3)
  {
    sub_26BE00258(v62, v63);
    v62 = a1;
    v63 = a2;
    v64 = v7;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (BYTE8(v50))
  {
    sub_26BE00258(v62, v63);
    v9 = a2;
    v10 = a1;
LABEL_13:
    sub_26BE00258(v10, v9);
    v62 = a1;
    v63 = a2;
    v64 = v7;
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
    goto LABEL_14;
  }

  v14 = v50;
  sub_26BE00258(a1, a2);
  if (v14 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v15 = 5;
    goto LABEL_9;
  }

  v16 = sub_26BF2A44C(v14);
  if (v17 >> 60 == 15)
  {
    v10 = v62;
    v9 = v63;
    goto LABEL_13;
  }

  v59 = v16;
  v60 = v17;
  v61 = v18;
  v19 = MEMORY[0x277D84F90];
  v38 = v7;
  while (1)
  {
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v21 = *(v16 + 24);
      }

      else
      {
        v21 = 0;
      }
    }

    else if (v20)
    {
      v21 = v16 >> 32;
    }

    else
    {
      v21 = BYTE6(v17);
    }

    v22 = __OFSUB__(v21, v18);
    v23 = v21 - v18;
    if (v22)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

    if (v23 < 1)
    {
      break;
    }

    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_59;
    }

    if (v20 <= 1)
    {
      if (v20)
      {
        v25 = v16 >> 32;
      }

      else
      {
        v25 = BYTE6(v17);
      }

LABEL_36:
      if (v25 < v24)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (v20 == 2)
    {
      v25 = *(v16 + 24);
      goto LABEL_36;
    }

    if (v24 > 0)
    {
LABEL_49:
      sub_26BE01600();
      swift_allocError();
      *v36 = 1;
      goto LABEL_57;
    }

LABEL_39:
    *&v41 = v16;
    *(&v41 + 1) = v17;
    if (v24 < v18)
    {
      goto LABEL_60;
    }

    *&v39[0] = v18;
    *(&v39[0] + 1) = v18 + 1;
    sub_26BE00608(v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v41, *(&v41 + 1));
    v61 = v24;
    sub_26BE2E2B8(&v41);
    v56 = v47;
    v57 = v48;
    v58 = v49;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v50 = v41;
    v51 = v42;
    sub_26BECBB94(&v41, v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_26BEEB900(0, v19[2] + 1, 1, v19);
    }

    v7 = v38;
    v27 = v19[2];
    v26 = v19[3];
    if (v27 >= v26 >> 1)
    {
      v19 = sub_26BEEB900((v26 > 1), v27 + 1, 1, v19);
    }

    v39[6] = v56;
    v39[7] = v57;
    v40 = v58;
    v39[2] = v52;
    v39[3] = v53;
    v39[4] = v54;
    v39[5] = v55;
    v39[0] = v50;
    v39[1] = v51;
    sub_26BE2E258(v39, &qword_28045E4C8, &unk_26C0112A0);
    v19[2] = v27 + 1;
    v28 = &v19[17 * v27];
    *(v28 + 2) = v41;
    v29 = v45;
    v31 = v42;
    v30 = v43;
    *(v28 + 5) = v44;
    *(v28 + 6) = v29;
    *(v28 + 3) = v31;
    *(v28 + 4) = v30;
    v33 = v47;
    v32 = v48;
    v34 = v46;
    v28[20] = v49;
    *(v28 + 8) = v33;
    *(v28 + 9) = v32;
    *(v28 + 7) = v34;
    v16 = v59;
    v17 = v60;
    v18 = v61;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v35 = *(v16 + 24);
    }

    else
    {
      v35 = 0;
    }
  }

  else if (v20)
  {
    v35 = v16 >> 32;
  }

  else
  {
    v35 = BYTE6(v17);
  }

  if (__OFSUB__(v35, v18))
  {
    goto LABEL_61;
  }

  if (v35 == v18)
  {
    sub_26BE00258(v16, v17);
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    sub_26BE00258(v62, v63);
    *a3 = v19;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v37 = 0;
    v37[112] = 1;
LABEL_57:
    swift_willThrow();

    sub_26BE00258(v59, v60);
LABEL_10:
    sub_26BE00258(v62, v63);
    v62 = a1;
    v63 = a2;
    v64 = v7;
LABEL_14:
    swift_willThrow();
    *&v50 = &type metadata for MLS.RatchetTree;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C0, &unk_26C011290);
    v12 = sub_26C00A4FC();
    sub_26BE826C4(v12, v13, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(v62, v63);
  }
}

void MLS.KeyPackage.rawValue.getter()
{
  v2 = *(v0 + 144);
  v10[8] = *(v0 + 128);
  v10[9] = v2;
  v10[10] = *(v0 + 160);
  v11 = *(v0 + 176);
  v3 = *(v0 + 80);
  v10[4] = *(v0 + 64);
  v10[5] = v3;
  v4 = *(v0 + 112);
  v10[6] = *(v0 + 96);
  v10[7] = v4;
  v5 = *(v0 + 16);
  v10[0] = *v0;
  v10[1] = v5;
  v6 = *(v0 + 48);
  v10[2] = *(v0 + 32);
  v10[3] = v6;
  v12 = xmmword_26C00BBD0;
  v13 = 0;
  sub_26BE00A98(v10);
  v7 = v12;
  if (v1)
  {
    sub_26BE00258(v12, *(&v12 + 1));
    return;
  }

  v8 = *(&v12 + 1) >> 62;
  if ((*(&v12 + 1) >> 62) <= 1)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v12 >> 32;
LABEL_9:
    if (v9 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = *(v12 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v7, *(&v7 + 1));
}

void MLS.Credential.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BE03DC0(&v11);
  if (v3)
  {
    v12 = &type metadata for MLS.Credential;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F130, &qword_26C01A778);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    *a3 = v11;
  }
}

void MLS.Credential.rawValue.getter()
{
  v7 = 0;
  v5 = *v0;
  v6 = xmmword_26C00BBD0;
  sub_26BE03BF4(&v5);
  v2 = v6;
  if (v1)
  {
    sub_26BE00258(v6, *(&v6 + 1));
    return;
  }

  v3 = *(&v6 + 1) >> 62;
  if ((*(&v6 + 1) >> 62) <= 1)
  {
    if (!v3)
    {
      goto LABEL_11;
    }

    v4 = v6 >> 32;
LABEL_9:
    if (v4 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v3 == 2)
  {
    v4 = *(v6 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v2, *(&v2 + 1));
}

void MLS.RatchetTree.rawValue.getter()
{
  v2 = *v0;
  sub_26BE7D80C(&v2);
  if (!v1)
  {
    sub_26C00909C();
  }

  sub_26BE00258(0, 0xC000000000000000);
}

void sub_26BEE6FEC(uint64_t a1, void (*a2)(uint64_t, __int128 *))
{
  v6 = xmmword_26C00BBD0;
  v7 = 0;
  a2(a1, &v6);
  v3 = v6;
  if (v2)
  {
    sub_26BE00258(v6, *(&v6 + 1));
    return;
  }

  v4 = *(&v6 + 1) >> 62;
  if ((*(&v6 + 1) >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = v6 >> 32;
LABEL_9:
    if (v5 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v4 == 2)
  {
    v5 = *(v6 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v3, *(&v3 + 1));
}

void sub_26BEE70C8()
{
  v2 = *v0;
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v12 = xmmword_26C00BBD0;
  v13 = 0;
  LOWORD(v8) = v2;
  v9 = *(v0 + 4);
  v10 = v3;
  v11 = v4;
  sub_26BF8EBA0(&v8);
  v5 = v12;
  if (v1)
  {
    sub_26BE00258(v12, *(&v12 + 1));
    return;
  }

  v6 = *(&v12 + 1) >> 62;
  if ((*(&v12 + 1) >> 62) <= 1)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = v12 >> 32;
LABEL_9:
    if (v7 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v7 = *(v12 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v5, *(&v5 + 1));
}

void sub_26BEE71B8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_26C00A4EC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_6;
    }
  }

  else if (!v8)
  {
    goto LABEL_6;
  }

  sub_26BE00608(a1, a2);
LABEL_6:
  v9 = sub_26BEE6180();
  if ((v9 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    goto LABEL_10;
  }

  v10 = v9;
  v11 = sub_26BF2F7B0();
  if (v3)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1C0, &qword_26C01A810);
    v15 = sub_26C00A4FC();
    sub_26BE826C4(v15, v16, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    return;
  }

  v13 = v11;
  v25 = v12;
  v17 = sub_26BF2F7B0();
  v19 = v18;
  sub_26C00A4CC();
  v20 = sub_26C00A4AC();
  if (!v21)
  {
    sub_26BE01600();
    swift_allocError();
    *v23 = 9;
    swift_willThrow();
    sub_26BE00258(v13, v25);
    sub_26BE00258(v17, v19);
    goto LABEL_10;
  }

  v22 = v21;
  v24 = v20;
  sub_26BE00258(v17, v19);
  sub_26BE00258(a1, a2);
  sub_26BE00258(a1, a2);
  *a3 = v10;
  *(a3 + 8) = v13;
  *(a3 + 16) = v25;
  *(a3 + 24) = v24;
  *(a3 + 32) = v22;
}

void Array<A>.rawValue.getter(uint64_t a1)
{
  v8 = xmmword_26C00BBD0;
  v9 = 0;
  v6 = xmmword_26C00BBD0;
  v7 = 0;
  v2 = sub_26BEEAFD8(0, a1, &v6);
  if (v1)
  {
    sub_26BE00258(v6, *(&v6 + 1));
    sub_26BE00258(0, 0xC000000000000000);
    return;
  }

  sub_26BF30414(v2);
  sub_26BF2A30C(&v6);
  sub_26BE00258(v6, *(&v6 + 1));
  v3 = v8;
  v4 = *(&v8 + 1) >> 62;
  if ((*(&v8 + 1) >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = v8 >> 32;
LABEL_9:
    if (v5 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v4 == 2)
  {
    v5 = *(v8 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v3, *(&v3 + 1));
}

void MLS.GroupInfo.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
  a3 = v7;
LABEL_7:
  sub_26BED3A64(a3);
  if (v3)
  {
    type metadata accessor for MLS.GroupInfo(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA50, &qword_26C013E28);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
  }

  sub_26BE00258(a1, a2);
  sub_26BE00258(a1, a2);
}

void MLS.Welcome.rawValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v10 = 0;
  LOWORD(v7[0]) = v2;
  v7[1] = v3;
  v8 = *(v0 + 1);
  v9 = xmmword_26C00BBD0;
  sub_26BE34228(v7);
  v4 = v9;
  if (v1)
  {
    sub_26BE00258(v9, *(&v9 + 1));
    return;
  }

  v5 = *(&v9 + 1) >> 62;
  if ((*(&v9 + 1) >> 62) <= 1)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = v9 >> 32;
LABEL_9:
    if (v6 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v6 = *(v9 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v4, *(&v4 + 1));
}

void MLS.Welcome.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = 0;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v7 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v7 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
  }

  v56 = v5;
  v57 = a2;
  v58 = v7;
  v9 = sub_26BEE6180();
  if ((v9 & 0x10000) != 0)
  {
LABEL_15:
    sub_26BE01600();
    swift_allocError();
    *v15 = 1;
LABEL_16:
    swift_willThrow();
    v53 = &type metadata for MLS.Welcome;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA48, &qword_26C013E20);
    v16 = sub_26C00A4FC();
    sub_26BE826C4(v16, v17, v5, a2);

    swift_willThrow();
    sub_26BE00258(v5, a2);
    sub_26BE00258(v56, v57);
    return;
  }

  v51 = v9;
  v11 = v56;
  v10 = v57;
  v12 = v58;
  sub_26BE00608(v56, v57);
  sub_26BE00608(v56, v57);
  sub_26BF30764(&v56, &v53);
  if (v3)
  {
    sub_26BE00258(v56, v57);
    v56 = v11;
    v57 = v10;
    v58 = v12;
    goto LABEL_10;
  }

  if (v54)
  {
    sub_26BE00258(v56, v57);
    v13 = v10;
    v14 = v11;
LABEL_14:
    sub_26BE00258(v14, v13);
    v56 = v11;
    v57 = v10;
    v58 = v12;
    goto LABEL_15;
  }

  v18 = v53;
  sub_26BE00258(v11, v10);
  if (v18 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v19 = 5;
LABEL_10:
    swift_willThrow();
LABEL_11:
    sub_26BE00258(v56, v57);
    v56 = v11;
    v57 = v10;
    v58 = v12;
    goto LABEL_16;
  }

  v46 = v10;
  v20 = sub_26BF2A44C(v18);
  if (v21 >> 60 == 15)
  {
    v14 = v56;
    v13 = v57;
    goto LABEL_14;
  }

  v53 = v20;
  v54 = v21;
  v55 = v22;
  v59 = MEMORY[0x277D84F90];
  v49 = v11;
  v50 = v12;
  v47 = v5;
  for (i = a3; ; a3 = i)
  {
    v23 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v23 == 2)
      {
        v24 = *(v20 + 24);
      }

      else
      {
        v24 = 0;
      }
    }

    else if (v23)
    {
      v24 = v20 >> 32;
    }

    else
    {
      v24 = BYTE6(v21);
    }

    v25 = __OFSUB__(v24, v22);
    v26 = v24 - v22;
    if (v25)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    if (v26 < 1)
    {
      break;
    }

    v27 = sub_26BF2F7B0();
    v52 = v28;
    v29 = v27;
    v30 = sub_26BF2F7B0();
    v32 = v31;
    v33 = sub_26BF2F7B0();
    v35 = v34;
    sub_26BE00608(v29, v52);
    sub_26BE00608(v30, v32);
    sub_26BE00608(v33, v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_26BEECA34(0, *(v59 + 2) + 1, 1, v59);
    }

    v37 = *(v59 + 2);
    v36 = *(v59 + 3);
    if (v37 >= v36 >> 1)
    {
      v59 = sub_26BEECA34((v36 > 1), v37 + 1, 1, v59);
    }

    sub_26BE00258(v29, v52);
    sub_26BE00258(v30, v32);
    sub_26BE00258(v33, v35);
    v38 = v59;
    *(v59 + 2) = v37 + 1;
    v39 = &v38[48 * v37];
    *(v39 + 4) = v29;
    *(v39 + 5) = v52;
    *(v39 + 6) = v30;
    *(v39 + 7) = v32;
    *(v39 + 8) = v33;
    *(v39 + 9) = v35;
    v20 = v53;
    v21 = v54;
    v22 = v55;
    v11 = v49;
    v12 = v50;
    v5 = v47;
  }

  if (v23 > 1)
  {
    v10 = v46;
    if (v23 == 2)
    {
      v40 = *(v20 + 24);
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    if (v23)
    {
      v40 = v20 >> 32;
    }

    else
    {
      v40 = BYTE6(v21);
    }

    v10 = v46;
  }

  if (__OFSUB__(v40, v22))
  {
    goto LABEL_49;
  }

  if (v40 != v22)
  {
    sub_26BE01654();
    swift_allocError();
    *v41 = 0;
    v41[112] = 1;
    swift_willThrow();

    sub_26BE00258(v53, v54);
    goto LABEL_11;
  }

  sub_26BE00258(v20, v21);
  sub_26BE00258(v11, v10);
  v42 = sub_26BF2F7B0();
  v43 = v5;
  v45 = v44;
  sub_26BE00258(v43, a2);
  sub_26BE00258(v56, v57);
  *a3 = v51;
  *(a3 + 8) = v59;
  *(a3 + 16) = v42;
  *(a3 + 24) = v45;
}

void MLS.KeyPackage.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BE00E2C(v16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA40, &qword_26C013E18);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    v11 = v16[9];
    *(a3 + 128) = v16[8];
    *(a3 + 144) = v11;
    *(a3 + 160) = v16[10];
    *(a3 + 176) = v17;
    v12 = v16[5];
    *(a3 + 64) = v16[4];
    *(a3 + 80) = v12;
    v13 = v16[7];
    *(a3 + 96) = v16[6];
    *(a3 + 112) = v13;
    v14 = v16[1];
    *a3 = v16[0];
    *(a3 + 16) = v14;
    v15 = v16[3];
    *(a3 + 32) = v16[2];
    *(a3 + 48) = v15;
  }
}

uint64_t MLS.UpdatePath.rawValue.getter()
{
  v3 = *(v0 + 80);
  v4 = *(v0 + 112);
  v44 = *(v0 + 96);
  v45 = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 48);
  v40 = *(v0 + 32);
  v41 = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 80);
  v42 = *(v0 + 64);
  v43 = v8;
  v9 = *(v0 + 16);
  v39[0] = *v0;
  v39[1] = v9;
  v10 = *(v0 + 112);
  v34 = v44;
  v35 = v10;
  v30 = v40;
  v31 = v7;
  v11 = *(v0 + 136);
  v46 = *(v0 + 128);
  v32 = v42;
  v33 = v3;
  v37 = xmmword_26C00BBD0;
  v38 = 0;
  v36 = *(v0 + 128);
  v28 = v39[0];
  v29 = v5;
  sub_26BE00758(v39, &v19);
  sub_26BE7DD28(&v28);
  if (!v1)
  {
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v19 = v28;
    v20 = v29;
    sub_26BE00854(&v19);
    v17 = xmmword_26C00BBD0;
    v18 = 0;
    v12 = sub_26BEEB0F4(0, v11);
    sub_26BF30414(v12);
    sub_26BF2A30C(&v17);
    sub_26BE00258(v17, *(&v17 + 1));
    v14 = v37;
    v15 = *(&v37 + 1) >> 62;
    if ((*(&v37 + 1) >> 62) > 1)
    {
      if (v15 != 2)
      {
LABEL_13:
        v2 = sub_26C00909C();
        sub_26BE00258(v14, *(&v14 + 1));
        return v2;
      }

      v16 = *(v37 + 24);
    }

    else
    {
      if (!v15)
      {
        goto LABEL_13;
      }

      v16 = v37 >> 32;
    }

    if (v16 < 0)
    {
      __break(1u);
    }

    goto LABEL_13;
  }

  v25 = v34;
  v26 = v35;
  v27 = v36;
  v21 = v30;
  v22 = v31;
  v23 = v32;
  v24 = v33;
  v19 = v28;
  v20 = v29;
  sub_26BE00854(&v19);
  sub_26BE00258(v37, *(&v37 + 1));
  return v2;
}

void MLS.UpdatePath.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = v3;
      v7 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v9 = v3;
    v7 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
    v3 = v9;
  }

  v83 = a1;
  v84 = a2;
  v85 = v7;
  sub_26BE7DE38(v81);
  if (v3)
  {
LABEL_14:
    *&v81[0] = &type metadata for MLS.UpdatePath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F138, &qword_26C01A780);
    v16 = sub_26C00A4FC();
    sub_26BE826C4(v16, v17, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(v83, v84);
    return;
  }

  v78 = v81[6];
  v79 = v81[7];
  v80 = v82;
  v74 = v81[2];
  v75 = v81[3];
  v76 = v81[4];
  v77 = v81[5];
  v72 = v81[0];
  v73 = v81[1];
  v11 = v83;
  v10 = v84;
  v12 = v85;
  sub_26BE00608(v83, v84);
  sub_26BE00608(v11, v10);
  sub_26BF30764(&v83, &v69);
  if (v70)
  {
    sub_26BE00258(v83, v84);
    v13 = v10;
    v14 = v11;
LABEL_12:
    sub_26BE00258(v14, v13);
    v83 = v11;
    v84 = v10;
    v85 = v12;
    sub_26BE01600();
    swift_allocError();
    *v15 = 1;
LABEL_13:
    swift_willThrow();
    sub_26BE00854(&v72);
    goto LABEL_14;
  }

  v61 = a3;
  v18 = v69;
  sub_26BE00258(v11, v10);
  if (v18 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v19 = 5;
    swift_willThrow();
LABEL_9:
    sub_26BE00258(v83, v84);
    v83 = v11;
    v84 = v10;
    v85 = v12;
    goto LABEL_13;
  }

  v20 = sub_26BF2A44C(v18);
  if (v21 >> 60 == 15)
  {
    v14 = v83;
    v13 = v84;
    goto LABEL_12;
  }

  v23 = v21;
  v69 = v20;
  v70 = v21;
  v71 = v22;
  v66 = MEMORY[0x277D84F90];
  v58 = v10;
  v59 = v12;
  for (i = v11; ; v11 = i)
  {
    v24 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v25 = *(v20 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v24)
    {
      v25 = v20 >> 32;
    }

    else
    {
      v25 = BYTE6(v23);
    }

    v26 = __OFSUB__(v25, v22);
    v27 = v25 - v22;
    if (v26)
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v27 < 1)
    {
      break;
    }

    v64 = v22;
    v28 = v20;
    sub_26BE00608(v20, v23);
    v86 = v28;
    sub_26BE00608(v28, v23);
    sub_26BF30764(&v69, &v67);
    if (v68)
    {
      sub_26BE00258(v69, v70);
      v31 = v23;
      v49 = v86;
      v32 = v86;
      goto LABEL_60;
    }

    v29 = v67;
    v62 = v23;
    sub_26BE00258(v86, v23);
    v30 = v71 + v29;
    if (__OFADD__(v71, v29))
    {
      goto LABEL_72;
    }

    v32 = v69;
    v31 = v70;
    v33 = v70 >> 62;
    if ((v70 >> 62) <= 1)
    {
      if (v33)
      {
        v34 = v69 >> 32;
      }

      else
      {
        v34 = BYTE6(v70);
      }

LABEL_37:
      if (v34 < v30)
      {
        goto LABEL_59;
      }

      goto LABEL_40;
    }

    if (v33 == 2)
    {
      v34 = *(v69 + 24);
      goto LABEL_37;
    }

    if (v30 > 0)
    {
LABEL_59:
      v23 = v62;
      v49 = v86;
LABEL_60:
      sub_26BE00258(v32, v31);
      v69 = v49;
      v70 = v23;
      v71 = v64;
      sub_26BE01600();
      swift_allocError();
      *v50 = 1;
LABEL_61:
      swift_willThrow();
LABEL_63:

      sub_26BE00258(v69, v70);
      goto LABEL_9;
    }

LABEL_40:
    if (v30 < v71)
    {
      goto LABEL_73;
    }

    v63 = v69;
    v65 = v70;
    v35 = sub_26C00909C();
    v36 = v35;
    v38 = v37;
    v71 = v30;
    v39 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v39 != 2)
      {
        goto LABEL_48;
      }

      v35 = *(v35 + 16);
      v40 = *(v36 + 24);
    }

    else
    {
      if (!v39)
      {
        goto LABEL_48;
      }

      v35 = v35;
      v40 = v36 >> 32;
    }

    if (v40 < v35)
    {
      goto LABEL_74;
    }

LABEL_48:
    v41 = sub_26C00909C();
    v43 = v42;
    sub_26BE00258(v36, v38);
    sub_26BE00258(v86, v62);
    sub_26BE00608(v63, v65);
    v44 = sub_26BF2FE68(&v69, sub_26BFF72A0, 0);
    if (!v44)
    {
      sub_26BE00258(v69, v70);
      v69 = v63;
      v70 = v65;
      sub_26BE01600();
      swift_allocError();
      *v51 = 1;
      swift_willThrow();
      sub_26BE00258(v41, v43);
      v12 = v59;
      v11 = i;
      goto LABEL_63;
    }

    sub_26BE00258(v63, v65);
    sub_26BE00608(v41, v43);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_26BEECC88(0, *(v66 + 2) + 1, 1, v66);
    }

    v46 = *(v66 + 2);
    v45 = *(v66 + 3);
    if (v46 >= v45 >> 1)
    {
      v66 = sub_26BEECC88((v45 > 1), v46 + 1, 1, v66);
    }

    sub_26BE00258(v41, v43);

    *(v66 + 2) = v46 + 1;
    v47 = &v66[24 * v46];
    *(v47 + 4) = v41;
    *(v47 + 5) = v43;
    *(v47 + 6) = v44;
    v20 = v69;
    v23 = v70;
    v22 = v71;
    v10 = v58;
    v12 = v59;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v48 = *(v20 + 24);
    }

    else
    {
      v48 = 0;
    }
  }

  else if (v24)
  {
    v48 = v20 >> 32;
  }

  else
  {
    v48 = BYTE6(v23);
  }

  if (__OFSUB__(v48, v22))
  {
LABEL_75:
    __break(1u);
    return;
  }

  if (v48 != v22)
  {
    sub_26BE01654();
    swift_allocError();
    *v57 = 0;
    v57[112] = 1;
    goto LABEL_61;
  }

  sub_26BE00258(v20, v23);
  sub_26BE00258(v11, v10);
  sub_26BE00258(a1, a2);
  sub_26BE00258(v83, v84);
  v52 = v79;
  *(v61 + 96) = v78;
  *(v61 + 112) = v52;
  v53 = v80;
  v54 = v75;
  *(v61 + 32) = v74;
  *(v61 + 48) = v54;
  v55 = v77;
  *(v61 + 64) = v76;
  *(v61 + 80) = v55;
  v56 = v73;
  *v61 = v72;
  *(v61 + 16) = v56;
  *(v61 + 128) = v53;
  *(v61 + 136) = v66;
}

void sub_26BEE86E0(void (*a1)(uint64_t))
{
  a1(v1);
  if (!v2)
  {
    sub_26C00909C();
  }

  sub_26BE00258(0, 0xC000000000000000);
}

uint64_t MLS.AuthenticatedContent.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MLS.AuthenticatedContent(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for MLS.FramedContentAuthData(0);
  (*(*(v12 - 8) + 56))(a3 + v11, 1, 1, v12);
  v13 = 0;
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 16);
  }

  else
  {
    if (!v14)
    {
      goto LABEL_7;
    }

    v13 = a1;
  }

  sub_26BE00608(a1, a2);
LABEL_7:
  v19 = a1;
  v20 = a2;
  v21 = v13;
  sub_26BF9CC74(v10);
  if (v3)
  {
    v18 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F140, &qword_26C01A788);
    v15 = sub_26C00A4FC();
    sub_26BE826C4(v15, v16, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(v19, v20);
    return sub_26BE2E258(a3 + v11, &qword_28045E4E0, &qword_26C015A80);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(v19, v20);
    sub_26BE2E258(a3 + v11, &qword_28045E4E0, &qword_26C015A80);
    return sub_26BEEE52C(v10, a3, type metadata accessor for MLS.AuthenticatedContent);
  }
}

void MLS.FramedContent.Content.rawValue.getter()
{
  v2 = v0[9];
  v10[8] = v0[8];
  v10[9] = v2;
  v11[0] = v0[10];
  *(v11 + 9) = *(v0 + 169);
  v3 = v0[5];
  v10[4] = v0[4];
  v10[5] = v3;
  v4 = v0[7];
  v10[6] = v0[6];
  v10[7] = v4;
  v5 = v0[1];
  v10[0] = *v0;
  v10[1] = v5;
  v6 = v0[3];
  v10[2] = v0[2];
  v10[3] = v6;
  v12 = xmmword_26C00BBD0;
  v13 = 0;
  sub_26BEDCCE4(v10);
  v7 = v12;
  if (v1)
  {
    sub_26BE00258(v12, *(&v12 + 1));
    return;
  }

  v8 = *(&v12 + 1) >> 62;
  if ((*(&v12 + 1) >> 62) <= 1)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v12 >> 32;
LABEL_9:
    if (v9 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = *(v12 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v7, *(&v7 + 1));
}

void MLS.Proposal.rawValue.getter()
{
  v2 = *(v0 + 144);
  v10[8] = *(v0 + 128);
  v10[9] = v2;
  v10[10] = *(v0 + 160);
  v11 = *(v0 + 176);
  v3 = *(v0 + 80);
  v10[4] = *(v0 + 64);
  v10[5] = v3;
  v4 = *(v0 + 112);
  v10[6] = *(v0 + 96);
  v10[7] = v4;
  v5 = *(v0 + 16);
  v10[0] = *v0;
  v10[1] = v5;
  v6 = *(v0 + 48);
  v10[2] = *(v0 + 32);
  v10[3] = v6;
  v12 = xmmword_26C00BBD0;
  v13 = 0;
  sub_26BF31160(v10);
  v7 = v12;
  if (v1)
  {
    sub_26BE00258(v12, *(&v12 + 1));
    return;
  }

  v8 = *(&v12 + 1) >> 62;
  if ((*(&v12 + 1) >> 62) <= 1)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v12 >> 32;
LABEL_9:
    if (v9 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = *(v12 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v7, *(&v7 + 1));
}

void MLS.Proposal.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BF3182C(v16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F150, &qword_26C01A798);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    v11 = v16[9];
    *(a3 + 128) = v16[8];
    *(a3 + 144) = v11;
    *(a3 + 160) = v16[10];
    *(a3 + 176) = v17;
    v12 = v16[5];
    *(a3 + 64) = v16[4];
    *(a3 + 80) = v12;
    v13 = v16[7];
    *(a3 + 96) = v16[6];
    *(a3 + 112) = v13;
    v14 = v16[1];
    *a3 = v16[0];
    *(a3 + 16) = v14;
    v15 = v16[3];
    *(a3 + 32) = v16[2];
    *(a3 + 48) = v15;
  }
}

void MLS.GroupSecrets.rawValue.getter()
{
  v2 = *(v0 + 32);
  v9 = xmmword_26C00BBD0;
  v10 = 0;
  v3 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v3;
  v8 = v2;
  sub_26BEE4A58(v7);
  v4 = v9;
  if (v1)
  {
    sub_26BE00258(v9, *(&v9 + 1));
    return;
  }

  v5 = *(&v9 + 1) >> 62;
  if ((*(&v9 + 1) >> 62) <= 1)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = v9 >> 32;
LABEL_9:
    if (v6 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v6 = *(v9 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v4, *(&v4 + 1));
}

void MLS.GroupSecrets.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BEE4D28(v13);
  if (v3)
  {
    v15 = &type metadata for MLS.GroupSecrets;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F158, &qword_26C01A7A0);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    sub_26BE136AC(0, 0xF000000000000000);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    v11 = v14;
    sub_26BE136AC(0, 0xF000000000000000);
    v12 = v13[1];
    *a3 = v13[0];
    *(a3 + 16) = v12;
    *(a3 + 32) = v11;
  }
}

void MLS.GroupContext.rawValue.getter()
{
  v2 = *(v0 + 48);
  v7[2] = *(v0 + 32);
  v7[3] = v2;
  v8 = *(v0 + 64);
  v3 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v3;
  v9 = xmmword_26C00BBD0;
  v10 = 0;
  sub_26BFAF494(v7);
  v4 = v9;
  if (v1)
  {
    sub_26BE00258(v9, *(&v9 + 1));
    return;
  }

  v5 = *(&v9 + 1) >> 62;
  if ((*(&v9 + 1) >> 62) <= 1)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = v9 >> 32;
LABEL_9:
    if (v6 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v6 = *(v9 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v4, *(&v4 + 1));
}

void MLS.GroupContext.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BFAF814(v13);
  if (v3)
  {
    v15 = &type metadata for MLS.GroupContext;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F160, &qword_26C01A7A8);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    v11 = v13[3];
    *(a3 + 32) = v13[2];
    *(a3 + 48) = v11;
    *(a3 + 64) = v14;
    v12 = v13[1];
    *a3 = v13[0];
    *(a3 + 16) = v12;
  }
}

uint64_t MLS.AddProposal.rawValue.getter()
{
  v3 = v0[9];
  v4 = v0[7];
  v51 = v0[8];
  v52 = v3;
  v5 = v0[9];
  v53 = v0[10];
  v6 = v0[5];
  v7 = v0[3];
  v47 = v0[4];
  v48 = v6;
  v8 = v0[5];
  v9 = v0[7];
  v49 = v0[6];
  v50 = v9;
  v10 = v0[1];
  v44[0] = *v0;
  v44[1] = v10;
  v11 = v0[3];
  v13 = *v0;
  v12 = v0[1];
  v45 = v0[2];
  v46 = v11;
  v42 = xmmword_26C00BBD0;
  v38 = v51;
  v39 = v5;
  v40 = v0[10];
  v34 = v47;
  v35 = v8;
  v36 = v49;
  v37 = v4;
  v30 = v13;
  v31 = v12;
  v54 = *(v0 + 22);
  v43 = 0;
  v41 = *(v0 + 22);
  v32 = v45;
  v33 = v7;
  sub_26BE2DFC0(v44, &v18);
  sub_26BE00A98(&v30);
  if (!v1)
  {
    v26 = v38;
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    sub_26BE2E01C(&v18);
    v14 = v42;
    v15 = *(&v42 + 1) >> 62;
    if ((*(&v42 + 1) >> 62) > 1)
    {
      if (v15 != 2)
      {
LABEL_11:
        v2 = sub_26C00909C();
        sub_26BE00258(v14, *(&v14 + 1));
        return v2;
      }

      v16 = *(v42 + 24);
    }

    else
    {
      if (!v15)
      {
        goto LABEL_11;
      }

      v16 = v42 >> 32;
    }

    if (v16 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  v26 = v38;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  sub_26BE2E01C(&v18);
  sub_26BE00258(v42, *(&v42 + 1));
  return v2;
}

void MLS.AddProposal.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_7;
    }

    v9 = v3;
    v7 = *(a1 + 16);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v3;
    v7 = a1;
  }

  sub_26BE00608(a1, a2);
  v3 = v9;
LABEL_7:
  v19 = a1;
  v20 = a2;
  v21 = v7;
  sub_26BE00E2C(v17);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F168, &qword_26C01A7B0);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(v19, v20);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(v19, v20);
    v12 = v17[9];
    *(a3 + 128) = v17[8];
    *(a3 + 144) = v12;
    *(a3 + 160) = v17[10];
    *(a3 + 176) = v18;
    v13 = v17[5];
    *(a3 + 64) = v17[4];
    *(a3 + 80) = v13;
    v14 = v17[7];
    *(a3 + 96) = v17[6];
    *(a3 + 112) = v14;
    v15 = v17[1];
    *a3 = v17[0];
    *(a3 + 16) = v15;
    v16 = v17[3];
    *(a3 + 32) = v17[2];
    *(a3 + 48) = v16;
  }
}

uint64_t MLS.UpdateProposal.rawValue.getter()
{
  v3 = *(v0 + 80);
  v4 = *(v0 + 112);
  v40 = *(v0 + 96);
  v41 = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 48);
  v36 = *(v0 + 32);
  v37 = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 80);
  v38 = *(v0 + 64);
  v39 = v8;
  v9 = *(v0 + 16);
  v35[0] = *v0;
  v35[1] = v9;
  v33 = xmmword_26C00BBD0;
  v10 = *(v0 + 112);
  v30 = v40;
  v31 = v10;
  v26 = v36;
  v27 = v7;
  v28 = v38;
  v29 = v3;
  v42 = *(v0 + 128);
  v34 = 0;
  v32 = *(v0 + 128);
  v24 = v35[0];
  v25 = v5;
  sub_26BE00758(v35, &v15);
  sub_26BE7DD28(&v24);
  if (!v1)
  {
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v20 = v29;
    v15 = v24;
    v16 = v25;
    sub_26BE00854(&v15);
    v11 = v33;
    v12 = *(&v33 + 1) >> 62;
    if ((*(&v33 + 1) >> 62) > 1)
    {
      if (v12 != 2)
      {
LABEL_11:
        v2 = sub_26C00909C();
        sub_26BE00258(v11, *(&v11 + 1));
        return v2;
      }

      v13 = *(v33 + 24);
    }

    else
    {
      if (!v12)
      {
        goto LABEL_11;
      }

      v13 = v33 >> 32;
    }

    if (v13 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  v21 = v30;
  v22 = v31;
  v23 = v32;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v15 = v24;
  v16 = v25;
  sub_26BE00854(&v15);
  sub_26BE00258(v33, *(&v33 + 1));
  return v2;
}

void MLS.UpdateProposal.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_7;
    }

    v9 = v3;
    v7 = *(a1 + 16);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v3;
    v7 = a1;
  }

  sub_26BE00608(a1, a2);
  v3 = v9;
LABEL_7:
  v18 = a1;
  v19 = a2;
  v20 = v7;
  sub_26BE7DE38(v16);
  if (v3)
  {
    v21 = &type metadata for MLS.UpdateProposal;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F170, &qword_26C01A7B8);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(v18, v19);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(v18, v19);
    v12 = v16[7];
    *(a3 + 96) = v16[6];
    *(a3 + 112) = v12;
    *(a3 + 128) = v17;
    v13 = v16[3];
    *(a3 + 32) = v16[2];
    *(a3 + 48) = v13;
    v14 = v16[5];
    *(a3 + 64) = v16[4];
    *(a3 + 80) = v14;
    v15 = v16[1];
    *a3 = v16[0];
    *(a3 + 16) = v15;
  }
}

uint64_t MLS.RemoveProposal.rawValue.getter()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v9 = xmmword_26C00BBD0;
  v10 = 0;
  v7 = bswap32(v1);
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = &v7;
  v8[1] = v8;
  __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v8);
  v2 = v9;
  v3 = *(&v9 + 1) >> 62;
  if ((*(&v9 + 1) >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(v9 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = v9 >> 32;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

LABEL_8:
  v5 = sub_26C00909C();
  sub_26BE00258(v2, *(&v2 + 1));
  return v5;
}

void MLS.RemoveProposal.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_6;
    }
  }

  else if (!v6)
  {
    goto LABEL_6;
  }

  sub_26BE00608(a1, a2);
LABEL_6:
  v7 = sub_26BEE6028();
  if ((v7 & 0x100000000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F178, &qword_26C01A7C0);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
  }

  else
  {
    v8 = v7;
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    *a3 = v8;
  }
}

void MLS.PreSharedKeyProposal.rawValue.getter()
{
  v2 = v0[1];
  v3[0] = *v0;
  v3[1] = v2;
  v3[2] = v0[2];
  sub_26BECC2F8(v3);
  if (!v1)
  {
    sub_26C00909C();
  }

  sub_26BE00258(0, 0xC000000000000000);
}

void MLS.PreSharedKeyProposal.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_7;
    }

    v9 = v4;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v4;
  }

  sub_26BE00608(a1, a2);
  v4 = v9;
LABEL_7:
  sub_26BECC664(v15);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F180, &qword_26C01A7C8);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
  }

  else
  {
    v12 = v16;
    v13 = v17;
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    v14 = v15[1];
    *a3 = v15[0];
    *(a3 + 16) = v14;
    *(a3 + 32) = v12;
    *(a3 + 40) = v13;
  }
}

void MLS.ReInitProposal.rawValue.getter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 3);
  v10 = xmmword_26C00BBD0;
  v11 = 0;
  v7 = *v0;
  v8 = v2;
  v9 = v3;
  sub_26BFAE974(&v7);
  v4 = v10;
  if (v1)
  {
    sub_26BE00258(v10, *(&v10 + 1));
    return;
  }

  v5 = *(&v10 + 1) >> 62;
  if ((*(&v10 + 1) >> 62) <= 1)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = v10 >> 32;
LABEL_9:
    if (v6 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v6 = *(v10 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v4, *(&v4 + 1));
}

void MLS.ReInitProposal.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BFAEB6C(&v13);
  if (v3)
  {
    v16 = &type metadata for MLS.ReInitProposal;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F188, &qword_26C01A7D0);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    v11 = v14;
    v12 = v15;
    *a3 = v13;
    *(a3 + 16) = v11;
    *(a3 + 24) = v12;
  }
}

void sub_26BEE9E90()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v3);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v2), v2))
  {
    __break(1u);
    return;
  }

  v5 = HIDWORD(v2) - v2;
LABEL_10:
  sub_26BF30414(v5);
  if (!v1)
  {
    sub_26BE11228(v2, v3);
    sub_26C00909C();
  }

  sub_26BE00258(0, 0xC000000000000000);
}

void sub_26BEE9FE8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_7;
    }

    v13 = v6;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = v6;
  }

  sub_26BE00608(a1, a2);
  v6 = v13;
LABEL_7:
  v14 = sub_26BF2F7B0();
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v16 = sub_26C00A4FC();
    sub_26BE826C4(v16, v17, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
  }

  else
  {
    v18 = v14;
    v19 = v15;
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    *a6 = v18;
    a6[1] = v19;
  }
}

void MLS.GroupContextExtensionsProposal.rawValue.getter()
{
  v2 = *v0;
  v9 = xmmword_26C00BBD0;
  v10 = 0;
  v7 = xmmword_26C00BBD0;
  v8 = 0;
  v3 = sub_26BEEAC24(0, v2);
  if (v1)
  {
    sub_26BE00258(v7, *(&v7 + 1));
    sub_26BE00258(0, 0xC000000000000000);
    return;
  }

  sub_26BF30414(v3);
  sub_26BF2A30C(&v7);
  sub_26BE00258(v7, *(&v7 + 1));
  v4 = v9;
  v5 = *(&v9 + 1) >> 62;
  if ((*(&v9 + 1) >> 62) <= 1)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = v9 >> 32;
LABEL_9:
    if (v6 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v6 = *(v9 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v4, *(&v4 + 1));
}

void MLS.GroupContextExtensionsProposal.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = 0;
  v66 = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v7 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v7 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
  }

  v63 = a1;
  v64 = a2;
  v65 = v7;
  sub_26BE00608(a1, a2);
  sub_26BE00608(a1, a2);
  sub_26BF30764(&v63, &v60);
  if (v3)
  {
    sub_26BE00258(v63, v64);
    v63 = a1;
    v64 = a2;
    v65 = v7;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (v61)
  {
    sub_26BE00258(v63, v64);
    v9 = a2;
    v10 = a1;
LABEL_13:
    sub_26BE00258(v10, v9);
    v63 = a1;
    v64 = a2;
    v65 = v7;
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
    goto LABEL_14;
  }

  v14 = v60;
  sub_26BE00258(a1, a2);
  if (v14 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v15 = 5;
    goto LABEL_9;
  }

  v16 = sub_26BF2A44C(v14);
  if (v17 >> 60 == 15)
  {
    v10 = v63;
    v9 = v64;
    goto LABEL_13;
  }

  v19 = v18;
  v60 = v16;
  v61 = v17;
  v20 = v17 >> 62;
  v50 = v16 >> 32;
  v57 = MEMORY[0x277D84F90];
  v51 = BYTE6(v17);
  v52 = v17 >> 62;
  v62 = v18;
  v54 = a3;
  v55 = v7;
  v53 = v16;
  if ((v17 >> 62) > 1)
  {
    goto LABEL_22;
  }

LABEL_20:
  v21 = v51;
  if (v20)
  {
    v21 = v50;
  }

  while (1)
  {
    v22 = __OFSUB__(v21, v19);
    v23 = v21 - v19;
    if (v22)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (v23 < 1)
    {
      v46 = v61 >> 62;
      if ((v61 >> 62) > 1)
      {
        if (v46 == 2)
        {
          v47 = *(v60 + 24);
        }

        else
        {
          v47 = 0;
        }
      }

      else if (v46)
      {
        v47 = v60 >> 32;
      }

      else
      {
        v47 = BYTE6(v61);
      }

      if (!__OFSUB__(v47, v19))
      {
        if (v47 != v19)
        {
          sub_26BE01654();
          swift_allocError();
          *v49 = 0;
          v49[112] = 1;
          goto LABEL_70;
        }

        sub_26BE00258(v60, v61);
        sub_26BE00258(a1, a2);
        sub_26BE00258(a1, a2);
        sub_26BE00258(v63, v64);
        *a3 = v57;
        return;
      }

LABEL_84:
      __break(1u);
    }

    v24 = v19 + 2;
    if (__OFADD__(v19, 2))
    {
      goto LABEL_79;
    }

    v25 = v60;
    v26 = v61;
    v27 = v61 >> 62;
    if ((v61 >> 62) <= 1)
    {
      if (v27)
      {
        v28 = v60 >> 32;
      }

      else
      {
        v28 = BYTE6(v61);
      }

LABEL_34:
      if (v28 < v24)
      {
        goto LABEL_69;
      }

      goto LABEL_37;
    }

    if (v27 == 2)
    {
      v28 = *(v60 + 24);
      goto LABEL_34;
    }

    if (v24 > 0)
    {
      goto LABEL_69;
    }

LABEL_37:
    v58 = v60;
    v59 = v61;
    if (v24 < v19)
    {
      goto LABEL_80;
    }

    sub_26BE00608(v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    v56 = v25;
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v58, v59);
    v62 = v19 + 2;
    sub_26BE00608(v25, v26);
    sub_26BE00608(v25, v26);
    sub_26BF30764(&v60, &v58);
    if (v59)
    {
      break;
    }

    v29 = v58;
    sub_26BE00258(v25, v26);
    v22 = __OFADD__(v62, v29);
    v19 = v62 + v29;
    if (v22)
    {
      goto LABEL_81;
    }

    v30 = v60;
    v31 = v61;
    v32 = v61 >> 62;
    if ((v61 >> 62) <= 1)
    {
      if (v32)
      {
        v33 = v60 >> 32;
      }

      else
      {
        v33 = BYTE6(v61);
      }

LABEL_46:
      if (v33 < v19)
      {
        goto LABEL_68;
      }

      goto LABEL_49;
    }

    if (v32 == 2)
    {
      v33 = *(v60 + 24);
      goto LABEL_46;
    }

    if (v19 > 0)
    {
      goto LABEL_68;
    }

LABEL_49:
    if (v19 < v62)
    {
      goto LABEL_82;
    }

    v34 = sub_26C00909C();
    v35 = v34;
    v37 = v36;
    v62 = v19;
    v38 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v38 != 2)
      {
        goto LABEL_57;
      }

      v34 = *(v34 + 16);
      v39 = *(v35 + 24);
    }

    else
    {
      if (!v38)
      {
        goto LABEL_57;
      }

      v34 = v34;
      v39 = v35 >> 32;
    }

    if (v39 < v34)
    {
      goto LABEL_83;
    }

LABEL_57:
    v40 = sub_26C00909C();
    v42 = v41;
    sub_26BE00258(v35, v37);
    sub_26BE00258(v56, v26);
    sub_26BE00608(v40, v42);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_26BEEBD8C(0, *(v57 + 2) + 1, 1, v57);
    }

    v44 = *(v57 + 2);
    v43 = *(v57 + 3);
    if (v44 >= v43 >> 1)
    {
      v57 = sub_26BEEBD8C((v43 > 1), v44 + 1, 1, v57);
    }

    sub_26BE00258(v40, v42);
    *(v57 + 2) = v44 + 1;
    v45 = &v57[24 * v44];
    *(v45 + 16) = bswap32(0) >> 16;
    *(v45 + 5) = v40;
    *(v45 + 6) = v42;
    a3 = v54;
    v7 = v55;
    LODWORD(v20) = v52;
    v16 = v53;
    if (v52 <= 1)
    {
      goto LABEL_20;
    }

LABEL_22:
    if (v20 == 2)
    {
      v21 = *(v16 + 24);
    }

    else
    {
      v21 = 0;
    }
  }

  sub_26BE00258(v60, v61);
  v31 = v26;
  v30 = v25;
LABEL_68:
  sub_26BE00258(v30, v31);
  v60 = v25;
  v61 = v26;
  v62 = v24;
LABEL_69:
  sub_26BE01600();
  swift_allocError();
  *v48 = 1;
LABEL_70:
  swift_willThrow();

  sub_26BE00258(v60, v61);
LABEL_10:
  sub_26BE00258(v63, v64);
  v63 = a1;
  v64 = a2;
  v65 = v7;
LABEL_14:
  swift_willThrow();
  v60 = &type metadata for MLS.GroupContextExtensionsProposal;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F198, &qword_26C01A7E0);
  v12 = sub_26C00A4FC();
  sub_26BE826C4(v12, v13, a1, a2);

  swift_willThrow();
  sub_26BE00258(a1, a2);
  sub_26BE00258(v63, v64);
}

void MLS.Commit.rawValue.getter()
{
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v9[8] = *(v0 + 128);
  v10 = *(v0 + 144);
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  v4 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v4;
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  v11 = xmmword_26C00BBD0;
  v12 = 0;
  sub_26BED61D4(v9);
  v6 = v11;
  if (v1)
  {
    sub_26BE00258(v11, *(&v11 + 1));
    return;
  }

  v7 = *(&v11 + 1) >> 62;
  if ((*(&v11 + 1) >> 62) <= 1)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = v11 >> 32;
LABEL_9:
    if (v8 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(v11 + 24);
    goto LABEL_9;
  }

LABEL_11:
  sub_26C00909C();
  sub_26BE00258(v6, *(&v6 + 1));
}

uint64_t MLS.Commit.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26BE7150C(v39);
  v7 = 0;
  v35 = v39[5];
  v36 = v39[6];
  v37 = v39[7];
  v38 = v39[8];
  v31 = v39[1];
  v32 = v39[2];
  v33 = v39[3];
  v34 = v39[4];
  v8 = a2 >> 62;
  v30 = v39[0];
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_7;
    }

    v7 = *(a1 + 16);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = a1;
  }

  sub_26BE00608(a1, a2);
LABEL_7:
  v25 = a1;
  v26 = a2;
  v27 = v7;
  sub_26BED6530(v28);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1A0, &qword_26C01A7E8);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(v25, v26);
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v16 = v30;
    v17 = v31;
    return sub_26BE2E258(&v16, &qword_28045E8B0, &qword_26C012560);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(v25, v26);
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v16 = v30;
    v17 = v31;
    result = sub_26BE2E258(&v16, &qword_28045E8B0, &qword_26C012560);
    v12 = v28[7];
    *(a3 + 96) = v28[6];
    *(a3 + 112) = v12;
    *(a3 + 128) = v28[8];
    *(a3 + 144) = v29;
    v13 = v28[3];
    *(a3 + 32) = v28[2];
    *(a3 + 48) = v13;
    v14 = v28[5];
    *(a3 + 64) = v28[4];
    *(a3 + 80) = v14;
    v15 = v28[1];
    *a3 = v28[0];
    *(a3 + 16) = v15;
  }

  return result;
}

uint64_t sub_26BEEAC24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 48);
  v6 = *(a2 + 16) + 1;
  while (--v6)
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    LOWORD(v28[0]) = bswap32(*(v5 - 8)) >> 16;
    v31 = MEMORY[0x277D838B0];
    v32 = MEMORY[0x277CC9C18];
    v29 = v28;
    v30 = v28 + 2;
    __swift_project_boxed_opaque_existential_1(&v29, MEMORY[0x277D838B0]);
    sub_26BE00608(v7, v8);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v9 == 2)
      {
        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        v10 = v11 - v12;
        if (__OFSUB__(v11, v12))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else if (v9)
    {
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_39;
      }

      v10 = HIDWORD(v7) - v7;
    }

    else
    {
      v10 = BYTE6(v8);
    }

    v13 = sub_26BF30414(v10);
    if (v3)
    {
      goto LABEL_34;
    }

    v27 = v13;
    v31 = MEMORY[0x277CC9318];
    v32 = MEMORY[0x277CC9300];
    v29 = v7;
    v30 = v8;
    v14 = __swift_project_boxed_opaque_existential_1(&v29, MEMORY[0x277CC9318]);
    v15 = *v14;
    v16 = v14[1];
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 != 2)
      {
        memset(v28, 0, 14);
        sub_26BE00608(v7, v8);
        goto LABEL_28;
      }

      v26 = v10;
      v18 = *(v15 + 16);
      v24 = *(v15 + 24);
      sub_26BE00608(v7, v8);
      if (sub_26C008E9C() && __OFSUB__(v18, sub_26C008ECC()))
      {
        goto LABEL_42;
      }

      if (__OFSUB__(v24, v18))
      {
        goto LABEL_41;
      }

      sub_26C008EBC();
      sub_26C00908C();
    }

    else
    {
      if (!v17)
      {
        v28[0] = *v14;
        LOWORD(v28[1]) = v16;
        BYTE2(v28[1]) = BYTE2(v16);
        BYTE3(v28[1]) = BYTE3(v16);
        BYTE4(v28[1]) = BYTE4(v16);
        BYTE5(v28[1]) = BYTE5(v16);
        sub_26BE00608(v7, v8);
LABEL_28:
        sub_26C00908C();
        goto LABEL_29;
      }

      v25 = a1;
      v19 = v15;
      if (v15 >> 32 < v15)
      {
        goto LABEL_40;
      }

      v26 = v10;
      sub_26BE00608(v7, v8);
      if (sub_26C008E9C() && __OFSUB__(v19, sub_26C008ECC()))
      {
        goto LABEL_43;
      }

      sub_26C008EBC();
      sub_26C00908C();
      a1 = v25;
    }

    v10 = v26;
    v3 = 0;
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(&v29);
    sub_26BE00258(v7, v8);
    v20 = v27 + v10;
    if (__OFADD__(v27, v10))
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
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v21 = __OFADD__(v20, 2);
    v22 = v20 + 2;
    if (v21)
    {
      goto LABEL_37;
    }

    v5 += 3;
    v21 = __OFADD__(a1, v22);
    a1 += v22;
    if (v21)
    {
      __break(1u);
LABEL_34:
      sub_26BE00258(v7, v8);
      return a1;
    }
  }

  return a1;
}

uint64_t sub_26BEEAFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = a2 + 32;
    do
    {
      v8 = *(v7 + 80);
      v9 = *(v7 + 112);
      v27 = *(v7 + 96);
      v28 = v9;
      v10 = *(v7 + 16);
      v11 = *(v7 + 48);
      v23 = *(v7 + 32);
      v24 = v11;
      v12 = *(v7 + 48);
      v13 = *(v7 + 80);
      v25 = *(v7 + 64);
      v26 = v13;
      v14 = *(v7 + 16);
      v22[0] = *v7;
      v22[1] = v14;
      v15 = *(v7 + 112);
      v20[6] = v27;
      v20[7] = v15;
      v20[2] = v23;
      v20[3] = v12;
      v20[4] = v25;
      v20[5] = v8;
      v29 = *(v7 + 128);
      v21 = *(v7 + 128);
      v20[0] = v22[0];
      v20[1] = v10;
      sub_26BECBB94(v22, v19);
      v16 = sub_26BE7D9CC(a3, v20);
      result = sub_26BE2E258(v22, &qword_28045E4C8, &unk_26C0112A0);
      if (v3)
      {
        break;
      }

      v18 = __OFADD__(a1, v16);
      a1 += v16;
      if (v18)
      {
        __break(1u);
        return result;
      }

      v7 += 136;
      --v5;
    }

    while (v5);
  }

  return a1;
}

uint64_t sub_26BEEB0F4(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = result;
  v5 = (a2 + 48);
  v6 = *(a2 + 16) + 1;
  while (1)
  {
    v7 = v6 - 1;
    if (!v7)
    {
      return v4;
    }

    v8 = *(v5 - 2);
    v9 = *(v5 - 1);
    v10 = *v5;
    v11 = v9 >> 62;
    v28 = v7;
    if ((v9 >> 62) > 1)
    {
      if (v11 == 2)
      {
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        v12 = v13 - v14;
        if (__OFSUB__(v13, v14))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else if (v11)
    {
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_28;
      }

      v12 = HIDWORD(v8) - v8;
    }

    else
    {
      v12 = BYTE6(v9);
    }

    sub_26BE00608(v8, v9);

    v15 = sub_26BF30414(v12);
    if (v3)
    {
      sub_26BE00258(v8, v9);

      return v4;
    }

    v16 = v15;
    v17 = v9;
    v31 = v4;
    v18 = v8;
    v19 = v8;
    v20 = v17;
    result = sub_26BE11228(v19, v17);
    v21 = v16 + v12;
    if (__OFADD__(v16, v12))
    {
      break;
    }

    v29 = xmmword_26C00BBD0;
    v30 = 0;
    v22 = sub_26BEEB2E4(0, v10);
    v23 = v22;
    v3 = 0;
    v24 = sub_26BF30414(v22);
    sub_26BF2A30C(&v29);
    sub_26BE00258(v29, *(&v29 + 1));
    sub_26BE00258(v18, v20);

    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_25;
    }

    v26 = __OFADD__(v21, v25);
    v27 = v21 + v25;
    if (v26)
    {
      goto LABEL_26;
    }

    v5 += 3;
    v4 = v31 + v27;
    v6 = v28;
    if (__OFADD__(v31, v27))
    {
      __break(1u);
      sub_26BE00258(v29, *(&v29 + 1));
      sub_26BE00258(v18, v20);

      return v31;
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
  return result;
}

uint64_t sub_26BEEB2E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 56);
  v6 = *(a2 + 16) + 1;
  while (--v6)
  {
    v7 = *(v5 - 3);
    v8 = *(v5 - 2);
    v9 = *(v5 - 1);
    v10 = *v5;
    v11 = v8 >> 62;
    v42 = v5;
    if ((v8 >> 62) > 1)
    {
      if (v11 == 2)
      {
        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        v12 = v13 - v14;
        if (__OFSUB__(v13, v14))
        {
          goto LABEL_66;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else if (v11)
    {
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_65;
      }

      v12 = HIDWORD(v7) - v7;
    }

    else
    {
      v12 = BYTE6(v8);
    }

    sub_26BE00608(v7, v8);
    sub_26BE00608(v9, v10);
    v15 = sub_26BF30414(v12);
    if (v3)
    {
      goto LABEL_60;
    }

    v16 = v15;
    v44 = v10;
    v49 = MEMORY[0x277CC9318];
    v50 = MEMORY[0x277CC9300];
    v47 = v7;
    v48 = v8;
    v46 = v8;
    v17 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277CC9318]);
    v18 = *v17;
    v19 = v17[1] >> 62;
    v45 = v9;
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v39 = v6;
        v20 = a1;
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        sub_26BE00608(v7, v8);
        if (sub_26C008E9C() && __OFSUB__(v21, sub_26C008ECC()))
        {
          goto LABEL_73;
        }

        if (__OFSUB__(v22, v21))
        {
          goto LABEL_68;
        }

LABEL_26:
        sub_26C008EBC();
        sub_26C00908C();
        a1 = v20;
        v6 = v39;
        v9 = v45;
        goto LABEL_28;
      }
    }

    else if (v19)
    {
      v39 = v6;
      v20 = a1;
      v23 = v18;
      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_26BE00608(v7, v8);
      if (sub_26C008E9C() && __OFSUB__(v23, sub_26C008ECC()))
      {
        goto LABEL_74;
      }

      goto LABEL_26;
    }

    sub_26BE00608(v7, v8);
    sub_26C00908C();
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v8 = v16 + v12;
    if (__OFADD__(v16, v12))
    {
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
      __break(1u);
LABEL_69:
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
    }

    v24 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v27 = *(v9 + 16);
        v26 = *(v9 + 24);
        v25 = v26 - v27;
        if (__OFSUB__(v26, v27))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v24)
    {
      if (__OFSUB__(HIDWORD(v9), v9))
      {
        goto LABEL_69;
      }

      v25 = HIDWORD(v9) - v9;
    }

    else
    {
      v25 = BYTE6(v10);
    }

    v28 = sub_26BF30414(v25);
    v49 = MEMORY[0x277CC9318];
    v50 = MEMORY[0x277CC9300];
    v47 = v9;
    v48 = v10;
    v29 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277CC9318]);
    v30 = *v29;
    v31 = v29[1] >> 62;
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v40 = a1;
        v32 = *(v30 + 16);
        v43 = *(v30 + 24);
        sub_26BE00608(v45, v10);
        if (sub_26C008E9C())
        {
          if (__OFSUB__(v32, sub_26C008ECC()))
          {
            goto LABEL_75;
          }

          v33 = v6;
        }

        else
        {
          v33 = v6;
        }

        if (__OFSUB__(v43, v32))
        {
          goto LABEL_72;
        }

        sub_26C008EBC();
        sub_26C00908C();
        a1 = v40;
        v6 = v33;
LABEL_54:
        v10 = v44;
        v9 = v45;
        goto LABEL_55;
      }
    }

    else if (v31)
    {
      v41 = v6;
      v34 = v30;
      if (v30 >> 32 < v30)
      {
        goto LABEL_71;
      }

      sub_26BE00608(v45, v10);
      if (sub_26C008E9C() && __OFSUB__(v34, sub_26C008ECC()))
      {
        goto LABEL_76;
      }

      sub_26C008EBC();
      sub_26C00908C();
      v6 = v41;
      goto LABEL_54;
    }

    v9 = v45;
    sub_26BE00608(v45, v10);
    sub_26C00908C();
LABEL_55:
    __swift_destroy_boxed_opaque_existential_1(&v47);
    sub_26BE00258(v7, v46);
    sub_26BE00258(v9, v10);
    v35 = v28 + v25;
    if (__OFADD__(v28, v25))
    {
      goto LABEL_63;
    }

    v36 = __OFADD__(v8, v35);
    v37 = v8 + v35;
    if (v36)
    {
      goto LABEL_64;
    }

    v5 = v42 + 4;
    v36 = __OFADD__(a1, v37);
    a1 += v37;
    v3 = 0;
    if (v36)
    {
      __break(1u);
LABEL_60:
      sub_26BE00258(v7, v8);
      sub_26BE00258(v9, v10);
      return a1;
    }
  }

  return a1;
}

void *sub_26BEEB900(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2C0, &qword_26C0224A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[17 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 136 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C8, &unk_26C0112A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEBA84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F268, &qword_26C01A8A8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEBBA4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

char *sub_26BEEBC98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F200, &qword_26C01A848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_26BEEBD8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F258, &qword_26C01A898);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_26BEEBEAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2A8, &unk_26C0245F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_26BEEC03C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2B0, &unk_26C0245D0);
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

char *sub_26BEEC18C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_26BEEC288(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1C8, &qword_26C01A818);
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

char *sub_26BEEC394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1E0, &qword_26C01A828);
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

char *sub_26BEEC498(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1D8, &qword_26C01A820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_26BEEC5B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1E8, &qword_26C01A830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_26BEEC6D8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F298, &qword_26C01A8D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E718, &qword_26C011380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEC80C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E570, &unk_26C0245A0);
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

char *sub_26BEEC910(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F230, &qword_26C01A870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEECA34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F228, &qword_26C01A868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_26BEECB7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E568, &qword_26C00E4D8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEECC88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2A0, &unk_26C01A8E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_26BEECDA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F290, &qword_26C01A8D0);
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

char *sub_26BEECEC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_26BEECFC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1B0, &qword_26C01A800);
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

char *sub_26BEED0EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F280, &qword_26C01A8C0);
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

char *sub_26BEED214(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C8, &qword_26C012570);
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

void *sub_26BEED320(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F278, &qword_26C01A8B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26BEED510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F270, &qword_26C01A8B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEED658(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2B8, &unk_26C024630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 200);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[200 * v8])
    {
      memmove(v12, v13, 200 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEED79C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    *(v13 + 3) = 2 * ((v14 - 32) / 184);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[184 * v11])
    {
      memmove(v15, v16, 184 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26BEED8C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F238, &qword_26C01A878);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEED9D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1B8, &qword_26C01A808);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEDAF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E548, &qword_26C00E4C0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEDC00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1F0, &qword_26C01A838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
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

void *sub_26BEEDD50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t sub_26BEEDF8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v46 = a3;
  v10 = type metadata accessor for MLS.MLSMessage(0);
  v39 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = 0;
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_7;
    }

    v16 = *(a1 + 16);
  }

  else
  {
    if (!v17)
    {
      goto LABEL_7;
    }

    v16 = a1;
  }

  sub_26BE00608(a1, a2);
LABEL_7:
  v43 = a1;
  v44 = a2;
  v45 = v16;
  sub_26BE00608(a1, a2);
  sub_26BE00608(a1, a2);
  sub_26BF30764(&v43, &v40);
  if (!v5)
  {
    if (v41)
    {
      sub_26BE00258(v43, v44);
      v18 = a2;
      v19 = a1;
    }

    else
    {
      v37 = a5;
      v24 = v40;
      sub_26BE00258(a1, a2);
      if (v24 > 100000000)
      {
        sub_26BE01600();
        swift_allocError();
        *v25 = 5;
        swift_willThrow();
        a5 = v37;
        goto LABEL_9;
      }

      result = sub_26BF2A44C(v24);
      if (v26 >> 60 != 15)
      {
        v40 = result;
        v41 = v26;
        v42 = v27;
        a5 = MEMORY[0x277D84F90];
        for (i = a4; ; a4 = i)
        {
          v28 = v26 >> 62;
          if ((v26 >> 62) > 1)
          {
            v29 = v28 == 2 ? *(result + 24) : 0;
          }

          else
          {
            v29 = v28 ? result >> 32 : BYTE6(v26);
          }

          v30 = __OFSUB__(v29, v27);
          v31 = v29 - v27;
          if (v30)
          {
            break;
          }

          if (v31 < 1)
          {
            if (v28 > 1)
            {
              if (v28 == 2)
              {
                v34 = *(result + 24);
              }

              else
              {
                v34 = 0;
              }
            }

            else if (v28)
            {
              v34 = result >> 32;
            }

            else
            {
              v34 = BYTE6(v26);
            }

            if (!__OFSUB__(v34, v27))
            {
              if (v34 != v27)
              {
                sub_26BE01654();
                swift_allocError();
                *v35 = 0;
                v35[112] = 1;
                swift_willThrow();

                sub_26BE00258(v40, v41);
                a5 = v37;
                goto LABEL_9;
              }

              sub_26BE00258(result, v26);
              sub_26BE00258(a1, a2);
              sub_26BE00258(a1, a2);
              sub_26BE00258(v43, v44);
              return a5;
            }

LABEL_46:
            __break(1u);
            return result;
          }

          sub_26BEE3C08(v15);
          sub_26BEEE46C(v15, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a5 = sub_26BEEDD50(0, a5[2] + 1, 1, a5, &qword_28045F248, &qword_26C01A888, type metadata accessor for MLS.MLSMessage);
          }

          v33 = a5[2];
          v32 = a5[3];
          if (v33 >= v32 >> 1)
          {
            a5 = sub_26BEEDD50((v32 > 1), v33 + 1, 1, a5, &qword_28045F248, &qword_26C01A888, type metadata accessor for MLS.MLSMessage);
          }

          sub_26BEEE4D0(v15);
          a5[2] = v33 + 1;
          sub_26BEEE52C(v13, a5 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33, type metadata accessor for MLS.MLSMessage);
          result = v40;
          v26 = v41;
          v27 = v42;
        }

        __break(1u);
        goto LABEL_46;
      }

      v19 = v43;
      v18 = v44;
      a5 = v37;
    }

    sub_26BE00258(v19, v18);
    v43 = a1;
    v44 = a2;
    v45 = v16;
    sub_26BE01600();
    swift_allocError();
    *v20 = 1;
    goto LABEL_13;
  }

  sub_26BE00258(v43, v44);
  v43 = a1;
  v44 = a2;
  v45 = v16;
  swift_willThrow();
LABEL_9:
  sub_26BE00258(v43, v44);
  v43 = a1;
  v44 = a2;
  v45 = v16;
LABEL_13:
  swift_willThrow();
  v40 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v21 = sub_26C00A4FC();
  sub_26BE826C4(v21, v22, a1, a2);

  swift_willThrow();
  sub_26BE00258(a1, a2);
  sub_26BE00258(v43, v44);
  return a5;
}

uint64_t sub_26BEEE46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEEE4D0(uint64_t a1)
{
  v2 = type metadata accessor for MLS.MLSMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BEEE52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26BEEE594()
{

  return sub_26BEE6420();
}

uint64_t sub_26BEEE6A4()
{
  if (*v0)
  {
    return 0x69746E6564657263;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEEE6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26BEEE7C0(uint64_t a1)
{
  v2 = sub_26BEFB120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEE7FC(uint64_t a1)
{
  v2 = sub_26BEFB120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEEE8DC()
{
  if (*v0)
  {
    return 0x6D614E70756F7267;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEEE918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26BEEE9F8(uint64_t a1)
{
  v2 = sub_26BEFB0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEEA34(uint64_t a1)
{
  v2 = sub_26BEFB0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEEEAB4@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_26BEF8F40(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t sub_26BEEEB4C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F778, &qword_26C01BA78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFB010();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AE9C();
  v8[12] = 3;
  sub_26C00AE6C();
  v8[11] = 4;
  sub_26C00AE7C();
  v8[10] = 5;
  sub_26C00AE6C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26BEEED4C()
{
  v1 = *v0;
  v2 = 0x746E65696C63;
  v3 = 0x4952556C6574;
  v4 = 0xD00000000000001ALL;
  if (v1 != 4)
  {
    v4 = 0x616B63615079656BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x70756F7267;
  if (v1 != 1)
  {
    v5 = 0x65626D654D77656ELL;
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

uint64_t sub_26BEEEE10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF7284(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEEEE38(uint64_t a1)
{
  v2 = sub_26BEFB010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEEE74(uint64_t a1)
{
  v2 = sub_26BEFB010();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEEEEB0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26BEF748C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_26BEEEF24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F760, &qword_26C01BA68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAFBC();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AE9C();
  v8[12] = 3;
  sub_26C00AE7C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26BEEF0E4()
{
  v1 = 0x746E65696C63;
  v2 = 0x4D6465766F6D6572;
  if (*v0 != 2)
  {
    v2 = 0x7265767265537369;
  }

  if (*v0)
  {
    v1 = 0x70756F7267;
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

uint64_t sub_26BEEF170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF78B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEEF198(uint64_t a1)
{
  v2 = sub_26BEFAFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEF1D4(uint64_t a1)
{
  v2 = sub_26BEFAFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEEF210@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26BEF7A24(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_26BEEF28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C00AF2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BEEF310(uint64_t a1)
{
  v2 = sub_26BEFAF68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEF34C(uint64_t a1)
{
  v2 = sub_26BEFAF68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEEF410(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F730, &qword_26C01BA48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAEAC();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AE9C();
  v8[12] = 3;
  sub_26C00AE6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26BEEF5D0()
{
  v1 = 0x746E65696C63;
  v2 = 0x746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x70756F7267;
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

uint64_t sub_26BEEF648@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF7D04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEEF670(uint64_t a1)
{
  v2 = sub_26BEFAEAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEF6AC(uint64_t a1)
{
  v2 = sub_26BEFAEAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEEF72C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F718, &qword_26C01BA38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAE58();
  sub_26C00B10C();
  v14 = 0;
  sub_26C00AE9C();
  if (!v4)
  {
    v13 = 1;
    sub_26C00AE7C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_26BEEF8BC()
{
  if (*v0)
  {
    return 0x656D614E736168;
  }

  else
  {
    return 0x70756F7267;
  }
}

uint64_t sub_26BEEF8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E736168 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26BEEF9CC(uint64_t a1)
{
  v2 = sub_26BEFAE58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEFA08(uint64_t a1)
{
  v2 = sub_26BEFAE58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEEFA44@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_26BEF815C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_26BEEFA94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F6A0, &qword_26C01B9E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFACB4();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AE6C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26BEEFC34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F688, &qword_26C01B9D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAC60();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AE9C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26BEEFDD4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F670, &qword_26C01B9C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFABA4();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AE9C();
  v8[12] = 3;
  sub_26C00AE9C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26BEEFF94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F658, &qword_26C01B9B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAB50();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AE9C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26BEF01D4()
{
  v1 = 0x4673726F68636E61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF023C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF8334(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF0264(uint64_t a1)
{
  v2 = sub_26BEFACB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF02A0(uint64_t a1)
{
  v2 = sub_26BEFACB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF0338()
{
  v1 = 0x4952556C6574;
  if (*v0 != 1)
  {
    v1 = 0x70656C6946727363;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF0394@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF8458(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF03BC(uint64_t a1)
{
  v2 = sub_26BEFAC60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF03F8(uint64_t a1)
{
  v2 = sub_26BEFAC60();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26BEF0490()
{
  v1 = 0x746E65696C63;
  v2 = 0x656C6946746F6F72;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x70656C6946727363;
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

uint64_t sub_26BEF051C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF856C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF0544(uint64_t a1)
{
  v2 = sub_26BEFABA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF0580(uint64_t a1)
{
  v2 = sub_26BEFABA4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF05BC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26BEF86DC(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_26BEF0618()
{
  v1 = 0x4952556C6574;
  if (*v0 != 1)
  {
    v1 = 0x6C69467374726563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF0678@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF89D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF06A0(uint64_t a1)
{
  v2 = sub_26BEFAB50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF06DC(uint64_t a1)
{
  v2 = sub_26BEFAB50();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF075C@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, _OWORD *a6@<X8>)
{
  sub_26BEFA12C(a1, a2, a3, a4, v10);
  if (!v6)
  {
    v9 = v10[1];
    *a6 = v10[0];
    a6[1] = v9;
    result = *&v11;
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_26BEF07C8(uint64_t a1)
{
  v2 = sub_26BEFAE04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF0804(uint64_t a1)
{
  v2 = sub_26BEFAE04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF08DC()
{
  if (*v0)
  {
    return 0x70756F7267;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF0914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26BEF09E8(uint64_t a1)
{
  v2 = sub_26BEFADB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF0A24(uint64_t a1)
{
  v2 = sub_26BEFADB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF0AFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F640, &qword_26C01B9A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAA94();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AE9C();
  v8[12] = 3;
  sub_26C00AE6C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26BEF0D0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v20[2] = a3;
  v20[0] = a4;
  v20[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (a8)(v15, v16, v17);
  sub_26C00B10C();
  v22 = 0;
  v18 = v20[3];
  sub_26C00AE9C();
  if (!v18)
  {
    v21 = 1;
    sub_26C00AE9C();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_26BEF0E9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F610, &qword_26C01B988);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA984();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AEDC();
  v8[12] = 3;
  sub_26C00AECC();
  v8[11] = 4;
  sub_26C00AE9C();
  v8[10] = 5;
  sub_26C00AEAC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26BEF10E0()
{
  v1 = 0x656D614E77656ELL;
  v2 = 0x70756F7267;
  if (*v0 != 2)
  {
    v2 = 0x4E74707572726F63;
  }

  if (*v0)
  {
    v1 = 0x746E65696C63;
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

uint64_t sub_26BEF1160@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF8AE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF1188(uint64_t a1)
{
  v2 = sub_26BEFAA94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF11C4(uint64_t a1)
{
  v2 = sub_26BEFAA94();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF122C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_26BEF128C()
{
  if (*v0)
  {
    return 0x4952556C6574;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF12B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4952556C6574 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26BEF138C(uint64_t a1)
{
  v2 = sub_26BEFAA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF13C8(uint64_t a1)
{
  v2 = sub_26BEFAA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF14A0()
{
  v1 = *v0;
  v2 = 0x746E65696C63;
  v3 = 0x444968636F7065;
  v4 = 0x4952556C6574;
  if (v1 != 4)
  {
    v4 = 0x6465746365707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x70756F7267;
  if (v1 != 1)
  {
    v5 = 6386277;
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

uint64_t sub_26BEF1548@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF9130(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF157C(uint64_t a1)
{
  v2 = sub_26BEFA984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF15B8(uint64_t a1)
{
  v2 = sub_26BEFA984();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_26BEF15F4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26BEF9320(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_26BEF1660()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x5473746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF16C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF96A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF16E8(uint64_t a1)
{
  v2 = sub_26BEFA930();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF1724(uint64_t a1)
{
  v2 = sub_26BEFA930();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF17A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F6D0, &qword_26C01BA08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAD5C();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AE9C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26BEF1988(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_26C00B10C();
  v18 = 0;
  v13 = v15[0];
  sub_26C00AE9C();
  if (!v13)
  {
    v17 = 1;
    sub_26C00AE9C();
    v15[1] = *(v7 + 32);
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BEFA774(&qword_28045F580, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_26C00AEBC();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_26BEF1BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73617245657375 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C00AF2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BEF1C78(uint64_t a1)
{
  v2 = sub_26BEFA8DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF1CB4(uint64_t a1)
{
  v2 = sub_26BEFA8DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF1CF0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F5D0, &qword_26C01B960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA8DC();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_26C00ADFC();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_26BEF1E50(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F5E0, &qword_26C01B968);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA8DC();
  sub_26C00B10C();
  sub_26C00AE7C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26BEF1F88()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x657474696D6D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF1FE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF97C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF2008(uint64_t a1)
{
  v2 = sub_26BEFAD5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF2044(uint64_t a1)
{
  v2 = sub_26BEFAD5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF20F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73646E6F636573 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C00AF2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BEF217C(uint64_t a1)
{
  v2 = sub_26BEFA7E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF21B8(uint64_t a1)
{
  v2 = sub_26BEFA7E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF21F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F588, &qword_26C01B930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA7E0();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_26C00AE4C();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_26BEF2354(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F598, &qword_26C01B938);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA7E0();
  sub_26C00B10C();
  sub_26C00AECC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_26BEF248C()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF24E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF98D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF250C(uint64_t a1)
{
  v2 = sub_26BEFA720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF2548(uint64_t a1)
{
  v2 = sub_26BEFA720();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF25C8@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a6@<X8>)
{
  sub_26BEF99F0(a1, a2, a3, a4, v10);
  if (!v6)
  {
    result = *v10;
    v9 = v10[1];
    *a6 = v10[0];
    *(a6 + 16) = v9;
    *(a6 + 32) = v11;
  }

  return result;
}

uint64_t sub_26BEF2620()
{
  sub_26C00B05C();
  MEMORY[0x26D699B20](0);
  return sub_26C00B0CC();
}

uint64_t sub_26BEF2664(uint64_t a1)
{
  sub_26C00B05C();
  MEMORY[0x26D699B20](0);
  return sub_26C00B0CC();
}

uint64_t sub_26BEF26C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C69466574617473 && a2 == 0xED00006874617065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C00AF2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BEF2758(uint64_t a1)
{
  v2 = sub_26BEFA888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF2794(uint64_t a1)
{
  v2 = sub_26BEFA888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF2814@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_26C00B0FC();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = sub_26C00AE1C();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_26BEF29E0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_26C00B10C();
  sub_26C00AE9C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_26BEF2B28(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F5B0, &qword_26C01B948);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA834();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AE6C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26BEF2CC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F6B8, &qword_26C01B9F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAD08();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE9C();
  v8[13] = 2;
  sub_26C00AE9C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26BEF2E68()
{
  v1 = 0x4673726F68636E61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C69466574617473;
  }
}

uint64_t sub_26BEF2EE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEF9C90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF2F08(uint64_t a1)
{
  v2 = sub_26BEFA834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF2F44(uint64_t a1)
{
  v2 = sub_26BEFA834();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF2FC4@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, _OWORD *a6@<X8>)
{
  sub_26BEF9DC0(a1, a2, a3, a4, v10);
  if (!v6)
  {
    v9 = v10[1];
    *a6 = v10[0];
    a6[1] = v9;
    result = *&v11;
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_26BEF3030()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x486567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF3088@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEFA014(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF30B0(uint64_t a1)
{
  v2 = sub_26BEFAD08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF30EC(uint64_t a1)
{
  v2 = sub_26BEFAD08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF3184(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F558, &qword_26C01B910);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA6CC();
  sub_26C00B10C();
  v8[15] = 0;
  sub_26C00AE9C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26C00AE8C();
  v8[13] = 2;
  sub_26C00AE8C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26BEF332C()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF338C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BEFA380(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BEF33B4(uint64_t a1)
{
  v2 = sub_26BEFA6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF33F0(uint64_t a1)
{
  v2 = sub_26BEFA6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF342C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26BEFA4A0(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_26BEF3488()
{
  sub_26C00B05C();
  sub_26C00A58C();
  return sub_26C00B0CC();
}

uint64_t sub_26BEF34EC(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00A58C();
  return sub_26C00B0CC();
}

uint64_t sub_26BEF3538@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26C00ADCC();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_26BEF35B8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26C00ADCC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26BEF3610(uint64_t a1)
{
  v2 = sub_26BEF67DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF364C(uint64_t a1)
{
  v2 = sub_26BEF67DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF3688@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F470, &qword_26C01B900);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEF67DC();
  sub_26C00B0FC();
  if (!v2)
  {
    v9 = sub_26C00AE1C();
    v11 = v10;
    v30 = v6;
    v22 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26C00B0EC();
    v12 = v9 == 0x6C43657461657263 && v11 == 0xEC000000746E6569;
    if (v12 || (sub_26C00AF2C() & 1) != 0)
    {

      __swift_project_boxed_opaque_existential_1(v26, v27);
      v24 = &type metadata for CreateClientAction;
      v25 = sub_26BEF71F0();
      *&v23 = swift_allocObject();
      sub_26BEF5318();
    }

    else
    {
      v13 = v9 == 0x7247657461657263 && v11 == 0xEB0000000070756FLL;
      v14 = v30;
      if (v13 || (sub_26C00AF2C() & 1) != 0)
      {

        __swift_project_boxed_opaque_existential_1(v26, v27);
        v24 = &type metadata for CreateGroupAction;
        v25 = sub_26BEF719C();
        *&v23 = swift_allocObject();
        sub_26BEF53EC();
      }

      else
      {
        v15 = v9 == 6579297 && v11 == 0xE300000000000000;
        if (v15 || (sub_26C00AF2C() & 1) != 0)
        {

          __swift_project_boxed_opaque_existential_1(v26, v27);
          v24 = &type metadata for AddAction;
          v25 = sub_26BEF70F0();
          *&v23 = swift_allocObject();
          sub_26BEF54C0();
        }

        else
        {
          v19 = v9 == 0x65766F6D6572 && v11 == 0xE600000000000000;
          if (v19 || (sub_26C00AF2C() & 1) != 0)
          {

            __swift_project_boxed_opaque_existential_1(v26, v27);
            v24 = &type metadata for RemoveAction;
            v25 = sub_26BEF7040();
            *&v23 = swift_allocObject();
            sub_26BEF5594();
          }

          else
          {
            if (v9 == 0xD000000000000010 && 0x800000026C02C630 == v11 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for PrintGroupStatesAction;
              v25 = sub_26BEF6FEC();
              sub_26BEF5668();
              sub_26C00AF3C();
              (*(v14 + 8))(v8, v5);
              goto LABEL_21;
            }

            if (v9 == 0x7373654D646E6573 && v11 == 0xEB00000000656761 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for SendMessageAction;
              v25 = sub_26BEF6F48();
              *&v23 = swift_allocObject();
              sub_26BEF573C();
            }

            else if (v9 == 0x7247796669726576 && v11 == 0xEB0000000070756FLL || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for VerifyGroupAction;
              v25 = sub_26BEF6EF4();
              sub_26BEF5810();
            }

            else if (v9 == 0x636E79736572 && v11 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for ResyncAction;
              v25 = sub_26BEF6EA0();
              *&v23 = swift_allocObject();
              sub_26BEF58E4();
            }

            else if (v9 == 0x4D65766965636572 && v11 == 0xEE00656761737365 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for ReceiveMessageAction;
              v25 = sub_26BEF6E4C();
              *&v23 = swift_allocObject();
              sub_26BEF5B60();
            }

            else if (v9 == 0x74696D6D6F63 && v11 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for CommitAction;
              v25 = sub_26BEF6DF8();
              *&v23 = swift_allocObject();
              sub_26BEF59B8();
            }

            else if (v9 == 0x4352657461657263 && v11 == 0xEF746E65696C4353 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for CreateRCSClientAction;
              v25 = sub_26BEF6DA4();
              *&v23 = swift_allocObject();
              sub_26BEF5C34();
            }

            else if (v9 == 0x525343746567 && v11 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for GetCSRAction;
              v25 = sub_26BEF6D50();
              *&v23 = swift_allocObject();
              sub_26BEF5D08();
            }

            else if (v9 == 0x5253436E676973 && v11 == 0xE700000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for SignCSRAction;
              v25 = sub_26BEF6CFC();
              *&v23 = swift_allocObject();
              sub_26BEF5DDC();
            }

            else if (v9 == 0xD000000000000011 && 0x800000026C02C650 == v11 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for LoadRCSCredentialAction;
              v25 = sub_26BEF6CA8();
              *&v23 = swift_allocObject();
              sub_26BEF5EB0();
            }

            else if (v9 == 0x7247534352746573 && v11 == 0xEF656D614E70756FLL || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for SetRCSGroupNameAction;
              v25 = sub_26BEF6C50();
              *&v23 = swift_allocObject();
              sub_26BEF5F84();
            }

            else if (v9 == 0xD000000000000014 && 0x800000026C02C670 == v11 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for DeleteParticipantKeyAction;
              v25 = sub_26BEF6BF8();
              *&v23 = swift_allocObject();
              sub_26BEF6058();
            }

            else if (v9 == 0xD00000000000001BLL && 0x800000026C02C690 == v11 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for CheckIfParticipantKeyRolledAction;
              v25 = sub_26BEF6B5C();
              *&v23 = swift_allocObject();
              sub_26BEF612C();
            }

            else if (v9 == 0x654E657461657263 && v11 == 0xEC00000061724577 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for CreateNewEraAction;
              v25 = sub_26BEF6AC0();
              *&v23 = swift_allocObject();
              sub_26BEF6200();
            }

            else if (v9 == 0x72756769666E6F63 && v11 == 0xED00006E6F697461 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for ConfigurationAction;
              v25 = sub_26BEF6A6C();
              sub_26BEF62D4();
            }

            else if (v9 == 0x6F6D6552666C6573 && v11 == 0xEA00000000006576 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for SelfRemoveAction;
              v25 = sub_26BEF6A18();
              *&v23 = swift_allocObject();
              sub_26BEF5A8C();
            }

            else if (v9 == 0x6574616C756D6973 && v11 == 0xEC000000656D6954 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for SimulateTimeAction;
              v25 = sub_26BEF69C4();
              sub_26BEF6550();
            }

            else if (v9 == 0xD000000000000018 && 0x800000026C02C6B0 == v11 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for ReplaceExpiredCredentialAction;
              v25 = sub_26BEF696C();
              *&v23 = swift_allocObject();
              sub_26BEF6624();
            }

            else if (v9 == 1702257011 && v11 == 0xE400000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for SaveAction;
              v25 = sub_26BEF6918();
              sub_26BEF63A8();
            }

            else if (v9 == 1684107116 && v11 == 0xE400000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for LoadAction;
              v25 = sub_26BEF68BC();
              *&v23 = swift_allocObject();
              sub_26BEF647C();
            }

            else
            {
              if (v9 == 0x6369646F69726570 && v11 == 0xEF70756E61656C43)
              {
              }

              else
              {
                v20 = sub_26C00AF2C();

                if ((v20 & 1) == 0)
                {
                  sub_26BE773C4();
                  swift_allocError();
                  *v21 = 0;
                  v21[1] = 0;
                  swift_willThrow();
                  (*(v30 + 8))(v8, v5);
                  __swift_destroy_boxed_opaque_existential_1(v26);
                  return __swift_destroy_boxed_opaque_existential_1(a1);
                }
              }

              __swift_project_boxed_opaque_existential_1(v26, v27);
              v24 = &type metadata for PeriodicCleanupAction;
              v25 = sub_26BEF6830();
              *&v23 = swift_allocObject();
              sub_26BEF6734();
            }
          }
        }
      }
    }

    sub_26C00AF3C();
    (*(v30 + 8))(v8, v5);
LABEL_21:
    sub_26BE03890(&v23, v28);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v16 = v28[1];
    v17 = v22;
    *v22 = v28[0];
    v17[1] = v16;
    *(v17 + 4) = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t parseActions(jsonString:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_26C00A4EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00A4CC();
  v7 = sub_26C00A49C();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  if (v9 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_26C008DBC();
    swift_allocObject();
    v11 = sub_26C008DAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2C8, &unk_26C01A8F0);
    sub_26BEF4A8C();
    v12 = v11;
    sub_26C008D9C();
    if (v2)
    {

      sub_26BE136AC(v7, v9);
    }

    else
    {
      v13 = *&v21[0];
      v14 = *(*&v21[0] + 16);
      if (v14)
      {
        v19 = v7;
        v22 = MEMORY[0x277D84F90];
        sub_26BECBAD4(0, v14, 0);
        v12 = v22;
        v18 = v13;
        v15 = v13 + 32;
        do
        {
          sub_26BEF4B64(v15, v20);
          sub_26BE03890(v20, v21);
          v22 = v12;
          v17 = *(v12 + 16);
          v16 = *(v12 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_26BECBAD4((v16 > 1), v17 + 1, 1);
            v12 = v22;
          }

          *(v12 + 16) = v17 + 1;
          sub_26BE03890(v21, v12 + 40 * v17 + 32);
          v15 += 40;
          --v14;
        }

        while (v14);

        sub_26BE136AC(v19, v9);
      }

      else
      {

        sub_26BE136AC(v7, v9);
        return MEMORY[0x277D84F90];
      }
    }

    return v12;
  }

  return result;
}

unint64_t sub_26BEF4A8C()
{
  result = qword_28045F2D0;
  if (!qword_28045F2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045F2C8, &unk_26C01A8F0);
    sub_26BEF4B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2D0);
  }

  return result;
}

unint64_t sub_26BEF4B10()
{
  result = qword_28045F2D8;
  if (!qword_28045F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2D8);
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

uint64_t sub_26BEF4BB0(uint64_t a1, int a2)
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

uint64_t sub_26BEF4BF8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ConfigurationAction(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_26BEF4D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26BEF4DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26BEF4E2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_26BEF4E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BEF4F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_26BEF4FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BEF5020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26BEF5068(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26BEF50D8(uint64_t a1, int a2)
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

uint64_t sub_26BEF5120(uint64_t result, int a2, int a3)
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

uint64_t sub_26BEF5180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26BEF51C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BEF524C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BEF5294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26BEF5318()
{
  result = qword_28045F2E0;
  if (!qword_28045F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2E0);
  }

  return result;
}

unint64_t sub_26BEF536C()
{
  result = qword_28045F2E8;
  if (!qword_28045F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2E8);
  }

  return result;
}

unint64_t sub_26BEF53EC()
{
  result = qword_28045F2F0;
  if (!qword_28045F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2F0);
  }

  return result;
}

unint64_t sub_26BEF5440()
{
  result = qword_28045F2F8;
  if (!qword_28045F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2F8);
  }

  return result;
}

unint64_t sub_26BEF54C0()
{
  result = qword_28045F300;
  if (!qword_28045F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F300);
  }

  return result;
}

unint64_t sub_26BEF5514()
{
  result = qword_28045F308;
  if (!qword_28045F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F308);
  }

  return result;
}

unint64_t sub_26BEF5594()
{
  result = qword_28045F310;
  if (!qword_28045F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F310);
  }

  return result;
}

unint64_t sub_26BEF55E8()
{
  result = qword_28045F318;
  if (!qword_28045F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F318);
  }

  return result;
}

unint64_t sub_26BEF5668()
{
  result = qword_28045F320;
  if (!qword_28045F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F320);
  }

  return result;
}

unint64_t sub_26BEF56BC()
{
  result = qword_28045F328;
  if (!qword_28045F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F328);
  }

  return result;
}

unint64_t sub_26BEF573C()
{
  result = qword_28045F330;
  if (!qword_28045F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F330);
  }

  return result;
}

unint64_t sub_26BEF5790()
{
  result = qword_28045F338;
  if (!qword_28045F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F338);
  }

  return result;
}

unint64_t sub_26BEF5810()
{
  result = qword_28045F340;
  if (!qword_28045F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F340);
  }

  return result;
}

unint64_t sub_26BEF5864()
{
  result = qword_28045F348;
  if (!qword_28045F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F348);
  }

  return result;
}

unint64_t sub_26BEF58E4()
{
  result = qword_28045F350;
  if (!qword_28045F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F350);
  }

  return result;
}

unint64_t sub_26BEF5938()
{
  result = qword_28045F358;
  if (!qword_28045F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F358);
  }

  return result;
}

unint64_t sub_26BEF59B8()
{
  result = qword_28045F360;
  if (!qword_28045F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F360);
  }

  return result;
}

unint64_t sub_26BEF5A0C()
{
  result = qword_28045F368;
  if (!qword_28045F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F368);
  }

  return result;
}

unint64_t sub_26BEF5A8C()
{
  result = qword_28045F370;
  if (!qword_28045F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F370);
  }

  return result;
}

unint64_t sub_26BEF5AE0()
{
  result = qword_28045F378;
  if (!qword_28045F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F378);
  }

  return result;
}

unint64_t sub_26BEF5B60()
{
  result = qword_28045F380;
  if (!qword_28045F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F380);
  }

  return result;
}

unint64_t sub_26BEF5BB4()
{
  result = qword_28045F388;
  if (!qword_28045F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F388);
  }

  return result;
}

unint64_t sub_26BEF5C34()
{
  result = qword_28045F390;
  if (!qword_28045F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F390);
  }

  return result;
}

unint64_t sub_26BEF5C88()
{
  result = qword_28045F398;
  if (!qword_28045F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F398);
  }

  return result;
}

unint64_t sub_26BEF5D08()
{
  result = qword_28045F3A0;
  if (!qword_28045F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3A0);
  }

  return result;
}

unint64_t sub_26BEF5D5C()
{
  result = qword_28045F3A8;
  if (!qword_28045F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3A8);
  }

  return result;
}

unint64_t sub_26BEF5DDC()
{
  result = qword_28045F3B0;
  if (!qword_28045F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3B0);
  }

  return result;
}