unint64_t sub_25E191BDC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25E1A599C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E191C94()
{
  result = qword_27FCDD2D0;
  if (!qword_27FCDD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2D0);
  }

  return result;
}

unint64_t sub_25E191D08()
{
  result = qword_27FCDD2D8;
  if (!qword_27FCDD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2D8);
  }

  return result;
}

uint64_t sub_25E191DA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25E191DE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25E191E58()
{
  result = qword_27FCDD2E0;
  if (!qword_27FCDD2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD2E8, "H>");
    sub_25E190668();
    sub_25E17F9C0(&qword_27FCDD2A8, &qword_27FCDD288, &qword_25E1A7A38, &protocol conformance descriptor for PaymentItem<A, B, C, D>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2E0);
  }

  return result;
}

unint64_t sub_25E191F10()
{
  result = qword_27FCDD2F0;
  if (!qword_27FCDD2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD2C8, &qword_25E1A7B48);
    sub_25E191FC8();
    sub_25E17F9C0(&qword_27FCDD240, &qword_27FCDD248, &qword_25E1A7970, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2F0);
  }

  return result;
}

unint64_t sub_25E191FC8()
{
  result = qword_27FCDD2F8;
  if (!qword_27FCDD2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD300, &qword_25E1A7D48);
    sub_25E191B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2F8);
  }

  return result;
}

unint64_t sub_25E19204C()
{
  result = qword_27FCDD308;
  if (!qword_27FCDD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD308);
  }

  return result;
}

uint64_t PaymentDetailSheet.hashValue.getter()
{
  v1 = *v0;
  sub_25E1A59BC();
  MEMORY[0x25F8AD450](v1);
  return sub_25E1A59DC();
}

unint64_t sub_25E19215C()
{
  result = qword_27FCDD310;
  if (!qword_27FCDD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD310);
  }

  return result;
}

unint64_t sub_25E1921B4()
{
  result = qword_27FCDD318;
  if (!qword_27FCDD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD318);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaymentDetailSheet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentDetailSheet(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AccessoryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD320, &qword_25E1A7E50);
  v47 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v3 = &v47 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD328, &qword_25E1A7E58);
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD330, &qword_25E1A7E60);
  MEMORY[0x28223BE20](v54);
  v50 = &v47 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD338, &qword_25E1A7E68);
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v47 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD340, &qword_25E1A7E70);
  MEMORY[0x28223BE20](v56);
  v58 = &v47 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD348, &qword_25E1A7E78);
  MEMORY[0x28223BE20](v53);
  v52 = &v47 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD350, &unk_25E1A7E80);
  MEMORY[0x28223BE20](v57);
  v55 = &v47 - v12;
  v13 = type metadata accessor for AccessoryViewStyle(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  sub_25E1937A8(v1, &v47 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v18, 6, v19);
  if (v21 <= 1)
  {
    if (v21)
    {
      swift_storeEnumTagMultiPayload();
      sub_25E19380C();
      return sub_25E1A515C();
    }

    v24 = *(v19 + 48);
    v25 = sub_25E1A536C();
    (*(*(v25 - 8) + 8))(&v18[v24], v25);
    LOBYTE(v66) = 1;
    goto LABEL_9;
  }

  if ((v21 - 2) >= 3)
  {
    if (v21 != 5)
    {
      sub_25E192DDC(v9);
      v38 = v49;
      (*(v7 + 16))(v48, v9, v49);
      swift_storeEnumTagMultiPayload();
      v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD378, &qword_25E1A7E98);
      v40 = sub_25E193A64();
      v60 = v39;
      v61 = v40;
      swift_getOpaqueTypeConformance2();
      v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD3B8, &qword_25E1A7EC8);
      v42 = sub_25E193C10();
      v60 = &type metadata for ChevronView;
      v61 = v42;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v60 = &type metadata for ChevronView;
      v61 = MEMORY[0x277CE1350];
      v62 = v41;
      v63 = v42;
      v64 = MEMORY[0x277CE1340];
      v65 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v44 = v50;
      sub_25E1A515C();
      sub_25E1817AC(v44, v52, &qword_27FCDD330, &qword_25E1A7E60);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD368, &qword_25E1A7E90);
      sub_25E193898();
      sub_25E193914();
      v45 = v55;
      sub_25E1A515C();
      sub_25E1819EC(v44, &qword_27FCDD330, &qword_25E1A7E60);
      sub_25E1817AC(v45, v58, &qword_27FCDD350, &unk_25E1A7E80);
      swift_storeEnumTagMultiPayload();
      sub_25E19380C();
      sub_25E1A515C();
      sub_25E1819EC(v45, &qword_27FCDD350, &unk_25E1A7E80);
      return (*(v7 + 8))(v9, v38);
    }

    LOBYTE(v66) = 0;
LABEL_9:
    sub_25E1A515C();
    *v52 = v60;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD368, &qword_25E1A7E90);
    sub_25E193898();
    sub_25E193914();
    v26 = v55;
    sub_25E1A515C();
    sub_25E1817AC(v26, v58, &qword_27FCDD350, &unk_25E1A7E80);
    swift_storeEnumTagMultiPayload();
    sub_25E19380C();
    sub_25E1A515C();
    return sub_25E1819EC(v26, &qword_27FCDD350, &unk_25E1A7E80);
  }

  sub_25E1937A8(v1, v16);
  v22 = v20(v16, 6, v19) - 2;
  if (v22 >= 3)
  {
    sub_25E193C64(v16);
    v23 = 0;
  }

  else
  {
    v23 = v22 + 1;
  }

  KeyPath = swift_getKeyPath();
  LOBYTE(v60) = v23;
  v61 = KeyPath;
  LOBYTE(v62) = 0;
  sub_25E1A570C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD3B8, &qword_25E1A7EC8);
  v30 = sub_25E193C10();
  v66 = &type metadata for ChevronView;
  v67 = v30;
  v46 = swift_getOpaqueTypeConformance2();
  v31 = v3;
  sub_25E1A550C();
  sub_25E1832F0(v61, v62);
  v32 = v47;
  v33 = v51;
  (*(v47 + 16))(v48, v31, v51);
  swift_storeEnumTagMultiPayload();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD378, &qword_25E1A7E98);
  v35 = sub_25E193A64();
  v60 = v34;
  v61 = v35;
  swift_getOpaqueTypeConformance2();
  v60 = &type metadata for ChevronView;
  v61 = MEMORY[0x277CE1350];
  v62 = v29;
  v63 = v30;
  v64 = MEMORY[0x277CE1340];
  v65 = v46;
  swift_getOpaqueTypeConformance2();
  v36 = v50;
  sub_25E1A515C();
  sub_25E1817AC(v36, v52, &qword_27FCDD330, &qword_25E1A7E60);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD368, &qword_25E1A7E90);
  sub_25E193898();
  sub_25E193914();
  v37 = v55;
  sub_25E1A515C();
  sub_25E1819EC(v36, &qword_27FCDD330, &qword_25E1A7E60);
  sub_25E1817AC(v37, v58, &qword_27FCDD350, &unk_25E1A7E80);
  swift_storeEnumTagMultiPayload();
  sub_25E19380C();
  sub_25E1A515C();
  sub_25E1819EC(v37, &qword_27FCDD350, &unk_25E1A7E80);
  return (*(v32 + 8))(v31, v33);
}

uint64_t sub_25E192DDC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_25E1A4DBC();
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD378, &qword_25E1A7E98);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = sub_25E1A55BC();
  v8 = sub_25E1A52EC();
  KeyPath = swift_getKeyPath();
  v26 = v7;
  v27 = KeyPath;
  v28 = v8;
  sub_25E1A530C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD098, &unk_25E1A8170);
  sub_25E189B38();
  sub_25E1A540C();

  v10 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD390, &unk_25E1A7EA0) + 36)];
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD3A0, &qword_25E1A7EB8) + 28);
  sub_25E1A504C();
  v12 = sub_25E1A505C();
  (*(*(v12 - 8) + 56))(v10 + v11, 0, 1, v12);
  *v10 = swift_getKeyPath();
  v13 = objc_opt_self();
  v14 = [v13 secondaryLabelColor];
  v15 = sub_25E1A552C();
  v16 = [v13 systemFillColor];
  v17 = sub_25E1A552C();
  v18 = &v6[*(v4 + 36)];
  *v18 = v15;
  v18[1] = v17;
  v19 = sub_25E1A56FC();
  v20 = MEMORY[0x277CDF9D8];
  if ((v19 & 1) == 0)
  {
    v20 = MEMORY[0x277CDFA10];
  }

  v21 = v24;
  (*(v1 + 104))(v3, *v20, v24);
  sub_25E193A64();
  sub_25E1A544C();
  (*(v1 + 8))(v3, v21);
  return sub_25E1819EC(v6, &qword_27FCDD378, &qword_25E1A7E98);
}

uint64_t sub_25E1930F4(uint64_t a1)
{
  v2 = sub_25E1A4DBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9[8] = *a1;
  v10 = v6;
  v11 = v7;
  (*(v3 + 104))(v5, *MEMORY[0x277CDFA10], v2);
  sub_25E193C10();
  sub_25E1A544C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25E193224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD400, &qword_25E1A8028);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25E193F40(a1, &v5 - v3);
  return sub_25E1A4F2C();
}

uint64_t _s13PaymentUIBase18AccessoryViewStyleO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E1A536C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for AccessoryViewStyle(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD408, &unk_25E1A8030);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35 - v16;
  v18 = (&v35 + *(v15 + 56) - v16);
  sub_25E1937A8(a1, &v35 - v16);
  sub_25E1937A8(a2, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 6, v19);
  if (v21 <= 2)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        if (v20(v18, 6, v19) != 1)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      if (v20(v18, 6, v19) == 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_25E1937A8(v17, v13);
      v22 = *v13;
      v40 = *(v13 + 1);
      v23 = *(v19 + 48);
      v38 = v22;
      v39 = v23;
      if (!v20(v18, 6, v19))
      {
        v26 = *v18;
        v36 = v18[1];
        v37 = v26;
        v27 = *(v5 + 32);
        v28 = v39;
        v27(v10, &v13[v39], v4);
        v29 = v18 + v28;
        v30 = v36;
        v27(v8, v29, v4);
        if (v38 == v37 && v40 == v30)
        {
        }

        else
        {
          v32 = sub_25E1A599C();

          if ((v32 & 1) == 0)
          {
            v33 = *(v5 + 8);
            v33(v8, v4);
            v33(v10, v4);
            sub_25E193C64(v17);
            goto LABEL_21;
          }
        }

        v24 = MEMORY[0x25F8ACDE0](v10, v8);
        v34 = *(v5 + 8);
        v34(v8, v4);
        v34(v10, v4);
        sub_25E193C64(v17);
        return v24 & 1;
      }

      (*(v5 + 8))(&v13[v39], v4);
    }

LABEL_20:
    sub_25E193FB0(v17);
LABEL_21:
    v24 = 0;
    return v24 & 1;
  }

  if (v21 > 4)
  {
    if (v21 == 5)
    {
      if (v20(v18, 6, v19) != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v20(v18, 6, v19) == 6)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v21 == 3)
  {
    if (v20(v18, 6, v19) != 3)
    {
      goto LABEL_20;
    }
  }

  else if (v20(v18, 6, v19) != 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_25E193C64(v17);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_25E193724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryViewStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E1937A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryViewStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E19380C()
{
  result = qword_27FCDD358;
  if (!qword_27FCDD358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD350, &unk_25E1A7E80);
    sub_25E193898();
    sub_25E193914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD358);
  }

  return result;
}

unint64_t sub_25E193898()
{
  result = qword_27FCDD360;
  if (!qword_27FCDD360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD368, &qword_25E1A7E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD360);
  }

  return result;
}

unint64_t sub_25E193914()
{
  result = qword_27FCDD370;
  if (!qword_27FCDD370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD330, &qword_25E1A7E60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD378, &qword_25E1A7E98);
    sub_25E193A64();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD3B8, &qword_25E1A7EC8);
    sub_25E193C10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD370);
  }

  return result;
}

unint64_t sub_25E193A64()
{
  result = qword_27FCDD380;
  if (!qword_27FCDD380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD378, &qword_25E1A7E98);
    sub_25E193B1C();
    sub_25E17F9C0(&qword_27FCDD3A8, &qword_27FCDD3B0, &qword_25E1A7EC0, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD380);
  }

  return result;
}

unint64_t sub_25E193B1C()
{
  result = qword_27FCDD388;
  if (!qword_27FCDD388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD390, &unk_25E1A7EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD098, &unk_25E1A8170);
    sub_25E189B38();
    swift_getOpaqueTypeConformance2();
    sub_25E17F9C0(&qword_27FCDD398, &qword_27FCDD3A0, &qword_25E1A7EB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD388);
  }

  return result;
}

unint64_t sub_25E193C10()
{
  result = qword_27FCDD3C0;
  if (!qword_27FCDD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD3C0);
  }

  return result;
}

uint64_t sub_25E193C64(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryViewStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E193D04(uint64_t a1)
{
  sub_25E193D5C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_25E193D5C(uint64_t a1)
{
  if (!qword_27FCDD3D8)
  {
    sub_25E1A536C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FCDD3D8);
    }
  }
}

uint64_t sub_25E193E10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E193E48(uint64_t a1)
{
  result = type metadata accessor for AccessoryViewStyle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25E193EB4()
{
  result = qword_27FCDD3F0;
  if (!qword_27FCDD3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD3F8, &qword_25E1A7FC0);
    sub_25E19380C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD3F0);
  }

  return result;
}

uint64_t sub_25E193F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD400, &qword_25E1A8028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E193FB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD408, &unk_25E1A8030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E194018()
{
  result = sub_25E1A52CC();
  qword_27FCDD410 = result;
  return result;
}

uint64_t sub_25E19405C()
{
  result = sub_25E1A52CC();
  qword_27FCDD418 = result;
  return result;
}

uint64_t sub_25E1940A0()
{
  result = sub_25E1A52CC();
  qword_27FCDD420 = result;
  return result;
}

uint64_t sub_25E1940E4()
{
  result = sub_25E1A52CC();
  qword_27FCDD428 = result;
  return result;
}

uint64_t sub_25E194128(uint64_t a1)
{
  sub_25E1A52DC();
  sub_25E1A531C();
  v1 = sub_25E1A534C();

  qword_27FCDD430 = v1;
  return result;
}

uint64_t CheckmarkStyle.hashValue.getter()
{
  v1 = *v0;
  sub_25E1A59BC();
  MEMORY[0x25F8AD450](v1);
  return sub_25E1A59DC();
}

uint64_t MenuContainerView.init(limitWidth:selection:icon:content:)@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v13 = *a2;
  v20[0] = a5;
  v20[1] = a6;
  if (a1)
  {
    v14 = 0x4069000000000000;
  }

  else
  {
    v14 = 0;
  }

  v20[2] = a8;
  v20[3] = a9;
  v15 = type metadata accessor for MenuContainerView(0, v20);
  v16 = a7 + *(v15 + 60);
  *v16 = v14;
  *(v16 + 8) = (a1 & 1) == 0;
  v18 = a3(v15, v17);
  result = a4(v18);
  *(a7 + *(v15 + 56)) = v13;
  return result;
}

uint64_t MenuContainerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_25E1A51AC();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD438, &qword_25E1A8040);
  v36 = (a1 + 40);
  v42 = *(a1 + 16);
  sub_25E1A4DDC();
  v35 = *(a1 + 32);
  v52 = v35;
  v53 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  sub_25E1A566C();
  swift_getTupleTypeMetadata3();
  v31 = sub_25E1A574C();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_25E1A564C();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = sub_25E1A4DDC();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_25E1A4DDC();
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v26 = swift_getWitnessTable();
  v50 = v26;
  v51 = MEMORY[0x277CDF918];
  v27 = swift_getWitnessTable();
  v48 = v27;
  v49 = MEMORY[0x277CDFC60];
  v28 = swift_getWitnessTable();
  v46 = v11;
  v47 = v28;
  v29 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  *&v21 = v35;
  *(&v21 + 1) = *v36;
  v43 = v42;
  v44 = v21;
  v45 = v37;
  sub_25E1A4FCC();
  sub_25E1A563C();
  sub_25E1A527C();
  sub_25E1A54DC();
  (*(v32 + 8))(v7, v5);
  sub_25E1A573C();
  sub_25E1A54BC();
  (*(v34 + 8))(v10, v8);
  v22 = v38;
  sub_25E1A519C();
  v23 = v28;
  sub_25E1A546C();
  (*(v39 + 8))(v22, v40);
  (*(v33 + 8))(v13, v11);
  v46 = v11;
  v47 = v23;
  swift_getOpaqueTypeConformance2();
  sub_25E181B2C();
  v24 = *(v15 + 8);
  v24(v18, OpaqueTypeMetadata2);
  sub_25E181B2C();
  return (v24)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_25E194958@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a6;
  v48 = sub_25E1A4DDC();
  v66 = a4;
  v67 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v11 = sub_25E1A566C();
  v49 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v44 = &v39 - v16;
  v46 = *(a3 - 1);
  v17 = MEMORY[0x28223BE20](v15);
  v52 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v42 = &v39 - v19;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD438, &qword_25E1A8040);
  v20 = MEMORY[0x28223BE20](v45);
  v51 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v39 - v22;
  v62 = a2;
  v63 = a3;
  v64 = a4;
  v65 = a5;
  v24 = type metadata accessor for MenuContainerView(0, &v62);
  v41 = v23;
  sub_25E194E14(v24, v23);
  v40 = a3;
  v43 = a5;
  sub_25E181B2C();
  sub_25E1A503C();
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v57 = a1;
  v25 = v14;
  sub_25E1A565C();
  v26 = swift_getWitnessTable();
  v27 = v44;
  sub_25E181B2C();
  v28 = v49;
  v48 = *(v49 + 8);
  v48(v14, v11);
  v29 = v23;
  v30 = v51;
  sub_25E195A78(v29, v51);
  v62 = v30;
  v31 = v46;
  v32 = v52;
  v33 = v42;
  v34 = v40;
  (*(v46 + 16))(v52, v42, v40);
  v63 = v32;
  (*(v28 + 16))(v25, v27, v11);
  v64 = v25;
  v35 = v25;
  v61[0] = v45;
  v61[1] = v34;
  v61[2] = v11;
  v58 = sub_25E195AE8();
  v59 = v43;
  v60 = v26;
  sub_25E198E40(&v62, 3uLL, v61);
  v36 = v48;
  v48(v27, v11);
  v37 = *(v31 + 8);
  v37(v33, v34);
  sub_25E195C84(v41);
  v36(v35, v11);
  v37(v52, v34);
  return sub_25E195C84(v51);
}

uint64_t sub_25E194E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = sub_25E1A501C();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD4E8, &unk_25E1A8160);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD4D8, &qword_25E1A8158);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v18 = *(a1 + 56);
  if (*(v2 + v18))
  {
    v37 = v15;
    v38 = v33 - v17;
    v39 = v16;
    v35 = v18;
    v19 = sub_25E1A55BC();
    v33[1] = v19;
    sub_25E1A52DC();
    sub_25E1A531C();
    v20 = sub_25E1A534C();
    v36 = a2;
    v21 = v20;
    v33[0] = v20;

    KeyPath = swift_getKeyPath();
    v34 = v2;
    v23 = KeyPath;
    v24 = sub_25E1A553C();
    v25 = swift_getKeyPath();
    v41 = v19;
    v42 = v23;
    v43 = v21;
    v44 = v25;
    v45 = v24;
    sub_25E1A500C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD088, &qword_25E1A73D8);
    sub_25E189A80();
    sub_25E1A547C();
    (*(v5 + 8))(v7, v40);

    if (*(v34 + v35) == 2)
    {
      v26 = 1.0;
    }

    else
    {
      v26 = 0.0;
    }

    sub_25E181A90(v10, v14, &qword_27FCDD4E8, &unk_25E1A8160);
    v27 = v37;
    v28 = v38;
    *&v14[*(v37 + 36)] = v26;
    sub_25E181A90(v14, v28, &qword_27FCDD4D8, &qword_25E1A8158);
    v29 = v28;
    v30 = v36;
    sub_25E181A90(v29, v36, &qword_27FCDD4D8, &qword_25E1A8158);
    return (*(v39 + 56))(v30, 0, 1, v27);
  }

  else
  {
    v32 = *(v16 + 56);

    return v32(a2, 1, 1);
  }
}

uint64_t sub_25E1951D4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19[1] = a6;
  v10 = sub_25E1A4DDC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  type metadata accessor for MenuContainerView(0, v20);
  sub_25E1A572C();
  sub_25E1A54AC();
  v19[2] = a4;
  v19[3] = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  sub_25E181B2C();
  v17 = *(v11 + 8);
  v17(v14, v10);
  sub_25E181B2C();
  return (v17)(v16, v10);
}

uint64_t MenuContainerView<>.init(limitWidth:selection:content:)@<X0>(char a1@<W0>, char *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *a2;
  a3();
  v14[0] = a4;
  v14[1] = MEMORY[0x277CE1428];
  v14[2] = a5;
  v14[3] = MEMORY[0x277CE1410];
  result = type metadata accessor for MenuContainerView(0, v14);
  *(a6 + *(result + 56)) = v10;
  v12 = 0x4069000000000000;
  if ((a1 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = a6 + *(result + 60);
  *v13 = v12;
  *(v13 + 8) = (a1 & 1) == 0;
  return result;
}

unint64_t sub_25E195458()
{
  result = qword_27FCDD440[0];
  if (!qword_27FCDD440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCDD440);
  }

  return result;
}

void sub_25E195508(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_25E1959F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25E1955B4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFD)
  {
    v11 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 24) - 8) + 64) + v9;
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v13 = (((v12 & ~v9) + v10) & 0xFFFFFFFFFFFFFFF8) + 17;
  v14 = (a2 - v11 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (*&a1[v13])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (v18)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    if (v5 == v11)
    {
      return (*(v4 + 48))(a1);
    }

    v22 = &a1[v12] & ~v9;
    if (v8 == v11)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(v22 + v10);
    if (v23 >= 3)
    {
      return v23 - 2;
    }

    else
    {
      return 0;
    }
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = a1[v13];
  if (!a1[v13])
  {
    goto LABEL_30;
  }

LABEL_26:
  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v11 + (v21 | v20) + 1;
}

void sub_25E195784(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFD)
  {
    v13 = 253;
  }

  v14 = v10 + v11;
  v15 = ((((v10 + v11) & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = (a3 - v13 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v22 = *(v6 + 56);

        v22();
      }

      else
      {
        v23 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v24 = *(v8 + 56);

          v24(v23);
        }

        else
        {
          *(v23 + v12) = a2 + 2;
        }
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

void sub_25E1959F8()
{
  if (!qword_27FCDCD60)
  {
    v0 = sub_25E1A58CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCDCD60);
    }
  }
}

uint64_t sub_25E195A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD438, &qword_25E1A8040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E195AE8()
{
  result = qword_27FCDD4C8;
  if (!qword_27FCDD4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD438, &qword_25E1A8040);
    sub_25E195B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD4C8);
  }

  return result;
}

unint64_t sub_25E195B6C()
{
  result = qword_27FCDD4D0;
  if (!qword_27FCDD4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD4D8, &qword_25E1A8158);
    sub_25E195BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD4D0);
  }

  return result;
}

unint64_t sub_25E195BF8()
{
  result = qword_27FCDD4E0;
  if (!qword_27FCDD4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD4E8, &unk_25E1A8160);
    sub_25E189A80();
    sub_25E180EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD4E0);
  }

  return result;
}

uint64_t sub_25E195C84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD438, &qword_25E1A8040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E195D60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_25E195DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.paymentItemBackground<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_25E1A58CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v15 = type metadata accessor for PaymentItemViewBackgroundModifier(0, a3, a5, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v20 - v17;
  (*(v11 + 16))(v13, a1, v10);
  (*(v11 + 32))(v18, v13, v10);
  MEMORY[0x25F8ACF70](v18, a2, v15, a4);
  return (*(v16 + 8))(v18, v15);
}

uint64_t PaymentItemBackground.body.getter@<X0>(void *a1@<X8>)
{
  if (qword_28155F9B0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_28155F9B8;
}

uint64_t sub_25E196044@<X0>(void *a1@<X8>)
{
  if (qword_28155F9B0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_28155F9B8;
}

uint64_t sub_25E1960B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_28155F9B0 != -1)
  {
    swift_once();
  }

  v4 = qword_28155F9B8;
  v5 = sub_25E1A527C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD578, &qword_25E1A8428);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD580, &qword_25E1A8430) + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
}

uint64_t sub_25E1961A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v61 = a3;
  swift_getWitnessTable();
  v4 = sub_25E1A517C();
  v5 = sub_25E1A4DDC();
  v56 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v9;
  v10 = *(a2 + 16);
  v52 = *(a2 + 24);
  v63 = sub_25E1A513C();
  v64 = v4;
  v11 = sub_25E1A4DDC();
  v54 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v50 - v15;
  v16 = sub_25E1A58CC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = *(v10 - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25E1A516C();
  v59 = *(v24 - 8);
  v60 = v24;
  MEMORY[0x28223BE20](v24);
  v62 = &v50 - v25;
  (*(v17 + 16))(v20, v57, v16);
  if ((*(v21 + 48))(v20, 1, v10) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v26 = v64;
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x25F8ACF70](WitnessTable, v26, &type metadata for PaymentItemDefaultBackgroundModifier, WitnessTable);
    v28 = sub_25E19694C();
    v77 = WitnessTable;
    v78 = v28;
    v29 = swift_getWitnessTable();
    v30 = v55;
    sub_25E181B2C();
    v31 = *(v56 + 8);
    v31(v8, v5);
    sub_25E181B2C();
    v32 = swift_getWitnessTable();
    v75 = WitnessTable;
    v76 = v32;
    v33 = swift_getWitnessTable();
    sub_25E199108(v8, v11, v5, v33, v29);
    v31(v8, v5);
    v31(v30, v5);
  }

  else
  {
    v34 = *(v21 + 32);
    v51 = v23;
    v34(v23, v20, v10);
    sub_25E1A572C();
    v35 = swift_getWitnessTable();
    sub_25E1A53FC();
    v36 = swift_getWitnessTable();
    v67 = v35;
    v68 = v36;
    v58 = MEMORY[0x277CDFAD8];
    v37 = swift_getWitnessTable();
    v38 = v53;
    sub_25E181B2C();
    v39 = *(v54 + 8);
    v39(v14, v11);
    sub_25E181B2C();
    v40 = sub_25E19694C();
    v65 = v35;
    v66 = v40;
    v41 = swift_getWitnessTable();
    sub_25E199010(v14, v11, v5, v37, v41);
    v39(v14, v11);
    v39(v38, v11);
    (*(v21 + 8))(v51, v10);
  }

  v42 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v73 = v42;
  v74 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_25E19694C();
  v71 = v42;
  v72 = v45;
  v46 = swift_getWitnessTable();
  v69 = v44;
  v70 = v46;
  v47 = v60;
  swift_getWitnessTable();
  v48 = v62;
  sub_25E181B2C();
  return (*(v59 + 8))(v48, v47);
}

unint64_t sub_25E19694C()
{
  result = qword_27FCDD4F0[0];
  if (!qword_27FCDD4F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCDD4F0);
  }

  return result;
}

uint64_t sub_25E1969B8(uint64_t a1)
{
  result = sub_25E1A58CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25E196A28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_25E196BA8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t sub_25E196E34()
{
  result = qword_27FCDD588;
  if (!qword_27FCDD588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD580, &qword_25E1A8430);
    sub_25E17F9C0(&qword_27FCDD590, &qword_27FCDD578, &qword_25E1A8428, MEMORY[0x277CE04B0]);
    sub_25E17F9C0(&qword_28155F9F0, &qword_27FCDD0A0, &unk_25E1A73E0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD588);
  }

  return result;
}

void *BaseAuthenticatorModel.PasscodeEntry.init(view:completion:viewPresented:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = *result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id BaseAuthenticatorModel.PasscodeEntry.view.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t BaseAuthenticatorModel.PasscodeEntry.completion.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t BaseAuthenticatorModel.PasscodeEntry.viewPresented.getter()
{
  v1 = *(v0 + 24);
  sub_25E17FA64(v1, *(v0 + 32));
  return v1;
}

unint64_t sub_25E196FE0()
{
  result = qword_27FCDD598;
  if (!qword_27FCDD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD598);
  }

  return result;
}

uint64_t sub_25E197084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E197250();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25E1970E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E197250();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25E19714C(uint64_t a1)
{
  sub_25E197250();
  sub_25E1A521C();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25E1971A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25E1971E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_25E197250()
{
  result = qword_27FCDD5A0;
  if (!qword_27FCDD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD5A0);
  }

  return result;
}

uint64_t PaymentUIBaseLocalizedString(for:table:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_25E1A57EC();
  v6 = sub_25E1A57EC();
  v7 = sub_25E1A57EC();
  v8 = [a4 localizedStringForKey:v5 value:v6 table:v7];

  v9 = sub_25E1A580C();
  return v9;
}

id static NSBundle.PaymentUIBaseBundle.getter()
{
  if (qword_27FCDCAF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FCDD5A8;

  return v1;
}

uint64_t PaymentUIBaseLocalizedString(for:table:bundle:localization:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_25E1A57EC();
  v8 = sub_25E1A57EC();
  v9 = sub_25E1A57EC();
  v10 = sub_25E1A57EC();
  v11 = [a4 localizedStringForKey:v7 value:v8 table:v9 localization:v10];

  v12 = sub_25E1A580C();
  return v12;
}

void sub_25E1974A4()
{
  v0 = sub_25E1A57EC();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_27FCDD5A8 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t PaymentUIBaseLocalizedString(formatKey:table:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27FCDCAF0 != -1)
  {
    swift_once();
  }

  v4 = qword_27FCDD5A8;
  v5 = sub_25E1A57EC();
  v6 = sub_25E1A57EC();
  v7 = sub_25E1A57EC();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  sub_25E1A580C();
  v9 = sub_25E1A57FC();

  return v9;
}

uint64_t LocalizedStringTable.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25E1A598C();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_25E1976A4()
{
  result = qword_27FCDD5B0;
  if (!qword_27FCDD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD5B0);
  }

  return result;
}

uint64_t sub_25E1976F8()
{
  sub_25E1A59BC();
  sub_25E1A581C();
  return sub_25E1A59DC();
}

uint64_t sub_25E19776C(uint64_t a1)
{
  sub_25E1A59BC();
  sub_25E1A581C();
  return sub_25E1A59DC();
}

uint64_t sub_25E1977C0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25E1A598C();

  *a2 = v3 != 0;
  return result;
}

PaymentUIBase::UserInterfaceType __swiftcall userInterface()()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v5 = 0x10000020403uLL >> (8 * v3);
  if (v3 >= 6)
  {
    LOBYTE(v5) = 0;
  }

  *v1 = v5;
  return result;
}

void *EnvironmentValues.userInterfaceType.getter()
{
  sub_25E1832FC();

  return sub_25E1A4F9C();
}

uint64_t EnvironmentValues.shouldUseAccessibleLayout.getter()
{
  v0 = sub_25E1A518C();
  v29 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v27 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD5D8, &qword_25E1A86A0);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD5E0, &qword_25E1A86A8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = sub_25E1A4DBC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E18B73C();
  sub_25E1A4F9C();
  v17 = v30;
  if (v30 == 2)
  {
    sub_25E1A4E9C();
    v18 = sub_25E1A4DAC();
    (*(v14 + 8))(v16, v13);
    if ((v18 & 1) == 0)
    {
      v17 = 0;
      return v17 & 1;
    }

    sub_25E1A4F0C();
    v19 = v29;
    (*(v29 + 104))(v10, *MEMORY[0x277CE0558], v0);
    (*(v19 + 56))(v10, 0, 1, v0);
    v20 = *(v2 + 48);
    sub_25E197F6C(v12, v4);
    sub_25E197F6C(v10, &v4[v20]);
    v21 = *(v19 + 48);
    if (v21(v4, 1, v0) == 1)
    {
      sub_25E1819EC(v10, &qword_27FCDD5E0, &qword_25E1A86A8);
      sub_25E1819EC(v12, &qword_27FCDD5E0, &qword_25E1A86A8);
      if (v21(&v4[v20], 1, v0) == 1)
      {
        sub_25E1819EC(v4, &qword_27FCDD5E0, &qword_25E1A86A8);
        v17 = 1;
        return v17 & 1;
      }
    }

    else
    {
      v22 = v28;
      sub_25E197F6C(v4, v28);
      if (v21(&v4[v20], 1, v0) != 1)
      {
        v23 = v27;
        (*(v19 + 32))(v27, &v4[v20], v0);
        sub_25E197FDC();
        v24 = v22;
        v17 = sub_25E1A57DC();
        v25 = *(v19 + 8);
        v25(v23, v0);
        sub_25E1819EC(v10, &qword_27FCDD5E0, &qword_25E1A86A8);
        sub_25E1819EC(v12, &qword_27FCDD5E0, &qword_25E1A86A8);
        v25(v24, v0);
        sub_25E1819EC(v4, &qword_27FCDD5E0, &qword_25E1A86A8);
        return v17 & 1;
      }

      sub_25E1819EC(v10, &qword_27FCDD5E0, &qword_25E1A86A8);
      sub_25E1819EC(v12, &qword_27FCDD5E0, &qword_25E1A86A8);
      (*(v19 + 8))(v22, v0);
    }

    sub_25E1819EC(v4, &qword_27FCDD5D8, &qword_25E1A86A0);
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t EnvironmentValues.availableSheetItems.getter()
{
  sub_25E190900();
  sub_25E1A4F9C();
  return v1;
}

PaymentUIBase::UserInterfaceType_optional __swiftcall UserInterfaceType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25E197F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD5E0, &qword_25E1A86A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E197FDC()
{
  result = qword_27FCDD5E8;
  if (!qword_27FCDD5E8)
  {
    sub_25E1A518C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD5E8);
  }

  return result;
}

uint64_t sub_25E198040@<X0>(_BYTE *a1@<X8>)
{
  if (qword_2815603D0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_2815603D8;
  return result;
}

uint64_t sub_25E1980A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25E198A34();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void sub_25E198110()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_27FCDD5B9 = v1 == 1;
}

void sub_25E198198()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = [v0 currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v3 = v5 == 5;
  }

  byte_27FCDD5BA = v3;
}

uint64_t (*EnvironmentValues.userInterfaceType.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_25E1832FC();
  sub_25E1A4F9C();
  return sub_25E1982CC;
}

unint64_t sub_25E198324()
{
  result = qword_281560410;
  if (!qword_281560410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281560410);
  }

  return result;
}

uint64_t (*EnvironmentValues.isPadIdiom.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E198324();
  sub_25E1A4F9C();
  *(a1 + 16) = *(a1 + 17);
  return sub_25E198400;
}

uint64_t sub_25E19842C(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_25E1A4F9C();
  return v3;
}

unint64_t sub_25E198474()
{
  result = qword_281560420;
  if (!qword_281560420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281560420);
  }

  return result;
}

uint64_t (*EnvironmentValues.isLargeUI.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E198474();
  sub_25E1A4F9C();
  *(a1 + 16) = *(a1 + 17);
  return sub_25E198598;
}

uint64_t sub_25E1985B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25E198CE4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.shouldUseAccessibleLayout.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = EnvironmentValues.shouldUseAccessibleLayout.getter() & 1;
  return sub_25E198660;
}

uint64_t sub_25E198660(uint64_t a1)
{
  *(a1 + 9) = *(a1 + 8);
  sub_25E18B73C();
  return sub_25E1A4FAC();
}

uint64_t sub_25E1986A8()
{
  v0 = [objc_opt_self() mainScreen];
  v1 = [v0 fixedCoordinateSpace];

  [v1 bounds];
  v3 = v2;
  result = swift_unknownObjectRelease();
  qword_27FCDD5C0 = v3;
  return result;
}

uint64_t sub_25E198730()
{
  if (qword_281560258 != -1)
  {
    result = swift_once();
  }

  byte_27FCDD5C8 = *&qword_27FCDD5C0 <= 320.0;
  return result;
}

uint64_t sub_25E1987BC@<X0>(void *a1@<X2>, _BYTE *a2@<X3>, _BYTE *a4@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

uint64_t (*EnvironmentValues.isCompactLayout.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E18B790();
  sub_25E1A4F9C();
  *(a1 + 16) = *(a1 + 17);
  return sub_25E198878;
}

uint64_t sub_25E1988C8@<X0>(void *a1@<X8>)
{
  if (qword_27FCDCAF8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27FCDD5D0;
}

uint64_t (*EnvironmentValues.availableSheetItems.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_25E190900();
  sub_25E1A4F9C();
  return sub_25E19899C;
}

uint64_t sub_25E19899C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_25E1A4FAC();
  }

  sub_25E1A4FAC();
}

unint64_t sub_25E198A34()
{
  result = qword_27FCDD5F0;
  if (!qword_27FCDD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD5F0);
  }

  return result;
}

void *keypath_get_4Tm@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_25E1A4F9C();
  *a3 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for UserInterfaceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserInterfaceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25E198CE4()
{
  result = qword_27FCDD5F8;
  if (!qword_27FCDD5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCC28, &qword_25E1A6800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD5F8);
  }

  return result;
}

uint64_t sub_25E198E40(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_25E1A575C();
}

uint64_t sub_25E199010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25E1A514C();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25E1A515C();
}

uint64_t sub_25E199108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25E1A514C();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25E1A515C();
}

uint64_t PaymentItem<>.init(icon:primaryLabel:secondaryLabel:chevronStyle:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a3)(uint64_t)@<X2>, void (*a5)(uint64_t)@<X4>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a13)
{
  v17 = *a7;
  v16 = 0;
  *&v15 = a10;
  *(&v15 + 1) = MEMORY[0x277CE1428];
  *&v14 = a8;
  *(&v14 + 1) = a9;
  return PaymentItem.init(icon:primaryLabel:secondaryLabel:chevronStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, a3, a5, &v17, sub_25E1A2510, x8_0, 0, &v16, 0, 0, 0, 0, 0, v14, v15, a11, a13, MEMORY[0x277CE1410]);
}

double sub_25E199288(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD6F8, &qword_25E1A8B88);
  sub_25E1A55EC();
  return v2;
}

uint64_t sub_25E199348(uint64_t a1)
{
  v3 = sub_25E1A4F8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 120);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_25E1A588C();
    v9 = sub_25E1A525C();
    sub_25E1A4C0C();

    sub_25E1A4F7C();
    swift_getAtKeyPath();
    sub_25E1832F0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_25E19949C(uint64_t a1)
{
  v3 = sub_25E1A4F8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 124);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_25E1A588C();
    v9 = sub_25E1A525C();
    sub_25E1A4C0C();

    sub_25E1A4F7C();
    swift_getAtKeyPath();
    sub_25E1832F0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t PaymentItem.init(icon:primaryLabel:secondaryLabel:chevronStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, void (*a3)(uint64_t)@<X4>, unsigned __int8 *a4@<X6>, uint64_t (*a5)(uint64_t)@<X7>, uint64_t a6@<X8>, uint64_t a7, char *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  v22 = *a4;
  v38 = *a8;
  v40[0] = a14;
  v40[1] = a15;
  v40[2] = a16;
  v41 = a17;
  v42 = a18;
  v23 = type metadata accessor for PaymentItem(0, v40);
  v24 = (a6 + v23[29]);
  v43 = 0;
  sub_25E1A55DC();
  v25 = *(&v40[0] + 1);
  *v24 = *&v40[0];
  v24[1] = v25;
  v26 = a6 + v23[30];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a6 + v23[31];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = v23[32];
  *(a6 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD298, &qword_25E1A7AD0);
  v29 = swift_storeEnumTagMultiPayload();
  *(a6 + v23[33]) = 0x4052800000000000;
  *(a6 + v23[34]) = 0x402C000000000000;
  *(a6 + v23[35]) = 0x4044000000000000;
  v30 = a1(v29);
  v31 = a2(v30);
  a3(v31);
  v32 = v23[23];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  v34 = (*(*(v33 - 8) + 56))(a6 + v32, (v22 + 1), 6, v33);
  result = a5(v34);
  *(a6 + v23[25]) = v38;
  *(a6 + v23[26]) = a9;
  v36 = (a6 + v23[27]);
  *v36 = a10;
  v36[1] = a11;
  v37 = (a6 + v23[28]);
  *v37 = a12;
  v37[1] = a13;
  return result;
}

uint64_t PaymentItem.init(icon:primaryLabel:secondaryLabel:accessoryViewStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X6>, void (*a5)(uint64_t)@<X7>, uint64_t a6@<X8>, uint64_t a7, char *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  v36 = *a8;
  v38[0] = a14;
  v38[1] = a15;
  v38[2] = a16;
  v39 = a17;
  v40 = a18;
  v22 = type metadata accessor for PaymentItem(0, v38);
  v23 = (a6 + v22[29]);
  v41 = 0;
  sub_25E1A55DC();
  v24 = *(&v38[0] + 1);
  *v23 = *&v38[0];
  v23[1] = v24;
  v25 = a6 + v22[30];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a6 + v22[31];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = v22[32];
  *(a6 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD298, &qword_25E1A7AD0);
  v28 = swift_storeEnumTagMultiPayload();
  *(a6 + v22[33]) = 0x4052800000000000;
  *(a6 + v22[34]) = 0x402C000000000000;
  *(a6 + v22[35]) = 0x4044000000000000;
  v29 = a1(v28);
  v30 = a2(v29);
  a3(v30);
  v31 = sub_25E1A2400(a4, a6 + v22[23], type metadata accessor for AccessoryViewStyle);
  a5(v31);
  result = sub_25E1A24B0(a4, type metadata accessor for AccessoryViewStyle);
  *(a6 + v22[25]) = v36;
  *(a6 + v22[26]) = a9;
  v33 = (a6 + v22[27]);
  *v33 = a10;
  v33[1] = a11;
  v34 = (a6 + v22[28]);
  *v34 = a12;
  v34[1] = a13;
  return result;
}

uint64_t sub_25E199AAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v94 = a1[2];
  v3 = sub_25E1A4DDC();
  v93 = a1[6];
  v134 = v93;
  v135 = MEMORY[0x277CDF678];
  v132 = v3;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A524C();
  sub_25E1A4DDC();
  v92 = a1[3];
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  v91 = a1[4];
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  v100 = a1;
  v90 = a1[5];
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v89 = a1[9];
  v130 = v89;
  v131 = MEMORY[0x277CDFC60];
  v4 = swift_getWitnessTable();
  v5 = MEMORY[0x277CDF918];
  v128 = v4;
  v129 = MEMORY[0x277CDF918];
  v126 = swift_getWitnessTable();
  v127 = v5;
  v124 = swift_getWitnessTable();
  v125 = v5;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  v6 = sub_25E1A566C();
  v7 = swift_getWitnessTable();
  v132 = v6;
  WitnessTable = v7;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD608, &qword_25E1A8A48);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD050, &qword_25E1A8A50);
  v8 = sub_25E1A4DDC();
  v95 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v87 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v86 = &v83 - v11;
  v132 = v6;
  WitnessTable = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v122 = OpaqueTypeConformance2;
  v123 = v13;
  v120 = swift_getWitnessTable();
  v121 = MEMORY[0x277CDFC60];
  v14 = swift_getWitnessTable();
  v15 = sub_25E17F9C0(&qword_27FCDD610, &qword_27FCDD608, &qword_25E1A8A48, MEMORY[0x277CE0328]);
  v118 = v14;
  v119 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50, MEMORY[0x277CDF4F0]);
  v116 = v16;
  v117 = v17;
  v18 = swift_getWitnessTable();
  v132 = v8;
  WitnessTable = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = *(OpaqueTypeMetadata2 - 8);
  v20 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v83 - v23;
  v105 = v18;
  v25 = sub_25E1A562C();
  v98 = OpaqueTypeMetadata2;
  v26 = sub_25E1A516C();
  v97 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  v96 = &v83 - v28;
  v88 = *(v25 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v83 - v32;
  v99 = v8;
  v34 = sub_25E1A516C();
  v35 = v103;
  v36 = v34;
  v102 = *(v34 - 8);
  v37 = MEMORY[0x28223BE20](v100);
  v39 = &v83 - v38;
  v40 = (v35 + *(v37 + 108));
  v41 = *v40;
  v101 = v39;
  if (v41)
  {
    v95 = v36;
    v86 = v40[1];
    v42 = v86;
    v43 = MEMORY[0x28223BE20](v37);
    v87 = v26;
    *&v44 = v94;
    *(&v44 + 1) = v92;
    *&v45 = v91;
    *(&v45 + 1) = v90;
    *(&v83 - 5) = v44;
    *(&v83 - 4) = v45;
    *(&v83 - 6) = v93;
    *(&v83 - 5) = *(v43 + 56);
    *(&v83 - 3) = v89;
    *(&v83 - 2) = v35;
    sub_25E17FA64(v41, v42);

    v46 = v99;
    sub_25E1A560C();
    v47 = swift_getWitnessTable();
    sub_25E181B2C();
    v48 = *(v88 + 8);
    v48(v31, v25);
    sub_25E181B2C();
    v132 = v46;
    WitnessTable = v105;
    v49 = swift_getOpaqueTypeConformance2();
    v50 = v96;
    sub_25E199010(v31, v25, v98, v47, v49);
    v106 = v47;
    v107 = v49;
    v51 = v87;
    v52 = swift_getWitnessTable();
    v53 = v101;
    sub_25E199010(v50, v51, v46, v52, v105);
    sub_25E1A19BC(v41, v86);
    (*(v97 + 8))(v50, v51);
    v48(v31, v25);
    v48(v33, v25);
    v36 = v95;
    v54 = v46;
  }

  else
  {
    v84 = v24;
    v55 = v86;
    v94 = v25;
    v56 = v99;
    v57 = (v35 + *(v37 + 112));
    v58 = *v57;
    if (*v57)
    {
      v59 = v22;
      v60 = v57[1];
      v61 = v37;

      v62 = v55;
      sub_25E19B1EC(v61, v55);
      v63 = swift_allocObject();
      *(v63 + 16) = v58;
      *(v63 + 24) = v60;
      v93 = v60;

      v54 = v56;
      v103 = v58;
      v64 = v105;
      sub_25E1A542C();

      (*(v95 + 8))(v62, v54);
      v132 = v54;
      WitnessTable = v64;
      v65 = swift_getOpaqueTypeConformance2();
      v66 = v98;
      sub_25E181B2C();
      v95 = v36;
      v67 = *(v85 + 8);
      v67(v59, v66);
      sub_25E181B2C();
      v68 = v94;
      v69 = swift_getWitnessTable();
      v70 = v96;
      sub_25E199108(v59, v68, v66, v69, v65);
      v108 = v69;
      v109 = v65;
      v71 = swift_getWitnessTable();
      v53 = v101;
      sub_25E199010(v70, v26, v54, v71, v105);
      sub_25E1A19BC(v103, v93);
      (*(v97 + 8))(v70, v26);
      v67(v59, v66);
      v67(v84, v66);
      v36 = v95;
    }

    else
    {
      v72 = v87;
      sub_25E19B1EC(v37, v87);
      v73 = v105;
      sub_25E181B2C();
      v74 = *(v95 + 8);
      v74(v72, v56);
      sub_25E181B2C();
      v75 = swift_getWitnessTable();
      v132 = v56;
      WitnessTable = v73;
      v76 = swift_getOpaqueTypeConformance2();
      v114 = v75;
      v115 = v76;
      v77 = swift_getWitnessTable();
      v78 = v101;
      sub_25E199108(v72, v26, v56, v77, v73);
      v74(v72, v56);
      v74(v55, v56);
      v54 = v56;
      v53 = v78;
    }
  }

  v79 = swift_getWitnessTable();
  v80 = v105;
  v132 = v54;
  WitnessTable = v105;
  v81 = swift_getOpaqueTypeConformance2();
  v112 = v79;
  v113 = v81;
  v110 = swift_getWitnessTable();
  v111 = v80;
  swift_getWitnessTable();
  sub_25E181B2C();
  return (*(v102 + 8))(v53, v36);
}

uint64_t sub_25E19AAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a8;
  v38 = a7;
  v36 = a6;
  v33 = a5;
  v34 = a4;
  v35 = a3;
  v37 = a2;
  v40 = a1;
  v41 = a9;
  v32[2] = a10;
  sub_25E1A4DDC();
  v66 = a6;
  v67 = MEMORY[0x277CDF678];
  v11 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A524C();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v64 = a10;
  v65 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x277CDF918];
  v62 = WitnessTable;
  v63 = MEMORY[0x277CDF918];
  v32[3] = v11;
  v60 = swift_getWitnessTable();
  v61 = v13;
  v58 = swift_getWitnessTable();
  v59 = v13;
  swift_getWitnessTable();
  v32[1] = MEMORY[0x277CDEAE8];
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  v14 = sub_25E1A566C();
  v15 = swift_getWitnessTable();
  v50 = v14;
  v51 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD608, &qword_25E1A8A48);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD050, &qword_25E1A8A50);
  v16 = sub_25E1A4DDC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v32 - v21;
  v50 = v37;
  v51 = v35;
  v52 = v34;
  v53 = v33;
  v54 = v36;
  v55 = v38;
  v56 = v39;
  v57 = a10;
  v23 = type metadata accessor for PaymentItem(0, &v50);
  sub_25E19B1EC(v23, v20);
  v50 = v14;
  v51 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v48 = OpaqueTypeConformance2;
  v49 = v25;
  v46 = swift_getWitnessTable();
  v47 = MEMORY[0x277CDFC60];
  v26 = swift_getWitnessTable();
  v27 = sub_25E17F9C0(&qword_27FCDD610, &qword_27FCDD608, &qword_25E1A8A48, MEMORY[0x277CE0328]);
  v44 = v26;
  v45 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50, MEMORY[0x277CDF4F0]);
  v42 = v28;
  v43 = v29;
  swift_getWitnessTable();
  sub_25E181B2C();
  v30 = *(v17 + 8);
  v30(v20, v16);
  sub_25E181B2C();
  return (v30)(v22, v16);
}

uint64_t sub_25E19B1EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v85 = sub_25E1A4E3C();
  v3 = MEMORY[0x28223BE20](v85);
  v84 = (v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = *(a1 - 1);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v3);
  v81 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E1A51AC();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77.i64[0] = a1[2];
  v8 = sub_25E1A4DDC();
  v92 = a1[6];
  v116 = v92;
  v117 = MEMORY[0x277CDF678];
  v9 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v114 = v8;
  v115 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v88 = sub_25E1A524C();
  sub_25E1A4DDC();
  *&v76 = a1[3];
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  v75.i64[0] = a1[4];
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  v87 = a1;
  v69 = a1[5];
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v11 = sub_25E1A4DDC();
  v90 = a1[9];
  v112 = v90;
  v113 = MEMORY[0x277CDFC60];
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x277CDF918];
  v110 = v12;
  v111 = MEMORY[0x277CDF918];
  v89 = v9;
  v108 = swift_getWitnessTable();
  v109 = v13;
  v106 = swift_getWitnessTable();
  v107 = v13;
  v14 = swift_getWitnessTable();
  v114 = v11;
  v115 = v14;
  v60[1] = MEMORY[0x277CDEAE8];
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  v62 = swift_getWitnessTable();
  v15 = sub_25E1A566C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v60 - v17;
  v19 = swift_getWitnessTable();
  v114 = v15;
  v115 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = v60 - v21;
  v61 = sub_25E1A4DDC();
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60[0] = v60 - v23;
  v66 = sub_25E1A4DDC();
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v88 = v60 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD608, &qword_25E1A8A48);
  v68 = sub_25E1A4DDC();
  v73 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = v60 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD050, &qword_25E1A8A50);
  v72 = sub_25E1A4DDC();
  v74 = *(v72 - 8);
  v26 = MEMORY[0x28223BE20](v72);
  v67 = v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v71 = v60 - v28;
  sub_25E1A503C();
  v29.i64[0] = v77.i64[0];
  v29.i64[1] = v76;
  *&v30 = v75.i64[0];
  *(&v30 + 1) = v69;
  v76 = v30;
  v77 = v29;
  v93 = v29;
  v94 = v30;
  v29.i64[0] = v92;
  v31 = v91;
  v97 = v91;
  v32 = v87;
  v75 = *(v87 + 7);
  *&v30 = vdupq_laneq_s64(v75, 1).u64[0];
  *(&v30 + 1) = v90;
  v95 = vzip1q_s64(v29, v75);
  v96 = v30;
  sub_25E1A565C();
  v33 = v78;
  sub_25E1A519C();
  sub_25E1A546C();
  (*(v79 + 8))(v33, v80);
  (*(v16 + 8))(v18, v15);
  v114 = v15;
  v115 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v60[0];
  sub_25E1A548C();
  (*(v63 + 8))(v22, OpaqueTypeMetadata2);
  v36 = v32;
  sub_25E1A572C();
  v37 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v104 = OpaqueTypeConformance2;
  v105 = v37;
  v58 = v61;
  v59 = swift_getWitnessTable();
  sub_25E1A54BC();
  (*(v64 + 8))(v35, v58);
  v39 = v81;
  v38 = v82;
  (*(v82 + 16))(v81, v31, v32);
  v40 = v38;
  v41 = (*(v38 + 80) + 80) & ~*(v38 + 80);
  v42 = swift_allocObject();
  v43 = v76;
  *(v42 + 16) = v77;
  *(v42 + 32) = v43;
  *(v42 + 48) = v92;
  *(v42 + 56) = v75;
  *(v42 + 72) = v90;
  (*(v40 + 32))(v42 + v41, v39, v36);
  v114 = sub_25E1A19FC;
  v115 = v42;
  sub_25E1A572C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD6C8, &qword_25E1A8B78);
  v102 = v59;
  v103 = MEMORY[0x277CDFC60];
  v44 = v66;
  v45 = swift_getWitnessTable();
  sub_25E17F9C0(&qword_27FCDD6D0, &qword_27FCDD6C8, &qword_25E1A8B78, MEMORY[0x277CDF7D8]);
  v46 = v65;
  v47 = v88;
  sub_25E1A53FC();

  (*(v70 + 8))(v47, v44);
  v48 = v84;
  sub_25E19EE24(v84);
  v49 = sub_25E17F9C0(&qword_27FCDD610, &qword_27FCDD608, &qword_25E1A8A48, MEMORY[0x277CE0328]);
  v100 = v45;
  v101 = v49;
  v50 = v68;
  v51 = swift_getWitnessTable();
  sub_25E1A2468(&qword_27FCDD6D8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v52 = v67;
  sub_25E1A551C();
  sub_25E1A24B0(v48, MEMORY[0x277CDFC08]);
  (*(v73 + 8))(v46, v50);
  v53 = sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50, MEMORY[0x277CDF4F0]);
  v98 = v51;
  v99 = v53;
  v54 = v72;
  swift_getWitnessTable();
  v55 = v71;
  sub_25E181B2C();
  v56 = *(v74 + 8);
  v56(v52, v54);
  sub_25E181B2C();
  return (v56)(v55, v54);
}

uint64_t sub_25E19BF78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v171 = a8;
  v172 = a7;
  v176 = a6;
  v177 = a3;
  v178 = a5;
  v169 = a4;
  v175 = a2;
  v155 = a1;
  v165 = a9;
  v167 = a10;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v11 = sub_25E1A4DDC();
  v213 = a10;
  v214 = MEMORY[0x277CDFC60];
  v12 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v211 = WitnessTable;
  v212 = MEMORY[0x277CDF918];
  v13 = MEMORY[0x277CDF918];
  v142 = swift_getWitnessTable();
  v209 = v142;
  v210 = v13;
  v143 = swift_getWitnessTable();
  v207 = v143;
  v208 = v13;
  v158 = v12;
  v195 = v11;
  v144 = swift_getWitnessTable();
  v196 = v144;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v170 = sub_25E1A524C();
  v15 = sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  v16 = sub_25E1A574C();
  v163 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v146 = &v117 - v17;
  v18 = sub_25E1A51AC();
  v139 = *(v18 - 8);
  v140 = v18;
  MEMORY[0x28223BE20](v18);
  v137 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = swift_checkMetadataState();
  v127 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v122 = &v117 - v20;
  v129 = swift_checkMetadataState();
  v125 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v121 = &v117 - v21;
  v128 = swift_checkMetadataState();
  v123 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v119 = &v117 - v22;
  v130 = swift_checkMetadataState();
  v124 = *(v130 - 8);
  v23 = MEMORY[0x28223BE20](v130);
  v120 = &v117 - v24;
  v145 = OpaqueTypeMetadata2;
  v132 = *(OpaqueTypeMetadata2 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v126 = &v117 - v26;
  v147 = v15;
  v135 = *(v15 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v133 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v138 = &v117 - v29;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD700, &qword_25E1A8B90);
  v30 = MEMORY[0x28223BE20](v160);
  v118 = &v117 - v31;
  v148 = v10;
  v134 = *(v10 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v136 = &v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v168 = &v117 - v34;
  v35 = v178;
  v149 = sub_25E1A58CC();
  v151 = *(v149 - 8);
  v36 = MEMORY[0x28223BE20](v149);
  v150 = &v117 - v37;
  v166 = *(v35 - 1);
  MEMORY[0x28223BE20](v36);
  v159 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v16;
  v39 = sub_25E1A58CC();
  v161 = *(v39 - 8);
  v162 = v39;
  v40 = MEMORY[0x28223BE20](v39);
  v174 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v173 = &v117 - v42;
  v43 = sub_25E1A4DDC();
  v205 = v176;
  v206 = MEMORY[0x277CDF678];
  v44 = swift_getWitnessTable();
  v195 = v43;
  v196 = v44;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  v45 = v169;
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  v157 = swift_getWitnessTable();
  v46 = sub_25E1A564C();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v117 - v48;
  v50 = sub_25E1A4DDC();
  v170 = *(v50 - 8);
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &v117 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v55 = &v117 - v54;
  v179 = v175;
  v180 = v177;
  v181 = v45;
  v182 = v178;
  v183 = v176;
  v184 = v172;
  v185 = v171;
  v56 = v167;
  v186 = v167;
  v57 = v155;
  v187 = v155;
  sub_25E1A4FCC();
  sub_25E1A563C();
  v58 = swift_getWitnessTable();
  sub_25E1A54CC();
  (*(v47 + 8))(v49, v46);
  v59 = v149;
  v203 = v58;
  v204 = MEMORY[0x277CDF918];
  v60 = swift_getWitnessTable();
  v156 = v55;
  v61 = v151;
  v152 = v60;
  sub_25E181B2C();
  v62 = *(v170 + 8);
  v157 = v53;
  v158 = v50;
  v63 = v53;
  v64 = v150;
  v153 = v62;
  v154 = v170 + 8;
  v62(v63, v50);
  v195 = v175;
  v65 = v178;
  v196 = v177;
  v197 = v169;
  v198 = v178;
  v199 = v176;
  v200 = v172;
  v201 = v171;
  v202 = v56;
  v66 = type metadata accessor for PaymentItem(0, &v195);
  (*(v61 + 16))(v64, v57 + *(v66 + 96), v59);
  v67 = v166;
  if ((*(v166 + 48))(v64, 1, v65) == 1)
  {
    (*(v61 + 8))(v64, v59);
    v68 = v174;
    (*(v163 + 56))(v174, 1, 1, v164);
  }

  else
  {
    (*(v67 + 32))(v159, v64, v65);
    v69 = 0x4028000000000000;
    if (((*(v57 + *(v66 + 100)) - 1) & 0xFE) == 0)
    {
      v69 = 0;
    }

    v172 = v69;
    v70 = v118;
    sub_25E1A56BC();
    v71 = sub_25E1A529C();
    sub_25E1A4CFC();
    v72 = v70 + *(v160 + 36);
    *v72 = v71;
    *(v72 + 8) = v73;
    *(v72 + 16) = v74;
    *(v72 + 24) = v75;
    *(v72 + 32) = v76;
    *(v72 + 40) = 0;
    v77 = sub_25E1A570C();
    MEMORY[0x28223BE20](v77);
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD708, &unk_25E1A8B98);
    v175 = sub_25E1A2170();
    v177 = sub_25E1A222C();
    sub_25E1A550C();
    sub_25E1A22B8(v70);
    sub_25E1A573C();
    v78 = v122;
    sub_25E1A54BC();
    sub_25E1A52BC();
    v79 = v121;
    v80 = v131;
    sub_25E1A54DC();
    (*(v127 + 8))(v78, v80);
    sub_25E1A529C();
    v81 = v119;
    v82 = v129;
    sub_25E1A54DC();
    (*(v125 + 8))(v79, v82);
    sub_25E1A52AC();
    v83 = v120;
    v84 = v128;
    sub_25E1A54DC();
    (*(v123 + 8))(v81, v84);
    v85 = v137;
    sub_25E1A519C();
    v86 = v126;
    v87 = v130;
    v88 = v144;
    sub_25E1A546C();
    (*(v139 + 8))(v85, v140);
    (*(v124 + 8))(v83, v87);
    v195 = v87;
    v196 = v88;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v90 = v133;
    v91 = v145;
    sub_25E1A548C();
    (*(v132 + 8))(v86, v91);
    v92 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v188 = OpaqueTypeConformance2;
    v189 = v92;
    v93 = v147;
    v94 = swift_getWitnessTable();
    v95 = v138;
    sub_25E181B2C();
    v96 = v135;
    v172 = *(v135 + 8);
    v172(v90, v93);
    v97 = v134;
    v98 = v136;
    v99 = v148;
    (*(v134 + 16))(v136, v168, v148);
    v193 = v98;
    (*(v96 + 16))(v90, v95, v93);
    v194 = v90;
    v191 = v99;
    v192 = v93;
    v195 = v160;
    v196 = MEMORY[0x277CE1350];
    v197 = v176;
    v198 = v175;
    v199 = MEMORY[0x277CE1340];
    v200 = v177;
    v195 = swift_getOpaqueTypeConformance2();
    v196 = v94;
    v100 = v146;
    sub_25E198E40(&v193, 2uLL, &v191);
    v101 = v95;
    v102 = v172;
    v172(v101, v93);
    v103 = *(v97 + 8);
    v103(v168, v99);
    (*(v166 + 8))(v159, v178);
    v102(v90, v93);
    v103(v98, v99);
    v104 = v163;
    v105 = v164;
    v68 = v174;
    (*(v163 + 32))(v174, v100, v164);
    (*(v104 + 56))(v68, 0, 1, v105);
  }

  swift_getWitnessTable();
  v106 = v161;
  v107 = v162;
  v177 = *(v161 + 16);
  v177(v173, v68, v162);
  v178 = *(v106 + 8);
  (v178)(v68, v107);
  v109 = v156;
  v108 = v157;
  v110 = v158;
  (*(v170 + 16))(v157, v156, v158);
  v195 = v108;
  v112 = v173;
  v111 = v174;
  v177(v174, v173, v107);
  v196 = v111;
  v193 = v110;
  v194 = v107;
  v191 = v152;
  v190 = swift_getWitnessTable();
  v192 = swift_getWitnessTable();
  sub_25E198E40(&v195, 2uLL, &v193);
  v113 = v112;
  v114 = v178;
  (v178)(v113, v107);
  v115 = v153;
  v153(v109, v110);
  v114(v111, v107);
  return v115(v108, v110);
}

uint64_t sub_25E19D34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v98 = a7;
  v99 = a8;
  v97 = a5;
  v80 = a1;
  v90 = a9;
  v96 = a10;
  v14 = sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  v75 = sub_25E1A574C();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_25E1A564C();
  v87 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v76 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v74 = &v71 - v18;
  v19 = type metadata accessor for AccessoryViewStyle(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v72 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v14;
  v81 = *(v14 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v71 - v22;
  v85 = v15;
  v86 = sub_25E1A58CC();
  v89 = *(v86 - 8);
  v24 = MEMORY[0x28223BE20](v86);
  v82 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v88 = &v71 - v26;
  v27 = sub_25E1A4DDC();
  v113 = a6;
  v114 = MEMORY[0x277CDF678];
  v28 = swift_getWitnessTable();
  v105 = v27;
  v106 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A524C();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  v29 = sub_25E1A564C();
  v95 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v84 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v71 - v33;
  MEMORY[0x28223BE20](v32);
  v100 = &v71 - v35;
  v91 = a2;
  v105 = a2;
  v106 = a3;
  v92 = a3;
  v93 = a4;
  v107 = a4;
  v108 = v97;
  v94 = a6;
  v109 = a6;
  v110 = v98;
  v111 = v99;
  v112 = v96;
  v36 = type metadata accessor for PaymentItem(0, &v105);
  v37 = v80;
  if (sub_25E199288(v36) <= 74.0 || *(v37 + v36[26]) == 1)
  {
    v38 = sub_25E1A4FCC();
  }

  else
  {
    v38 = sub_25E1A4FBC();
  }

  MEMORY[0x28223BE20](v38);
  v39 = v92;
  *(&v71 - 10) = v91;
  *(&v71 - 9) = v39;
  v40 = v93;
  v41 = v97;
  *(&v71 - 8) = v93;
  *(&v71 - 7) = v41;
  v43 = v98;
  v42 = v99;
  *(&v71 - 6) = v94;
  *(&v71 - 5) = v43;
  *(&v71 - 4) = v42;
  *(&v71 - 3) = v96;
  *(&v71 - 2) = v37;
  v44 = v37;
  sub_25E1A563C();
  v77 = swift_getWitnessTable();
  sub_25E181B2C();
  v45 = *(v95 + 8);
  v79 = v95 + 8;
  v78 = v45;
  v45(v34, v29);
  v46 = v81;
  v47 = v83;
  (*(v81 + 16))(v23, v44 + v36[22], v83);
  v48 = (*(*(v40 - 8) + 48))(v23, 1, v40);
  v49 = (*(v46 + 8))(v23, v47);
  if (v48 == 1 && (v50 = v36[23], v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8), v52 = v72, (*(*(v51 - 8) + 56))(v72, 1, 6, v51), LOBYTE(v50) = _s13PaymentUIBase18AccessoryViewStyleO2eeoiySbAC_ACtFZ_0(v44 + v50, v52), v49 = sub_25E1A24B0(v52, type metadata accessor for AccessoryViewStyle), (v50 & 1) != 0))
  {
    v53 = v82;
    (*(v87 + 56))(v82, 1, 1, v85);
    swift_getWitnessTable();
  }

  else
  {
    MEMORY[0x28223BE20](v49);
    v54 = v92;
    *(&v71 - 10) = v91;
    *(&v71 - 9) = v54;
    v55 = v97;
    *(&v71 - 8) = v93;
    *(&v71 - 7) = v55;
    v57 = v98;
    v56 = v99;
    *(&v71 - 6) = v94;
    *(&v71 - 5) = v57;
    *(&v71 - 4) = v56;
    *(&v71 - 3) = v96;
    *(&v71 - 2) = v44;
    sub_25E1A4FCC();
    v58 = v76;
    sub_25E1A563C();
    v59 = v85;
    swift_getWitnessTable();
    v60 = v74;
    sub_25E181B2C();
    v61 = v87;
    v62 = *(v87 + 8);
    v62(v58, v59);
    sub_25E181B2C();
    v62(v60, v59);
    v53 = v82;
    (*(v61 + 32))(v82, v58, v59);
    (*(v61 + 56))(v53, 0, 1, v59);
  }

  v63 = v89;
  v64 = *(v89 + 16);
  v65 = v88;
  v66 = v86;
  v64(v88, v53, v86);
  v67 = *(v63 + 8);
  v67(v53, v66);
  v68 = v84;
  (*(v95 + 16))(v84, v100, v29);
  v105 = v68;
  v64(v53, v65, v66);
  v106 = v53;
  v104[0] = v29;
  v104[1] = v66;
  v102 = v77;
  v101 = swift_getWitnessTable();
  v103 = swift_getWitnessTable();
  sub_25E198E40(&v105, 2uLL, v104);
  v67(v65, v66);
  v69 = v78;
  v78(v100, v29);
  v67(v53, v66);
  return v69(v68, v29);
}

uint64_t sub_25E19DDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v58 = a8;
  v67 = a7;
  v51 = a5;
  v57 = a4;
  v65 = a1;
  v64 = a9;
  v56 = a10;
  v52 = a3;
  v62 = sub_25E1A4DDC();
  v63 = *(v62 - 8);
  v13 = MEMORY[0x28223BE20](v62);
  v60 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v46 - v15;
  v55 = sub_25E1A4DBC();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E1A4DDC();
  v53 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  v80 = a6;
  v81 = MEMORY[0x277CDF678];
  v59 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v72 = v17;
  v73 = WitnessTable;
  v48 = MEMORY[0x277CE0CF8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = &v46 - v22;
  sub_25E1A524C();
  v24 = sub_25E1A4DDC();
  v68 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v47 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v66 = &v46 - v27;
  v72 = a2;
  v73 = a3;
  v74 = v57;
  v75 = v51;
  v76 = a6;
  v77 = v67;
  v78 = v58;
  v79 = v56;
  v58 = type metadata accessor for PaymentItem(0, &v72);
  sub_25E1A572C();
  sub_25E1A54AC();
  v28 = v54;
  v29 = v50;
  v30 = v55;
  (*(v54 + 104))(v50, *MEMORY[0x277CDF9D8], v55);
  sub_25E1A544C();
  (*(v28 + 8))(v29, v30);
  (*(v53 + 8))(v19, v17);
  v72 = v17;
  v73 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v47;
  sub_25E1A548C();
  (*(v49 + 8))(v23, OpaqueTypeMetadata2);
  v33 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v71[4] = OpaqueTypeConformance2;
  v71[5] = v33;
  v46 = v24;
  v56 = swift_getWitnessTable();
  sub_25E181B2C();
  v34 = *(v68 + 8);
  v55 = v68 + 8;
  v57 = v34;
  v34(v32, v24);
  sub_25E1A573C();
  v35 = v67;
  v36 = v60;
  sub_25E1A54BC();
  v71[2] = v35;
  v71[3] = MEMORY[0x277CDFC60];
  v37 = v62;
  v38 = swift_getWitnessTable();
  v39 = v61;
  sub_25E181B2C();
  v40 = v63;
  v41 = *(v63 + 8);
  v41(v36, v37);
  v42 = v66;
  v43 = v46;
  (*(v68 + 16))(v32, v66, v46);
  v72 = v32;
  (*(v40 + 16))(v36, v39, v37);
  v73 = v36;
  v71[0] = v43;
  v71[1] = v37;
  v69 = v56;
  v70 = v38;
  sub_25E198E40(&v72, 2uLL, v71);
  v41(v39, v37);
  v44 = v57;
  v57(v42, v43);
  v41(v36, v37);
  return v44(v32, v43);
}

uint64_t sub_25E19E5B0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v34 = a6;
  v35 = a7;
  v36 = a1;
  v38 = a9;
  v32 = a10;
  v33 = a5;
  v37 = type metadata accessor for AccessoryView(0);
  v14 = MEMORY[0x28223BE20](v37);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = sub_25E1A58CC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v31 - v24;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = v33;
  v46 = v34;
  v47 = v35;
  v48 = a8;
  v49 = v32;
  v26 = type metadata accessor for PaymentItem(0, &v42);
  v41[2] = a8;
  WitnessTable = swift_getWitnessTable();
  v28 = v36;
  sub_25E181B2C();
  sub_25E1A2400(v28 + *(v26 + 92), v18, type metadata accessor for AccessoryViewStyle);
  (*(v20 + 16))(v23, v25, v19);
  v42 = v23;
  sub_25E1A2400(v18, v16, type metadata accessor for AccessoryView);
  v43 = v16;
  v41[0] = v19;
  v41[1] = v37;
  v39 = WitnessTable;
  v40 = sub_25E1A2468(&qword_27FCDD720, type metadata accessor for AccessoryView, &protocol conformance descriptor for AccessoryView);
  sub_25E198E40(&v42, 2uLL, v41);
  sub_25E1A24B0(v18, type metadata accessor for AccessoryView);
  v29 = *(v20 + 8);
  v29(v25, v19);
  sub_25E1A24B0(v16, type metadata accessor for AccessoryView);
  return (v29)(v23, v19);
}

uint64_t sub_25E19E8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25E1A52AC();
  sub_25E1A4CFC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_25E1A2320(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD708, &unk_25E1A8B98);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_25E19E948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)()@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v49 = a2;
  v50 = a8;
  v57 = a6;
  v58 = a7;
  v51 = a1;
  v52 = a3;
  v47 = a9;
  v55 = a11;
  v56 = a5;
  v53 = a10;
  v54 = a4;
  v46 = sub_25E1A4D7C();
  v17 = *(v46 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v46);
  v48 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  v66 = a10;
  v67 = a11;
  v19 = type metadata accessor for PaymentItem(0, &v60);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v42 - v22;
  v24 = v49;
  sub_25E19ED14(&v60);
  v44 = v60;
  v45 = *(v20 + 16);
  v45(v23, v24, v19);
  v25 = v46;
  (*(v17 + 16))(v48, v51, v46);
  v26 = *(v20 + 80);
  v43 = ((v26 + 80) & ~v26) + v21;
  v27 = (v26 + 80) & ~v26;
  v42[1] = v26 | 7;
  v28 = (v43 + *(v17 + 80)) & ~*(v17 + 80);
  v29 = swift_allocObject();
  v30 = v54;
  *(v29 + 2) = v52;
  *(v29 + 3) = v30;
  v31 = v57;
  *(v29 + 4) = v56;
  *(v29 + 5) = v31;
  v32 = v50;
  *(v29 + 6) = v58;
  *(v29 + 7) = v32;
  v33 = v55;
  *(v29 + 8) = v53;
  *(v29 + 9) = v33;
  v34 = *(v20 + 32);
  v34(&v29[v27], v23, v19);
  (*(v17 + 32))(&v29[v28], v48, v25);
  v60 = v44;
  v61 = sub_25E1A1AD0;
  v62 = v29;
  v63 = 0;
  v64 = 0;
  sub_25E1A4D6C();
  v59 = v35;
  v45(v23, v49, v19);
  v36 = swift_allocObject();
  v37 = v54;
  *(v36 + 2) = v52;
  *(v36 + 3) = v37;
  v38 = v57;
  *(v36 + 4) = v56;
  *(v36 + 5) = v38;
  v39 = v50;
  *(v36 + 6) = v58;
  *(v36 + 7) = v39;
  v40 = v55;
  *(v36 + 8) = v53;
  *(v36 + 9) = v40;
  v34(&v36[v27], v23, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD6E0, &qword_25E1A8B80);
  sub_25E1A2078();
  sub_25E1A20FC();
  sub_25E1A54FC();
}

uint64_t sub_25E19ED14@<X0>(void *a1@<X8>)
{
  if (qword_28155F9B0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_28155F9B8;
}

uint64_t sub_25E19ED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_25E1A4D6C();
  v17 = v16;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a8;
  v20[6] = a9;
  v20[7] = a10;
  v18 = type metadata accessor for PaymentItem(0, v20);
  return sub_25E1992E8(v18, v17);
}

uint64_t sub_25E19EE24@<X0>(double *a2@<X8>)
{
  if (sub_25E1A56FC())
  {
    v3 = 26.0;
  }

  else
  {
    v3 = 12.0;
  }

  v4 = *(sub_25E1A4E3C() + 20);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_25E1A4FEC();
  result = (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  *a2 = v3;
  a2[1] = v3;
  return result;
}

uint64_t PaymentItem.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v57 = a1[2];
  v3 = sub_25E1A4DDC();
  v56 = a1[6];
  v104 = v56;
  v105 = MEMORY[0x277CDF678];
  v102 = v3;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v71 = sub_25E1A524C();
  sub_25E1A4DDC();
  v55 = a1[3];
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  v4 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_25E1A564C();
  v54 = a1[4];
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  v64 = v4;
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  v65 = a1;
  v53 = a1[5];
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v52 = a1[9];
  v100 = v52;
  v101 = MEMORY[0x277CDFC60];
  v5 = swift_getWitnessTable();
  v6 = MEMORY[0x277CDF918];
  v98 = v5;
  v99 = MEMORY[0x277CDF918];
  v96 = swift_getWitnessTable();
  v97 = v6;
  v94 = swift_getWitnessTable();
  v95 = v6;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A566C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD608, &qword_25E1A8A48);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD050, &qword_25E1A8A50);
  v7 = sub_25E1A4DDC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x277CDFC60];
  v88 = swift_getWitnessTable();
  v89 = sub_25E17F9C0(&qword_27FCDD610, &qword_27FCDD608, &qword_25E1A8A48, MEMORY[0x277CE0328]);
  v86 = swift_getWitnessTable();
  v87 = sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50, MEMORY[0x277CDF4F0]);
  v8 = swift_getWitnessTable();
  v9 = sub_25E1A562C();
  v102 = v7;
  WitnessTable = v8;
  v66 = v8;
  swift_getOpaqueTypeMetadata2();
  v70 = v9;
  v69 = sub_25E1A516C();
  v71 = v7;
  v10 = sub_25E1A516C();
  v59 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v51 - v14;
  sub_25E1A56CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  v51 = swift_getWitnessTable();
  v15 = sub_25E1A566C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = &v51 - v21;
  v61 = v20;
  v22 = sub_25E1A516C();
  v63 = *(v22 - 8);
  v64 = v22;
  MEMORY[0x28223BE20](v22);
  v62 = &v51 - v23;
  v24 = v65;
  v25 = v67;
  if ((sub_25E199348(v65) & 1) != 0 || (sub_25E19949C(v24)) && (v26 = sub_25E1A56FC(), (v26 & 1) == 0))
  {
    MEMORY[0x28223BE20](v26);
    *&v36 = v57;
    *(&v36 + 1) = v55;
    *&v37 = v54;
    *(&v37 + 1) = v53;
    *(&v51 - 5) = v36;
    *(&v51 - 4) = v37;
    *(&v51 - 6) = v56;
    *(&v51 - 5) = *(v24 + 7);
    *(&v51 - 3) = v52;
    *(&v51 - 2) = v25;
    sub_25E1A502C();
    sub_25E1A565C();
    v38 = v61;
    v39 = swift_getWitnessTable();
    sub_25E181B2C();
    v67 = *(v16 + 8);
    v67(v19, v38);
    sub_25E181B2C();
    v40 = swift_getWitnessTable();
    v41 = v66;
    v102 = v71;
    WitnessTable = v66;
    v42 = swift_getOpaqueTypeConformance2();
    v74 = v40;
    v75 = v42;
    v72 = swift_getWitnessTable();
    v73 = v41;
    v43 = swift_getWitnessTable();
    v35 = v62;
    sub_25E199010(v19, v38, v10, v39, v43);
    v44 = v67;
    v67(v19, v38);
    v44(v60, v38);
    v28 = v41;
  }

  else
  {
    sub_25E199AAC(v24, v13);
    v27 = swift_getWitnessTable();
    v28 = v66;
    v102 = v71;
    WitnessTable = v66;
    v29 = swift_getOpaqueTypeConformance2();
    v84 = v27;
    v85 = v29;
    v82 = swift_getWitnessTable();
    v83 = v28;
    v30 = swift_getWitnessTable();
    v31 = v58;
    sub_25E181B2C();
    v32 = *(v59 + 8);
    v32(v13, v10);
    sub_25E181B2C();
    v33 = v61;
    v34 = swift_getWitnessTable();
    v35 = v62;
    sub_25E199108(v13, v33, v10, v34, v30);
    v32(v13, v10);
    v32(v31, v10);
  }

  v45 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v102 = v71;
  WitnessTable = v28;
  v47 = swift_getOpaqueTypeConformance2();
  v80 = v46;
  v81 = v47;
  v78 = swift_getWitnessTable();
  v79 = v28;
  v48 = swift_getWitnessTable();
  v76 = v45;
  v77 = v48;
  v49 = v64;
  swift_getWitnessTable();
  sub_25E181B2C();
  return (*(v63 + 8))(v35, v49);
}

uint64_t sub_25E19FAFC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v58 = a7;
  v59 = a8;
  v55 = a3;
  v56 = a6;
  v53 = a5;
  v54 = a4;
  v57 = a2;
  v60 = a1;
  v64 = a9;
  v65 = a10;
  v11 = sub_25E1A56CC();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v66 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = &v50 - v14;
  v15 = sub_25E1A4DDC();
  v94 = a6;
  v95 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v70 = v15;
  v71 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A524C();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v17 = sub_25E1A4DDC();
  v92 = v65;
  v93 = MEMORY[0x277CDFC60];
  v18 = swift_getWitnessTable();
  v19 = MEMORY[0x277CDF918];
  v90 = v18;
  v91 = MEMORY[0x277CDF918];
  v88 = swift_getWitnessTable();
  v89 = v19;
  v86 = swift_getWitnessTable();
  v87 = v19;
  v20 = swift_getWitnessTable();
  v70 = v17;
  v71 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  v21 = sub_25E1A566C();
  v22 = swift_getWitnessTable();
  v70 = v21;
  v71 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD608, &qword_25E1A8A48);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD050, &qword_25E1A8A50);
  v23 = sub_25E1A4DDC();
  v70 = v21;
  v71 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v84 = OpaqueTypeConformance2;
  v85 = v25;
  v82 = swift_getWitnessTable();
  v83 = MEMORY[0x277CDFC60];
  v26 = swift_getWitnessTable();
  v27 = sub_25E17F9C0(&qword_27FCDD610, &qword_27FCDD608, &qword_25E1A8A48, MEMORY[0x277CE0328]);
  v80 = v26;
  v81 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50, MEMORY[0x277CDF4F0]);
  v78 = v28;
  v79 = v29;
  v30 = swift_getWitnessTable();
  sub_25E1A562C();
  v70 = v23;
  v71 = v30;
  v52 = MEMORY[0x277CE0CA8];
  swift_getOpaqueTypeMetadata2();
  sub_25E1A516C();
  v31 = sub_25E1A516C();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v50 - v36;
  v70 = v57;
  v71 = v55;
  v72 = v54;
  v73 = v53;
  v74 = v56;
  v75 = v58;
  v76 = v59;
  v77 = v65;
  v38 = type metadata accessor for PaymentItem(0, &v70);
  sub_25E199AAC(v38, v35);
  v39 = swift_getWitnessTable();
  v70 = v23;
  v71 = v30;
  v40 = swift_getOpaqueTypeConformance2();
  v69[4] = v39;
  v69[5] = v40;
  v69[2] = swift_getWitnessTable();
  v69[3] = v30;
  v41 = swift_getWitnessTable();
  v42 = v37;
  v51 = v37;
  sub_25E181B2C();
  v43 = *(v32 + 8);
  v43(v35, v31);
  v44 = v61;
  sub_25E1A56BC();
  (*(v32 + 16))(v35, v42, v31);
  v70 = v35;
  v46 = v62;
  v45 = v63;
  v47 = v66;
  (*(v62 + 16))(v66, v44, v63);
  v71 = v47;
  v69[0] = v31;
  v69[1] = v45;
  v67 = v41;
  v68 = sub_25E1A2468(&qword_27FCDD0F8, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
  sub_25E198E40(&v70, 2uLL, v69);
  v48 = *(v46 + 8);
  v48(v44, v45);
  v43(v51, v31);
  v48(v66, v45);
  return (v43)(v35, v31);
}

uint64_t PaymentItemContentStyle.hashValue.getter()
{
  v1 = *v0;
  sub_25E1A59BC();
  MEMORY[0x25F8AD450](v1);
  return sub_25E1A59DC();
}

uint64_t PaymentItem<>.init(icon:primaryLabel:secondaryLabel:accessoryViewStyle:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v23 = a11;
  v17 = type metadata accessor for AccessoryViewStyle(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E1A2400(a6, v19, type metadata accessor for AccessoryViewStyle);
  v27 = 0;
  *&v22 = a10;
  *(&v22 + 1) = MEMORY[0x277CE1428];
  *&v21 = a7;
  *(&v21 + 1) = a9;
  PaymentItem.init(icon:primaryLabel:secondaryLabel:accessoryViewStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, a2, v25, v19, sub_25E1A2510, a8, 0, &v27, 0, 0, 0, 0, 0, v21, v22, v23, a12, MEMORY[0x277CE1410]);
  return sub_25E1A24B0(a6, type metadata accessor for AccessoryViewStyle);
}

uint64_t PaymentItem<>.init(icon:primaryLabel:chevronStyle:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, unsigned __int8 *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v13 = *a3;
  v12 = 0;
  *&v11 = a6;
  *(&v11 + 1) = a8;
  *&v10 = MEMORY[0x277CE1428];
  *(&v10 + 1) = MEMORY[0x277CE1428];
  *&v9 = a4;
  *(&v9 + 1) = a5;
  return PaymentItem.init(icon:primaryLabel:secondaryLabel:chevronStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, a2, sub_25E1A2510, &v13, sub_25E1A2510, a7, 0, &v12, 0, 0, 0, 0, 0, v9, v10, v11, MEMORY[0x277CE1410], MEMORY[0x277CE1410]);
}

uint64_t PaymentItem<>.init(icon:primaryLabel:accessoryStyle:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v23 = a3;
  v16 = type metadata accessor for AccessoryViewStyle(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E1A2400(a4, v18, type metadata accessor for AccessoryViewStyle);
  v24 = 0;
  *&v22 = a7;
  *(&v22 + 1) = a9;
  *&v21 = MEMORY[0x277CE1428];
  *(&v21 + 1) = MEMORY[0x277CE1428];
  *&v20 = a5;
  *(&v20 + 1) = a6;
  PaymentItem.init(icon:primaryLabel:secondaryLabel:accessoryViewStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, a2, sub_25E1A2510, v18, sub_25E1A2510, a8, 0, &v24, 0, 0, 0, 0, 0, v20, v21, v22, MEMORY[0x277CE1410], MEMORY[0x277CE1410]);
  return sub_25E1A24B0(a4, type metadata accessor for AccessoryViewStyle);
}

uint64_t PaymentItem<>.init(icon:primaryLabel:accessoryViewStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, char a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v24 = a7;
  v25 = a2;
  v27 = a4;
  v28 = a6;
  v26 = a3;
  v23 = a12;
  v18 = type metadata accessor for AccessoryViewStyle(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a8) = *a8;
  sub_25E1A2400(a5, v20, type metadata accessor for AccessoryViewStyle);
  v29 = a8;
  *&v22[24] = a13;
  *&v22[8] = v23;
  *v22 = MEMORY[0x277CE1428];
  PaymentItem.init(icon:primaryLabel:secondaryLabel:accessoryViewStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, v26, sub_25E1A2510, v20, v28, a9, v24, &v29, a10, 0, 0, 0, 0, a11, *v22, *&v22[16], MEMORY[0x277CE1410], a14);
  return sub_25E1A24B0(a5, type metadata accessor for AccessoryViewStyle);
}

uint64_t PaymentItem<>.init(icon:primaryLabel:chevronStyle:secondaryContent:secondaryContentStyle:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, unsigned __int8 *a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X6>, char *a6@<X7>, uint64_t a7@<X8>, __int128 a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v11 = *a6;
  v15 = *a3;
  v14 = v11;
  *&v13[24] = a10;
  *&v13[8] = a9;
  *v13 = MEMORY[0x277CE1428];
  return PaymentItem.init(icon:primaryLabel:secondaryLabel:chevronStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, a2, sub_25E1A2510, &v15, a4, a7, a5, &v14, 0, 0, 0, 0, 0, a8, *v13, *&v13[16], MEMORY[0x277CE1410], a11);
}

unint64_t sub_25E1A0ABC()
{
  result = qword_27FCDD618[0];
  if (!qword_27FCDD618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCDD618);
  }

  return result;
}

void sub_25E1A0B18(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_25E1A58CC();
      if (v3 <= 0x3F)
      {
        type metadata accessor for AccessoryViewStyle(319);
        if (v4 <= 0x3F)
        {
          sub_25E1A58CC();
          if (v5 <= 0x3F)
          {
            sub_25E1A18A0(319);
            if (v6 <= 0x3F)
            {
              sub_25E1A1904(319, &qword_27FCDD6B0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_25E1A1904(319, &qword_27FCDD6B8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_25E1A1954(319);
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
  }
}

uint64_t sub_25E1A0CBC(_DWORD *a1, unsigned int a2, void *a3)
{
  v59 = *(a3[2] - 8);
  v4 = *(v59 + 84);
  v58 = *(a3[3] - 8);
  v53 = v4;
  v52 = *(v58 + 84);
  if (v52 > v4)
  {
    v4 = *(v58 + 84);
  }

  v49 = a3[4];
  v57 = *(v49 - 8);
  v5 = *(v57 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v51 = v6;
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v56 = *(sub_25E1A536C() - 8);
  v48 = *(v56 + 84);
  if (v48 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v56 + 84);
  }

  v9 = v8 - 6;
  v50 = v9;
  if (v9 <= v7)
  {
    v9 = v7;
  }

  v46 = a3[5];
  v10 = *(v46 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v47 = v12;
  if (v12 > v9)
  {
    v9 = v12;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  v54 = v9;
  v13 = *(sub_25E1A4D0C() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  if (v5)
  {
    v15 = *(v57 + 64);
  }

  else
  {
    v15 = *(v57 + 64) + 1;
  }

  v16 = *(v58 + 80);
  v17 = *(v58 + 64);
  v18 = *(v57 + 80);
  v19 = *(v56 + 80);
  v20 = *(v10 + 80);
  if (v11)
  {
    v21 = *(v10 + 64);
  }

  else
  {
    v21 = *(v10 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(v59 + 64) + v16;
  v23 = v19 | 7;
  v24 = ((v19 + 16) & ~v19) + *(v56 + 64) + v20;
  v25 = v21 + 9;
  v26 = a1;
  if (v54 < a2)
  {
    v27 = *(v13 + 80) & 0xF8 | 7;
    v28 = ((((((v14 + ((v27 + ((((((((v25 + ((v24 + ((v23 + v15 + ((v17 + v18 + (v22 & ~v16)) & ~v18)) & ~v23)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v27) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v29 = v28 & 0xFFFFFFF8;
    if ((v28 & 0xFFFFFFF8) != 0)
    {
      v30 = 2;
    }

    else
    {
      v30 = a2 - v54 + 1;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v33 = *(a1 + v28);
        if (v33)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v33 = *(a1 + v28);
        if (v33)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v32)
    {
      v33 = *(a1 + v28);
      if (v33)
      {
LABEL_44:
        v34 = v33 - 1;
        if (v29)
        {
          v34 = 0;
          LODWORD(v29) = *a1;
        }

        return v54 + (v29 | v34) + 1;
      }
    }
  }

  if (v53 == v54)
  {
    v36 = *(v59 + 48);
LABEL_55:

    return v36(v26);
  }

  v26 = ((a1 + v22) & ~v16);
  if (v52 == v54)
  {
    v36 = *(v58 + 48);
    goto LABEL_55;
  }

  v37 = (v26 + v17 + v18) & ~v18;
  if (v51 == v54)
  {
    if (v5 < 2)
    {
      return 0;
    }

    v41 = (*(v57 + 48))(v37, v5, v49);
    goto LABEL_67;
  }

  v38 = (v37 + v15 + v23) & ~v23;
  if (v50 == v54)
  {
    if ((v48 & 0x80000000) != 0)
    {
      v40 = (*(v56 + 48))((v19 + 16 + v38) & ~v19);
    }

    else
    {
      v39 = *(((v37 + v15 + v23) & ~v23) + 8);
      if (v39 >= 0xFFFFFFFF)
      {
        LODWORD(v39) = -1;
      }

      v40 = v39 + 1;
    }

    v42 = v40 - 6;
    v43 = v40 >= 7;
    goto LABEL_78;
  }

  v44 = (v24 + v38) & ~v20;
  if (v47 == v54)
  {
    if (v11 < 2)
    {
      return 0;
    }

    v41 = (*(v10 + 48))(v44, v11, v46);
LABEL_67:
    v42 = v41 - 1;
    v43 = v41 >= 2;
LABEL_78:
    if (v43)
    {
      return v42;
    }

    else
    {
      return 0;
    }
  }

  v45 = *((v25 + v44) & 0xFFFFFFFFFFFFFFF8);
  if (v45 >= 0xFFFFFFFF)
  {
    LODWORD(v45) = -1;
  }

  if ((v45 + 1) >= 2)
  {
    return v45;
  }

  else
  {
    return 0;
  }
}

void sub_25E1A122C(_DWORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v51 = *(a4[2] - 8);
  v5 = *(v51 + 84);
  v50 = *(a4[3] - 8);
  v48 = v5;
  v47 = *(v50 + 84);
  if (v47 > v5)
  {
    v5 = *(v50 + 84);
  }

  v6 = *(a4[4] - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v46 = v8;
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_25E1A536C() - 8);
  v42 = *(v10 + 84);
  if (v42 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v44 = v11;
  v12 = v11 - 6;
  v45 = v12;
  if (v12 <= v9)
  {
    v12 = v9;
  }

  v13 = *(a4[5] - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  v43 = v15;
  if (v15 > v12)
  {
    v12 = v15;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v49 = v12;
  v55 = 0;
  v16 = *(sub_25E1A4D0C() - 8);
  if (*(v16 + 64) <= 8uLL)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v16 + 64);
  }

  v18 = *(v6 + 64);
  if (!v7)
  {
    ++v18;
  }

  v19 = *(v50 + 80);
  v20 = *(v51 + 64) + v19;
  v21 = *(v50 + 64);
  v22 = *(v6 + 80);
  v23 = *(v10 + 80);
  v24 = ((v23 + 16) & ~v23) + *(v10 + 64);
  v25 = *(v13 + 80);
  if (v14)
  {
    v26 = *(v13 + 64);
  }

  else
  {
    v26 = *(v13 + 64) + 1;
  }

  v27 = v26 + 9;
  v28 = *(v16 + 80) & 0xF8 | 7;
  v29 = ((((((v17 + ((v28 + ((((((((v27 + ((v24 + v25 + (((v23 | 7) + v18 + ((v21 + v22 + (v20 & ~v19)) & ~v22)) & ~(v23 | 7))) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v28) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v49 < a3)
  {
    if (((((((v17 + ((v28 + ((((((((v27 + ((v24 + v25 + (((v23 | 7) + v18 + ((v21 + v22 + (v20 & ~v19)) & ~v22)) & ~(v23 | 7))) & ~v25)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 9) & ~v28) + 8) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v30 = a3 - v49 + 1;
    }

    else
    {
      v30 = 2;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v55 = v32;
  }

  if (a2 > v49)
  {
    if (v29)
    {
      v33 = 1;
    }

    else
    {
      v33 = a2 - v49;
    }

    if (v29)
    {
      bzero(a1, v29);
      *a1 = ~v49 + a2;
    }

    if (v55 > 1)
    {
      if (v55 == 2)
      {
        *(a1 + v29) = v33;
      }

      else
      {
        *(a1 + v29) = v33;
      }
    }

    else if (v55)
    {
      *(a1 + v29) = v33;
    }

    return;
  }

  v34 = a1;
  if (v55 <= 1)
  {
    if (v55)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (v55 == 2)
  {
    *(a1 + v29) = 0;
LABEL_57:
    if (!a2)
    {
      return;
    }

    goto LABEL_58;
  }

  *(a1 + v29) = 0;
  if (!a2)
  {
    return;
  }

LABEL_58:
  if (v48 == v49)
  {
    v35 = *(v51 + 56);
    v36 = a2;
    goto LABEL_67;
  }

  v34 = ((a1 + v20) & ~v19);
  if (v47 == v49)
  {
    v35 = *(v50 + 56);
    v36 = a2;
    goto LABEL_67;
  }

  v34 = ((v34 + v21 + v22) & ~v22);
  if (v46 == v49)
  {
    v35 = *(v6 + 56);
    v36 = a2 + 1;
LABEL_67:

    goto LABEL_69;
  }

  v37 = ((v34 + v18 + (v23 | 7)) & ~(v23 | 7));
  if (v45 != v49)
  {
    v34 = (&v37[v24 + v25] & ~v25);
    if (v43 != v49)
    {
      v41 = ((v34 + v27) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v41 = 0;
        v41[1] = 0;
        *v41 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v41 = a2;
      }

      return;
    }

    v35 = *(v13 + 56);
    v36 = a2 + 1;
    goto LABEL_67;
  }

  if (a2 + 6 <= v44)
  {
    if ((v42 & 0x80000000) == 0)
    {
      if (((a2 + 6) & 0x80000000) != 0)
      {
        *v37 = a2 - 2147483642;
        *(((v34 + v18 + (v23 | 7)) & ~(v23 | 7)) + 8) = 0;
      }

      else
      {
        *(((v34 + v18 + (v23 | 7)) & ~(v23 | 7)) + 8) = a2 + 5;
      }

      return;
    }

    v35 = *(v10 + 56);
    v34 = (&v37[v23 + 16] & ~v23);
    v36 = a2 + 6;

LABEL_69:
    v35(v34, v36);
    return;
  }

  if (v24 <= 3)
  {
    v38 = ~(-1 << (8 * v24));
  }

  else
  {
    v38 = -1;
  }

  if (v24)
  {
    v39 = v38 & (a2 - v44 + 5);
    if (v24 <= 3)
    {
      v40 = v24;
    }

    else
    {
      v40 = 4;
    }

    bzero(v37, v24);
    if (v40 > 2)
    {
      if (v40 == 3)
      {
        *v37 = v39;
        v37[2] = BYTE2(v39);
      }

      else
      {
        *v37 = v39;
      }
    }

    else if (v40 == 1)
    {
      *v37 = v39;
    }

    else
    {
      *v37 = v39;
    }
  }
}

void sub_25E1A18A0(uint64_t a1)
{
  if (!qword_27FCDD6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD6A8, qword_25E1A8B30);
    v1 = sub_25E1A58CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCDD6A0);
    }
  }
}

void sub_25E1A1904(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25E1A1954(uint64_t a1)
{
  if (!qword_27FCDD6C0)
  {
    sub_25E1A4D0C();
    v1 = sub_25E1A4D1C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCDD6C0);
    }
  }
}

uint64_t sub_25E1A19BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E1A19FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v15[0] = v2[2];
  v4 = v15[0];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v8;
  v15[5] = v9;
  v15[6] = v11;
  v15[7] = v10;
  v12 = *(type metadata accessor for PaymentItem(0, v15) - 8);
  return sub_25E19E948(a1, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, a2, v11, v10);
}

uint64_t sub_25E1A1AD0()
{
  v1 = v0[3];
  v14[0] = v0[2];
  v13 = v14[0];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v14[1] = v1;
  v14[2] = v2;
  v14[3] = v3;
  v14[4] = v4;
  v14[5] = v5;
  v14[6] = v6;
  v14[7] = v7;
  v8 = *(type metadata accessor for PaymentItem(0, v14) - 8);
  v9 = (*(v8 + 80) + 80) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25E1A4D7C() - 8);
  return sub_25E19ED84(v0 + v9, v0 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), v13, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_18Tm()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 72);
  v19[0] = *(v0 + 16);
  v1 = v19[0];
  v19[1] = v2;
  v19[2] = v3;
  v18 = *(v0 + 40);
  v20 = v18;
  v21 = *(v0 + 56);
  v22 = v4;
  v5 = type metadata accessor for PaymentItem(0, v19);
  v6 = v0 + ((*(*(v5 - 1) + 80) + 80) & ~*(*(v5 - 1) + 80));
  (*(*(v1 - 8) + 8))(v6, v1);
  (*(*(v2 - 8) + 8))(v6 + v5[21], v2);
  v7 = v5[22];
  v8 = *(v3 - 8);
  if (!(*(v8 + 48))(v6 + v7, 1, v3))
  {
    (*(v8 + 8))(v6 + v7, v3);
  }

  v9 = v6 + v5[23];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  if (!(*(*(v10 - 8) + 48))(v9, 6, v10))
  {

    v11 = *(v10 + 48);
    v12 = sub_25E1A536C();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  v13 = v5[24];
  v14 = *(v18 - 8);
  if (!(*(v14 + 48))(v6 + v13, 1, v18))
  {
    (*(v14 + 8))(v6 + v13, v18);
  }

  if (*(v6 + v5[27]))
  {
  }

  if (*(v6 + v5[28]))
  {
  }

  sub_25E1832F0(*(v6 + v5[30]), *(v6 + v5[30] + 8));
  sub_25E1832F0(*(v6 + v5[31]), *(v6 + v5[31] + 8));
  v15 = v5[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD298, &qword_25E1A7AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_25E1A4D0C();
    (*(*(v16 - 8) + 8))(v6 + v15, v16);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_25E1A1FA0(uint64_t a1, double *a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v15 = v2[2];
  v4 = v15;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  type metadata accessor for PaymentItem(0, &v15);
  v12 = *a2;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v13 = type metadata accessor for PaymentItem(0, &v15);
  return sub_25E1992E8(v13, v12);
}

unint64_t sub_25E1A2078()
{
  result = qword_27FCDD6E8;
  if (!qword_27FCDD6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD6E0, &qword_25E1A8B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD6E8);
  }

  return result;
}

unint64_t sub_25E1A20FC()
{
  result = qword_27FCDD6F0;
  if (!qword_27FCDD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD6F0);
  }

  return result;
}

unint64_t sub_25E1A2170()
{
  result = qword_27FCDD710;
  if (!qword_27FCDD710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD700, &qword_25E1A8B90);
    sub_25E1A2468(&qword_27FCDD0F8, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD710);
  }

  return result;
}

unint64_t sub_25E1A222C()
{
  result = qword_27FCDD718;
  if (!qword_27FCDD718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD708, &unk_25E1A8B98);
    sub_25E1A2170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD718);
  }

  return result;
}

uint64_t sub_25E1A22B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD700, &qword_25E1A8B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E1A2320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD700, &qword_25E1A8B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E1A2400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E1A2468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E1A24B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

PaymentUIBase::AuthenticationEvent_optional __swiftcall AuthenticationEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E1A598C();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AuthenticationEvent.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0xD000000000000014;
    if (v1 == 10)
    {
      v6 = 0x4370556570697773;
    }

    if (v1 == 9)
    {
      v6 = 0xD000000000000011;
    }

    v7 = 0xD000000000000010;
    v8 = 0xD000000000000014;
    if (v1 != 7)
    {
      v8 = 0xD000000000000016;
    }

    if (v1 != 6)
    {
      v7 = v8;
    }

    if (*v0 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xD000000000000017;
    v4 = 0x64726F7773736170;
    if (v1 == 4)
    {
      v4 = 0xD000000000000017;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000010;
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
}

uint64_t sub_25E1A271C()
{
  v0 = AuthenticationEvent.rawValue.getter();
  v2 = v1;
  if (v0 == AuthenticationEvent.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25E1A599C();
  }

  return v5 & 1;
}

unint64_t sub_25E1A27BC()
{
  result = qword_281560248;
  if (!qword_281560248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281560248);
  }

  return result;
}

uint64_t sub_25E1A2810()
{
  sub_25E1A59BC();
  AuthenticationEvent.rawValue.getter();
  sub_25E1A581C();

  return sub_25E1A59DC();
}

uint64_t sub_25E1A2878(uint64_t a1)
{
  AuthenticationEvent.rawValue.getter();
  sub_25E1A581C();
}

uint64_t sub_25E1A28DC(uint64_t a1)
{
  sub_25E1A59BC();
  AuthenticationEvent.rawValue.getter();
  sub_25E1A581C();

  return sub_25E1A59DC();
}

unint64_t sub_25E1A294C@<X0>(unint64_t *a1@<X8>)
{
  result = AuthenticationEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthenticationEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void AppleIDSignInView.init(inAppContext:delegate:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CF03A8]) init];
  *a3 = v5;
  v6 = v5;
  [a1 setPresentingViewController_];
  [v6 setContext_];
  [v6 setDelegate_];

  swift_unknownObjectRelease();
}

void AppleIDSignInView.updateUIViewController(_:context:)(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void AppleIDSignInView.sizeThatFits(_:uiViewController:context:)(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v9 = [a5 view];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v9 subviews];

  sub_25E1A2D88();
  v12 = sub_25E1A584C();
  v13 = v12;
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  if (!sub_25E1A594C())
  {
    goto LABEL_13;
  }

LABEL_4:

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v14 = MEMORY[0x25F8AD3A0](0, v13);
    goto LABEL_7;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v14 = *(v13 + 32);
LABEL_7:
  v15 = v14;

  v17 = *&a1;
  v18 = 10.0;
  if (a2)
  {
    v17 = 10.0;
  }

  HIDWORD(v19) = HIDWORD(a3);
  if ((a4 & 1) == 0)
  {
    v18 = *&a3;
  }

  LODWORD(v19) = 1148846080;
  LODWORD(v16) = 1112014848;
  [v15 systemLayoutSizeFittingSize:v17 withHorizontalFittingPriority:v18 verticalFittingPriority:{v19, v16}];
}

unint64_t sub_25E1A2D88()
{
  result = qword_27FCDD728;
  if (!qword_27FCDD728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCDD728);
  }

  return result;
}

unint64_t sub_25E1A2DD8()
{
  result = qword_27FCDD730;
  if (!qword_27FCDD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD730);
  }

  return result;
}

void sub_25E1A2E2C(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25E1A2EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E1A2FF4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25E1A2F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E1A2FF4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25E1A2FBC(uint64_t a1)
{
  sub_25E1A2FF4();
  sub_25E1A521C();
  __break(1u);
}

unint64_t sub_25E1A2FF4()
{
  result = qword_27FCDD738;
  if (!qword_27FCDD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD738);
  }

  return result;
}

uint64_t AuthorizationModel.__allocating_init()()
{
  v0 = swift_allocObject();
  AuthorizationModel.init()();
  return v0;
}

uint64_t AuthorizationModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-v3 - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7 - 8];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v9 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__authorizationError;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_25E1A326C(v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD128, &qword_25E1A8E00);
  sub_25E1A4C6C();
  sub_25E1A32DC(v14);
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__canShowDetailSheet;
  LOBYTE(v14[0]) = 1;
  sub_25E1A4C6C();
  (*(v2 + 32))(v0 + v10, v4, v1);
  return v0;
}

uint64_t sub_25E1A326C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD128, &qword_25E1A8E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E1A32DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD128, &qword_25E1A8E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AuthorizationModel.__allocating_init(headerTitle:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AuthorizationModel.init(headerTitle:)(a1, a2);
  return v4;
}

uint64_t AuthorizationModel.init(headerTitle:)(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6 - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10 - 8];
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v12 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__authorizationError;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_25E1A326C(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD128, &qword_25E1A8E00);
  sub_25E1A4C6C();
  sub_25E1A32DC(v17);
  (*(v9 + 32))(v2 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__canShowDetailSheet;
  LOBYTE(v17[0]) = 1;
  sub_25E1A4C6C();
  (*(v5 + 32))(v2 + v13, v7, v4);
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = v15;

  return v2;
}

uint64_t sub_25E1A35C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_25E1A3620()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25E1A366C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_25E1A3710()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();
}

uint64_t sub_25E1A378C(uint64_t a1, uint64_t *a2)
{
  sub_25E1A326C(a1, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A326C(v4, &v3);

  sub_25E1A4CBC();
  return sub_25E1A32DC(v4);
}

uint64_t sub_25E1A3818()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();
}

uint64_t sub_25E1A3890(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A326C(a1, v3);

  sub_25E1A4CBC();
  return sub_25E1A32DC(a1);
}

uint64_t (*sub_25E1A3910(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E179C6C;
}

uint64_t sub_25E1A39B4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD748, &qword_25E1A8E50);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25E1A3B54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD748, &qword_25E1A8E50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25E1A3C8C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD748, &qword_25E1A8E50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__authorizationError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E179E08;
}

uint64_t sub_25E1A3DFC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  *a2 = v4;
  return result;
}

uint64_t sub_25E1A3E7C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t sub_25E1A3EF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  return v1;
}

uint64_t sub_25E1A3F64(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t (*sub_25E1A3FD4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t sub_25E1A4078(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25E1A4218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25E1A4350(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__canShowDetailSheet;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t AuthorizationModel.deinit()
{

  v1 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__authorizationError;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__canShowDetailSheet;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AuthorizationModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__authorizationError;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__canShowDetailSheet;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_25E1A467C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AuthorizationModel(0);
  result = sub_25E1A4C5C();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AuthorizationModel(uint64_t a1)
{
  result = qword_2815603A8;
  if (!qword_2815603A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25E1A4710(uint64_t a1)
{
  sub_25E1A4A8C(319);
  if (v1 <= 0x3F)
  {
    sub_25E188D6C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_25E1A4A8C(uint64_t a1)
{
  if (!qword_28155FA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD128, &qword_25E1A8E00);
    v1 = sub_25E1A4CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_28155FA58);
    }
  }
}