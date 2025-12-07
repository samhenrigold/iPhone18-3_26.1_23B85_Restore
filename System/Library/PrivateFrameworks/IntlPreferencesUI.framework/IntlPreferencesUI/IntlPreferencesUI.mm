uint64_t sub_25555E8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25556D14C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25555E9AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25556D14C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25555EA6C()
{
  v1 = type metadata accessor for IPLanguageDiscoveryChoiceButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = sub_25556D14C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25555EB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9570, &qword_25556E6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25555EBF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9570, &qword_25556E6F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25555EC5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_25555EC98(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_25556D6DC();
  [v2 setLocaleIdentifier_];
}

uint64_t sub_25555ED04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25555ED3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25555ED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25556D14C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25555EE40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25556D14C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25555EF38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25556D29C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25555EFA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9708, &qword_25556E978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25555F010@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25556D23C();
  *a1 = result;
  return result;
}

uint64_t sub_25555F068()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9650, &qword_25556E8F8);
  type metadata accessor for IPLanguageDiscoveryViewModel(255);
  sub_2555683E8(&qword_27F7B9670, &qword_27F7B9650, &qword_25556E8F8, MEMORY[0x277CDDA18]);
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel, &unk_25556E8D8);
  return swift_getOpaqueTypeConformance2();
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

void type metadata accessor for IPLanguageDiscoveryChoice()
{
  if (!qword_27F7B94B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F7B94B8);
    }
  }
}

uint64_t sub_255564BCC@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_25556D0CC();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_25556D14C();
  v5 = *(v49 - 8);
  v6 = MEMORY[0x28223BE20](v49);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v51 = sub_25556D6CC();
  v10 = *(v51 - 8);
  v11 = MEMORY[0x28223BE20](v51);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  v22 = sub_25556D6AC();
  MEMORY[0x28223BE20](v22 - 8);
  v23 = *v1;
  if (*v1 == 3)
  {
    sub_25556D66C();
    sub_255568298();
    v35 = sub_25556D71C();
    if (!v35)
    {
      v35 = [objc_opt_self() mainBundle];
    }

    v36 = v35;
    sub_25556D13C();
    (*(v10 + 16))(v19, v13, v51);
    v37 = v49;
    (*(v5 + 16))(v46, v9, v49);
    v38 = [v36 bundleURL];
    sub_25556D0FC();

    (*(v47 + 104))(v4, *MEMORY[0x277CC9118], v48);
    v39 = v50;
    sub_25556D0EC();

    (*(v5 + 8))(v9, v37);
    (*(v10 + 8))(v13, v51);
    v40 = sub_25556D0DC();
    return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  }

  else
  {
    if (v23 == 2)
    {
      sub_25556D66C();
      sub_255568298();
      v29 = sub_25556D71C();
      if (!v29)
      {
        v29 = [objc_opt_self() mainBundle];
      }

      v30 = v29;
      sub_25556D13C();
      (*(v10 + 16))(v19, v16, v51);
      v31 = v49;
      (*(v5 + 16))(v46, v9, v49);
      v32 = [v30 bundleURL];
      sub_25556D0FC();

      (*(v47 + 104))(v4, *MEMORY[0x277CC9118], v48);
      v28 = v50;
      sub_25556D0EC();

      (*(v5 + 8))(v9, v31);
      (*(v10 + 8))(v16, v51);
      goto LABEL_10;
    }

    if (v23 == 1)
    {
      sub_25556D69C();
      sub_25556D68C();
      type metadata accessor for IPLanguageDiscoveryChoiceButton(0);
      sub_25556D67C();
      sub_25556D68C();
      sub_25556D6BC();
      sub_255568298();
      v24 = sub_25556D71C();
      if (!v24)
      {
        v24 = [objc_opt_self() mainBundle];
      }

      v25 = v24;
      sub_25556D13C();
      (*(v10 + 16))(v19, v21, v51);
      v26 = v49;
      (*(v5 + 16))(v46, v9, v49);
      v27 = [v25 bundleURL];
      sub_25556D0FC();

      (*(v47 + 104))(v4, *MEMORY[0x277CC9118], v48);
      v28 = v50;
      sub_25556D0EC();

      (*(v5 + 8))(v9, v26);
      (*(v10 + 8))(v21, v51);
LABEL_10:
      v33 = sub_25556D0DC();
      return (*(*(v33 - 8) + 56))(v28, 0, 1, v33);
    }

    v41 = sub_25556D0DC();
    v42 = *(*(v41 - 8) + 56);
    v43 = v41;
    v44 = v50;

    return v42(v44, 1, 1, v43);
  }
}

uint64_t sub_2555653B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25556D0CC();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25556D6CC();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  v66 = sub_25556D14C();
  v18 = *(v66 - 8);
  v19 = MEMORY[0x28223BE20](v66);
  v60 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - v21;
  v23 = sub_25556D6AC();
  v24 = MEMORY[0x28223BE20](v23 - 8);
  MEMORY[0x28223BE20](v24);
  v25 = *v2;
  if (*v2 == 3)
  {
    v59 = a1;
    sub_25556D66C();
    sub_255568298();
    v49 = sub_25556D71C();
    if (!v49)
    {
      v49 = [objc_opt_self() mainBundle];
    }

    v50 = v49;
    v52 = v64;
    v51 = v65;
    sub_25556D13C();
    (*(v52 + 16))(v15, v9, v51);
    v53 = v66;
    (*(v18 + 16))(v60, v22, v66);
    v54 = [v50 bundleURL];
    v55 = v61;
    sub_25556D0FC();

    (*(v62 + 104))(v55, *MEMORY[0x277CC9118], v63);
    sub_25556D0EC();

    (*(v18 + 8))(v22, v53);
    return (*(v52 + 8))(v9, v65);
  }

  else
  {
    if (v25 != 2)
    {
      if (v25 != 1)
      {
        v29 = 0;
        v30 = 0xE000000000000000;

        return MEMORY[0x28211CB40](v29, v30);
      }

      v59 = a1;
      sub_25556D69C();
      sub_25556D68C();
      sub_25556D13C();
      v26 = sub_25556D12C();
      v57 = *(v18 + 8);
      v58 = (v18 + 8);
      v57(v22, v66);
      type metadata accessor for IPLanguageDiscoveryChoiceButton(0);
      sub_25556D11C();
      v27 = sub_25556D6DC();

      v28 = [v26 localizedStringForLanguage:v27 context:5];

      if (v28)
      {
        sub_25556D6EC();

        sub_25556D67C();

        sub_25556D68C();
        sub_25556D67C();
        sub_25556D68C();
        sub_25556D6BC();
        sub_255568298();
        v31 = sub_25556D71C();
        if (!v31)
        {
          v31 = [objc_opt_self() mainBundle];
        }

        v32 = v31;
        v34 = v64;
        v33 = v65;
        sub_25556D13C();
        (*(v34 + 16))(v15, v17, v33);
        v35 = v66;
        (*(v18 + 16))(v60, v22, v66);
        v36 = [v32 bundleURL];
        v37 = v61;
        sub_25556D0FC();

        (*(v62 + 104))(v37, *MEMORY[0x277CC9118], v63);
        sub_25556D0EC();

        v57(v22, v35);
        return (*(v34 + 8))(v17, v33);
      }

LABEL_20:
      __break(1u);
      return MEMORY[0x28211CB40](v29, v30);
    }

    v59 = a1;
    sub_25556D69C();
    sub_25556D68C();
    sub_25556D13C();
    v39 = sub_25556D12C();
    v58 = *(v18 + 8);
    v58(v22, v66);
    type metadata accessor for IPLanguageDiscoveryChoiceButton(0);
    sub_25556D11C();
    v40 = sub_25556D6DC();

    v41 = [v39 localizedStringForLanguage:v40 context:5];

    if (!v41)
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_25556D6EC();

    sub_25556D67C();

    sub_25556D68C();
    sub_25556D6BC();
    sub_255568298();
    v42 = sub_25556D71C();
    v57 = (v18 + 8);
    if (!v42)
    {
      v42 = [objc_opt_self() mainBundle];
    }

    v43 = v42;
    v45 = v64;
    v44 = v65;
    sub_25556D13C();
    (*(v45 + 16))(v15, v12, v44);
    v46 = v66;
    (*(v18 + 16))(v60, v22, v66);
    v47 = [v43 bundleURL];
    v48 = v61;
    sub_25556D0FC();

    (*(v62 + 104))(v48, *MEMORY[0x277CC9118], v63);
    sub_25556D0EC();

    v58(v22, v46);
    return (*(v45 + 8))(v12, v44);
  }
}

uint64_t sub_255565CE0@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = sub_25556D2CC();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v58 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25556D21C();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94E0, &qword_25556E660);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for IPLanguageDiscoveryChoiceButton(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94E8, &qword_25556E668);
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  sub_255567E28(v1, &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IPLanguageDiscoveryChoiceButton);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  sub_255567BD0(&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v65 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94F0, &qword_25556E670);
  sub_255567C9C();
  v61 = v17;
  sub_25556D63C();
  v20 = *(v5 + 28);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_25556D34C();
  (*(*(v22 - 8) + 104))(&v7[v20], v21, v22);
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v28 = *v1;
  v29 = v1 + *(v12 + 36);
  v30 = *v29;
  v31 = v29[8];

  v32 = v30;
  if ((v31 & 1) == 0)
  {
    sub_25556D70C();
    v33 = sub_25556D40C();
    sub_25556D19C();

    v34 = v58;
    sub_25556D2BC();
    swift_getAtKeyPath();

    (*(v59 + 8))(v34, v60);
    v32 = v66;
  }

  swift_getKeyPath();
  *&v66 = v32;
  sub_255567DE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel, &unk_25556E8D8);
  sub_25556D16C();

  v35 = *(v32 + 16);
  v36 = *(v32 + 24);

  if ((v36 & 1) != 0 || v28 != v35)
  {
    v38 = [objc_opt_self() quaternaryLabelColor];
    v37 = sub_25556D5BC();
  }

  else
  {
    v37 = sub_25556D58C();
  }

  v39 = v37;

  if ((v31 & 1) == 0)
  {
    sub_25556D70C();
    v40 = sub_25556D40C();
    sub_25556D19C();

    v41 = v58;
    sub_25556D2BC();
    swift_getAtKeyPath();

    (*(v59 + 8))(v41, v60);
    v30 = v66;
  }

  swift_getKeyPath();
  *&v66 = v30;
  sub_25556D16C();

  sub_25556D1DC();
  sub_255567E28(v7, v10, MEMORY[0x277CDFC08]);
  v42 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9528, &qword_25556E6B0) + 36)];
  v43 = v67;
  *v42 = v66;
  *(v42 + 1) = v43;
  *(v42 + 4) = v68;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9530, &qword_25556E6B8);
  *&v10[*(v44 + 52)] = v39;
  *&v10[*(v44 + 56)] = 256;
  v45 = sub_25556D65C();
  v47 = v46;
  sub_255567E90(v7);
  v48 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9538, &qword_25556E6C0) + 36)];
  *v48 = v45;
  v48[1] = v47;
  v49 = sub_25556D65C();
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9540, &qword_25556E6C8);
  v53 = v64;
  v54 = v64 + *(v52 + 36);
  sub_255567EEC(v10, v54);
  v55 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9548, &qword_25556E6D0) + 36));
  *v55 = v49;
  v55[1] = v51;
  return (*(v62 + 32))(v53, v61, v63);
}

uint64_t sub_2555663BC(uint64_t *a1)
{
  v2 = sub_25556D2CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for IPLanguageDiscoveryChoiceButton(0) + 28);
  v7 = *v6;
  v8 = v6[8];

  if ((v8 & 1) == 0)
  {
    sub_25556D70C();
    v9 = sub_25556D40C();
    sub_25556D19C();

    sub_25556D2BC();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v7 = v14;
  }

  v10 = *a1;
  if ((*(v7 + 24) & 1) != 0 || *(v7 + 16) != v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v13 - 4) = v7;
    *(&v13 - 3) = v10;
    *(&v13 - 16) = 0;
    v14 = v7;
    sub_255567DE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel, &unk_25556E8D8);
    sub_25556D15C();
  }

  else
  {
    *(v7 + 24) = 0;
  }
}

__n128 sub_255566608@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9508, &qword_25556E678);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  *v7 = sub_25556D2DC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9550, &qword_25556E6D8);
  sub_255566790(a1, &v7[*(v8 + 44)]);
  v9 = sub_25556D42C();
  v10 = &v7[*(v5 + 44)];
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  sub_25556D65C();
  sub_25556D22C();
  sub_2555680C0(v7, a2, &qword_27F7B9508, &qword_25556E678);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94F0, &qword_25556E670) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_255566790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25556D2CC();
  v83 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v82 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9558, &qword_25556E6E0);
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v96 = &v72 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9560, &qword_25556E6E8);
  MEMORY[0x28223BE20](v87);
  v86 = &v72 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9568, &qword_25556E6F0);
  MEMORY[0x28223BE20](v84);
  v89 = &v72 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9570, &qword_25556E6F8);
  v10 = MEMORY[0x28223BE20](v88);
  v93 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v72 - v13;
  MEMORY[0x28223BE20](v12);
  v92 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v72 - v16;
  v18 = *a1;
  v94 = *a1;
  if (v94 == 1 || v18 == 3 || (v19 = 0, KeyPath = 0, v21 = 0, v22 = 0, v23 = 0, v24 = 0, v25 = 0, v26 = 0, v27 = 0, v18 == 2))
  {
    v19 = sub_25556D5EC();
    sub_25556D45C();
    v28 = sub_25556D43C();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    v21 = sub_25556D48C();
    sub_255568190(v17, &qword_27F7B9578, &qword_25556E700);
    KeyPath = swift_getKeyPath();
    sub_25556D65C();
    sub_25556D1FC();
    v22 = v133;
    v23 = v134;
    v24 = v135;
    v25 = v136;
    v26 = v137;
    v27 = v138;
  }

  v97 = v27;
  v98 = v26;
  v99 = v25;
  v100 = v24;
  v101 = v23;
  v102 = v22;
  v103 = KeyPath;
  v104 = v21;
  v105 = v19;
  sub_25556D65C();
  sub_25556D1FC();
  v76 = v141;
  v77 = v139;
  v74 = v144;
  v75 = v143;
  v130 = 1;
  v129 = v140;
  v128 = v142;
  v81 = sub_25556D37C();
  LOBYTE(v115) = 1;
  sub_2555672E0(a1, v131);
  *&v127[7] = v131[0];
  *&v127[23] = v131[1];
  *&v127[39] = v131[2];
  *&v127[55] = v131[3];
  v95 = v115;
  v79 = swift_getKeyPath();
  v80 = sub_25556D59C();
  v78 = swift_getKeyPath();
  v29 = a1 + *(type metadata accessor for IPLanguageDiscoveryChoiceButton(0) + 28);
  v30 = *v29;
  v31 = v29[8];

  v32 = v30;
  v73 = v31;
  if ((v31 & 1) == 0)
  {
    sub_25556D70C();
    v33 = sub_25556D40C();
    sub_25556D19C();

    v34 = v82;
    sub_25556D2BC();
    swift_getAtKeyPath();

    (*(v83 + 8))(v34, v4);
    v32 = v115;
  }

  v72 = v4;
  swift_getKeyPath();
  v115 = v32;
  sub_255567DE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel, &unk_25556E8D8);
  sub_25556D16C();

  v35 = sub_25556D5EC();
  v36 = sub_25556D4AC();
  v37 = swift_getKeyPath();
  v115 = v35;
  v116 = v37;
  *v117 = v36;
  sub_25556D47C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9580, &qword_25556E798);
  sub_255568008();
  sub_25556D52C();

  if ((v73 & 1) == 0)
  {
    sub_25556D70C();
    v38 = sub_25556D40C();
    sub_25556D19C();

    v39 = v82;
    sub_25556D2BC();
    swift_getAtKeyPath();

    (*(v83 + 8))(v39, v72);
    v30 = v115;
  }

  swift_getKeyPath();
  v115 = v30;
  sub_25556D16C();

  v40 = *(v30 + 16);
  v41 = *(v30 + 24);

  if ((v41 & 1) != 0 || v94 != v40)
  {
    v43 = [objc_opt_self() quaternaryLabelColor];
    v42 = sub_25556D5BC();
  }

  else
  {
    v42 = sub_25556D58C();
  }

  v44 = v42;
  v45 = swift_getKeyPath();
  v46 = v86;
  (*(v90 + 32))(v86, v96, v91);
  v47 = (v46 + *(v87 + 36));
  *v47 = v45;
  v47[1] = v44;
  v48 = v89;
  sub_2555680C0(v46, v89, &qword_27F7B9560, &qword_25556E6E8);
  *(v48 + *(v84 + 36)) = 256;
  sub_25556D65C();
  sub_25556D1FC();
  v49 = v48;
  v50 = v85;
  sub_2555680C0(v49, v85, &qword_27F7B9568, &qword_25556E6F0);
  v51 = (v50 + *(v88 + 36));
  v52 = v145[1];
  *v51 = v145[0];
  v51[1] = v52;
  v51[2] = v145[2];
  v53 = v92;
  sub_2555680C0(v50, v92, &qword_27F7B9570, &qword_25556E6F8);
  LOBYTE(v45) = v130;
  LOBYTE(v46) = v129;
  v54 = v128;
  v55 = v93;
  sub_25555EB80(v53, v93);
  *&v106 = v105;
  *(&v106 + 1) = v103;
  *&v107 = v104;
  *(&v107 + 1) = v102;
  *&v108 = v101;
  *(&v108 + 1) = v100;
  v56 = v97;
  *&v109 = v99;
  *(&v109 + 1) = v98;
  v110 = v97;
  v57 = v109;
  *(a2 + 32) = v108;
  *(a2 + 48) = v57;
  v58 = v107;
  *a2 = v106;
  *(a2 + 16) = v58;
  *(a2 + 64) = v56;
  *(a2 + 72) = 0;
  *(a2 + 80) = v45;
  v59 = v76;
  *(a2 + 88) = v77;
  *(a2 + 96) = v46;
  *(a2 + 104) = v59;
  *(a2 + 112) = v54;
  v60 = v74;
  *(a2 + 120) = v75;
  *(a2 + 128) = v60;
  v61 = v81;
  v111[0] = v81;
  v111[1] = 0;
  LOBYTE(v112[0]) = v95;
  *(v112 + 1) = *v127;
  *&v112[4] = *&v127[63];
  *(&v112[3] + 1) = *&v127[48];
  *(&v112[2] + 1) = *&v127[32];
  *(&v112[1] + 1) = *&v127[16];
  v62 = v78;
  v63 = v79;
  *(&v112[4] + 1) = v79;
  LOBYTE(v113) = 0;
  DWORD1(v113) = *&v132[3];
  *(&v113 + 1) = *v132;
  v64 = v80;
  *(&v113 + 1) = v78;
  v114 = v80;
  v65 = v81;
  v66 = v112[0];
  v67 = v112[1];
  *(a2 + 184) = v112[2];
  *(a2 + 168) = v67;
  *(a2 + 152) = v66;
  *(a2 + 136) = v65;
  v68 = v112[3];
  v69 = v112[4];
  *(a2 + 232) = v113;
  *(a2 + 216) = v69;
  *(a2 + 200) = v68;
  *(a2 + 248) = v64;
  *(a2 + 256) = 0;
  *(a2 + 264) = 1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B95A0, &qword_25556E7A8);
  sub_25555EB80(v55, a2 + *(v70 + 96));
  sub_255568128(&v106, &v115, &qword_27F7B95A8, &qword_25556E7B0);
  sub_255568128(v111, &v115, &qword_27F7B95B0, &qword_25556E7B8);
  sub_25555EBF0(v53);
  sub_25555EBF0(v55);
  v118 = *&v127[16];
  v119 = *&v127[32];
  *v120 = *&v127[48];
  v115 = v61;
  v116 = 0;
  v117[0] = v95;
  *&v117[1] = *v127;
  *&v120[15] = *&v127[63];
  v121 = v63;
  v122 = 0;
  *v123 = *v132;
  *&v123[3] = *&v132[3];
  v124 = v62;
  v125 = v64;
  sub_255568190(&v115, &qword_27F7B95B0, &qword_25556E7B8);
  v126[0] = v105;
  v126[1] = v103;
  v126[2] = v104;
  v126[3] = v102;
  v126[4] = v101;
  v126[5] = v100;
  v126[6] = v99;
  v126[7] = v98;
  v126[8] = v97;
  return sub_255568190(v126, &qword_27F7B95A8, &qword_25556E7B0);
}

uint64_t sub_2555672E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v59 - v4;
  v6 = sub_25556D4BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B95B8, &qword_25556E7C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_25556D0DC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  v69 = a1;
  sub_255564BCC(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_255568190(v12, &qword_27F7B95B8, &qword_25556E7C0);
    v67 = 0;
    v68 = 0;
    v20 = 0;
    v66 = 0;
    v21 = *MEMORY[0x277CE0A68];
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    v66 = sub_25556D4FC();
    v67 = v22;
    v59 = v23;
    v68 = v24;
    v62 = *MEMORY[0x277CE0A68];
    (*(v7 + 104))(v9);
    v25 = sub_25556D43C();
    (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    sub_25556D44C();
    sub_25556D49C();
    sub_255568190(v5, &qword_27F7B9578, &qword_25556E700);
    (*(v7 + 8))(v9, v6);
    v61 = v19;
    v26 = v9;
    v27 = v66;
    v28 = v17;
    v29 = v67;
    v30 = sub_25556D4DC();
    v64 = v7;
    v65 = v6;
    v31 = v30;
    v33 = v32;
    v60 = v34;
    v63 = v5;
    v36 = v35;

    v37 = v27;
    v9 = v26;
    v38 = v29;
    v17 = v28;
    sub_2555681F0(v37, v38, v59 & 1);

    (*(v14 + 8))(v61, v13);
    v21 = v62;
    v20 = v60 & 1;
    v67 = v33;
    v68 = v31;
    v39 = v31;
    v40 = v33;
    v7 = v64;
    v6 = v65;
    sub_255568244(v39, v40, v60 & 1);
    v66 = v36;
    v5 = v63;
  }

  sub_2555653B4(v17);
  v41 = sub_25556D4FC();
  v43 = v42;
  v45 = v44;
  (*(v7 + 104))(v9, v21, v6);
  v46 = sub_25556D43C();
  (*(*(v46 - 8) + 56))(v5, 1, 1, v46);
  sub_25556D49C();
  sub_255568190(v5, &qword_27F7B9578, &qword_25556E700);
  (*(v7 + 8))(v9, v6);
  v47 = sub_25556D4DC();
  v49 = v48;
  v51 = v50;
  v53 = v52;

  sub_2555681F0(v41, v43, v45 & 1);

  v55 = v67;
  v54 = v68;
  v56 = v66;
  sub_255568200(v68, v67, v20, v66);
  sub_255568244(v47, v49, v51 & 1);

  sub_255568254(v54, v55, v20, v56);
  v71 = v51 & 1;
  v57 = v70;
  *v70 = v54;
  v57[1] = v55;
  v57[2] = v20;
  v57[3] = v56;
  v57[4] = v47;
  v57[5] = v49;
  *(v57 + 48) = v51 & 1;
  v57[7] = v53;
  sub_2555681F0(v47, v49, v51 & 1);

  return sub_255568254(v54, v55, v20, v56);
}

uint64_t sub_2555678D8()
{
  v1 = *v0;
  sub_25556D74C();
  MEMORY[0x259C389F0](v1);
  return sub_25556D76C();
}

uint64_t sub_25556794C(uint64_t a1)
{
  v2 = *v1;
  sub_25556D74C();
  MEMORY[0x259C389F0](v2);
  return sub_25556D76C();
}

void *sub_2555679A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for IPLanguageDiscoveryChoiceButton(uint64_t a1)
{
  result = qword_27F7B94C8;
  if (!qword_27F7B94C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255567A70(uint64_t a1)
{
  type metadata accessor for IPLanguageDiscoveryChoice();
  if (v1 <= 0x3F)
  {
    sub_25556D14C();
    if (v2 <= 0x3F)
    {
      sub_255567B14(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255567B14(uint64_t a1)
{
  if (!qword_27F7B94D8)
  {
    type metadata accessor for IPLanguageDiscoveryViewModel(255);
    v1 = sub_25556D1BC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7B94D8);
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

uint64_t sub_255567BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPLanguageDiscoveryChoiceButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255567C34()
{
  v1 = *(type metadata accessor for IPLanguageDiscoveryChoiceButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2555663BC(v2);
}

unint64_t sub_255567C9C()
{
  result = qword_27F7B94F8;
  if (!qword_27F7B94F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B94F0, &qword_25556E670);
    sub_255567D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B94F8);
  }

  return result;
}

unint64_t sub_255567D28()
{
  result = qword_27F7B9500;
  if (!qword_27F7B9500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9508, &qword_25556E678);
    sub_2555683E8(&qword_27F7B9510, &qword_27F7B9518, &qword_25556E680, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B9500);
  }

  return result;
}

uint64_t sub_255567DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255567E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255567E90(uint64_t a1)
{
  v2 = sub_25556D21C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255567EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94E0, &qword_25556E660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255567F5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25556D27C();
  *a1 = result;
  return result;
}

uint64_t sub_255567FB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25556D25C();
  *a1 = result;
  return result;
}

unint64_t sub_255568008()
{
  result = qword_27F7B9588;
  if (!qword_27F7B9588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9580, &qword_25556E798);
    sub_2555683E8(&qword_27F7B9590, &qword_27F7B9598, &qword_25556E7A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B9588);
  }

  return result;
}

uint64_t sub_2555680C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_255568128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255568190(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2555681F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_255568200(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_255568244(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_255568244(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_255568254(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2555681F0(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_255568298()
{
  result = qword_27F7B95C0;
  if (!qword_27F7B95C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7B95C0);
  }

  return result;
}

unint64_t sub_255568304()
{
  result = qword_27F7B95C8;
  if (!qword_27F7B95C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9540, &qword_25556E6C8);
    sub_2555683E8(&qword_27F7B95D0, &qword_27F7B94E8, &qword_25556E668, MEMORY[0x277CDF028]);
    sub_2555683E8(&qword_27F7B95D8, &qword_27F7B9548, &qword_25556E6D0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B95C8);
  }

  return result;
}

uint64_t sub_2555683E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t IPLanguageDiscoverySetupViewController.localeIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___IPLanguageDiscoverySetupViewController_localeIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_255568590(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localeIdentifier];
  v4 = sub_25556D6EC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t IPLanguageDiscoverySetupViewController.completionHandler.getter()
{
  v1 = (v0 + OBJC_IVAR___IPLanguageDiscoverySetupViewController_completionHandler);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25556870C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_255568814(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

uint64_t sub_255568878@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 completionHandler];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_255569724;
  *(result + 24) = v4;
  *a2 = sub_2555696E8;
  a2[1] = result;
  return result;
}

void sub_255568914(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v8[4] = sub_2555696B0;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25556870C;
  v8[3] = &block_descriptor_18;
  v7 = _Block_copy(v8);

  [v6 setCompletionHandler_];
  _Block_release(v7);
}

id IPLanguageDiscoverySetupViewController.init(localeIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25556D6DC();

  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_25556870C;
  v11[3] = &block_descriptor;
  v8 = _Block_copy(v11);
  v9 = [v6 initWithLocaleIdentifier:v7 completionHandler:v8];

  _Block_release(v8);

  return v9;
}

{
  v5 = (v4 + OBJC_IVAR___IPLanguageDiscoverySetupViewController_localeIdentifier);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + OBJC_IVAR___IPLanguageDiscoverySetupViewController_completionHandler);
  *v6 = a3;
  v6[1] = a4;
  v8.super_class = IPLanguageDiscoverySetupViewController;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id IPLanguageDiscoverySetupViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

Swift::Void __swiftcall IPLanguageDiscoverySetupViewController.viewDidLoad()()
{
  v1 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v2 = (v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v54 - v6;
  v55.receiver = v0;
  v55.super_class = IPLanguageDiscoverySetupViewController;
  objc_msgSendSuper2(&v55, sel_viewDidLoad);
  v8 = [v0 localeIdentifier];
  sub_25556D6EC();

  sub_25556D10C();
  v9 = &v7[v2[7]];
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 model];

  v12 = sub_25556D6EC();
  v14 = v13;

  *v9 = v12;
  v9[1] = v14;
  v15 = &v7[v2[8]];
  v16 = &v7[v2[9]];
  type metadata accessor for IPLanguageDiscoveryViewModel(0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 1;
  sub_25556D17C();
  v54[1] = v17;
  sub_25556D60C();
  v18 = v54[3];
  *v16 = v54[2];
  *(v16 + 1) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  *v15 = sub_2555693E4;
  v15[1] = v19;
  sub_2555693F0(v7, v5);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B95F0, &qword_25556E7E0));
  v20 = v0;
  v21 = sub_25556D38C();
  [v20 addChildViewController_];
  v22 = [v20 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v22;
  v24 = [v21 view];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24;
  [v23 addSubview_];

  v26 = [v21 view];
  if (!v26)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B95F8, &qword_25556E7E8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25556E7D0;
  v28 = [v21 view];

  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = [v28 leadingAnchor];

  v30 = [v20 view];
  if (!v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = v30;
  v32 = [v30 leadingAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v27 + 32) = v33;
  v34 = [v21 view];

  if (!v34)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = [v34 trailingAnchor];

  v36 = [v20 view];
  if (!v36)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v37 = v36;
  v38 = [v36 trailingAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v27 + 40) = v39;
  v40 = [v21 view];

  if (!v40)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = [v40 topAnchor];

  v42 = [v20 view];
  if (!v42)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = v42;
  v44 = [v42 topAnchor];

  v45 = [v41 constraintEqualToAnchor_];
  *(v27 + 48) = v45;
  v46 = [v21 view];

  if (!v46)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = [v46 bottomAnchor];

  v48 = [v20 view];
  if (v48)
  {
    v49 = v48;
    v50 = objc_opt_self();
    v51 = [v49 bottomAnchor];

    v52 = [v47 constraintEqualToAnchor_];
    *(v27 + 56) = v52;
    sub_255569654(0, &qword_27F7B9600, 0x277CCAAD0);
    v53 = sub_25556D6FC();

    [v50 activateConstraints_];

    [v21 didMoveToParentViewController_];
    sub_255569454(v7);
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_255569358(uint64_t a1, char a2, id a3)
{
  [a3 dismissViewControllerAnimated:1 completion:0];
  v6 = [a3 completionHandler];
  v7 = v6;
  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  (*(v6 + 2))(v6, v8);

  _Block_release(v7);
}

uint64_t sub_2555693F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255569454(uint64_t a1)
{
  v2 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id IPLanguageDiscoverySetupViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_25556D6DC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_255569654(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2555696B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_255569728()
{
  swift_getKeyPath();
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel, &unk_25556E8D8);
  sub_25556D16C();

  return *(v0 + 16);
}

uint64_t sub_2555697CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel, &unk_25556E8D8);
  sub_25556D16C();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2555698B0(uint64_t result, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = result;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel, &unk_25556E8D8);
  sub_25556D15C();
}

uint64_t sub_2555699E4(uint64_t result, uint64_t a2, char a3)
{
  *(result + 16) = a2;
  *(result + 24) = a3 & 1;
  return result;
}

uint64_t sub_2555699F4()
{
  v1 = OBJC_IVAR____TtC17IntlPreferencesUI28IPLanguageDiscoveryViewModel___observationRegistrar;
  v2 = sub_25556D18C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_255569AB8(uint64_t a1)
{
  result = sub_25556D18C();
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

uint64_t sub_255569B9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255569BD4(uint64_t a1)
{
  sub_25556D14C();
  if (v1 <= 0x3F)
  {
    sub_255569C78(319);
    if (v2 <= 0x3F)
    {
      sub_255569CDC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255569C78(uint64_t a1)
{
  if (!qword_27F7B9638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9640, qword_25556E880);
    v1 = sub_25556D72C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7B9638);
    }
  }
}

void sub_255569CDC(uint64_t a1)
{
  if (!qword_27F7B9648)
  {
    type metadata accessor for IPLanguageDiscoveryViewModel(255);
    v1 = sub_25556D62C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7B9648);
    }
  }
}

uint64_t sub_255569D50(uint64_t a1)
{
  sub_25556D41C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9678, &qword_25556E910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9680, &qword_25556E918);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9688, &qword_25556E920);
  sub_25556CA94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B96A8, &qword_25556E930);
  sub_2555683E8(&qword_27F7B96B0, &qword_27F7B96A8, &qword_25556E930, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_25556D1AC();
}

uint64_t sub_255569EBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9680, &qword_25556E918);
  MEMORY[0x28223BE20](v2);
  v4 = &v11[-v3];
  *v4 = sub_25556D37C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96B8, &qword_25556E938);
  sub_25556A08C(a1, &v4[*(v5 + 44)]);
  v6 = sub_25556D42C();
  v7 = &v4[*(v2 + 36)];
  *v7 = v6;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  v7[40] = 1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9688, &qword_25556E920);
  sub_25556CA94();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B96A8, &qword_25556E930);
  v9 = sub_2555683E8(&qword_27F7B96B0, &qword_27F7B96A8, &qword_25556E930, MEMORY[0x277CDD7A8]);
  v13 = v8;
  v14 = v9;
  swift_getOpaqueTypeConformance2();
  sub_25556D57C();
  return sub_255568190(v4, &qword_27F7B9680, &qword_25556E918);
}

void sub_25556A08C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v206 = a1;
  v180 = a2;
  v178 = sub_25556D36C();
  v175 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v172 = &v146 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96E0, &qword_25556E950);
  v171 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v170 = &v146 - v3;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96E8, &qword_25556E958);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v173 = &v146 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96F0, &qword_25556E960);
  v179 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v194 = &v146 - v9;
  v193 = sub_25556D3DC();
  v204 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v169 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_25556D5DC();
  v202 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v168 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_25556D3FC();
  v162 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v160 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96F8, &qword_25556E968);
  v159 = *(v161 - 1);
  MEMORY[0x28223BE20](v161);
  v158 = &v146 - v13;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9700, &qword_25556E970);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v163 = &v146 - v14;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9708, &qword_25556E978);
  v15 = MEMORY[0x28223BE20](v167);
  v205 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v203 = &v146 - v17;
  v18 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v157 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v187 = v19;
  v188 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9710, &qword_25556E980);
  v190 = *(v191 - 8);
  v20 = MEMORY[0x28223BE20](v191);
  v189 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v201 = &v146 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  MEMORY[0x28223BE20](v23 - 8);
  v197 = &v146 - v24;
  v196 = sub_25556D4BC();
  v25 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v195 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25556D14C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25556D31C();
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v184 = &v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  sub_25556D30C();
  sub_25556D2FC();
  sub_25556D13C();
  v34 = sub_25556D12C();
  v35 = *(v28 + 8);
  v183 = v27;
  v182 = v28 + 8;
  v181 = v35;
  v35(v30, v27);
  sub_25556D11C();
  v36 = sub_25556D6DC();

  v37 = [v34 localizedStringForLanguage:v36 context:5];

  if (!v37)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v185 = v8;
  v186 = v5;
  sub_25556D6EC();

  sub_25556D2EC();

  sub_25556D2FC();
  v154 = v18;
  v38 = (v206 + *(v18 + 20));
  v39 = v38[1];
  v156 = *v38;
  v155 = v39;
  sub_25556D2EC();
  sub_25556D2FC();
  sub_25556D33C();
  v151 = sub_255568298();
  if (!sub_25556D71C())
  {
    v40 = [objc_opt_self() mainBundle];
  }

  v41 = sub_25556D4EC();
  v43 = v42;
  v45 = v44;
  v46 = *MEMORY[0x277CE0A80];
  v47 = v25;
  v48 = v25 + 104;
  v49 = *(v25 + 104);
  v50 = v195;
  v51 = v196;
  v150 = v48;
  v149 = v49;
  v49(v195, v46, v196);
  v52 = sub_25556D43C();
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v55 = v197;
  v148 = v52;
  v147 = v54;
  v146 = v53 + 56;
  (v54)(v197, 1, 1);
  sub_25556D44C();
  sub_25556D49C();
  sub_25556CBD8(v55);
  v56 = *(v47 + 8);
  v152 = v47 + 8;
  v56(v50, v51);
  v57 = v56;
  v58 = sub_25556D4DC();
  v198 = v59;
  v199 = v58;
  v153 = v60;
  v200 = v61;

  sub_2555681F0(v41, v43, v45 & 1);

  sub_25556D30C();
  sub_25556D2FC();
  sub_25556D2EC();
  sub_25556D2FC();
  sub_25556D13C();
  v62 = sub_25556D12C();
  v181(v30, v183);
  v63 = v206;
  sub_25556D11C();
  v64 = sub_25556D6DC();

  v65 = [v62 localizedStringForLanguage:v64 context:5];

  if (!v65)
  {
    goto LABEL_9;
  }

  v66 = v63;
  sub_25556D6EC();

  sub_25556D2EC();

  sub_25556D2FC();
  sub_25556D33C();
  if (!sub_25556D71C())
  {
    v67 = [objc_opt_self() mainBundle];
  }

  v68 = sub_25556D4EC();
  v70 = v69;
  v72 = v71;
  v74 = v195;
  v73 = v196;
  v149(v195, *MEMORY[0x277CE0A90], v196);
  v75 = v197;
  v147(v197, 1, 1, v148);
  sub_25556D49C();
  sub_25556CBD8(v75);
  v57(v74, v73);
  v76 = sub_25556D4DC();
  v78 = v77;
  LOBYTE(v74) = v79;

  sub_2555681F0(v68, v70, v72 & 1);

  sub_25556D5AC();
  v80 = sub_25556D4CC();
  v195 = v81;
  v196 = v80;
  LODWORD(v184) = v82;
  v197 = v83;

  sub_2555681F0(v76, v78, v74 & 1);

  v208 = &unk_286773768;
  v84 = v188;
  sub_2555693F0(v66, v188);
  v85 = (*(v157 + 80) + 16) & ~*(v157 + 80);
  v181 = *(v157 + 80);
  v86 = swift_allocObject();
  sub_25556CB5C(v84, v86 + v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B94A8, &qword_25556E490);
  type metadata accessor for IPLanguageDiscoveryChoice();
  type metadata accessor for IPLanguageDiscoveryChoiceButton(0);
  sub_2555683E8(&qword_27F7B9718, &qword_27F7B94A8, &qword_25556E490, MEMORY[0x277D83980]);
  sub_25556CDE0(&qword_27F7B9720, type metadata accessor for IPLanguageDiscoveryChoiceButton, &unk_25556E610);
  sub_25556CDE0(&qword_27F7B9728, type metadata accessor for IPLanguageDiscoveryChoice, &protocol conformance descriptor for IPLanguageDiscoveryChoice);
  sub_25556D64C();
  v87 = v188;
  sub_2555693F0(v66, v188);
  v88 = swift_allocObject();
  v89 = v85;
  sub_25556CB5C(v87, v88 + v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9730, &qword_25556E988);
  sub_25556CE88();
  v90 = v158;
  sub_25556D63C();
  v91 = v160;
  sub_25556D3EC();
  v183 = MEMORY[0x277CDF028];
  v92 = sub_2555683E8(&qword_27F7B9740, &qword_27F7B96F8, &qword_25556E968, MEMORY[0x277CDF028]);
  v93 = sub_25556CDE0(&qword_27F7B9748, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v94 = v163;
  v95 = v161;
  v96 = v164;
  sub_25556D53C();
  v162[1](v91, v96);
  (*(v159 + 8))(v90, v95);
  v97 = v168;
  sub_25556D5CC();
  v98 = v169;
  sub_25556D3CC();
  v208 = v95;
  v209 = v96;
  v210 = v92;
  v211 = v93;
  v182 = MEMORY[0x277CDE668];
  swift_getOpaqueTypeConformance2();
  v164 = sub_25556CDE0(&qword_27F7B9750, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
  v99 = v203;
  v100 = v166;
  v101 = v193;
  sub_25556D55C();
  v102 = *(v204 + 8);
  v204 += 8;
  v162 = v102;
  (v102)(v98, v101);
  v103 = v206;
  v104 = *(v202 + 8);
  v202 += 8;
  v161 = v104;
  (v104)(v97, v192);
  (*(v165 + 8))(v94, v100);
  v105 = (v103 + *(v154 + 28));
  v107 = *v105;
  v106 = v105[1];
  v208 = v107;
  v209 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9668, &qword_25556E908);
  sub_25556D61C();
  v108 = v207;
  swift_getKeyPath();
  v208 = v108;
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel, &unk_25556E8D8);
  sub_25556D16C();

  LOBYTE(v84) = v108[24];

  KeyPath = swift_getKeyPath();
  v110 = swift_allocObject();
  *(v110 + 16) = v84;
  v111 = (v99 + *(v167 + 36));
  *v111 = KeyPath;
  v111[1] = sub_25556CF64;
  v111[2] = v110;
  sub_2555693F0(v103, v87);
  v112 = swift_allocObject();
  v113 = sub_25556CB5C(v87, v112 + v89);
  MEMORY[0x28223BE20](v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9758, &qword_25556E9E8);
  sub_25556CFF0();
  v114 = v170;
  sub_25556D63C();
  v115 = v172;
  sub_25556D35C();
  v116 = sub_2555683E8(&qword_27F7B9778, &qword_27F7B96E0, &qword_25556E950, v183);
  v117 = sub_25556CDE0(&qword_27F7B9780, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v118 = v173;
  v119 = v174;
  v120 = v178;
  sub_25556D53C();
  (*(v175 + 8))(v115, v120);
  (*(v171 + 8))(v114, v119);
  v121 = v97;
  sub_25556D5CC();
  sub_25556D3CC();
  v208 = v119;
  v209 = v120;
  v210 = v116;
  v211 = v117;
  swift_getOpaqueTypeConformance2();
  v122 = v194;
  v123 = v177;
  v124 = v193;
  sub_25556D55C();
  (v162)(v98, v124);
  (v161)(v121, v192);
  (*(v176 + 8))(v118, v123);
  LOBYTE(v208) = v153 & 1;
  LOBYTE(v123) = v153 & 1;
  LODWORD(v204) = v153 & 1;
  v125 = *(v190 + 16);
  v126 = v189;
  v127 = v191;
  v125(v189, v201, v191);
  sub_25555EFA0(v203, v205);
  v128 = v179;
  v129 = *(v179 + 16);
  v130 = v185;
  v129(v185, v122, v186);
  v131 = v180;
  v132 = v198;
  *v180 = v199;
  v131[1] = v132;
  *(v131 + 16) = v123;
  v133 = v195;
  v134 = v196;
  v131[3] = v200;
  v131[4] = v134;
  v131[5] = v133;
  LODWORD(v206) = v184 & 1;
  *(v131 + 48) = v184 & 1;
  v131[7] = v197;
  v131[8] = 0x4034000000000000;
  *(v131 + 72) = 0;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9788, &qword_25556E9F8);
  v125(v131 + v135[20], v126, v127);
  v136 = v131 + v135[24];
  *v136 = 0x4034000000000000;
  v136[8] = 0;
  sub_25555EFA0(v205, v131 + v135[28]);
  v137 = v130;
  v138 = v186;
  v129(v131 + v135[32], v137, v186);
  v139 = v131 + v135[36];
  *v139 = 0;
  v139[8] = 1;
  v140 = v131 + v135[40];
  *v140 = 0;
  v140[8] = 1;
  sub_255568244(v199, v198, v204);

  v142 = v195;
  v141 = v196;
  LOBYTE(v126) = v206;
  sub_255568244(v196, v195, v206);
  v143 = *(v128 + 8);

  v143(v194, v138);
  sub_255568190(v203, &qword_27F7B9708, &qword_25556E978);
  v144 = *(v190 + 8);
  v145 = v191;
  v144(v201, v191);
  v143(v185, v138);
  sub_255568190(v205, &qword_27F7B9708, &qword_25556E978);
  v144(v189, v145);
  sub_2555681F0(v141, v142, v126);

  sub_2555681F0(v199, v198, v208);
}

uint64_t sub_25556BA00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for IPLanguageDiscoveryChoiceButton(0);
  v7 = v6[5];
  v8 = sub_25556D14C();
  (*(*(v8 - 8) + 16))(&a3[v7], a2, v8);
  *a3 = v5;
  v9 = &a3[v6[6]];
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 model];

  v12 = sub_25556D6EC();
  v14 = v13;

  *v9 = v12;
  *(v9 + 1) = v14;
  v15 = &a3[v6[7]];
  type metadata accessor for IPLanguageDiscoveryViewModel(0);
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel, &unk_25556E8D8);
  result = sub_25556D1CC();
  *v15 = result;
  v15[8] = v17 & 1;
  return result;
}

uint64_t sub_25556BB4C(uint64_t a1)
{
  result = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v3 = a1 + *(result + 24);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9668, &qword_25556E908);
    sub_25556D61C();
    swift_getKeyPath();
    sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel, &unk_25556E8D8);
    sub_25556D16C();

    v6 = *(v8 + 16);
    v7 = *(v8 + 24);

    v4(v6, v7);
    return sub_25556CBC8(v4, v5);
  }

  return result;
}

__n128 sub_25556BC78@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v5 = sub_25556D4BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25556D32C();
  v9 = sub_25556D4EC();
  v11 = v10;
  v13 = v12;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0A68], v5);
  v14 = sub_25556D43C();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_25556D46C();
  sub_25556D49C();
  sub_25556CBD8(v4);
  (*(v6 + 8))(v8, v5);
  v15 = sub_25556D4DC();
  v17 = v16;
  LOBYTE(v8) = v18;
  v20 = v19;

  sub_2555681F0(v9, v11, v13 & 1);

  sub_25556D65C();
  sub_25556D22C();
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v20;
  v21 = v24[5];
  *(a1 + 96) = v24[4];
  *(a1 + 112) = v21;
  *(a1 + 128) = v24[6];
  v22 = v24[1];
  *(a1 + 32) = v24[0];
  *(a1 + 48) = v22;
  result = v24[3];
  *(a1 + 64) = v24[2];
  *(a1 + 80) = result;
  return result;
}

void sub_25556BF3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v36 - v4;
  v36[0] = sub_25556D4BC();
  v6 = *(v36[0] - 8);
  MEMORY[0x28223BE20](v36[0]);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25556D14C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25556D31C();
  MEMORY[0x28223BE20](v13 - 8);
  sub_25556D30C();
  sub_25556D2FC();
  sub_25556D13C();
  v14 = sub_25556D12C();
  (*(v10 + 8))(v12, v9);
  sub_25556D11C();
  v15 = sub_25556D6DC();

  v16 = [v14 localizedStringForLanguage:v15 context:5];

  if (v16)
  {
    sub_25556D6EC();

    sub_25556D2EC();

    sub_25556D2FC();
    sub_25556D33C();
    sub_255568298();
    if (!sub_25556D71C())
    {
      v17 = [objc_opt_self() mainBundle];
    }

    v18 = sub_25556D4EC();
    v20 = v19;
    v22 = v21;
    v23 = v36[0];
    (*(v6 + 104))(v8, *MEMORY[0x277CE0A68], v36[0]);
    v24 = sub_25556D43C();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    sub_25556D46C();
    sub_25556D49C();
    sub_25556CBD8(v5);
    (*(v6 + 8))(v8, v23);
    v25 = sub_25556D4DC();
    v27 = v26;
    LOBYTE(v23) = v28;
    v30 = v29;

    sub_2555681F0(v18, v20, v22 & 1);

    sub_25556D65C();
    sub_25556D22C();
    v44 = v23 & 1;
    v31 = sub_25556D59C();
    KeyPath = swift_getKeyPath();
    *a2 = v25;
    *(a2 + 8) = v27;
    *(a2 + 16) = v23 & 1;
    *(a2 + 24) = v30;
    v33 = v42;
    *(a2 + 96) = v41;
    *(a2 + 112) = v33;
    *(a2 + 128) = v43;
    v34 = v38;
    *(a2 + 32) = v37;
    *(a2 + 48) = v34;
    v35 = v40;
    *(a2 + 64) = v39;
    *(a2 + 80) = v35;
    *(a2 + 144) = KeyPath;
    *(a2 + 152) = v31;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25556C420(uint64_t a1)
{
  v2 = sub_25556D3AC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96A8, &qword_25556E930);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_25556D39C();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96C0, &qword_25556E940);
  sub_2555683E8(&qword_27F7B96C8, &qword_27F7B96C0, &qword_25556E940, MEMORY[0x277CDF028]);
  sub_25556D1EC();
  v7 = sub_2555683E8(&qword_27F7B96B0, &qword_27F7B96A8, &qword_25556E930, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C38650](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25556C60C(uint64_t a1)
{
  v2 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2555693F0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25556CB5C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B96D0, &qword_25556E948);
  sub_2555683E8(&qword_27F7B96D8, &qword_27F7B96D0, &qword_25556E948, MEMORY[0x277CDEFF0]);
  return sub_25556D63C();
}

uint64_t sub_25556C778(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v5 = a1 + *(result + 24);
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);

    v6(a2, 0);

    return sub_25556CBC8(v6, v7);
  }

  return result;
}

uint64_t sub_25556C800()
{
  v0 = sub_25556D32C();

  return MEMORY[0x282130010](v0);
}

uint64_t sub_25556C85C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9650, &qword_25556E8F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9658, &qword_25556E900);
  sub_2555683E8(&qword_27F7B9660, &qword_27F7B9658, &qword_25556E900, MEMORY[0x277CDD6E0]);
  sub_25556D20C();
  v7 = (v1 + *(a1 + 28));
  v9 = *v7;
  v8 = v7[1];
  v13 = v9;
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9668, &qword_25556E908);
  sub_25556D61C();
  type metadata accessor for IPLanguageDiscoveryViewModel(0);
  sub_2555683E8(&qword_27F7B9670, &qword_27F7B9650, &qword_25556E8F8, MEMORY[0x277CDDA18]);
  sub_25556CDE0(&qword_27F7B9520, type metadata accessor for IPLanguageDiscoveryViewModel, &unk_25556E8D8);
  sub_25556D54C();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_25556CA94()
{
  result = qword_27F7B9690;
  if (!qword_27F7B9690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9680, &qword_25556E918);
    sub_2555683E8(&qword_27F7B9698, &qword_27F7B96A0, &qword_25556E928, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B9690);
  }

  return result;
}

uint64_t sub_25556CB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25556CBC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25556CBD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B9578, &qword_25556E700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for IPLanguageDiscoverySetupView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_25556D14C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  if (*(v0 + v3 + *(v1 + 24)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25556CD60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for IPLanguageDiscoverySetupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25556BA00(a1, v6, a2);
}

uint64_t sub_25556CDE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25556CE28()
{
  v1 = *(type metadata accessor for IPLanguageDiscoverySetupView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25556BB4C(v2);
}

unint64_t sub_25556CE88()
{
  result = qword_27F7B9738;
  if (!qword_27F7B9738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9730, &qword_25556E988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B9738);
  }

  return result;
}

uint64_t sub_25556CF0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25556D23C();
  *a1 = result;
  return result;
}

unint64_t sub_25556CFF0()
{
  result = qword_27F7B9760;
  if (!qword_27F7B9760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7B9758, &qword_25556E9E8);
    sub_25556CE88();
    sub_2555683E8(&qword_27F7B9768, &qword_27F7B9770, &qword_25556E9F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B9760);
  }

  return result;
}

void sub_25556D0A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}