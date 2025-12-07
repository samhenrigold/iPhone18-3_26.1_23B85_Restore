uint64_t CRCKError.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_27525A4A0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_275258F58()
{
  sub_27525A4F0();
  sub_27525A460();
  return sub_27525A500();
}

uint64_t sub_275258FD4(uint64_t a1)
{
  sub_27525A4F0();
  sub_27525A460();
  return sub_27525A500();
}

uint64_t sub_27525902C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_27525A4A0();

  *a2 = v3 != 0;
  return result;
}

void sub_275259080(uint64_t a1@<X8>)
{
  strcpy(a1, "Missing CRDT");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t CRCKMergeable.crdt.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_27525A470();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t CRCKMergeable.crdt.setter(uint64_t a1, uint64_t a2)
{
  v4 = sub_27525A470();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t CRCKMergeable.init(crdt:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  v10 = sub_27525A470();
  (*(*(v10 - 8) + 40))(a5, a1, v10);
  result = type metadata accessor for CRCKMergeable(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

char *CRCKMergeable.mergeableDeltas(for:)(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = v2;
  v32 = sub_27525A440();
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v8 = sub_27525A470();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v3, v8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    sub_275259684();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v15, v12, v7);
    v12 = *(v3 + *(a2 + 36));
    v16 = v31;
    v17 = v32;
    (*(v31 + 104))(v6, *MEMORY[0x277CFB5F0], v32);
    v18 = v30;
    v19 = sub_27525A400();
    if (v18)
    {
      (*(v16 + 8))(v6, v17);
    }

    else
    {
      v21 = v19;
      v22 = v6;
      v23 = v20;
      (*(v16 + 8))(v22, v17);
      v24 = objc_allocWithZone(MEMORY[0x277CBC458]);
      sub_2752596D8(v21, v23);
      v25 = sub_27525A3E0();
      v26 = [v24 initWithData:v25 metadata:v29];

      sub_27525972C(v21, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8DD8, &qword_27525A6C0);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_27525A6B0;
      *(v12 + 4) = v26;
      sub_27525972C(v21, v23);
    }

    (*(v13 + 8))(v15, v7);
  }

  return v12;
}

unint64_t sub_275259684()
{
  result = qword_2809B8DD0;
  if (!qword_2809B8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B8DD0);
  }

  return result;
}

void sub_2752596D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_27525972C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRCKMergeable.merge(_:)(Swift::OpaquePointer a1)
{
  v4 = v3;
  v5 = v1;
  v55[1] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8DE0, &qword_27525A6C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v50 = v5;
  v10 = *(v5 + 16);
  v11 = sub_27525A470();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v34 - v14;
  v49 = v10;
  v15 = *(v10 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1._rawValue >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; v16 = v33)
  {
    v44 = v16;
    v45 = v2;
    v20 = 0;
    v47 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
    v48 = a1._rawValue & 0xC000000000000001;
    v39 = v15 + 48;
    v40 = (v12 + 16);
    v37 = v9;
    v38 = v12 + 8;
    v36 = (v15 + 8);
    v35 = (v15 + 32);
    v34 = (v15 + 56);
    v42 = v18;
    rawValue = a1._rawValue;
    v41 = i;
    while (1)
    {
      if (v48)
      {
        v16 = MEMORY[0x277C70440](v20, a1._rawValue);
      }

      else
      {
        if (v20 >= *(v47 + 16))
        {
          goto LABEL_23;
        }

        v16 = *(a1._rawValue + v20 + 4);
      }

      v15 = v16;
      v9 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v55[0] = 0;
      v23 = [v16 dataWithError_];
      v24 = v55[0];
      if (!v23)
      {
        v32 = v24;
        sub_27525A3D0();

        swift_willThrow();
LABEL_20:

        return;
      }

      v54 = v15;
      v25 = sub_27525A3F0();
      v12 = v26;

      sub_2752596D8(v25, v12);
      v2 = v49;
      v15 = *(v50 + 24);
      sub_27525A410();
      if (v4)
      {
        sub_27525972C(v25, v12);
        v15 = v54;
        goto LABEL_20;
      }

      v51 = v20;
      v52 = v20 + 1;
      v53 = 0;
      v27 = v45;
      v28 = v46;
      v29 = v44;
      (*v40)(v46, v45, v44);
      v9 = v39;
      v30 = *v39;
      if ((*v39)(v28, 1, v2) == 1)
      {

        sub_27525972C(v25, v12);
        v15 = v38;
        v12 = *v38;
        (*v38)(v28, v29);
        (v12)(v27, v29);
        v18 = v42;
        (*v35)(v27, v42, v2);
        v16 = (*v34)(v27, 0, 1, v2);
        v4 = v53;
        a1._rawValue = rawValue;
        v21 = v41;
        v22 = v51;
      }

      else
      {
        (*v38)(v28, v29);
        if (v30(v27, 1, v2))
        {
          v18 = v42;
          (*v36)(v42, v2);
          sub_27525972C(v25, v12);

          v2 = 1;
          v4 = v53;
          v9 = v37;
        }

        else
        {
          v9 = v37;
          v18 = v42;
          sub_27525A420();

          sub_27525972C(v25, v12);
          (*v36)(v18, v2);
          v2 = 0;
          v4 = v53;
        }

        v21 = v41;
        v22 = v51;
        v31 = sub_27525A430();
        (*(*(v31 - 8) + 56))(v9, v2, 1, v31);
        v16 = sub_275259D44(v9);
        a1._rawValue = rawValue;
      }

      v20 = v22 + 1;
      if (v52 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v33 = v16;
    i = sub_27525A490();
  }
}

uint64_t sub_275259D44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8DE0, &qword_27525A6C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275259DB0()
{
  result = qword_2809B8DE8;
  if (!qword_2809B8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B8DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRCKError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CRCKError(_WORD *result, int a2, int a3)
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

uint64_t sub_275259F2C(uint64_t a1)
{
  result = sub_27525A470();
  if (v2 <= 0x3F)
  {
    result = sub_27525A450();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_275259FB4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_27525A124(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *v22 = v23;
  }

  else if (v7 >= a2)
  {
    v24 = *(v5 + 56);

    v24();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}