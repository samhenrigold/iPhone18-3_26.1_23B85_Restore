uint64_t sub_270B5A79C@<X0>(uint64_t *a2@<X8>)
{
  sub_270B5BBA0(0, &qword_28084B920, &off_279E16208);
  result = sub_270B5C414();
  *a2 = result;
  return result;
}

uint64_t sub_270B5A7F0@<X0>(uint64_t *a2@<X8>)
{
  sub_270B5BBA0(0, &qword_28084B928, off_279E16200);
  result = sub_270B5C414();
  *a2 = result;
  return result;
}

uint64_t USUIMoreHelpContextMenuSwiftUI.USUIHelpMenuActions.init(messageSomeoneAction:blockContactAction:blockContactsAction:moreHelpAction:leaveChatAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t USUIMoreHelpContextMenuSwiftUI.init(options:contentView:showTitle:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v10 = a3;
  v14 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() getCurrentInterventionType];
  (*(v14 + 16))(v16, a2, a5);
  v18 = USUIMoreHelpContextMenuSwiftUI.init(options:interventionType:contentView:showTitle:actions:)(a1, v17, v16, v10, a4, a5, a6, a7);
  return (*(v14 + 8))(a2, a5, v18);
}

__n128 USUIMoreHelpContextMenuSwiftUI.init(options:interventionType:contentView:showTitle:actions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = [objc_opt_self() modelWithOptions:a1 interventionType:a2];
  v15 = type metadata accessor for USUIMoreHelpContextMenuSwiftUI(0, a6, a7, v14);
  (*(*(a6 - 8) + 32))(&a8[v15[9]], a3, a6);
  a8[v15[10]] = a4;
  v16 = &a8[v15[11]];
  v17 = *(a5 + 48);
  *(v16 + 2) = *(a5 + 32);
  *(v16 + 3) = v17;
  *(v16 + 4) = *(a5 + 64);
  result = *(a5 + 16);
  *v16 = *a5;
  *(v16 + 1) = result;
  return result;
}

uint64_t USUIMoreHelpContextMenuSwiftUI.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28084B910, qword_270B5CBA0);
  v7 = *(a1 + 24);
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = sub_270B5BDEC(&qword_28084B918, &qword_28084B910, qword_270B5CBA0, MEMORY[0x277CE14C0]);
  v8 = sub_270B5C384();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-v13];
  v22 = v5;
  v23 = v7;
  v24 = v2;
  v19 = v5;
  v20 = v7;
  v21 = v2;
  sub_270B5C374();
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v12, v8);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v15(a2, v14, v8);
  return (v16)(v14, v8);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_270B5AD28@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = a3;
  v6 = a2;
  v50 = a5;
  v8 = type metadata accessor for USUIMoreHelpContextMenuSwiftUI(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v48 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28084B930, &qword_270B5CD80);
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v59 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v46 - v14;
  v15 = *a1;
  if (*(a1 + *(v8 + 40)) == 1)
  {
    v16 = [*a1 title];
    v17 = v5;
    v18 = sub_270B5C3F4();
    v47 = v6;
    v20 = v19;

    v60 = v18;
    v61 = v20;
    sub_270B5BF5C();
    v21 = sub_270B5C394();
    v23 = v22;
    LOBYTE(v16) = v24;
    v26 = v25;
    KeyPath = swift_getKeyPath();
    v54 = v23;
    v55 = v21;
    v28 = v23;
    v5 = v17;
    v52 = v16 & 1;
    sub_270B5BEEC(v21, v28, v16 & 1);
    v29 = v26;
    v6 = v47;

    v53 = KeyPath;

    v51 = 1;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v52 = 0;
    v53 = 0;
    v29 = 0;
    v51 = 0;
  }

  v30 = [v15 actions];
  sub_270B5BBA0(0, &qword_28084B928, off_279E16200);
  v31 = sub_270B5C404();

  v60 = v31;
  v32 = v49;
  (*(v9 + 16))(v49, a1, v8);
  v33 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v6;
  *(v34 + 24) = v5;
  (*(v9 + 32))(v34 + v33, v32, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28084B938, &qword_270B5CD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28084B940, &qword_270B5CD90);
  sub_270B5BDEC(&qword_28084B948, &qword_28084B938, &qword_270B5CD88, MEMORY[0x277D83980]);
  sub_270B5BDEC(&qword_28084B950, &qword_28084B940, &qword_270B5CD90, MEMORY[0x277CDF028]);
  sub_270B5BE34();
  v35 = v58;
  sub_270B5C3E4();
  v37 = v56;
  v36 = v57;
  v49 = *(v56 + 16);
  (v49)(v59, v35, v57);
  v38 = v54;
  v39 = v55;
  v40 = v50;
  *v50 = v55;
  v40[1] = v38;
  v41 = v52;
  v42 = v53;
  v40[2] = v52;
  v40[3] = v29;
  v40[4] = v42;
  v40[5] = 0;
  *(v40 + 48) = v51;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28084B960, &qword_270B5CD98);
  (v49)(v40 + *(v43 + 48), v59, v36);
  sub_270B5BE9C(v39, v38, v41, v29, v42);
  sub_270B5BEFC(v39, v38, v41, v29, v42);
  v44 = *(v37 + 8);
  v44(v58, v36);
  v44(v59, v36);
  return sub_270B5BEFC(v39, v38, v41, v29, v42);
}

uint64_t sub_270B5B228@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a2;
  v27 = a4;
  v28 = a5;
  v7 = type metadata accessor for USUIMoreHelpContextMenuSwiftUI(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28084B970, &qword_270B5CDD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = *a1;
  v15 = [v14 title];
  v16 = sub_270B5C3F4();
  v18 = v17;

  v29 = v16;
  v30 = v18;
  if ([v14 destructive])
  {
    sub_270B5C324();
  }

  else
  {
    sub_270B5C334();
  }

  v19 = sub_270B5C344();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  (*(v8 + 16))(v10, v26, v7);
  v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v21 = swift_allocObject();
  v22 = v27;
  *(v21 + 2) = a3;
  *(v21 + 3) = v22;
  *(v21 + 4) = v14;
  (*(v8 + 32))(&v21[v20], v10, v7);
  sub_270B5BF5C();
  v23 = v14;
  return sub_270B5C3D4();
}

uint64_t sub_270B5B48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for USUIMoreHelpContextMenuSwiftUI(0, v9, v10, v11);
  v13 = *(v6 + 16);
  v13(v8, a1 + *(v12 + 36), a2);
  v13(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_270B5B624(uint64_t a1)
{
  result = sub_270B5BBA0(319, &qword_28084B920, &off_279E16208);
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for USUIMoreHelpContextMenuSwiftUI.USUIHelpMenuActions(319, result, *(a1 + 24), v4);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_270B5B6E4(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 88;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_270B5B828(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 88;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFA8)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFA8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 8) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) != 0xFFFFFFA8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_270B5B9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_270B5BA54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_270B5BA9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270B5BAF0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28084B910, qword_270B5CBA0);
  sub_270B5BDEC(&qword_28084B918, &qword_28084B910, qword_270B5CBA0, MEMORY[0x277CE14C0]);
  sub_270B5C384();
  return swift_getWitnessTable();
}

uint64_t sub_270B5BBA0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
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

uint64_t sub_270B5BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for USUIMoreHelpContextMenuSwiftUI(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[11], v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_270B5BD50@<X0>(void **a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for USUIMoreHelpContextMenuSwiftUI(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_270B5B228(a1, v9, v6, v7, a3);
}

uint64_t sub_270B5BDEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_270B5BE34()
{
  result = qword_28084B958;
  if (!qword_28084B958)
  {
    sub_270B5BBA0(255, &qword_28084B928, off_279E16200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28084B958);
  }

  return result;
}

uint64_t sub_270B5BE9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_270B5BEEC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_270B5BEEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_270B5BEFC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_270B5BF4C(result, a2, a3 & 1);

    return MEMORY[0x2821FE838](a4);
  }

  return result;
}

uint64_t sub_270B5BF4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return MEMORY[0x2821FE838](a2);
  }
}

unint64_t sub_270B5BF5C()
{
  result = qword_28084B968;
  if (!qword_28084B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28084B968);
  }

  return result;
}

uint64_t sub_270B5BFB0@<X0>(uint64_t a1@<X8>)
{
  result = sub_270B5C354();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_270B5C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for USUIMoreHelpContextMenuSwiftUI(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[11], v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_270B5C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for USUIMoreHelpContextMenuSwiftUI(0, v4[2], v4[3], a4);
  v6 = v4[4];
  v7 = v4 + ((*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80));
  result = [v6 actionID];
  if (result <= 2)
  {
    if (result == 1)
    {
      v9 = &v7[*(v5 + 44)];
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      v9 = &v7[*(v5 + 44) + 48];
    }
  }

  else
  {
    switch(result)
    {
      case 3:
        v9 = &v7[*(v5 + 44) + 64];
        break;
      case 4:
        v9 = &v7[*(v5 + 44) + 16];
        break;
      case 5:
        v9 = &v7[*(v5 + 44) + 32];
        break;
      default:
        return result;
    }
  }

  return (*v9)();
}