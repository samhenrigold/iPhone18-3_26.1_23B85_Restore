void sub_26BFC935C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_26BFC954C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_26C00A7AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BFC98C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_26C00A40C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BFC99B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_26C00A40C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_26C00A9EC();
  result = sub_26C00A40C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BFC9B28(uint64_t a1)
{
  v2 = sub_26C0094DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s9AttributeV5ValueV7StorageOMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFCCF20(v1, v8, _s9AttributeV5ValueV7StorageOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = 1;
LABEL_5:
    MEMORY[0x26D699B20](v10);
    sub_26C00A58C();
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x26D699B20](2);
  sub_26BFCC858(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
  sub_26C00A3CC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26BFC9D30()
{
  sub_26C00B05C();
  sub_26BFC9B28(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFC9D70(uint64_t a1)
{
  sub_26C00B05C();
  sub_26BFC9B28(v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFC9DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v48 = sub_26C00940C();
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C00950C();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v43 - v8;
  MEMORY[0x28223BE20](v7);
  v50 = &v43 - v9;
  v10 = sub_26C00936C();
  MEMORY[0x28223BE20](v10);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = _s9AttributeV5ValueV7StorageOMa(0);
  v12 = MEMORY[0x28223BE20](v51);
  v43 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v44 = (&v43 - v14);
  v15 = sub_26C00934C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v22 = a1;
  sub_26C0094EC();
  sub_26C00935C();
  sub_26BFCC858(&qword_28045ED78, MEMORY[0x277D6A8A8], MEMORY[0x277D6A8B0]);
  LOBYTE(a1) = sub_26C00A43C();
  v23 = *(v16 + 8);
  v23(v19, v15);
  if ((a1 & 1) == 0)
  {
    sub_26C0093FC();
    v33 = sub_26C00A43C();
    v23(v19, v15);
    v23(v21, v15);
    v25 = v53;
    v34 = *(v53 + 16);
    if ((v33 & 1) == 0)
    {
      v38 = v54;
      v34(v46, v22, v54);
      sub_26C00948C();
      (*(v25 + 8))(v22, v38);
      return swift_storeEnumTagMultiPayload();
    }

    v24 = v54;
    v34(v45, v22, v54);
    v35 = v47;
    v36 = v55;
    sub_26C0096EC();
    if (!v36)
    {
      v39 = MEMORY[0x26D699000](v35);
      v41 = v40;
      (*(v25 + 8))(v22, v24);
      v42 = v43;
      *v43 = v39;
      v42[1] = v41;
      swift_storeEnumTagMultiPayload();
      v32 = v42;
      return sub_26BFCCF88(v32, v52, _s9AttributeV5ValueV7StorageOMa);
    }

    return (*(v25 + 8))(v22, v24);
  }

  v23(v21, v15);
  v25 = v53;
  v24 = v54;
  (*(v53 + 16))(v50, v22, v54);
  v26 = v49;
  v27 = v55;
  sub_26C0096EC();
  if (v27)
  {
    return (*(v25 + 8))(v22, v24);
  }

  v28 = MEMORY[0x26D698FF0](v26);
  v30 = v29;
  (*(v25 + 8))(v22, v24);
  v31 = v44;
  *v44 = v28;
  v31[1] = v30;
  swift_storeEnumTagMultiPayload();
  v32 = v31;
  return sub_26BFCCF88(v32, v52, _s9AttributeV5ValueV7StorageOMa);
}

uint64_t sub_26BFCA334(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_26C0094DC();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00936C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00940C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s9AttributeV5ValueV7StorageOMa(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BFCCF20(v2, v15, _s9AttributeV5ValueV7StorageOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x26D697E30](*v15, v15[1]);
      sub_26C0096FC();
      return (*(v21 + 8))(v8, v6);
    }

    else
    {
      v20 = v22;
      v19 = v23;
      (*(v22 + 32))(v5, v15, v23);
      sub_26C0094CC();
      return (*(v20 + 8))(v5, v19);
    }
  }

  else
  {
    v18 = v24;
    sub_26C00941C();
    if (v18)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      sub_26C0096FC();
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_26BFCA698()
{
  *&v77 = 0;
  *&v76 = sub_26C00936C();
  MEMORY[0x28223BE20](v76);
  v75 = &v74 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_26C00940C();
  MEMORY[0x28223BE20](v2);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C0094DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v74 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  v15 = _s9AttributeV5ValueV7StorageOMa(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BFCCF20(v0, v17, _s9AttributeV5ValueV7StorageOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v65 = v6;
    (*(v6 + 32))(v14, v17, v5);
    v66 = *(v6 + 16);
    v66(v12, v14, v5);
    v67 = v77;
    sub_26C0095FC();
    *&v77 = v67;
    if (v67)
    {
      v68 = v77;
      v66(v9, v14, v5);
      v69 = v75;
      sub_26C0095FC();
      v72 = MEMORY[0x26D698FF0](v69);
      v19 = v73;

      (*(v65 + 8))(v14, v5);
      v18 = v72;
      *&v77 = 0;
    }

    else
    {
      v70 = MEMORY[0x26D699000](v4);
      v19 = v71;
      (*(v65 + 8))(v14, v5);
      v18 = v70;
    }
  }

  else
  {
    v18 = *v17;
    v19 = v17[1];
  }

  v20 = sub_26BFCC978(v18, v19);

  v22 = v20[2];
  if (v22)
  {
    v23 = 0;
    while (1)
    {
      v24 = *(v20 + v23 + 32);
      if (v24 != 32 && v24 != 35)
      {
        break;
      }

      if (v22 == ++v23)
      {
        goto LABEL_10;
      }
    }

    if (v22 >= v23)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

LABEL_12:
  if (v22 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v22;
  }

  if (v23)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v22 != v26)
  {
    v27 = v22;
    while (v27 > v26)
    {
      if (*(v20 + v27 + 31) != 32)
      {
        goto LABEL_25;
      }

      if (v25 == --v27)
      {
        v27 = v25;
LABEL_25:
        if (v22 < v27)
        {
          goto LABEL_76;
        }

        goto LABEL_26;
      }
    }

    goto LABEL_74;
  }

  v27 = v22;
LABEL_26:
  if (v27 < v23)
  {
    goto LABEL_75;
  }

  v74 = v22;
  swift_retain_n();
  v28 = MEMORY[0x277D84F90];
  v75 = v20;
  if (v23)
  {
    v29 = (v20 + 4);
    v77 = xmmword_26C0125B0;
    v30 = v23;
    while (1)
    {
      v31 = *v29++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
      result = swift_initStackObject();
      *(result + 16) = v77;
      *(result + 32) = 92;
      *(result + 33) = v31;
      v32 = *(v28 + 16);
      v33 = v32 + 2;
      if (__OFADD__(v32, 2))
      {
        break;
      }

      v34 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v35 = *(v28 + 24) >> 1, v35 < v33))
      {
        if (v32 <= v33)
        {
          v36 = v32 + 2;
        }

        else
        {
          v36 = v32;
        }

        result = sub_26BE29A50(result, v36, 1, v28);
        v28 = result;
        v35 = *(result + 24) >> 1;
      }

      v37 = *(v28 + 16);
      if (v35 - v37 < 2)
      {
        goto LABEL_69;
      }

      *(v28 + v37 + 32) = *(v34 + 32);

      v38 = *(v28 + 16);
      v39 = __OFADD__(v38, 2);
      v40 = v38 + 2;
      if (v39)
      {
        goto LABEL_70;
      }

      *(v28 + 16) = v40;
      if (!--v30)
      {
        goto LABEL_39;
      }
    }

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
    goto LABEL_77;
  }

LABEL_39:
  v79 = v28;
  result = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  v41 = v27 - v23;
  if (v27 != v23)
  {
    if (v27 <= v23)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v42 = &v75[v23 + 32];
    v77 = xmmword_26C0125B0;
    v43.i32[1] = 0;
    v76 = xmmword_26C011280;
    do
    {
      v46 = *v42++;
      v47 = v46;
      v43.i32[0] = *asc_287CBA160;
      v48 = v46 == asc_287CBA160[4];
      v49 = v46 == asc_287CBA160[5];
      v50 = asc_287CBA160[6];
      v51 = vmaxv_u16(vceq_s16((vmovl_u8(v43).u64[0] & 0xFF00FF00FF00FFLL), (*&vdup_n_s16(v46) & 0xFF00FF00FF00FFLL)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
      if ((v51 & 1) != 0 || v48 || v49 || v50 == v47)
      {
        v44 = swift_allocObject();
        *(v44 + 16) = v77;
        *(v44 + 32) = 92;
        v45 = (v44 + 33);
      }

      else
      {
        v44 = swift_allocObject();
        *(v44 + 16) = v76;
        v45 = (v44 + 32);
      }

      *v45 = v47;
      sub_26BE29964(v44);
      --v41;
    }

    while (v41);
    result = v78;
  }

  result = sub_26BE29964(result);
  v52 = v74 - v27;
  if (v74 != v27)
  {
    if (v74 <= v27)
    {
LABEL_78:
      __break(1u);
      return result;
    }

    v54 = &v75[v27 + 32];
    v53 = MEMORY[0x277D84F90];
    v77 = xmmword_26C0125B0;
    while (1)
    {
      v55 = *v54++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
      result = swift_initStackObject();
      *(result + 16) = v77;
      *(result + 32) = 92;
      *(result + 33) = v55;
      v56 = *(v53 + 16);
      v57 = v56 + 2;
      if (__OFADD__(v56, 2))
      {
        goto LABEL_71;
      }

      v58 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v59 = *(v53 + 24) >> 1, v59 < v57))
      {
        if (v56 <= v57)
        {
          v60 = v56 + 2;
        }

        else
        {
          v60 = v56;
        }

        result = sub_26BE29A50(result, v60, 1, v53);
        v53 = result;
        v59 = *(result + 24) >> 1;
      }

      v61 = *(v53 + 16);
      if (v59 - v61 < 2)
      {
        goto LABEL_72;
      }

      *(v53 + v61 + 32) = *(v58 + 32);

      v62 = *(v53 + 16);
      v39 = __OFADD__(v62, 2);
      v63 = v62 + 2;
      if (v39)
      {
        goto LABEL_73;
      }

      *(v53 + 16) = v63;
      if (!--v52)
      {
        goto LABEL_64;
      }
    }
  }

  v53 = MEMORY[0x277D84F90];
LABEL_64:
  swift_unknownObjectRelease();
  sub_26BE29964(v53);
  v64 = sub_26C00A56C();

  return v64;
}

uint64_t sub_26BFCAE8C(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t RandomAccessCollection.suffix(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v70 = a1;
  v71 = a2;
  v64 = a5;
  v69 = *(a4 + 8);
  v8 = *(v69 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v53 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_26C00A9EC();
  v58 = *(v14 - 8);
  v59 = v14;
  MEMORY[0x28223BE20](v14);
  v56 = &v53 - v15;
  v68 = swift_getAssociatedTypeWitness();
  v16 = *(v68 - 8);
  v17 = MEMORY[0x28223BE20](v68);
  v67 = &v53 - v18;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  sub_26C00A91C();
  sub_26C00A8FC();
  v63 = AssociatedConformanceWitness;
  v66 = *(AssociatedConformanceWitness + 8);
  v25 = sub_26C00A43C();
  v55 = v19;
  v28 = *(v19 + 8);
  v27 = v19 + 8;
  v26 = v28;
  v28(v22, AssociatedTypeWitness);
  if (v25)
  {
    sub_26C00A97C();
    return v26(v24, AssociatedTypeWitness);
  }

  else
  {
    v72 = v26;
    v73 = v8;
    v65 = v27;
    v30 = (v16 + 16);
    v31 = (v16 + 8);
    v32 = v24;
    while (1)
    {
      v33 = v22;
      v34 = AssociatedTypeWitness;
      sub_26C00A3DC();
      v35 = sub_26C00A9AC();
      v37 = v67;
      v36 = v68;
      (*v30)(v67);
      (v35)(v74, 0);
      LOBYTE(v35) = v70(v37);
      (*v31)(v37, v36);
      if ((v35 & 1) == 0)
      {
        break;
      }

      v22 = v33;
      sub_26C00A8FC();
      AssociatedTypeWitness = v34;
      v38 = sub_26C00A43C();
      v72(v33, v34);
      if (v38)
      {
        goto LABEL_8;
      }
    }

    sub_26C00A92C();
    AssociatedTypeWitness = v34;
    v22 = v33;
LABEL_8:
    sub_26C00A91C();
    result = sub_26C00A40C();
    if (result)
    {
      v39 = v6;
      v40 = v32;
      v41 = v55;
      v42 = *(v55 + 16);
      v43 = v57;
      v54 = v40;
      v42(v57, v40, AssociatedTypeWitness);
      v44 = TupleTypeMetadata2;
      v45 = *(TupleTypeMetadata2 + 48);
      v71 = v39;
      v46 = *(v41 + 32);
      v46(&v43[v45], v22, AssociatedTypeWitness);
      v48 = v60;
      v47 = v61;
      (*(v60 + 16))(v61, v43, v44);
      v70 = a3;
      v49 = *(v44 + 48);
      v50 = v56;
      v46(v56, v47, AssociatedTypeWitness);
      v72(&v47[v49], AssociatedTypeWitness);
      (*(v48 + 32))(v47, v43, v44);
      v51 = v59;
      v46(&v50[*(v59 + 36)], &v47[*(v44 + 48)], AssociatedTypeWitness);
      v52 = v72;
      v72(v47, AssociatedTypeWitness);
      sub_26C00A99C();
      (*(v58 + 8))(v50, v51);
      return v52(v54, AssociatedTypeWitness);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26BFCB560()
{
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFCC858(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  sub_26BFC9B28(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFCB604(uint64_t a1)
{
  sub_26C00947C();
  sub_26BFCC858(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  return sub_26BFC9B28(a1);
}

uint64_t sub_26BFCB690(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFCC858(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  sub_26BFC9B28(v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFCB730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_26C00945C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_26BFCCAA8(a1 + v6, a2 + v6);
}

uint64_t sub_26BFCB798()
{
  v1 = sub_26C00947C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  (*(v2 + 16))(v13 - v6, v0, v1);
  if (qword_28045E118 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_2804790F8);
  sub_26BFCC858(&qword_280460230, MEMORY[0x277D6A958], MEMORY[0x277D6A968]);
  if (sub_26C00A43C())
  {
    v8 = 0xE200000000000000;
    v9 = 20035;
  }

  else
  {
    if (qword_28045E110 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_2804790E0);
    if (sub_26C00A43C())
    {
      v8 = 0xE100000000000000;
      v9 = 67;
    }

    else
    {
      if (qword_28045E120 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v1, qword_280479110);
      if (sub_26C00A43C())
      {
        v8 = 0xE100000000000000;
        v9 = 76;
      }

      else
      {
        if (qword_28045E128 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1, qword_280479128);
        if (sub_26C00A43C())
        {
          v8 = 0xE200000000000000;
          v9 = 21587;
        }

        else
        {
          if (qword_28045E130 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1, qword_280479140);
          if (sub_26C00A43C())
          {
            v8 = 0xE100000000000000;
            v9 = 79;
          }

          else
          {
            if (qword_28045E138 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v1, qword_280479158);
            if (sub_26C00A43C())
            {
              v8 = 0xE200000000000000;
              v9 = 21839;
            }

            else
            {
              if (qword_28045E140 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v1, qword_280479170);
              if (sub_26C00A43C())
              {
                v8 = 0xE600000000000000;
                v9 = 0x544545525453;
              }

              else
              {
                (*(v2 + 32))(v5, v7, v1);
                sub_26BFCC858(&qword_28045E920, MEMORY[0x277D6A958], MEMORY[0x277D6A970]);
                v9 = sub_26C00AEFC();
                v8 = v10;
                v7 = v5;
              }
            }
          }
        }
      }
    }
  }

  (*(v2 + 8))(v7, v1);
  v13[0] = v9;
  v13[1] = v8;
  MEMORY[0x26D699090](61, 0xE100000000000000);
  _s9AttributeVMa(0);
  v11 = sub_26BFCA698();
  MEMORY[0x26D699090](v11);

  return v13[0];
}

void *sub_26BFCBC60@<X0>(uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = _s9AttributeV5ValueV7StorageOMa(0);
  MEMORY[0x28223BE20](v18);
  v19 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s9AttributeV5ValueVMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00934C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_26C00947C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0096AC();
  v11 = v20;
  result = sub_26C0096BC();
  if (!v11)
  {
    sub_26BFCC858(&qword_280460528, _s9AttributeV5ValueV7StorageOMa, &unk_26C0239B0);
    v13 = v19;
    sub_26C0095EC();
    sub_26BFCCF88(v13, v5, _s9AttributeV5ValueV7StorageOMa);
    v14 = v17;
    (*(v8 + 32))(v17, v10, v7);
    v15 = _s9AttributeVMa(0);
    return sub_26BFCCF88(v5, v14 + *(v15 + 20), _s9AttributeV5ValueVMa);
  }

  return result;
}

uint64_t sub_26BFCBF28(uint64_t a1, uint64_t a2)
{
  v4 = _s9AttributeV5ValueVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  result = sub_26C00976C();
  if (!v2)
  {
    v8 = _s9AttributeVMa(0);
    sub_26BFCCF20(a2 + *(v8 + 20), v6, _s9AttributeV5ValueVMa);
    _s9AttributeV5ValueV7StorageOMa(0);
    sub_26BFCC858(&qword_280460520, _s9AttributeV5ValueV7StorageOMa, &unk_26C023988);
    sub_26C00976C();
    return sub_26BFCCEA8(v6);
  }

  return result;
}

uint64_t sub_26BFCC058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C0097FC();
  v5 = sub_26C00934C();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_26C00950C();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t sub_26BFCC308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = _s9AttributeV5ValueVMa(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BFCC42C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C00947C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = _s9AttributeV5ValueVMa(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26BFCC548(uint64_t a1)
{
  result = sub_26C00947C();
  if (v2 <= 0x3F)
  {
    result = _s9AttributeV5ValueVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BFCC5E0(uint64_t a1, uint64_t a2)
{
  v4 = _s9AttributeV5ValueV7StorageOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFCC680(uint64_t a1, uint64_t a2)
{
  v4 = _s9AttributeV5ValueV7StorageOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BFCC6F0(uint64_t a1)
{
  result = _s9AttributeV5ValueV7StorageOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFCC75C(uint64_t a1)
{
  result = sub_26C0094DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFCC858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_26BFCC978(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26BF2E840(v5, 0);
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

  result = sub_26C00AC5C();
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
        v10 = sub_26C00A5EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26BF2E840(v10, 0);
        result = sub_26C00AC0C();
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

uint64_t sub_26BFCCAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s9AttributeV5ValueV7StorageOMa(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v32 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = (&v32 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460510, &qword_26C0239D8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - v18;
  v20 = (&v32 + *(v17 + 56) - v18);
  sub_26BFCCF20(a1, &v32 - v18, _s9AttributeV5ValueV7StorageOMa);
  sub_26BFCCF20(a2, v20, _s9AttributeV5ValueV7StorageOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_26BFCCF20(v19, v15, _s9AttributeV5ValueV7StorageOMa);
    v23 = *v15;
    v22 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_4:
      if (v23 == *v20 && v22 == v20[1])
      {
      }

      else
      {
        v25 = sub_26C00AF2C();

        if ((v25 & 1) == 0)
        {
          sub_26BFCCEA8(v19);
LABEL_16:
          v29 = 0;
          return v29 & 1;
        }
      }

      sub_26BFCCEA8(v19);
      v29 = 1;
      return v29 & 1;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_26BFCCF20(v19, v13, _s9AttributeV5ValueV7StorageOMa);
    v23 = *v13;
    v22 = v13[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_4;
    }

LABEL_11:

LABEL_15:
    sub_26BFCCE40(v19);
    goto LABEL_16;
  }

  sub_26BFCCF20(v19, v10, _s9AttributeV5ValueV7StorageOMa);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v32 + 8))(v10, v33);
    goto LABEL_15;
  }

  v26 = v32;
  v27 = v20;
  v28 = v33;
  (*(v32 + 32))(v6, v27, v33);
  v29 = sub_26C00949C();
  v30 = *(v26 + 8);
  v30(v6, v28);
  v30(v10, v28);
  sub_26BFCCEA8(v19);
  return v29 & 1;
}

uint64_t sub_26BFCCE40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460510, &qword_26C0239D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFCCEA8(uint64_t a1)
{
  v2 = _s9AttributeV5ValueV7StorageOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFCCF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFCCF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26BFCD000(void *a1)
{
  sub_26C00AC1C();

  sub_26BFCD3DC();
  v2 = sub_26C00AEFC();
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](8250, 0xE200000000000000);
  MEMORY[0x26D699090](a1[3], a1[4]);
  MEMORY[0x26D699090](32, 0xE100000000000000);
  MEMORY[0x26D699090](a1[5], a1[6]);
  MEMORY[0x26D699090](58, 0xE100000000000000);
  v3 = sub_26C00AEFC();
  MEMORY[0x26D699090](v3);

  return 0xD000000000000011;
}

uint64_t sub_26BFCD160()
{

  return swift_deallocClassInstance();
}

unint64_t sub_26BFCD1E8()
{
  result = qword_280460538;
  if (!qword_280460538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460538);
  }

  return result;
}

unint64_t sub_26BFCD240()
{
  result = qword_280460540;
  if (!qword_280460540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460540);
  }

  return result;
}

uint64_t sub_26BFCD298()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](*(v1 + 16));
  return sub_26C00B0CC();
}

uint64_t sub_26BFCD314(uint64_t a1)
{
  v2 = *v1;
  sub_26C00B05C();
  MEMORY[0x26D699B20](*(v2 + 16));
  return sub_26C00B0CC();
}

unint64_t sub_26BFCD378()
{
  result = qword_280460548;
  if (!qword_280460548)
  {
    _s16CertificateErrorV7BackingCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460548);
  }

  return result;
}

unint64_t sub_26BFCD3DC()
{
  result = qword_280460550;
  if (!qword_280460550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460550);
  }

  return result;
}

uint64_t sub_26BFCD438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  _s16CertificateErrorV7BackingCMa();
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;

  return v12;
}

uint64_t sub_26BFCD4C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26BFCD554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BFCD618()
{
  result = qword_280460558;
  if (!qword_280460558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460558);
  }

  return result;
}

uint64_t sub_26BFCD698(uint64_t a1, uint64_t a2)
{
  v4 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFCD738(uint64_t a1, uint64_t a2)
{
  v4 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BFCD7C8(uint64_t a1)
{
  result = _s9PublicKeyV16BackingPublicKeyOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFCD834(uint64_t a1)
{
  result = sub_26C00A18C();
  if (v2 <= 0x3F)
  {
    result = sub_26C00A25C();
    if (v3 <= 0x3F)
    {
      result = sub_26C00A2EC();
      if (v4 <= 0x3F)
      {
        result = sub_26C009BBC();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BFCD8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_26C009BBC();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C00A2EC();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00A25C();
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C00A18C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFCFD08(a1, v17, type metadata accessor for MLS.AlgorithmIdentifier);
  if (qword_28045DFF8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v15, qword_28045FF60);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v18, v17))
  {
    sub_26BFCFD8C(v17, type metadata accessor for MLS.AlgorithmIdentifier);
    type metadata accessor for MLS.SubjectPublicKeyInfo(0);
    v53 = sub_26C00958C();
    v54 = v19;
    v55 = v20;
    v56 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
    sub_26BFCFDEC();
    v22 = v57;
    sub_26C00A17C();
    result = sub_26BFCFD8C(a1, type metadata accessor for MLS.SubjectPublicKeyInfo);
    if (v22)
    {
      return result;
    }

    (*(v12 + 32))(v52, v14, v11);
    goto LABEL_21;
  }

  if (qword_28045E000 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v15, qword_28045FF78);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v24, v17))
  {
    sub_26BFCFD8C(v17, type metadata accessor for MLS.AlgorithmIdentifier);
    type metadata accessor for MLS.SubjectPublicKeyInfo(0);
    v53 = sub_26C00958C();
    v54 = v25;
    v55 = v26;
    v56 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
    sub_26BFCFDEC();
    v28 = v57;
    sub_26C00A24C();
    result = sub_26BFCFD8C(a1, type metadata accessor for MLS.SubjectPublicKeyInfo);
    if (v28)
    {
      return result;
    }

    (*(v51 + 32))(v52, v10, v8);
    goto LABEL_21;
  }

  if (qword_28045E008 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v15, qword_28045FF90);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v29, v17))
  {
    sub_26BFCFD8C(v17, type metadata accessor for MLS.AlgorithmIdentifier);
    type metadata accessor for MLS.SubjectPublicKeyInfo(0);
    v53 = sub_26C00958C();
    v54 = v30;
    v55 = v31;
    v56 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
    sub_26BFCFDEC();
    v33 = v57;
    sub_26C00A2DC();
    result = sub_26BFCFD8C(a1, type metadata accessor for MLS.SubjectPublicKeyInfo);
    if (v33)
    {
      return result;
    }

    (*(v48 + 32))(v52, v7, v49);
    goto LABEL_21;
  }

  if (qword_28045E010 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v15, qword_28045FFA8);
  v35 = _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v34, v17);
  sub_26BFCFD8C(v17, type metadata accessor for MLS.AlgorithmIdentifier);
  if (!v35)
  {
    v41 = MLS.AlgorithmIdentifier.description.getter();
    v43 = sub_26BFCD3CC(v41, v42, 0xD000000000000023, 0x800000026C02D7E0, 45);

    sub_26BED380C();
    swift_allocError();
    *v44 = v43;
    swift_willThrow();
    return sub_26BFCFD8C(a1, type metadata accessor for MLS.SubjectPublicKeyInfo);
  }

  type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v53 = sub_26C00958C();
  v54 = v36;
  v55 = v37;
  v56 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  sub_26BFCFDEC();
  v39 = v50;
  v40 = v57;
  sub_26C009BAC();
  result = sub_26BFCFD8C(a1, type metadata accessor for MLS.SubjectPublicKeyInfo);
  if (!v40)
  {
    (*(v46 + 32))(v52, v39, v47);
LABEL_21:
    _s9PublicKeyV16BackingPublicKeyOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_26BFCE01C()
{
  v1 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFCFD08(v0, v3, _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 0x6275502E36353250;
  v6 = 0x6275502E31323550;
  if (EnumCaseMultiPayload != 2)
  {
    v6 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload)
  {
    v5 = 0x6275502E34383350;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  sub_26BFCFD8C(v3, _s9PublicKeyV16BackingPublicKeyOMa);
  return v7;
}

uint64_t sub_26BFCE15C(uint64_t a1)
{
  v45 = a1;
  v2 = sub_26C009BBC();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C00A2EC();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00A25C();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C00A18C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFCFD08(v1, v17, _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v25 = v41;
      v24 = v42;
      (*(v41 + 32))(v7, v17, v42);
      v26 = MEMORY[0x26D699B20](2);
      v27 = MEMORY[0x26D698D70](v26);
      v29 = v28;
      sub_26C00911C();
      sub_26BE00258(v27, v29);
      return (*(v25 + 8))(v7, v24);
    }

    else
    {
      v36 = v43;
      v35 = v44;
      (*(v43 + 32))(v4, v17, v44);
      MEMORY[0x26D699B20](3);
      v37 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
      v39 = v38;
      sub_26C00911C();
      sub_26BE00258(v37, v39);
      return (*(v36 + 8))(v4, v35);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v30 = v40;
    (*(v40 + 32))(v10, v17, v8);
    v31 = MEMORY[0x26D699B20](1);
    v32 = MEMORY[0x26D698CE0](v31);
    v34 = v33;
    sub_26C00911C();
    sub_26BE00258(v32, v34);
    return (*(v30 + 8))(v10, v8);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v19 = MEMORY[0x26D699B20](0);
    v20 = MEMORY[0x26D698C10](v19);
    v22 = v21;
    sub_26C00911C();
    sub_26BE00258(v20, v22);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_26BFCE5F4()
{
  sub_26C00B05C();
  sub_26BFCE15C(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFCE63C(uint64_t a1)
{
  sub_26C00B05C();
  sub_26BFCE15C(v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFCE6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_26C009BBC();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C00A2EC();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00A25C();
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C00A18C();
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C00959C();
  v57 = *(v17 - 8);
  v58 = v17;
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  sub_26BFCFD08(a1, v16, _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v30 = v51;
      v29 = v52;
      (*(v51 + 32))(v7, v16, v52);
      if (qword_28045E008 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v19, qword_28045FF90);
      v32 = sub_26BFCFD08(v31, v21, type metadata accessor for MLS.AlgorithmIdentifier);
      v33 = MEMORY[0x26D698D80](v32);
      sub_26BF2E8B4(v33, v34);
      v28 = v56;
      sub_26C00957C();
      sub_26BFCFD8C(v59, _s9PublicKeyVMa);
      (*(v30 + 8))(v7, v29);
    }

    else
    {
      v40 = v53;
      v41 = v54;
      v42 = v55;
      (*(v54 + 32))(v53, v16, v55);
      if (qword_28045E010 != -1)
      {
        swift_once();
      }

      v43 = __swift_project_value_buffer(v19, qword_28045FFA8);
      sub_26BFCFD08(v43, v21, type metadata accessor for MLS.AlgorithmIdentifier);
      v44 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
      sub_26BF2E8B4(v44, v45);
      v28 = v56;
      sub_26C00957C();
      sub_26BFCFD8C(v59, _s9PublicKeyVMa);
      (*(v41 + 8))(v40, v42);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v35 = v50;
    (*(v50 + 32))(v10, v16, v8);
    if (qword_28045E000 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v19, qword_28045FF78);
    v37 = sub_26BFCFD08(v36, v21, type metadata accessor for MLS.AlgorithmIdentifier);
    v38 = MEMORY[0x26D698CF0](v37);
    sub_26BF2E8B4(v38, v39);
    v28 = v56;
    sub_26C00957C();
    sub_26BFCFD8C(v59, _s9PublicKeyVMa);
    (*(v35 + 8))(v10, v8);
  }

  else
  {
    v23 = v49;
    (*(v49 + 32))(v13, v16, v11);
    if (qword_28045DFF8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v19, qword_28045FF60);
    v25 = sub_26BFCFD08(v24, v21, type metadata accessor for MLS.AlgorithmIdentifier);
    v26 = MEMORY[0x26D698C20](v25);
    sub_26BF2E8B4(v26, v27);
    v28 = v56;
    sub_26C00957C();
    sub_26BFCFD8C(v59, _s9PublicKeyVMa);
    (*(v23 + 8))(v13, v11);
  }

  v46 = v60;
  sub_26BEE2E7C(v21, v60, type metadata accessor for MLS.AlgorithmIdentifier);
  v47 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  return (*(v57 + 32))(v46 + *(v47 + 20), v28, v58);
}

uint64_t sub_26BFCEE18@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v37 = a2;
  v4 = sub_26C00934C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00950C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v33 = &v32 - v16;
  v17 = *(v9 + 16);
  v36 = v8;
  v18 = v8;
  v19 = v37;
  v17(v11, a1, v18);
  v20 = *(v5 + 16);
  v38 = v4;
  v20(v7, v19, v4);
  v21 = v35;
  sub_26C0097FC();
  if (v21)
  {
    v22 = *(v5 + 8);
    v23 = v38;
    v22(v19, v38);
    v24 = *(v9 + 8);
    v25 = a1;
    v26 = v36;
    v24(v25, v36);
    v22(v7, v23);
    return (v24)(v11, v26);
  }

  else
  {
    v35 = a1;
    v28 = *(v5 + 8);
    v28(v7, v38);
    v29 = *(v9 + 8);
    v30 = v36;
    v29(v11, v36);
    v31 = v33;
    sub_26BEE2E7C(v15, v33, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26BFCD8D0(v31, v34);
    v28(v37, v38);
    return (v29)(v35, v30);
  }
}

uint64_t sub_26BFCF164(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26BFCFD08(v2, v4, _s9PublicKeyVMa);
  sub_26BFCE6C4(v4, v7);
  v10 = v7;
  sub_26C00973C();
  return sub_26BFCFD8C(v7, type metadata accessor for MLS.SubjectPublicKeyInfo);
}

uint64_t sub_26BFCF3E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_26BFCF4B8(uint64_t a1, uint64_t a2)
{
  v95 = a1;
  v96 = a2;
  v2 = sub_26C009BBC();
  v93 = *(v2 - 8);
  v94 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v86 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v85 = &v81 - v5;
  v6 = sub_26C00A2EC();
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v81 - v9;
  v10 = sub_26C00A25C();
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v82 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v81 - v13;
  v14 = sub_26C00A18C();
  v87 = *(v14 - 8);
  v88 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v81 - v18;
  v20 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v81 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v81 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v81 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804605A0, &qword_26C023E68);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v35 = &v81 - v34;
  v36 = *(v33 + 56);
  sub_26BFCFD08(v95, &v81 - v34, _s9PublicKeyV16BackingPublicKeyOMa);
  sub_26BFCFD08(v96, &v35[v36], _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_26BFCFD08(v35, v23, _s9PublicKeyV16BackingPublicKeyOMa);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v93 + 8))(v23, v94);
        goto LABEL_16;
      }

      v57 = v93;
      v56 = v94;
      v58 = *(v93 + 32);
      v59 = v85;
      v58(v85, v23, v94);
      v60 = v86;
      v58(v86, &v35[v36], v56);
      v61 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
      v63 = v62;
      v64 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
      v66 = v65;
      v54 = sub_26BE02DEC(v61, v63, v64, v65);
      sub_26BE00258(v64, v66);
      sub_26BE00258(v61, v63);
      v67 = *(v57 + 8);
      v67(v60, v56);
      v67(v59, v56);
LABEL_18:
      sub_26BFCFD8C(v35, _s9PublicKeyV16BackingPublicKeyOMa);
      return v54;
    }

    sub_26BFCFD08(v35, v26, _s9PublicKeyV16BackingPublicKeyOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v91 + 8))(v26, v92);
      goto LABEL_16;
    }

    v39 = v91;
    v38 = v92;
    v40 = *(v91 + 32);
    v41 = v83;
    v40(v83, v26, v92);
    v42 = v84;
    v43 = (v40)(v84, &v35[v36], v38);
    v44 = MEMORY[0x26D698D70](v43);
    v46 = v45;
    v47 = MEMORY[0x26D698D70]();
LABEL_10:
    v52 = v47;
    v53 = v48;
    v54 = sub_26BE02DEC(v44, v46, v47, v48);
    sub_26BE00258(v52, v53);
    sub_26BE00258(v44, v46);
    v55 = *(v39 + 8);
    v55(v42, v38);
    v55(v41, v38);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_26BFCFD08(v35, v29, _s9PublicKeyV16BackingPublicKeyOMa);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v89 + 8))(v29, v90);
      goto LABEL_16;
    }

    v39 = v89;
    v38 = v90;
    v49 = *(v89 + 32);
    v41 = v81;
    v49(v81, v29, v90);
    v42 = v82;
    v50 = (v49)(v82, &v35[v36], v38);
    v44 = MEMORY[0x26D698CE0](v50);
    v46 = v51;
    v47 = MEMORY[0x26D698CE0]();
    goto LABEL_10;
  }

  sub_26BFCFD08(v35, v31, _s9PublicKeyV16BackingPublicKeyOMa);
  if (!swift_getEnumCaseMultiPayload())
  {
    v68 = v87;
    v69 = *(v87 + 32);
    v70 = v31;
    v71 = v88;
    v69(v19, v70, v88);
    v72 = (v69)(v17, &v35[v36], v71);
    v73 = MEMORY[0x26D698C10](v72);
    v75 = v74;
    v76 = MEMORY[0x26D698C10]();
    v78 = v77;
    v54 = sub_26BE02DEC(v73, v75, v76, v77);
    sub_26BE00258(v76, v78);
    sub_26BE00258(v73, v75);
    v79 = *(v68 + 8);
    v79(v17, v71);
    v79(v19, v71);
    goto LABEL_18;
  }

  (*(v87 + 8))(v31, v88);
LABEL_16:
  sub_26BFCFCA0(v35);
  return 0;
}

uint64_t sub_26BFCFCA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804605A0, &qword_26C023E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFCFD08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFCFD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26BFCFDEC()
{
  result = qword_28045E418;
  if (!qword_28045E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E410, &qword_26C021270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E418);
  }

  return result;
}

uint64_t sub_26BFCFE74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFCFEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s18SignatureAlgorithmVMa(uint64_t a1)
{
  result = qword_2804605B0;
  if (!qword_2804605B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BFCFFB0(uint64_t a1)
{
  result = type metadata accessor for MLS.AlgorithmIdentifier(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFD001C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFD1808(a1, v6, type metadata accessor for MLS.AlgorithmIdentifier);
  if (qword_28045E038 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v4, qword_280460020);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v7, v6))
  {
    sub_26BFD1870(v6, type metadata accessor for MLS.AlgorithmIdentifier);
    if (qword_28045E030 != -1)
    {
      swift_once();
    }

    sub_26BFD1870(a1, type metadata accessor for MLS.AlgorithmIdentifier);
    v8 = qword_280460008;
LABEL_25:
    v12 = __swift_project_value_buffer(v4, v8);
    return sub_26BFD1808(v12, a2, type metadata accessor for MLS.AlgorithmIdentifier);
  }

  if (qword_28045E048 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280460050);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v9, v6))
  {
    sub_26BFD1870(v6, type metadata accessor for MLS.AlgorithmIdentifier);
    if (qword_28045E040 != -1)
    {
      swift_once();
    }

    sub_26BFD1870(a1, type metadata accessor for MLS.AlgorithmIdentifier);
    v8 = qword_280460038;
    goto LABEL_25;
  }

  if (qword_28045E058 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280460080);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v10, v6))
  {
    sub_26BFD1870(v6, type metadata accessor for MLS.AlgorithmIdentifier);
    if (qword_28045E050 != -1)
    {
      swift_once();
    }

    sub_26BFD1870(a1, type metadata accessor for MLS.AlgorithmIdentifier);
    v8 = qword_280460068;
    goto LABEL_25;
  }

  if (qword_28045E068 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_2804600B0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v11, v6))
  {
    sub_26BFD1870(v6, type metadata accessor for MLS.AlgorithmIdentifier);
    if (qword_28045E060 != -1)
    {
      swift_once();
    }

    sub_26BFD1870(a1, type metadata accessor for MLS.AlgorithmIdentifier);
    v8 = qword_280460098;
    goto LABEL_25;
  }

  sub_26BFD1870(a1, type metadata accessor for MLS.AlgorithmIdentifier);
  return sub_26BEC9E7C(v6, a2);
}

uint64_t sub_26BFD0404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s18SignatureAlgorithmVMa(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  v8 = *(v7 + 20);
  v9 = sub_26C0094DC();
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  sub_26BFD1808(a1, v6, _s18SignatureAlgorithmVMa);
  if (qword_28045E148 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280479188);
  if (sub_26BFD18D0(v10, v6))
  {
    goto LABEL_7;
  }

  if (qword_28045E170 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280479200);
  if (sub_26BFD18D0(v11, v6))
  {
LABEL_7:
    sub_26BFD1870(v6, _s18SignatureAlgorithmVMa);
    if (qword_28045E088 != -1)
    {
      swift_once();
    }

    v12 = qword_280460110;
LABEL_10:
    sub_26BFD1870(a1, _s18SignatureAlgorithmVMa);
    v13 = __swift_project_value_buffer(v7, v12);
    sub_26BE2E258(a2 + v8, &qword_28045EE48, &unk_26C022430);
    return sub_26BFD1808(v13, a2, type metadata accessor for MLS.AlgorithmIdentifier);
  }

  if (qword_28045E150 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_2804791A0);
  if (sub_26BFD18D0(v15, v6))
  {
    goto LABEL_17;
  }

  if (qword_28045E178 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_280479218);
  if (sub_26BFD18D0(v16, v6))
  {
LABEL_17:
    sub_26BFD1870(v6, _s18SignatureAlgorithmVMa);
    if (qword_28045E098 != -1)
    {
      swift_once();
    }

    v12 = qword_280460140;
    goto LABEL_10;
  }

  if (qword_28045E158 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_2804791B8);
  if (sub_26BFD18D0(v17, v6))
  {
    goto LABEL_26;
  }

  if (qword_28045E180 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_280479230);
  if (sub_26BFD18D0(v18, v6))
  {
LABEL_26:
    sub_26BFD1870(v6, _s18SignatureAlgorithmVMa);
    if (qword_28045E0A8 != -1)
    {
      swift_once();
    }

    v12 = qword_280460170;
    goto LABEL_10;
  }

  if (qword_28045E168 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v4, qword_2804791E8);
  v20 = sub_26BFD18D0(v19, v6);
  sub_26BFD1870(v6, _s18SignatureAlgorithmVMa);
  if (v20)
  {
    if (qword_28045E080 != -1)
    {
      swift_once();
    }

    v12 = qword_2804600F8;
    goto LABEL_10;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_26C00AC1C();

  v24 = 0xD000000000000025;
  v25 = 0x800000026C02D9A0;
  v21 = sub_26BFD12E4();
  MEMORY[0x26D699090](v21);

  v22 = sub_26BFCD3D4(v24, v25, 0xD000000000000021, 0x800000026C02D9D0, 150);

  sub_26BED380C();
  swift_allocError();
  *v23 = v22;
  swift_willThrow();
  sub_26BFD1870(a1, _s18SignatureAlgorithmVMa);
  return sub_26BE2E258(a2 + v8, &qword_28045EE48, &unk_26C022430);
}

uint64_t sub_26BFD0A2C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s18SignatureAlgorithmVMa(0);
  __swift_allocate_value_buffer(v11, a2);
  v12 = __swift_project_value_buffer(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  sub_26BFD1808(v13, v10, type metadata accessor for MLS.AlgorithmIdentifier);
  return sub_26BFD001C(v10, v12);
}

uint64_t sub_26BFD0C3C()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFD1BE8(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v8 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BEE2A7C(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_26C00B07C();
    sub_26BFD1BE8(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v2 + 8))(v4, v1);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFD0E78(uint64_t a1)
{
  v2 = sub_26C0094DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_26C00947C();
  sub_26BFD1BE8(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v9 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BEE2A7C(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_26C00B07C();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_26C00B07C();
  sub_26BFD1BE8(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
  sub_26C00A3CC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26BFD10A4(uint64_t a1)
{
  v2 = sub_26C0094DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFD1BE8(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v9 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BEE2A7C(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_26C00B07C();
    sub_26BFD1BE8(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v3 + 8))(v5, v2);
  }

  return sub_26C00B0CC();
}

unint64_t sub_26BFD12E4()
{
  v1 = v0;
  v2 = _s18SignatureAlgorithmVMa(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFD1808(v1, v4, _s18SignatureAlgorithmVMa);
  if (qword_28045E148 != -1)
  {
    swift_once();
  }

  v5 = 0xD000000000000022;
  v6 = __swift_project_value_buffer(v2, qword_280479188);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v6, v4))
  {
    goto LABEL_11;
  }

  if (qword_28045E150 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2804791A0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v7, v4))
  {
    goto LABEL_11;
  }

  if (qword_28045E158 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_2804791B8);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v8, v4))
  {
LABEL_11:
    sub_26BFD1870(v4, _s18SignatureAlgorithmVMa);
  }

  else
  {
    if (qword_28045E160 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v2, qword_2804791D0);
    if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v10, v4))
    {
      sub_26BFD1870(v4, _s18SignatureAlgorithmVMa);
      return 0xD00000000000001ALL;
    }

    else
    {
      if (qword_28045E168 != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v2, qword_2804791E8);
      if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v11, v4))
      {
        sub_26BFD1870(v4, _s18SignatureAlgorithmVMa);
        return 0xD000000000000028;
      }

      else
      {
        if (qword_28045E170 != -1)
        {
          swift_once();
        }

        v12 = __swift_project_value_buffer(v2, qword_280479200);
        if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v12, v4))
        {
          goto LABEL_24;
        }

        if (qword_28045E178 != -1)
        {
          swift_once();
        }

        v13 = __swift_project_value_buffer(v2, qword_280479218);
        if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v13, v4))
        {
LABEL_24:
          sub_26BFD1870(v4, _s18SignatureAlgorithmVMa);
        }

        else
        {
          if (qword_28045E180 != -1)
          {
            swift_once();
          }

          v14 = __swift_project_value_buffer(v2, qword_280479230);
          v15 = _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v14, v4);
          sub_26BFD1870(v4, _s18SignatureAlgorithmVMa);
          if (!v15)
          {
            v17 = 0;
            v18 = 0xE000000000000000;
            sub_26C00AC1C();

            v17 = 0xD000000000000013;
            v18 = 0x800000026C02D810;
            v16 = MLS.AlgorithmIdentifier.description.getter();
            MEMORY[0x26D699090](v16);

            MEMORY[0x26D699090](41, 0xE100000000000000);
            return v17;
          }
        }

        return 0xD00000000000002ALL;
      }
    }
  }

  return v5;
}

uint64_t sub_26BFD1808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFD1870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_26BFD18D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if ((sub_26C00945C() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for MLS.AlgorithmIdentifier(0) + 20);
  v15 = *(v11 + 48);
  sub_26BEE2A7C(a1 + v14, v13);
  sub_26BEE2A7C(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
      return 1;
    }

    goto LABEL_7;
  }

  sub_26BEE2A7C(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_26BE2E258(v13, &qword_28045F0D8, &unk_26C01A530);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_26BFD1BE8(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
  v18 = sub_26C00A43C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
  return (v18 & 1) != 0;
}

uint64_t sub_26BFD1BE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFD1C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = _s14descr287CB9999C9AttributeVMa(0);
  MEMORY[0x28223BE20](v32);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a2 + 16);
  if (v31)
  {
    v29 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v4;
    v26 = v5 + 16;
    v23[1] = a1;
    v24 = (v5 + 8);
    v11 = *(v8 + 72);
    v27 = v5;
    v28 = v11;
    v23[0] = a2;

    v12 = 0;
    v13 = 0;
    v30 = v10;
    v14 = v24;
    do
    {
      v33 = v13;
      v34 = v12;
      sub_26BFD2BC0(v29 + v28 * v13, v10);
      sub_26C00B0DC();
      sub_26C00947C();
      sub_26BFD2C80(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
      sub_26C00A3CC();
      v17 = *&v10[*(v32 + 20)];
      v18 = *(v17 + 16);
      if (v18)
      {
        v15 = 0;
        v19 = v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v35 = *(v27 + 72);
        v20 = *(v27 + 16);
        v21 = v25;
        do
        {
          v20(v7, v19, v21);
          sub_26C00B0DC();
          sub_26C0094AC();
          (*v14)(v7, v21);
          v53 = v38;
          v54 = v39;
          v55 = v40;
          v51 = v36;
          v52 = v37;
          v15 ^= sub_26C00B0BC();
          v19 += v35;
          --v18;
        }

        while (v18);
      }

      else
      {
        v15 = 0;
      }

      v13 = v33 + 1;
      MEMORY[0x26D699B20](v15);
      v48 = v43;
      v49 = v44;
      v50 = v45;
      v46 = v41;
      v47 = v42;
      v16 = sub_26C00B0BC();
      v10 = v30;
      sub_26BFD2C24(v30);
      v12 = v16 ^ v34;
    }

    while (v13 != v31);
  }

  else
  {
    v12 = 0;
  }

  return MEMORY[0x26D699B20](v12);
}

uint64_t sub_26BFD1F84()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26BFD1C44(v3, v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFD1FD4(uint64_t a1)
{
  v2 = *v1;
  sub_26C00B05C();
  sub_26BFD1C44(v4, v2);
  return sub_26C00B0CC();
}

uint64_t (*sub_26BFD2024(uint64_t (**a1)(), unint64_t *a2))()
{
  v5 = *(_s14descr287CB9999C9AttributeVMa(0) - 8);
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_26BFD2BC0(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result);
    return sub_26BFD2120;
  }

  __break(1u);
  return result;
}

void sub_26BFD2120(uint64_t *a1)
{
  v1 = *a1;
  sub_26BFD2C24(*a1);

  free(v1);
}

uint64_t sub_26BFD215C()
{
  v1 = sub_26BFB63DC(*v0);

  return v1;
}

uint64_t sub_26BFD219C(uint64_t a1)
{
  v22 = _s14descr287CB9999C9AttributeVMa(0);
  v2 = *(v22 - 8);
  v3 = MEMORY[0x28223BE20](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_26C00AC1C();

  strcpy(v25, "Attributes([");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v24 = MEMORY[0x277D84F90];
    sub_26BECB834(0, v8, 0);
    v9 = v24;
    v10 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v23 = *(v2 + 72);
    do
    {
      sub_26BFD2BC0(v10, v7);
      sub_26BFD2BC0(v7, v5);
      v11 = sub_26C00A51C();
      v13 = v12;
      sub_26BFD2C24(v7);
      v24 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26BECB834((v14 > 1), v15 + 1, 1);
        v9 = v24;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v10 += v23;
      --v8;
    }

    while (v8);
  }

  v24 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
  v17 = sub_26C00A3EC();
  v19 = v18;

  MEMORY[0x26D699090](v17, v19);

  MEMORY[0x26D699090](10589, 0xE200000000000000);
  return v25[0];
}

unint64_t sub_26BFD2478()
{
  result = qword_2804605D8;
  if (!qword_2804605D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804605D8);
  }

  return result;
}

unint64_t sub_26BFD2514()
{
  result = qword_2804605F0;
  if (!qword_2804605F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804605F0);
  }

  return result;
}

unint64_t sub_26BFD25B0()
{
  result = qword_280460600;
  if (!qword_280460600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460600);
  }

  return result;
}

uint64_t sub_26BFD2650(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804605E8, &qword_26C023FE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BFD26C8()
{
  result = qword_280460610;
  if (!qword_280460610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460610);
  }

  return result;
}

unint64_t sub_26BFD2720()
{
  result = qword_280460618;
  if (!qword_280460618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460618);
  }

  return result;
}

uint64_t sub_26BFD2774(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v47 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v37 - v8;
  v48 = _s14descr287CB9999C9AttributeVMa(0);
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12)
  {
    v36 = 1;
LABEL_22:

    return v36;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = *(v9 + 72);
  v16 = a1 + v14;
  v17 = a2 + v14;
  v53 = (v47 + 8);
  v54 = v47 + 16;
  v39 = a2;
  v40 = a1;
  v45 = v12;
  v46 = v11;
  v43 = a2 + v14;
  v44 = v15;
  v37 = a1 + v14;
  while (2)
  {
    v38 = v13 + 1;
    sub_26BFD2BC0(v16 + v15 * v13, v11);
    v51 = sub_26C00947C();
    v50 = sub_26BFD2C80(&qword_280460230, MEMORY[0x277D6A958], MEMORY[0x277D6A968]);

    v18 = 0;
    while (1)
    {
      v52 = v18;
      v19 = v17 + v18 * v15;
      result = sub_26C00A43C();
      if (result)
      {
        v21 = *(v48 + 20);
        v22 = *(v19 + v21);
        v23 = *(v22 + 16);
        v24 = *&v11[v21];
        if (v23 == *(v24 + 16))
        {
          break;
        }
      }

LABEL_6:
      v18 = v52 + 1;
      if (v52 + 1 == v12)
      {

        sub_26BFD2C24(v11);
        v36 = 0;
        goto LABEL_22;
      }
    }

    if (!v23)
    {
LABEL_17:

      sub_26BFD2C24(v11);
      v36 = 1;
      v16 = v37;
      v13 = v38;
      if (v38 != v12)
      {
        continue;
      }

      goto LABEL_22;
    }

    break;
  }

  v25 = 0;
  v41 = *(v22 + 16);
  v42 = v22;
  while (2)
  {
    if (v25 < *(v22 + 16))
    {
      v26 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v27 = *(v47 + 72);
      v28 = v25;
      v29 = *(v47 + 16);
      result = v29(v55, v22 + v26 + v27 * v25, v4);
      v49 = v28 + 1;
      v30 = v24 + v26;
      v31 = -*(v24 + 16);
      v32 = -1;
      do
      {
        if (v31 + v32 == -1)
        {
          (*v53)(v55, v4);
          v12 = v45;
          v11 = v46;
          v17 = v43;
          v15 = v44;
          goto LABEL_6;
        }

        if (++v32 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v33 = v30 + v27;
        (v29)(v7);
        sub_26BFD2C80(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
        v34 = sub_26C00A43C();
        v35 = *v53;
        result = (*v53)(v7, v4);
        v30 = v33;
      }

      while ((v34 & 1) == 0);
      result = v35(v55, v4);
      v22 = v42;
      v25 = v49;
      v12 = v45;
      v11 = v46;
      v17 = v43;
      v15 = v44;
      if (v49 != v41)
      {
        continue;
      }

      goto LABEL_17;
    }

    break;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_26BFD2BC0(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr287CB9999C9AttributeVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFD2C24(uint64_t a1)
{
  v2 = _s14descr287CB9999C9AttributeVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFD2C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFD2CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460620, &unk_26C0241E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFD2D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460620, &unk_26C0241E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s25RelativeDistinguishedNameVMa(uint64_t a1)
{
  result = qword_280460628;
  if (!qword_280460628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BFD2E30(uint64_t a1)
{
  sub_26BFD2E9C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26BFD2E9C(uint64_t a1)
{
  if (!qword_280460638)
  {
    v2 = _s9AttributeVMa(255);
    v5 = type metadata accessor for _TinyArray(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280460638);
    }
  }
}

uint64_t sub_26BFD2EF8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  sub_26BE2E1F0(v3, &v15 - v10, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(*v11 + 16);
  }

  else
  {
    result = sub_26BE2E258(v11, &qword_28045E520, &unk_26C016B80);
    v12 = 1;
  }

  if (v12 < a1)
  {
    __break(1u);
  }

  else
  {
    sub_26BE2E1F0(v3, v9, &qword_28045E520, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *(*v9 + 16);
    }

    else
    {
      result = sub_26BE2E258(v9, &qword_28045E520, &unk_26C016B80);
      v14 = 1;
    }

    if (v14 >= a2)
    {
      return a2 - a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFD3088@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s9AttributeVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  sub_26BE2E1F0(v3, v15 - v11, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(*v12 + 16) > a1)
    {
      sub_26BFD630C(*v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1, a2, _s9AttributeVMa);
    }

    __break(1u);
    goto LABEL_10;
  }

  sub_26BFD98B0(v12, v9, _s9AttributeVMa);
  if (a1)
  {
LABEL_10:
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_26C00AC1C();

    v16 = 0x207865646E69;
    v17 = 0xE600000000000000;
    v15[1] = a1;
    v14 = sub_26C00AEFC();
    MEMORY[0x26D699090](v14);

    MEMORY[0x26D699090](0x20666F2074756F20, 0xEE0073646E756F62);
    result = sub_26C00AD6C();
    __break(1u);
    return result;
  }

  return sub_26BFD98B0(v9, a2, _s9AttributeVMa);
}

uint64_t sub_26BFD3330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26BE2E1F0(v4, &v14 - v9, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(*v10 + 16);
  }

  else
  {
    result = sub_26BE2E258(v10, &qword_28045E520, &unk_26C016B80);
    v11 = 1;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (v11 >= a2)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460660, &qword_26C024370);
    result = sub_26BFD630C(v4, a3 + *(v13 + 40), _s25RelativeDistinguishedNameVMa);
    *a3 = a1;
    a3[1] = a2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFD3478(void (*a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v130 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v125 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v114 = &v111 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v117 = &v111 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v111 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v120 = &v111 - v12;
  MEMORY[0x28223BE20](v11);
  v129 = &v111 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EEF0, &unk_26C0212A0);
  MEMORY[0x28223BE20](v14 - 8);
  v128 = (&v111 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E588, &qword_26C00E4E8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v131 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v111 - v19;
  v21 = _s9AttributeVMa(0);
  v126 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v124 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v123 = &v111 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v112 = &v111 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v113 = &v111 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v115 = &v111 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v116 = &v111 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v111 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v111 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v119 = &v111 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v118 = &v111 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v122 = &v111 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v111 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v48);
  v50 = (&v111 - v49);
  sub_26BE2E1F0(v127, &v111 - v49, &qword_28045E520, &unk_26C016B80);
  v121 = v48;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v132 = v21;
  if (EnumCaseMultiPayload != 1)
  {
    sub_26BFD98B0(v50, v47, _s9AttributeVMa);
    v58 = v128;
    sub_26BE2E1F0(v130, v128, &qword_28045EEF0, &unk_26C0212A0);
    v59 = v58;
    v60 = v129;
    sub_26BFD98B0(v59, v129, _s9AttributeVMa);
    v61 = v126;
    v62 = v126 + 56;
    v63 = *(v126 + 56);
    v63(v60, 0, 1, v21);
    v63(v20, 1, 1, v21);
    sub_26BE33EC0(v60, v20);
    v64 = v120;
    sub_26BFA724C(v20, v120);
    v130 = v63;
    v131 = v62;
    v63(v20, 1, 1, v21);
    v128 = *(v61 + 48);
    v129 = v61 + 48;
    if ((v128)(v64, 1, v21) != 1)
    {
      v66 = v61;
      v67 = v21;
      sub_26BE2E258(v127, &qword_28045E520, &unk_26C016B80);
      sub_26BFD98B0(v64, v122, _s9AttributeVMa);
      v68 = sub_26BEECB54(0, 2, 0, MEMORY[0x277D84F90]);
      v125 = v47;
      sub_26BFD630C(v47, v118, _s9AttributeVMa);
      v70 = v68[2];
      v69 = v68[3];
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v68 = sub_26BEECB54((v69 > 1), v70 + 1, 1, v68);
      }

      v68[2] = v71;
      v72 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v73 = *(v66 + 72);
      sub_26BFD98B0(v118, v68 + v72 + v73 * v70, _s9AttributeVMa);
      sub_26BFD630C(v122, v119, _s9AttributeVMa);
      v74 = v68[3];
      v75 = v70 + 2;
      if (v75 > (v74 >> 1))
      {
        v68 = sub_26BEECB54((v74 > 1), v75, 1, v68);
      }

      v68[2] = v75;
      sub_26BFD98B0(v119, v68 + v72 + v73 * v71, _s9AttributeVMa);
      sub_26BFA724C(v20, v10);
      v130(v20, 1, 1, v67);
      v76 = v10;
      for (i = v67; (v128)(v76, 1, i) != 1; i = v80)
      {
        sub_26BFD98B0(v10, v39, _s9AttributeVMa);
        sub_26BFD630C(v39, v36, _s9AttributeVMa);
        v79 = v68[2];
        v78 = v68[3];
        if (v79 >= v78 >> 1)
        {
          v68 = sub_26BEECB54((v78 > 1), v79 + 1, 1, v68);
        }

        sub_26BFD9850(v39, _s9AttributeVMa);
        v68[2] = v79 + 1;
        sub_26BFD98B0(v36, v68 + v72 + v79 * v73, _s9AttributeVMa);
        sub_26BFA724C(v20, v10);
        v80 = v132;
        v130(v20, 1, 1, v132);
        v76 = v10;
      }

      sub_26BE2E258(v10, &qword_28045E528, &qword_26C00E4B0);
      sub_26BFD9850(v122, _s9AttributeVMa);
      sub_26BFD9850(v125, _s9AttributeVMa);
      sub_26BE2E258(v20, &qword_28045E588, &qword_26C00E4E8);
      *v127 = v68;
      return swift_storeEnumTagMultiPayload();
    }

    sub_26BFD9850(v47, _s9AttributeVMa);
    sub_26BE2E258(v20, &qword_28045E588, &qword_26C00E4E8);
    v65 = v64;
    return sub_26BE2E258(v65, &qword_28045E528, &qword_26C00E4B0);
  }

  v53 = v128;
  v52 = v129;
  v54 = v130;
  v55 = v126;
  v133 = *v50;
  v56 = v133;
  if (v133[2])
  {
    v57 = v127;
    sub_26BE2E258(v127, &qword_28045E520, &unk_26C016B80);
    sub_26BE2E1F0(v54, v53, &qword_28045EEF0, &unk_26C0212A0);
    sub_26BF9EA00(v53);
    *v57 = v133;
    return swift_storeEnumTagMultiPayload();
  }

  sub_26BE2E1F0(v130, v128, &qword_28045EEF0, &unk_26C0212A0);
  sub_26BFD98B0(v53, v52, _s9AttributeVMa);
  v82 = *(v55 + 56);
  v83 = v132;
  v82(v52, 0, 1, v132);
  v84 = v131;
  v82(v131, 1, 1, v83);
  sub_26BE33EC0(v52, v84);
  v85 = v117;
  sub_26BFA724C(v84, v117);
  v82(v84, 1, 1, v83);
  v86 = *(v55 + 48);
  if ((v86)(v85, 1, v83) == 1)
  {
    sub_26BE2E258(v84, &qword_28045E588, &qword_26C00E4E8);

    v65 = v85;
    return sub_26BE2E258(v65, &qword_28045E528, &qword_26C00E4B0);
  }

  sub_26BE2E258(v127, &qword_28045E520, &unk_26C016B80);
  v87 = v116;
  sub_26BFD98B0(v85, v116, _s9AttributeVMa);
  v88 = v114;
  sub_26BFA724C(v84, v114);
  v82(v84, 1, 1, v83);
  v130 = v86;
  v89 = (v86)(v88, 1, v83);
  if (v89 != 1)
  {
    v90 = v87;
    sub_26BFD98B0(v88, v115, _s9AttributeVMa);
    v91 = v56[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v91 >= v56[3] >> 1)
    {
      v56 = sub_26BEECB54(isUniquelyReferenced_nonNull_native, v91 + 1, 0, v56);
    }

    v93 = v112;
    sub_26BFD630C(v90, v113, _s9AttributeVMa);
    v95 = v56[2];
    v94 = v56[3];
    v96 = v95 + 1;
    if (v95 >= v94 >> 1)
    {
      v56 = sub_26BEECB54((v94 > 1), v95 + 1, 1, v56);
    }

    v56[2] = v96;
    v97 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v98 = *(v55 + 72);
    sub_26BFD98B0(v113, v56 + v97 + v98 * v95, _s9AttributeVMa);
    sub_26BFD630C(v115, v93, _s9AttributeVMa);
    v99 = v56[3];
    v100 = v95 + 2;
    if (v100 > (v99 >> 1))
    {
      v56 = sub_26BEECB54((v99 > 1), v100, 1, v56);
    }

    v56[2] = v100;
    sub_26BFD98B0(v93, v56 + v97 + v98 * v96, _s9AttributeVMa);
    v133 = v56;
    v101 = v131;
    v102 = v125;
    sub_26BFA724C(v131, v125);
    v82(v101, 1, 1, v83);
    if ((v130)(v102, 1, v83) != 1)
    {
      v103 = v123;
      v104 = v124;
      do
      {
        sub_26BFD98B0(v102, v103, _s9AttributeVMa);
        sub_26BFD630C(v103, v104, _s9AttributeVMa);
        v106 = v56[2];
        v105 = v56[3];
        if (v106 >= v105 >> 1)
        {
          v56 = sub_26BEECB54((v105 > 1), v106 + 1, 1, v56);
        }

        v103 = v123;
        sub_26BFD9850(v123, _s9AttributeVMa);
        v56[2] = v106 + 1;
        v107 = v56 + v97 + v106 * v98;
        v104 = v124;
        sub_26BFD98B0(v124, v107, _s9AttributeVMa);
        v108 = v131;
        v102 = v125;
        sub_26BFA724C(v131, v125);
        v109 = v108;
        v110 = v132;
        v82(v109, 1, 1, v132);
      }

      while ((v130)(v102, 1, v110) != 1);
    }

    sub_26BE2E258(v102, &qword_28045E528, &qword_26C00E4B0);
    sub_26BFD9850(v115, _s9AttributeVMa);
    sub_26BFD9850(v116, _s9AttributeVMa);
    sub_26BE2E258(v131, &qword_28045E588, &qword_26C00E4E8);
    *v127 = v56;
    return swift_storeEnumTagMultiPayload();
  }

  sub_26BE2E258(v84, &qword_28045E588, &qword_26C00E4E8);

  sub_26BE2E258(v88, &qword_28045E528, &qword_26C00E4B0);
  sub_26BFD98B0(v87, v127, _s9AttributeVMa);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26BFD4328(char *a1)
{
  v3 = _s9AttributeVMa(0);
  v62 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v58 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v57 = &v55 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v59 = &v55 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v55 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v55 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v55 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v55 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v63 = &v55 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v55 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v27);
  v29 = (&v55 - v28);
  v31 = v30;
  sub_26BE2E1F0(v1, &v55 - v28, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = *v29;
    v16 = v64;
    if (v64[2])
    {
      sub_26BE2E258(v1, &qword_28045E520, &unk_26C016B80);

      sub_26BF9F0F8(v32);
      *v1 = v64;
      return swift_storeEnumTagMultiPayload();
    }

    v42 = *(a1 + 2);
    if (v42)
    {
      v43 = v1;
      v35 = v62;
      v22 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v55 = a1;
      sub_26BE2E258(v43, &qword_28045E520, &unk_26C016B80);
      v44 = v61;
      sub_26BFD630C(&a1[v22], v61, _s9AttributeVMa);
      if (v42 == 1)
      {

        sub_26BFD98B0(v44, v43, _s9AttributeVMa);
        return swift_storeEnumTagMultiPayload();
      }

      v33 = v35[9];
      sub_26BFD630C(&a1[v22 + v33], v60, _s9AttributeVMa);
      v48 = v16[2];
      v49 = v48 + v42;
      if (__OFADD__(v48, v42))
      {
        __break(1u);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a1 = v57;
        v35 = v58;
        if (!isUniquelyReferenced_nonNull_native || v49 > v16[3] >> 1)
        {
          if (v48 <= v49)
          {
            v51 = v48 + v42;
          }

          else
          {
            v51 = v48;
          }

          v16 = sub_26BEECB54(isUniquelyReferenced_nonNull_native, v51, 0, v16);
        }

        sub_26BFD630C(v61, v59, _s9AttributeVMa);
        v49 = v16[2];
        v47 = v16[3];
        v48 = v49 + 1;
        if (v49 < v47 >> 1)
        {
LABEL_30:
          v16[2] = v48;
          sub_26BFD98B0(v59, v16 + v22 + v49 * v33, _s9AttributeVMa);
          sub_26BFD630C(v60, a1, _s9AttributeVMa);
          v52 = v16[3];
          v37 = v49 + 2;
          if (v37 > (v52 >> 1))
          {
            v16 = sub_26BEECB54((v52 > 1), v37, 1, v16);
          }

          v16[2] = v37;
          sub_26BFD98B0(a1, v16 + v22 + v48 * v33, _s9AttributeVMa);
          v64 = v16;
          v38 = v42 - 2;
          if (v42 == 2)
          {
LABEL_33:
            sub_26BFD9850(v60, _s9AttributeVMa);
            sub_26BFD9850(v61, _s9AttributeVMa);
            *v43 = v16;
          }

          else
          {
            v36 = v22 + 2 * v33;
            v19 = &v55[v36];
            while (v38)
            {
              sub_26BFD630C(v19, v35, _s9AttributeVMa);
              v54 = v16[2];
              v53 = v16[3];
              v37 = v54 + 1;
              if (v54 >= v53 >> 1)
              {
                v16 = sub_26BEECB54((v53 > 1), v54 + 1, 1, v16);
              }

              v16[2] = v37;
              sub_26BFD98B0(v35, v16 + v22 + v54 * v33, _s9AttributeVMa);
              v19 += v33;
              if (!--v38)
              {
                goto LABEL_33;
              }
            }

            while (1)
            {
              __break(1u);
LABEL_42:
              v35 = sub_26BEECB54((v36 > 1), v38, 1, v35);
LABEL_6:
              v35[2] = v38;
              v39 = *(v62 + 72);
              sub_26BFD98B0(v22, v35 + v31 + v39 * v37, _s9AttributeVMa);
              sub_26BFD630C(v63, v19, _s9AttributeVMa);
              v40 = v35[3];
              v37 += 2;
              if (v37 > (v40 >> 1))
              {
                v35 = sub_26BEECB54((v40 > 1), v37, 1, v35);
              }

              v35[2] = v37;
              sub_26BFD98B0(v19, v35 + v31 + v39 * v38, _s9AttributeVMa);
              if (v33 == 1)
              {
                break;
              }

              v36 = v39 + v31;
              v19 = &v55[v39 + v31];
              v38 = 1;
              while (1)
              {
                v22 = v38 + 1;
                if (__OFADD__(v38, 1))
                {
                  break;
                }

                sub_26BFD630C(v19, v16, _s9AttributeVMa);
                v46 = v35[2];
                v45 = v35[3];
                v37 = v46 + 1;
                if (v46 >= v45 >> 1)
                {
                  v35 = sub_26BEECB54((v45 > 1), v46 + 1, 1, v35);
                }

                v35[2] = v37;
                sub_26BFD98B0(v16, v35 + v31 + v46 * v39, _s9AttributeVMa);
                ++v38;
                v19 += v39;
                if (v22 == v33)
                {
                  goto LABEL_9;
                }
              }

              __break(1u);
            }

LABEL_9:
            sub_26BFD9850(v63, _s9AttributeVMa);
            sub_26BFD9850(v60, _s9AttributeVMa);
            *v56 = v35;
          }

          return swift_storeEnumTagMultiPayload();
        }
      }

      v16 = sub_26BEECB54((v47 > 1), v48, 1, v16);
      goto LABEL_30;
    }
  }

  else
  {
    sub_26BFD98B0(v29, v26, _s9AttributeVMa);
    v33 = *(a1 + 2);
    if (v33)
    {
      v61 = v31;
      v31 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v34 = v1;
      sub_26BE2E258(v1, &qword_28045E520, &unk_26C016B80);
      v55 = a1;
      sub_26BFD630C(&a1[v31], v63, _s9AttributeVMa);
      v35 = sub_26BEECB54(0, v33 + 1, 0, MEMORY[0x277D84F90]);
      v60 = v26;
      sub_26BFD630C(v26, v22, _s9AttributeVMa);
      v37 = v35[2];
      v36 = v35[3];
      v38 = v37 + 1;
      v56 = v34;
      if (v37 < v36 >> 1)
      {
        goto LABEL_6;
      }

      goto LABEL_42;
    }

    return sub_26BFD9850(v26, _s9AttributeVMa);
  }
}

uint64_t sub_26BFD4B74()
{
  sub_26C00B05C();
  sub_26BFDBB64(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFD4BB8(uint64_t a1)
{
  sub_26C00B05C();
  sub_26BFDBB64(v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFD4BF8@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = __OFSUB__(*a1, 1);
  v10 = *a1 - 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_26BE2E1F0(v2, v8, &qword_28045E520, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *(*v8 + 16);
    }

    else
    {
      result = sub_26BE2E258(v8, &qword_28045E520, &unk_26C016B80);
      v11 = 1;
    }

    if (v10 < v11)
    {
      *a2 = v10;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFD4D00(unint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  result = MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_26BE2E1F0(v1, v6, &qword_28045E520, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = *(*v6 + 16);
    }

    else
    {
      result = sub_26BE2E258(v6, &qword_28045E520, &unk_26C016B80);
      v8 = 1;
    }

    if (v7 < v8)
    {
      *a1 = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFD4E08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  result = MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = __OFADD__(*a1, a2);
  v12 = *a1 + a2;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_26BE2E1F0(v3, v10, &qword_28045E520, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = *(*v10 + 16);
    }

    else
    {
      result = sub_26BE2E258(v10, &qword_28045E520, &unk_26C016B80);
      v13 = 1;
    }

    if (v12 <= v13)
    {
      *a3 = v12;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFD4F14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_26BFB2C98(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_26BFD4F6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_26BE2E1F0(v2, &v9 - v5, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(*v6 + 16);
  }

  else
  {
    result = sub_26BE2E258(v6, &qword_28045E520, &unk_26C016B80);
    v7 = 1;
  }

  *a1 = v7;
  return result;
}

void (*sub_26BFD5058(uint64_t *a1, unint64_t *a2))(uint64_t *a1)
{
  v4 = *(*(_s9AttributeVMa(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *a1 = v5;
  sub_26BFD3088(*a2, v5);
  return sub_26BFD50EC;
}

void sub_26BFD50EC(uint64_t *a1)
{
  v1 = *a1;
  sub_26BFD9850(*a1, _s9AttributeVMa);

  free(v1);
}

uint64_t sub_26BFD5148@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_26BE2E1F0(v2, &v9 - v5, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(*v6 + 16);
  }

  else
  {
    result = sub_26BE2E258(v6, &qword_28045E520, &unk_26C016B80);
    v7 = 1;
  }

  *a1 = 0;
  a1[1] = v7;
  return result;
}

BOOL sub_26BFD5234()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  sub_26BE2E1F0(v0, &v6 - v2, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(*v3 + 16);

    return v4 == 0;
  }

  else
  {
    sub_26BE2E258(v3, &qword_28045E520, &unk_26C016B80);
    return 0;
  }
}

uint64_t sub_26BFD531C@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *a1;
  sub_26BE2E1F0(v3, &v12 - v7, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(*v8 + 16);
  }

  else
  {
    result = sub_26BE2E258(v8, &qword_28045E520, &unk_26C016B80);
    v10 = 1;
  }

  if (v9 >= v10)
  {
    __break(1u);
  }

  else
  {
    *a2 = v9 + 1;
  }

  return result;
}

uint64_t sub_26BFD5428(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *a1;
  sub_26BE2E1F0(v2, &v10 - v5, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(*v6 + 16);
  }

  else
  {
    result = sub_26BE2E258(v6, &qword_28045E520, &unk_26C016B80);
    v8 = 1;
  }

  if (v7 >= v8)
  {
    __break(1u);
  }

  else
  {
    *a1 = v7 + 1;
  }

  return result;
}

uint64_t sub_26BFD5530@<X0>(uint64_t a1@<X8>)
{
  sub_26BFD98B0(v1, a1, _s25RelativeDistinguishedNameVMa);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E530, &unk_26C022480);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26BFD5590()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  sub_26BE2E1F0(v0, &v6 - v2, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(*v3 + 16);
  }

  else
  {
    sub_26BE2E258(v3, &qword_28045E520, &unk_26C016B80);
    v4 = 1;
  }

  return sub_26BFD2EF8(0, v4);
}

void *sub_26BFD567C()
{
  v1 = sub_26BFB61A0(v0);
  sub_26BFD9850(v0, _s25RelativeDistinguishedNameVMa);
  return v1;
}

uint64_t sub_26BFD56C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BFCB798();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BFD56F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460698, &qword_26C024578);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606A0, &unk_26C024580);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_26BFD630C(v0, v3, _s25RelativeDistinguishedNameVMa);
  sub_26BFD98B0(v3, v6, _s25RelativeDistinguishedNameVMa);
  v7 = &v6[*(v4 + 44)];
  *v7 = sub_26BFD56C8;
  v7[1] = 0;
  sub_26BFD9918();
  v8 = sub_26C00A3EC();
  sub_26BE2E258(v6, &qword_2804606A0, &unk_26C024580);
  return v8;
}

uint64_t sub_26BFD5864(uint64_t a1)
{
  sub_26BFD9B68(&qword_280460310, _s25RelativeDistinguishedNameVMa, &unk_26C0242CC);
  sub_26C00AEFC();
  return sub_26C00A51C();
}

uint64_t sub_26BFD58E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_26C00978C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  sub_26C00977C();
  _s9AttributeVMa(0);
  sub_26BFD9B68(&qword_280460500, _s9AttributeVMa, &unk_26C023810);
  sub_26C00976C();
  if (v2)
  {
    (*(v4 + 8))(v9, v3);
  }

  else
  {
    v11 = sub_26C00971C();
    v30 = 0;
    v31 = v11;
    sub_26C00977C();
    v12 = *(v4 + 8);
    v12(v9, v3);
    (*(v4 + 32))(v9, v7, v3);
    v13 = v30;
    sub_26C00976C();
    if (v13)
    {
      v12(v9, v3);
    }

    else
    {
      result = sub_26C00971C();
      v15 = result;
      v16 = 0;
      v17 = *(v31 + 16);
      while (v17 != v16)
      {
        v18 = *(result + 16);
        if (v16 == v18)
        {
          break;
        }

        if (v16 >= v18)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v19 = *(v31 + v16 + 32);
        v20 = *(result + v16 + 32);
        if (v19 < v20)
        {
          v12(v9, v3);

          v10 = 1;
          return v10 & 1;
        }

        ++v16;
        if (v20 < v19)
        {
          v12(v9, v3);

LABEL_15:
          v10 = 0;
          return v10 & 1;
        }
      }

      result = sub_26BFCAE8C(v17, v15);
      v24 = v23 >> 1;
      v25 = (v23 >> 1) - v22;
      if (__OFSUB__(v23 >> 1, v22))
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if (v23 >> 1 == v22)
      {
        v12(v9, v3);
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      if (v22 > v24)
      {
        v24 = v22;
      }

      v26 = v24 - v22;
      v27 = (v21 + v22);
      while (v25)
      {
        if (!v26)
        {
          goto LABEL_27;
        }

        v28 = *v27++;
        --v26;
        --v25;
        if (v28)
        {
          swift_unknownObjectRelease();
          v12(v9, v3);
          v10 = 1;
          return v10 & 1;
        }
      }

      swift_unknownObjectRelease();
      v12(v9, v3);
      v10 = 0;
    }
  }

  return v10 & 1;
}

uint64_t sub_26BFD5C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s9AttributeVMa(0);
  sub_26BFD9B68(&qword_2804604F8, _s9AttributeVMa, &unk_26C023838);
  v7 = sub_26C0097DC();
  if (!v3)
  {
    *a3 = MEMORY[0x277D84F90];
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
    swift_storeEnumTagMultiPayload();
    sub_26BFD4328(v8);

    sub_26BFD99CC(a3);
  }

  v9 = sub_26C00934C();
  (*(*(v9 - 8) + 8))(a2, v9);
  v10 = sub_26C00950C();
  return (*(*(v10 - 8) + 8))(a1, v10);
}

uint64_t sub_26BFD5DC0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460620, &unk_26C0241E0);
  sub_26BE13630(&qword_2804606B0, &qword_280460620, &unk_26C0241E0, &unk_26C023480);
  sub_26BFD9B68(&qword_280460500, _s9AttributeVMa, &unk_26C023810);
  return sub_26C00970C();
}

uint64_t sub_26BFD6228(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460660, &qword_26C024370);
    sub_26BFD9B68(a2, _s25RelativeDistinguishedNameVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BFD630C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_26BFD6374(char *result, int64_t a2, char a3, char *a4)
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

void *sub_26BFD6480(void *result, int64_t a2, char a3, void *a4)
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

char *sub_26BFD65C8(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD66D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F210, &unk_26C024620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_26BFD67E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E578, &unk_26C024610);
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

char *sub_26BFD68EC(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD69F0(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD6B18(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD6C24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606E0, &unk_26C024640);
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
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_26BFD6D24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606E8, &qword_26C024678);
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

void *sub_26BFD6E30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606C0, &unk_26C0245B0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE08, &qword_26C016570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26BFD6F88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_26BFD7170(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD7274(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1D0, &unk_26C024650);
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

char *sub_26BFD7394(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26BFD74A0(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD75DC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_26BFD76D8(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD7800(char *result, int64_t a2, char a3, char *a4)
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

void *sub_26BFD7920(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606D8, &unk_26C024600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA28, &qword_26C01D618);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26BFD7A68(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606B8, &unk_26C024590);
  v10 = *(type metadata accessor for MLS.SubjectPublicKeyInfo(0) - 8);
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
  v15 = *(type metadata accessor for MLS.SubjectPublicKeyInfo(0) - 8);
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

char *sub_26BFD7C40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606C8, &unk_26C0245C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_26BFD7D3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F260, &qword_26C01A8A0);
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

char *sub_26BFD7E68(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD7F90(char *result, int64_t a2, char a3, char *a4)
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

uint64_t sub_26BFD80BC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26C00AEEC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        _s9AttributeVMa(0);
        v6 = sub_26C00A74C();
        *(v6 + 16) = v5;
      }

      v7 = *(_s9AttributeVMa(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26BFD8448(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26BFD81E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BFD81E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = _s9AttributeVMa(0);
  v9 = MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_26BFD630C(v23, v17, _s9AttributeVMa);
      sub_26BFD630C(v20, v13, _s9AttributeVMa);
      v24 = sub_26BFD58E0(v17, v13);
      sub_26BFD9850(v13, _s9AttributeVMa);
      result = sub_26BFD9850(v17, _s9AttributeVMa);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v33)
        {
          __break(1u);
          return result;
        }

        v25 = v34;
        sub_26BFD98B0(v23, v34, _s9AttributeVMa);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_26BFD98B0(v25, v20, _s9AttributeVMa);
        v20 += v21;
        v23 += v21;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_26BFD8448(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v126 = _s9AttributeVMa(0);
  v9 = *(v126 - 8);
  v10 = MEMORY[0x28223BE20](v126);
  v123 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v125 = &v108 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v113 = &v108 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v119 = &v108 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v108 - v21;
  result = MEMORY[0x28223BE20](v20);
  v27 = &v108 - v24;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_97:
    v5 = *v121;
    if (*v121)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_99;
    }

    goto LABEL_139;
  }

  v127 = v26;
  v124 = v25;
  v115 = a4;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v117 = &v108 - v24;
  v118 = v22;
  v122 = a3;
  v114 = v9;
  while (1)
  {
    if (v29 + 1 >= v28)
    {
      v37 = v29 + 1;
    }

    else
    {
      v129 = v28;
      v31 = *a3;
      v32 = *(v9 + 72);
      v5 = v31 + v32 * (v29 + 1);
      sub_26BFD630C(v5, v27, _s9AttributeVMa);
      v130 = v31;
      sub_26BFD630C(v31 + v32 * v29, v22, _s9AttributeVMa);
      LODWORD(v128) = sub_26BFD58E0(v27, v22);
      if (v6)
      {
        sub_26BFD9850(v22, _s9AttributeVMa);
        sub_26BFD9850(v27, _s9AttributeVMa);
      }

      sub_26BFD9850(v22, _s9AttributeVMa);
      result = sub_26BFD9850(v27, _s9AttributeVMa);
      v116 = v29;
      v33 = v29 + 2;
      v34 = v130 + v32 * (v29 + 2);
      v35 = v119;
      v36 = v32;
      v130 = v32;
      while (1)
      {
        v37 = v129;
        if (v129 == v33)
        {
          break;
        }

        v38 = v127;
        sub_26BFD630C(v34, v127, _s9AttributeVMa);
        sub_26BFD630C(v5, v35, _s9AttributeVMa);
        v39 = sub_26BFD58E0(v38, v35);
        sub_26BFD9850(v35, _s9AttributeVMa);
        result = sub_26BFD9850(v38, _s9AttributeVMa);
        ++v33;
        v36 = v130;
        v34 += v130;
        v5 += v130;
        if ((v128 ^ v39))
        {
          v37 = v33 - 1;
          break;
        }
      }

      v6 = 0;
      v9 = v114;
      v29 = v116;
      if ((v128 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v37 < v116)
      {
        goto LABEL_133;
      }

      if (v116 < v37)
      {
        v40 = v37;
        v41 = v36 * (v37 - 1);
        v42 = v40 * v36;
        v129 = v40;
        v43 = v116 * v36;
        do
        {
          if (v29 != --v40)
          {
            v44 = *v122;
            if (!*v122)
            {
              goto LABEL_137;
            }

            v5 = v44 + v43;
            sub_26BFD98B0(v44 + v43, v123, _s9AttributeVMa);
            if (v43 < v41 || v5 >= v44 + v42)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v43 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_26BFD98B0(v123, v44 + v41, _s9AttributeVMa);
            v36 = v130;
          }

          ++v29;
          v41 -= v36;
          v42 -= v36;
          v43 += v36;
        }

        while (v29 < v40);
        v6 = 0;
        a3 = v122;
        v9 = v114;
        v29 = v116;
        v37 = v129;
      }

      else
      {
LABEL_24:
        a3 = v122;
      }
    }

    v45 = a3[1];
    if (v37 >= v45)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v37, v29))
    {
      goto LABEL_129;
    }

    if (v37 - v29 >= v115)
    {
      goto LABEL_36;
    }

    if (__OFADD__(v29, v115))
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v129 = v37;
    if (v29 + v115 >= v45)
    {
      v46 = v45;
    }

    else
    {
      v46 = v29 + v115;
    }

    if (v46 < v29)
    {
      goto LABEL_132;
    }

    if (v129 == v46)
    {
      v37 = v129;
LABEL_36:
      if (v37 < v29)
      {
        goto LABEL_128;
      }

      goto LABEL_37;
    }

    v92 = v6;
    v93 = *a3;
    v94 = *(v9 + 72);
    v95 = *a3 + v94 * (v129 - 1);
    v128 = -v94;
    v116 = v29;
    v96 = v29 - v129;
    v130 = v93;
    v109 = v94;
    v5 = v93 + v129 * v94;
    v97 = v113;
    v120 = v46;
    do
    {
      v110 = v5;
      v111 = v96;
      v112 = v95;
      v98 = v95;
      do
      {
        sub_26BFD630C(v5, v97, _s9AttributeVMa);
        v99 = v124;
        sub_26BFD630C(v98, v124, _s9AttributeVMa);
        v100 = sub_26BFD58E0(v97, v99);
        if (v92)
        {
          sub_26BFD9850(v99, _s9AttributeVMa);
          sub_26BFD9850(v97, _s9AttributeVMa);
        }

        v101 = v100;
        sub_26BFD9850(v99, _s9AttributeVMa);
        result = sub_26BFD9850(v97, _s9AttributeVMa);
        if ((v101 & 1) == 0)
        {
          break;
        }

        if (!v130)
        {
          goto LABEL_135;
        }

        v102 = v125;
        sub_26BFD98B0(v5, v125, _s9AttributeVMa);
        swift_arrayInitWithTakeFrontToBack();
        sub_26BFD98B0(v102, v98, _s9AttributeVMa);
        v98 += v128;
        v5 += v128;
      }

      while (!__CFADD__(v96++, 1));
      v95 = v112 + v109;
      v96 = v111 - 1;
      v5 = v110 + v109;
      v37 = v120;
      ++v129;
    }

    while (v129 != v120);
    v6 = 0;
    a3 = v122;
    v9 = v114;
    v29 = v116;
    if (v120 < v116)
    {
      goto LABEL_128;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEC164(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v48 = *(v30 + 2);
    v47 = *(v30 + 3);
    v5 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_26BEEC164((v47 > 1), v48 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v5;
    v49 = &v30[16 * v48];
    *(v49 + 4) = v29;
    *(v49 + 5) = v37;
    v50 = *v121;
    if (!*v121)
    {
      goto LABEL_138;
    }

    v120 = v37;
    if (v48)
    {
      break;
    }

LABEL_3:
    v28 = a3[1];
    v29 = v120;
    v27 = v117;
    v22 = v118;
    if (v120 >= v28)
    {
      goto LABEL_97;
    }
  }

  while (1)
  {
    v51 = v5 - 1;
    if (v5 >= 4)
    {
      v56 = &v30[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_115;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_116;
      }

      v63 = &v30[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_118;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_121;
      }

      if (v67 >= v59)
      {
        v85 = &v30[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_127;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v5 == 3)
    {
      v52 = *(v30 + 4);
      v53 = *(v30 + 5);
      v62 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      v55 = v62;
LABEL_56:
      if (v55)
      {
        goto LABEL_117;
      }

      v68 = &v30[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v71 = __OFSUB__(v69, v70);
      v72 = v69 - v70;
      v73 = v71;
      if (v71)
      {
        goto LABEL_120;
      }

      v74 = &v30[16 * v51 + 32];
      v76 = *v74;
      v75 = *(v74 + 1);
      v62 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v62)
      {
        goto LABEL_123;
      }

      if (__OFADD__(v72, v77))
      {
        goto LABEL_124;
      }

      if (v72 + v77 >= v54)
      {
        if (v54 < v77)
        {
          v51 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v78 = &v30[16 * v5];
    v80 = *v78;
    v79 = *(v78 + 1);
    v62 = __OFSUB__(v79, v80);
    v72 = v79 - v80;
    v73 = v62;
LABEL_70:
    if (v73)
    {
      goto LABEL_119;
    }

    v81 = &v30[16 * v51];
    v83 = *(v81 + 4);
    v82 = *(v81 + 5);
    v62 = __OFSUB__(v82, v83);
    v84 = v82 - v83;
    if (v62)
    {
      goto LABEL_122;
    }

    if (v84 < v72)
    {
      goto LABEL_3;
    }

LABEL_77:
    v89 = v51 - 1;
    if (v51 - 1 >= v5)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_134;
    }

    v5 = *&v30[16 * v89 + 32];
    v90 = *&v30[16 * v51 + 40];
    sub_26BFD8ED4(*a3 + *(v9 + 72) * v5, *a3 + *(v9 + 72) * *&v30[16 * v51 + 32], *a3 + *(v9 + 72) * v90, v50);
    if (v6)
    {
    }

    if (v90 < v5)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_26BFD9590(v30);
    }

    if (v89 >= *(v30 + 2))
    {
      goto LABEL_114;
    }

    v91 = &v30[16 * v89];
    *(v91 + 4) = v5;
    *(v91 + 5) = v90;
    v131 = v30;
    result = sub_26BFD9504(v51);
    v30 = v131;
    v5 = *(v131 + 2);
    if (v5 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  result = sub_26BFD9590(v30);
  v30 = result;
LABEL_99:
  v131 = v30;
  v104 = *(v30 + 2);
  if (v104 < 2)
  {
  }

  v105 = v9;
  while (*a3)
  {
    v9 = *&v30[16 * v104];
    v106 = *&v30[16 * v104 + 24];
    sub_26BFD8ED4(*a3 + *(v105 + 72) * v9, *a3 + *(v105 + 72) * *&v30[16 * v104 + 16], *a3 + *(v105 + 72) * v106, v5);
    if (v6)
    {
    }

    if (v106 < v9)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_26BFD9590(v30);
    }

    if (v104 - 2 >= *(v30 + 2))
    {
      goto LABEL_126;
    }

    v107 = &v30[16 * v104];
    *v107 = v9;
    *(v107 + 1) = v106;
    v131 = v30;
    result = sub_26BFD9504(v104 - 1);
    v30 = v131;
    v104 = *(v131 + 2);
    if (v104 <= 1)
    {
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_26BFD8ED4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = _s9AttributeVMa(0);
  v9 = MEMORY[0x28223BE20](v64);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v53 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v53 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_65;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v66 = a4;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    v59 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v12;
    }

    else
    {
      v27 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = a4 + v26;
    v37 = v4;
    if (v26 >= 1)
    {
      v38 = -v63;
      v39 = a4 + v26;
      v56 = a4;
      v57 = a1;
      v55 = -v63;
      do
      {
        v53 = v36;
        v40 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v67 = a2;
            v65 = v53;
            goto LABEL_62;
          }

          v62 = a3;
          v63 = v39;
          v54 = v36;
          v61 = (v39 + v38);
          sub_26BFD630C(v39 + v38, v27, _s9AttributeVMa);
          v43 = v27;
          v44 = v59;
          sub_26BFD630C(v40, v59, _s9AttributeVMa);
          v45 = sub_26BFD58E0(v43, v44);
          if (v37)
          {
            sub_26BFD9850(v44, _s9AttributeVMa);
            sub_26BFD9850(v43, _s9AttributeVMa);
            v67 = v58;
            v65 = v54;
            goto LABEL_62;
          }

          v46 = v45;
          v60 = 0;
          v47 = v40;
          v48 = v62;
          v49 = v62 + v38;
          sub_26BFD9850(v44, _s9AttributeVMa);
          sub_26BFD9850(v43, _s9AttributeVMa);
          v27 = v43;
          if (v46)
          {
            break;
          }

          v50 = v61;
          v36 = v61;
          a3 = v48 + v38;
          if (v48 < v63 || v49 >= v63)
          {
            v41 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
            v40 = v47;
            v37 = v60;
          }

          else
          {
            v51 = v48 == v63;
            v40 = v47;
            v37 = v60;
            if (!v51)
            {
              v52 = v61;
              swift_arrayInitWithTakeBackToFront();
              v36 = v52;
            }
          }

          v39 = v36;
          a1 = v57;
          v42 = v50 > v56;
          v38 = v55;
          a2 = v58;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v48 + v38;
        if (v48 < v58 || v49 >= v58)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v55;
        }

        else
        {
          a2 = v47;
          v37 = v60;
          v38 = v55;
          if (v48 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v63;
        v36 = v54;
      }

      while (v63 > v56);
    }

LABEL_58:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v4;
    }

    else
    {
      v25 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v62 = a4 + v24;
    v65 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v29 = v63;
      v60 = v19;
      v61 = v15;
      while (1)
      {
        v30 = a3;
        sub_26BFD630C(a2, v19, _s9AttributeVMa);
        sub_26BFD630C(a4, v15, _s9AttributeVMa);
        v31 = sub_26BFD58E0(v19, v15);
        if (v25)
        {
          break;
        }

        v32 = v31;
        v33 = v15;
        v34 = a4;
        sub_26BFD9850(v33, _s9AttributeVMa);
        sub_26BFD9850(v19, _s9AttributeVMa);
        if (v32)
        {
          v35 = a2 + v29;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v34 + v29;
        }

        v15 = v61;
        v29 = v63;
        a1 += v63;
        v67 = a1;
        v19 = v60;
        if (a4 >= v62 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_26BFD9850(v15, _s9AttributeVMa);
      sub_26BFD9850(v19, _s9AttributeVMa);
    }
  }

LABEL_62:
  sub_26BFD95A4(&v67, &v66, &v65);
  return 1;
}

uint64_t sub_26BFD9504(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BFD9590(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26BFD95A4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = _s9AttributeVMa(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_26BFD9688(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1A8, &qword_26C01A7F8);
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

uint64_t sub_26BFD9850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFD98B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26BFD9918()
{
  result = qword_2804606A8;
  if (!qword_2804606A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804606A0, &unk_26C024580);
    sub_26BFD9B68(&qword_280460678, _s25RelativeDistinguishedNameVMa, &unk_26C024458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804606A8);
  }

  return result;
}

uint64_t sub_26BFD99CC(uint64_t *a1)
{
  v2 = *(_s9AttributeVMa(0) - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  MEMORY[0x28223BE20](v3);
  v5 = &v9[-v4];
  sub_26BE2E1F0(a1, &v9[-v4], &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_26BE2E258(v5, &qword_28045E520, &unk_26C016B80);
  }

  sub_26BE2E258(a1, &qword_28045E520, &unk_26C016B80);
  v6 = *v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_26BE58884(v6);
  }

  v7 = v6[2];
  v10[0] = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v10[1] = v7;
  sub_26BFD80BC(v10);
  *a1 = v6;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26BFD9B68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFD9BD4(uint64_t a1)
{
  sub_26C00B05C();
  v2 = *(a1 + 16);
  MEMORY[0x26D699B20](v2);
  if (v2)
  {
    v3 = *(_s11GeneralNameOMa(0) - 8);
    v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    do
    {
      sub_26BFE2AF0(v7);
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFD9CA0(uint64_t a1)
{
  v3 = _s11GeneralNameOMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  result = MEMORY[0x26D699B20](*(*v1 + 16));
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_26BFDB350(v10, v6);
      sub_26BFE2AF0(a1);
      result = sub_26BFDB3B4(v6);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_26BFD9D9C(uint64_t a1)
{
  v2 = _s11GeneralNameOMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_26C00B05C();
  MEMORY[0x26D699B20](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_26BFDB350(v8, v5);
      sub_26BFE2AF0(v12);
      sub_26BFDB3B4(v5);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFD9EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s11GeneralNameOMa(0);
  MEMORY[0x28223BE20](v4);
  sub_26BFDB350(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_26C00A51C();
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_26BFD9F54()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460768, &unk_26C024AD0);
  sub_26BFDB410();
  v0 = sub_26C00A3EC();

  return v0;
}

unint64_t sub_26BFD9FF0()
{
  sub_26C00AC1C();

  sub_26BE85EDC();
  v0 = sub_26C00AEFC();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_26BFDA09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460778, &qword_26C024AE8);
  return sub_26C00A70C();
}

uint64_t sub_26BFDA194(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26BE5885C(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < v5[2])
  {
    v7 = *(_s11GeneralNameOMa(0) - 8);
    result = sub_26BFDB494(a1, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*sub_26BFDA260(void *a1, unint64_t *a2))(uint64_t ***a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(_s11GeneralNameOMa(0) - 8);
  v9 = *(v8 + 64);
  if (v5)
  {
    v7[1] = swift_coroFrameAlloc();
    result = swift_coroFrameAlloc();
  }

  else
  {
    v7[1] = malloc(*(v8 + 64));
    result = malloc(v9);
  }

  v11 = *a2;
  v7[2] = result;
  v7[3] = v11;
  v12 = *v2;
  v7[4] = *v2;
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v12 + 16))
  {
    v13 = *(v8 + 80);
    *(v7 + 12) = v13;
    v14 = v12 + ((v13 + 32) & ~v13);
    v15 = *(v8 + 72);
    v7[5] = v15;
    sub_26BFDB350(v14 + v15 * v11, result);
    return sub_26BFDA3B8;
  }

  __break(1u);
  return result;
}

void sub_26BFDA3B8(uint64_t ***a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26BFDB350(v2[2], v2[1]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v2[4];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_26BE5885C(v2[4]);
    }

    v5 = v2[3];
    if (v5 < v4[2])
    {
      v7 = v2[1];
      v6 = v2[2];
      v8 = *v2;
      sub_26BFDB494(v7, v4 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v5);
      *v8 = v4;
      sub_26BFDB3B4(v6);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v9 = swift_isUniquelyReferenced_nonNull_native();
  v4 = v2[4];
  if ((v9 & 1) == 0)
  {
LABEL_13:
    v4 = sub_26BE5885C(v4);
  }

  v10 = v2[3];
  if (v10 >= v4[2])
  {
    __break(1u);
    return;
  }

  v7 = v2[1];
  v6 = v2[2];
  v11 = *v2;
  sub_26BFDB494(v6, v4 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v10);
  *v11 = v4;
LABEL_9:
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_26BFDA4E8(int64_t *a1, uint64_t a2)
{
  sub_26BFB6130(v2, *a2, *(a2 + 8), *a1, a1[1], a1[2]);
}

void (*sub_26BFDA534(uint64_t (***a1)(), uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = sub_26BFB3584(v4, *a2, a2[1]);
  return sub_26BFB333C;
}

uint64_t sub_26BFDA5AC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26BFB6D74(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_26BFDA5E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26BFDA09C(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t sub_26BFDA664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF58, &qword_26C024AE0);
  result = MEMORY[0x28223BE20](v6);
  v9 = (&v11 - v8);
  v12 = MEMORY[0x277D84F90];
  if (!a2)
  {
    result = sub_26BFDB3B4(a1);
    v10 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *v9 = a2;
    sub_26BFDB5CC(a1, v9 + *(result + 28));
    result = sub_26BFB4414(v9);
    v10 = v12;
LABEL_5:
    *a3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFDA740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>)
{
  v7 = sub_26BFDB4F8(a1, a2, a4);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v7;
  return result;
}

uint64_t sub_26BFDA7AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6F0, &unk_26C011350);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(*v1 + 16);
  sub_26BFDB5CC(a1, &v11 - v7);
  sub_26BFDB630(v8, v6);
  sub_26BE56570(v9, v9, v6);
  return sub_26BFDB6A0(v8);
}

uint64_t sub_26BFDA888(uint64_t a1, unint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6F0, &unk_26C011350);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *a2;
  sub_26BFDB5CC(a1, &v12 - v8);
  sub_26BFDB630(v9, v7);
  sub_26BE56570(v10, v10, v7);
  return sub_26BFDB6A0(v9);
}

uint64_t sub_26BFDA978@<X0>(uint64_t a1@<X8>)
{
  v2 = _s11GeneralNameOMa(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_26BFDA9E4(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v4 = *(_s11GeneralNameOMa(0) - 8);
    sub_26BFDB350(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), a1);

    sub_26BE5B05C(0, 1);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_26BFDAA78(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_26BFB76E8();
  if (v1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_26BE5B05C(0, result);
}

unint64_t sub_26BFDAAE0(char a1)
{
  if (a1)
  {
    v2 = *(*v1 + 16);

    return sub_26BE5B05C(0, v2);
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t (*sub_26BFDAB30(uint64_t (*a1)(uint64_t), uint64_t a2))(void)
{
  result = sub_26BFB7430(a1, a2);
  if (!v3)
  {
    v5 = *(*v2 + 16);
    if (v5 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_26BE5B05C(result, v5);
    }
  }

  return result;
}

uint64_t (*sub_26BFDAB74(uint64_t (**a1)(), unint64_t *a2))()
{
  v5 = *(_s11GeneralNameOMa(0) - 8);
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_26BFDB350(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result);
    return sub_26BFDAC70;
  }

  __break(1u);
  return result;
}

void sub_26BFDAC70(uint64_t *a1)
{
  v1 = *a1;
  sub_26BFDB3B4(*a1);

  free(v1);
}

uint64_t sub_26BFDACAC()
{
  v1 = sub_26BFB641C(*v0);

  return v1;
}

void sub_26BFDACEC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    if (v4 == v3)
    {
      break;
    }

    _s11GeneralNameOMa(0);
    sub_26BFDB724();
    sub_26C00976C();
    ++v3;
  }

  while (!v2);
}

uint64_t sub_26BFDADC8()
{
  v1 = sub_26C00934C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
  v8 = v5;
  sub_26C00973C();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_26BFDAF1C()
{
  result = qword_280460700;
  if (!qword_280460700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460700);
  }

  return result;
}

unint64_t sub_26BFDAFB8()
{
  result = qword_280460718;
  if (!qword_280460718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460718);
  }

  return result;
}

unint64_t sub_26BFDB054()
{
  result = qword_280460728;
  if (!qword_280460728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460728);
  }

  return result;
}

unint64_t sub_26BFDB0F0()
{
  result = qword_280460738;
  if (!qword_280460738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460738);
  }

  return result;
}

unint64_t sub_26BFDB18C()
{
  result = qword_280460748;
  if (!qword_280460748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460748);
  }

  return result;
}

uint64_t sub_26BFDB22C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460710, &qword_26C024758);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BFDB2A4()
{
  result = qword_280460758;
  if (!qword_280460758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460758);
  }

  return result;
}

unint64_t sub_26BFDB2FC()
{
  result = qword_280460760;
  if (!qword_280460760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460760);
  }

  return result;
}

uint64_t sub_26BFDB350(uint64_t a1, uint64_t a2)
{
  v4 = _s11GeneralNameOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDB3B4(uint64_t a1)
{
  v2 = _s11GeneralNameOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BFDB410()
{
  result = qword_280460770;
  if (!qword_280460770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460768, &unk_26C024AD0);
    sub_26BFDB054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460770);
  }

  return result;
}

uint64_t sub_26BFDB494(uint64_t a1, uint64_t a2)
{
  v4 = _s11GeneralNameOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDB4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s11GeneralNameOMa(0);
  return sub_26C00A7CC();
}

uint64_t sub_26BFDB5CC(uint64_t a1, uint64_t a2)
{
  v4 = _s11GeneralNameOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDB630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6F0, &unk_26C011350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDB6A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6F0, &unk_26C011350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BFDB724()
{
  result = qword_280460780;
  if (!qword_280460780)
  {
    _s11GeneralNameOMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460780);
  }

  return result;
}

void sub_26BFDB780(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return;
  }

  v8 = HIDWORD(a1) - a1;
LABEL_10:
  sub_26BF30414(v8);
  if (v3)
  {
    sub_26BE00258(0, 0xC000000000000000);
  }

  else
  {
    sub_26BE11228(a1, a2);
    v11 = sub_26C00909C();
    v13 = v12;
    sub_26BE00258(0, 0xC000000000000000);
    *a3 = -4090;
    *(a3 + 8) = v11;
    *(a3 + 16) = v13;
  }
}

void sub_26BFDB8C0(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_7;
    }

    v2 = *(v3 + 16);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v2 = v3;
  }

  sub_26BE00608(*(a1 + 8), v4);
LABEL_7:
  v23 = v3;
  v24 = v4;
  v25 = v2;
  sub_26BE00608(v3, v4);
  sub_26BE00608(v3, v4);
  sub_26BF30764(&v23, &v21);
  if (v1)
  {
    sub_26BE00258(v23, v24);
    swift_willThrow();
    sub_26BE00258(v3, v4);
    v23 = v3;
    v24 = v4;
    v25 = v2;
LABEL_25:
    swift_willThrow();
    v21 = MEMORY[0x277CC9318];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460788, &unk_26C024AF0);
    v18 = sub_26C00A4FC();
    sub_26BE826C4(v18, v19, v3, v4);

    swift_willThrow();
    sub_26BE00258(v23, v24);
    return;
  }

  if (v22)
  {
    sub_26BE00258(v23, v24);
    v6 = v4;
    v7 = v3;
LABEL_24:
    sub_26BE00258(v7, v6);
    v23 = v3;
    v24 = v4;
    v25 = v2;
    sub_26BE01600();
    swift_allocError();
    *v17 = 1;
    goto LABEL_25;
  }

  v8 = v21;
  sub_26BE00258(v3, v4);
  v9 = v25 + v8;
  if (__OFADD__(v25, v8))
  {
    __break(1u);
    goto LABEL_33;
  }

  v7 = v23;
  v6 = v24;
  v10 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v10 != 2)
    {
      if (v9 > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    v11 = *(v23 + 24);
  }

  else if (v10)
  {
    v11 = v23 >> 32;
  }

  else
  {
    v11 = BYTE6(v24);
  }

  if (v11 < v9)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (v9 >= v25)
  {
    v12 = sub_26C00909C();
    v13 = v12;
    v15 = v14;
    v16 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v16 != 2)
      {
LABEL_31:
        sub_26C00909C();
        sub_26BE00258(v13, v15);
        sub_26BE00258(v3, v4);
        sub_26BE00258(v7, v6);
        return;
      }

      v12 = *(v12 + 16);
      v20 = *(v13 + 24);
    }

    else
    {
      if (!v16)
      {
        goto LABEL_31;
      }

      v12 = v12;
      v20 = v13 >> 32;
    }

    if (v20 < v12)
    {
      __break(1u);
    }

    goto LABEL_31;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_26BFDBB64(uint64_t a1)
{
  v2 = v1;
  v62 = a1;
  v52 = sub_26C0094DC();
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = _s9AttributeV5ValueV7StorageOMa(0);
  MEMORY[0x28223BE20](v55);
  v60 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = _s9AttributeVMa(0);
  v53 = *(v57 - 8);
  v5 = MEMORY[0x28223BE20](v57);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804607B8, &qword_26C024C40);
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v48 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v48 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - v23;
  sub_26BE2E1F0(v1, &v48 - v23, &qword_28045E520, &unk_26C016B80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = v11;
  if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    sub_26BE2E258(v24, &qword_28045E520, &unk_26C016B80);
  }

  v26 = sub_26BFD9BBC();
  MEMORY[0x26D699B20](v26);
  v27 = &qword_28045E520;
  v28 = v58;
  sub_26BE2E1F0(v2, v58, &qword_28045E520, &unk_26C016B80);
  v29 = 0;
  v54 = *(v56 + 36);
  *(v28 + v54) = 0;
  v56 = v53 + 56;
  v30 = v49++;
  v50 = (v30 + 4);
  while (1)
  {
    sub_26BE2E1F0(v28, v22, v27, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = *(*v22 + 16);

      if (v29 == v32)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_26BE2E258(v22, v27, &unk_26C016B80);
      if (v29 == 1)
      {
LABEL_25:
        sub_26BE2E258(v28, &qword_2804607B8, &qword_26C024C40);
        return (*v56)(v61, 1, 1, v57);
      }
    }

    sub_26BE2E1F0(v28, v19, v27, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v29 >= *(*v19 + 16))
      {
        goto LABEL_27;
      }

      sub_26BFDDE8C(*v19 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v29, v61, _s9AttributeVMa);

      v28 = v58;
    }

    else
    {
      sub_26BFDDE24(v19, v8, _s9AttributeVMa);
      if (v29)
      {
        goto LABEL_28;
      }

      sub_26BFDDE24(v8, v61, _s9AttributeVMa);
    }

    sub_26BE2E1F0(v28, v16, v27, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = *(*v16 + 16);
    }

    else
    {
      sub_26BE2E258(v16, v27, &unk_26C016B80);
      v33 = 1;
    }

    if (v29 >= v33)
    {
      break;
    }

    v34 = v27;
    v35 = v22;
    v36 = v19;
    v37 = v16;
    v38 = v13;
    v39 = v8;
    *(v28 + v54) = v29 + 1;
    v40 = v57;
    v41 = v61;
    (*v56)(v61, 0, 1, v57);
    v42 = v59;
    sub_26BFDDE24(v41, v59, _s9AttributeVMa);
    sub_26C00947C();
    sub_26BFDDEF4(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
    sub_26C00A3CC();
    sub_26BFDDE8C(v42 + *(v40 + 20), v60, _s9AttributeV5ValueV7StorageOMa);
    v43 = swift_getEnumCaseMultiPayload();
    if (!v43)
    {
      v31 = 0;
LABEL_6:
      MEMORY[0x26D699B20](v31);
      sub_26C00A58C();

      goto LABEL_7;
    }

    if (v43 == 1)
    {
      v31 = 1;
      goto LABEL_6;
    }

    v44 = v51;
    v45 = v52;
    (*v50)(v51, v60, v52);
    MEMORY[0x26D699B20](2);
    sub_26BFDDEF4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*v49)(v44, v45);
LABEL_7:
    sub_26BFDDF3C(v59, _s9AttributeVMa);
    ++v29;
    v8 = v39;
    v13 = v38;
    v16 = v37;
    v19 = v36;
    v22 = v35;
    v27 = v34;
    v28 = v58;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_26C00AC1C();

  v64 = 0x207865646E69;
  v65 = 0xE600000000000000;
  v63 = v29;
  v47 = sub_26C00AEFC();
  MEMORY[0x26D699090](v47);

  MEMORY[0x26D699090](0x20666F2074756F20, 0xEE0073646E756F62);
  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

uint64_t MLS.CertificationRequestInfo.hash(into:)(uint64_t a1)
{
  v3 = _s25RelativeDistinguishedNameVMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D699B20](*v1);
  v7 = v1[1];
  MEMORY[0x26D699B20](*(v7 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_26BFDDE8C(v9, v6, _s25RelativeDistinguishedNameVMa);
      sub_26BFDBB64(a1);
      sub_26BFDDF3C(v6, _s25RelativeDistinguishedNameVMa);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  v11 = type metadata accessor for MLS.CertificationRequestInfo(0);
  sub_26BFCE15C(a1);
  return sub_26BFD1C44(a1, *(v1 + *(v11 + 28)));
}

uint64_t MLS.CertificationRequestInfo.hashValue.getter()
{
  v1 = _s25RelativeDistinguishedNameVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00B05C();
  MEMORY[0x26D699B20](*v0);
  v5 = v0[1];
  MEMORY[0x26D699B20](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_26BFDDE8C(v7, v4, _s25RelativeDistinguishedNameVMa);
      sub_26BFDBB64(v12);
      sub_26BFDDF3C(v4, _s25RelativeDistinguishedNameVMa);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  v9 = type metadata accessor for MLS.CertificationRequestInfo(0);
  sub_26BFCE15C(v12);
  sub_26BFD1C44(v12, *(v0 + *(v9 + 28)));
  return sub_26C00B0CC();
}

uint64_t sub_26BFDC6B0(uint64_t a1, uint64_t a2)
{
  v4 = _s25RelativeDistinguishedNameVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00B05C();
  MEMORY[0x26D699B20](*v2);
  v8 = v2[1];
  MEMORY[0x26D699B20](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_26BFDDE8C(v10, v7, _s25RelativeDistinguishedNameVMa);
      sub_26BFDBB64(v14);
      sub_26BFDDF3C(v7, _s25RelativeDistinguishedNameVMa);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  sub_26BFCE15C(v14);
  sub_26BFD1C44(v14, *(v2 + *(a2 + 28)));
  return sub_26C00B0CC();
}

uint64_t MLS.CertificationRequestInfo.init(derEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLS.CertificationRequestInfo(0);
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

void *sub_26BFDC910@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a1;
  v25 = a2;
  v28 = sub_26C00930C();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  MEMORY[0x28223BE20](v30);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s9PublicKeyVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00934C();
  v29 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  sub_26C0096AC();
  v14 = v31;
  result = sub_26C0096BC();
  if (!v14)
  {
    v31 = v11;
    v24 = v8;
    v16 = v33;
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BFBF280();
    sub_26C0096BC();
    v23 = v16;
    v17 = v33;
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BFDDEF4(&qword_28045E678, type metadata accessor for MLS.SubjectPublicKeyInfo, &protocol conformance descriptor for MLS.SubjectPublicKeyInfo);
    sub_26C0096BC();
    sub_26BFCD8D0(v4, v7);
    _s14descr287CB9999C9AttributeVMa(0);
    (*(v26 + 104))(v27, *MEMORY[0x277D6A898], v28);
    v18 = v31;
    sub_26C0092EC();
    sub_26BFDDEF4(&qword_280460218, _s14descr287CB9999C9AttributeVMa, &unk_26C0227B8);
    v19 = sub_26C0097CC();
    (*(v29 + 8))(v18, v24);
    v20 = sub_26BFDD7D8(v19);

    v21 = type metadata accessor for MLS.CertificationRequestInfo(0);
    v22 = v25;
    result = sub_26BFDDE24(v7, v25 + *(v21 + 24), _s9PublicKeyVMa);
    *v22 = v23;
    v22[1] = v17;
    *(v22 + *(v21 + 28)) = v20;
  }

  return result;
}

uint64_t sub_26BFDCE2C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26C00930C();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00934C();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s9PublicKeyVMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a2;
  v15 = v26;
  result = sub_26C00976C();
  if (!v15)
  {
    v26 = v12;
    v20 = v5;
    v21 = v8;
    v22 = v6;
    v27 = a2[1];
    sub_26BE85F4C();
    sub_26C00976C();
    v17 = type metadata accessor for MLS.CertificationRequestInfo(0);
    sub_26BFDDE8C(a2 + *(v17 + 24), v11, _s9PublicKeyVMa);
    sub_26BFCE6C4(v11, v14);
    sub_26BFDDEF4(&qword_28045EA88, type metadata accessor for MLS.SubjectPublicKeyInfo, &protocol conformance descriptor for MLS.SubjectPublicKeyInfo);
    sub_26C00976C();
    sub_26BFDDF3C(v14, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v27 = *(a2 + *(v17 + 28));
    (*(v23 + 104))(v20, *MEMORY[0x277D6A898], v24);

    v18 = v21;
    sub_26C0092EC();
    sub_26BFD2478();
    sub_26BFDDEF4(&qword_280460220, _s14descr287CB9999C9AttributeVMa, &unk_26C022790);
    sub_26C00970C();
    (*(v25 + 8))(v18, v22);
  }

  return result;
}

uint64_t sub_26BFDD1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C0097FC();
  v5 = sub_26C00934C();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_26C00950C();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t _s8SwiftMLS0B0O24CertificationRequestInfoV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_26BFB126C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MLS.CertificationRequestInfo(0);
  if (!sub_26BFCF4B8(a1 + *(v4 + 24), a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_26BFD2774(v6, v7);
}

uint64_t type metadata accessor for MLS.CertificationRequestInfo(uint64_t a1)
{
  result = qword_2804607A0;
  if (!qword_2804607A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BFDD5E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s9PublicKeyVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BFDD6A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s9PublicKeyVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BFDD74C(uint64_t a1)
{
  result = _s9PublicKeyVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFDD7D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804607B0, &unk_26C024C30);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = sub_26C00947C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = _s14descr287CB9999C9AttributeVMa(0);
  v12 = MEMORY[0x28223BE20](v49);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v41 = &v36 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v50 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  result = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v48 = *(a1 + 16);
  if (!v48)
  {
    return result;
  }

  v22 = 0;
  v42 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v47 = a1 + v42;
  v23 = *(v18 + 72);
  v45 = (v18 + 56);
  v46 = (v9 + 16);
  v43 = (v9 + 8);
  v44 = (v18 + 48);
  v39 = &v36 - v19;
  v40 = v5;
  v38 = v8;
  while (1)
  {
    sub_26BFDDE8C(v47 + v23 * v22, v20, _s14descr287CB9999C9AttributeVMa);
    (*v46)(v11, v20, v8);
    sub_26BFDDE24(v20, v7, _s14descr287CB9999C9AttributeVMa);
    v25 = v49;
    (*v45)(v7, 0, 1, v49);
    sub_26BE2E1F0(v7, v5, &qword_2804607B0, &unk_26C024C30);
    if ((*v44)(v5, 1, v25) == 1)
    {
      sub_26BE2E258(v5, &qword_2804607B0, &unk_26C024C30);
      v26 = v51[2];
      if (v26)
      {
        v27 = 0;
        v28 = v51 + v42;
        while ((sub_26C00945C() & 1) == 0)
        {
          ++v27;
          v28 += v23;
          if (v26 == v27)
          {
            goto LABEL_4;
          }
        }

        v24 = v37;
        sub_26BFA7534(v27, v37);
        sub_26BFDDF3C(v24, _s14descr287CB9999C9AttributeVMa);
      }

LABEL_4:
      sub_26BE2E258(v7, &qword_2804607B0, &unk_26C024C30);
      goto LABEL_5;
    }

    sub_26BFDDE24(v5, v50, _s14descr287CB9999C9AttributeVMa);
    result = sub_26C00945C();
    if ((result & 1) == 0)
    {
      break;
    }

    v29 = v8;
    v30 = v51;
    v31 = v51[2];
    if (v31)
    {
      v32 = 0;
      v33 = v42;
      while ((sub_26C00945C() & 1) == 0)
      {
        ++v32;
        v33 += v23;
        if (v31 == v32)
        {
          goto LABEL_17;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_26BE588FC(v30);
      }

      v8 = v29;
      result = sub_26BE2E258(v7, &qword_2804607B0, &unk_26C024C30);
      v5 = v40;
      if (v32 >= v30[2])
      {
        goto LABEL_29;
      }

      sub_26BFDDDC0(v50, v30 + v33);
      v51 = v30;
    }

    else
    {
LABEL_17:
      sub_26BFDDE8C(v50, v41, _s14descr287CB9999C9AttributeVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_26BEEDD28(0, v30[2] + 1, 1, v30);
      }

      v35 = v30[2];
      v34 = v30[3];
      v5 = v40;
      if (v35 >= v34 >> 1)
      {
        v30 = sub_26BEEDD28((v34 > 1), v35 + 1, 1, v30);
      }

      sub_26BFDDF3C(v50, _s14descr287CB9999C9AttributeVMa);
      sub_26BE2E258(v7, &qword_2804607B0, &unk_26C024C30);
      v30[2] = v35 + 1;
      sub_26BFDDE24(v41, v30 + v42 + v35 * v23, _s14descr287CB9999C9AttributeVMa);
      v51 = v30;
      v8 = v38;
      v20 = v39;
    }

LABEL_5:
    ++v22;
    (*v43)(v11, v8);
    if (v22 == v48)
    {
      return v51;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26BFDDDC0(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr287CB9999C9AttributeVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDDE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFDDE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFDDEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFDDF3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MLS.SubjectPublicKeyInfo.init(algorithmIdentifier:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26BEC9E7C(a1, a3);
  v5 = *(type metadata accessor for MLS.SubjectPublicKeyInfo(0) + 20);
  v6 = sub_26C00959C();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t type metadata accessor for MLS.SubjectPublicKeyInfo(uint64_t a1)
{
  result = qword_2804607D0;
  if (!qword_2804607D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLS.SubjectPublicKeyInfo.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.SubjectPublicKeyInfo(0) + 20);
  v4 = sub_26C00959C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.SubjectPublicKeyInfo.init(derEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t MLS.SubjectPublicKeyInfo.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.SubjectPublicKeyInfo(0) + 20);
  v4 = sub_26C00959C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void *sub_26BFDE334@<X0>(uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_26C00959C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C00934C();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
  sub_26BFDF7D0(&qword_28045EEC0, type metadata accessor for MLS.AlgorithmIdentifier, &protocol conformance descriptor for MLS.AlgorithmIdentifier);
  result = sub_26C0096BC();
  if (!v2)
  {
    v16 = v4;
    v13 = v17;
    sub_26C0096AC();
    sub_26C0096BC();
    sub_26BEC9E7C(v11, v13);
    v14 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
    return (*(v16 + 32))(v13 + *(v14 + 20), v6, v3);
  }

  return result;
}

uint64_t MLS.SubjectPublicKeyInfo.init(algorithmIdentifier:key:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_26BE13564(a1, a3);
  type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  sub_26C00957C();

  return sub_26BFBBEA0(a1);
}

uint64_t sub_26BFDE61C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BFDF7D0(&qword_28045EE50, type metadata accessor for MLS.AlgorithmIdentifier, &protocol conformance descriptor for MLS.AlgorithmIdentifier);
  result = sub_26C00976C();
  if (!v2)
  {
    type metadata accessor for MLS.SubjectPublicKeyInfo(0);
    sub_26C00959C();
    return sub_26C00976C();
  }

  return result;
}

uint64_t sub_26BFDE6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.SubjectPublicKeyInfo.hash(into:)(uint64_t a1)
{
  v2 = sub_26C0094DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_26C00947C();
  sub_26BFDF7D0(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v9 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BEE2A7C(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_26C00B07C();
    sub_26BFDF7D0(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  sub_26C00959C();
  sub_26BFDF7D0(&qword_28045F0D0, MEMORY[0x277D6A9E0], MEMORY[0x277D6A9E8]);
  return sub_26C00A3CC();
}

uint64_t MLS.SubjectPublicKeyInfo.hashValue.getter()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFDF7D0(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v8 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BEE2A7C(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_26C00B07C();
    sub_26BFDF7D0(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v2 + 8))(v4, v1);
  }

  type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  sub_26C00959C();
  sub_26BFDF7D0(&qword_28045F0D0, MEMORY[0x277D6A9E0], MEMORY[0x277D6A9E8]);
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BFDEC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C0097FC();
  v5 = sub_26C00934C();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_26C00950C();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t sub_26BFDED8C(uint64_t a1)
{
  v2 = sub_26C0094DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFDF7D0(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v9 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BEE2A7C(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_26C00B07C();
    sub_26BFDF7D0(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v3 + 8))(v5, v2);
  }

  sub_26C00959C();
  sub_26BFDF7D0(&qword_28045F0D0, MEMORY[0x277D6A9E0], MEMORY[0x277D6A9E8]);
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t _s8SwiftMLS0B0O20SubjectPublicKeyInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((sub_26C00945C() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = *(type metadata accessor for MLS.AlgorithmIdentifier(0) + 20);
  v15 = *(v11 + 48);
  sub_26BEE2A7C(a1 + v14, v13);
  sub_26BEE2A7C(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
LABEL_11:
      type metadata accessor for MLS.SubjectPublicKeyInfo(0);
      v17 = sub_26C00956C();
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_26BEE2A7C(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_26BE2E258(v13, &qword_28045F0D8, &unk_26C01A530);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_26BFDF7D0(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
  v19 = sub_26C00A43C();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}