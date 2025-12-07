void sub_26BE132D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_26BE00258(a1, a2);
  }
}

unint64_t sub_26BE13308()
{
  result = qword_28045E430;
  if (!qword_28045E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E430);
  }

  return result;
}

unint64_t sub_26BE1335C()
{
  result = qword_28045E438;
  if (!qword_28045E438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28045E438);
  }

  return result;
}

void *sub_26BE133A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_26BE11F18(sub_26BE13410, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_26BE13430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C00AA5C();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != sub_26C00AA6C())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = sub_26C00AA7C();
        v12 = sub_26C00AA5C();
        result = sub_26C00AA6C();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = sub_26C00AA6C();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
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

uint64_t sub_26BE13564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE135C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE13630(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MLS.Node.inner.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v20 = *(v1 + 96);
  v21 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v18 = *(v1 + 64);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 16);
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 112);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 128);
  *(a1 + 128) = *(v1 + 128);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_26BE1379C(v15, v14);
}

__n128 MLS.Node.inner.setter(uint64_t a1)
{
  v3 = *(v1 + 112);
  v11[6] = *(v1 + 96);
  v11[7] = v3;
  v12 = *(v1 + 128);
  v4 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v4;
  v5 = *(v1 + 80);
  v11[4] = *(v1 + 64);
  v11[5] = v5;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v6;
  sub_26BE13854(v11);
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  *(v1 + 128) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v8;
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

__n128 MLS.Node.init(inner:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26BE13924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x10 | (32 * (*(a1 + 104) >> 2));
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_26BE139A0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      v4 = -a2;
      *a1 = 0;
      *(a1 + 8) = (-a2 & 3) << 60;
      *(a1 + 16) = 0;
      *(a1 + 24) = (v4 << 58) & 0x3000000000000000;
      *(a1 + 32) = 0;
      *(a1 + 40) = (v4 << 56) & 0x1000000000000000;
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = (v4 >> 3) & 0x1FFFFFFC;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_26BE13A4C(void *result, char a2)
{
  v2 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v3 = result[5] & 0xEFFFFFFFFFFFFFFFLL;
  v4 = result[13] & 3;
  v5 = result[16] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v2;
  result[5] = v3;
  result[13] = v4;
  result[16] = v5;
  return result;
}

void sub_26BE13AA4(uint64_t a1@<X8>)
{
  v3 = v1;
  v74 = *MEMORY[0x277D85DE8];
  v5 = sub_26BEE62D4();
  if ((v5 & 0x100) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    v13 = 1;
LABEL_12:
    *v12 = v13;
    swift_willThrow();
    return;
  }

  if (v5 == 1)
  {
    sub_26BE7DE38(&v65);
    if (v2)
    {
      return;
    }

    v62 = v71;
    v63 = v72;
    v64 = v73;
    v58 = v67;
    v59 = v68;
    v60 = v69;
    v61 = v70;
    v56 = v65;
    v57 = v66;
    sub_26BE140D0(&v56);
    v14 = v63;
    *(a1 + 96) = v62;
    *(a1 + 112) = v14;
    *(a1 + 128) = v64;
    v15 = v59;
    *(a1 + 32) = v58;
    *(a1 + 48) = v15;
    v16 = v61;
    *(a1 + 64) = v60;
    *(a1 + 80) = v16;
    v18 = v56;
    v17 = v57;
LABEL_10:
    *a1 = v18;
    *(a1 + 16) = v17;
    return;
  }

  if (v5 != 2)
  {
    sub_26BE01600();
    swift_allocError();
    v13 = 5;
    goto LABEL_12;
  }

  v6 = sub_26BF2F7B0();
  if (v2)
  {
    return;
  }

  *&v55 = v6;
  *(&v55 + 1) = v7;
  *&v53 = sub_26BF2F7B0();
  *(&v53 + 1) = v8;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  sub_26BE00608(*v1, v9);
  sub_26BE00608(v10, v9);
  sub_26BF30764(v1, &v65);
  if (BYTE8(v65))
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v10;
    v1[1] = v9;
    v19 = v9;
    v20 = v10;
    v1[2] = v11;
LABEL_16:
    sub_26BE00258(v20, v19);
    *v3 = v10;
    v3[1] = v9;
    v3[2] = v11;
    sub_26BE01600();
    swift_allocError();
    *v21 = 1;
    goto LABEL_17;
  }

  v22 = v65;
  sub_26BE00258(v10, v9);
  if (v22 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v23 = 5;
    swift_willThrow();
    goto LABEL_6;
  }

  v48 = v11;
  v24 = sub_26BF2A44C(v22);
  if (v25 >> 60 == 15)
  {
    v20 = *v3;
    v19 = v3[1];
    goto LABEL_16;
  }

  v27 = v26;
  v47 = v10;
  v28 = v25 >> 62;
  v49 = v24 >> 32;
  v54 = MEMORY[0x277D84F90];
  v51 = v25;
  v52 = BYTE6(v25);
  v50 = v24;
  if ((v25 >> 62) > 1)
  {
    goto LABEL_25;
  }

LABEL_23:
  v29 = v52;
  if (v28)
  {
    v29 = v49;
  }

  while (1)
  {
    v30 = __OFSUB__(v29, v27);
    v31 = v29 - v27;
    if (v30)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    if (v31 < 1)
    {
      break;
    }

    v32 = v27 + 4;
    if (__OFADD__(v27, 4))
    {
      goto LABEL_59;
    }

    if (v28 <= 1)
    {
      v33 = v52;
      if (v28)
      {
        v33 = v49;
      }

LABEL_36:
      if (v33 < v32)
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }

    if (v28 == 2)
    {
      v33 = *(v24 + 24);
      goto LABEL_36;
    }

    if (v32 > 0)
    {
LABEL_50:
      v37 = v25;
      v38 = v24;
      sub_26BE01600();
      swift_allocError();
      *v39 = 1;
      swift_willThrow();

      sub_26BE00258(v38, v37);
      v10 = v47;
      v11 = v48;
      goto LABEL_6;
    }

LABEL_39:
    *&v65 = v24;
    *(&v65 + 1) = v25;
    if (v32 < v27)
    {
      goto LABEL_60;
    }

    *&v56 = v27;
    *(&v56 + 1) = v27 + 4;
    sub_26BE00608(v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v65, *(&v65 + 1));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_26BEEBEAC(0, *(v54 + 2) + 1, 1, v54);
    }

    v35 = *(v54 + 2);
    v34 = *(v54 + 3);
    if (v35 >= v34 >> 1)
    {
      v54 = sub_26BEEBEAC((v34 > 1), v35 + 1, 1, v54);
    }

    *(v54 + 2) = v35 + 1;
    *&v54[4 * v35 + 32] = bswap32(0);
    v27 += 4;
    v24 = v50;
    v25 = v51;
    if (v28 <= 1)
    {
      goto LABEL_23;
    }

LABEL_25:
    if (v28 == 2)
    {
      v29 = *(v24 + 24);
    }

    else
    {
      v29 = 0;
    }
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v36 = *(v24 + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = v49;
    if (!v28)
    {
      v36 = v52;
    }
  }

  v10 = v47;
  v40 = v36 == v27;
  if (__OFSUB__(v36, v27))
  {
    __break(1u);
    return;
  }

  v11 = v48;
  if (v40)
  {
    sub_26BE00258(v24, v25);
    sub_26BE00258(v47, v9);
    v65 = v55;
    v66 = v53;
    *&v67 = v54;
    sub_26BE1408C(&v65);
    v41 = v72;
    *(a1 + 96) = v71;
    *(a1 + 112) = v41;
    *(a1 + 128) = v73;
    v42 = v68;
    *(a1 + 32) = v67;
    *(a1 + 48) = v42;
    v43 = v70;
    *(a1 + 64) = v69;
    *(a1 + 80) = v43;
    v18 = v65;
    v17 = v66;
    goto LABEL_10;
  }

  v44 = v25;
  v45 = v24;
  sub_26BE01654();
  swift_allocError();
  *v46 = 0;
  v46[112] = 1;
  swift_willThrow();

  sub_26BE00258(v45, v44);
LABEL_6:
  sub_26BE00258(*v3, v3[1]);
  *v3 = v10;
  v3[1] = v9;
  v3[2] = v11;
LABEL_17:
  swift_willThrow();
  sub_26BE00258(v53, *(&v53 + 1));
  sub_26BE00258(v55, *(&v55 + 1));
}

void *sub_26BE1408C(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xEFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 3;
  v4 = result[16] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[13] = v3;
  result[16] = v4;
  return result;
}

void *sub_26BE140D0(void *result)
{
  v1 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[5] & 0xEFFFFFFFFFFFFFFFLL;
  v3 = result[13] & 3;
  v4 = result[16] & 0xCFFFFFFFFFFFFFFFLL;
  result[1] &= 0xCFFFFFFFFFFFFFFFLL;
  result[3] = v1;
  result[5] = v2;
  result[13] = v3;
  result[16] = v4;
  return result;
}

void sub_26BE14118(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLS.MLSMessage(0);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v59 = MEMORY[0x277D84F90];
    sub_26BECBA34(0, v6, 0);
    v7 = v59;
    v8 = a1 + 64;
    v9 = sub_26C00AB4C();
    v10 = v9;
    if ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v11 = v7;
      v12 = *(a1 + 36);
      v46 = a1 + 72;
      v50 = xmmword_26C00BBD0;
      v13 = 1;
      v48 = a1 + 64;
      v49 = a1;
      v47 = v6;
      while (1)
      {
        v14 = v10 >> 6;
        if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_33;
        }

        v52 = v13;
        v53 = v12;
        v15 = v11;
        v16 = (*(a1 + 56) + 184 * v10);
        v17 = v16[3];
        v19 = *v16;
        v18 = v16[1];
        v57[2] = v16[2];
        v57[3] = v17;
        v57[0] = v19;
        v57[1] = v18;
        v20 = v16[7];
        v22 = v16[4];
        v21 = v16[5];
        v57[6] = v16[6];
        v57[7] = v20;
        v57[4] = v22;
        v57[5] = v21;
        v24 = v16[9];
        v23 = v16[10];
        v25 = v16[8];
        v58 = *(v16 + 22);
        v57[9] = v24;
        v57[10] = v23;
        v57[8] = v25;
        v26 = v60;
        memmove(v60, v16, 0xB8uLL);
        type metadata accessor for MLS.MLSMessage.Inner(0);
        swift_storeEnumTagMultiPayload();
        v55 = v50;
        v56 = 0;
        sub_26BE2DFC0(v57, v54);
        sub_26BE2DFC0(v57, v54);
        sub_26BEE3688(v26);
        if (v2)
        {
          sub_26BE00258(v55, *(&v55 + 1));
          sub_26BE2E190(v60, type metadata accessor for MLS.MLSMessage);
          sub_26BE2E01C(v57);

          return;
        }

        v27 = v55;
        v28 = *(&v55 + 1) >> 62;
        if ((*(&v55 + 1) >> 62) > 1)
        {
          if (v28 != 2)
          {
            goto LABEL_14;
          }

          v29 = *(v55 + 24);
        }

        else
        {
          if (!v28)
          {
            goto LABEL_14;
          }

          v29 = v55 >> 32;
        }

        if (v29 < 0)
        {
          goto LABEL_34;
        }

LABEL_14:
        v51 = 0;
        v30 = sub_26C00909C();
        v32 = v31;
        sub_26BE00258(v27, *(&v27 + 1));
        sub_26BE2E190(v60, type metadata accessor for MLS.MLSMessage);
        sub_26BE2E01C(v57);
        v11 = v15;
        v59 = v15;
        v33 = *(v15 + 16);
        v34 = *(v11 + 24);
        if (v33 >= v34 >> 1)
        {
          sub_26BECBA34((v34 > 1), v33 + 1, 1);
          v11 = v59;
        }

        *(v11 + 16) = v33 + 1;
        v35 = v11 + 16 * v33;
        *(v35 + 32) = v30;
        *(v35 + 40) = v32;
        a1 = v49;
        v36 = 1 << *(v49 + 32);
        if (v10 >= v36)
        {
          goto LABEL_35;
        }

        v8 = v48;
        v37 = *(v48 + 8 * v14);
        if ((v37 & (1 << v10)) == 0)
        {
          goto LABEL_36;
        }

        if (v53 != *(v49 + 36))
        {
          goto LABEL_37;
        }

        v38 = v37 & (-2 << (v10 & 0x3F));
        if (v38)
        {
          v10 = __clz(__rbit64(v38)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v39 = v14 << 6;
          v40 = v14 + 1;
          v41 = (v46 + 8 * v14);
          while (v40 < (v36 + 63) >> 6)
          {
            v43 = *v41++;
            v42 = v43;
            v39 += 64;
            ++v40;
            if (v43)
            {
              v44 = v11;
              sub_26BE2E070(v10, v53, 0);
              v11 = v44;
              v10 = __clz(__rbit64(v42)) + v39;
              goto LABEL_26;
            }
          }

          v45 = v11;
          sub_26BE2E070(v10, v53, 0);
          v11 = v45;
          v10 = v36;
        }

LABEL_26:
        v2 = v51;
        if (v52 == v47)
        {
          return;
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          v12 = *(a1 + 36);
          v13 = v52 + 1;
          if (v10 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        break;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_26BE14528()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478E70);
  __swift_project_value_buffer(v0, qword_280478E70);
  return sub_26C009A4C();
}

uint64_t MLS.Client.CommitOptions.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000024, 0x800000026C02A9B0);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x26D699090](v3, v4);

  MEMORY[0x26D699090](0xD000000000000017, 0x800000026C02A9E0);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x26D699090](v5, v6);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t MLS.Client.EncryptionOptions.forwardSecrecyWindow.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

double MLS.Client.EncryptionOptions.init(usePadding:useSecretPayload:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = a1;
  *(a3 + 2) = a2;
  result = -1.85044299e-183;
  *(a3 + 8) = xmmword_26C00DA40;
  return result;
}

uint64_t MLS.Client.EncryptionOptions.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD00000000000002CLL, 0x800000026C02AA00);
  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D699090](v4, v5);

  MEMORY[0x26D699090](0xD000000000000012, 0x800000026C02AA30);
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x26D699090](v6, v7);

  MEMORY[0x26D699090](0xD000000000000014, 0x800000026C02AA50);
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x26D699090](v8, v9);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_26BE14980()
{
  sub_26C00B05C();
  sub_26C00B08C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE149EC(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00B08C();
  return sub_26C00B0CC();
}

void MLS.Client.MLSOptions.commitOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *MLS.Client.MLSOptions.commitOptions.setter(_BYTE *result)
{
  v2 = result[1];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

__n128 MLS.Client.MLSOptions.encryptionOptions.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1->n128_u8[9];
  v3 = v1->n128_u8[10];
  *a1 = v1->n128_u8[8];
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  result = v1[1];
  *(a1 + 8) = result;
  return result;
}

__n128 MLS.Client.MLSOptions.encryptionOptions.setter(uint64_t a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v1->n128_u8[8] = *a1;
  v1->n128_u8[9] = v2;
  v1->n128_u8[10] = v3;
  result = *(a1 + 8);
  v1[1] = result;
  return result;
}

__n128 MLS.Client.MLSOptions.init(version:commitOptions:encryptionOptions:ciphersuite:)@<Q0>(_BYTE *a1@<X1>, char *a2@<X2>, char *a3@<X3>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a3;
  v9 = *(a3 + 3);
  v10 = *(a3 + 4);
  *a4 = *a1;
  *(a4 + 1) = v4;
  *(a4 + 8) = v5;
  *(a4 + 9) = v6;
  *(a4 + 10) = v7;
  *(a4 + 16) = *(a2 + 8);
  *(a4 + 32) = v8;
  result = *(a3 + 8);
  *(a4 + 40) = result;
  *(a4 + 56) = v9;
  *(a4 + 64) = v10;
  return result;
}

uint64_t MLS.Client.MLSOptions.description.getter()
{
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000014, 0x800000026C02AA70);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x726568706963202CLL, 0xEF203A6574697573);
  sub_26C00AD4C();
  MEMORY[0x26D699090](0xD000000000000011, 0x800000026C02AA90);
  v0 = MLS.Client.CommitOptions.description.getter();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](0xD000000000000015, 0x800000026C02AAB0);
  v1 = MLS.Client.EncryptionOptions.description.getter();
  MEMORY[0x26D699090](v1);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t MLS.Client.UpdatePolicy.maxLeafNodeValidity.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t MLS.Client.UpdatePolicy.init(maxLeafNodeValidity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double MLS.Client.UpdatePolicy.init()@<D0>(_OWORD *a1@<X8>)
{
  result = -1.85044299e-183;
  *a1 = xmmword_26C00DA40;
  return result;
}

unint64_t MLS.Client.UpdatePolicy.description.getter()
{
  sub_26C00AC1C();

  v0 = sub_26C00B12C();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000022;
}

unint64_t sub_26BE14E18()
{
  sub_26C00AC1C();

  v0 = sub_26C00B12C();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t MLS.Client.Configuration.mlsOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_26BE14F00(v8, v7);
}

__n128 MLS.Client.Configuration.mlsOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE14F98(v7);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t MLS.Client.Configuration.identityProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_26BE03890(a1, v1 + 200);
}

uint64_t MLS.Client.Configuration.applicationIdentifier.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t MLS.Client.Configuration.applicationIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return result;
}

uint64_t MLS.Client.Configuration.accessGroup.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t MLS.Client.Configuration.accessGroup.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t MLS.Client.Configuration.lockTimeout.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 280) = result;
  *(v2 + 288) = a2;
  return result;
}

uint64_t MLS.Client.Configuration.leafNodeCapabilities.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[37];
  v3 = v1[38];
  v4 = v1[39];
  v5 = v1[40];
  v6 = v1[41];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
}

__n128 MLS.Client.Configuration.leafNodeCapabilities.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 296) = *a1;
  *(v1 + 312) = v5;
  *(v1 + 328) = v3;
  return result;
}

__n128 MLS.Client.Configuration.updatePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[21];
  *a1 = result;
  return result;
}

__n128 MLS.Client.Configuration.updatePolicy.setter(__n128 *a1)
{
  result = *a1;
  v1[21] = *a1;
  return result;
}

uint64_t MLS.Client.Configuration.init(mlsOptions:storageOptions:identityProvider:applicationIdentifier:accessGroup:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 336) = xmmword_26C00DA40;
  v13 = *(a1 + 48);
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 48) = v13;
  v14 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v14;
  v15 = a2[5];
  *(a8 + 136) = a2[4];
  *(a8 + 152) = v15;
  v16 = a2[7];
  *(a8 + 168) = a2[6];
  *(a8 + 184) = v16;
  v17 = a2[1];
  *(a8 + 72) = *a2;
  *(a8 + 88) = v17;
  v18 = a2[3];
  *(a8 + 104) = a2[2];
  *(a8 + 272) = 0;
  *(a8 + 280) = 0x8AC7230489E80000;
  *(a8 + 288) = 0;
  v19 = MEMORY[0x277D84F90];
  *(a8 + 296) = MEMORY[0x277D84F90];
  *(a8 + 304) = v19;
  *(a8 + 312) = v19;
  *(a8 + 320) = v19;
  *(a8 + 328) = &unk_287CB9C20;
  *(a8 + 352) = 514;
  *(a8 + 354) = 2;
  *(a8 + 64) = *(a1 + 64);
  *(a8 + 120) = v18;
  result = sub_26BE03890(a3, a8 + 200);
  *(a8 + 240) = a4;
  *(a8 + 248) = a5;
  *(a8 + 256) = a6;
  *(a8 + 264) = a7;
  return result;
}

double static MLS.Client.Configuration.testConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26C009F3C();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26C009EDC();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C009EEC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C009EAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277CC5458], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CC5438], v21);
  (*(v22 + 104))(v4, *MEMORY[0x277CC5460], v23);
  sub_26C009E7C();
  type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
  v16 = swift_allocObject();
  (*(v13 + 32))(v16 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v15, v12);
  *(v16 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
  static MLS.Storage.StorageOptions.testInMemoryOptions.getter(v24);
  sub_26BE14FF4(v24, a1 + 72);
  v17 = type metadata accessor for MLS.Identity.PermissiveIdentityProvider();
  v18 = swift_allocObject();
  *(a1 + 224) = v17;
  *(a1 + 232) = &protocol witness table for MLS.Identity.PermissiveIdentityProvider;
  *(a1 + 200) = v18;
  *(a1 + 280) = 0x8AC7230489E80000;
  *(a1 + 288) = 0;
  v19 = MEMORY[0x277D84F90];
  *(a1 + 296) = MEMORY[0x277D84F90];
  *(a1 + 304) = v19;
  *(a1 + 312) = v19;
  *(a1 + 320) = v19;
  sub_26BE29538(v24);
  *(a1 + 328) = &unk_287CB9C48;
  *(a1 + 336) = xmmword_26C00DA40;
  *(a1 + 352) = 514;
  *(a1 + 354) = 2;
  *a1 = 257;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  *(a1 + 16) = xmmword_26C00DA40;
  *(a1 + 32) = 0;
  *&result = 32;
  *(a1 + 40) = xmmword_26C00CDC0;
  *(a1 + 56) = 16;
  *(a1 + 64) = v16;
  *(a1 + 240) = 0xD00000000000001ALL;
  *(a1 + 248) = 0x800000026C02AB00;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 1;
  return result;
}

uint64_t MLS.Client.ClientState.description.getter()
{
  if (*v0)
  {
    return 0x79646165722ELL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t MLS.Client.ClientState.hashValue.getter()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BE159E8()
{
  if (*v0)
  {
    return 0x79646165722ELL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void sub_26BE15A24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_26BE2958C(v2, v3);
  sub_26BE2962C(v5, v6);
}

void sub_26BE15A94(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;
  a1[1] = v4;
  sub_26BE2958C(v3, v4);
}

uint64_t sub_26BE15ADC(uint64_t a1, uint64_t *a2)
{
  sub_26BE295A0(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_26BE2DEC4(v5, v3 + 40);
  return swift_endAccess();
}

uint64_t sub_26BE15B8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v1 + v3, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = *(v5 + 40);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  v6(v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_26BE15C80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_26C00928C();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_26BE15D08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_26C00928C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v12 + v13, v11, v8);
  return swift_endAccess();
}

uint64_t sub_26BE15E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_26C00928C();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_26BE15EB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID;
  swift_beginAccess();
  v4 = sub_26C00928C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_26BE15FA0@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_26BE15FF4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_26BE160A4(uint64_t a1, uint64_t *a2)
{
  sub_26BE038A8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_26BE03890(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_26BE16110@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  return sub_26BE038A8(v1 + v3, a1);
}

uint64_t sub_26BE16168(__int128 *a1)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_26BE03890(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_26BE16230@<X0>(_OWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
  swift_beginAccess();
  result = sub_26BE2E1F0(v1 + v3, v18, &qword_28045E460, &qword_26C0206D0);
  if (*&v18[32])
  {
    v5 = *&v18[80];
    a1[4] = *&v18[64];
    a1[5] = v5;
    a1[6] = *&v18[96];
    v6 = *&v18[16];
    *a1 = *v18;
    a1[1] = v6;
    v7 = *&v18[48];
    a1[2] = *&v18[32];
    a1[3] = v7;
  }

  else
  {
    sub_26BE2E258(v18, &qword_28045E460, &qword_26C0206D0);
    memset(&v18[8], 0, 104);
    *v18 = 17;
    v19 = 23;
    v8 = sub_26C00A45C();
    sub_26BE2DC18(v18, v16);
    v9 = swift_allocObject();
    v10 = v16[5];
    *(v9 + 88) = v16[4];
    *(v9 + 104) = v10;
    *(v9 + 120) = v16[6];
    v11 = v16[1];
    *(v9 + 24) = v16[0];
    *(v9 + 40) = v11;
    v12 = v16[3];
    *(v9 + 56) = v16[2];
    *(v9 + 16) = 1;
    *(v9 + 136) = v17;
    *(v9 + 72) = v12;
    aBlock[4] = sub_26BE2E3DC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BEB8234;
    aBlock[3] = &block_descriptor_193;
    v13 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v13);

    sub_26BE7C9B8(0, 0);
    sub_26BE2DC9C(v18);
    sub_26BE01654();
    swift_allocError();
    *v14 = 17;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 88) = 0u;
    *(v14 + 104) = 0;
    *(v14 + 112) = 23;
    return swift_willThrow();
  }

  return result;
}

void sub_26BE16490(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if ((~v3 & 0x3000000000000000) != 0)
  {
    v11 = *(v1 + 24);
    *a1 = v11;
    a1[1] = v3;
    sub_26BE04890(v11, v3);
  }

  else
  {
    v15[0] = 1;
    v15[112] = 0;
    v4 = sub_26C00A45C();
    sub_26BE2DC18(v15, v13);
    v5 = swift_allocObject();
    v6 = v13[5];
    *(v5 + 88) = v13[4];
    *(v5 + 104) = v6;
    *(v5 + 120) = v13[6];
    v7 = v13[1];
    *(v5 + 24) = v13[0];
    *(v5 + 40) = v7;
    v8 = v13[3];
    *(v5 + 56) = v13[2];
    *(v5 + 16) = 1;
    *(v5 + 136) = v14;
    *(v5 + 72) = v8;
    aBlock[4] = sub_26BE2E3DC;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BEB8234;
    aBlock[3] = &block_descriptor_240;
    v9 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v9);

    sub_26BE7C9B8(0, 0);
    sub_26BE2DC9C(v15);
    sub_26BE01654();
    swift_allocError();
    *v10 = 1;
    v10[112] = 0;
    swift_willThrow();
  }
}

void sub_26BE16654(uint64_t *a1@<X8>)
{
  sub_26BE1C10C();
  if (!v2)
  {
    sub_26BE16490(v9);
    v4 = v9[1];
    v12 = v9[0];
    v5 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
    swift_beginAccess();
    sub_26BE038A8(v1 + v5, v9);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = *(v7 + 40);
    a1[5] = swift_getAssociatedTypeWitness();
    a1[6] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a1 + 2);
    v8(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a1 = v12;
    a1[1] = v4;
  }
}

double sub_26BE1677C@<D0>(uint64_t a1@<X8>)
{
  sub_26BE1C10C();
  if (!v2)
  {
    sub_26BE16490(v12);
    v5 = v12[1];
    v19 = v12[0];
    v6 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
    swift_beginAccess();
    sub_26BE038A8(v1 + v6, v12);
    v7 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v9 = *(v8 + 40);
    *(&v17 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v16);
    v9(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v12);
    *&v15 = v19;
    *(&v15 + 1) = v5;
    v10 = v17;
    *(a1 + 48) = AssociatedConformanceWitness;
    result = *&v16;
    v11 = v15;
    *(a1 + 16) = v16;
    *(a1 + 32) = v10;
    *a1 = v11;
  }

  return result;
}

uint64_t sub_26BE168C4()
{
  v1 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BE16908(char a1)
{
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26BE169BC()
{
  v1 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 2)
  {
    v4[3] = &type metadata for SwiftMLSFeatureFlags;
    v4[4] = sub_26BE295D8();
    LOBYTE(v4[0]) = 0;
    LOBYTE(v2) = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2 & 1;
}

uint64_t sub_26BE16A38()
{
  v1 = v0;
  v2 = sub_26C00928C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00A4EC();
  MEMORY[0x28223BE20](v6 - 8);
  swift_beginAccess();
  v7 = *(v0 + 32);
  if ((~v7 & 0x3000000000000000) == 0)
  {
    goto LABEL_2;
  }

  v10 = *(v0 + 24);
  if ((v7 & 0x2000000000000000) != 0)
  {
    v19 = *(v0 + 24);
    v20 = v7;
    v14 = MLS.Identity.Credential.description.getter();
    v13 = v15;
    goto LABEL_7;
  }

  sub_26BE00608(*(v0 + 24), *(v0 + 32));
  sub_26C00A4CC();
  v11 = sub_26C00A4AC();
  v13 = v12;
  sub_26BE2962C(v10, v7);
  if (v13)
  {
    v14 = v11;
LABEL_7:
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_26C00AC1C();

    strcpy(v21, "Client(uuid: ");
    HIWORD(v21[1]) = -4864;
    v16 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v16, v2);
    sub_26BE2DA54(&qword_28045E450, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_26C00AEFC();
    MEMORY[0x26D699090](v17);

    (*(v3 + 8))(v5, v2);
    MEMORY[0x26D699090](0x69746E656469202CLL, 0xEC000000203A7974);
    MEMORY[0x26D699090](v14, v13);

    goto LABEL_8;
  }

LABEL_2:
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_26C00AC1C();

  strcpy(v21, "Client(uuid: ");
  HIWORD(v21[1]) = -4864;
  v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v8, v2);
  sub_26BE2DA54(&qword_28045E450, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v9 = sub_26C00AEFC();
  MEMORY[0x26D699090](v9);

  (*(v3 + 8))(v5, v2);
LABEL_8:
  MEMORY[0x26D699090](41, 0xE100000000000000);
  return v21[0];
}

uint64_t MLS.Client.Client.__allocating_init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(uint64_t a1, _BYTE *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  MLS.Client.Client.init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(a1, a2, a3, a4, a5);
  return v10;
}

void *MLS.Client.Client.init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(uint64_t a1, _BYTE *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v105 = a3;
  v107 = a2;
  v108 = a1;
  v9 = sub_26C00921C();
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x28223BE20](v9);
  v99 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v91[-v12];
  v14 = sub_26C00928C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v102 = &v91[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v19 = &v91[-v18];
  v20 = a4[1];
  v96 = *a4;
  v104 = v20;
  *(v6 + 3) = xmmword_26C00DA50;
  v94 = v6 + 3;
  v21 = v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyPackageSecretsStore) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_inner) = 1;
  v22 = (v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state);
  *v22 = 0u;
  v22[1] = 0u;
  v22[2] = 0u;
  v22[3] = 0u;
  v22[4] = 0u;
  v22[5] = 0u;
  v22[6] = 0u;
  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride) = 2;
  v23 = (v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
  *v23 = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  v23[3] = 0u;
  v23[4] = 0u;
  v23[5] = 0u;
  v23[6] = 0u;
  v23[7] = 0u;
  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_reportingIntervalSeconds) = 86400;
  v103 = a5;
  sub_26BE2E1F0(a5, v13, &qword_28045E458, &unk_26C00DAA0);
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    sub_26C00927C();
    if (v24(v13, 1, v14) != 1)
    {
      sub_26BE2E258(v13, &qword_28045E458, &unk_26C00DAA0);
    }
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
  }

  v25 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  v26 = v15;
  v27 = *(v15 + 32);
  v106 = v14;
  v27(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID, v19, v14);
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v28 = sub_26C009A5C();
  v29 = __swift_project_value_buffer(v28, qword_280478E70);
  sub_26BE295A0(v108, &v128);

  v98 = v29;
  v30 = sub_26C009A3C();
  v31 = sub_26C00AA1C();

  v32 = os_log_type_enabled(v30, v31);
  v95 = v25;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v114 = v93;
    *v33 = 136315394;
    swift_beginAccess();
    v34 = v26;
    v35 = *(v26 + 16);
    v92 = v31;
    v36 = v102;
    v37 = v106;
    v35(v102, v6 + v25, v106);
    sub_26BE2DA54(&qword_28045E450, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v38 = sub_26C00AEFC();
    v40 = v39;
    (*(v34 + 8))(v36, v37);
    v41 = sub_26BE29740(v38, v40, &v114);

    *(v33 + 4) = v41;
    *(v33 + 12) = 2080;
    v117 = v130;
    v118 = v131;
    v119 = v132;
    v115 = v128;
    v116 = v129;
    v111 = v130;
    v112 = v131;
    v113 = v132;
    v109 = v128;
    v110 = v129;
    sub_26BE14F00(&v115, v120);
    v42 = MLS.Client.MLSOptions.description.getter();
    v44 = v43;
    v120[2] = v111;
    v121 = v112;
    v122 = v113;
    v120[0] = v109;
    v120[1] = v110;
    sub_26BE14F98(v120);
    sub_26BE29710(&v128);
    v45 = sub_26BE29740(v42, v44, &v114);

    *(v33 + 14) = v45;
    _os_log_impl(&dword_26BDFE000, v30, v92, "Initializing client with (uuid: %s, options: %s)", v33, 0x16u);
    v46 = v93;
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v46, -1, -1);
    MEMORY[0x26D69A4E0](v33, -1, -1);
  }

  else
  {

    sub_26BE29710(&v128);
    v37 = v106;
    v34 = v26;
  }

  v97 = v34;
  sub_26BE295A0(v108, (v6 + 5));
  v47 = *(v34 + 16);
  v47(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID, v107, v37);
  v48 = v105;
  sub_26BE038A8(v105, v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey);
  v49 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state) = 0;
  type metadata accessor for SMSemaphore();
  v50 = swift_allocObject();
  swift_defaultActor_initialize();
  v51 = MEMORY[0x277D84FA0];
  *(v50 + 120) = MEMORY[0x277D84FA0];
  *(v50 + 112) = 1;
  v6[2] = v50;
  v52 = v99;
  sub_26C00920C();
  (*(v100 + 4))(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_lastHealthReportTimestamp, v52, v101);
  v53 = v104;
  if ((~v104 & 0x3000000000000000) != 0)
  {
    v100 = v47;
    v101 = v49;
    swift_beginAccess();
    v69 = v6[3];
    v70 = v6[4];
    v71 = v96;
    v6[3] = v96;
    v6[4] = v53;
    sub_26BE04890(v71, v53);
    sub_26BE2962C(v69, v70);
    sub_26BE038A8(v48, &v115);
    v72 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90];

    sub_26BE2958C(v71, v53);
    v124 = sub_26C00447C(v72);
    v125 = sub_26C004684(v72);
    v126 = v51;
    v127 = v6;
    v74 = *(&v116 + 1);
    v73 = v117;
    __swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
    (*(*(v73 + 8) + 24))(&v128, v74);
    LOBYTE(v73) = v128;

    LOBYTE(v120[0]) = v73;
    sub_26BE038A8(&v115, v120 + 8);
    *&v121 = v71;
    *(&v121 + 1) = v53;
    sub_26BE2B9C8(v120, &v128);
    __swift_destroy_boxed_opaque_existential_1(&v115);
    sub_26BE2BA24(v120);
    swift_beginAccess();
    sub_26BE2BA78(&v128, v22);
    swift_endAccess();

    v75 = sub_26C009A3C();
    v76 = sub_26C00AA1C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v128 = v99;
      *v77 = 136315138;
      LODWORD(v98) = v76;
      v78 = v95;
      swift_beginAccess();
      v79 = v6 + v78;
      v80 = v102;
      v81 = v97;
      v82 = v106;
      v100(v102, v79, v106);
      sub_26BE2DA54(&qword_28045E450, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v83 = sub_26C00AEFC();
      v85 = v84;
      v86 = *(v81 + 8);
      v86(v80, v82);
      v87 = sub_26BE29740(v83, v85, &v128);

      *(v77 + 4) = v87;
      _os_log_impl(&dword_26BDFE000, v75, v98, "Client(uuid: %s): Initialized client with credential", v77, 0xCu);
      v88 = v99;
      __swift_destroy_boxed_opaque_existential_1(v99);
      MEMORY[0x26D69A4E0](v88, -1, -1);
      MEMORY[0x26D69A4E0](v77, -1, -1);

      sub_26BE2962C(v96, v104);
      sub_26BE2E258(v103, &qword_28045E458, &unk_26C00DAA0);
      __swift_destroy_boxed_opaque_existential_1(v105);
      v86(v107, v82);
    }

    else
    {

      sub_26BE2962C(v71, v53);
      sub_26BE2E258(v103, &qword_28045E458, &unk_26C00DAA0);
      __swift_destroy_boxed_opaque_existential_1(v48);
      (*(v97 + 8))(v107, v106);
    }

    sub_26BE29710(v108);
    v89 = v101;
    swift_beginAccess();
    *(v6 + v89) = 1;
  }

  else
  {

    v54 = sub_26C009A3C();
    v55 = sub_26C00AA1C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&v120[0] = v104;
      *v56 = 136315138;
      LODWORD(v101) = v55;
      v57 = v95;
      swift_beginAccess();
      v58 = v6 + v57;
      v59 = v102;
      v60 = v97;
      v61 = v47;
      v62 = v106;
      v61(v102, v58, v106);
      sub_26BE2DA54(&qword_28045E450, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v63 = sub_26C00AEFC();
      v65 = v64;
      v66 = *(v60 + 8);
      v66(v59, v62);
      v67 = sub_26BE29740(v63, v65, v120);

      *(v56 + 4) = v67;
      _os_log_impl(&dword_26BDFE000, v54, v101, "Client(uuid: %s): Initialized client without credential", v56, 0xCu);
      v68 = v104;
      __swift_destroy_boxed_opaque_existential_1(v104);
      MEMORY[0x26D69A4E0](v68, -1, -1);
      MEMORY[0x26D69A4E0](v56, -1, -1);

      sub_26BE2E258(v103, &qword_28045E458, &unk_26C00DAA0);
      __swift_destroy_boxed_opaque_existential_1(v105);
      v66(v107, v62);
    }

    else
    {

      sub_26BE2E258(v103, &qword_28045E458, &unk_26C00DAA0);
      __swift_destroy_boxed_opaque_existential_1(v48);
      (*(v97 + 8))(v107, v106);
    }

    sub_26BE29710(v108);
  }

  return v6;
}

uint64_t sub_26BE17A4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v9 = swift_allocObject();
  v10 = a5[1];
  v26 = *a5;
  *(v9 + 24) = xmmword_26C00DA50;
  v11 = v9 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v9 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyPackageSecretsStore) = MEMORY[0x277D84F90];
  *(v9 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_inner) = 1;
  v12 = (v9 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state);
  *v12 = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  v12[3] = 0u;
  v12[4] = 0u;
  v12[5] = 0u;
  v12[6] = 0u;
  *(v9 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride) = 2;
  v13 = (v9 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  v13[6] = 0u;
  v13[7] = 0u;
  *(v9 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_reportingIntervalSeconds) = 86400;
  v28 = a1;
  sub_26BE295A0(a1, v9 + 40);
  v14 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  v15 = sub_26C00928C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v17(v9 + v14, a2, v15);
  v17(v9 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID, a3, v15);
  sub_26BE038A8(a4, v9 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey);
  swift_beginAccess();
  v18 = *(v9 + 24);
  v19 = *(v9 + 32);
  *(v9 + 24) = v26;
  *(v9 + 32) = v10;
  sub_26BE2958C(v26, v10);
  sub_26BE2962C(v18, v19);
  swift_beginAccess();
  sub_26BE2DE54(a6, v12);
  swift_endAccess();
  if ((~v10 & 0x3000000000000000) != 0)
  {
    sub_26BE2962C(v26, v10);
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  *(v9 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state) = v20;
  type metadata accessor for SMSemaphore();
  v21 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v21 + 120) = MEMORY[0x277D84FA0];
  *(v21 + 112) = 1;
  *(v9 + 16) = v21;
  sub_26C00920C();
  sub_26BE2E258(a6, &qword_28045E460, &qword_26C0206D0);
  __swift_destroy_boxed_opaque_existential_1(a4);
  v22 = *(v16 + 8);
  v22(a3, v15);
  v22(a2, v15);
  sub_26BE29710(v28);
  return v9;
}

uint64_t MLS.Client.Client.__allocating_init(configuration:withClientUUID:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_26C00928C();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  sub_26BE11028(v53);
  if (v2)
  {
    sub_26BE2E258(a2, &qword_28045E458, &unk_26C00DAA0);
    sub_26BE29710(a1);
  }

  else
  {
    v44 = v14;
    v45 = v11;
    v46 = a1;
    v47 = v16;
    v17 = v49;
    v18 = v7;
    v48 = a2;
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v19 = sub_26C009A5C();
    __swift_project_value_buffer(v19, qword_280478E70);
    v20 = v47;
    sub_26BE2E1F0(v48, v47, &qword_28045E458, &unk_26C00DAA0);
    v21 = sub_26C009A3C();
    v43 = sub_26C00AA1C();
    v22 = os_log_type_enabled(v21, v43);
    v23 = v17;
    v24 = v44;
    if (v22)
    {
      v42 = v21;
      v25 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52[0] = v40;
      v41 = v25;
      *v25 = 136315138;
      sub_26BE2E1F0(v20, v24, &qword_28045E458, &unk_26C00DAA0);
      v26 = (*(v23 + 48))(v24, 1, v5);
      v27 = v46;
      if (v26 == 1)
      {
        sub_26BE2E258(v24, &qword_28045E458, &unk_26C00DAA0);
        v28 = 0xE500000000000000;
        v29 = 0x3E6C696E3CLL;
      }

      else
      {
        v32 = v5;
        v29 = sub_26C00922C();
        v28 = v33;
        (*(v23 + 8))(v24, v32);
      }

      v30 = v48;
      sub_26BE2E258(v47, &qword_28045E458, &unk_26C00DAA0);
      v34 = sub_26BE29740(v29, v28, v52);

      v36 = v41;
      v35 = v42;
      *(v41 + 1) = v34;
      _os_log_impl(&dword_26BDFE000, v35, v43, "Initializing new client, received UUID %s", v36, 0xCu);
      v37 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x26D69A4E0](v37, -1, -1);
      MEMORY[0x26D69A4E0](v36, -1, -1);

      v31 = v54;
    }

    else
    {

      sub_26BE2E258(v20, &qword_28045E458, &unk_26C00DAA0);
      v30 = v48;
      v31 = v54;
      v27 = v46;
    }

    sub_26BE295A0(v27, v52);
    sub_26C00927C();
    sub_26BE038A8(v53, v51);
    v50 = xmmword_26C00DA50;
    v38 = v45;
    sub_26BE2E1F0(v30, v45, &qword_28045E458, &unk_26C00DAA0);
    a1 = (*(v31 + 648))(v52, v18, v51, &v50, v38);
    sub_26BE2E258(v30, &qword_28045E458, &unk_26C00DAA0);
    sub_26BE29710(v27);
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  return a1;
}

{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  v4 = sub_26C00928C();
  v3[60] = v4;
  v3[61] = *(v4 - 8);
  v3[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0);
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE182E4, 0, 0);
}

uint64_t sub_26BE182E4()
{
  v28 = v0;
  sub_26BE11028(v0 + 47);
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = v0[65];
  v2 = v0[58];
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478E70);
  sub_26BE2E1F0(v2, v1, &qword_28045E458, &unk_26C00DAA0);
  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[65];
  if (v6)
  {
    v8 = v0[64];
    v9 = v0[60];
    v10 = v0[61];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v27 = v12;
    *v11 = 136315138;
    sub_26BE2E1F0(v7, v8, &qword_28045E458, &unk_26C00DAA0);
    v13 = (*(v10 + 48))(v8, 1, v9);
    v14 = v0[64];
    if (v13 == 1)
    {
      sub_26BE2E258(v0[64], &qword_28045E458, &unk_26C00DAA0);
      v15 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    else
    {
      v17 = v0[60];
      v18 = v0[61];
      v16 = sub_26C00922C();
      v15 = v19;
      (*(v18 + 8))(v14, v17);
    }

    sub_26BE2E258(v0[65], &qword_28045E458, &unk_26C00DAA0);
    v20 = sub_26BE29740(v16, v15, &v27);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_26BDFE000, v4, v5, "Initializing new client, received UUID %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D69A4E0](v12, -1, -1);
    MEMORY[0x26D69A4E0](v11, -1, -1);
  }

  else
  {

    sub_26BE2E258(v7, &qword_28045E458, &unk_26C00DAA0);
  }

  v21 = v0[62];
  v22 = v0[63];
  v24 = v0[58];
  v23 = v0[59];
  sub_26BE295A0(v0[57], (v0 + 2));
  sub_26C00927C();
  sub_26BE038A8((v0 + 47), (v0 + 52));
  v27 = xmmword_26C00DA50;
  sub_26BE2E1F0(v24, v22, &qword_28045E458, &unk_26C00DAA0);
  v0[66] = (*(v23 + 648))(v0 + 2, v21, v0 + 52, &v27, v22);
  v25 = swift_task_alloc();
  v0[67] = v25;
  *v25 = v0;
  v25[1] = sub_26BE186C0;

  return sub_26BE18958();
}

uint64_t sub_26BE186C0()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_26BE18898;
  }

  else
  {
    v2 = sub_26BE187D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE187D4()
{
  v1 = v0[57];
  sub_26BE2E258(v0[58], &qword_28045E458, &unk_26C00DAA0);
  sub_26BE29710(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);

  v2 = v0[1];
  v3 = v0[66];

  return v2(v3);
}

uint64_t sub_26BE18898()
{
  v1 = v0[57];
  sub_26BE2E258(v0[58], &qword_28045E458, &unk_26C00DAA0);
  sub_26BE29710(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BE18958()
{
  v1[21] = v0;
  v2 = sub_26C00928C();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE18A18, 0, 0);
}

uint64_t sub_26BE18A18()
{
  v1 = v0[21];
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    v0[5] = &type metadata for SwiftMLSFeatureFlags;
    v4 = sub_26BE295D8();
    *(v0 + 16) = 0;
    v0[6] = v4;
    v5 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v6 = 0;
      v7 = 0xC000000000000000;
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  MLS.Client.Client.rawValue.getter();
  v6 = v8;
  v7 = v9;
LABEL_6:
  v0[25] = v6;
  v0[26] = v7;
  v11 = v0[23];
  v10 = v0[24];
  v13 = v0[21];
  v12 = v0[22];
  swift_beginAccess();
  sub_26BE038A8(v13 + 200, (v0 + 7));
  v14 = v0[10];
  v15 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v14);
  v16 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  swift_beginAccess();
  (*(v11 + 16))(v10, v13 + v16, v12);
  v20 = (*(v15 + 16) + **(v15 + 16));
  v17 = swift_task_alloc();
  v0[27] = v17;
  *v17 = v0;
  v17[1] = sub_26BE18CA0;
  v18 = v0[24];

  return v20(v18, v6, v7, v14, v15);
}

uint64_t sub_26BE18CA0()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v3 = sub_26BE18E80;
  }

  else
  {
    v3 = sub_26BE18E08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE18E08()
{
  sub_26BE00258(v0[25], v0[26]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26BE18E80()
{
  sub_26BE00258(v0[25], v0[26]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = v0[1];

  return v1();
}

void sub_26BE18EF4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v2 + v5, v18);
  v6 = MEMORY[0x277D84F90];
  v17[7] = MEMORY[0x277D84F90];
  v17[8] = MEMORY[0x277D84F90];
  sub_26BE04890(v3, v4);
  v17[9] = sub_26C00447C(v6);
  v17[10] = sub_26C004684(v6);
  v17[11] = MEMORY[0x277D84FA0];
  v17[12] = v2;
  v7 = v19;
  v8 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v9 = *(v8 + 8);
  v10 = *(v9 + 24);

  v10(v21, v7, v9);
  v11 = v2;
  LOBYTE(v2) = v21[0];

  v16[0] = v2;
  sub_26BE038A8(v18, v17);
  v17[5] = v3;
  v17[6] = v4;
  sub_26BE2B9C8(v16, v21);
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_26BE2BA24(v16);
  v12 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
  swift_beginAccess();
  sub_26BE2BA78(v21, v11 + v12);
  swift_endAccess();
  swift_beginAccess();
  v13 = *(v11 + 24);
  v14 = *(v11 + 32);
  *(v11 + 24) = v3;
  *(v11 + 32) = v4;
  sub_26BE04890(v3, v4);
  sub_26BE2962C(v13, v14);
  v15 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  swift_beginAccess();
  if ((*(v11 + v15) & 1) == 0)
  {
    *(v11 + v15) = 1;
  }

  sub_26BE7C9B8(1u, 1);
}

uint64_t sub_26BE190CC(_OWORD *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_26BE190F4, 0, 0);
}

uint64_t sub_26BE190F4()
{
  v1 = v0[3];
  v2 = v0[4];

  sub_26BE04890(v1, v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_26BE191BC;

  return (sub_26BE8CF34)();
}

uint64_t sub_26BE191BC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_26BE2E40C;
  }

  else
  {
    v2 = sub_26BE2E3EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE192D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[62] = a3;
  v4[63] = a4;
  v4[61] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v4[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE19370, 0, 0);
}

uint64_t sub_26BE19370()
{
  v39 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478E70);
  sub_26BE04890(v2, v1);
  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();
  sub_26BE0489C(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 496);
    v6 = *(v0 + 504);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    v37 = v7;
    *v8 = 136315138;
    v38 = v6;
    sub_26BE04890(v7, v6);
    v10 = MLS.Identity.Credential.description.getter();
    v12 = v11;
    sub_26BE0489C(v37, v38);
    v13 = sub_26BE29740(v10, v12, &v36);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_26BDFE000, v4, v5, "Loading credential %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D69A4E0](v9, -1, -1);
    MEMORY[0x26D69A4E0](v8, -1, -1);
  }

  v14 = *(v0 + 504);
  v35 = *(v0 + 512);
  v16 = *(v0 + 488);
  v15 = *(v0 + 496);
  v17 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v16 + v17, v0 + 360);
  v18 = *(v0 + 384);
  v19 = *(v0 + 392);
  __swift_project_boxed_opaque_existential_1((v0 + 360), v18);
  v20 = *(v19 + 40);
  *(v0 + 296) = swift_getAssociatedTypeWitness();
  *(v0 + 304) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 272));
  v20(v18, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 360));
  *(v0 + 256) = v15;
  *(v0 + 264) = v14;
  swift_beginAccess();
  sub_26BE038A8(v16 + 240, v0 + 400);
  v21 = *(v0 + 424);
  v22 = *(v0 + 432);
  __swift_project_boxed_opaque_existential_1((v0 + 400), v21);
  v23 = sub_26C00921C();
  (*(*(v23 - 8) + 56))(v35, 1, 1, v23);
  v24 = *(v22 + 8);
  sub_26BE04890(v15, v14);
  LOBYTE(v17) = v24(v0 + 256, v35, v21, v22);
  sub_26BE2E258(*(v0 + 512), &qword_28045E4A8, &unk_26C00ECB0);
  __swift_destroy_boxed_opaque_existential_1((v0 + 400));
  if (v17)
  {
    sub_26BE18EF4((v0 + 256));
    v25 = swift_task_alloc();
    *(v0 + 520) = v25;
    *v25 = v0;
    v25[1] = sub_26BE1999C;

    return sub_26BE18958();
  }

  else
  {
    v27 = sub_26C009A3C();
    v28 = sub_26C00AA0C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26BDFE000, v27, v28, "Provided credential was invalid", v29, 2u);
      MEMORY[0x26D69A4E0](v29, -1, -1);
    }

    *(v0 + 16) = 18;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0;
    *(v0 + 128) = 23;
    v30 = sub_26C00A45C();
    sub_26BE2DC18(v0 + 16, v0 + 136);
    v31 = swift_allocObject();
    *(v31 + 16) = 1;
    *(v31 + 88) = *(v0 + 200);
    *(v31 + 104) = *(v0 + 216);
    *(v31 + 120) = *(v0 + 232);
    *(v31 + 136) = *(v0 + 248);
    *(v31 + 24) = *(v0 + 136);
    *(v31 + 40) = *(v0 + 152);
    *(v31 + 56) = *(v0 + 168);
    *(v31 + 72) = *(v0 + 184);
    *(v0 + 344) = sub_26BE2E3DC;
    *(v0 + 352) = v31;
    *(v0 + 312) = MEMORY[0x277D85DD0];
    *(v0 + 320) = 1107296256;
    *(v0 + 328) = sub_26BEB8234;
    *(v0 + 336) = &block_descriptor_177;
    v32 = _Block_copy((v0 + 312));

    AnalyticsSendEventLazy();
    _Block_release(v32);

    sub_26BE7C9B8(1u, 0);
    sub_26BE2DC9C(v0 + 16);
    sub_26BE01654();
    swift_allocError();
    *v33 = 18;
    *(v33 + 8) = 0u;
    *(v33 + 24) = 0u;
    *(v33 + 40) = 0u;
    *(v33 + 56) = 0u;
    *(v33 + 72) = 0u;
    *(v33 + 88) = 0u;
    *(v33 + 104) = 0;
    *(v33 + 112) = 23;
    swift_willThrow();
    sub_26BE2DBC4(v0 + 256);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_26BE1999C()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_26BE19B20;
  }

  else
  {
    v2 = sub_26BE19AB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE19AB0()
{
  sub_26BE2DBC4(v0 + 256);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE19B20()
{
  sub_26BE2DBC4(v0 + 256);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE19B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_26BE19BB0, 0, 0);
}

uint64_t sub_26BE19BB0()
{
  v1 = v0[7];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[8] = v2;
  v0[9] = v3;
  v0[10] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26BE19CC0;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE19CC0()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE19FAC, 0, 0);
  }

  else
  {
    v3 = v2[5];

    v6 = (v3 + *v3);
    v4 = swift_task_alloc();
    v2[13] = v4;
    *v4 = v2;
    v4[1] = sub_26BE19E98;

    return v6();
  }
}

uint64_t sub_26BE19E98()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26BE1A278;
  }

  else
  {
    v2 = sub_26BE1A1D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE19FAC()
{
  v14 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 96);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE1A1D4()
{
  v0[15] = *(v0[7] + 16);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_26BE2E3B0;

  return sub_26BEAB784();
}

uint64_t sub_26BE1A278()
{
  v0[17] = *(v0[7] + 16);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_26BE1A31C;

  return sub_26BEAB784();
}

uint64_t sub_26BE1A31C()
{

  return MEMORY[0x2822009F8](sub_26BE2E3E4, 0, 0);
}

uint64_t sub_26BE1A434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_26BE1A458, 0, 0);
}

uint64_t sub_26BE1A458()
{
  v1 = v0[7];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[8] = v2;
  v0[9] = v3;
  v0[10] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26BE1A56C;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE1A56C()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE2E3B4, 0, 0);
  }

  else
  {
    v3 = v2[5];

    v6 = (v3 + *v3);
    v4 = swift_task_alloc();
    v2[13] = v4;
    *v4 = v2;
    v4[1] = sub_26BE19E98;

    return v6();
  }
}

uint64_t sub_26BE1A744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_26BE1A768, 0, 0);
}

uint64_t sub_26BE1A768()
{
  v1 = v0[7];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[8] = v2;
  v0[9] = v3;
  v0[10] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26BE1A878;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE1A878()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE1AA50, 0, 0);
  }

  else
  {
    v3 = v2[5];

    v6 = (v3 + *v3);
    v4 = swift_task_alloc();
    v2[13] = v4;
    *v4 = v2;
    v4[1] = sub_26BE19E98;

    return v6();
  }
}

uint64_t sub_26BE1AA50()
{
  v14 = v0;

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 96);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE1AC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_26BE1ACA4, 0, 0);
}

uint64_t sub_26BE1ACA4()
{
  v1 = v0[10];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[11] = v2;
  v0[12] = v3;
  v0[13] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_26BE1ADB8;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE1ADB8()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE1B0AC, 0, 0);
  }

  else
  {
    v3 = v2[8];

    v6 = (v3 + *v3);
    v4 = swift_task_alloc();
    v2[16] = v4;
    *v4 = v2;
    v4[1] = sub_26BE1AF98;

    return v6(v2 + 5);
  }
}

uint64_t sub_26BE1AF98()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_26BE1B4A8;
  }

  else
  {
    v2 = sub_26BE1B2E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE1B0AC()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 120);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE1B2E4()
{
  v1 = *(v0 + 80);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 144) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26BE1B394;

  return sub_26BEAB784();
}

uint64_t sub_26BE1B394()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BE1B4A8()
{
  v0[20] = *(v0[10] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BE1B54C;

  return sub_26BEAB784();
}

uint64_t sub_26BE1B54C()
{

  return MEMORY[0x2822009F8](sub_26BE1B664, 0, 0);
}

uint64_t sub_26BE1B664(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE1B6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_26BE1B6F4, 0, 0);
}

uint64_t sub_26BE1B6F4()
{
  v1 = v0[7];
  swift_beginAccess();
  sub_26C00B11C();
  sub_26C00B11C();
  v2 = sub_26C00B13C();
  v4 = v3;
  v0[8] = v2;
  v0[9] = v3;
  v0[10] = *(v1 + 16);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_26BE1B808;

  return sub_26BEAA3E4(v2, v4, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE1B808()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE1BAF4, 0, 0);
  }

  else
  {
    v3 = v2[5];

    v6 = (v3 + *v3);
    v4 = swift_task_alloc();
    v2[13] = v4;
    *v4 = v2;
    v4[1] = sub_26BE1B9E0;

    return v6();
  }
}

uint64_t sub_26BE1B9E0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26BE1BEE4;
  }

  else
  {
    v2 = sub_26BE1BD2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE1BAF4()
{
  v14 = v0;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v13);
    *(v4 + 12) = 2080;
    v6 = sub_26C00B12C();
    v8 = sub_26BE29740(v6, v7, v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Timed out waiting for lock (%s seconds)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = *(v0 + 96);
  sub_26BE01654();
  swift_allocError();
  *v10 = 21;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 112) = 23;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BE1BD2C()
{
  v0[15] = *(v0[7] + 16);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_26BE1BDD0;

  return sub_26BEAB784();
}

uint64_t sub_26BE1BDD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BE1BEE4()
{
  v0[17] = *(v0[7] + 16);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_26BE1BF88;

  return sub_26BEAB784();
}

uint64_t sub_26BE1BF88()
{

  return MEMORY[0x2822009F8](sub_26BE1C0A0, 0, 0);
}

uint64_t sub_26BE1C0A0(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26BE1C10C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  result = swift_beginAccess();
  if (*(v0 + v2) != 1)
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v4 = sub_26C009A5C();
    __swift_project_value_buffer(v4, qword_280478E70);

    v5 = sub_26C009A3C();
    v6 = sub_26C00AA0C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      if (*(v1 + v2))
      {
        v9 = 0x79646165722ELL;
      }

      else
      {
        v9 = 0xD000000000000015;
      }

      if (*(v1 + v2))
      {
        v10 = 0xE600000000000000;
      }

      else
      {
        v10 = 0x800000026C02AB20;
      }

      v11 = sub_26BE29740(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_26BDFE000, v5, v6, "Expected client to be in .ready, got %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69A4E0](v8, -1, -1);
      MEMORY[0x26D69A4E0](v7, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v12 = 17;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0;
    *(v12 + 112) = 23;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26BE1C318(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE1C338, 0, 0);
}

uint64_t sub_26BE1C338()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26BE1C3F0;
  v2 = v0[2];
  v3 = v0[3];

  return sub_26BE8E304(v2, v3, v3);
}

uint64_t sub_26BE1C3F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BE1C4E4(uint64_t a1, uint64_t a2)
{
  v2[111] = a2;
  v2[110] = a1;
  type metadata accessor for MLS.MLSMessage(0);
  v2[112] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE1C578, 0, 0);
}

uint64_t sub_26BE1C578()
{
  sub_26BE1C10C();
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 888);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(*(v5 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyPackageSecretsStore) + 16);

    _os_log_impl(&dword_26BDFE000, v2, v3, "Generating key package (%ld generated already)", v6, 0xCu);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 888);
  v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (v9 == 2)
  {
    *(v0 + 816) = &type metadata for SwiftMLSFeatureFlags;
    *(v0 + 824) = sub_26BE295D8();
    *(v0 + 792) = 0;
    v10 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 792));
    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((v9 & 1) == 0)
  {
LABEL_8:
    sub_26BE01654();
    swift_allocError();
    strcpy(v11, "Shim is gone!");
    *(v11 + 7) = -4864;
    v11[112] = 2;
    swift_willThrow();

    v32 = *(v0 + 8);

    return v32();
  }

  sub_26BE16230((v0 + 568));
  sub_26BEB6C88(v0 + 16);
  v12 = *(v0 + 160);
  v13 = *(v0 + 176);
  v14 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = v12;
  *(v0 + 360) = v13;
  v15 = *(v0 + 96);
  v16 = *(v0 + 112);
  v17 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v15;
  *(v0 + 296) = v16;
  *(v0 + 312) = v14;
  v18 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v18;
  v19 = *(v0 + 64);
  v21 = *(v0 + 16);
  v20 = *(v0 + 32);
  v22 = *(v0 + 48);
  *(v0 + 232) = v22;
  *(v0 + 248) = v19;
  v23 = *(v0 + 896);
  *(v0 + 376) = *(v0 + 192);
  *(v23 + 32) = v22;
  *(v23 + 48) = v17;
  *v23 = v21;
  *(v23 + 16) = v20;
  v24 = *(v0 + 80);
  v25 = *(v0 + 96);
  v26 = *(v0 + 128);
  *(v23 + 96) = *(v0 + 112);
  *(v23 + 112) = v26;
  *(v23 + 64) = v24;
  *(v23 + 80) = v25;
  v27 = *(v0 + 144);
  v28 = *(v0 + 160);
  v29 = *(v0 + 176);
  *(v23 + 176) = *(v0 + 192);
  *(v23 + 144) = v28;
  *(v23 + 160) = v29;
  *(v23 + 128) = v27;
  type metadata accessor for MLS.MLSMessage.Inner(0);
  swift_storeEnumTagMultiPayload();
  sub_26BE2DFC0(v0 + 200, v0 + 384);
  MLS.MLSMessage.rawValue.getter();
  *(v0 + 904) = v30;
  *(v0 + 912) = v31;
  v34 = *(v0 + 888);
  sub_26BE2E190(*(v0 + 896), type metadata accessor for MLS.MLSMessage);
  sub_26BE2E01C(v0 + 200);
  v35 = *(v0 + 648);
  *(v0 + 744) = *(v0 + 632);
  *(v0 + 760) = v35;
  *(v0 + 776) = *(v0 + 664);
  v36 = *(v0 + 584);
  *(v0 + 680) = *(v0 + 568);
  *(v0 + 696) = v36;
  v37 = *(v0 + 616);
  *(v0 + 712) = *(v0 + 600);
  *(v0 + 728) = v37;
  v38 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
  swift_beginAccess();
  sub_26BE2BA78(v0 + 680, v34 + v38);
  swift_endAccess();
  v39 = swift_task_alloc();
  *(v0 + 920) = v39;
  *v39 = v0;
  v39[1] = sub_26BE1C99C;

  return sub_26BE18958();
}

uint64_t sub_26BE1C99C()
{
  *(*v1 + 928) = v0;

  if (v0)
  {
    v2 = sub_26BE1CB24;
  }

  else
  {
    v2 = sub_26BE1CAB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE1CAB0()
{
  **(v0 + 880) = *(v0 + 904);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE1CB24()
{
  sub_26BE00258(v0[113], v0[114]);

  v1 = v0[1];

  return v1();
}

char *sub_26BE1CB94(uint64_t a1)
{
  v2 = v1;
  v24 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v4 = *(v1 + 280) == 0xD00000000000001ALL && 0x800000026C02AD20 == *(v1 + 288);
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {
    if ((a1 & 0x100000000) != 0)
    {
      LODWORD(a1) = sub_26BE4126C();
    }

    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v5 = sub_26C009A5C();
    __swift_project_value_buffer(v5, qword_280478E70);

    v6 = sub_26C009A3C();
    v7 = sub_26C00AA1C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21[0] = v9;
      *v8 = 136315394;
      v10 = sub_26BE16A38();
      v2 = sub_26BE29740(v10, v11, v21);

      *(v8 + 4) = v2;
      *(v8 + 12) = 1024;
      *(v8 + 14) = a1;
      _os_log_impl(&dword_26BDFE000, v6, v7, "%s: adding era=%u extension to initial group context extensions", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D69A4E0](v9, -1, -1);
      MEMORY[0x26D69A4E0](v8, -1, -1);
    }

    v22 = xmmword_26C00BBD0;
    v23 = 0;
    v20 = bswap32(a1);
    v21[3] = MEMORY[0x277D838B0];
    v21[4] = MEMORY[0x277CC9C18];
    v21[0] = &v20;
    v21[1] = v21;
    __swift_project_boxed_opaque_existential_1(v21, MEMORY[0x277D838B0]);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(v21);
    v14 = *(&v22 + 1);
    v13 = v22;
    v15 = *(&v22 + 1) >> 62;
    if ((*(&v22 + 1) >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_20;
      }

      v16 = *(v22 + 24);
    }

    else
    {
      if (!v15)
      {
        goto LABEL_20;
      }

      v16 = v22 >> 32;
    }

    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_24;
    }

LABEL_20:
    v2 = sub_26C00909C();
    v6 = v17;
    sub_26BE00258(v13, v14);
    v12 = sub_26BEEBD8C(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = *(v12 + 2);
    v15 = *(v12 + 3);
    v13 = v14 + 1;
    if (v14 < v15 >> 1)
    {
LABEL_21:
      *(v12 + 2) = v13;
      v18 = &v12[24 * v14];
      *(v18 + 16) = -4095;
      *(v18 + 5) = v2;
      *(v18 + 6) = v6;
      return v12;
    }

LABEL_24:
    v12 = sub_26BEEBD8C((v15 > 1), v13, 1, v12);
    goto LABEL_21;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26BE1CEB8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BE1CEDC, 0, 0);
}

uint64_t sub_26BE1CEDC()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_26BE2BAE8(v2, v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_26BE1CFA4;
  v4 = v0[4];

  return (sub_26BEACBE4)(v4);
}

uint64_t sub_26BE1CFA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  sub_26BE132D4(*(v4 + 16), *(v4 + 24));
  v7 = *(v5 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_26BE1D0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[49] = a3;
  v4[50] = a4;
  v4[47] = a1;
  v4[48] = a2;
  sub_26C00A4EC();
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE1D178, 0, 0);
}

uint64_t sub_26BE1D178()
{
  v65 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  *(v0 + 416) = __swift_project_value_buffer(v1, qword_280478E70);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v60 = v5;
    *v4 = 136315138;
    v6 = sub_26BE16A38();
    v8 = sub_26BE29740(v6, v7, &v60);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: creating group", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  sub_26BE1C10C();
  v9 = *(v0 + 400);
  v10 = *(v0 + 384);
  swift_beginAccess();
  v11 = *(v10 + 72);
  v13 = *(v10 + 80);
  v12 = *(v10 + 88);
  v14 = *(v10 + 96);
  v59 = *(v10 + 104);
  *(v0 + 424) = v59;
  if (v9 >> 60 == 15)
  {
    LOBYTE(v60) = v11;
    v61 = v13;
    v62 = v12;
    v63 = v14;
    v64 = v59;
    v15 = v12;

    v16 = MLS.Cryptography.Ciphersuite.generateRandomGroupID()();
    v18 = v17;
    v54 = v14;
    v55 = v15;
    v56 = v13;
    v57 = v11;
    v20 = *(v0 + 392);
    v19 = *(v0 + 400);
  }

  else
  {
    v54 = v14;
    v55 = v12;
    v56 = v13;
    v57 = v11;
    v20 = *(v0 + 392);
    v19 = *(v0 + 400);

    v16 = v20;
    v18 = v19;
  }

  *(v0 + 432) = v16;
  *(v0 + 440) = v18;

  sub_26BE2BAE8(v20, v19);
  sub_26BE00608(v16, v18);
  v21 = sub_26C009A3C();
  v22 = sub_26C00AA1C();

  sub_26BE00258(v16, v18);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v60 = v53;
    *v23 = 136315394;
    v24 = sub_26BE16A38();
    v26 = sub_26BE29740(v24, v25, &v60);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    *(v0 + 368) = sub_26BF87240(v16, v18);
    v27 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
    v28 = sub_26C00A3EC();
    v30 = v29;

    v31 = sub_26BE29740(v28, v30, &v60);
    v18 = v27;

    *(v23 + 14) = v31;
    _os_log_impl(&dword_26BDFE000, v21, v22, "%s: generated group ID: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v53, -1, -1);
    MEMORY[0x26D69A4E0](v23, -1, -1);
  }

  sub_26C00A4CC();
  sub_26C00A4AC();
  if (v32)
  {

    sub_26BE16230((v0 + 16));
    sub_26BE16490(&v60);
    v47 = v18;
    v48 = v60;
    v49 = v61;
    *(v0 + 448) = v60;
    *(v0 + 456) = v49;
    *(v0 + 240) = v57;
    *(v0 + 248) = v56;
    *(v0 + 256) = v55;
    *(v0 + 264) = v54;
    *(v0 + 272) = v59;
    *(v0 + 328) = v48;
    *(v0 + 336) = v49;

    sub_26BE04890(v48, v49);
    LOBYTE(v60) = 1;
    v50 = sub_26BE1CB94(0x100000000);
    type metadata accessor for MLS.Group.PureSwiftGroup(0);
    swift_allocObject();

    sub_26BE00608(v16, v47);
    v51 = swift_task_alloc();
    *(v0 + 464) = v51;
    *v51 = v0;
    v51[1] = sub_26BE1D970;
    v52 = *(v0 + 384);

    return sub_26BF3EDD8(v52, v16, v47, v0 + 240, (v0 + 328), v50);
  }

  else
  {

    sub_26BE00608(v16, v18);
    v33 = sub_26C009A3C();
    v34 = sub_26C00AA0C();

    sub_26BE00258(v16, v18);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = v58;
      *v35 = 136315394;
      v36 = sub_26BE16A38();
      v38 = v16;
      v39 = sub_26BE29740(v36, v37, &v60);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      *(v0 + 344) = sub_26BF87240(v38, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
      v40 = sub_26C00A3EC();
      v42 = v41;
      v16 = v38;

      v43 = sub_26BE29740(v40, v42, &v60);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_26BDFE000, v33, v34, "%s: requested group ID (hex: %s) was not UTF-8 decodable", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v58, -1, -1);
      MEMORY[0x26D69A4E0](v35, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v44 = 46;
    v44[112] = 0;
    swift_willThrow();
    sub_26BE00258(v16, v18);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_26BE1D970(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v4 = sub_26BE1DE10;
  }

  else
  {
    v4 = sub_26BE1DA84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE1DA84()
{
  v27 = v0;
  v1 = (v0 + 2);
  if (sub_26BF32868(v0[54], v0[55], v0[14]))
  {
    v3 = v0[54];
    v2 = v0[55];
    sub_26BE00608(v3, v2);
    v4 = sub_26C009A3C();
    v5 = sub_26C00AA0C();
    sub_26BE00258(v3, v2);
    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[54];
      v6 = v0[55];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26[0] = v9;
      *v8 = 136315138;
      v0[45] = sub_26BF87240(v7, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      v1 = (v0 + 2);
      sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
      v10 = sub_26C00A3EC();
      v12 = v11;

      v13 = sub_26BE29740(v10, v12, v26);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_26BDFE000, v4, v5, "Tried to create group with ID %s that already exists", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D69A4E0](v9, -1, -1);
      MEMORY[0x26D69A4E0](v8, -1, -1);
    }

    v15 = v0[56];
    v14 = v0[57];
    v17 = v0[54];
    v16 = v0[55];
    sub_26BE01654();
    swift_allocError();
    *v18 = 38;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 72) = 0u;
    *(v18 + 88) = 0u;
    *(v18 + 104) = 0;
    *(v18 + 112) = 23;
    swift_willThrow();

    sub_26BE00258(v17, v16);
    sub_26BE0489C(v15, v14);
    sub_26BE2BA24(v1);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v22 = v0[54];
    v21 = v0[55];
    v23 = v0[48];
    sub_26BE00608(v22, v21);
    sub_26BF7532C(v26, v22, v21);
    sub_26BE00258(v26[0], v26[1]);
    sub_26BE2B9C8((v0 + 2), (v0 + 16));
    v24 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
    swift_beginAccess();
    sub_26BE2BA78((v0 + 16), v23 + v24);
    swift_endAccess();
    v25 = swift_task_alloc();
    v0[61] = v25;
    *v25 = v0;
    v25[1] = sub_26BE1DEAC;

    return sub_26BE18958();
  }
}

uint64_t sub_26BE1DE10()
{
  v1 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v3 = v0[55];

  sub_26BE00258(v4, v3);
  sub_26BE0489C(v1, v2);
  sub_26BE2BA24((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE1DEAC()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_26BE1E278;
  }

  else
  {
    v2 = sub_26BE1DFC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE1DFC0()
{
  v28 = v0;
  v2 = v0[54];
  v1 = v0[55];

  sub_26BE00608(v2, v1);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  sub_26BE00258(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[54];
    v5 = v0[55];
    v24 = v5;
    v25 = v0[56];
    v26 = v0[57];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27[0] = v8;
    *v7 = 136315394;
    v9 = sub_26BE16A38();
    v11 = sub_26BE29740(v9, v10, v27);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v0[44] = sub_26BF87240(v6, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
    v12 = sub_26C00A3EC();
    v14 = v13;

    v15 = sub_26BE29740(v12, v14, v27);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s created group %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);

    sub_26BE0489C(v25, v26);

    sub_26BE00258(v6, v24);
  }

  else
  {
    v17 = v0[56];
    v16 = v0[57];
    v19 = v0[54];
    v18 = v0[55];

    sub_26BE00258(v19, v18);
    sub_26BE0489C(v17, v16);
  }

  v20 = v0[59];
  v21 = v0[47];
  sub_26BE2BA24((v0 + 2));
  *v21 = v20;

  v22 = v0[1];

  return v22();
}

uint64_t sub_26BE1E278()
{
  v1 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v3 = v0[55];

  sub_26BE00258(v4, v3);
  sub_26BE0489C(v1, v2);
  sub_26BE2BA24((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE1E328(_OWORD *a1, _OWORD *a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = *a1;
  *(v3 + 40) = *a2;
  return MEMORY[0x2822009F8](sub_26BE1E358, 0, 0);
}

uint64_t sub_26BE1E358()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  sub_26BE00608(v4, v3);
  sub_26BE2BAE8(v1, v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_26BE1E43C;
  v6 = v0[2];

  return (sub_26BEAD328)(v6);
}

uint64_t sub_26BE1E43C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  v6 = v4[4];
  v7 = v4[3];
  sub_26BE132D4(v4[5], v4[6]);
  sub_26BE00258(v7, v6);
  v9 = v5[1];
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_26BE1E5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[179] = a6;
  v6[178] = a5;
  v6[177] = a4;
  v6[176] = a3;
  v6[175] = a2;
  v6[174] = a1;
  v6[180] = type metadata accessor for MLS.GroupState(0);
  v6[181] = swift_task_alloc();
  v6[182] = swift_task_alloc();
  v6[183] = swift_task_alloc();
  v6[184] = swift_task_alloc();
  v6[185] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE1E6BC, 0, 0);
}

uint64_t sub_26BE1E6BC()
{
  v122 = v0;
  v121 = *MEMORY[0x277D85DE8];
  sub_26BE1C10C();
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1416);
  v2 = *(v0 + 1408);
  v3 = sub_26C009A5C();
  *(v0 + 1488) = __swift_project_value_buffer(v3, qword_280478E70);
  sub_26BE00608(v2, v1);
  sub_26BE00608(v2, v1);

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1416);
  if (!v6)
  {
    v16 = *(v0 + 1408);
    sub_26BE00258(v16, *(v0 + 1416));
    sub_26BE00258(v16, v7);
    goto LABEL_16;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  *&v119 = v9;
  *v8 = 136315394;
  v10 = sub_26BE16A38();
  v12 = sub_26BE29740(v10, v11, &v119);

  *(v8 + 4) = v12;
  *(v8 + 12) = 2048;
  v13 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v13 != 2)
    {
      sub_26BE00258(*(v0 + 1408), *(v0 + 1416));
      v15 = 0;
      goto LABEL_15;
    }

    v17 = *(v0 + 1408);
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    sub_26BE00258(v17, *(v0 + 1416));
    v15 = v18 - v19;
    if (!__OFSUB__(v18, v19))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v20 = *(v0 + 1408);
    sub_26BE00258(v20, *(v0 + 1416));
    LODWORD(v15) = HIDWORD(v20) - v20;
    if (__OFSUB__(HIDWORD(v20), v20))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
    }

    v15 = v15;
    goto LABEL_15;
  }

  if (v13)
  {
    goto LABEL_12;
  }

  v14 = *(v0 + 1416);
  sub_26BE00258(*(v0 + 1408), v14);
  v15 = BYTE6(v14);
LABEL_15:
  v21 = *(v0 + 1416);
  v22 = *(v0 + 1408);
  *(v8 + 14) = v15;
  sub_26BE00258(v22, v21);
  _os_log_impl(&dword_26BDFE000, v4, v5, "%s: Joining group using Welcome (length: %ld)", v8, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v9);
  MEMORY[0x26D69A4E0](v9, -1, -1);
  MEMORY[0x26D69A4E0](v8, -1, -1);
LABEL_16:

  v23 = *(v0 + 1400);
  v24 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v25 = *(v23 + v24);
  if (v25 == 2)
  {
    *(v0 + 1232) = &type metadata for SwiftMLSFeatureFlags;
    *(v0 + 1240) = sub_26BE295D8();
    *(v0 + 1208) = 0;
    v26 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 1208));
    if ((v26 & 1) == 0)
    {
LABEL_18:
      sub_26BE01654();
      swift_allocError();
      strcpy(v27, "Shim is gone!");
      *(v27 + 7) = -4864;
      v27[112] = 2;
      swift_willThrow();
LABEL_38:

      v59 = *(v0 + 8);

      return v59();
    }
  }

  else if ((v25 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_26BE16230((v0 + 936));
  sub_26BE16490(&v119);
  v28 = *(v0 + 1432);
  v29 = *(&v119 + 1);
  v30 = v119;
  *(v0 + 1496) = v119;
  *(v0 + 1504) = v29;
  if (v28 >> 60 == 15)
  {
    v31 = 0;
LABEL_22:
    v32 = *(v0 + 1480);
    v119 = *(v0 + 1408);
    v116 = v31;
    MLS.ClientState.joinGroup(welcome:ratchetTree:)(&v119, &v116, v32);
    v39 = *(v0 + 1480);

    v40 = sub_26BF32868(*(v39 + 8), *(v39 + 16), *(v0 + 1032));
    *(v0 + 810) = v40 & 1;
    if (v40)
    {
      sub_26BE2E12C(*(v0 + 1480), *(v0 + 1472));
      v41 = sub_26C009A3C();
      v42 = sub_26C00AA1C();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 1472);
      if (v43)
      {
        v114 = v42;
        v45 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *&v119 = v113;
        *v45 = 136315138;
        *(v0 + 1376) = sub_26BF87240(*(v44 + 8), *(v44 + 16));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
        sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
        v46 = sub_26C00A3EC();
        v48 = v47;

        sub_26BE2E190(v44, type metadata accessor for MLS.GroupState);
        v49 = sub_26BE29740(v46, v48, &v119);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_26BDFE000, v41, v114, "Trying to join group with ID %s that already exists; checking for era advancement", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v113);
        MEMORY[0x26D69A4E0](v113, -1, -1);
        MEMORY[0x26D69A4E0](v45, -1, -1);
      }

      else
      {

        sub_26BE2E190(v44, type metadata accessor for MLS.GroupState);
      }

      v71 = *(v39 + 8);
      v70 = *(v39 + 16);
      v72 = swift_task_alloc();
      *(v0 + 1512) = v72;
      *v72 = v0;
      v72[1] = sub_26BE1F44C;
      v73 = *(v0 + 1480);

      return sub_26BE20928(v71, v70, v73);
    }

    else
    {
      v61 = *(v0 + 1504);
      v62 = *(v0 + 1496);
      v63 = *(v0 + 1480);
      v64 = *(v0 + 1448);
      *(v0 + 1296) = v62;
      *(v0 + 1304) = v61;
      sub_26BE2E12C(v63, v64);
      type metadata accessor for MLS.Group.PureSwiftGroup(0);
      swift_allocObject();

      sub_26BE04890(v62, v61);
      v65 = swift_task_alloc();
      *(v0 + 1544) = v65;
      *v65 = v0;
      v65[1] = sub_26BE1FC30;
      v66 = *(v0 + 1448);
      v67 = *(v0 + 1400);

      return sub_26BF3DD04(v67, (v0 + 1296), v66);
    }
  }

  v33 = 0;
  v34 = (v0 + 1424);
  v35 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v35 != 2)
    {
      goto LABEL_29;
    }

    v36 = *v34;
    v33 = *(*v34 + 16);
  }

  else
  {
    if (!v35)
    {
      goto LABEL_29;
    }

    v36 = *v34;
    v33 = *v34;
  }

  sub_26BE00608(v36, v28);
  v28 = *(v0 + 1432);
LABEL_29:
  v116 = *v34;
  v117 = v28;
  v118 = v33;
  sub_26BE00608(v116, v28);
  sub_26BE00608(v116, v28);
  sub_26BF30764(&v116, &v119);
  if (BYTE8(v119))
  {
    sub_26BE00258(v116, v117);
    v50 = *(v0 + 1432);
    v51 = v50;
    v52 = (v0 + 1424);
LABEL_36:
    v53 = *v34;
    sub_26BE00258(*v52, v51);
    v116 = v53;
    v117 = v50;
    sub_26BE01600();
    swift_allocError();
    *v54 = 1;
    v38 = v116;
    v37 = v117;
LABEL_37:
    v55 = *(v0 + 1432);
    v56 = *(v0 + 1424);
    swift_willThrow();
    *(v0 + 1384) = &type metadata for MLS.RatchetTree;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C0, &unk_26C011290);
    v57 = sub_26C00A4FC();
    sub_26BE826C4(v57, v58, v56, v55);

    swift_willThrow();
    sub_26BE0489C(v30, v29);
    sub_26BE00258(v38, v37);
    sub_26BE2BA24(v0 + 936);
    goto LABEL_38;
  }

  v68 = v119;
  sub_26BE00258(*(v0 + 1424), *(v0 + 1432));
  if (v68 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v69 = 5;
    swift_willThrow();
LABEL_30:
    v37 = *(v0 + 1432);
    v38 = *(v0 + 1424);
    sub_26BE00258(v116, v117);
    goto LABEL_37;
  }

  result = sub_26BF2A44C(v68);
  if (v74 >> 60 == 15)
  {
    v51 = v117;
    v50 = *(v0 + 1432);
    v52 = &v116;
    goto LABEL_36;
  }

  v115 = v29;
  v76 = (v0 + 152);
  v112 = (v0 + 424);
  v31 = MEMORY[0x277D84F90];
  v111 = (v0 + 560);
  *&v119 = result;
  *(&v119 + 1) = v74;
  while (1)
  {
    v77 = v74 >> 62;
    if ((v74 >> 62) > 1)
    {
      if (v77 == 2)
      {
        v78 = *(result + 24);
      }

      else
      {
        v78 = 0;
      }
    }

    else if (v77)
    {
      v78 = result >> 32;
    }

    else
    {
      v78 = BYTE6(v74);
    }

    v79 = __OFSUB__(v78, v75);
    v80 = v78 - v75;
    if (v79)
    {
      goto LABEL_98;
    }

    if (v80 < 1)
    {
      break;
    }

    *(v0 + 809) = 0;
    v81 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      goto LABEL_99;
    }

    if (v77 <= 1)
    {
      if (v77)
      {
        v82 = result >> 32;
      }

      else
      {
        v82 = BYTE6(v74);
      }

LABEL_69:
      if (v82 < v81)
      {
        goto LABEL_86;
      }

      goto LABEL_72;
    }

    if (v77 == 2)
    {
      v82 = *(result + 24);
      goto LABEL_69;
    }

    if (v81 > 0)
    {
LABEL_86:
      v106 = 1;
      goto LABEL_90;
    }

LABEL_72:
    *(v0 + 1328) = result;
    *(v0 + 1336) = v74;
    if (v81 < v75)
    {
      goto LABEL_100;
    }

    *(v0 + 1344) = v75;
    *(v0 + 1352) = v81;
    sub_26BE00608(result, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290, MEMORY[0x277D83D30]);
    sub_26C008E1C();
    sub_26BE00258(*(v0 + 1328), *(v0 + 1336));
    v83 = *(v0 + 809);
    v120 = v81;
    if (v83)
    {
      if (v83 != 1)
      {
        v106 = 5;
LABEL_90:
        sub_26BE01600();
        swift_allocError();
        *v107 = v106;
        swift_willThrow();
LABEL_96:

        sub_26BE00258(v119, *(&v119 + 1));
        v29 = v115;
        goto LABEL_30;
      }

      sub_26BE13AA4(v0 + 16);
      nullsub_1();
    }

    else
    {
      sub_26BE2E2B8(v111);
      v84 = *(v0 + 672);
      *(v0 + 112) = *(v0 + 656);
      *(v0 + 128) = v84;
      *(v0 + 144) = *(v0 + 688);
      v85 = *(v0 + 608);
      *(v0 + 48) = *(v0 + 592);
      *(v0 + 64) = v85;
      v86 = *(v0 + 640);
      *(v0 + 80) = *(v0 + 624);
      *(v0 + 96) = v86;
      v87 = *(v0 + 576);
      *(v0 + 16) = *v111;
      *(v0 + 32) = v87;
    }

    v88 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v88;
    *(v0 + 280) = *(v0 + 144);
    v89 = *(v0 + 64);
    *(v0 + 184) = *(v0 + 48);
    *(v0 + 200) = v89;
    v90 = *(v0 + 96);
    *(v0 + 216) = *(v0 + 80);
    *(v0 + 232) = v90;
    v91 = *(v0 + 32);
    *v76 = *(v0 + 16);
    *(v0 + 168) = v91;
    sub_26BE2E1F0(v0 + 152, v0 + 288, &qword_28045E4C8, &unk_26C0112A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_26BEEB900(0, v31[2] + 1, 1, v31);
    }

    v93 = v31[2];
    v92 = v31[3];
    if (v93 >= v92 >> 1)
    {
      v31 = sub_26BEEB900((v92 > 1), v93 + 1, 1, v31);
    }

    v94 = *(v0 + 128);
    *(v0 + 520) = *(v0 + 112);
    *(v0 + 536) = v94;
    *(v0 + 552) = *(v0 + 144);
    v95 = *(v0 + 64);
    *(v0 + 456) = *(v0 + 48);
    *(v0 + 472) = v95;
    v96 = *(v0 + 96);
    *(v0 + 488) = *(v0 + 80);
    *(v0 + 504) = v96;
    v97 = *(v0 + 32);
    *v112 = *(v0 + 16);
    *(v0 + 440) = v97;
    sub_26BE2E258(v112, &qword_28045E4C8, &unk_26C0112A0);
    v31[2] = v93 + 1;
    v98 = &v31[17 * v93];
    *(v98 + 2) = *v76;
    v99 = *(v0 + 216);
    v101 = *(v0 + 168);
    v100 = *(v0 + 184);
    *(v98 + 5) = *(v0 + 200);
    *(v98 + 6) = v99;
    *(v98 + 3) = v101;
    *(v98 + 4) = v100;
    v103 = *(v0 + 248);
    v102 = *(v0 + 264);
    v104 = *(v0 + 232);
    v98[20] = *(v0 + 280);
    *(v98 + 8) = v103;
    *(v98 + 9) = v102;
    *(v98 + 7) = v104;
    v74 = *(&v119 + 1);
    result = v119;
    v75 = v120;
  }

  if (v77 > 1)
  {
    if (v77 == 2)
    {
      v105 = *(result + 24);
    }

    else
    {
      v105 = 0;
    }
  }

  else if (v77)
  {
    v105 = result >> 32;
  }

  else
  {
    v105 = BYTE6(v74);
  }

  if (!__OFSUB__(v105, v75))
  {
    if (v105 == v75)
    {
      v108 = *(v0 + 1432);
      v109 = *(v0 + 1424);
      sub_26BE00258(result, v74);
      sub_26BE00258(v109, v108);
      sub_26BE00258(v116, v117);
      goto LABEL_22;
    }

    sub_26BE01654();
    swift_allocError();
    *v110 = 0;
    v110[112] = 1;
    swift_willThrow();
    goto LABEL_96;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BE1F44C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1520) = a1;
  *(v3 + 1528) = v1;

  if (v1)
  {
    v4 = sub_26BE2074C;
  }

  else
  {
    v4 = sub_26BE1F590;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE1F590()
{
  v46 = v0;
  v45[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1520);
  if (v1)
  {

    v2 = sub_26C009A3C();
    v3 = sub_26C00AA1C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v45[0] = v5;
      *v4 = 136315138;
      v6 = sub_26BE16A38();
      v8 = sub_26BE29740(v6, v7, v45);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_26BDFE000, v2, v3, "%s: successfully advanced era", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x26D69A4E0](v5, -1, -1);
      MEMORY[0x26D69A4E0](v4, -1, -1);
    }

    *(v0 + 1536) = v1;
    v9 = *(v0 + 1504);
    v10 = *(v0 + 1496);
    v11 = *(v0 + 1480);
    v12 = *(v0 + 1448);
    *(v0 + 1296) = v10;
    *(v0 + 1304) = v9;
    sub_26BE2E12C(v11, v12);
    type metadata accessor for MLS.Group.PureSwiftGroup(0);
    swift_allocObject();

    sub_26BE04890(v10, v9);
    v13 = swift_task_alloc();
    *(v0 + 1544) = v13;
    *v13 = v0;
    v13[1] = sub_26BE1FC30;
    v14 = *(v0 + 1448);
    v15 = *(v0 + 1400);

    return sub_26BF3DD04(v15, (v0 + 1296), v14);
  }

  v17 = *(v0 + 1480);
  v18 = *(v0 + 1456);
  sub_26BE2E12C(v17, *(v0 + 1464));
  sub_26BE2E12C(v17, v18);
  v19 = sub_26C009A3C();
  v20 = sub_26C00AA0C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 1528);
    v22 = *(v0 + 1464);
    v42 = *(v0 + 1440);
    v43 = *(v0 + 1456);
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45[0] = v44;
    *v23 = 136315394;
    *(v0 + 1368) = sub_26BF87240(*(v22 + 8), *(v22 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
    v24 = sub_26C00A3EC();
    v26 = v25;

    sub_26BE2E190(v22, type metadata accessor for MLS.GroupState);
    v27 = sub_26BE29740(v24, v26, v45);

    *(v23 + 4) = v27;
    *(v23 + 12) = 1024;
    v28 = sub_26BE81FE0(*(v43 + *(v42 + 40)));
    if (v21)
    {
    }

    else
    {
      v30 = v28;
      if ((v28 & 0x100000000) == 0)
      {
LABEL_13:
        sub_26BE2E190(*(v0 + 1456), type metadata accessor for MLS.GroupState);
        *(v23 + 14) = v30;
        _os_log_impl(&dword_26BDFE000, v19, v20, "Tried to join group with ID %s that already exists, without advancing the era (currently %u)", v23, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x26D69A4E0](v44, -1, -1);
        MEMORY[0x26D69A4E0](v23, -1, -1);

        goto LABEL_14;
      }
    }

    v30 = sub_26BE4126C();
    goto LABEL_13;
  }

  v29 = *(v0 + 1464);
  sub_26BE2E190(*(v0 + 1456), type metadata accessor for MLS.GroupState);

  sub_26BE2E190(v29, type metadata accessor for MLS.GroupState);
LABEL_14:
  v31 = *(v0 + 1504);
  v32 = *(v0 + 1496);
  v33 = *(v0 + 1480);
  *(v0 + 696) = 39;
  *(v0 + 704) = 0u;
  *(v0 + 720) = 0u;
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0u;
  *(v0 + 768) = 0u;
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0;
  *(v0 + 808) = 23;
  v34 = sub_26C00A45C();
  sub_26BE2DC18(v0 + 696, v0 + 816);
  v35 = swift_allocObject();
  v36 = *(v0 + 896);
  *(v35 + 88) = *(v0 + 880);
  *(v35 + 104) = v36;
  *(v35 + 120) = *(v0 + 912);
  v37 = *(v0 + 832);
  *(v35 + 24) = *(v0 + 816);
  *(v35 + 40) = v37;
  v38 = *(v0 + 864);
  *(v35 + 56) = *(v0 + 848);
  *(v35 + 16) = 1;
  *(v35 + 136) = *(v0 + 928);
  *(v35 + 72) = v38;
  *(v0 + 1192) = sub_26BE2E3DC;
  *(v0 + 1200) = v35;
  *(v0 + 1160) = MEMORY[0x277D85DD0];
  *(v0 + 1168) = 1107296256;
  *(v0 + 1176) = sub_26BEB8234;
  *(v0 + 1184) = &block_descriptor_225;
  v39 = _Block_copy((v0 + 1160));

  AnalyticsSendEventLazy();
  _Block_release(v39);

  sub_26BE7C9B8(2u, 0);
  sub_26BE2DC9C(v0 + 696);
  sub_26BE01654();
  swift_allocError();
  *v40 = 39;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  *(v40 + 40) = 0u;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 0u;
  *(v40 + 104) = 0;
  *(v40 + 112) = 23;
  swift_willThrow();
  sub_26BE0489C(v32, v31);
  sub_26BE2E190(v33, type metadata accessor for MLS.GroupState);
  sub_26BE2BA24(v0 + 936);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_26BE1FC30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1552) = a1;
  *(v3 + 1560) = v1;

  if (v1)
  {
    v4 = sub_26BE1FF08;
  }

  else
  {
    v4 = sub_26BE1FD74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE1FD74()
{
  v12 = v0;
  v11[2] = *MEMORY[0x277D85DE8];
  if (*(v0 + 810) == 1)
  {
  }

  v1 = *(v0 + 1552);
  v2 = *(v0 + 1504);
  v3 = *(v0 + 1496);
  v4 = *(v0 + 1480);
  v5 = *(v0 + 1400);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  sub_26BE00608(v6, v7);
  sub_26BF7532C(v11, v6, v7);
  sub_26BE0489C(v3, v2);
  sub_26BE00258(v11[0], v11[1]);
  sub_26BE2B9C8(v0 + 936, v0 + 1048);
  v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
  swift_beginAccess();
  sub_26BE2BA78(v0 + 1048, v5 + v8);
  swift_endAccess();
  sub_26BE2E190(v4, type metadata accessor for MLS.GroupState);
  sub_26BE2BA24(v0 + 936);
  v9 = swift_task_alloc();
  *(v0 + 1568) = v9;
  *v9 = v0;
  v9[1] = sub_26BE20020;

  return sub_26BE18958();
}

uint64_t sub_26BE1FF08()
{
  v1 = *(v0 + 810);
  v2 = *(v0 + 1480);
  sub_26BE0489C(*(v0 + 1496), *(v0 + 1504));
  sub_26BE2E190(v2, type metadata accessor for MLS.GroupState);
  sub_26BE2BA24(v0 + 936);
  if (v1 == 1)
  {
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26BE20020()
{
  *(*v1 + 1576) = v0;

  if (v0)
  {
    v2 = sub_26BE20850;
  }

  else
  {
    v2 = sub_26BE20160;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE20160()
{

  v1 = swift_task_alloc();
  *(v0 + 1584) = v1;
  *v1 = v0;
  v1[1] = sub_26BE2024C;
  v2 = *(v0 + 1552);

  return sub_26BE8FE74(v0 + 1312, v2, v2);
}

uint64_t sub_26BE2024C()
{
  *(*v1 + 1592) = v0;

  if (v0)
  {
    v2 = sub_26BE206C0;
  }

  else
  {
    v2 = sub_26BE2038C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE2038C()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = v0[164];
  v2 = v0[165];

  sub_26BE00608(v1, v2);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  sub_26BE00258(v1, v2);
  if (os_log_type_enabled(v3, v4))
  {
    v30 = v4;
    v5 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31[0] = v29;
    *v5 = 136315394;
    v6 = sub_26BE16A38();
    v8 = sub_26BE29740(v6, v7, v31);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v0[170] = sub_26BF87240(v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
    v9 = sub_26C00A3EC();
    v11 = v10;

    v12 = sub_26BE411D0(16, v9, v11);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x26D698FE0](v12, v14, v16, v18);
    v21 = v20;

    v22 = sub_26BE29740(v19, v21, v31);

    *(v5 + 14) = v22;
    _os_log_impl(&dword_26BDFE000, v3, v30, "%s joined group ID %s...", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v29, -1, -1);
    MEMORY[0x26D69A4E0](v5, -1, -1);
  }

  v23 = v2;
  v24 = v1;
  v25 = v0[194];
  v26 = v0[174];
  sub_26BE7C9B8(2u, 1);
  sub_26BE00258(v24, v23);

  *v26 = v25;

  v27 = v0[1];

  return v27();
}

uint64_t sub_26BE206C0()
{

  return swift_unexpectedError();
}

uint64_t sub_26BE2074C()
{
  v1 = v0[185];
  sub_26BE0489C(v0[187], v0[188]);
  sub_26BE2E190(v1, type metadata accessor for MLS.GroupState);
  sub_26BE2BA24((v0 + 117));

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BE20850()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE20928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_26BE2094C, 0, 0);
}

uint64_t sub_26BE2094C()
{
  v1 = v0[8];
  swift_beginAccess();
  if (*(v1 + 312) == 1)
  {
    v3 = v0[5];
    v2 = v0[6];
    type metadata accessor for MLS.Group.PureSwiftGroup(0);

    sub_26BE00608(v3, v2);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_26BE20B30;
    v5 = v0[8];
    v6 = v0[5];
    v7 = v0[6];

    return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v5, v6, v7);
  }

  else
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v9 = sub_26C009A5C();
    __swift_project_value_buffer(v9, qword_280478E70);
    v10 = sub_26C009A3C();
    v11 = sub_26C00AA0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26BDFE000, v10, v11, "Not configured to use eras, so skipping all processWelcomeForExistingGroup logic", v12, 2u);
      MEMORY[0x26D69A4E0](v12, -1, -1);
    }

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_26BE20B30(uint64_t a1)
{
  v3 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BE20C64, 0, 0);
  }
}

uint64_t sub_26BE20C64()
{
  v27 = v0;
  v1 = *(v0 + 80);
  if (!v1)
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = sub_26C009A5C();
    __swift_project_value_buffer(v9, qword_280478E70);
    sub_26BE00608(v8, v7);
    v10 = sub_26C009A3C();
    v11 = sub_26C00AA0C();
    sub_26BE00258(v8, v7);
    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 40);
      v12 = *(v0 + 48);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      v16 = sub_26BE832D4(v13, v12);
      v18 = sub_26BE29740(v16, v17, &v26);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_26BDFE000, v10, v11, "After receiving a Welcome for an existing group, did not find existing group state for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x26D69A4E0](v15, -1, -1);
      MEMORY[0x26D69A4E0](v14, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v19 = 49;
    v19[112] = 0;
    swift_willThrow();
    goto LABEL_19;
  }

  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v1 + 152);
  v5 = *(v3 + *(type metadata accessor for MLS.GroupState(0) + 40));

  v6 = sub_26BE81FE0(v5);
  if (v2)
  {

LABEL_10:
    LODWORD(v6) = sub_26BE4126C();
    goto LABEL_11;
  }

  if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  *(v0 + 176) = v6;
  if (v4 < v6)
  {
    v20 = swift_task_alloc();
    *(v0 + 96) = v20;
    *v20 = v0;
    v21 = sub_26BE20FC0;
LABEL_15:
    v20[1] = v21;
    v22 = *(v0 + 56);

    return sub_26BE21848(v1, v22);
  }

  if (v6 == v4)
  {
    v20 = swift_task_alloc();
    *(v0 + 136) = v20;
    *v20 = v0;
    v21 = sub_26BE21374;
    goto LABEL_15;
  }

  sub_26BE01654();
  swift_allocError();
  *v24 = 47;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 56) = 0u;
  *(v24 + 72) = 0u;
  *(v24 + 88) = 0u;
  *(v24 + 104) = 0;
  *(v24 + 112) = 23;
  swift_willThrow();

LABEL_19:
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_26BE20FC0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_26BE217E4;
  }

  else
  {
    v2 = sub_26BE210DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE210DC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_26BE211C8;

  return (sub_26BE1A434)();
}

uint64_t sub_26BE211C8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_26BE21310;
  }

  else
  {

    v2 = sub_26BE2E3E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE21310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE21374()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_26BE216B4;
  }

  else
  {
    v2 = sub_26BE21490;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE21490()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_26BE2156C;

  return sub_26BE1A434(sub_26BE1A434, &unk_26C00E218, v3);
}

uint64_t sub_26BE2156C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {

    v2 = sub_26BE21780;
  }

  else
  {

    v2 = sub_26BE21718;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE216B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE21718()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26BE21780()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE217E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE21848(uint64_t a1, uint64_t a2)
{
  v3[57] = a2;
  v3[58] = v2;
  v3[56] = a1;
  return MEMORY[0x2822009F8](sub_26BE2186C, 0, 0);
}

uint64_t sub_26BE2186C()
{

  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  *v1 = v0;
  v1[1] = sub_26BE21920;
  v2 = *(v0 + 448);

  return sub_26BE8EC78(v2, v2);
}

uint64_t sub_26BE21920(uint64_t a1)
{
  v3 = *v2;
  v3[60] = a1;
  v3[61] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BE21A54, 0, 0);
  }
}

uint64_t sub_26BE21A54()
{
  v107 = v0;
  v1 = *(v0 + 480);
  v2 = *(v1 + 16);
  if (!v2)
  {

    v5 = MEMORY[0x277D84F90];
LABEL_22:
    v18 = *(v0 + 488);
    v19 = *(v0 + 456);
    v20 = *(v19 + 40);
    v21 = *(v19 + 48);
    v22 = *(v19 + 56);
    v23 = *(v19 + 32);
    v24 = swift_task_alloc();
    *(v24 + 16) = v19;
    v25 = sub_26BFEB264(sub_26BE2DB4C, v24, v23, v20, v21, v22);
    if (v18)
    {

LABEL_77:
      v46 = *(v0 + 8);
      goto LABEL_78;
    }

    v26 = v25;

    v27 = *(v26 + 2);
    if (v27)
    {
      v106 = MEMORY[0x277D84F90];
      v98 = v26;
      sub_26BECB994(0, v27, 0);
      v28 = v26;
      v29 = 0;
      v1 = v106;
      v30 = (v26 + 32);
      v102 = v27;
      while (1)
      {
        if (v29 >= *(v28 + 2))
        {
          goto LABEL_83;
        }

        sub_26BE2DB68(v30, v0 + 312);
        if ((*(v0 + 327) & 0x20) != 0)
        {
          v33 = *(v0 + 312);
          if ((v33 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x26D6996F0](0);
          }

          else
          {
            if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v34 = *(v33 + 32);
          }

          v35 = v34;
          result = SecCertificateCopyURIs();
          if (!result)
          {
            goto LABEL_87;
          }

          v36 = result;

          *(v0 + 432) = v36;
          type metadata accessor for CFArray(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
          if (!swift_dynamicCast())
          {
            v31 = 0;
            v32 = 0;
            v28 = v98;
            goto LABEL_38;
          }

          v37 = *(v0 + 440);
          v28 = v98;
          if (v37)
          {
            if (v37[2])
            {
              v31 = v37[4];
              v32 = v37[5];

              v28 = v98;

              goto LABEL_38;
            }
          }
        }

        v31 = 0;
        v32 = 0;
LABEL_38:
        sub_26BE2DBC4(v0 + 312);
        v106 = v1;
        v39 = *(v1 + 16);
        v38 = *(v1 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_26BECB994((v38 > 1), v39 + 1, 1);
          v28 = v98;
          v1 = v106;
        }

        ++v29;
        *(v1 + 16) = v39 + 1;
        v40 = v1 + 16 * v39;
        *(v40 + 32) = v31;
        *(v40 + 40) = v32;
        v30 += 56;
        if (v102 == v29)
        {

          goto LABEL_45;
        }
      }
    }

    v1 = MEMORY[0x277D84F90];
LABEL_45:

    v42 = sub_26BEC80A8(v41);

    v44 = sub_26BEC80A8(v43);

    v45 = sub_26BEC2018(v44, v42);

    if (v45)
    {

      v46 = *(v0 + 8);
LABEL_78:

      return v46();
    }

    if (qword_28045DF40 == -1)
    {
LABEL_48:
      v47 = sub_26C009A5C();
      __swift_project_value_buffer(v47, qword_280478E70);

      v48 = sub_26C009A3C();
      v49 = sub_26C00AA0C();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v106 = v103;
        *v50 = 136315138;

        v51 = sub_26BE3D034();
        v53 = v52;

        v54 = sub_26BE29740(v51, v53, &v106);

        *(v50 + 4) = v54;
        _os_log_impl(&dword_26BDFE000, v48, v49, "%s: New group contains members that were not in the existing state", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x26D69A4E0](v103, -1, -1);
        MEMORY[0x26D69A4E0](v50, -1, -1);
      }

      v55 = (v0 + 368);

      v56 = sub_26C009A3C();
      v57 = sub_26C00AA0C();

      v104 = v1;
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v105 = v94;
        v59 = &unk_26C00D000;
        buf = v58;
        *v58 = 136315138;
        v60 = *(v5 + 16);
        if (v60)
        {
          v92 = v57;
          v93 = v56;
          v106 = MEMORY[0x277D84F90];
          sub_26BECB834(0, v60, 0);
          v61 = v106;
          v62 = (v5 + 40);
          do
          {
            if (*v62)
            {
              v63 = *(v62 - 1);
              v99 = *v62;
            }

            else
            {
              v99 = 0xE500000000000000;
              v63 = 0x3E6C696E3CLL;
            }

            v106 = v61;
            v65 = *(v61 + 16);
            v64 = *(v61 + 24);

            if (v65 >= v64 >> 1)
            {
              sub_26BECB834((v64 > 1), v65 + 1, 1);
              v61 = v106;
            }

            *(v61 + 16) = v65 + 1;
            v66 = v61 + 16 * v65;
            v1 = v104;
            *(v66 + 32) = v63;
            *(v66 + 40) = v99;
            v62 += 2;
            --v60;
          }

          while (v60);

          v55 = (v0 + 368);
          v59 = &unk_26C00D000;
          v56 = v93;
          v57 = v92;
        }

        else
        {

          v61 = MEMORY[0x277D84F90];
        }

        v67 = MEMORY[0x26D6991B0](v61, MEMORY[0x277D837D0]);
        v69 = v68;

        v70 = sub_26BE29740(v67, v69, &v105);

        *(buf + 4) = v70;
        _os_log_impl(&dword_26BDFE000, v56, v57, "Existing members: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v94);
        MEMORY[0x26D69A4E0](v94, -1, -1);
        MEMORY[0x26D69A4E0](buf, -1, -1);
      }

      else
      {

        v59 = &unk_26C00D000;
      }

      v71 = sub_26C009A3C();
      v72 = sub_26C00AA0C();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v75 = v74;
        v105 = v74;
        *v73 = v59[338];
        v76 = *(v1 + 16);
        if (v76)
        {
          v95 = v74;
          v97 = v72;
          v100 = v71;
          v106 = MEMORY[0x277D84F90];
          sub_26BECB834(0, v76, 0);
          v77 = v106;
          v78 = (v1 + 40);
          do
          {
            if (*v78)
            {
              v79 = *(v78 - 1);
              v80 = *v78;
            }

            else
            {
              v80 = 0xE500000000000000;
              v79 = 0x3E6C696E3CLL;
            }

            v106 = v77;
            v81 = *(v77 + 16);
            v82 = *(v77 + 24);

            if (v81 >= v82 >> 1)
            {
              sub_26BECB834((v82 > 1), v81 + 1, 1);
              v77 = v106;
            }

            *(v77 + 16) = v81 + 1;
            v83 = v77 + 16 * v81;
            *(v83 + 32) = v79;
            *(v83 + 40) = v80;
            v78 += 2;
            --v76;
          }

          while (v76);

          v71 = v100;
          v72 = v97;
          v75 = v95;
        }

        else
        {

          v77 = MEMORY[0x277D84F90];
        }

        v84 = MEMORY[0x26D6991B0](v77, MEMORY[0x277D837D0]);
        v86 = v85;

        v87 = sub_26BE29740(v84, v86, &v105);

        *(v73 + 4) = v87;
        _os_log_impl(&dword_26BDFE000, v71, v72, "New members: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x26D69A4E0](v75, -1, -1);
        MEMORY[0x26D69A4E0](v73, -1, -1);
      }

      else
      {
      }

      *(v0 + 16) = 13;
      *(v0 + 128) = 9;
      v88 = sub_26C00A45C();
      sub_26BE2DC18(v0 + 16, v0 + 136);
      v89 = swift_allocObject();
      *(v89 + 16) = 1;
      *(v89 + 88) = *(v0 + 200);
      *(v89 + 104) = *(v0 + 216);
      *(v89 + 120) = *(v0 + 232);
      *(v89 + 136) = *(v0 + 248);
      *(v89 + 24) = *(v0 + 136);
      *(v89 + 40) = *(v0 + 152);
      *(v89 + 56) = *(v0 + 168);
      *(v89 + 72) = *(v0 + 184);
      *(v0 + 400) = sub_26BE2DC78;
      *(v0 + 408) = v89;
      *(v0 + 368) = MEMORY[0x277D85DD0];
      *(v0 + 376) = 1107296256;
      *(v0 + 384) = sub_26BEB8234;
      *(v0 + 392) = &block_descriptor;
      v90 = _Block_copy(v55);

      AnalyticsSendEventLazy();
      _Block_release(v90);

      sub_26BE7C9B8(2u, 0);
      sub_26BE2DC9C(v0 + 16);
      sub_26BE01654();
      swift_allocError();
      *v91 = 13;
      v91[112] = 9;
      swift_willThrow();
      goto LABEL_77;
    }

LABEL_85:
    swift_once();
    goto LABEL_48;
  }

  v106 = MEMORY[0x277D84F90];
  v101 = v2;
  sub_26BECB994(0, v2, 0);
  v3 = v101;
  v4 = 0;
  v5 = v106;
  v6 = v1 + 32;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    sub_26BE2DA9C(v6, v0 + 256);
    if ((*(v0 + 271) & 0x20) == 0)
    {
      goto LABEL_5;
    }

    v9 = *(v0 + 256);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D6996F0](0);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v10 = *(v9 + 32);
    }

    v11 = v10;
    result = SecCertificateCopyURIs();
    if (!result)
    {
      break;
    }

    v13 = result;

    *(v0 + 416) = v13;
    type metadata accessor for CFArray(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
    if (!swift_dynamicCast())
    {
      v7 = 0;
      v8 = 0;
      v3 = v101;
      goto LABEL_15;
    }

    v14 = *(v0 + 424);
    v3 = v101;
    if (v14)
    {
      if (v14[2])
      {
        v7 = v14[4];
        v8 = v14[5];

        v3 = v101;

        goto LABEL_15;
      }
    }

LABEL_5:
    v7 = 0;
    v8 = 0;
LABEL_15:
    sub_26BE2DAF8(v0 + 256);
    v106 = v5;
    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_26BECB994((v15 > 1), v16 + 1, 1);
      v3 = v101;
      v5 = v106;
    }

    ++v4;
    *(v5 + 16) = v16 + 1;
    v17 = v5 + 16 * v16;
    *(v17 + 32) = v7;
    *(v17 + 40) = v8;
    v6 += 56;
    if (v3 == v4)
    {

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_26BE225F4()
{
  v15 = v0;
  v1 = v0[19];
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    v0[5] = &type metadata for SwiftMLSFeatureFlags;
    v0[6] = sub_26BE295D8();
    *(v0 + 16) = 0;
    v4 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v3 & 1) == 0)
  {
LABEL_3:
    sub_26BE01654();
    swift_allocError();
    *v5 = 0xD00000000000002BLL;
    *(v5 + 8) = 0x800000026C02ACB0;
    *(v5 + 112) = 2;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  sub_26BE16230(v0 + 1);
  v8 = v0[14];
  v9 = *(v8 + 16);
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = sub_26BE328AC(*(v8 + 16), 0);
  v13 = sub_26BE336A0(&v14, v10 + 2, v9, v8);

  sub_26BE2DA4C();
  if (v13 != v9)
  {
    __break(1u);
LABEL_12:
    v10 = MEMORY[0x277D84F90];
  }

  v14 = v10;

  sub_26BE294CC(&v14);

  sub_26BE2BA24((v0 + 2));
  v11 = v14;
  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_26BE2285C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_26C00914C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-v13];
  sub_26BE00608(a3, a4);
  sub_26C00915C();
  sub_26BE00608(a1, a2);
  sub_26C00915C();
  sub_26BE2DA54(&qword_28045E498, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  while (1)
  {
    sub_26C00AADC();
    if (v26)
    {
      v18 = *(v9 + 8);
      v18(v14, v8);
      sub_26C00AADC();
      v18(v12, v8);
      v17 = v24 ^ 1;
      return v17 & 1;
    }

    v15 = v25;
    sub_26C00AADC();
    if (v23)
    {
      goto LABEL_6;
    }

    if (v15 < v22)
    {
      break;
    }

    if (v22 < v15)
    {
LABEL_6:
      v16 = *(v9 + 8);
      v16(v12, v8);
      v16(v14, v8);
      v17 = 0;
      return v17 & 1;
    }
  }

  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_26BE22B3C()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BE22BF0;
  v2 = *(v0 + 16);

  return sub_26BE90BC4(v2, v2);
}

uint64_t sub_26BE22BF0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_26BE22CF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BE22D14, 0, 0);
}

uint64_t sub_26BE22D14()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_26BE00608(v2, v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_26BE22DDC;
  v4 = v0[4];

  return (sub_26BEADD80)(v4);
}

uint64_t sub_26BE22DDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  sub_26BE00258(*(v4 + 16), *(v4 + 24));
  v7 = *(v5 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_26BE22F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_26BE22F40, 0, 0);
}

uint64_t sub_26BE22F40()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    v0[5] = &type metadata for SwiftMLSFeatureFlags;
    v4 = sub_26BE295D8();
    *(v0 + 16) = 0;
    v0[6] = v4;
    v5 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      *v6 = 0xD000000000000030;
      *(v6 + 8) = 0x800000026C02ADA0;
      *(v6 + 112) = 2;
      swift_willThrow();
      v7 = v0[1];

      return v7();
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = v0[12];
  v10 = v0[13];
  type metadata accessor for MLS.Group.PureSwiftGroup(0);

  sub_26BE00608(v9, v10);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_26BE23100;
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[11];

  return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v14, v12, v13);
}

uint64_t sub_26BE23100(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BE23234, 0, 0);
  }
}

uint64_t sub_26BE23234()
{
  if (*(v0 + 120))
  {

    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_26BE2330C;

    return sub_26BF3BBF0();
  }

  else
  {
    **(v0 + 80) = 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_26BE2330C(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_26BE239C4;
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    v5 = sub_26BE23438;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE23438()
{
  v20 = v0;
  if (*(v0 + 176))
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 96);
    v1 = *(v0 + 104);
    v3 = sub_26C009A5C();
    __swift_project_value_buffer(v3, qword_280478E70);

    sub_26BE00608(v2, v1);
    v4 = sub_26C009A3C();
    v5 = sub_26C00AA1C();

    sub_26BE00258(v2, v1);
    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 96);
      v6 = *(v0 + 104);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315394;
      v10 = sub_26BE16A38();
      v12 = sub_26BE29740(v10, v11, &v19);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = sub_26BE832D4(v7, v6);
      v15 = sub_26BE29740(v13, v14, &v19);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_26BDFE000, v4, v5, "%s: Deleting expired group %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v9, -1, -1);
      MEMORY[0x26D69A4E0](v8, -1, -1);
    }

    v16 = swift_task_alloc();
    *(v0 + 144) = v16;
    *v16 = v0;
    v16[1] = sub_26BE236C8;

    return sub_26BF3D100();
  }

  else
  {

    **(v0 + 80) = *(v0 + 120);
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_26BE236C8()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE23A2C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[20] = v3;
    *v3 = v2;
    v3[1] = sub_26BE2383C;
    v4 = v2[13];
    v5 = v2[12];

    return sub_26BE24038(v5, v4);
  }
}

uint64_t sub_26BE2383C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_26BE23A94;
  }

  else
  {

    v2 = sub_26BE23958;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE23958()
{

  **(v0 + 80) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE239C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE23A2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE23A94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE23AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BE23B20, 0, 0);
}

uint64_t sub_26BE23B20()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_26BE00608(v2, v1);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_26BE23BEC;
  v4 = v0[2];

  return (sub_26BE91308)(v4);
}

uint64_t sub_26BE23BEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BE23CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[88] = a4;
  v4[87] = a3;
  v4[86] = a2;
  v4[85] = a1;
  return MEMORY[0x2822009F8](sub_26BE23D0C, 0, 0);
}

uint64_t sub_26BE23D0C()
{
  v1 = *(v0 + 688);
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    *(v0 + 40) = &type metadata for SwiftMLSFeatureFlags;
    *(v0 + 48) = sub_26BE295D8();
    *(v0 + 16) = 0;
    v4 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if ((v4 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      strcpy(v5, "Shim is gone!");
      *(v5 + 7) = -4864;
      v5[112] = 2;
      swift_willThrow();
      v6 = *(v0 + 8);
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_26BE16230((v0 + 384));
  v8 = *(v0 + 472);
  if (!*(v8 + 16))
  {
    goto LABEL_15;
  }

  v9 = sub_26BEBE840(*(v0 + 696), *(v0 + 704));
  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_26BE2E07C(*(v8 + 56) + 80 * v9, v0 + 496);
  v11 = *(v0 + 464);
  if (!*(v11 + 16) || (v12 = sub_26BEBE840(*(v0 + 696), *(v0 + 704)), (v13 & 1) == 0))
  {
    sub_26BE2E0D8(v0 + 496);
LABEL_15:
    sub_26BE2BA24(v0 + 384);
    v24 = *(v0 + 680);
    *v24 = 0u;
    v24[1] = 0u;
    v24[2] = 0u;
    v24[3] = 0u;
    v24[4] = 0u;
    v24[5] = 0u;
    goto LABEL_16;
  }

  v14 = *(v11 + 56) + 184 * v12;
  v15 = *v14;
  v16 = *(v14 + 16);
  v17 = *(v14 + 48);
  *(v0 + 48) = *(v14 + 32);
  *(v0 + 64) = v17;
  *(v0 + 16) = v15;
  *(v0 + 32) = v16;
  v18 = *(v14 + 64);
  v19 = *(v14 + 80);
  v20 = *(v14 + 112);
  *(v0 + 112) = *(v14 + 96);
  *(v0 + 128) = v20;
  *(v0 + 80) = v18;
  *(v0 + 96) = v19;
  v21 = *(v14 + 128);
  v22 = *(v14 + 144);
  v23 = *(v14 + 160);
  *(v0 + 192) = *(v14 + 176);
  *(v0 + 160) = v22;
  *(v0 + 176) = v23;
  *(v0 + 144) = v21;
  sub_26BE038A8(v0 + 496, v0 + 576);
  sub_26BE038A8(v0 + 536, v0 + 616);
  sub_26BE2DFC0(v0 + 16, v0 + 200);
  MLS.KeyPackage.rawValue.getter();
  v26 = v25;
  v28 = v27;
  v29 = *(v0 + 680);
  sub_26BE2E0D8(v0 + 496);
  sub_26BE2E01C(v0 + 16);
  sub_26BE03890((v0 + 576), v29);
  sub_26BE03890((v0 + 616), v29 + 40);
  *(v29 + 80) = v26;
  *(v29 + 88) = v28;
  sub_26BE2BA24(v0 + 384);
LABEL_16:
  v6 = *(v0 + 8);
LABEL_6:

  return v6();
}

uint64_t MLS.Client.KeyPackageSecrets.init(initKey:leafNodeKey:keyPackageBytes:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_26BE03890(a1, a5);
  result = sub_26BE03890(a2, a5 + 40);
  *(a5 + 80) = a3;
  *(a5 + 88) = a4;
  return result;
}

uint64_t sub_26BE24038(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  return MEMORY[0x2822009F8](sub_26BE2405C, 0, 0);
}

uint64_t sub_26BE2405C()
{
  v13 = v0;
  v1 = *(v0 + 344);
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    *(v0 + 264) = &type metadata for SwiftMLSFeatureFlags;
    v4 = sub_26BE295D8();
    *(v0 + 240) = 0;
    *(v0 + 272) = v4;
    v5 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 240));
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v3 & 1) == 0)
  {
LABEL_3:
    sub_26BE01654();
    swift_allocError();
    *v6 = 0xD000000000000021;
    *(v6 + 8) = 0x800000026C02AC80;
    *(v6 + 112) = 2;
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }

  sub_26BE16230((v0 + 16));
  v9 = *(v0 + 344);
  sub_26BE2AA44(*(v0 + 328), *(v0 + 336), &v12);
  sub_26BE132D4(v12, *(&v12 + 1));
  sub_26BE2B9C8(v0 + 16, v0 + 128);
  v10 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
  swift_beginAccess();
  sub_26BE2BA78(v0 + 128, v9 + v10);
  swift_endAccess();
  v11 = swift_task_alloc();
  *(v0 + 352) = v11;
  *v11 = v0;
  v11[1] = sub_26BE2424C;

  return sub_26BE18958();
}

uint64_t sub_26BE2424C()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_26BE243C4;
  }

  else
  {
    v2 = sub_26BE24360;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE24360()
{
  sub_26BE2BA24(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE243C4()
{
  sub_26BE2BA24(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE24448()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BE244FC;
  v2 = *(v0 + 16);

  return sub_26BE8D9A4(sub_26BE8D9A4, v2, v2);
}

uint64_t sub_26BE244FC()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_26BE24610;
  }

  else
  {
    v2 = sub_26BE2E3EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE24628(uint64_t a1, uint64_t a2)
{
  v2[21] = a2;
  v3 = sub_26C00928C();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE246E8, 0, 0);
}

uint64_t sub_26BE246E8()
{
  v12 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  *(v0 + 200) = __swift_project_value_buffer(v1, qword_280478E70);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = sub_26BE16A38();
    v8 = sub_26BE29740(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Deleting client", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v9[1] = sub_26BE248B4;

  return sub_26BE225D4();
}

uint64_t sub_26BE248B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BE24A04, 0, 0);
  }
}

uint64_t sub_26BE24A04()
{
  v47 = v0;
  v1 = v0[27];
  v2 = v1[2];
  v0[29] = v2;
  if (v2)
  {
    result = type metadata accessor for MLS.Group.PureSwiftGroup(0);
    v0[30] = result;
    v0[31] = 0;
    if (v1[2])
    {
      v4 = v1[4];
      v0[32] = v4;
      v5 = v1[5];
      v0[33] = v5;
      sub_26BE00608(v4, v5);

      sub_26BE00608(v4, v5);
      v6 = sub_26C009A3C();
      v7 = sub_26C00AA1C();

      sub_26BE00258(v4, v5);
      if (os_log_type_enabled(v6, v7))
      {
        loga = v6;
        v8 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v46[0] = v43;
        *v8 = 136315394;
        v9 = sub_26BE16A38();
        v11 = sub_26BE29740(v9, v10, v46);

        buf = v8;
        *(v8 + 4) = v11;
        *(v8 + 12) = 2080;
        sub_26BE00608(v4, v5);
        sub_26BE3C290(0x10uLL, v4, v5, v0 + 15);
        v41 = v7;
        v13 = v0[15];
        v12 = v0[16];
        v0[19] = sub_26BF87240(v13, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
        sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
        v14 = sub_26C00A3EC();
        v16 = v15;
        sub_26BE00258(v13, v12);

        v0[13] = v14;
        v0[14] = v16;
        MEMORY[0x26D699090](3026478, 0xE300000000000000);
        sub_26BE00608(v4, v5);
        sub_26BE83448(16, v4, v5, v0 + 17);
        v17 = v0[17];
        v18 = v0[18];
        v0[20] = sub_26BF87240(v17, v18);
        v19 = sub_26C00A3EC();
        v21 = v20;
        sub_26BE00258(v17, v18);

        MEMORY[0x26D699090](v19, v21);

        v22 = sub_26BE29740(v0[13], v0[14], v46);

        *(buf + 14) = v22;
        v6 = loga;
        _os_log_impl(&dword_26BDFE000, loga, v41, "%s: Deleting group %s", buf, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v43, -1, -1);
        MEMORY[0x26D69A4E0](buf, -1, -1);
      }

      sub_26BE00608(v4, v5);
      v23 = swift_task_alloc();
      v0[34] = v23;
      *v23 = v0;
      v23[1] = sub_26BE2501C;
      v24 = v0[21];

      return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v24, v4, v5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v25 = sub_26C009A3C();
    v26 = sub_26C00AA1C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46[0] = v28;
      *v27 = 136315138;
      v29 = sub_26BE16A38();
      v31 = sub_26BE29740(v29, v30, v46);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_26BDFE000, v25, v26, "%s: Deleting overall client state", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x26D69A4E0](v28, -1, -1);
      MEMORY[0x26D69A4E0](v27, -1, -1);
    }

    v33 = v0[23];
    v32 = v0[24];
    v35 = v0[21];
    v34 = v0[22];
    swift_beginAccess();
    sub_26BE038A8(v35 + 200, (v0 + 2));
    v36 = v0[5];
    v37 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v36);
    v38 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v33 + 16))(v32, v35 + v38, v34);
    log = (*(v37 + 16) + **(v37 + 16));
    v39 = swift_task_alloc();
    v0[39] = v39;
    *v39 = v0;
    v39[1] = sub_26BE25FE8;
    v40 = v0[24];

    return (log)(v40, 0, 0xC000000000000000, v36, v37);
  }

  return result;
}

uint64_t sub_26BE2501C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {

    v4 = sub_26BE261C0;
  }

  else
  {
    v4 = sub_26BE25138;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_26BE25138()
{
  v49 = v0;
  v1 = v0[35];
  if (v1)
  {
    swift_retain_n();
    v2 = swift_task_alloc();
    v0[37] = v2;
    *v2 = v0;
    v2[1] = sub_26BE25808;

    sub_26BE8F6DC(sub_26BE8F6DC, v1, v1);
  }

  else
  {
    sub_26BE00258(v0[32], v0[33]);
    v3 = v0[31] + 1;
    if (v3 == v0[29])
    {

      v4 = sub_26C009A3C();
      v5 = sub_26C00AA1C();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v48[0] = v7;
        *v6 = 136315138;
        v8 = sub_26BE16A38();
        v10 = sub_26BE29740(v8, v9, v48);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_26BDFE000, v4, v5, "%s: Deleting overall client state", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v7);
        MEMORY[0x26D69A4E0](v7, -1, -1);
        MEMORY[0x26D69A4E0](v6, -1, -1);
      }

      v12 = v0[23];
      v11 = v0[24];
      v14 = v0[21];
      v13 = v0[22];
      swift_beginAccess();
      sub_26BE038A8(v14 + 200, (v0 + 2));
      v15 = v0[5];
      v16 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
      v17 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
      swift_beginAccess();
      (*(v12 + 16))(v11, v14 + v17, v13);
      log = (*(v16 + 16) + **(v16 + 16));
      v18 = swift_task_alloc();
      v0[39] = v18;
      *v18 = v0;
      v18[1] = sub_26BE25FE8;
      v19 = v0[24];

      (log)(v19, 0, 0xC000000000000000, v15, v16);
    }

    else
    {
      v0[31] = v3;
      v20 = v0[27];
      if (v3 >= *(v20 + 16))
      {
        __break(1u);
      }

      else
      {
        v21 = v20 + 16 * v3;
        v22 = *(v21 + 32);
        v0[32] = v22;
        v23 = *(v21 + 40);
        v0[33] = v23;
        sub_26BE00608(v22, v23);

        sub_26BE00608(v22, v23);
        v24 = sub_26C009A3C();
        v25 = sub_26C00AA1C();

        sub_26BE00258(v22, v23);
        if (os_log_type_enabled(v24, v25))
        {
          loga = v24;
          v26 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v48[0] = v45;
          *v26 = 136315394;
          v27 = sub_26BE16A38();
          v29 = sub_26BE29740(v27, v28, v48);

          buf = v26;
          *(v26 + 4) = v29;
          *(v26 + 12) = 2080;
          sub_26BE00608(v22, v23);
          sub_26BE3C290(0x10uLL, v22, v23, v0 + 15);
          v43 = v25;
          v31 = v0[15];
          v30 = v0[16];
          v0[19] = sub_26BF87240(v31, v30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
          sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
          v32 = sub_26C00A3EC();
          v34 = v33;
          sub_26BE00258(v31, v30);

          v0[13] = v32;
          v0[14] = v34;
          MEMORY[0x26D699090](3026478, 0xE300000000000000);
          sub_26BE00608(v22, v23);
          sub_26BE83448(16, v22, v23, v0 + 17);
          v35 = v0[17];
          v36 = v0[18];
          v0[20] = sub_26BF87240(v35, v36);
          v37 = sub_26C00A3EC();
          v39 = v38;
          sub_26BE00258(v35, v36);

          MEMORY[0x26D699090](v37, v39);

          v40 = sub_26BE29740(v0[13], v0[14], v48);

          *(buf + 14) = v40;
          v24 = loga;
          _os_log_impl(&dword_26BDFE000, loga, v43, "%s: Deleting group %s", buf, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69A4E0](v45, -1, -1);
          MEMORY[0x26D69A4E0](buf, -1, -1);
        }

        sub_26BE00608(v22, v23);
        v41 = swift_task_alloc();
        v0[34] = v41;
        *v41 = v0;
        v41[1] = sub_26BE2501C;
        v42 = v0[21];

        MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v42, v22, v23);
      }
    }
  }
}

uint64_t sub_26BE25808()
{
  *(*v1 + 304) = v0;

  if (v0)
  {

    v2 = sub_26BE25F68;
  }

  else
  {
    v2 = sub_26BE25924;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE25924()
{
  v50 = v0;
  v2 = v0[32];
  v1 = v0[33];

  sub_26BE00258(v2, v1);

  v4 = v0[31] + 1;
  if (v4 == v0[29])
  {

    v5 = sub_26C009A3C();
    v6 = sub_26C00AA1C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v49[0] = v8;
      *v7 = 136315138;
      v9 = sub_26BE16A38();
      v11 = sub_26BE29740(v9, v10, v49);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_26BDFE000, v5, v6, "%s: Deleting overall client state", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69A4E0](v8, -1, -1);
      MEMORY[0x26D69A4E0](v7, -1, -1);
    }

    v13 = v0[23];
    v12 = v0[24];
    v15 = v0[21];
    v14 = v0[22];
    swift_beginAccess();
    sub_26BE038A8(v15 + 200, (v0 + 2));
    v16 = v0[5];
    v17 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
    v18 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v13 + 16))(v12, v15 + v18, v14);
    log = (*(v17 + 16) + **(v17 + 16));
    v19 = swift_task_alloc();
    v0[39] = v19;
    *v19 = v0;
    v19[1] = sub_26BE25FE8;
    v20 = v0[24];

    return (log)(v20, 0, 0xC000000000000000, v16, v17);
  }

  else
  {
    v0[31] = v4;
    v21 = v0[27];
    if (v4 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = v21 + 16 * v4;
      v23 = *(v22 + 32);
      v0[32] = v23;
      v24 = *(v22 + 40);
      v0[33] = v24;
      sub_26BE00608(v23, v24);

      sub_26BE00608(v23, v24);
      v25 = sub_26C009A3C();
      v26 = sub_26C00AA1C();

      sub_26BE00258(v23, v24);
      if (os_log_type_enabled(v25, v26))
      {
        loga = v25;
        v27 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v49[0] = v46;
        *v27 = 136315394;
        v28 = sub_26BE16A38();
        v30 = sub_26BE29740(v28, v29, v49);

        buf = v27;
        *(v27 + 4) = v30;
        *(v27 + 12) = 2080;
        sub_26BE00608(v23, v24);
        sub_26BE3C290(0x10uLL, v23, v24, v0 + 15);
        v44 = v26;
        v32 = v0[15];
        v31 = v0[16];
        v0[19] = sub_26BF87240(v32, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
        sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
        v33 = sub_26C00A3EC();
        v35 = v34;
        sub_26BE00258(v32, v31);

        v0[13] = v33;
        v0[14] = v35;
        MEMORY[0x26D699090](3026478, 0xE300000000000000);
        sub_26BE00608(v23, v24);
        sub_26BE83448(16, v23, v24, v0 + 17);
        v36 = v0[17];
        v37 = v0[18];
        v0[20] = sub_26BF87240(v36, v37);
        v38 = sub_26C00A3EC();
        v40 = v39;
        sub_26BE00258(v36, v37);

        MEMORY[0x26D699090](v38, v40);

        v41 = sub_26BE29740(v0[13], v0[14], v49);

        *(buf + 14) = v41;
        v25 = loga;
        _os_log_impl(&dword_26BDFE000, loga, v44, "%s: Deleting group %s", buf, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v46, -1, -1);
        MEMORY[0x26D69A4E0](buf, -1, -1);
      }

      sub_26BE00608(v23, v24);
      v42 = swift_task_alloc();
      v0[34] = v42;
      *v42 = v0;
      v42[1] = sub_26BE2501C;
      v43 = v0[21];

      return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v43, v23, v24);
    }
  }

  return result;
}

uint64_t sub_26BE25F68()
{
  v1 = v0[32];
  v2 = v0[33];

  sub_26BE00258(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE25FE8()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v3 = sub_26BE2622C;
  }

  else
  {
    v3 = sub_26BE26150;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE26150()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE261C0()
{
  sub_26BE00258(v0[32], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26BE2622C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE262B8()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BE2E418;
  v2 = *(v0 + 16);

  return sub_26BE91D9C(v2, v2);
}

uint64_t sub_26BE2636C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_26BE2638C, 0, 0);
}

uint64_t sub_26BE2638C()
{
  v1 = v0[20];
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    v0[5] = &type metadata for SwiftMLSFeatureFlags;
    v0[6] = sub_26BE295D8();
    *(v0 + 16) = 0;
    v4 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      *v5 = 0xD000000000000050;
      *(v5 + 8) = 0x800000026C02AD40;
      *(v5 + 112) = 2;
      swift_willThrow();
      v7 = v0[1];
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_26BE16230(v0 + 1);

  sub_26BE14118(v6);
  v10 = v9;
  v11 = v0[19];

  sub_26BE2BA24((v0 + 2));
  *v11 = v10;
  v7 = v0[1];
LABEL_6:

  return v7();
}

uint64_t sub_26BE26514(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE26534, 0, 0);
}

uint64_t sub_26BE26534()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_26BE26610;

  return (sub_26BE19B8C)();
}

uint64_t sub_26BE26610()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_26BE26758;
  }

  else
  {
    v2 = sub_26BE26740;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE26770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v4 = sub_26C00928C();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE26848, 0, 0);
}

uint64_t sub_26BE26848()
{
  v35 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = sub_26C009A5C();
  __swift_project_value_buffer(v5, qword_280478E70);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);

  v7 = sub_26C009A3C();
  v8 = sub_26C00AA1C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v12 = v0[18];
  v11 = v0[19];
  if (v9)
  {
    v32 = v8;
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v13 = 136315394;
    v14 = sub_26BE16A38();
    v33 = v6;
    v16 = sub_26BE29740(v14, v15, &v34);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = sub_26C00922C();
    v19 = v18;
    v20 = *(v11 + 8);
    v20(v10, v12);
    v21 = sub_26BE29740(v17, v19, &v34);
    v6 = v33;

    *(v13 + 14) = v21;
    _os_log_impl(&dword_26BDFE000, v7, v32, "%s: changing clientUUID to %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v31, -1, -1);
    MEMORY[0x26D69A4E0](v13, -1, -1);
  }

  else
  {

    v20 = *(v11 + 8);
    v20(v10, v12);
  }

  v0[23] = v20;
  v22 = v0[20];
  v23 = v0[21];
  v24 = v0[18];
  v25 = v0[19];
  v27 = v0[16];
  v26 = v0[17];
  v28 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  swift_beginAccess();
  v6(v23, v27 + v28, v24);
  v6(v22, v26, v24);
  swift_beginAccess();
  (*(v25 + 40))(v27 + v28, v22, v24);
  swift_endAccess();
  v29 = swift_task_alloc();
  v0[24] = v29;
  *v29 = v0;
  v29[1] = sub_26BE26B70;

  return sub_26BE18958();
}

uint64_t sub_26BE26B70()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_26BE26F94;
  }

  else
  {
    v2 = sub_26BE26C84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE26C84()
{
  v1 = v0[16];
  swift_beginAccess();
  sub_26BE038A8(v1 + 200, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_26BE26DDC;
  v5 = v0[21];

  return v7(v5, 0, 0xC000000000000000, v2, v3);
}

uint64_t sub_26BE26DDC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_26BE27030;
  }

  else
  {
    v2 = sub_26BE26EF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE26EF0()
{
  (*(v0 + 184))(*(v0 + 168), *(v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE26F94()
{
  (*(v0 + 184))(*(v0 + 168), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE27030()
{
  (*(v0 + 184))(*(v0 + 168), *(v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE270F4()
{
  v37 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  *(v0 + 288) = __swift_project_value_buffer(v1, qword_280478E70);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v36[0] = v5;
    *v4 = 136315138;
    v6 = sub_26BE16A38();
    v8 = sub_26BE29740(v6, v7, v36);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: Performing periodic cleanup", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  sub_26BE16230((v0 + 16));
  v9 = *(v0 + 112);
  *(v0 + 296) = v9;
  v10 = *(v9 + 32);
  *(v0 + 408) = v10;
  v11 = -1;
  v12 = -1 << v10;
  if (-(-1 << v10) < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v9 + 56);

  if (v13)
  {
    v15 = 0;
LABEL_12:
    *(v0 + 304) = v13;
    *(v0 + 312) = v15;
    v17 = (*(v14 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
    v18 = *v17;
    *(v0 + 320) = *v17;
    v19 = v17[1];
    *(v0 + 328) = v19;
    sub_26BE00608(v18, v19);

    sub_26BE00608(v18, v19);
    v20 = sub_26C009A3C();
    v21 = sub_26C00AA1C();

    sub_26BE00258(v18, v19);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36[0] = v23;
      *v22 = 136315394;
      v24 = sub_26BE16A38();
      v26 = sub_26BE29740(v24, v25, v36);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = sub_26BE832D4(v18, v19);
      v29 = sub_26BE29740(v27, v28, v36);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_26BDFE000, v20, v21, "%s: Checking group %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v23, -1, -1);
      MEMORY[0x26D69A4E0](v22, -1, -1);
    }

    type metadata accessor for MLS.Group.PureSwiftGroup(0);

    sub_26BE00608(v18, v19);
    v30 = swift_task_alloc();
    *(v0 + 336) = v30;
    *v30 = v0;
    v30[1] = sub_26BE275EC;
    v31 = *(v0 + 280);

    return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v31, v18, v19);
  }

  else
  {
    v16 = 0;
    while (((63 - v12) >> 6) - 1 != v16)
    {
      v15 = v16 + 1;
      v13 = *(v14 + 8 * v16++ + 64);
      if (v13)
      {
        goto LABEL_12;
      }
    }

    v33 = *(v0 + 280);

    sub_26BE2B9C8(v0 + 16, v0 + 128);
    v34 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
    swift_beginAccess();
    sub_26BE2BA78(v0 + 128, v33 + v34);
    swift_endAccess();
    v35 = swift_task_alloc();
    *(v0 + 392) = v35;
    *v35 = v0;
    v35[1] = sub_26BE2873C;

    return sub_26BE18958();
  }
}

uint64_t sub_26BE275EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v4 = sub_26BE289A4;
  }

  else
  {
    v4 = sub_26BE27700;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_26BE27700()
{
  v40 = v0;
  if (*(v0 + 344))
  {
    v1 = swift_task_alloc();
    *(v0 + 360) = v1;
    *v1 = v0;
    v1[1] = sub_26BE27C38;

    sub_26BF3BBF0();
  }

  else
  {
    v3 = *(v0 + 320);
    v2 = *(v0 + 328);

    sub_26BE00608(v3, v2);
    v4 = sub_26C009A3C();
    v5 = sub_26C00AA0C();

    sub_26BE00258(v3, v2);
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 320);
    v7 = *(v0 + 328);
    if (v6)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136315394;
      v11 = sub_26BE16A38();
      v13 = sub_26BE29740(v11, v12, &v39);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = sub_26BE832D4(v8, v7);
      v16 = sub_26BE29740(v14, v15, &v39);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_26BDFE000, v4, v5, "%s: Missing group %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v10, -1, -1);
      MEMORY[0x26D69A4E0](v9, -1, -1);

      sub_26BE00258(v8, v7);
    }

    else
    {
      sub_26BE00258(*(v0 + 320), *(v0 + 328));
    }

    v17 = *(v0 + 312);
    v18 = (*(v0 + 304) - 1) & *(v0 + 304);
    if (v18)
    {
      v19 = *(v0 + 296);
LABEL_14:
      *(v0 + 304) = v18;
      *(v0 + 312) = v17;
      v21 = (*(v19 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v18)))));
      v22 = *v21;
      *(v0 + 320) = *v21;
      v23 = v21[1];
      *(v0 + 328) = v23;
      sub_26BE00608(v22, v23);

      sub_26BE00608(v22, v23);
      v24 = sub_26C009A3C();
      v25 = sub_26C00AA1C();

      sub_26BE00258(v22, v23);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v39 = v27;
        *v26 = 136315394;
        v28 = sub_26BE16A38();
        v30 = sub_26BE29740(v28, v29, &v39);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;
        v31 = sub_26BE832D4(v22, v23);
        v33 = sub_26BE29740(v31, v32, &v39);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_26BDFE000, v24, v25, "%s: Checking group %s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v27, -1, -1);
        MEMORY[0x26D69A4E0](v26, -1, -1);
      }

      type metadata accessor for MLS.Group.PureSwiftGroup(0);

      sub_26BE00608(v22, v23);
      v34 = swift_task_alloc();
      *(v0 + 336) = v34;
      *v34 = v0;
      v34[1] = sub_26BE275EC;
      v35 = *(v0 + 280);

      MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v35, v22, v23);
    }

    else
    {
      while (1)
      {
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          return;
        }

        if (v20 >= (((1 << *(v0 + 408)) + 63) >> 6))
        {
          break;
        }

        v19 = *(v0 + 296);
        v18 = *(v19 + 8 * v20 + 56);
        ++v17;
        if (v18)
        {
          v17 = v20;
          goto LABEL_14;
        }
      }

      v36 = *(v0 + 280);

      sub_26BE2B9C8(v0 + 16, v0 + 128);
      v37 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
      swift_beginAccess();
      sub_26BE2BA78(v0 + 128, v36 + v37);
      swift_endAccess();
      v38 = swift_task_alloc();
      *(v0 + 392) = v38;
      *v38 = v0;
      v38[1] = sub_26BE2873C;

      sub_26BE18958();
    }
  }
}

uint64_t sub_26BE27C38(char a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_26BE28A20;
  }

  else
  {
    *(v4 + 409) = a1 & 1;
    v5 = sub_26BE27D64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BE27D64()
{
  v40 = v0;
  if (*(v0 + 409))
  {
    v2 = *(v0 + 320);
    v1 = *(v0 + 328);

    sub_26BE00608(v2, v1);
    v3 = sub_26C009A3C();
    v4 = sub_26C00AA1C();

    sub_26BE00258(v2, v1);
    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 320);
      v5 = *(v0 + 328);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v39 = v8;
      *v7 = 136315394;
      v9 = sub_26BE16A38();
      v11 = sub_26BE29740(v9, v10, &v39);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = sub_26BE832D4(v6, v5);
      v14 = sub_26BE29740(v12, v13, &v39);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Deleting group %s due to expiry", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v8, -1, -1);
      MEMORY[0x26D69A4E0](v7, -1, -1);
    }

    sub_26BE2AA44(*(v0 + 320), *(v0 + 328), (v0 + 264));
    sub_26BE132D4(*(v0 + 264), *(v0 + 272));
    v15 = swift_task_alloc();
    *(v0 + 376) = v15;
    *v15 = v0;
    v15[1] = sub_26BE282B0;

    return sub_26BF3D100();
  }

  else
  {
    sub_26BE00258(*(v0 + 320), *(v0 + 328));

    v17 = *(v0 + 312);
    v18 = (*(v0 + 304) - 1) & *(v0 + 304);
    if (v18)
    {
      v19 = *(v0 + 296);
LABEL_13:
      *(v0 + 304) = v18;
      *(v0 + 312) = v17;
      v21 = (*(v19 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v18)))));
      v22 = *v21;
      *(v0 + 320) = *v21;
      v23 = v21[1];
      *(v0 + 328) = v23;
      sub_26BE00608(v22, v23);

      sub_26BE00608(v22, v23);
      v24 = sub_26C009A3C();
      v25 = sub_26C00AA1C();

      sub_26BE00258(v22, v23);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v39 = v27;
        *v26 = 136315394;
        v28 = sub_26BE16A38();
        v30 = sub_26BE29740(v28, v29, &v39);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;
        v31 = sub_26BE832D4(v22, v23);
        v33 = sub_26BE29740(v31, v32, &v39);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_26BDFE000, v24, v25, "%s: Checking group %s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v27, -1, -1);
        MEMORY[0x26D69A4E0](v26, -1, -1);
      }

      type metadata accessor for MLS.Group.PureSwiftGroup(0);

      sub_26BE00608(v22, v23);
      v34 = swift_task_alloc();
      *(v0 + 336) = v34;
      *v34 = v0;
      v34[1] = sub_26BE275EC;
      v35 = *(v0 + 280);

      return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v35, v22, v23);
    }

    else
    {
      while (1)
      {
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          return result;
        }

        if (v20 >= (((1 << *(v0 + 408)) + 63) >> 6))
        {
          break;
        }

        v19 = *(v0 + 296);
        v18 = *(v19 + 8 * v20 + 56);
        ++v17;
        if (v18)
        {
          v17 = v20;
          goto LABEL_13;
        }
      }

      v36 = *(v0 + 280);

      sub_26BE2B9C8(v0 + 16, v0 + 128);
      v37 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
      swift_beginAccess();
      sub_26BE2BA78(v0 + 128, v36 + v37);
      swift_endAccess();
      v38 = swift_task_alloc();
      *(v0 + 392) = v38;
      *v38 = v0;
      v38[1] = sub_26BE2873C;

      return sub_26BE18958();
    }
  }
}

uint64_t sub_26BE282B0()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_26BE28AB0;
  }

  else
  {
    v2 = sub_26BE283C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE283C4()
{
  v25 = v0;
  sub_26BE00258(*(v0 + 320), *(v0 + 328));

  v2 = *(v0 + 312);
  v3 = (*(v0 + 304) - 1) & *(v0 + 304);
  if (v3)
  {
    v4 = *(v0 + 296);
LABEL_7:
    *(v0 + 304) = v3;
    *(v0 + 312) = v2;
    v6 = (*(v4 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v3)))));
    v7 = *v6;
    *(v0 + 320) = *v6;
    v8 = v6[1];
    *(v0 + 328) = v8;
    sub_26BE00608(v7, v8);

    sub_26BE00608(v7, v8);
    v9 = sub_26C009A3C();
    v10 = sub_26C00AA1C();

    sub_26BE00258(v7, v8);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315394;
      v13 = sub_26BE16A38();
      v15 = sub_26BE29740(v13, v14, &v24);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_26BE832D4(v7, v8);
      v18 = sub_26BE29740(v16, v17, &v24);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_26BDFE000, v9, v10, "%s: Checking group %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v12, -1, -1);
      MEMORY[0x26D69A4E0](v11, -1, -1);
    }

    type metadata accessor for MLS.Group.PureSwiftGroup(0);

    sub_26BE00608(v7, v8);
    v19 = swift_task_alloc();
    *(v0 + 336) = v19;
    *v19 = v0;
    v19[1] = sub_26BE275EC;
    v20 = *(v0 + 280);

    return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v20, v7, v8);
  }

  else
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= (((1 << *(v0 + 408)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v0 + 296);
      v3 = *(v4 + 8 * v5 + 56);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    v21 = *(v0 + 280);

    sub_26BE2B9C8(v0 + 16, v0 + 128);
    v22 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
    swift_beginAccess();
    sub_26BE2BA78(v0 + 128, v21 + v22);
    swift_endAccess();
    v23 = swift_task_alloc();
    *(v0 + 392) = v23;
    *v23 = v0;
    v23[1] = sub_26BE2873C;

    return sub_26BE18958();
  }
}

uint64_t sub_26BE2873C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_26BE28B40;
  }

  else
  {
    v2 = sub_26BE28850;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE28850()
{
  v11 = v0;

  v1 = sub_26C009A3C();
  v2 = sub_26C00AA1C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    v5 = sub_26BE16A38();
    v7 = sub_26BE29740(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_26BDFE000, v1, v2, "%s: Finished performing periodic cleanup", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x26D69A4E0](v4, -1, -1);
    MEMORY[0x26D69A4E0](v3, -1, -1);
  }

  sub_26BE2BA24(v0 + 16);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26BE289A4()
{
  v1 = v0[40];
  v2 = v0[41];

  sub_26BE00258(v1, v2);
  sub_26BE2BA24((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE28A20()
{
  v2 = v0[40];
  v1 = v0[41];

  sub_26BE00258(v2, v1);
  sub_26BE2BA24((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE28AB0()
{
  v2 = v0[40];
  v1 = v0[41];

  sub_26BE00258(v2, v1);
  sub_26BE2BA24((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE28B40()
{
  sub_26BE2BA24(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE28BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_26BE28BCC, 0, 0);
}

uint64_t sub_26BE28BCC()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = type metadata accessor for MLS.Client.Client(0);
  *v4 = v0;
  v4[1] = sub_26BE28CC0;
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);

  return sub_26BEA87F4(v7, &unk_26C00DB40, v2, v5, v6, &off_287CBB360);
}

uint64_t sub_26BE28CC0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE28DFC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BE28DFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BE28E60(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE28F58;

  return v6(a1);
}

uint64_t sub_26BE28F58()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t MLS.Client.Client.deinit()
{

  sub_26BE2962C(*(v0 + 24), *(v0 + 32));
  sub_26BE29710(v0 + 40);
  v1 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  v2 = sub_26C00928C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey));
  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey, &qword_28045E468, &qword_26C00ECA0);

  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state, &qword_28045E460, &qword_26C0206D0);
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_lastHealthReportTimestamp;
  v5 = sub_26C00921C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t MLS.Client.Client.__deallocating_deinit()
{
  MLS.Client.Client.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26BE291F8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 320);
}

uint64_t sub_26BE29238@<X0>(uint64_t a1@<X8>)
{
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  v3 = __swift_project_value_buffer(v2, qword_280478E70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MLS.Client.KeyPackage.rawRepresentation.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Client.KeyPackage.init(fromRaw:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.Client.KeyPackageSecrets.initKey.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_26BE03890(a1, v1);
}

uint64_t MLS.Client.KeyPackageSecrets.leafNodeKey.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_26BE03890(a1, v1 + 40);
}

uint64_t MLS.Client.KeyPackageSecrets.keyPackageBytes.getter()
{
  v1 = *(v0 + 80);
  sub_26BE00608(v1, *(v0 + 88));
  return v1;
}

void MLS.Client.KeyPackageSecrets.keyPackageBytes.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

void sub_26BE294CC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD9814(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_26BE29D5C(v4);
  *a1 = v2;
}

void sub_26BE2958C(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    sub_26BE04890(a1, a2);
  }
}

unint64_t sub_26BE295D8()
{
  result = qword_28045E448;
  if (!qword_28045E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E448);
  }

  return result;
}

void sub_26BE2962C(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    sub_26BE0489C(a1, a2);
  }
}

uint64_t sub_26BE29640(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26BE296B4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26BE29740(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_26BE29740(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26BE2980C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_26BE2E2EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26BE2980C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26BE29918(a5, a6);
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
    result = sub_26C00AC5C();
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

void *sub_26BE29918(uint64_t a1, unint64_t a2)
{
  v3 = sub_26BFCC978(a1, a2);
  sub_26BE29964(&unk_287CB9C70);
  return v3;
}

uint64_t sub_26BE29964(uint64_t result)
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

  result = sub_26BE29A50(result, v11, 1, v3);
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

char *sub_26BE29A50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
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

_BYTE **sub_26BE29B44(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26BE29B54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E490, &qword_26C015C80);
    v2 = sub_26C00ABEC();
    v15 = v2;
    sub_26C00AB7C();
    if (sub_26C00ABAC())
    {
      type metadata accessor for ContinuationStore(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_26BF76DFC(v9 + 1);
        }

        v2 = v15;
        sub_26C00B05C();
        sub_26C00924C();
        result = sub_26C00B0CC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_26C00ABAC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

void sub_26BE29D5C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26C00AEEC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26C00A74C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_26BE29F5C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26BE29E54(0, v2, 1, a1);
  }
}

void sub_26BE29E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 16 * v4);
    v16 = v7;
    v17 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = *(v6 + 8);
      v11 = v8;
      sub_26BE00608(v8, *(&v8 + 1));
      sub_26BE00608(v9, v10);
      v12 = sub_26BE2285C(v9, v10, v11, *(&v11 + 1));
      sub_26BE00258(v9, v10);
      sub_26BE00258(v11, *(&v11 + 1));
      if ((v12 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 = v17 + 16;
        v7 = v16 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v6;
      v8 = *(v6 + 16);
      *v6 = v8;
      *(v6 + 16) = v13;
      v6 -= 16;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_26BE29F5C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    v7 = v9;
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v7 = sub_26BFD9590(v7);
    }

    v96 = *(v7 + 16);
    if (v96 >= 2)
    {
      do
      {
        v97 = *v6;
        if (!*v6)
        {
          goto LABEL_125;
        }

        v6 = (v96 - 1);
        v98 = *(v7 + 16 * v96);
        v99 = *(v7 + 16 * (v96 - 1) + 40);
        sub_26BE2A610((v97 + 16 * v98), (v97 + 16 * *(v7 + 16 * (v96 - 1) + 32)), (v97 + 16 * v99), v9);
        if (v5)
        {
          break;
        }

        if (v99 < v98)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_26BFD9590(v7);
        }

        if (v96 - 2 >= *(v7 + 16))
        {
          goto LABEL_115;
        }

        v100 = (v7 + 16 * v96);
        *v100 = v98;
        v100[1] = v99;
        sub_26BFD9504(v96 - 1);
        v96 = *(v7 + 16);
        v6 = a3;
      }

      while (v96 > 1);
    }

LABEL_99:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v11 >= v7)
    {
      v7 = v11;
    }

    else
    {
      v105 = v5;
      v12 = (*v6 + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = v10;
      v111 = 16 * v10;
      v16 = (*v6 + 16 * v10);
      v18 = *v16;
      v17 = v16[1];
      sub_26BE00608(*v12, v14);
      sub_26BE00608(v18, v17);
      v113 = sub_26BE2285C(v18, v17, v13, v14);
      sub_26BE00258(v18, v17);
      sub_26BE00258(v13, v14);
      v103 = v15;
      v19 = v15 + 2;
      v20 = (v16 + 3);
      while (v7 != v19)
      {
        v22 = *v20;
        v21 = v20[1];
        v23 = v20 + 2;
        v24 = v20[2];
        v25 = *(v20 - 1);
        sub_26BE00608(v21, v24);
        sub_26BE00608(v25, v22);
        v26 = v7;
        v27 = v9;
        v28 = sub_26BE2285C(v25, v22, v21, v24) & 1;
        sub_26BE00258(v25, v22);
        sub_26BE00258(v21, v24);
        ++v19;
        v20 = v23;
        v29 = (v113 & 1) == v28;
        v9 = v27;
        v7 = v26;
        if (!v29)
        {
          v7 = v19 - 1;
          break;
        }
      }

      v10 = v103;
      v5 = v105;
      v6 = a3;
      v30 = v111;
      if (v113)
      {
        if (v7 < v103)
        {
          goto LABEL_118;
        }

        if (v103 < v7)
        {
          v31 = 16 * v7 - 16;
          v32 = v7;
          v33 = v103;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v34 = *(v35 + v30);
              *(v35 + v30) = *(v35 + v31);
              *(v35 + v31) = v34;
            }

            ++v33;
            v31 -= 16;
            v30 += 16;
          }

          while (v33 < v32);
        }
      }
    }

    v36 = v6[1];
    if (v7 < v36)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_117;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_119;
        }

        if (v10 + a4 >= v36)
        {
          v37 = v6[1];
        }

        else
        {
          v37 = v10 + a4;
        }

        if (v37 < v10)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v37)
        {
          break;
        }
      }
    }

    v38 = v7;
    if (v7 < v10)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_26BEEC164(0, v9[2] + 1, 1, v9);
    }

    v40 = v9[2];
    v39 = v9[3];
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v9 = sub_26BEEC164((v39 > 1), v40 + 1, 1, v9);
    }

    v9[2] = v41;
    v42 = &v9[2 * v40];
    v42[4] = v10;
    v42[5] = v38;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v109 = v38;
    if (v40)
    {
      while (1)
      {
        v43 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = v9[4];
          v45 = v9[5];
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_48:
          if (v47)
          {
            goto LABEL_105;
          }

          v60 = &v9[2 * v41];
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_108;
          }

          v66 = &v9[2 * v43 + 4];
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_112;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v41 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v70 = &v9[2 * v41];
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_62:
        if (v65)
        {
          goto LABEL_107;
        }

        v73 = &v9[2 * v43];
        v75 = v73[4];
        v74 = v73[5];
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_69:
        v81 = v43 - 1;
        if (v43 - 1 >= v41)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v6)
        {
          goto LABEL_123;
        }

        v82 = v9[2 * v81 + 4];
        v83 = v9[2 * v43 + 5];
        sub_26BE2A610((*v6 + 16 * v82), (*v6 + 16 * v9[2 * v43 + 4]), (*v6 + 16 * v83), v7);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v83 < v82)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26BFD9590(v9);
        }

        if (v81 >= v9[2])
        {
          goto LABEL_102;
        }

        v84 = &v9[2 * v81];
        v84[4] = v82;
        v84[5] = v83;
        sub_26BFD9504(v43);
        v41 = v9[2];
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v9[2 * v41 + 4];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_103;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_104;
      }

      v55 = &v9[2 * v41];
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_106;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_109;
      }

      if (v59 >= v51)
      {
        v77 = &v9[2 * v43 + 4];
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v43 = v41 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v109;
    if (v109 >= v7)
    {
      goto LABEL_89;
    }
  }

  v101 = v9;
  v104 = v10;
  v106 = v5;
  v85 = *v6;
  v86 = *v6 + 16 * v7 - 16;
  v87 = v10 - v7;
  v110 = v37;
LABEL_80:
  v112 = v86;
  v114 = v7;
  v88 = *(v85 + 16 * v7);
  v89 = v87;
  while (1)
  {
    v90 = *v86;
    v91 = *(v86 + 8);
    v92 = v88;
    sub_26BE00608(v88, *(&v88 + 1));
    sub_26BE00608(v90, v91);
    v93 = sub_26BE2285C(v90, v91, v92, *(&v92 + 1));
    sub_26BE00258(v90, v91);
    sub_26BE00258(v92, *(&v92 + 1));
    if ((v93 & 1) == 0)
    {
LABEL_79:
      v7 = v114 + 1;
      v86 = v112 + 16;
      --v87;
      v38 = v110;
      if (v114 + 1 != v110)
      {
        goto LABEL_80;
      }

      v10 = v104;
      v5 = v106;
      v6 = a3;
      v9 = v101;
      if (v110 < v104)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v85)
    {
      break;
    }

    v94 = *v86;
    v88 = *(v86 + 16);
    *v86 = v88;
    *(v86 + 16) = v94;
    v86 -= 16;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_26BE2A610(char *__dst, char *__src, char *a3, uint64_t *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __src - __dst;
  v7 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 4;
  v9 = a3 - __src;
  v10 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 4;
  if (v8 < v10 >> 4)
  {
    v12 = __dst;
    if (a4 != __dst || &__dst[16 * v8] <= a4)
    {
      v14 = a4;
      memmove(a4, __dst, 16 * v8);
      a4 = v14;
      v12 = __dst;
    }

    v35 = &a4[2 * v8];
    v15 = a4;
    if (v6 < 16)
    {
LABEL_10:
      v5 = v12;
      goto LABEL_35;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v18 = *v5;
      v19 = v5[1];
      v20 = *v15;
      v21 = v15[1];
      sub_26BE00608(*v5, v19);
      sub_26BE00608(v20, v21);
      v22 = sub_26BE2285C(v20, v21, v18, v19);
      sub_26BE00258(v20, v21);
      sub_26BE00258(v18, v19);
      if (v22)
      {
        break;
      }

      v16 = v15;
      v17 = v12 == v15;
      v15 += 2;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v12 += 16;
      if (v15 >= v35)
      {
        goto LABEL_10;
      }
    }

    v16 = v5;
    v17 = v12 == v5;
    v5 += 2;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v12 = *v16;
    goto LABEL_13;
  }

  v15 = a4;
  if (a4 != __src || &__src[16 * v11] <= a4)
  {
    memmove(a4, __src, 16 * v11);
  }

  v35 = &v15[2 * v11];
  if (v9 >= 16 && v5 > __dst)
  {
LABEL_24:
    v34 = v5;
    v32 = v5 - 2;
    v4 -= 16;
    v23 = v35;
    do
    {
      v24 = v15;
      v25 = (v4 + 16);
      v26 = *(v23 - 2);
      v27 = *(v23 - 1);
      v23 -= 2;
      v28 = *(v34 - 2);
      v29 = *(v34 - 1);
      sub_26BE00608(v26, v27);
      sub_26BE00608(v28, v29);
      v30 = sub_26BE2285C(v28, v29, v26, v27);
      sub_26BE00258(v28, v29);
      sub_26BE00258(v26, v27);
      if (v30)
      {
        if (v25 != v34)
        {
          *v4 = *v32;
        }

        v15 = v24;
        if (v35 <= v24 || (v5 = v32, v32 <= __dst))
        {
          v5 = v32;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v25 != v35)
      {
        *v4 = *v23;
      }

      v4 -= 16;
      v35 = v23;
      v15 = v24;
    }

    while (v23 > v24);
    v35 = v23;
    v5 = v34;
  }

LABEL_35:
  if (v5 != v15 || v5 >= (v15 + ((v35 - v15 + (v35 - v15 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v5, v15, 16 * ((v35 - v15) / 16));
  }

  return 1;
}