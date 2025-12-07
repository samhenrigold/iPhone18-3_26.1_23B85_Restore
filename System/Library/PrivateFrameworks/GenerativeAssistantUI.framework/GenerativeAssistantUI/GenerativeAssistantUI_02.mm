uint64_t sub_24FE86708(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FE867D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FE86888(uint64_t a1)
{
  sub_24FE869B4(319);
  if (v1 <= 0x3F)
  {
    sub_24FE86A48(319);
    if (v2 <= 0x3F)
    {
      sub_24FE86ADC(319, &qword_27F3A5EB8, &qword_27F3A63C0, &qword_24FEE4530, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24FE86ADC(319, &qword_27F3A5EC0, &qword_27F3A5EC8, &qword_24FEE4538, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24FE86B40(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24FE869B4(uint64_t a1)
{
  if (!qword_27F3A5EA8)
  {
    type metadata accessor for DocumentViewModel(255);
    sub_24FE86F30(&qword_27F3A5DF0, type metadata accessor for DocumentViewModel, "!W22 p");
    v1 = sub_24FEDD1C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A5EA8);
    }
  }
}

void sub_24FE86A48(uint64_t a1)
{
  if (!qword_27F3A5EB0)
  {
    type metadata accessor for LaTeXMathTracker(255);
    sub_24FE86F30(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker, &protocol conformance descriptor for LaTeXMathTracker);
    v1 = sub_24FEDD1C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A5EB0);
    }
  }
}

void sub_24FE86ADC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_24FE86B40(uint64_t a1)
{
  if (!qword_27F3A5ED0)
  {
    sub_24FE85C8C();
    v1 = sub_24FEDD0D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A5ED0);
    }
  }
}

unint64_t sub_24FE86BA0()
{
  result = qword_27F3A5EE0;
  if (!qword_27F3A5EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5E80, &qword_24FEE4480);
    sub_24FE58928(&qword_27F3A5EE8, &qword_27F3A5EF0, &unk_24FEE4540, MEMORY[0x277CE1198]);
    sub_24FE58928(&qword_27F3A5EF8, &unk_27F3A5E88, &qword_24FEE4488, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5EE0);
  }

  return result;
}

uint64_t sub_24FE86C84(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24FE86CBC()
{
  result = qword_27F3A5F98;
  if (!qword_27F3A5F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5F78, &qword_24FEE45C8);
    sub_24FE86F30(&qword_27F3A5FA0, type metadata accessor for ShareButton, &protocol conformance descriptor for ShareButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5F98);
  }

  return result;
}

unint64_t sub_24FE86D78()
{
  result = qword_27F3A5FA8;
  if (!qword_27F3A5FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5F90, &qword_24FEE4630);
    sub_24FE86E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5FA8);
  }

  return result;
}

unint64_t sub_24FE86E04()
{
  result = qword_27F3A5FB0;
  if (!qword_27F3A5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5FB0);
  }

  return result;
}

uint64_t sub_24FE86E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE86EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE86F30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE86F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DocumentViewModel.elements.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  return v1;
}

uint64_t DocumentViewModel.elements.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24FEDCFF4();
}

uint64_t (*DocumentViewModel.elements.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_24FEDCFD4();
  return sub_24FE871BC;
}

void sub_24FE871BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t DocumentViewModel.$elements.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FD8, &qword_24FEE46D0);
  sub_24FEDCFB4();
  return swift_endAccess();
}

uint64_t DocumentViewModel.$elements.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FE0, &qword_24FEE46D8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FD8, &qword_24FEE46D0);
  sub_24FEDCFC4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*DocumentViewModel.$elements.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FE0, &qword_24FEE46D8);
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

  v10 = OBJC_IVAR____TtC16MarkdownDocument17DocumentViewModel__elements;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FD8, &qword_24FEE46D0);
  sub_24FEDCFB4();
  swift_endAccess();
  return sub_24FE87540;
}

void sub_24FE87540(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_24FEDCFC4();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_24FEDCFC4();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t DocumentViewModel.__allocating_init(elements:)(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E18, &qword_24FEE4420);
  sub_24FEDCFA4();
  swift_endAccess();
  return v1;
}

uint64_t DocumentViewModel.init(elements:)(uint64_t a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E18, &qword_24FEE4420);
  sub_24FEDCFA4();
  swift_endAccess();
  return v1;
}

Swift::Bool __swiftcall DocumentViewModel.hasCodeblockOrImage()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A5FE8, &qword_24FEE46E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v35 = type metadata accessor for DocumentOutlineElement(0);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DocumentFileElement(0);
  MEMORY[0x28223BE20](v36);
  v37 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DocumentDataImageElement(0);
  MEMORY[0x28223BE20](v38);
  v39 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DocumentTableElement(0);
  MEMORY[0x28223BE20](v40);
  v41 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DocumentCodeBlockElement(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v27 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v15 = v45[0];
  v33 = *(v45[0] + 16);
  if (!v33)
  {
LABEL_22:

    return 0;
  }

  v16 = 0;
  v17 = v45[0] + 32;
  v34 = (v3 + 56);
  v30 = v5;
  v27 = v2;
  v29 = v45[0];
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_24FE72D1C(v17 + 40 * v16, v45);
    sub_24FE72D1C(v45, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v45);

      v25 = type metadata accessor for DocumentCodeBlockElement;
      v26 = v42;
LABEL_24:
      sub_24FE87F5C(v26, v25);
      return 1;
    }

    sub_24FE72D1C(v45, v44);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v45);

      v25 = type metadata accessor for DocumentTableElement;
      v26 = v41;
      goto LABEL_24;
    }

    sub_24FE72D1C(v45, v44);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v45);

      v25 = type metadata accessor for DocumentDataImageElement;
      v26 = v39;
      goto LABEL_24;
    }

    sub_24FE72D1C(v45, v44);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v45);

      v25 = type metadata accessor for DocumentFileElement;
      v26 = v37;
      goto LABEL_24;
    }

    sub_24FE72D1C(v45, v44);
    v18 = v35;
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v45);
    (*v34)(v2, 1, 1, v18);
    result = sub_24FE87E90(v2);
LABEL_21:
    if (++v16 == v33)
    {
      goto LABEL_22;
    }
  }

  (*v34)(v2, 0, 1, v18);
  result = sub_24FE87EF8(v2, v5);
  v19 = *&v5[*(v18 + 20)];
  v31 = *(v19 + 16);
  if (!v31)
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v45);
    v5 = v30;
    result = sub_24FE87F5C(v30, type metadata accessor for DocumentOutlineElement);
    v2 = v27;
    v15 = v29;
    goto LABEL_21;
  }

  v20 = 0;
  v32 = v19 + 32;
  v28 = v17;
  while (v20 < *(v19 + 16))
  {
    v21 = *(v32 + 8 * v20);
    v22 = *(v21 + 16);

    if (v22)
    {
      v23 = 0;
      v24 = v21 + 32;
      while (v23 < *(v21 + 16))
      {
        sub_24FE72D1C(v24, v44);
        sub_24FE731F4(v44, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F00, &qword_24FEE4550);
        result = swift_dynamicCast();
        if (result)
        {

          sub_24FE87F5C(v11, type metadata accessor for DocumentCodeBlockElement);
          __swift_destroy_boxed_opaque_existential_1(v45);
          v25 = type metadata accessor for DocumentOutlineElement;
          v26 = v30;
          goto LABEL_24;
        }

        ++v23;
        v24 += 40;
        if (v22 == v23)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_11:
    ++v20;

    v17 = v28;
    if (v20 == v31)
    {
      goto LABEL_20;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24FE87E90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A5FE8, &qword_24FEE46E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE87EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentOutlineElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE87F5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DocumentViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC16MarkdownDocument17DocumentViewModel__elements;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FD8, &qword_24FEE46D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DocumentViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MarkdownDocument17DocumentViewModel__elements;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FD8, &qword_24FEE46D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24FE880DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDCF94();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for DocumentViewModel(uint64_t a1)
{
  result = qword_27F3A5FF8;
  if (!qword_27F3A5FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FE88180(uint64_t a1)
{
  sub_24FE88210(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24FE88210(uint64_t a1)
{
  if (!qword_27F3A6008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5E18, &qword_24FEE4420);
    v1 = sub_24FEDD004();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A6008);
    }
  }
}

uint64_t DocumentBlockQuoteElement.init(id:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24FEDCA64();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for DocumentBlockQuoteElement(0) + 20);
  v8 = sub_24FEDC774();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t type metadata accessor for DocumentBlockQuoteElement(uint64_t a1)
{
  result = qword_27F3A6048;
  if (!qword_27F3A6048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentBlockQuoteElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentBlockQuoteElement.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentBlockQuoteElement(0) + 20);
  v4 = sub_24FEDC774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentBlockQuoteElement.makeView(textWrapOffset:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(type metadata accessor for DocumentBlockQuoteElement(0) + 20);
  v8 = sub_24FEDC774();
  (*(*(v8 - 8) + 16))(a1, v3 + v7, v8);
  v9 = type metadata accessor for DocumentBlockQuoteView(0);
  v10 = (a1 + v9[5]);
  *v10 = a2;
  v10[1] = a3;
  *(a1 + v9[6]) = 0x402A000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + v9[7]) = _Q0;
  *(a1 + v9[8]) = 0x4000000000000000;
  *(a1 + v9[9]) = 0x4014000000000000;
  v16 = a1 + v9[10];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v9[11];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DocumentBlockQuoteElement.makeView()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentBlockQuoteElement(0) + 20);
  v4 = sub_24FEDC774();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = type metadata accessor for DocumentBlockQuoteView(0);
  v6 = (a1 + v5[5]);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + v5[6]) = 0x402A000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + v5[7]) = _Q0;
  *(a1 + v5[8]) = 0x4000000000000000;
  *(a1 + v5[9]) = 0x4014000000000000;
  v12 = a1 + v5[10];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v5[11];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DocumentBlockQuoteElement.append(_:)@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for DocumentBlockQuoteElement(0);
  a2[4] = sub_24FE88DA0(&qword_27F3A6018, type metadata accessor for DocumentBlockQuoteElement, &protocol conformance descriptor for DocumentBlockQuoteElement);
  __swift_allocate_boxed_opaque_existential_1(a2);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  return sub_24FEDC614();
}

uint64_t static DocumentBlockQuoteElement.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DocumentBlockQuoteElement(0);

  return sub_24FEDC684();
}

uint64_t sub_24FE887A8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(a4);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  return sub_24FEDC614();
}

uint64_t sub_24FE88800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24FEDC774();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24FE88878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24FEDC774();
  (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
  v6 = type metadata accessor for DocumentBlockQuoteView(0);
  v7 = (a2 + v6[5]);
  *v7 = 0;
  v7[1] = 0;
  *(a2 + v6[6]) = 0x402A000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a2 + v6[7]) = _Q0;
  *(a2 + v6[8]) = 0x4000000000000000;
  *(a2 + v6[9]) = 0x4014000000000000;
  v13 = a2 + v6[10];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v6[11];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24FE88988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *(a1 + 20);
  v9 = sub_24FEDC774();
  (*(*(v9 - 8) + 16))(a2, v4 + v8, v9);
  v10 = type metadata accessor for DocumentBlockQuoteView(0);
  v11 = (a2 + v10[5]);
  *v11 = a3;
  v11[1] = a4;
  *(a2 + v10[6]) = 0x402A000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a2 + v10[7]) = _Q0;
  *(a2 + v10[8]) = 0x4000000000000000;
  *(a2 + v10[9]) = 0x4014000000000000;
  v17 = a2 + v10[10];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v10[11];
  *(a2 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24FE88AA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24FE88B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  return sub_24FEDC684();
}

uint64_t sub_24FE88C28(uint64_t a1)
{
  result = sub_24FE88DA0(&qword_27F3A6020, type metadata accessor for DocumentBlockQuoteElement, &protocol conformance descriptor for DocumentBlockQuoteElement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24FE88CD4(uint64_t a1)
{
  *(a1 + 8) = sub_24FE88DA0(&qword_27F3A6030, type metadata accessor for DocumentBlockQuoteElement, &protocol conformance descriptor for DocumentBlockQuoteElement);
  result = sub_24FE88DA0(&unk_27F3A6038, type metadata accessor for DocumentBlockQuoteElement, &protocol conformance descriptor for DocumentBlockQuoteElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FE88DA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE88DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24FEDC774();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FE88F00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24FEDCA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24FEDC774();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24FE88FFC(uint64_t a1)
{
  result = sub_24FEDCA64();
  if (v2 <= 0x3F)
  {
    result = sub_24FEDC774();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DocumentBlockQuoteView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for DocumentBlockQuoteView(0) + 24));
  *a1 = sub_24FEDD434();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6060, &qword_24FEE48C0);
  return sub_24FE89138(v1, (a1 + *(v4 + 44)));
}

uint64_t type metadata accessor for DocumentBlockQuoteView(uint64_t a1)
{
  result = qword_27F3A6078;
  if (!qword_27F3A6078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE89138@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60A8, &qword_24FEE4980);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v66 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60B0, &qword_24FEE4988) - 8;
  MEMORY[0x28223BE20](v76);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = &v66 - v6;
  MEMORY[0x28223BE20](v7);
  v75 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60B8, &qword_24FEE4990);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60C0, &qword_24FEE4998);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60C8, &qword_24FEE49A0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v67 = &v66 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60D0, &qword_24FEE49A8);
  MEMORY[0x28223BE20](v69);
  v21 = &v66 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60D8, &qword_24FEE49B0);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v68 = &v66 - v24;
  v25 = (a1 + *(type metadata accessor for DocumentBlockQuoteView(0) + 28));
  v26 = *v25;
  v27 = v25[1];
  v28 = *(sub_24FEDD284() + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_24FEDD4E4();
  (*(*(v30 - 8) + 104))(&v12[v28], v29, v30);
  *v12 = v26;
  *(v12 + 1) = v27;
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v31 = &v12[*(v10 + 44)];
  v32 = v84;
  *v31 = v83;
  *(v31 + 1) = v32;
  *(v31 + 2) = v85;
  sub_24FEDDF34();
  sub_24FEDD294();
  sub_24FE6315C(v12, v16, &qword_27F3A60B8, &qword_24FEE4990);
  v33 = &v16[*(v14 + 44)];
  v34 = v91;
  *(v33 + 4) = v90;
  *(v33 + 5) = v34;
  *(v33 + 6) = v92;
  v35 = v87;
  *v33 = v86;
  *(v33 + 1) = v35;
  v36 = v89;
  *(v33 + 2) = v88;
  *(v33 + 3) = v36;
  LOBYTE(v12) = sub_24FEDD774();
  sub_24FEDD014();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v67;
  sub_24FE6315C(v16, v67, &qword_27F3A60C0, &qword_24FEE4998);
  v46 = v45 + *(v18 + 44);
  *v46 = v12;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  v47 = [objc_opt_self() separatorColor];
  v48 = sub_24FEDDC94();
  KeyPath = swift_getKeyPath();
  sub_24FE6315C(v45, v21, &qword_27F3A60C8, &qword_24FEE49A0);
  v50 = &v21[*(v69 + 36)];
  *v50 = KeyPath;
  v50[1] = v48;
  sub_24FE8A3E4();
  v51 = v68;
  sub_24FEDDA54();
  sub_24FE8A698(v21);
  sub_24FE89944(a1, v81);
  v52 = v81[0];
  v53 = v81[1];
  LOBYTE(KeyPath) = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6118, &qword_24FEE49F0);
  sub_24FE8A700();
  v54 = v74;
  sub_24FEDDB84();
  sub_24FE56B94(v52, v53, KeyPath);

  LODWORD(v52) = sub_24FEDD634();
  v55 = v73;
  (*(v78 + 32))(v73, v54, v79);
  *(v55 + *(v76 + 44)) = v52;
  v56 = v75;
  sub_24FE8A77C(v55, v75);
  v57 = v71;
  v58 = *(v71 + 16);
  v59 = v70;
  v60 = v72;
  v58(v70, v51, v72);
  v61 = v77;
  sub_24FE8A7EC(v56, v77);
  v62 = v80;
  v58(v80, v59, v60);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6128, &qword_24FEE49F8);
  sub_24FE8A7EC(v61, &v62[*(v63 + 48)]);
  sub_24FE8A85C(v56);
  v64 = *(v57 + 8);
  v64(v51, v60);
  sub_24FE8A85C(v61);
  return (v64)(v59, v60);
}

uint64_t sub_24FE89944@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = sub_24FEDC774();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v49 - v8;
  v54 = sub_24FEDC5A4();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24FEDD054();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24FEDD3E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + *(type metadata accessor for DocumentBlockQuoteView(0) + 40);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v18 = *v16;
  }

  else
  {

    sub_24FEDE4D4();
    v51 = v5;
    v19 = sub_24FEDD714();
    v50 = v12;
    v20 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = v19;
    v5 = v51;
    sub_24FEDCF14();

    v6 = v20;
    sub_24FEDD3D4();
    swift_getAtKeyPath();
    sub_24FE8A8C4(v17, 0);
    (*(v13 + 8))(v15, v50);
    v18 = v60[0];
  }

  v22 = v56;
  sub_24FE9A750(v56);
  type metadata accessor for MarkdownFont();
  swift_initStaticObject();
  sub_24FE82000(v60);
  v23 = v60[1];
  v65 = v60[0];
  sub_24FE8A8D0(&v65);
  v64 = v60[2];
  sub_24FE8A8D0(&v64);
  v63 = v60[3];
  sub_24FE8A8D0(&v63);
  v62 = v60[4];
  sub_24FE8A8D0(&v62);
  v61 = v60[5];
  sub_24FE8A8D0(&v61);
  v24 = v52;
  sub_24FEDC574();
  sub_24FEAE034(v55);
  (*(v53 + 8))(v24, v54);
  v25 = sub_24FEDE224();
  v27 = _s16MarkdownDocument18LaTeXMathExtractorO7extract4from15extractingTypesSayAC11TextSegmentOGSS_AC14ExtractionTypeVtFZ_0(v25, v26, 3);

  (*(v4 + 16))(v6, a1, v3);
  v28 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v29 = (v5 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v4 + 32))(v30 + v28, v6, v3);
  v31 = (v30 + v29);
  *v31 = sub_24FEC572C;
  v31[1] = 0;
  sub_24FEDD4B4();
  LOWORD(v48) = 256;
  v32 = sub_24FEDD9D4();
  v33 = MEMORY[0x28223BE20](v32);
  *(&v49 - 6) = v18;
  *(&v49 - 5) = v22;
  *(&v49 - 4) = v23;
  *(&v49 - 3) = sub_24FE8A9C4;
  v47 = v30;
  v38 = sub_24FEAFE5C(v35, v36, v34 & 1, v37, sub_24FE8AA8C, v33, (&v49 - 8), v27);
  v40 = v39;
  v42 = v41;
  v44 = v43;

  result = (*(v57 + 8))(v22, v58);
  v46 = v59;
  *v59 = v38;
  v46[1] = v40;
  *(v46 + 16) = v42 & 1;
  v46[3] = v44;
  return result;
}

uint64_t sub_24FE89F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 24));
  *a2 = sub_24FEDD434();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6060, &qword_24FEE48C0);
  return sub_24FE89138(v2, (a2 + *(v5 + 44)));
}

uint64_t sub_24FE89FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDC774();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24FE8A0F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDC774();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 40) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24FE8A228(uint64_t a1)
{
  sub_24FEDC774();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_24FE8A2F0();
      if (v3 <= 0x3F)
      {
        sub_24FE8A340(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24FE8A2F0()
{
  if (!qword_27F3A6088)
  {
    v0 = sub_24FEDD074();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6088);
    }
  }
}

void sub_24FE8A340(uint64_t a1)
{
  if (!qword_27F3A6090)
  {
    sub_24FEDD054();
    v1 = sub_24FEDD074();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A6090);
    }
  }
}

unint64_t sub_24FE8A3E4()
{
  result = qword_27F3A60E0;
  if (!qword_27F3A60E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A60D0, &qword_24FEE49A8);
    sub_24FE8A49C();
    sub_24FE58928(&qword_27F3A6108, &qword_27F3A6110, &qword_24FEE4B90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A60E0);
  }

  return result;
}

unint64_t sub_24FE8A49C()
{
  result = qword_27F3A60E8;
  if (!qword_27F3A60E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A60C8, &qword_24FEE49A0);
    sub_24FE8A528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A60E8);
  }

  return result;
}

unint64_t sub_24FE8A528()
{
  result = qword_27F3A60F0;
  if (!qword_27F3A60F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A60C0, &qword_24FEE4998);
    sub_24FE8A5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A60F0);
  }

  return result;
}

unint64_t sub_24FE8A5B4()
{
  result = qword_27F3A60F8;
  if (!qword_27F3A60F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A60B8, &qword_24FEE4990);
    sub_24FE8A640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A60F8);
  }

  return result;
}

unint64_t sub_24FE8A640()
{
  result = qword_27F3A6100;
  if (!qword_27F3A6100)
  {
    sub_24FEDD284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6100);
  }

  return result;
}

uint64_t sub_24FE8A698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60D0, &qword_24FEE49A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FE8A700()
{
  result = qword_27F3A6120;
  if (!qword_27F3A6120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6118, &qword_24FEE49F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6120);
  }

  return result;
}

uint64_t sub_24FE8A77C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60B0, &qword_24FEE4988);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE8A7EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60B0, &qword_24FEE4988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE8A85C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60B0, &qword_24FEE4988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE8A8C4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_24FE8A924()
{
  v1 = sub_24FEDC774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24FE8A9C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = *(sub_24FEDC774() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_24FEAE508(a1, a2, a3, a4, v4 + v10, v12, v13);
}

uint64_t DocumentElementBlockQuoteParser.parseElement(attributedString:run:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v81 = a2;
  v2 = sub_24FEDC8E4();
  v73 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_24FEDC774();
  v77 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v71 - v8;
  MEMORY[0x28223BE20](v9);
  v79 = &v71 - v10;
  MEMORY[0x28223BE20](v11);
  v76 = &v71 - v12;
  v93 = sub_24FEDC884();
  v83 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v92 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = (&v71 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6140, &qword_24FEE79D0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v71 - v20;
  v22 = sub_24FEDC854();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v80 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v78 = &v71 - v26;
  sub_24FE8B614();
  sub_24FEDC6D4();
  v27 = sub_24FEDC894();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v18, 1, v27) == 1)
  {
    sub_24FE58B7C(v18, &qword_27F3A6138, &unk_24FEE4A10);
    (*(v23 + 56))(v21, 1, 1, v22);
    v29 = v81;
    v30 = v21;
LABEL_11:
    sub_24FE58B7C(v30, &qword_27F3A6140, &qword_24FEE79D0);
    v47 = type metadata accessor for DocumentBlockQuoteElement(0);
    return (*(*(v47 - 8) + 56))(v29, 1, 1, v47);
  }

  v72 = v21;
  v31 = sub_24FEDC864();
  (*(v28 + 8))(v18, v27);
  result = v31;
  v33 = *(v31 + 16);
  v34 = v22;
  v35 = v80;
  v90 = v33;
  v71 = v6;
  if (v33)
  {
    v36 = 0;
    v86 = v23 + 16;
    LODWORD(v85) = *MEMORY[0x277CC8D00];
    v37 = v83++;
    v84 = (v37 + 13);
    v82 = (v23 + 8);
    v88 = v2;
    v89 = v4;
    v87 = result;
    v38 = v92;
    while (v36 < *(result + 16))
    {
      v39 = v23;
      (*(v23 + 16))(v35, result + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v36, v34);
      v40 = v91;
      v41 = v34;
      sub_24FEDC834();
      v42 = v93;
      (*v84)(v38, v85, v93);
      v43 = MEMORY[0x253058A70](v40, v38);
      v44 = *v83;
      (*v83)(v38, v42);
      v44(v40, v42);
      if (v43)
      {

        v30 = v72;
        (*(v39 + 32))(v72, v35, v41);
        v45 = 0;
        v2 = v88;
        v4 = v89;
        v34 = v41;
        v23 = v39;
        goto LABEL_10;
      }

      ++v36;
      (*v82)(v35, v41);
      v4 = v89;
      result = v87;
      v2 = v88;
      v34 = v41;
      v23 = v39;
      if (v90 == v36)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v45 = 1;
    v30 = v72;
LABEL_10:
    (*(v23 + 56))(v30, v45, 1, v34);
    v46 = (*(v23 + 48))(v30, 1, v34);
    v29 = v81;
    if (v46 == 1)
    {
      goto LABEL_11;
    }

    v86 = v23;
    v87 = v34;
    (*(v23 + 32))(v78, v30, v34);
    v48 = sub_24FEDC844();
    v49 = v74;
    v51 = sub_24FED5384(v48, v50);
    MEMORY[0x28223BE20](v51);
    *(&v71 - 2) = v49;
    v52 = sub_24FE8B764(sub_24FE8B744, (&v71 - 4), v51);

    v53 = v79;
    sub_24FEDC764();
    v54 = v77;
    v55 = v75;
    v56 = v53;
    v57 = v94;
    (*(v77 + 16))(v75, v56, v94);
    v58 = *(v52 + 16);
    if (v58)
    {
      v59 = v4;
      v60 = *(v73 + 16);
      v61 = v52 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v92 = *(v73 + 72);
      v93 = v60;
      v62 = (v54 + 8);
      v90 = (v54 + 32);
      v91 = (v73 + 8);
      v84 = ((v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v85 = v52;
      v63 = v71;
      v64 = v94;
      do
      {
        (v93)(v59, v61, v2);
        sub_24FE8BECC(&unk_27F3A6150, MEMORY[0x277CC8D88], MEMORY[0x277CC8D80]);
        sub_24FEDC624();
        (*v91)(v59, v2);
        v65 = *v62;
        (*v62)(v55, v64);
        (*v90)(v55, v63, v64);
        v61 += v92;
        --v58;
      }

      while (v58);

      v29 = v81;
      v57 = v94;
      v54 = v77;
    }

    else
    {

      v65 = *(v54 + 8);
    }

    v65(v79, v57);
    v66 = *(v54 + 32);
    v67 = v76;
    v66(v76, v55, v57);
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    (*(v86 + 8))(v78, v87);
    v68 = type metadata accessor for DocumentBlockQuoteElement(0);
    v69 = v57;
    v70 = v68;
    v66((v29 + *(v68 + 20)), v67, v69);
    return (*(*(v70 - 8) + 56))(v29, 0, 1, v70);
  }

  return result;
}

uint64_t sub_24FE8B440@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v7 = sub_24FEDC854();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a3;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7, v9);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a3 = v23;
        return (*(v8 + 56))(a3, v19, 1, v7);
      }
    }

    v8 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a3, v19, 1, v7);
}

unint64_t sub_24FE8B614()
{
  result = qword_27F3A6148;
  if (!qword_27F3A6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6148);
  }

  return result;
}

uint64_t sub_24FE8B668()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  MEMORY[0x28223BE20](v0);
  v2 = &v4 - v1;
  sub_24FEDC6B4();
  sub_24FE8BF90();
  sub_24FEDC7A4();
  return sub_24FE58B7C(v2, &qword_27F3A6160, &unk_24FEE4A80);
}

uint64_t sub_24FE8B764(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_24FEDC8E4();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x277D84F90];
  sub_24FEBE110(0, v9, 0);
  v10 = v22;
  v11 = *(sub_24FEDC6C4() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_24FEBE110((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8B968(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for DocumentTableView.RowHeader(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_24FEBE1D8(0, v10, 0);
  v11 = v21;
  v12 = *(sub_24FEDC6C4() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_24FEBE1D8((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_24FE8BF28(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for DocumentTableView.RowHeader);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8BB64(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v6 = type metadata accessor for DocumentTableView.TableDatum(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v20 = MEMORY[0x277D84F90];
  sub_24FEBE194(0, v10, 0);
  v11 = v20;
  for (i = (a3 + 32); ; ++i)
  {
    v19 = *i;

    v17(&v19);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v20 = v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_24FEBE194((v13 > 1), v14 + 1, 1);
      v11 = v20;
    }

    *(v11 + 16) = v14 + 1;
    sub_24FE8BF28(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, type metadata accessor for DocumentTableView.TableDatum);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8BD24(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  sub_24FEBE260(0, v4, 0);
  v5 = v18;
  v7 = *(sub_24FEDC6C4() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    a1(v17, v8);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v10 = v17[1];
    v18 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_24FEBE260((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v8 += v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8BECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE8BF28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24FE8BF90()
{
  result = qword_27F3A6168;
  if (!qword_27F3A6168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6160, &unk_24FEE4A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6168);
  }

  return result;
}

uint64_t DocumentBreakElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentBreakElement.id.setter(uint64_t a1)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t sub_24FE8C100()
{
  result = qword_27F3A6170;
  if (!qword_27F3A6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6170);
  }

  return result;
}

uint64_t sub_24FE8C154(uint64_t a1)
{
  *(a1 + 8) = sub_24FE8C26C(&qword_27F3A6178, type metadata accessor for DocumentBreakElement, &protocol conformance descriptor for DocumentBreakElement);
  result = sub_24FE8C26C(&unk_27F3A6180, type metadata accessor for DocumentBreakElement, &protocol conformance descriptor for DocumentBreakElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DocumentBreakElement(uint64_t a1)
{
  result = qword_27F3A6190;
  if (!qword_27F3A6190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE8C26C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE8C2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDCA64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FE8C34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDCA64();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24FE8C3BC(uint64_t a1)
{
  result = sub_24FEDCA64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DocumentBreakView.body.getter(uint64_t a1)
{
  sub_24FEDDF34();
  sub_24FEDD0F4();
  sub_24FEDDC74();
  v1 = sub_24FEDDC64();

  *&v3 = v6;
  BYTE8(v3) = v7;
  *&v4 = v8;
  BYTE8(v4) = v9;
  *&v5 = swift_getKeyPath();
  *(&v5 + 1) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A61A8, &qword_24FEE4B80);
  sub_24FE8C598();
  sub_24FEDDA54();
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v10;
  v11[3] = v5;
  return sub_24FE8C768(v11);
}

uint64_t sub_24FE8C540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD354();
  *a1 = result;
  return result;
}

unint64_t sub_24FE8C598()
{
  result = qword_27F3A61B0;
  if (!qword_27F3A61B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A61A8, &qword_24FEE4B80);
    sub_24FE8C624();
    sub_24FE8C704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A61B0);
  }

  return result;
}

unint64_t sub_24FE8C624()
{
  result = qword_27F3A61B8;
  if (!qword_27F3A61B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A61C0, &qword_24FEE4B88);
    sub_24FE8C6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A61B8);
  }

  return result;
}

unint64_t sub_24FE8C6B0()
{
  result = qword_27F3A61C8;
  if (!qword_27F3A61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A61C8);
  }

  return result;
}

unint64_t sub_24FE8C704()
{
  result = qword_27F3A6108;
  if (!qword_27F3A6108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6110, &qword_24FEE4B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6108);
  }

  return result;
}

uint64_t sub_24FE8C768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A61A8, &qword_24FEE4B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE8C7FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A61A8, &qword_24FEE4B80);
  sub_24FE8C598();
  return swift_getOpaqueTypeConformance2();
}

uint64_t DocumentElementBreakParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X8>)
{
  v35 = sub_24FEDC884();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24FEDC854();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_24FEDC894();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE8B614();
  sub_24FEDC6D4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24FE8CC74(v11);
    v16 = 1;
LABEL_10:
    v25 = type metadata accessor for DocumentBreakElement(0);
    return (*(*(v25 - 8) + 56))(a1, v16, 1, v25);
  }

  v29 = v12;
  v30 = a1;
  v28 = v13;
  (*(v13 + 32))(v15, v11, v12);
  v27 = v15;
  result = sub_24FEDC864();
  v18 = result;
  v33 = *(result + 16);
  if (!v33)
  {
LABEL_8:

    (*(v28 + 8))(v27, v29);
    v16 = 1;
    a1 = v30;
    goto LABEL_10;
  }

  v19 = 0;
  v31 = v6 + 8;
  v32 = v6 + 16;
  v20 = (v3 + 88);
  v21 = *MEMORY[0x277CC8D10];
  v22 = (v3 + 8);
  while (v19 < *(v18 + 16))
  {
    v23 = v34;
    (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v34);
    sub_24FEDC834();
    (*(v6 + 8))(v8, v23);
    v24 = v35;
    if ((*v20)(v5, v35) == v21)
    {

      a1 = v30;
      _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
      (*(v28 + 8))(v27, v29);
      v16 = 0;
      goto LABEL_10;
    }

    ++v19;
    result = (*v22)(v5, v24);
    if (v33 == v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8CC74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FE8CCE4()
{
  result = qword_27F3A61D0;
  if (!qword_27F3A61D0)
  {
    type metadata accessor for DocumentBreakElement(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A61D0);
  }

  return result;
}

uint64_t sub_24FE8CD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FE8CDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MarkdownButtonStyle(uint64_t a1)
{
  result = qword_27F3A61D8;
  if (!qword_27F3A61D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FE8CEB8(uint64_t a1)
{
  sub_24FE86B40(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24FE8CF2C(uint64_t a1)
{
  sub_24FEDDE54();
  if (v1 <= 0x3F)
  {
    sub_24FE8D74C();
    if (v2 <= 0x3F)
    {
      sub_24FE8A340(319);
      if (v3 <= 0x3F)
      {
        sub_24FE86B40(319);
        if (v4 <= 0x3F)
        {
          sub_24FE8D79C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24FE8CFFC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_24FEDD054() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v6 + 80);
  v15 = *(v12 + 80);
  if (v13 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = ((v14 + 16) & ~v14) + *(v6 + 64);
  v18 = *(v9 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  v21 = v10 + v15 + 1;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v22 = ((*(*(v11 - 8) + 64) + ((*(*(v11 - 8) + 64) + v15 + ((v21 + ((v20 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8)) & v19)) & ~v15)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v23 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = a2 - v16 + 1;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    return v16 + (v30 | v29) + 1;
  }

  if (v26)
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v8 >= v13)
  {
    v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v34 = *(v6 + 48);

      return v34((v32 + v14 + 8) & ~v14, v7, v5);
    }

    else
    {
      v33 = *v32;
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }
  }

  else
  {
    v31 = *(v12 + 48);

    return v31((v21 + ((v20 + ((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) & v19)) & ~v15);
  }
}

void sub_24FE8D338(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v39 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_24FEDD054() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0) - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = *(v8 + 80);
  v18 = ((v17 + 16) & ~v17) + *(v8 + 64);
  v19 = *(v13 + 80);
  v20 = *(v13 + 64);
  v21 = *(v11 + 80) & 0xF8;
  v22 = ~v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = v21 + 23;
  v24 = v12 + v19 + 1;
  v25 = ((v20 + ((v20 + v19 + ((v24 + ((v23 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v19)) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v28 = 0;
    v29 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (((v20 + ((v20 + v19 + ((v24 + ((v23 + ((v18 + 7) & 0xFFFFFFF8)) & v22)) & ~v19)) & ~v19) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a3 - v16 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_23:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *&a1[v25] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *&a1[v25] = 0;
      }

      else if (v28)
      {
        a1[v25] = 0;
        if (!a2)
        {
          return;
        }

LABEL_39:
        if (v10 >= v15)
        {
          if (v10 >= a2)
          {
            v36 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((v9 & 0x80000000) != 0)
            {
              v38 = *(v39 + 56);

              v38((v36 + v17 + 8) & ~v17, a2, v9, v7);
            }

            else
            {
              if ((a2 & 0x80000000) != 0)
              {
                v37 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v37 = (a2 - 1);
              }

              *v36 = v37;
            }
          }

          else
          {
            if (v18 <= 3)
            {
              v33 = ~(-1 << (8 * v18));
            }

            else
            {
              v33 = -1;
            }

            if (v18)
            {
              v34 = v33 & (~v10 + a2);
              if (v18 <= 3)
              {
                v35 = v18;
              }

              else
              {
                v35 = 4;
              }

              bzero(a1, v18);
              if (v35 > 2)
              {
                if (v35 == 3)
                {
                  *a1 = v34;
                  a1[2] = BYTE2(v34);
                }

                else
                {
                  *a1 = v34;
                }
              }

              else if (v35 == 1)
              {
                *a1 = v34;
              }

              else
              {
                *a1 = v34;
              }
            }
          }
        }

        else
        {
          v32 = *(v14 + 56);

          v32((v24 + ((v23 + (&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v19, a2);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }
  }

  if (v25)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  if (v25)
  {
    v31 = ~v16 + a2;
    bzero(a1, v25);
    *a1 = v31;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *&a1[v25] = v30;
    }

    else
    {
      *&a1[v25] = v30;
    }
  }

  else if (v28)
  {
    a1[v25] = v30;
  }
}

unint64_t sub_24FE8D74C()
{
  result = qword_27F3A6270;
  if (!qword_27F3A6270)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F3A6270);
  }

  return result;
}

void sub_24FE8D79C()
{
  if (!qword_27F3A6278)
  {
    v0 = sub_24FEDDD74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6278);
    }
  }
}

uint64_t sub_24FE8D830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24FE92290(a3, v22 - v9);
  v11 = sub_24FEDE414();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24FE58B7C(v10, &qword_27F3A63B0, &qword_24FEE4E60);
  }

  else
  {
    sub_24FEDE404();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24FEDE3C4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24FEDE234() + 32;

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

      sub_24FE58B7C(a3, &qword_27F3A63B0, &qword_24FEE4E60);

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

  sub_24FE58B7C(a3, &qword_27F3A63B0, &qword_24FEE4E60);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_24FE8DACC(uint64_t a1)
{
  sub_24FEDDE54();

  JUMPOUT(0x25305A020);
}

uint64_t sub_24FE8DB0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v2 = *(a1 + 16);
  v102 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v101 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_24FEDD054();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarkdownButtonStyle(0);
  MEMORY[0x28223BE20](v6);
  v100 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a1;
  v97 = *(a1 - 8);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v8);
  v96 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B0, &qword_24FEE4DE8);
  v10 = sub_24FEDE3A4();
  v95 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  WitnessTable = swift_getWitnessTable();
  v94 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v124 = v10;
  *(&v124 + 1) = AssociatedTypeWitness;
  v125 = v12;
  v126 = WitnessTable;
  v127 = AssociatedConformanceWitness;
  sub_24FEDDEB4();
  v123 = sub_24FE91760();
  swift_getWitnessTable();
  sub_24FEDDDD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F8, &unk_24FEE4E10);
  sub_24FEDD254();
  sub_24FEDD4F4();
  sub_24FEDD254();
  v15 = swift_getWitnessTable();
  v16 = sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10, MEMORY[0x277CE0740]);
  v121 = v15;
  v122 = v16;
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v119 = v17;
  v120 = v18;
  swift_getWitnessTable();
  sub_24FEDD2A4();
  sub_24FEDD254();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6308, &qword_24FEE5410);
  v19 = sub_24FEDD254();
  v20 = sub_24FE91988();
  v21 = swift_getWitnessTable();
  v117 = v20;
  v118 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_24FE58928(&qword_27F3A6328, &qword_27F3A6308, &qword_24FEE5410, MEMORY[0x277CDF4F0]);
  v115 = v22;
  v116 = v23;
  v85 = v19;
  v84 = swift_getWitnessTable();
  v24 = sub_24FEDDD94();
  v87 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v76 = v75 - v25;
  v78 = v24;
  v26 = sub_24FEDD254();
  v89 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v80 = v75 - v27;
  v77 = swift_getWitnessTable();
  v113 = v77;
  v114 = MEMORY[0x277CDF690];
  v28 = swift_getWitnessTable();
  *&v124 = v26;
  *(&v124 + 1) = v6;
  v75[3] = v6;
  v125 = v28;
  v126 = v29;
  v75[2] = v28;
  v30 = v29;
  v75[1] = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v75[0] = v75 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6338, &qword_24FEE5420);
  v93 = OpaqueTypeMetadata2;
  v33 = sub_24FEDD254();
  v90 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v88 = v75 - v34;
  *&v124 = v26;
  *(&v124 + 1) = v6;
  v125 = v28;
  v126 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_24FE58928(&qword_27F3A6340, &qword_27F3A6338, &qword_24FEE5420, MEMORY[0x277CE0868]);
  v83 = OpaqueTypeConformance2;
  v111 = OpaqueTypeConformance2;
  v112 = v36;
  v37 = swift_getWitnessTable();
  v91 = v33;
  *&v124 = v33;
  *(&v124 + 1) = v37;
  v82 = v37;
  v86 = swift_getOpaqueTypeMetadata2();
  v38 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v79 = v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v40);
  v81 = v75 - v42;
  v43 = v97;
  v44 = v96;
  v45 = v99;
  v46 = v107;
  (*(v97 + 16))(v96, v99, v107, v41);
  v47 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v48 = swift_allocObject();
  v49 = v94;
  v50 = v95;
  *(v48 + 16) = v94;
  *(v48 + 24) = v50;
  v51 = v48 + v47;
  v52 = v75[0];
  (*(v43 + 32))(v51, v44, v46);
  v108 = v49;
  v109 = v50;
  v110 = v45;
  v53 = v76;
  sub_24FEDDD84();
  v54 = (v45 + *(v46 + 52));
  v55 = *v54;
  v56 = v54[1];
  *&v124 = v55;
  *(&v124 + 1) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6348, &qword_24FEE4E28);
  sub_24FEDDD44();
  sub_24FEDDF94();
  v57 = v80;
  v58 = v78;
  sub_24FEDDAE4();
  (*(v87 + 8))(v53, v58);
  *&v124 = 0x402A000000000000;
  sub_24FE85C8C();
  v59 = v100;
  sub_24FEDD0B4();
  v60 = v52;
  sub_24FEDDAC4();
  sub_24FE91AD8(v59, type metadata accessor for MarkdownButtonStyle);
  (*(v89 + 8))(v57, v26);
  swift_getKeyPath();
  v61 = sub_24FEDDE54();
  v62 = v101;
  MEMORY[0x25305A020](v61);
  (*(v50 + 32))(&v124, v49, v50);
  (*(v102 + 8))(v62, v49);
  LOBYTE(v28) = v127;
  v129 = v124;
  sub_24FE91B40(&v129);
  v128 = v125;
  sub_24FE91B94(&v128);
  if (v28)
  {
    v63 = v103;
    v64 = v104;
    v65 = v105;
    (*(v103 + 104))(v104, *MEMORY[0x277CDF3D0], v105);
  }

  else
  {
    v64 = v104;
    sub_24FE9A750(v104);
    v65 = v105;
    v63 = v103;
  }

  v66 = v88;
  v67 = v93;
  sub_24FEDDAD4();

  (*(v63 + 8))(v64, v65);
  (*(v92 + 8))(v60, v67);
  v68 = v79;
  v69 = v91;
  sub_24FEDDA54();
  (*(v90 + 8))(v66, v69);
  v70 = *(v38 + 16);
  v71 = v81;
  v72 = v86;
  v70(v81, v68, v86);
  v73 = *(v38 + 8);
  v73(v68, v72);
  v70(v106, v71, v72);
  return (v73)(v71, v72);
}

uint64_t sub_24FE8E91C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_24FEDE414();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, v1, a1);
  sub_24FEDE3E4();
  v10 = sub_24FEDE3D4();
  v11 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  *(v12 + 32) = *(a1 + 16);
  (*(v3 + 32))(v12 + v11, v5, a1);
  sub_24FE8D830(0, 0, v8, &unk_24FEE4E70, v12);
}

uint64_t sub_24FE8EB04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v22 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B0, &qword_24FEE4DE8);
  v32 = sub_24FEDE3A4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24FEDDEB4();
  v31 = sub_24FE91760();
  swift_getWitnessTable();
  sub_24FEDDDD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F8, &unk_24FEE4E10);
  sub_24FEDD254();
  sub_24FEDD4F4();
  sub_24FEDD254();
  v29 = swift_getWitnessTable();
  v30 = sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10, MEMORY[0x277CE0740]);
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24FEDD2A4();
  sub_24FEDD254();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6308, &qword_24FEE5410);
  v5 = sub_24FEDD254();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v13 = type metadata accessor for AnimatedCornerButton(0, a1, a2, v12);
  sub_24FE8EF2C(v13, v8);
  v14 = sub_24FE91988();
  v15 = swift_getWitnessTable();
  v25 = v14;
  v26 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_24FE58928(&qword_27F3A6328, &qword_27F3A6308, &qword_24FEE5410, MEMORY[0x277CDF4F0]);
  v23 = v16;
  v24 = v17;
  swift_getWitnessTable();
  v18 = *(v6 + 16);
  v18(v11, v8, v5);
  v19 = *(v6 + 8);
  v19(v8, v5);
  v18(v22, v11, v5);
  return (v19)(v11, v5);
}

uint64_t sub_24FE8EF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B0, &qword_24FEE4DE8);
  v3 = *(a1 + 16);
  v4 = sub_24FEDE3A4();
  v5 = *(a1 + 24);
  *&v49 = v4;
  *(&v49 + 1) = swift_getAssociatedTypeWitness();
  *&v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  *(&v50 + 1) = swift_getWitnessTable();
  *&v51 = swift_getAssociatedConformanceWitness();
  sub_24FEDDEB4();
  v48 = sub_24FE91760();
  swift_getWitnessTable();
  sub_24FEDDDD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F8, &unk_24FEE4E10);
  sub_24FEDD254();
  v6 = v5;
  v22 = v5;
  sub_24FEDD4F4();
  v7 = sub_24FEDD254();
  WitnessTable = swift_getWitnessTable();
  v47 = sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10, MEMORY[0x277CE0740]);
  v28 = MEMORY[0x277CDFAD8];
  v44 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v23 = v7;
  v24 = swift_getWitnessTable();
  v25 = sub_24FEDD2A4();
  v8 = sub_24FEDD254();
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = sub_24FEDDF34();
  v21 = v13;
  v14 = v30;
  sub_24FE8F3E8(v3, v6, &v49);
  v20 = v49;
  v15 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  sub_24FEDD0C4();
  sub_24FEDDF34();
  sub_24FEDD0F4();
  *&v38 = v12;
  *(&v38 + 1) = v21;
  v39 = v20;
  *&v40 = v15;
  sub_24FEDDF34();
  v33 = v3;
  v34 = v22;
  v35 = v14;
  v16 = sub_24FE91988();
  sub_24FEDDBA4();
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  v49 = v38;
  v50 = v39;
  sub_24FE58B7C(&v49, &qword_27F3A62B0, &qword_24FEE4DE8);
  v17 = swift_getWitnessTable();
  v36 = v16;
  v37 = v17;
  v18 = v26;
  swift_getWitnessTable();
  sub_24FE91BF4();
  sub_24FEDDBE4();
  return (*(v27 + 8))(v11, v18);
}

double sub_24FE8F3E8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v31 = a3;
  v30 = sub_24FEDD054();
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = *(a1 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnimatedCornerButton(0, a1, a2, v14);
  v33 = sub_24FEDDE54();
  MEMORY[0x25305A020]();
  v15 = *(a2 + 32);
  v36 = a2;
  v34 = v15;
  v15(&v37, a1, a2);
  v16 = *(v10 + 8);
  v35 = v10 + 8;
  v32 = v16;
  v16(v13, a1);
  v17 = v39;
  v51 = v37;
  sub_24FE91B40(&v51);
  v50 = v38;
  sub_24FE91B94(&v50);
  v18 = 0;
  v19 = 0;
  if ((v17 & 1) == 0)
  {
    sub_24FE9A750(v9);
    v20 = v29;
    v21 = v30;
    (*(v29 + 104))(v6, *MEMORY[0x277CDF3D0], v30);
    v22 = sub_24FEDD044();
    v23 = *(v20 + 8);
    v23(v6, v21);
    v23(v9, v21);
    if (v22 & 1) != 0 && (MEMORY[0x25305A020](v33), v34(&v40, a1, v36), v32(v13, a1), v24 = v42, v49 = v40, sub_24FE91B40(&v49), v48 = v41, sub_24FE91B94(&v48), (v24))
    {
      sub_24FEDDC54();
      v18 = sub_24FEDDC64();
    }

    else
    {
      v18 = 0;
    }

    sub_24FEDDC74();
    v19 = sub_24FEDDC64();
  }

  MEMORY[0x25305A020](v33);
  v34(&v43, a1, v36);
  v32(v13, a1);
  v25 = v45;
  v47 = v43;
  sub_24FE91B40(&v47);
  v46 = v44;
  sub_24FE91B94(&v46);
  if (v25)
  {
    sub_24FEDDC34();
    v26 = sub_24FEDDC64();
  }

  else
  {
    v26 = 0;
  }

  sub_24FE91EF4(v18, v19);

  sub_24FE91F34(v18, v19);

  v27 = v31;
  *v31 = v18;
  v27[1] = v19;
  v27[2] = v26;

  return sub_24FE91F34(v18, v19);
}

uint64_t sub_24FE8F898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v47 = a1;
  v46 = a4;
  v48 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24FEDE3A4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v58 = v7;
  *(&v58 + 1) = AssociatedTypeWitness;
  v59 = v9;
  v60 = WitnessTable;
  v61 = AssociatedConformanceWitness;
  sub_24FEDDEB4();
  v57 = sub_24FE91760();
  swift_getWitnessTable();
  v12 = sub_24FEDDDD4();
  v39 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F8, &unk_24FEE4E10);
  v15 = sub_24FEDD254();
  v45 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v40 = *(a3 + 16);
  v43 = sub_24FEDD4F4();
  v18 = sub_24FEDD254();
  v41 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v38 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v42 = &v37 - v21;
  sub_24FEDDF34();
  v49 = a2;
  v50 = a3;
  v51 = v47;
  sub_24FEDDDC4();
  type metadata accessor for AnimatedCornerButton(0, a2, a3, v22);
  v23 = sub_24FEDDE54();
  v24 = v44;
  MEMORY[0x25305A020]();
  (*(a3 + 32))(&v58, a2, a3);
  v25 = *(v48 + 8);
  v48 += 8;
  v37 = v25;
  v25(v24, a2);
  v26 = v59;
  v63 = v59;
  v62 = v58;
  sub_24FE91B40(&v62);
  v56 = v26;
  v27 = swift_getWitnessTable();
  sub_24FEDDB74();
  sub_24FE91B94(&v63);
  (*(v39 + 8))(v14, v12);
  sub_24FEDDF64();
  MEMORY[0x25305A020](v23);
  v28 = sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10, MEMORY[0x277CE0740]);
  v54 = v27;
  v55 = v28;
  v29 = swift_getWitnessTable();
  v30 = v38;
  sub_24FEDDBD4();

  v37(v24, a2);
  (*(v45 + 8))(v17, v15);
  v31 = swift_getWitnessTable();
  v52 = v29;
  v53 = v31;
  swift_getWitnessTable();
  v32 = v41;
  v33 = *(v41 + 16);
  v34 = v42;
  v33(v42, v30, v18);
  v35 = *(v32 + 8);
  v35(v30, v18);
  v33(v46, v34, v18);
  return (v35)(v34, v18);
}

uint64_t sub_24FE8FF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v36 = a1;
  v37 = a5;
  v35 = type metadata accessor for AnimatedCornerButton(0, a2, a3, a4);
  v7 = *(v35 - 8);
  v34 = *(v7 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = a3;
  v33 = v31 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = sub_24FEDE3A4();
  v31[5] = v10;
  v31[1] = *(a3 + 24);
  v11 = swift_getAssociatedTypeWitness();
  v31[4] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  v31[3] = v12;
  WitnessTable = swift_getWitnessTable();
  v31[2] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = v10;
  v40 = v11;
  v41 = v12;
  v42 = WitnessTable;
  v43 = AssociatedConformanceWitness;
  v15 = sub_24FEDDEB4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v31 - v20;
  sub_24FEDE634();
  swift_getAssociatedConformanceWitness();
  v39 = sub_24FEDE3B4();
  v22 = v33;
  v23 = v35;
  (*(v7 + 16))(v33, v36, v35);
  v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = a2;
  *(v25 + 24) = v26;
  (*(v7 + 32))(v25 + v24, v22, v23);
  v27 = sub_24FE91760();
  sub_24FEDDEA4();
  v38 = v27;
  swift_getWitnessTable();
  v28 = *(v16 + 16);
  v28(v21, v18, v15);
  v29 = *(v16 + 8);
  v29(v18, v15);
  v28(v37, v21, v15);
  return (v29)(v21, v15);
}

uint64_t sub_24FE90300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  v31 = v11 + 32;
  v32 = v12;
  (v12)(v34, v13, v11, v8);
  v40 = v34[2];
  sub_24FE91B94(&v40);
  v33 = sub_24FEDDCB4();
  v30 = a3;
  type metadata accessor for AnimatedCornerButton(0, a2, a3, v14);
  v15 = sub_24FEDDE54();
  MEMORY[0x25305A020]();
  v16 = sub_24FEDE194();
  v17 = *(v7 + 8);
  v17(v10, a2);
  v18 = 0.0;
  if (v16)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  MEMORY[0x25305A020](v15);
  v20 = sub_24FEDE194();
  v17(v10, a2);
  if (v20)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  sub_24FEDDF94();
  v23 = v22;
  v25 = v24;
  MEMORY[0x25305A020](v15);
  v26 = sub_24FEDE194();
  v17(v10, a2);
  if ((v26 & 1) == 0)
  {
    v18 = 12.0;
  }

  v32(&v35, a2, v30);
  v27 = v37;
  v39 = v35;
  sub_24FE91B40(&v39);
  v38 = v36;
  result = sub_24FE91B94(&v38);
  *a4 = v33;
  *(a4 + 8) = v19;
  *(a4 + 16) = v21;
  *(a4 + 24) = v21;
  *(a4 + 32) = v23;
  *(a4 + 40) = v25;
  *(a4 + 48) = v18;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = v27;
  return result;
}

uint64_t sub_24FE905CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_24FEDE694();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  sub_24FEDE3E4();
  v6[11] = sub_24FEDE3D4();
  v9 = sub_24FEDE3C4();
  v6[12] = v9;
  v6[13] = v8;

  return MEMORY[0x2822009F8](sub_24FE906C4, v9, v8);
}

uint64_t sub_24FE906C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  v6 = (v5 + *(type metadata accessor for AnimatedCornerButton(0, *(v4 + 48), *(v4 + 56), a4) + 52));
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6348, &qword_24FEE4E28);
  v9 = sub_24FEDDD44();
  if (*(v4 + 32) == 1.0)
  {
    v10 = *(v4 + 40);
    v18 = *(v4 + 48);
    MEMORY[0x25305A170](v9, 0.3974, 0.632, 0.0);
    v11 = swift_task_alloc();
    *(v11 + 16) = v18;
    *(v11 + 32) = v10;
    sub_24FEDD184();

    v12 = sub_24FEDE954();
    v14 = v13;
    sub_24FEDE894();
    v15 = swift_task_alloc();
    *(v4 + 112) = v15;
    *v15 = v4;
    v15[1] = sub_24FE908D0;

    return sub_24FE911B8(v12, v14, 0, 0, 1);
  }

  else
  {

    v17 = *(v4 + 8);

    return v17();
  }
}

uint64_t sub_24FE908D0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  v3 = v2[13];
  v4 = v2[12];
  if (v0)
  {
    v5 = sub_24FE90B54;
  }

  else
  {
    v5 = sub_24FE90A58;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24FE90A58()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 48);

  MEMORY[0x25305A170](v2, 0.3974, 0.632, 0.0);
  v3 = swift_task_alloc();
  *(v3 + 16) = v6;
  *(v3 + 32) = v1;
  sub_24FEDD184();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24FE90B54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24FE90BC0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for AnimatedCornerButton(0, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6348, &qword_24FEE4E28);
  return sub_24FEDDD54();
}

uint64_t sub_24FE90C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v44 = a2;
  v43 = sub_24FEDDE64();
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24FEDDE04();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE8, &qword_24FEE42D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6280, &qword_24FEE4DA8);
  MEMORY[0x28223BE20](v36);
  v12 = &v35 - v11;
  v13 = sub_24FEDDEE4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  v39 = sub_24FEDDF04();
  v20 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDDED4();
  sub_24FEDDEC4();
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_24FEDDEF4();
  v23(v19, v13);
  sub_24FEDD674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  v24 = sub_24FEDD7F4();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  sub_24FEDD834();
  sub_24FE58B7C(v10, &qword_27F3A5DE8, &qword_24FEE42D0);
  sub_24FEDD824();
  v25 = sub_24FEDD864();

  KeyPath = swift_getKeyPath();
  v27 = &v12[*(v36 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_24FEDDDF4();
  v28 = v38;
  sub_24FEDDDE4();
  v29 = v41;
  v30 = *(v40 + 8);
  v30(v5, v41);
  v31 = *MEMORY[0x277CE0128];
  v32 = sub_24FEDD4E4();
  v33 = v42;
  (*(*(v32 - 8) + 104))(v42, v31, v32);
  sub_24FE91678();
  sub_24FE9234C(&qword_27F3A62A8, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  sub_24FEDDAF4();
  sub_24FE91AD8(v33, MEMORY[0x277CE1260]);
  v30(v28, v29);
  sub_24FE58B7C(v12, &qword_27F3A6280, &qword_24FEE4DA8);
  return (*(v20 + 8))(v22, v39);
}

uint64_t sub_24FE911B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24FEDE684();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24FE912B8, 0, 0);
}

uint64_t sub_24FE912B8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24FEDE694();
  v5 = sub_24FE9234C(&qword_27F3A6358, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24FEDE874();
  sub_24FE9234C(&unk_27F3A6360, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24FEDE6A4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24FE91448;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24FE91448()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24FE91604, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24FE91604()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24FE91678()
{
  result = qword_27F3A6288;
  if (!qword_27F3A6288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6280, &qword_24FEE4DA8);
    sub_24FE9234C(&qword_27F3A6290, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_24FE58928(&qword_27F3A6298, &qword_27F3A62A0, &qword_24FEE4DE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6288);
  }

  return result;
}

unint64_t sub_24FE91760()
{
  result = qword_27F3A62C0;
  if (!qword_27F3A62C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
    sub_24FE917EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A62C0);
  }

  return result;
}

unint64_t sub_24FE917EC()
{
  result = qword_27F3A62C8;
  if (!qword_27F3A62C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62D0, &qword_24FEE4DF8);
    sub_24FE91878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A62C8);
  }

  return result;
}

unint64_t sub_24FE91878()
{
  result = qword_27F3A62D8;
  if (!qword_27F3A62D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62E0, &qword_24FEE4E00);
    sub_24FE91904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A62D8);
  }

  return result;
}

unint64_t sub_24FE91904()
{
  result = qword_27F3A62E8;
  if (!qword_27F3A62E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F0, &qword_24FEE4E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A62E8);
  }

  return result;
}

unint64_t sub_24FE91988()
{
  result = qword_27F3A6310;
  if (!qword_27F3A6310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B0, &qword_24FEE4DE8);
    sub_24FE58928(&qword_27F3A6318, &qword_27F3A6320, &qword_24FEE4E20, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6310);
  }

  return result;
}

uint64_t sub_24FE91A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AnimatedCornerButton(0, *(v4 + 16), *(v4 + 24), a4);
  (*(v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(v5 + 36)))();
  return sub_24FE8E91C(v5);
}

uint64_t sub_24FE91AD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24FE91BF4()
{
  result = qword_27F3A6350;
  if (!qword_27F3A6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6350);
  }

  return result;
}

uint64_t objectdestroyTm_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AnimatedCornerButton(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = v4 + v8;

  v11 = sub_24FEDDE54();
  (*(*(v5 - 8) + 8))(v4 + v8 + *(v11 + 32), v5);

  v12 = v6[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24FEDD054();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
  }

  v14 = v6[11];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v16 = *(*(v15 - 8) + 8);
  v16(v10 + v14, v15);
  v16(v10 + v6[12], v15);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_24FE91E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for AnimatedCornerButton(0, v6, v7, a2);

  return sub_24FE90300(a1, v6, v7, a3);
}

uint64_t sub_24FE91EF4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

double sub_24FE91F34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24FE91F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AnimatedCornerButton(0, v5, *(v4 + 40), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  swift_unknownObjectRelease();
  v10 = v4 + v8;

  v11 = sub_24FEDDE54();
  (*(*(v5 - 8) + 8))(v4 + v8 + *(v11 + 32), v5);

  v12 = v6[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24FEDD054();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
  }

  v14 = v6[11];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v16 = *(*(v15 - 8) + 8);
  v16(v10 + v14, v15);
  v16(v10 + v6[12], v15);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_24FE92184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for AnimatedCornerButton(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_24FE7DF78;

  return sub_24FE905CC(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_24FE92290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE9234C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE923C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6280, &qword_24FEE4DA8);
  sub_24FEDDE64();
  sub_24FE91678();
  sub_24FE9234C(&qword_27F3A62A8, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FE92478(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B0, &qword_24FEE4DE8);
  sub_24FEDE3A4();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_24FEDDEB4();
  sub_24FE91760();
  swift_getWitnessTable();
  sub_24FEDDDD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F8, &unk_24FEE4E10);
  sub_24FEDD254();
  sub_24FEDD4F4();
  sub_24FEDD254();
  swift_getWitnessTable();
  sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10, MEMORY[0x277CE0740]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24FEDD2A4();
  sub_24FEDD254();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6308, &qword_24FEE5410);
  sub_24FEDD254();
  sub_24FE91988();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24FE58928(&qword_27F3A6328, &qword_27F3A6308, &qword_24FEE5410, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  sub_24FEDDD94();
  sub_24FEDD254();
  type metadata accessor for MarkdownButtonStyle(255);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6338, &qword_24FEE5420);
  sub_24FEDD254();
  swift_getOpaqueTypeConformance2();
  sub_24FE58928(&qword_27F3A6340, &qword_27F3A6338, &qword_24FEE5420, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t CopyButton.init(contentsToCopy:isOnGreyBackground:)(uint64_t a1, char a2)
{
  sub_24FEDDD34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
  sub_24FEDDD54();
  return a2 & 1;
}

uint64_t sub_24FE929B8(char a1)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a1 < 0)
  {
    v5 = 0x2D64656B63656863;
  }

  else
  {
    v5 = 0x2D656C6469;
  }

  v7 = v5;
  MEMORY[0x25305A470](v3, v4);

  return v7;
}

void sub_24FE92A4C(uint64_t a2@<X8>)
{
  v4 = *v2;
  sub_24FEDDC74();
  v5 = sub_24FEDDC64();

  v6 = 0x72616D6B63656863;
  if (v4 >= 0)
  {
    v6 = 0x642E6E6F2E636F64;
  }

  v7 = 0xE90000000000006BLL;
  if (v4 >= 0)
  {
    v7 = 0xEF6C6C69662E636FLL;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 33) = v4 & 1;
}

uint64_t sub_24FE92AFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FE929B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24FE92B28(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

double CopyButton.body.getter@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
  sub_24FEDDD64();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = v15;
  *(a5 + 8) = v16;
  *(a5 + 16) = v17;
  *(a5 + 24) = sub_24FE92F44;
  *(a5 + 32) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6378, &qword_24FEE4E88);
  v12 = *(v11 + 40);
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  swift_storeEnumTagMultiPayload();
  sub_24FE85C8C();

  sub_24FEDD0B4();
  sub_24FEDD0B4();
  v13 = (a5 + *(v11 + 52));
  sub_24FEDDD34();
  result = 13.0;
  *v13 = 0x402A000000000000;
  v13[1] = v16;
  return result;
}

double sub_24FE92D2C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  sub_24FE93490(a4);
  LOBYTE(v20) = a2;
  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
  sub_24FEDDD44();
  if ((v23 & 0x80000000) == 0)
  {
    v23 = a2;
    v24 = a3;
    sub_24FEDDD64();
    v12 = v20;
    v13 = v21;
    v14 = v22;
    v15 = sub_24FEDE414();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_24FEDE3E4();

    v16 = sub_24FEDE3D4();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    *(v17 + 32) = v12;
    *(v17 + 40) = v13;
    *(v17 + 48) = v14;
    *(v17 + 49) = a1 & 1 | 0x80;
    *(v17 + 50) = 1;
    *(v17 + 51) = a1 & 1;
    sub_24FE8D830(0, 0, v10, &unk_24FEE5050, v17);
  }

  return result;
}

uint64_t sub_24FE92F04()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy32_8_0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24FE92F94(uint64_t a1, int a2)
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

uint64_t sub_24FE92FDC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CopyButton.CopyButtonState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CopyButton.CopyButtonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24FE93264(void *a1)
{
  a1[1] = sub_24FE9329C();
  a1[2] = sub_24FE932F0();
  result = sub_24FE93344();
  a1[3] = result;
  return result;
}

unint64_t sub_24FE9329C()
{
  result = qword_27F3A6398;
  if (!qword_27F3A6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6398);
  }

  return result;
}

unint64_t sub_24FE932F0()
{
  result = qword_27F3A63A0;
  if (!qword_27F3A63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A63A0);
  }

  return result;
}

unint64_t sub_24FE93344()
{
  result = qword_27F3A63A8;
  if (!qword_27F3A63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A63A8);
  }

  return result;
}

uint64_t sub_24FE93398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5, uint64_t a6)
{
  v7 = a6;
  v11 = *a4;
  v12 = a4[1];
  v13 = *a5;
  v14 = *(a4 + 16);
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_24FE7DF78;

  return sub_24FE93A28(a1, a2, a3, v11, v12, v14, v13, v7);
}

void sub_24FE93490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_24FEDC774();
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v31 = MEMORY[0x277D84F90];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + 32;
    v13 = (v8 + 56);
    v25 = (v8 + 32);
    v14 = (v8 + 16);
    v15 = (v8 + 8);
    v27 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_24FE72D1C(v12, v30);
      sub_24FE72D1C(v30, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C0, &qword_24FEE4530);
      v16 = swift_dynamicCast();
      v17 = *v13;
      if (v16)
      {
        break;
      }

      v17(v4, 1, 1, v5);
      sub_24FE939C0(v4);
      sub_24FE72D1C(v30, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C8, &unk_24FEE5060);
      if (swift_dynamicCast())
      {
        v20 = v28;
        sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
        v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithObject_];
        swift_unknownObjectRelease();
LABEL_9:
        v21 = __swift_destroy_boxed_opaque_existential_1(v30);
        if (v19)
        {
          MEMORY[0x25305A500](v21);
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_24FEDE344();
          }

          sub_24FEDE374();
          v27 = v31;
        }

        goto LABEL_4;
      }

      __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_4:
      v12 += 40;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    v17(v4, 0, 1, v5);
    (*v25)(v10, v4, v5);
    sub_24FE62F4C(0, &qword_27F3A63D8, 0x277CCA898);
    (*v14)(v26, v10, v5);
    v18 = sub_24FEDE524();
    v19 = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];

    (*v15)(v10, v5);
    goto LABEL_9;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_14:
  v22 = [objc_opt_self() generalPasteboard];
  sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
  v23 = sub_24FEDE314();

  [v22 setItemProviders:v23 localOnly:0 expirationDate:0];
}

uint64_t sub_24FE938A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 52, 7);
}

uint64_t sub_24FE938EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 50);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24FE7DF78;

  return sub_24FE93398(a1, v4, v5, (v1 + 32), (v1 + 49), v6);
}

uint64_t sub_24FE939C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE93A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 38) = v17;
  *(v8 + 37) = a8;
  *(v8 + 36) = a7;
  v12 = sub_24FEDE694();
  *(v8 + 40) = v12;
  *(v8 + 48) = *(v12 - 8);
  *(v8 + 56) = swift_task_alloc();
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  sub_24FEDE3E4();
  *(v8 + 72) = sub_24FEDE3D4();
  v14 = sub_24FEDE3C4();
  *(v8 + 80) = v14;
  *(v8 + 88) = v13;

  return MEMORY[0x2822009F8](sub_24FE93B54, v14, v13);
}

uint64_t sub_24FE93B54(uint64_t a1)
{
  v2 = sub_24FEDE954();
  v4 = v3;
  sub_24FEDE894();
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *v5 = v1;
  v5[1] = sub_24FE93C34;

  return sub_24FE911B8(v2, v4, 0, 0, 1);
}

uint64_t sub_24FE93C34()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v2[13] = v0;

  v6 = *(v4 + 8);
  v2[14] = v6;
  v2[15] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[11];
  v8 = v2[10];
  if (v0)
  {
    v9 = sub_24FE94094;
  }

  else
  {
    v9 = sub_24FE93DE0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24FE93DE0()
{
  *(v0 + 33) = *(v0 + 36);
  *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6448, &unk_24FEE5340);
  sub_24FEDDE34();
  sub_24FEDE894();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_24FE93EEC;

  return sub_24FE911B8(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24FE93EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  *(*v1 + 144) = v0;

  v3(v4, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_24FE941D4;
  }

  else
  {
    v8 = sub_24FE94108;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24FE94094()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24FE94108()
{
  v1 = *(v0 + 37);

  if (v1 != 1)
  {
LABEL_7:
    *(v0 + 34) = *(v0 + 38);
    sub_24FEDDE34();
    goto LABEL_8;
  }

  v2 = *(v0 + 36);
  MEMORY[0x25305A020](*(v0 + 128));
  v3 = *(v0 + 35);
  v4 = *(v0 + 36);
  if (v3 < 0)
  {
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    if ((v3 ^ v2))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24FE941D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24FE94248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 38) = v17;
  *(v8 + 37) = a8;
  *(v8 + 36) = a7;
  v12 = sub_24FEDE694();
  *(v8 + 40) = v12;
  *(v8 + 48) = *(v12 - 8);
  *(v8 + 56) = swift_task_alloc();
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  sub_24FEDE3E4();
  *(v8 + 72) = sub_24FEDE3D4();
  v14 = sub_24FEDE3C4();
  *(v8 + 80) = v14;
  *(v8 + 88) = v13;

  return MEMORY[0x2822009F8](sub_24FE94374, v14, v13);
}

uint64_t sub_24FE94374(uint64_t a1)
{
  v2 = sub_24FEDE954();
  v4 = v3;
  sub_24FEDE894();
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *v5 = v1;
  v5[1] = sub_24FE94454;

  return sub_24FE911B8(v2, v4, 0, 0, 1);
}

uint64_t sub_24FE94454()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v2[13] = v0;

  v6 = *(v4 + 8);
  v2[14] = v6;
  v2[15] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[11];
  v8 = v2[10];
  if (v0)
  {
    v9 = sub_24FE96050;
  }

  else
  {
    v9 = sub_24FE94600;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24FE94600()
{
  *(v0 + 33) = *(v0 + 36);
  *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6440, &qword_24FEE5330);
  sub_24FEDDE34();
  sub_24FEDE894();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_24FE9470C;

  return sub_24FE911B8(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24FE9470C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  *(*v1 + 144) = v0;

  v3(v4, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_24FE96054;
  }

  else
  {
    v8 = sub_24FE948B4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24FE948B4()
{
  v1 = *(v0 + 37);

  if (v1 == 1)
  {
    MEMORY[0x25305A020](*(v0 + 128));
    v2 = 0x73736563637573;
    if (*(v0 + 35) != 1)
    {
      v2 = 0x6572756C696166;
    }

    if (*(v0 + 35))
    {
      v3 = v2;
    }

    else
    {
      v3 = 1701602409;
    }

    if (*(v0 + 35))
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    v5 = 0x73736563637573;
    if (*(v0 + 36) != 1)
    {
      v5 = 0x6572756C696166;
    }

    if (*(v0 + 36))
    {
      v6 = v5;
    }

    else
    {
      v6 = 1701602409;
    }

    if (*(v0 + 36))
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v3 == v6 && v4 == v7)
    {
    }

    else
    {
      v8 = sub_24FEDE844();

      if ((v8 & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  *(v0 + 34) = *(v0 + 38);
  sub_24FEDDE34();
LABEL_23:

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24FE94A30()
{
  v0 = sub_24FEDCF54();
  __swift_allocate_value_buffer(v0, qword_27F3A63E0);
  __swift_project_value_buffer(v0, qword_27F3A63E0);
  return sub_24FEDCF44();
}

uint64_t sub_24FE94AB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73736563637573;
  if (v2 != 1)
  {
    v3 = 0x6572756C696166;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1701602409;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x73736563637573;
  if (*a2 != 1)
  {
    v6 = 0x6572756C696166;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1701602409;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24FEDE844();
  }

  return v9 & 1;
}

uint64_t sub_24FE94BB0()
{
  sub_24FEDE904();
  sub_24FEDE254();

  return sub_24FEDE924();
}

uint64_t sub_24FE94C4C(uint64_t a1)
{
  sub_24FEDE254();
}

uint64_t sub_24FE94CD4(uint64_t a1)
{
  sub_24FEDE904();
  sub_24FEDE254();

  return sub_24FEDE924();
}

unint64_t sub_24FE94D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24FE95D80(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24FE94D9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x73736563637573;
  if (v2 != 1)
  {
    v4 = 0x6572756C696166;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701602409;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_24FE94DF4@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = 0xE90000000000006BLL;
  v6 = 0x72616D6B63656863;
  if (v4 != 1)
  {
    v6 = 0xD000000000000018;
    v5 = 0x800000024FEE9BE0;
  }

  if (*v2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x800000024FEE9C00;
  }

  if (v4)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = -1.0;
  }

  result = sub_24FEDDC54();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = result;
  *(a2 + 24) = v9;
  *(a2 + 32) = 1;
  return result;
}

double SaveImageButton.body.getter@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63F8, &qword_24FEE5070);
  sub_24FEDDD64();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = v15;
  *(a5 + 8) = v16;
  *(a5 + 16) = v17;
  *(a5 + 24) = sub_24FE951DC;
  *(a5 + 32) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6400, &qword_24FEE5078);
  v12 = *(v11 + 40);
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  swift_storeEnumTagMultiPayload();

  sub_24FE62C94(a3, a4);
  sub_24FE85C8C();
  sub_24FEDD0B4();
  sub_24FEDD0B4();
  v13 = (a5 + *(v11 + 52));
  sub_24FEDDD34();
  result = 13.0;
  *v13 = 0x402A000000000000;
  v13[1] = v16;
  return result;
}

void sub_24FE950F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63F8, &qword_24FEE5070);
  sub_24FEDDD44();
  if (!v9)
  {

    goto LABEL_5;
  }

  v8 = sub_24FEDE844();

  if (v8)
  {
LABEL_5:
    sub_24FE95210(v7, a2, a3, a4);
  }
}

void sub_24FE95210(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = [objc_opt_self() sharedPhotoLibrary];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  v17 = sub_24FE95DCC;
  v18 = v9;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_24FE5CE20;
  v16 = &block_descriptor_0;
  v10 = _Block_copy(&v13);

  sub_24FE62C94(a3, a4);

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  v17 = sub_24FE95E34;
  v18 = v11;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_24FEC8F40;
  v16 = &block_descriptor_15;
  v12 = _Block_copy(&v13);

  sub_24FE62C94(a3, a4);

  [v8 performChanges:v10 completionHandler:v12];
  _Block_release(v12);
  _Block_release(v10);
}

void sub_24FE953F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [objc_opt_self() creationRequestForAsset];
  v5 = sub_24FEDCA04();
  [v4 addResourceWithType:1 data:v5 options:0];
}

void sub_24FE95490(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  if (a1)
  {
    LOBYTE(v31) = v7;
    v32 = a4;
    v34[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63F8, &qword_24FEE5070);
    sub_24FEDDD54();
  }

  else
  {
    v34[0] = v7;
    v35 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63F8, &qword_24FEE5070);
    sub_24FEDDD64();
    v13 = v31;
    v14 = v32;
    v15 = v33;
    v16 = sub_24FEDE414();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    sub_24FEDE3E4();

    v17 = sub_24FEDE3D4();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    *(v18 + 48) = v15;
    *(v18 + 49) = 258;
    *(v18 + 51) = 0;
    sub_24FE8D830(0, 0, v12, &unk_24FEE5318, v18);

    sub_24FE957E8(v7, a4);
    if (qword_27F3A5B70 != -1)
    {
      swift_once();
    }

    v20 = sub_24FEDCF54();
    __swift_project_value_buffer(v20, qword_27F3A63E0);
    v21 = a2;
    v22 = sub_24FEDCF34();
    v23 = sub_24FEDE4C4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v26 = sub_24FEDE8A4();
        v28 = v27;
      }

      else
      {
        v28 = 0xED0000726F727265;
        v26 = 0x206E776F6E6B6E55;
      }

      v29 = sub_24FECC0A4(v26, v28, &v31);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_24FE50000, v22, v23, "Failed to save image to album: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x25305B320](v25, -1, -1);
      MEMORY[0x25305B320](v24, -1, -1);
    }
  }
}

double sub_24FE957E8(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  v17 = a1;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63F8, &qword_24FEE5070);
  sub_24FEDDD64();
  v7 = v15[1];
  v8 = v15[2];
  v9 = v16;
  v10 = sub_24FEDE414();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_24FEDE3E4();

  v11 = sub_24FEDE3D4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  *(v12 + 48) = v9;
  *(v12 + 49) = 258;
  *(v12 + 51) = 0;
  sub_24FE8D830(0, 0, v6, &unk_24FEE5320, v12);

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24FE959A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24FE959FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24FE95AB8()
{
  result = qword_27F3A6410;
  if (!qword_27F3A6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6410);
  }

  return result;
}

unint64_t sub_24FE95B50(void *a1)
{
  a1[1] = sub_24FE95B88();
  a1[2] = sub_24FE95BDC();
  result = sub_24FE95C30();
  a1[3] = result;
  return result;
}

unint64_t sub_24FE95B88()
{
  result = qword_27F3A6428;
  if (!qword_27F3A6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6428);
  }

  return result;
}

unint64_t sub_24FE95BDC()
{
  result = qword_27F3A6430;
  if (!qword_27F3A6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6430);
  }

  return result;
}

unint64_t sub_24FE95C30()
{
  result = qword_27F3A6438;
  if (!qword_27F3A6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6438);
  }

  return result;
}

uint64_t sub_24FE95C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char a6)
{
  v11 = *a4;
  v12 = *(a4 + 8);
  v13 = *a5;
  v14 = *(a4 + 16);
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_24FE7DF78;

  return sub_24FE94248(a1, a2, a3, v11, v12, v14, v13, a6);
}

unint64_t sub_24FE95D80(uint64_t a1, uint64_t a2)
{
  v2 = sub_24FEDE6F4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_5()
{

  sub_24FE62CFC(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24FE95E48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 50);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24FE96048;

  return sub_24FE95C88(a1, v4, v5, v1 + 32, (v1 + 49), v6);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 52, 7);
}

uint64_t sub_24FE95F64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 50);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24FE7DF78;

  return sub_24FE95C88(a1, v4, v5, v1 + 32, (v1 + 49), v6);
}

uint64_t ShareButton.init(viewModel:contentsToShare:shareSheetMetadata:isCodeBlock:isTable:)@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v68 = a4;
  v69 = a3;
  v62 = a1;
  v63 = a2;
  v65 = a6;
  v6 = sub_24FEDCE94();
  v67 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F60, &unk_24FEE45B0);
  MEMORY[0x28223BE20](v64);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v18);
  v66 = &v53 - v19;
  v20 = type metadata accessor for ShareButton(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v22 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  swift_storeEnumTagMultiPayload();
  v73 = 0x403C000000000000;
  sub_24FE85C8C();
  sub_24FEDD0B4();
  v23 = v20[6];
  sub_24FEDDC74();
  v24 = sub_24FEDDC64();

  v57 = v24;
  v58 = v23;
  *(v22 + v23) = v24;
  v56 = v22 + v20[7];
  *v56 = 0;
  v61 = v22 + v20[8];
  *v61 = 0;
  v25 = (v22 + v20[9]);
  sub_24FEDE134();
  sub_24FE9B974(&qword_27F3A5C08, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v25 = sub_24FEDD2C4();
  v25[1] = v26;
  v27 = (v22 + v20[10]);
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for LaTeXMathTracker(0);
  sub_24FE9B974(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker, &protocol conformance descriptor for LaTeXMathTracker);

  *v27 = sub_24FEDD1B4();
  v27[1] = v28;
  v29 = v22 + v20[11];
  v70 = 0;
  sub_24FEDDD34();
  v30 = v72;
  *v29 = v71;
  *(v29 + 1) = v30;
  v31 = v63;
  *(v22 + v20[12]) = v62;
  *(v22 + v20[13]) = v31;
  v32 = v69;
  sub_24FE58B14(v69, v22 + v20[14], &qword_27F3A5F70, &qword_24FEE45C0);
  *(v22 + v20[15]) = v68 & 1;
  sub_24FE58B14(v32, v12, &qword_27F3A5F70, &qword_24FEE45C0);
  v33 = type metadata accessor for ShareSheetMetadata(0);
  v34 = *(v33 - 8);
  v62 = *(v34 + 48);
  v55 = v34 + 48;
  v35 = v62(v12, 1, v33);
  v63 = v33;
  if (v35 == 1)
  {
    sub_24FE58B7C(v12, &qword_27F3A5F70, &qword_24FEE45C0);
    v36 = 1;
    v37 = v66;
    v38 = v67;
  }

  else
  {
    v37 = v66;
    v38 = v67;
    (*(v67 + 16))(v66, &v12[*(v33 + 24)], v6);
    sub_24FE9BA24(v12, type metadata accessor for ShareSheetMetadata);
    v36 = 0;
  }

  v39 = *(v38 + 56);
  v39(v37, v36, 1, v6);
  sub_24FEDCE64();
  v39(v17, 0, 1, v6);
  v40 = *(v64 + 48);
  sub_24FE58B14(v37, v9, &qword_27F3A5F68, &qword_24FEE5350);
  sub_24FE58B14(v17, &v9[v40], &qword_27F3A5F68, &qword_24FEE5350);
  v41 = *(v38 + 48);
  if (v41(v9, 1, v6) == 1)
  {
    sub_24FE58B7C(v17, &qword_27F3A5F68, &qword_24FEE5350);
    sub_24FE58B7C(v37, &qword_27F3A5F68, &qword_24FEE5350);
    if (v41(&v9[v40], 1, v6) == 1)
    {
      sub_24FE58B7C(v9, &qword_27F3A5F68, &qword_24FEE5350);
LABEL_17:
      v51 = sub_24FEDDC54();

      *(v22 + v58) = v51;
      v46 = v56;
      v44 = v69;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v42 = v60;
  sub_24FE58B14(v9, v60, &qword_27F3A5F68, &qword_24FEE5350);
  if (v41(&v9[v40], 1, v6) == 1)
  {
    sub_24FE58B7C(v17, &qword_27F3A5F68, &qword_24FEE5350);
    sub_24FE58B7C(v66, &qword_27F3A5F68, &qword_24FEE5350);
    (*(v67 + 8))(v42, v6);
LABEL_11:
    sub_24FE58B7C(v9, &qword_27F3A5F60, &unk_24FEE45B0);
    v43 = v68;
    goto LABEL_12;
  }

  v47 = v67;
  v48 = v54;
  (*(v67 + 32))(v54, &v9[v40], v6);
  sub_24FE9B974(&qword_27F3A5FC0, MEMORY[0x277D85578], MEMORY[0x277D85590]);
  v49 = sub_24FEDE194();
  v50 = *(v47 + 8);
  v50(v48, v6);
  sub_24FE58B7C(v17, &qword_27F3A5F68, &qword_24FEE5350);
  sub_24FE58B7C(v66, &qword_27F3A5F68, &qword_24FEE5350);
  v50(v42, v6);
  sub_24FE58B7C(v9, &qword_27F3A5F68, &qword_24FEE5350);
  v43 = v68;
  if (v49)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v43)
  {
    v44 = v69;
  }

  else
  {
    v44 = v69;
    if ((v59 & 1) == 0)
    {
      v45 = v62(v69, 1, v63);
      v46 = v61;
      if (v45 == 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v46 = v61;
LABEL_20:
  *v46 = 1;
LABEL_21:
  sub_24FE9B9BC(v22, v65, type metadata accessor for ShareButton);
  sub_24FE58B7C(v44, &qword_27F3A5F70, &qword_24FEE45C0);
  return sub_24FE9BA24(v22, type metadata accessor for ShareButton);
}

uint64_t type metadata accessor for ShareButton(uint64_t a1)
{
  result = qword_27F3A6540;
  if (!qword_27F3A6540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE96984(uint64_t a1)
{
  v2 = sub_24FEDD054();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24FEDD314();
}

uint64_t sub_24FE96A50()
{
  v0 = sub_24FEDCF54();
  __swift_allocate_value_buffer(v0, qword_27F3A6450);
  __swift_project_value_buffer(v0, qword_27F3A6450);
  return sub_24FEDCF44();
}

uint64_t property wrapper backing initializer of ShareButton.laTeXMathTracker(uint64_t a1)
{
  type metadata accessor for LaTeXMathTracker(0);
  sub_24FE9B974(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker, &protocol conformance descriptor for LaTeXMathTracker);

  return sub_24FEDD1B4();
}

uint64_t ShareButton.body.getter@<X0>(void *a1@<X8>)
{
  v144 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6468, &qword_24FEE5390);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v107 - v2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6470, &qword_24FEE5398);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v107 - v3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6478, &qword_24FEE53A0);
  MEMORY[0x28223BE20](v110);
  v117 = &v107 - v4;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6480, &qword_24FEE53A8);
  MEMORY[0x28223BE20](v141);
  v116 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v118 = &v107 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  MEMORY[0x28223BE20](v8 - 8);
  v123 = &v107 - v9;
  v10 = sub_24FEDC774();
  v134 = *(v10 - 8);
  v135 = v10;
  MEMORY[0x28223BE20](v10);
  v119 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6488, &qword_24FEE53B8);
  MEMORY[0x28223BE20](v139);
  v140 = &v107 - v12;
  v13 = sub_24FEDD054();
  v136 = *(v13 - 8);
  v137 = v13;
  MEMORY[0x28223BE20](v13);
  v108 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v128 = &v107 - v16;
  v131 = type metadata accessor for MarkdownButtonStyle(0);
  MEMORY[0x28223BE20](v131);
  v18 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for ShareButton(0);
  v143 = *(v145 - 1);
  v19 = *(v143 + 64);
  MEMORY[0x28223BE20](v145);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6490, &qword_24FEE53C0);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v21 = &v107 - v20;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6498, &qword_24FEE53C8);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v142 = &v107 - v22;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64A0, &qword_24FEE53D0);
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v120 = &v107 - v23;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64A8, &qword_24FEE53D8);
  MEMORY[0x28223BE20](v121);
  v126 = &v107 - v24;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B0, &qword_24FEE53E0);
  MEMORY[0x28223BE20](v138);
  v125 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v127 = &v107 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v107 - v29;
  v31 = sub_24FEDC9E4();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v1;
  sub_24FE981A0(v30);
  if ((*(v32 + 48))(v30, 1, v31) != 1)
  {
    v134 = v32;
    v68 = *(v32 + 32);
    v107 = v34;
    v135 = v31;
    v68(v34, v30, v31);
    sub_24FE9B9BC(v1, &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareButton);
    v69 = (*(v143 + 80) + 16) & ~*(v143 + 80);
    v70 = swift_allocObject();
    v71 = sub_24FE9BB14(&v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v70 + v69, type metadata accessor for ShareButton);
    MEMORY[0x28223BE20](v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64C8, &qword_24FEE53F8);
    sub_24FE9A548();
    sub_24FEDDD84();
    *&v148 = 0x402A000000000000;
    sub_24FE85C8C();
    sub_24FEDD0B4();
    v72 = sub_24FE58928(&qword_27F3A64F8, &qword_27F3A6490, &qword_24FEE53C0, MEMORY[0x277CDF028]);
    v74 = v142;
    v75 = v130;
    v76 = v131;
    sub_24FEDDAC4();
    sub_24FE9BA24(v18, type metadata accessor for MarkdownButtonStyle);
    (*(v129 + 8))(v21, v75);
    v77 = v145;
    v78 = v1 + v145[11];
    v79 = *v78;
    v80 = *(v78 + 8);
    v146 = v79;
    v147 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6500, &qword_24FEE5418);
    sub_24FEDDD64();
    *&v148 = v75;
    *(&v148 + 1) = v76;
    *&v149 = v72;
    *(&v149 + 1) = v73;
    swift_getOpaqueTypeConformance2();
    v81 = v133;
    v82 = v120;
    v83 = v107;
    sub_24FEDDB44();

    (*(v132 + 8))(v74, v81);
    KeyPath = swift_getKeyPath();
    v85 = v83;
    if (*(v1 + v77[7]) == 1)
    {
      v87 = v136;
      v86 = v137;
      v88 = v128;
      (*(v136 + 104))(v128, *MEMORY[0x277CDF3D0], v137);
    }

    else
    {
      v88 = v128;
      sub_24FE9A750(v128);
      v87 = v136;
      v86 = v137;
    }

    v89 = v126;
    v90 = &v126[*(v121 + 36)];
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6338, &qword_24FEE5420);
    (*(v87 + 32))(v90 + *(v91 + 28), v88, v86);
    *v90 = KeyPath;
    (*(v122 + 32))(v89, v82, v124);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    sub_24FEDD0C4();
    sub_24FEDD0C4();
    sub_24FEDDF34();
    sub_24FEDD0F4();
    v92 = v125;
    sub_24FE6315C(v89, v125, &qword_27F3A64A8, &qword_24FEE53D8);
    v93 = (v92 + *(v138 + 36));
    v94 = v149;
    *v93 = v148;
    v93[1] = v94;
    v93[2] = v150;
    v95 = v127;
    sub_24FE6315C(v92, v127, &qword_27F3A64B0, &qword_24FEE53E0);
    sub_24FE58B14(v95, v140, &qword_27F3A64B0, &qword_24FEE53E0);
    swift_storeEnumTagMultiPayload();
    sub_24FE9A950(&qword_27F3A6518, &qword_27F3A64B0, &qword_24FEE53E0, sub_24FE9A9D4);
    sub_24FE9A950(&qword_27F3A6528, &qword_27F3A6480, &qword_24FEE53A8, sub_24FE9AB88);
    v96 = v144;
    sub_24FEDD5F4();
    sub_24FE58B7C(v95, &qword_27F3A64B0, &qword_24FEE53E0);
    (*(v134 + 8))(v85, v135);
    goto LABEL_14;
  }

  v36 = v143;
  v37 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v21;
  sub_24FE58B7C(v30, &qword_27F3A64B8, &qword_24FEE63A0);
  v38 = *(v1 + v145[13]);
  if (*(v38 + 16))
  {
    v39 = v1;
    v40 = v145;
    sub_24FE72D1C(v38 + 32, &v148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C0, &qword_24FEE4530);
    v41 = v123;
    v42 = v135;
    v43 = swift_dynamicCast();
    v44 = v134;
    (*(v134 + 56))(v41, v43 ^ 1u, 1, v42);
    if ((*(v44 + 48))(v41, 1, v42) != 1)
    {
      (*(v44 + 32))(v119, v41, v42);
      sub_24FE9B9BC(v35, v37, type metadata accessor for ShareButton);
      v45 = (*(v36 + 80) + 16) & ~*(v36 + 80);
      v46 = swift_allocObject();
      v47 = sub_24FE9BB14(v37, v46 + v45, type metadata accessor for ShareButton);
      MEMORY[0x28223BE20](v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64C8, &qword_24FEE53F8);
      sub_24FE9A548();
      v48 = v128;
      sub_24FEDDD84();
      *&v148 = 0x402A000000000000;
      sub_24FE85C8C();
      sub_24FEDD0B4();
      v49 = sub_24FE58928(&qword_27F3A64F8, &qword_27F3A6490, &qword_24FEE53C0, MEMORY[0x277CDF028]);
      v50 = v40;
      v52 = v130;
      v53 = v131;
      sub_24FEDDAC4();
      sub_24FE9BA24(v18, type metadata accessor for MarkdownButtonStyle);
      (*(v129 + 8))(v48, v52);
      v54 = v39 + v50[11];
      v55 = *v54;
      v56 = *(v54 + 8);
      v146 = v55;
      v147 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6500, &qword_24FEE5418);
      sub_24FEDDD64();
      sub_24FE992B0();
      v58 = v57;
      *(&v149 + 1) = sub_24FE9A6B8();
      *&v148 = v58;
      v59 = v109;
      sub_24FEDD0E4();
      *&v148 = v52;
      *(&v148 + 1) = v53;
      *&v149 = v49;
      *(&v149 + 1) = v51;
      swift_getOpaqueTypeConformance2();
      sub_24FE9B974(&qword_27F3A6510, MEMORY[0x277CC8C40], MEMORY[0x277CC4AD8]);
      v60 = v135;
      v61 = v133;
      v62 = v113;
      v63 = v142;
      sub_24FEDDB34();

      (*(v111 + 8))(v59, v112);
      (*(v132 + 8))(v63, v61);
      v64 = swift_getKeyPath();
      if (*(v39 + v145[7]) == 1)
      {
        v66 = v136;
        v65 = v137;
        v67 = v108;
        (*(v136 + 104))(v108, *MEMORY[0x277CDF3D0], v137);
      }

      else
      {
        v67 = v108;
        sub_24FE9A750(v108);
        v66 = v136;
        v65 = v137;
      }

      v98 = v117;
      v99 = &v117[*(v110 + 36)];
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6338, &qword_24FEE5420);
      (*(v66 + 32))(v99 + *(v100 + 28), v67, v65);
      *v99 = v64;
      (*(v114 + 32))(v98, v62, v115);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
      sub_24FEDD0C4();
      sub_24FEDD0C4();
      sub_24FEDDF34();
      sub_24FEDD0F4();
      v101 = v116;
      sub_24FE6315C(v98, v116, &qword_27F3A6478, &qword_24FEE53A0);
      v102 = (v101 + *(v141 + 36));
      v103 = v149;
      *v102 = v148;
      v102[1] = v103;
      v102[2] = v150;
      v104 = v118;
      sub_24FE6315C(v101, v118, &qword_27F3A6480, &qword_24FEE53A8);
      sub_24FE58B14(v104, v140, &qword_27F3A6480, &qword_24FEE53A8);
      swift_storeEnumTagMultiPayload();
      sub_24FE9A950(&qword_27F3A6518, &qword_27F3A64B0, &qword_24FEE53E0, sub_24FE9A9D4);
      sub_24FE9A950(&qword_27F3A6528, &qword_27F3A6480, &qword_24FEE53A8, sub_24FE9AB88);
      v96 = v144;
      sub_24FEDD5F4();
      sub_24FE58B7C(v104, &qword_27F3A6480, &qword_24FEE53A8);
      (*(v134 + 8))(v119, v60);
LABEL_14:
      v97 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v41 = v123;
    (*(v134 + 56))(v123, 1, 1, v135);
  }

  sub_24FE58B7C(v41, &qword_27F3A63B8, &qword_24FEE53B0);
  v97 = 1;
  v96 = v144;
LABEL_15:
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64C0, &unk_24FEE53E8);
  return (*(*(v105 - 8) + 56))(v96, v97, 1, v105);
}

uint64_t sub_24FE981A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDC9E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v43 - v7;
  MEMORY[0x28223BE20](v8);
  v44 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for ShareSheetMetadata(0);
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v47 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - v16;
  v18 = type metadata accessor for ShareButton(0);
  v19 = *(v18 + 52);
  v50 = v1;
  v20 = *&v1[v19];
  if (*(v20 + 16))
  {
    sub_24FE72D1C(v20 + 32, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C0, &qword_24FEE4530);
    v21 = swift_dynamicCast();
    v22 = *(v4 + 56);
    v22(v17, v21 ^ 1u, 1, v3);
    if ((*(v4 + 48))(v17, 1, v3) != 1)
    {
      (*(v4 + 32))(a1, v17, v3);
      return (v22)(a1, 0, 1, v3);
    }

    v49 = v4;
  }

  else
  {
    v49 = v4;
    v22 = *(v4 + 56);
    v22(v17, 1, 1, v3);
  }

  v23 = v3;
  sub_24FE58B7C(v17, &qword_27F3A64B8, &qword_24FEE63A0);
  if (*(v20 + 16) && (sub_24FE72D1C(v20 + 32, &v53), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C0, &qword_24FEE4530), (swift_dynamicCast() & 1) != 0))
  {
    v24 = v51;
    v25 = v52;
    sub_24FE58B14(v50 + *(v18 + 56), v12, &qword_27F3A5F70, &qword_24FEE45C0);
    if ((*(v46 + 48))(v12, 1, v13) != 1)
    {
      v50 = v22;
      v46 = a1;
      sub_24FE9BB14(v12, v47, type metadata accessor for ShareSheetMetadata);
      v35 = v25;
      v36 = [objc_opt_self() defaultManager];
      v37 = [v36 temporaryDirectory];

      v38 = v48;
      sub_24FEDC9B4();

      v39 = v44;
      sub_24FEDC984();
      v40 = v49;
      (*(v49 + 8))(v38, v3);
      v43 = v24;
      v45 = v35;
      v41 = v3;
      sub_24FEDCA24();
      v42 = v46;
      (*(v40 + 32))(v46, v39, v41);
      v50(v42, 0, 1, v41);
      sub_24FE62CFC(v43, v45);
      return sub_24FE9BA24(v47, type metadata accessor for ShareSheetMetadata);
    }

    v26 = a1;
    sub_24FE62CFC(v24, v25);
    sub_24FE58B7C(v12, &qword_27F3A5F70, &qword_24FEE45C0);
  }

  else
  {
    v26 = a1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v27 = v49;
  if (v53 != 1)
  {
    return (v22)(v26, 1, 1, v23);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v28 = v54;
  if (v54 >> 60 == 15)
  {
    return (v22)(v26, 1, 1, v23);
  }

  v50 = v22;
  v30 = v53;
  v31 = [objc_opt_self() defaultManager];
  v32 = [v31 temporaryDirectory];

  v33 = v48;
  sub_24FEDC9B4();

  v34 = v45;
  sub_24FEDC984();
  (*(v27 + 8))(v33, v23);
  sub_24FEDCA24();
  (*(v27 + 32))(v26, v34, v23);
  v50(v26, 0, 1, v23);
  return sub_24FE62CE8(v30, v28);
}

void sub_24FE98BF0()
{
  v1 = type metadata accessor for ShareButton(0);
  v2 = v1 - 8;
  v30[0] = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v30[1] = v3;
  v32 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6588, &qword_24FEE54A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - v5;
  v7 = sub_24FEDE014();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24FEDCAA4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 44);
  v31 = v0;
  v16 = *(v0 + v15);
  if (v16)
  {
    v17 = v16;
    sub_24FEDE0E4();

    (*(v12 + 104))(v14, *MEMORY[0x277D63760], v11);
    (*(v8 + 104))(v10, *MEMORY[0x277D63BE0], v7);
    sub_24FEDDFE4();
    v18 = sub_24FEDDFF4();
    (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
    v19 = objc_allocWithZone(sub_24FEDE084());
    v20 = sub_24FEDE074();
    v21 = v17;
    sub_24FEDE114();

    if (qword_27F3A5B78 != -1)
    {
      swift_once();
    }

    v22 = sub_24FEDCF54();
    __swift_project_value_buffer(v22, qword_27F3A6450);
    v23 = sub_24FEDCF34();
    v24 = sub_24FEDE4B4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24FE50000, v23, v24, "RFInteractionPerformed: SHARE_BUTTON_TAPPED", v25, 2u);
      MEMORY[0x25305B320](v25, -1, -1);
    }

    v26 = v32;
    sub_24FE9B9BC(v31, v32, type metadata accessor for ShareButton);
    v27 = (*(v30[0] + 80) + 16) & ~*(v30[0] + 80);
    v28 = swift_allocObject();
    sub_24FE9BB14(v26, v28 + v27, type metadata accessor for ShareButton);
    v29 = v21;
    sub_24FEDE104();
  }

  else
  {
    sub_24FEDE134();
    sub_24FE9B974(&qword_27F3A5C08, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_24FEDD2B4();
    __break(1u);
  }
}

double sub_24FE990D4@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24FEDDF34();
  v7 = v6;
  sub_24FE996B8(v2, &v35);
  v22 = v35;
  v8 = v36;
  v9 = type metadata accessor for ShareButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  sub_24FEDD0C4();
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v10 = sub_24FEDDF34();
  v12 = v11;
  v13 = sub_24FEDDF34();
  v15 = v14;
  v16 = sub_24FEDDCB4();
  v17 = *(v3 + *(v9 + 24));
  *&v27 = v13;
  *(&v27 + 1) = v15;
  *&v28[8] = xmmword_24FEE3D70;
  *v28 = v16;
  *&v28[24] = v17;
  *&v29 = v10;
  *(&v29 + 1) = v12;
  v30[0] = v13;
  v35 = v27;
  v36 = *v28;
  v37 = *&v28[16];
  v38 = v29;
  v30[1] = v15;
  v30[2] = v16;
  v31 = xmmword_24FEE3D70;
  v32 = v17;
  v33 = v10;
  v34 = v12;

  sub_24FE58B14(&v27, v23, &qword_27F3A64F0, &qword_24FEE5408);
  sub_24FE58B7C(v30, &qword_27F3A64F0, &qword_24FEE5408);
  *(a2 + 16) = v22;
  v18 = v25;
  *(a2 + 40) = v24;
  *(a2 + 56) = v18;
  *(a2 + 72) = v26;
  v19 = v36;
  *(a2 + 88) = v35;
  *(a2 + 104) = v19;
  result = *&v37;
  v21 = v38;
  *(a2 + 120) = v37;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 32) = v8;
  *(a2 + 136) = v21;
  *(a2 + 152) = 256;
  return result;
}

void sub_24FE992B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23[-v2 - 8];
  v4 = sub_24FEDC5A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-v9 - 8];
  v11 = sub_24FEDC774();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v16 = *(v0 + *(type metadata accessor for ShareButton(0) + 52));
  if (!*(v16 + 16))
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_6;
  }

  sub_24FE72D1C(v16 + 32, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C0, &qword_24FEE4530);
  v17 = swift_dynamicCast();
  (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_6:
    sub_24FE58B7C(v10, &qword_27F3A63B8, &qword_24FEE53B0);
    return;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_24FEDC574();
  sub_24FEAE034(v3);
  (*(v5 + 8))(v7, v4);
  sub_24FEDE224();
  v18 = sub_24FEDE1C4();

  [v15 setTitle_];

  v19 = sub_24FEDE1C4();
  v20 = [objc_opt_self() systemImageNamed_];

  if (v20)
  {
    v21 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage_];

    [v15 setIcon_];
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    __break(1u);
  }
}

double sub_24FE996B8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24FEDD054();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ShareButton(0);
  if (*(a1 + *(v11 + 28)))
  {
    sub_24FEDDC34();
    v12 = sub_24FEDDC64();

    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = v11;
    sub_24FE9A750(v10);
    (*(v5 + 104))(v7, *MEMORY[0x277CDF3D0], v4);
    v16 = sub_24FEDD044();
    v17 = *(v5 + 8);
    v17(v7, v4);
    v17(v10, v4);
    if ((v16 & 1) != 0 && *(a1 + *(v15 + 32)) == 1)
    {
      sub_24FEDDC54();
      v13 = sub_24FEDDC64();
    }

    else
    {
      v13 = 0;
    }

    sub_24FEDDC74();
    v14 = sub_24FEDDC64();

    v12 = 0;
  }

  sub_24FE91EF4(v13, v14);

  sub_24FE91F34(v13, v14);

  *a2 = v13;
  a2[1] = v14;
  a2[2] = v12;

  return sub_24FE91F34(v13, v14);
}

void sub_24FE99910()
{
  v1 = type metadata accessor for DocumentView(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6590, &qword_24FEE54B0);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6598, &qword_24FEE54B8);
  MEMORY[0x28223BE20](v47);
  v52 = &v47 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A65A0, &qword_24FEE54C0);
  MEMORY[0x28223BE20](v48);
  v51 = &v47 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A65A8, &qword_24FEE54C8);
  MEMORY[0x28223BE20](v50);
  v10 = &v47 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A65B0, &qword_24FEE54D0);
  MEMORY[0x28223BE20](v49);
  v53 = &v47 - v11;
  v12 = type metadata accessor for ShareButton(0);
  v13 = *(v0 + *(v12 + 40) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v13;
  sub_24FEDCFE4();

  if (v56 == 1 && *(v0 + *(v12 + 48)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24FEDCFE4();

    if (*(&v56 + 1) >> 60 != 15)
    {
      sub_24FE62CE8(v56, *(&v56 + 1));

      return;
    }

    v14 = qword_27F3A5B88;

    if (v14 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    type metadata accessor for LaTeXMathTracker(0);
    sub_24FE9B974(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker, &protocol conformance descriptor for LaTeXMathTracker);

    *(v3 + 2) = sub_24FEDD1B4();
    *(v3 + 3) = v15;
    *&v56 = 0x4040800000000000;
    sub_24FE85C8C();
    sub_24FEDD0B4();
    type metadata accessor for DocumentViewModel(0);
    sub_24FE9B974(&qword_27F3A5DF0, type metadata accessor for DocumentViewModel, "!W22 p");

    *v3 = sub_24FEDD1B4();
    *(v3 + 1) = v16;
    *(v3 + 6) = 0;
    *(v3 + 7) = 0;
    *(v3 + 4) = MEMORY[0x277D84F90];
    v3[40] = 0;
    sub_24FE82880();

    v17 = sub_24FEDD744();
    sub_24FE9B9BC(v3, v6, type metadata accessor for DocumentView);
    v18 = &v6[*(v4 + 36)];
    *v18 = v17;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    v18[40] = 1;
    sub_24FE9BA24(v3, type metadata accessor for DocumentView);
    sub_24FEDDF34();
    sub_24FEDD294();
    v19 = v52;
    sub_24FE6315C(v6, v52, &qword_27F3A6590, &qword_24FEE54B0);
    v20 = (v19 + *(v47 + 36));
    v21 = v61;
    v20[4] = v60;
    v20[5] = v21;
    v20[6] = v62;
    v22 = v57;
    *v20 = v56;
    v20[1] = v22;
    v23 = v59;
    v20[2] = v58;
    v20[3] = v23;
    KeyPath = swift_getKeyPath();
    v25 = v51;
    v26 = &v51[*(v48 + 36)];
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6338, &qword_24FEE5420) + 28);
    v28 = *MEMORY[0x277CDF3D0];
    v29 = sub_24FEDD054();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = KeyPath;
    sub_24FE6315C(v19, v25, &qword_27F3A6598, &qword_24FEE54B8);
    v30 = sub_24FEDDC54();
    LOBYTE(v28) = sub_24FEDD744();
    sub_24FE6315C(v25, v10, &qword_27F3A65A0, &qword_24FEE54C0);
    v31 = &v10[*(v50 + 36)];
    *v31 = v30;
    v31[8] = v28;
    v32 = sub_24FEDD264();
    LOBYTE(v28) = sub_24FEDD744();
    v33 = v53;
    sub_24FE6315C(v10, v53, &qword_27F3A65A8, &qword_24FEE54C8);
    v34 = v33 + *(v49 + 36);
    *v34 = v32;
    *(v34 + 8) = v28;
    v35 = sub_24FE9A210();
    if (v35)
    {
      v36 = v35;

      v37 = UIImagePNGRepresentation(v36);
      if (v37)
      {
        v38 = v37;
        v39 = sub_24FEDCA14();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xF000000000000000;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v55[0] = v39;
      v55[1] = v41;
      sub_24FE62C80(v39, v41);
      sub_24FEDCFF4();

      sub_24FE62CE8(v39, v41);
    }

    else
    {
      if (qword_27F3A5B78 != -1)
      {
        swift_once();
      }

      v42 = sub_24FEDCF54();
      __swift_project_value_buffer(v42, qword_27F3A6450);
      v43 = sub_24FEDCF34();
      v44 = sub_24FEDE4C4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v55[0] = v46;
        *v45 = 136315394;
        *(v45 + 4) = sub_24FECC0A4(0x7475426572616853, 0xEB000000006E6F74, v55);
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_24FECC0A4(0xD000000000000019, 0x800000024FEE9CE0, v55);
        _os_log_impl(&dword_24FE50000, v43, v44, "%s %s could not render snapshot of DocumentView", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25305B320](v46, -1, -1);
        MEMORY[0x25305B320](v45, -1, -1);

LABEL_18:
        sub_24FE58B7C(v33, &qword_27F3A65B0, &qword_24FEE54D0);
        return;
      }
    }

    goto LABEL_18;
  }
}

id sub_24FE9A210()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A65B0, &qword_24FEE54D0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_24FE58B14(v0, aBlock - v2, &qword_27F3A65B0, &qword_24FEE54D0);
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A65B8, &unk_24FEE5568));
  isEscapingClosureAtFileLocation = sub_24FEDD534();
  v5 = [isEscapingClosureAtFileLocation view];
  if (!v5)
  {
    goto LABEL_5;
  }

  result = [isEscapingClosureAtFileLocation view];
  if (result)
  {
    v7 = result;
    [result intrinsicContentSize];
    v9 = v8;
    v11 = v10;

    v12 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    [v5 setBounds_];
    v13 = swift_allocObject();
    *(v13 + 16) = v5;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_24FE9BABC;
    *(v14 + 24) = v13;
    aBlock[4] = sub_24FE9BAD4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24FE9A704;
    aBlock[3] = &block_descriptor_1;
    v15 = _Block_copy(aBlock);
    v16 = v5;

    v5 = [v12 imageWithActions_];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v5;
    }

    __break(1u);
LABEL_5:

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE9A4C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    sub_24FE99910();
    type metadata accessor for ShareButton(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6500, &qword_24FEE5418);
    return sub_24FEDDD54();
  }

  return result;
}

unint64_t sub_24FE9A548()
{
  result = qword_27F3A64D0;
  if (!qword_27F3A64D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A64C8, &qword_24FEE53F8);
    sub_24FE9A600();
    sub_24FE58928(&qword_27F3A6328, &qword_27F3A6308, &qword_24FEE5410, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A64D0);
  }

  return result;
}

unint64_t sub_24FE9A600()
{
  result = qword_27F3A64D8;
  if (!qword_27F3A64D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A64E0, &qword_24FEE5400);
    sub_24FE91988();
    sub_24FE58928(&qword_27F3A64E8, &qword_27F3A64F0, &qword_24FEE5408, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A64D8);
  }

  return result;
}

unint64_t sub_24FE9A6B8()
{
  result = qword_27F3A6508;
  if (!qword_27F3A6508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3A6508);
  }

  return result;
}

void sub_24FE9A704(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_24FE9A750@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24FEDD3E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24FE58B14(v2, &v14 - v9, &qword_27F3A5C00, &unk_24FEE3E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24FEDD054();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24FEDE4D4();
    v13 = sub_24FEDD714();
    sub_24FEDCF14();

    sub_24FEDD3D4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24FE9A950(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24FE9A9D4()
{
  result = qword_27F3A6520;
  if (!qword_27F3A6520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A64A8, &qword_24FEE53D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6498, &qword_24FEE53C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6490, &qword_24FEE53C0);
    type metadata accessor for MarkdownButtonStyle(255);
    sub_24FE58928(&qword_27F3A64F8, &qword_27F3A6490, &qword_24FEE53C0, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24FE58928(&qword_27F3A6340, &qword_27F3A6338, &qword_24FEE5420, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6520);
  }

  return result;
}

unint64_t sub_24FE9AB88()
{
  result = qword_27F3A6530;
  if (!qword_27F3A6530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6478, &qword_24FEE53A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6498, &qword_24FEE53C8);
    sub_24FEDC774();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6490, &qword_24FEE53C0);
    type metadata accessor for MarkdownButtonStyle(255);
    sub_24FE58928(&qword_27F3A64F8, &qword_27F3A6490, &qword_24FEE53C0, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    sub_24FE9B974(&qword_27F3A6510, MEMORY[0x277CC8C40], MEMORY[0x277CC4AD8]);
    swift_getOpaqueTypeConformance2();
    sub_24FE58928(&qword_27F3A6340, &qword_27F3A6338, &qword_24FEE5420, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6530);
  }

  return result;
}

double sub_24FE9AE00@<D0>(_OWORD *a2@<X8>)
{
  sub_24FE990D4(v8);
  v3 = v8[7];
  a2[6] = v8[6];
  a2[7] = v3;
  a2[8] = v9[0];
  *(a2 + 138) = *(v9 + 10);
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

uint64_t sub_24FE9AE94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[14];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24FE9B040(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_24FE9B1D8(uint64_t a1)
{
  sub_24FE9B4D8(319, &qword_27F3A6090, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24FE86B40(319);
    if (v2 <= 0x3F)
    {
      sub_24FE9B390(319);
      if (v3 <= 0x3F)
      {
        sub_24FE86A48(319);
        if (v4 <= 0x3F)
        {
          sub_24FE9B424();
          if (v5 <= 0x3F)
          {
            sub_24FE9B4D8(319, &qword_27F3A6560, type metadata accessor for DocumentViewModel, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24FE9B474(319);
              if (v7 <= 0x3F)
              {
                sub_24FE9B4D8(319, &qword_27F3A6568, type metadata accessor for ShareSheetMetadata, MEMORY[0x277D83D88]);
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

void sub_24FE9B390(uint64_t a1)
{
  if (!qword_27F3A6550)
  {
    sub_24FEDE134();
    sub_24FE9B974(&qword_27F3A5C08, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v1 = sub_24FEDD2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A6550);
    }
  }
}

void sub_24FE9B424()
{
  if (!qword_27F3A6558)
  {
    v0 = sub_24FEDDD74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6558);
    }
  }
}

void sub_24FE9B474(uint64_t a1)
{
  if (!qword_27F3A5EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A63C0, &qword_24FEE4530);
    v1 = sub_24FEDE3A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A5EB8);
    }
  }
}

void sub_24FE9B4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24FE9B540()
{
  result = qword_27F3A6570;
  if (!qword_27F3A6570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6578, &qword_24FEE54A0);
    sub_24FE9B5C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6570);
  }

  return result;
}

unint64_t sub_24FE9B5C4()
{
  result = qword_27F3A6580;
  if (!qword_27F3A6580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A64C0, &unk_24FEE53E8);
    sub_24FE9A950(&qword_27F3A6518, &qword_27F3A64B0, &qword_24FEE53E0, sub_24FE9A9D4);
    sub_24FE9A950(&qword_27F3A6528, &qword_27F3A6480, &qword_24FEE53A8, sub_24FE9AB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6580);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for ShareButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24FEDD054();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v5 + v1[14];
  v10 = type metadata accessor for ShareSheetMetadata(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 24);
    v12 = sub_24FEDCE94();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE9B8F4(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24FE9A4C0(a1, v4);
}

uint64_t sub_24FE9B974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE9B9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE9BA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24FE9BA84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24FE9BB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t DocumentCodeBlockElement.init(id:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24FEDCA64();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for DocumentCodeBlockElement(0) + 20);
  v8 = sub_24FEDC774();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t type metadata accessor for DocumentCodeBlockElement(uint64_t a1)
{
  result = qword_27F3A65F8;
  if (!qword_27F3A65F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentCodeBlockElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentCodeBlockElement.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentCodeBlockElement(0) + 20);
  v4 = sub_24FEDC774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentCodeBlockElement.makeView()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentCodeBlockElement(0) + 20);
  v4 = sub_24FEDC774();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = type metadata accessor for DocumentCodeBlockView(0);
  __asm { FMOV            V0.2D, #20.0 }

  *(a1 + *(v5 + 20)) = _Q0;
  *(a1 + *(v5 + 24)) = 0x4030000000000000;
  sub_24FE85C8C();
  sub_24FEDD0B4();
  return sub_24FEDD0B4();
}

uint64_t DocumentCodeBlockElement.append(_:)@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for DocumentCodeBlockElement(0);
  a2[4] = sub_24FE9C1D8(&qword_27F3A65C8, type metadata accessor for DocumentCodeBlockElement, &protocol conformance descriptor for DocumentCodeBlockElement);
  __swift_allocate_boxed_opaque_existential_1(a2);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  return sub_24FEDC614();
}

uint64_t static DocumentCodeBlockElement.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DocumentCodeBlockElement(0);

  return sub_24FEDC684();
}

uint64_t sub_24FE9BF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24FEDC774();
  (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
  v6 = type metadata accessor for DocumentCodeBlockView(0);
  __asm { FMOV            V0.2D, #20.0 }

  *(a2 + *(v6 + 20)) = _Q0;
  *(a2 + *(v6 + 24)) = 0x4030000000000000;
  sub_24FE85C8C();
  sub_24FEDD0B4();
  return sub_24FEDD0B4();
}

uint64_t sub_24FE9C060(uint64_t a1)
{
  result = sub_24FE9C1D8(&qword_27F3A65D0, type metadata accessor for DocumentCodeBlockElement, &protocol conformance descriptor for DocumentCodeBlockElement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24FE9C10C(uint64_t a1)
{
  *(a1 + 8) = sub_24FE9C1D8(&qword_27F3A65E0, type metadata accessor for DocumentCodeBlockElement, &protocol conformance descriptor for DocumentCodeBlockElement);
  result = sub_24FE9C1D8(&unk_27F3A65E8, type metadata accessor for DocumentCodeBlockElement, &protocol conformance descriptor for DocumentCodeBlockElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FE9C1D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE9C234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24FEDC774();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FE9C338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24FEDCA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24FEDC774();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

double DocumentCodeBlockView.topPadding(previousElement:)(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return *(v1 + *(type metadata accessor for DocumentCodeBlockView(0) + 24));
  }

  else
  {
    return 0.0;
  }
}

uint64_t type metadata accessor for DocumentCodeBlockView(uint64_t a1)
{
  result = qword_27F3A6628;
  if (!qword_27F3A6628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentCodeBlockView.body.getter@<X0>(char *a2@<X8>)
{
  *a2 = sub_24FEDDF14();
  *(a2 + 1) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6610, &qword_24FEE5660);
  sub_24FE9C5C4(v2, &a2[*(v5 + 44)]);
  v6 = sub_24FEDD734();
  type metadata accessor for DocumentCodeBlockView(0);
  sub_24FEDD014();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6618, &qword_24FEE5668);
  v16 = &a2[*(result + 36)];
  *v16 = v6;
  *(v16 + 1) = v8;
  *(v16 + 2) = v10;
  *(v16 + 3) = v12;
  *(v16 + 4) = v14;
  v16[40] = 0;
  return result;
}

uint64_t sub_24FE9C5C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v117 = a2;
  v3 = sub_24FEDC774();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6658, &qword_24FEE5720) - 8;
  MEMORY[0x28223BE20](v100);
  v98 = &v95 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6660, &qword_24FEE5728);
  MEMORY[0x28223BE20](v101);
  v103 = &v95 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6668, &qword_24FEE5730);
  MEMORY[0x28223BE20](v102);
  v105 = &v95 - v9;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6670, &qword_24FEE5738);
  MEMORY[0x28223BE20](v104);
  v107 = &v95 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6678, &unk_24FEE5740);
  MEMORY[0x28223BE20](v106);
  v116 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v110 = &v95 - v13;
  MEMORY[0x28223BE20](v14);
  v115 = &v95 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6680, &qword_24FEE8A80);
  MEMORY[0x28223BE20](v16);
  v18 = &v95 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6688, &unk_24FEE5750);
  v111 = *(v19 - 8);
  v112 = v19;
  MEMORY[0x28223BE20](v19);
  v109 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v95 - v22;
  v24 = type metadata accessor for DocumentCodeBlockView(0);
  v96 = a1;
  v97 = v24;
  v25 = (a1 + *(v24 + 20));
  v26 = *v25;
  v27 = v25[1];
  v28 = *(sub_24FEDD284() + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_24FEDD4E4();
  (*(*(v30 - 8) + 104))(&v18[v28], v29, v30);
  *v18 = v26;
  *(v18 + 1) = v27;
  *&v18[*(v16 + 36)] = sub_24FEDD644();
  sub_24FE9D4EC();
  v108 = v23;
  sub_24FEDDA54();
  sub_24FE58B7C(v18, &qword_27F3A6680, &qword_24FEE8A80);
  v31 = *(v4 + 16);
  v113 = v4 + 16;
  v114 = v3;
  v99 = v31;
  v31(v6, a1, v3);
  v32 = sub_24FEDD9E4();
  v34 = v33;
  LOBYTE(a1) = v35;
  type metadata accessor for MarkdownFont();
  swift_initStaticObject();
  sub_24FE82000(v134);
  v146 = v134[0];

  sub_24FE8A8D0(&v146);
  v145 = v134[1];
  sub_24FE8A8D0(&v145);
  v144 = v134[2];
  sub_24FE8A8D0(&v144);
  v143 = v134[3];
  sub_24FE8A8D0(&v143);
  v142 = v134[4];
  sub_24FE8A8D0(&v142);

  v36 = sub_24FEDD994();
  v38 = v37;
  LOBYTE(v28) = v39;
  v41 = v40;

  v42 = a1 & 1;
  v43 = v96;
  sub_24FE56B94(v32, v34, v42);

  *&v135 = v36;
  *(&v135 + 1) = v38;
  LOBYTE(v28) = v28 & 1;
  LOBYTE(v136) = v28;
  *(&v136 + 1) = v41;
  v44 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  v45 = v98;
  sub_24FEDD0C4();
  sub_24FEDDB84();
  sub_24FE56B94(v36, v38, v28);

  *(v45 + *(v100 + 44)) = sub_24FEDD634();
  sub_24FEDD0C4();
  v46 = *(v43 + *(v44 + 24));
  sub_24FEDDF34();
  sub_24FEDD294();
  v47 = v103;
  sub_24FE6315C(v45, v103, &qword_27F3A6658, &qword_24FEE5720);
  v48 = (v47 + *(v101 + 36));
  v49 = v138;
  v50 = v140;
  v48[4] = v139;
  v48[5] = v50;
  v48[6] = v141;
  v51 = v136;
  *v48 = v135;
  v48[1] = v51;
  v48[2] = v137;
  v48[3] = v49;
  LOBYTE(v18) = sub_24FEDD754();
  sub_24FEDD014();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v47;
  v61 = v105;
  sub_24FE6315C(v60, v105, &qword_27F3A6660, &qword_24FEE5728);
  v62 = v61 + *(v102 + 36);
  *v62 = v18;
  *(v62 + 8) = v53;
  *(v62 + 16) = v55;
  *(v62 + 24) = v57;
  *(v62 + 32) = v59;
  *(v62 + 40) = 0;
  LOBYTE(v18) = sub_24FEDD734();
  sub_24FEDD014();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v107;
  sub_24FE6315C(v61, v107, &qword_27F3A6668, &qword_24FEE5730);
  v72 = v71 + *(v104 + 36);
  *v72 = v18;
  *(v72 + 8) = v64;
  *(v72 + 16) = v66;
  *(v72 + 24) = v68;
  *(v72 + 32) = v70;
  *(v72 + 40) = 0;
  v73 = sub_24FEDDF24();
  v75 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66A8, &unk_24FEE5760);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_24FEE0740;
  v77 = v114;
  *(v76 + 56) = v114;
  *(v76 + 64) = &protocol witness table for AttributedString;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v76 + 32));
  v99(boxed_opaque_existential_1, v43, v77);
  LOBYTE(v121) = 0;
  sub_24FEDDD34();
  LOBYTE(v43) = v125;
  v79 = v127;
  LOBYTE(v121) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
  sub_24FEDDD54();
  LOBYTE(v121) = 1;
  *(&v121 + 1) = *v120;
  DWORD1(v121) = *&v120[3];
  BYTE8(v121) = v43;
  *(&v121 + 9) = *v119;
  HIDWORD(v121) = *&v119[3];
  *&v122 = v79;
  *(&v122 + 1) = v76;
  *&v123 = -v46;
  *(&v123 + 1) = v46;
  *&v124 = v73;
  *(&v124 + 1) = v75;
  v80 = v110;
  sub_24FE6315C(v71, v110, &qword_27F3A6670, &qword_24FEE5738);
  v81 = (v80 + *(v106 + 36));
  v82 = v122;
  *v81 = v121;
  v81[1] = v82;
  v83 = v124;
  v81[2] = v123;
  v81[3] = v83;
  v125 = 1;
  *v126 = *v120;
  *&v126[3] = *&v120[3];
  LOBYTE(v127) = v43;
  *(&v127 + 1) = *v119;
  HIDWORD(v127) = *&v119[3];
  v128 = v79;
  v129 = v76;
  v130 = -v46;
  v131 = v46;
  v132 = v73;
  v133 = v75;
  sub_24FE9D5A4(&v121, &v118);
  sub_24FE58B7C(&v125, &qword_27F3A66B0, &qword_24FEE5770);
  v84 = v115;
  sub_24FE6315C(v80, v115, &qword_27F3A6678, &unk_24FEE5740);
  v86 = v111;
  v85 = v112;
  v87 = *(v111 + 16);
  v89 = v108;
  v88 = v109;
  v87(v109, v108, v112);
  v90 = v116;
  sub_24FE9D614(v84, v116);
  v91 = v117;
  v87(v117, v88, v85);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A66B8, &qword_24FEE5778);
  sub_24FE9D614(v90, &v91[*(v92 + 48)]);
  sub_24FE9D684(v84);
  v93 = *(v86 + 8);
  v93(v89, v85);
  sub_24FE9D684(v90);
  return (v93)(v88, v85);
}

uint64_t sub_24FE9D088@<X0>(char *a2@<X8>)
{
  *a2 = sub_24FEDDF14();
  *(a2 + 1) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6610, &qword_24FEE5660);
  sub_24FE9C5C4(v2, &a2[*(v5 + 44)]);
  v6 = sub_24FEDD734();
  sub_24FEDD014();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6618, &qword_24FEE5668);
  v16 = &a2[*(result + 36)];
  *v16 = v6;
  *(v16 + 1) = v8;
  *(v16 + 2) = v10;
  *(v16 + 3) = v12;
  *(v16 + 4) = v14;
  v16[40] = 0;
  return result;
}

double sub_24FE9D144(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    return *(v2 + *(a2 + 24));
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_24FE9D174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDC774();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FE9D284(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24FEDC774();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24FE9D38C(uint64_t a1)
{
  sub_24FEDC774();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_24FE86B40(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24FE9D434()
{
  result = qword_27F3A6640;
  if (!qword_27F3A6640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F3A6618, &qword_24FEE5668);
    sub_24FE58928(&qword_27F3A6648, &qword_27F3A6650, &qword_24FEE5718, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6640);
  }

  return result;
}

unint64_t sub_24FE9D4EC()
{
  result = qword_27F3A6690;
  if (!qword_27F3A6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6680, &qword_24FEE8A80);
    sub_24FE8A640();
    sub_24FE58928(&qword_27F3A6698, &qword_27F3A66A0, &unk_24FEE7C50, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6690);
  }

  return result;
}

uint64_t sub_24FE9D5A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66B0, &qword_24FEE5770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE9D614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6678, &unk_24FEE5740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE9D684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6678, &unk_24FEE5740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DocumentElementCodeBlockParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v81 = a2;
  v2 = sub_24FEDC8E4();
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x28223BE20](v2);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_24FEDC774();
  v80 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v69 - v7;
  MEMORY[0x28223BE20](v8);
  v79 = &v69 - v9;
  MEMORY[0x28223BE20](v10);
  v75 = &v69 - v11;
  v85 = sub_24FEDC884();
  v77 = *(v85 - 1);
  MEMORY[0x28223BE20](v85);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6140, &qword_24FEE79D0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v69 - v18;
  v20 = sub_24FEDC854();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v78 = &v69 - v25;
  sub_24FE8B614();
  sub_24FEDC6D4();
  v26 = sub_24FEDC894();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v16, 1, v26) == 1)
  {
    sub_24FE58B7C(v16, &qword_27F3A6138, &unk_24FEE4A10);
    (*(v21 + 7))(v19, 1, 1, v20);
    v28 = v81;
LABEL_11:
    sub_24FE58B7C(v19, &qword_27F3A6140, &qword_24FEE79D0);
    v45 = type metadata accessor for DocumentCodeBlockElement(0);
    return (*(*(v45 - 8) + 56))(v28, 1, 1, v45);
  }

  v69 = v5;
  v70 = v19;
  v29 = sub_24FEDC864();
  result = (*(v27 + 8))(v16, v26);
  v31 = v20;
  v32 = v21;
  v84 = *(v29 + 16);
  if (v84)
  {
    v33 = 0;
    v83 = (v21 + 16);
    v34 = (v77 + 88);
    LODWORD(v82) = *MEMORY[0x277CC8D48];
    v35 = (v77 + 8);
    v36 = (v21 + 8);
    while (v33 < *(v29 + 16))
    {
      v37 = v32;
      v32[2](v23, v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v33, v31);
      v38 = v31;
      sub_24FEDC834();
      v39 = v85;
      v40 = (*v34)(v13, v85);
      if (v40 == v82)
      {

        (*v35)(v13, v39);
        v19 = v70;
        v37[4](v70, v23, v38);
        v41 = 0;
        v31 = v38;
        v32 = v37;
        goto LABEL_10;
      }

      ++v33;
      (*v35)(v13, v39);
      result = (*v36)(v23, v38);
      v31 = v38;
      v32 = v37;
      if (v84 == v33)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v41 = 1;
    v19 = v70;
LABEL_10:
    (v32[7])(v19, v41, 1, v31);
    v42 = (v32[6])(v19, 1, v31);
    v43 = v80;
    v28 = v81;
    v44 = v86;
    if (v42 == 1)
    {
      goto LABEL_11;
    }

    v70 = v32;
    v46 = v32[4];
    v77 = v31;
    v46(v78, v19, v31);
    v47 = sub_24FEDC844();
    v48 = v74;
    v50 = sub_24FED5384(v47, v49);
    MEMORY[0x28223BE20](v50);
    *(&v69 - 2) = v48;
    v51 = sub_24FE8B764(sub_24FE9E0F0, (&v69 - 4), v50);

    v52 = v79;
    sub_24FEDC764();
    v53 = v76;
    (*(v43 + 16))(v76, v52, v44);
    v54 = *(v51 + 16);
    if (v54)
    {
      v55 = v73;
      v56 = *(v72 + 16);
      v57 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v74 = v51;
      v58 = v51 + v57;
      v84 = *(v72 + 72);
      v85 = v56;
      v59 = v43;
      v60 = (v43 + 8);
      v82 = (v59 + 32);
      v83 = (v72 + 8);
      v72 = v60 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = v69;
      v62 = v71;
      do
      {
        (v85)(v62, v58, v55);
        sub_24FE9E6FC(&unk_27F3A6150, MEMORY[0x277CC8D88], MEMORY[0x277CC8D80]);
        sub_24FEDC624();
        (*v83)(v62, v55);
        v63 = *v60;
        v64 = v86;
        (*v60)(v53, v86);
        (*v82)(v53, v61, v64);
        v58 += v84;
        --v54;
      }

      while (v54);

      v43 = v80;
      v28 = v81;
      v44 = v86;
    }

    else
    {

      v63 = *(v43 + 8);
    }

    v63(v79, v44);
    v65 = *(v43 + 32);
    v66 = v75;
    v65(v75, v53, v44);
    v67 = v69;
    sub_24FE9E110();
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    v63(v66, v44);
    (*(v70 + 1))(v78, v77);
    v68 = type metadata accessor for DocumentCodeBlockElement(0);
    v65((v28 + *(v68 + 20)), v67, v44);
    return (*(*(v68 - 8) + 56))(v28, 0, 1, v68);
  }

  return result;
}

uint64_t sub_24FE9E014()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  MEMORY[0x28223BE20](v0);
  v2 = &v4 - v1;
  sub_24FEDC6B4();
  sub_24FE8BF90();
  sub_24FEDC7A4();
  return sub_24FE58B7C(v2, &qword_27F3A6160, &unk_24FEE4A80);
}

void sub_24FE9E110()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v18 - v1;
  v3 = sub_24FEDC5A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  v18[10] = 174088288;
  v18[11] = 0xE400000000000000;
  sub_24FEDC574();
  sub_24FEAE034(v2);
  (*(v4 + 8))(v6, v3);
  v8 = sub_24FEDE224();
  MEMORY[0x25305A470](v8);

  MEMORY[0x25305A470](6316128, 0xE300000000000000);
  v9 = objc_opt_self();
  v10 = sub_24FEDE1C4();

  v11 = [objc_opt_self() defaultFormatOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66C8, &qword_24FEE57E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0740;
  v13 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_24FE9E4AC();
  *(inited + 40) = v7;
  v14 = v13;
  v15 = v7;
  sub_24FE9E5F4(inited);
  swift_setDeallocating();
  sub_24FE58B7C(inited + 32, &qword_27F3A66D8, &qword_24FEE57F0);
  _s3__C3KeyVMa_0(0);
  sub_24FE9E6FC(&qword_27F3A5D50, _s3__C3KeyVMa_0, &unk_24FEE41BC);
  v16 = sub_24FEDE144();

  v17 = [v9 reconstituteAttributedStringFromFormattedString:v10 formatOptions:v11 attributes:v16];

  sub_24FEDC7B4();
}

unint64_t sub_24FE9E4AC()
{
  result = qword_27F3A66D0;
  if (!qword_27F3A66D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3A66D0);
  }

  return result;
}

unint64_t sub_24FE9E4F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66E8, &qword_24FEE5808);
    v3 = sub_24FEDE6D4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24FE71544(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24FE9E5F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66E0, &unk_24FEE57F8);
    v3 = sub_24FEDE6D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_24FE9E744(v4, &v11);
      v5 = v11;
      result = sub_24FE714B0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24FE725D8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24FE9E6FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE9E744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66D8, &qword_24FEE57F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DocumentElementEmbeddedVideoParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X8>)
{
  sub_24FE9E898();
  sub_24FEDC6D4();
  if (v7)
  {
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    v2 = type metadata accessor for DocumentEmbeddedVideoElement(0);
    v3 = (a1 + *(v2 + 20));
    *v3 = v6;
    v3[1] = v7;
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v5 = type metadata accessor for DocumentEmbeddedVideoElement(0);
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

unint64_t sub_24FE9E898()
{
  result = qword_27F3A66F0;
  if (!qword_27F3A66F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A66F0);
  }

  return result;
}

unint64_t sub_24FE9E8F4()
{
  result = qword_27F3A66F8;
  if (!qword_27F3A66F8)
  {
    type metadata accessor for DocumentEmbeddedVideoElement(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A66F8);
  }

  return result;
}

uint64_t sub_24FE9E94C@<X0>(uint64_t a1@<X8>)
{
  sub_24FE9E898();
  sub_24FEDC6D4();
  if (v7)
  {
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    v2 = type metadata accessor for DocumentEmbeddedVideoElement(0);
    v3 = (a1 + *(v2 + 20));
    *v3 = v6;
    v3[1] = v7;
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v5 = type metadata accessor for DocumentEmbeddedVideoElement(0);
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t DocumentEmbeddedVideoElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

MarkdownDocument::DocumentEmbeddedVideoView __swiftcall DocumentEmbeddedVideoElement.makeView()()
{
  v1 = (v0 + *(type metadata accessor for DocumentEmbeddedVideoElement(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  v4 = v2;
  v5 = v3;
  result.embeddedVideoSource._object = v5;
  result.embeddedVideoSource._countAndFlagsBits = v4;
  return result;
}

uint64_t type metadata accessor for DocumentEmbeddedVideoElement(uint64_t a1)
{
  result = qword_27F3A6728;
  if (!qword_27F3A6728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DocumentEmbeddedVideoElement.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DocumentEmbeddedVideoElement(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_24FEDE844();
}

unint64_t sub_24FE9EBC4()
{
  result = qword_27F3A6708;
  if (!qword_27F3A6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6708);
  }

  return result;
}

uint64_t sub_24FE9EC18(uint64_t a1)
{
  *(a1 + 8) = sub_24FE9ECE4(&qword_27F3A6710, type metadata accessor for DocumentEmbeddedVideoElement, &protocol conformance descriptor for DocumentEmbeddedVideoElement);
  result = sub_24FE9ECE4(&unk_27F3A6718, type metadata accessor for DocumentEmbeddedVideoElement, &protocol conformance descriptor for DocumentEmbeddedVideoElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FE9ECE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE9ED2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_24FEDE844();
}

uint64_t sub_24FE9EDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
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

uint64_t sub_24FE9EE9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
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

uint64_t sub_24FE9EF58(uint64_t a1)
{
  result = sub_24FEDCA64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DocumentEmbeddedVideoView.body.getter(uint64_t a1, uint64_t a2)
{

  sub_24FEDDF34();
  sub_24FEDD294();
  *&v8[54] = v13;
  *&v8[70] = v14;
  *&v8[86] = v15;
  *&v8[102] = v16;
  *&v8[6] = v10;
  *&v8[22] = v11;
  *&v8[38] = v12;
  *&v6[74] = *&v8[64];
  *&v6[90] = *&v8[80];
  *&v6[106] = *&v8[96];
  *&v6[10] = *v8;
  *&v6[26] = *&v8[16];
  *&v6[42] = *&v8[32];
  v9 = 0;
  *&v5 = a1;
  *(&v5 + 1) = a2;
  *v6 = 0x3FFC71C71C71C71CLL;
  *&v6[8] = 256;
  *&v6[120] = *(&v16 + 1);
  *&v6[58] = *&v8[48];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6740, &qword_24FEE5940);
  sub_24FE9F178();
  sub_24FEDDA54();
  v7[6] = *&v6[80];
  v7[7] = *&v6[96];
  v7[8] = *&v6[112];
  v7[2] = *&v6[16];
  v7[3] = *&v6[32];
  v7[4] = *&v6[48];
  v7[5] = *&v6[64];
  v7[0] = v5;
  v7[1] = *v6;
  return sub_24FE9F2E4(v7);
}

unint64_t sub_24FE9F178()
{
  result = qword_27F3A6748;
  if (!qword_27F3A6748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6740, &qword_24FEE5940);
    sub_24FE9F204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6748);
  }

  return result;
}

unint64_t sub_24FE9F204()
{
  result = qword_27F3A6750;
  if (!qword_27F3A6750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6758, &qword_24FEE5948);
    sub_24FE9F290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6750);
  }

  return result;
}

unint64_t sub_24FE9F290()
{
  result = qword_27F3A6760;
  if (!qword_27F3A6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6760);
  }

  return result;
}

uint64_t sub_24FE9F2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6740, &qword_24FEE5940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE9F380()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6740, &qword_24FEE5940);
  sub_24FE9F178();
  return swift_getOpaqueTypeConformance2();
}

uint64_t static EmbeddedVideoUrlAttribute.name.getter()
{
  swift_beginAccess();
  v0 = static EmbeddedVideoUrlAttribute.name;

  return v0;
}

uint64_t static EmbeddedVideoUrlAttribute.name.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static EmbeddedVideoUrlAttribute.name = a1;
  off_27F3A6770 = a2;
}

uint64_t sub_24FE9F5A4()
{
  swift_beginAccess();
  v0 = static EmbeddedVideoUrlAttribute.name;

  return v0;
}

unint64_t sub_24FE9F614()
{
  result = qword_27F3A6778;
  if (!qword_27F3A6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6778);
  }

  return result;
}

uint64_t static EmbeddedVideoView.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_24FEDE844();
  }
}

id EmbeddedVideoView.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmbeddedVideoView.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddedVideoView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id EmbeddedVideoView.makeCoordinator()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmbeddedVideoView.Coordinator();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV16MarkdownDocument17EmbeddedVideoView11Coordinator_parent];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id EmbeddedVideoView.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE3850]) init];
  v1 = [v0 scrollView];
  [v1 setBounces_];

  [v0 setOpaque_];
  return v0;
}

void EmbeddedVideoView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24FEDE624();
  MEMORY[0x25305A470](0xD0000000000002F5, 0x800000024FEE9DC0);
  MEMORY[0x25305A470](a3, a4);
  MEMORY[0x25305A470](0xD000000000000048, 0x800000024FEEA0C0);
  v7 = sub_24FEDE1C4();
}

id sub_24FE9F974()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE3850]) init];
  v1 = [v0 scrollView];
  [v1 setBounces_];

  [v0 setOpaque_];
  return v0;
}

void *sub_24FE9FA00@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for EmbeddedVideoView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV16MarkdownDocument17EmbeddedVideoView11Coordinator_parent];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24FE9FABC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24FEDE844();
  }
}

uint64_t sub_24FE9FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FE9FBEC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24FE9FB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FE9FBEC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24FE9FBB4(uint64_t a1)
{
  sub_24FE9FBEC();
  sub_24FEDD5D4();
  __break(1u);
}

unint64_t sub_24FE9FBEC()
{
  result = qword_27F3A6790;
  if (!qword_27F3A6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6790);
  }

  return result;
}

uint64_t DocumentFileElement.init(id:fileURL:fileName:fileType:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_24FEDCA64();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for DocumentFileElement(0);
  v16 = v15[5];
  v17 = sub_24FEDC9E4();
  (*(*(v17 - 8) + 32))(a7 + v16, a2, v17);
  v18 = (a7 + v15[6]);
  *v18 = a3;
  v18[1] = a4;
  v19 = v15[7];
  v20 = sub_24FEDCE94();
  result = (*(*(v20 - 8) + 32))(a7 + v19, a5, v20);
  *(a7 + v15[8]) = a6;
  return result;
}

uint64_t type metadata accessor for DocumentFileElement(uint64_t a1)
{
  result = qword_27F3A67B8;
  if (!qword_27F3A67B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentFileElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentFileElement.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentFileElement(0) + 20);
  v4 = sub_24FEDC9E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentFileElement.fileName.getter()
{
  v1 = *(v0 + *(type metadata accessor for DocumentFileElement(0) + 24));

  return v1;
}

uint64_t DocumentFileElement.fileType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentFileElement(0) + 28);
  v4 = sub_24FEDCE94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentFileElement.makeView()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentFileElement(0);
  v4 = v3[5];
  v5 = sub_24FEDC9E4();
  (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
  v6 = v3[7];
  v7 = (v1 + v3[6]);
  v8 = v7[1];
  v24 = *v7;
  v9 = type metadata accessor for DocumentFileView(0);
  v10 = (a1 + v9[8]);
  v23 = type metadata accessor for ShareSheetMetadata(0);
  v11 = *(v23 + 24);
  v25 = sub_24FEDCE94();
  v26 = *(*(v25 - 8) + 16);
  v26(&v10[v11], v1 + v6, v25);
  v12 = *(v1 + v3[8]);
  v13 = a1 + v9[7];

  sub_24FEDDD34();
  *v13 = v27;
  *(v13 + 8) = v28;
  v14 = (a1 + v9[10]);
  sub_24FEDE134();
  sub_24FEA0398(&qword_27F3A5C08, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v14 = sub_24FEDD2C4();
  v14[1] = v15;
  v16 = sub_24FEDE1C4();
  v17 = [v16 stringByDeletingPathExtension];

  v18 = sub_24FEDE1F4();
  v20 = v19;

  v21 = (a1 + v9[5]);
  *v21 = v18;
  v21[1] = v20;
  result = (v26)(a1 + v9[6], &v10[v11], v25);
  *(a1 + v9[9]) = v12;
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    *v10 = v24;
    *(v10 + 1) = v8;
    *(v10 + 2) = v18;
    *(v10 + 3) = v20;
    *&v10[*(v23 + 28)] = v12;
  }

  return result;
}

BOOL _s16MarkdownDocument0B11FileElementV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) != 0 && (v4 = type metadata accessor for DocumentFileElement(0), (sub_24FEDC994()) && ((v5 = *(v4 + 24), v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_24FEDE844()) && (sub_24FEDCE24()))
  {
    return *(a1 + *(v4 + 32)) == *(a2 + *(v4 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24FEA02CC(uint64_t a1)
{
  *(a1 + 8) = sub_24FEA0398(&qword_27F3A67A0, type metadata accessor for DocumentFileElement, &protocol conformance descriptor for DocumentFileElement);
  result = sub_24FEA0398(&unk_27F3A67A8, type metadata accessor for DocumentFileElement, &protocol conformance descriptor for DocumentFileElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEA0398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FEA03F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24FEDC9E4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_24FEDCE94();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24FEA0580(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24FEDCA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24FEDC9E4();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_24FEDCE94();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_24FEA06F8(uint64_t a1)
{
  result = sub_24FEDCA64();
  if (v2 <= 0x3F)
  {
    result = sub_24FEDC9E4();
    if (v3 <= 0x3F)
    {
      result = sub_24FEDCE94();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t DocumentFileView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for DocumentFileView(0);
  v3 = v2 - 8;
  v40 = *(v2 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67D0, &qword_24FEE5D90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v40 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67D8, &qword_24FEE5D98);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67E0, &qword_24FEE5DA0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67E8, &qword_24FEE5DA8);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v16 = &v40 - v15;
  *v7 = sub_24FEDDF34();
  v7[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67F0, &unk_24FEE5DB0);
  sub_24FEA0D48(v1, v7 + *(v18 + 44));
  sub_24FEDDF44();
  sub_24FEDD294();
  sub_24FE6315C(v7, v11, &qword_27F3A67D0, &qword_24FEE5D90);
  v19 = &v11[*(v9 + 44)];
  v20 = v53;
  *(v19 + 4) = v52;
  *(v19 + 5) = v20;
  *(v19 + 6) = v54;
  v21 = v49;
  *v19 = v48;
  *(v19 + 1) = v21;
  v22 = v51;
  *(v19 + 2) = v50;
  *(v19 + 3) = v22;
  LOBYTE(v9) = sub_24FEDD734();
  sub_24FEDD014();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_24FE6315C(v11, v14, &qword_27F3A67D8, &qword_24FEE5D98);
  v31 = &v14[*(v12 + 36)];
  *v31 = v9;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_24FEA4F70(v1, &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DocumentFileView);
  v32 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v33 = swift_allocObject();
  sub_24FEA4F08(&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for DocumentFileView);
  v34 = sub_24FEA4304(&qword_27F3A67F8, &qword_27F3A67E0, &qword_24FEE5DA0, sub_24FEA2048);
  sub_24FEDDB14();

  sub_24FEA2100(v14);
  v35 = v1 + *(v3 + 36);
  v36 = *v35;
  v37 = *(v35 + 8);
  v46 = v36;
  v47 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6500, &qword_24FEE5418);
  sub_24FEDDD64();
  v44 = v12;
  v45 = v34;
  swift_getOpaqueTypeConformance2();
  v38 = v42;
  sub_24FEDDB44();

  return (*(v41 + 8))(v16, v38);
}

uint64_t sub_24FEA0D48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6918, &qword_24FEE60D8);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6848, &qword_24FEE6000);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6920, &unk_24FEE60E0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v18 = *(sub_24FEDD284() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_24FEDD4E4();
  (*(*(v20 - 8) + 104))(&v10[v18], v19, v20);
  __asm { FMOV            V0.2D, #16.0 }

  *v10 = _Q0;
  sub_24FEDDC24();
  v26 = sub_24FEDDC64();

  *&v10[*(v8 + 36)] = v26;
  sub_24FEA4B60();
  v36 = v17;
  sub_24FEDDA54();
  sub_24FE58B7C(v10, &qword_27F3A6848, &qword_24FEE6000);
  *v7 = sub_24FEDD434();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6930, &qword_24FEE60F0);
  sub_24FEA10E8(v37, &v7[*(v27 + 44)]);
  v28 = sub_24FEDD744();
  v29 = &v7[*(v3 + 44)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  v30 = *(v12 + 16);
  v30(v14, v17, v11);
  v31 = v38;
  sub_24FE58B14(v7, v38, &qword_27F3A6918, &qword_24FEE60D8);
  v32 = v39;
  v30(v39, v14, v11);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6938, &unk_24FEE60F8);
  sub_24FE58B14(v31, &v32[*(v33 + 48)], &qword_27F3A6918, &qword_24FEE60D8);
  sub_24FE58B7C(v7, &qword_27F3A6918, &qword_24FEE60D8);
  v34 = *(v12 + 8);
  v34(v36, v11);
  sub_24FE58B7C(v31, &qword_27F3A6918, &qword_24FEE60D8);
  return (v34)(v14, v11);
}

void sub_24FEA10E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v123 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F60, &unk_24FEE45B0);
  MEMORY[0x28223BE20](v115);
  v120 = &v103 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  MEMORY[0x28223BE20](v4 - 8);
  v109 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v125 = &v103 - v7;
  MEMORY[0x28223BE20](v8);
  v126 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  MEMORY[0x28223BE20](v10 - 8);
  v113 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v129 = &v103 - v13;
  v118 = type metadata accessor for ShareButton(0);
  MEMORY[0x28223BE20](v118);
  v122 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v103 - v16);
  MEMORY[0x28223BE20](v18);
  v128 = &v103 - v19;
  v20 = type metadata accessor for FileAttachmentDetailsView(0);
  v21 = (v20 - 8);
  MEMORY[0x28223BE20](v20);
  v121 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v103 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v103 - v27;
  v29 = sub_24FEDCE94();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DocumentFileView(0);
  v34 = v33[6];
  v124 = v30;
  v35 = *(v30 + 16);
  v114 = v29;
  v108 = v30 + 16;
  v107 = v35;
  v35(v32, a1 + v34, v29);
  v103 = v32;
  v36 = sub_24FEA4C48(v32);
  v38 = v37;
  v117 = v36;
  v119 = v39;
  v116 = v40;
  v41 = a1;
  v42 = (a1 + v33[5]);
  v43 = v42[1];
  v127 = *v42;
  v44 = *(a1 + v33[9]);

  v45 = sub_24FEDCE14();
  if (v46)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0x206E776F6E6B6E55;
  }

  if (v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = 0xEC00000065707954;
  }

  *v25 = swift_getKeyPath();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  swift_storeEnumTagMultiPayload();
  v49 = (v25 + v21[7]);
  *v49 = v127;
  v49[1] = v43;
  *(v25 + v21[8]) = v44;
  v50 = (v25 + v21[9]);
  *v50 = v47;
  v50[1] = v48;
  v127 = v28;
  v51 = v129;
  sub_24FEA4F08(v25, v28, type metadata accessor for FileAttachmentDetailsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66A8, &unk_24FEE5760);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_24FEE0740;
  v53 = sub_24FEDC9E4();
  *(v52 + 56) = v53;
  *(v52 + 64) = &protocol witness table for URL;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v52 + 32));
  (*(*(v53 - 8) + 16))(boxed_opaque_existential_1, v41, v53);
  sub_24FEA4F70(v41 + v33[8], v51, type metadata accessor for ShareSheetMetadata);
  v55 = type metadata accessor for ShareSheetMetadata(0);
  v56 = *(v55 - 8);
  (*(v56 + 56))(v51, 0, 1, v55);
  *v17 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v57 = v118;
  v133 = 0x403C000000000000;
  sub_24FE85C8C();
  sub_24FEDD0B4();
  v58 = v57[6];
  sub_24FEDDC74();
  v59 = sub_24FEDDC64();

  v106 = v58;
  v105 = v59;
  *(v17 + v58) = v59;
  v104 = v17 + v57[7];
  *v104 = 0;
  v112 = v17 + v57[8];
  *v112 = 0;
  v60 = (v17 + v57[9]);
  sub_24FEDE134();
  sub_24FEA5038(&qword_27F3A5C08, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v60 = sub_24FEDD2C4();
  v60[1] = v61;
  v62 = (v17 + v57[10]);
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for LaTeXMathTracker(0);
  sub_24FEA5038(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker, &protocol conformance descriptor for LaTeXMathTracker);

  *v62 = sub_24FEDD1B4();
  v62[1] = v63;
  v64 = v17 + v57[11];
  v130 = 0;
  sub_24FEDDD34();
  v65 = v132;
  *v64 = v131;
  *(v64 + 1) = v65;
  *(v17 + v57[12]) = 0;
  *(v17 + v57[13]) = v52;
  v66 = v129;
  sub_24FE58B14(v129, v17 + v57[14], &qword_27F3A5F70, &qword_24FEE45C0);
  v67 = v57[15];
  v118 = v17;
  *(v17 + v67) = 0;
  v68 = v66;
  v69 = v113;
  sub_24FE58B14(v68, v113, &qword_27F3A5F70, &qword_24FEE45C0);
  v110 = *(v56 + 48);
  v70 = v110(v69, 1, v55);
  v111 = v55;
  if (v70 == 1)
  {
    sub_24FE58B7C(v69, &qword_27F3A5F70, &qword_24FEE45C0);
    v71 = 1;
    v72 = v120;
    v73 = v125;
    v74 = v126;
    v75 = v114;
  }

  else
  {
    v76 = v69 + *(v55 + 24);
    v74 = v126;
    v77 = v69;
    v75 = v114;
    v107(v126, v76, v114);
    sub_24FEA4FD8(v77, type metadata accessor for ShareSheetMetadata);
    v71 = 0;
    v72 = v120;
    v73 = v125;
  }

  v78 = v124;
  v79 = *(v124 + 56);
  v79(v74, v71, 1, v75);
  sub_24FEDCE64();
  v79(v73, 0, 1, v75);
  v80 = *(v115 + 48);
  sub_24FE58B14(v74, v72, &qword_27F3A5F68, &qword_24FEE5350);
  sub_24FE58B14(v73, v72 + v80, &qword_27F3A5F68, &qword_24FEE5350);
  v81 = *(v78 + 48);
  if (v81(v72, 1, v75) != 1)
  {
    v82 = v109;
    sub_24FE58B14(v72, v109, &qword_27F3A5F68, &qword_24FEE5350);
    if (v81(v72 + v80, 1, v75) != 1)
    {
      v87 = v124;
      v88 = v103;
      (*(v124 + 32))(v103, v72 + v80, v75);
      sub_24FEA5038(&qword_27F3A5FC0, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      v89 = v82;
      v90 = sub_24FEDE194();
      v91 = *(v87 + 8);
      v91(v88, v75);
      sub_24FE58B7C(v125, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v126, &qword_27F3A5F68, &qword_24FEE5350);
      v91(v89, v75);
      sub_24FE58B7C(v72, &qword_27F3A5F68, &qword_24FEE5350);
      v83 = v111;
      if (v90)
      {
        goto LABEL_21;
      }

LABEL_18:
      v84 = v110(v129, 1, v83);
      v85 = v118;
      v86 = v112;
      if (v84 == 1)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    sub_24FE58B7C(v125, &qword_27F3A5F68, &qword_24FEE5350);
    sub_24FE58B7C(v126, &qword_27F3A5F68, &qword_24FEE5350);
    (*(v124 + 8))(v82, v75);
LABEL_17:
    sub_24FE58B7C(v72, &qword_27F3A5F60, &unk_24FEE45B0);
    v83 = v111;
    goto LABEL_18;
  }

  sub_24FE58B7C(v73, &qword_27F3A5F68, &qword_24FEE5350);
  sub_24FE58B7C(v74, &qword_27F3A5F68, &qword_24FEE5350);
  if (v81(v72 + v80, 1, v75) != 1)
  {
    goto LABEL_17;
  }

  sub_24FE58B7C(v72, &qword_27F3A5F68, &qword_24FEE5350);
LABEL_21:
  v92 = sub_24FEDDC54();

  v85 = v118;
  *(v118 + v106) = v92;
  v86 = v104;
LABEL_22:
  *v86 = 1;
LABEL_23:
  v93 = v128;
  sub_24FEA4F70(v85, v128, type metadata accessor for ShareButton);
  sub_24FE58B7C(v129, &qword_27F3A5F70, &qword_24FEE45C0);
  sub_24FEA4FD8(v85, type metadata accessor for ShareButton);
  v94 = v121;
  sub_24FEA4F70(v127, v121, type metadata accessor for FileAttachmentDetailsView);
  v95 = v122;
  sub_24FEA4F70(v93, v122, type metadata accessor for ShareButton);
  v96 = v123;
  *v123 = v38;
  v97 = v117;
  v98 = v119;
  v96[1] = v117;
  v96[2] = v98;
  v99 = v116;
  v96[3] = v116;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6940, &qword_24FEE6138);
  sub_24FEA4F70(v94, v96 + *(v100 + 48), type metadata accessor for FileAttachmentDetailsView);
  sub_24FEA4F70(v95, v96 + *(v100 + 64), type metadata accessor for ShareButton);

  v101 = v99;
  v102 = v97;
  sub_24FEA4FD8(v128, type metadata accessor for ShareButton);
  sub_24FEA4FD8(v127, type metadata accessor for FileAttachmentDetailsView);
  sub_24FEA4FD8(v95, type metadata accessor for ShareButton);
  sub_24FEA4FD8(v94, type metadata accessor for FileAttachmentDetailsView);
}

void sub_24FEA1E30(uint64_t a1)
{
  v2 = type metadata accessor for DocumentFileView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = *(a1 + *(v5 + 48));
  if (v6)
  {
    v7 = v6;
    sub_24FEDE0E4();

    sub_24FEA4F70(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DocumentFileView);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    sub_24FEA4F08(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DocumentFileView);
    v10 = v7;
    sub_24FEDE104();
  }

  else
  {
    sub_24FEDE134();
    sub_24FEA5038(&qword_27F3A5C08, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_24FEDD2B4();
    __break(1u);
  }
}

void sub_24FEA1FE8()
{
  v1 = *(type metadata accessor for DocumentFileView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_24FEA1E30(v2);
}

unint64_t sub_24FEA2048()
{
  result = qword_27F3A6800;
  if (!qword_27F3A6800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A67D8, &qword_24FEE5D98);
    sub_24FE58928(&unk_27F3A6808, &qword_27F3A67D0, &qword_24FEE5D90, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6800);
  }

  return result;
}

uint64_t sub_24FEA2100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67E0, &qword_24FEE5DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FEA2184(uint64_t result, uint64_t a2)
{
  if (result)
  {
    type metadata accessor for DocumentFileView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6500, &qword_24FEE5418);
    return sub_24FEDDD54();
  }

  return result;
}

uint64_t sub_24FEA2218(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24FEDC9E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_24FEDCE94();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = type metadata accessor for ShareSheetMetadata(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24FEA23A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24FEDC9E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_24FEDCE94();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for ShareSheetMetadata(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_24FEA251C(uint64_t a1)
{
  sub_24FEDC9E4();
  if (v1 <= 0x3F)
  {
    sub_24FEDCE94();
    if (v2 <= 0x3F)
    {
      sub_24FE9B424();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ShareSheetMetadata(319);
        if (v4 <= 0x3F)
        {
          sub_24FE9B390(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24FEA25F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A67E8, &qword_24FEE5DA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A67E0, &qword_24FEE5DA0);
  sub_24FEA4304(&qword_27F3A67F8, &qword_27F3A67E0, &qword_24FEE5DA0, sub_24FEA2048);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FEA26F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
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

uint64_t sub_24FEA27D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
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

void sub_24FEA28B8(uint64_t a1)
{
  sub_24FE8A340(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24FEA2964@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C20, &unk_24FEE3E10);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6898, &qword_24FEE6070);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  sub_24FEA2E68(a1, a2, (&v37 - v14));
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v16 = &v15[*(v13 + 36)];
  v17 = v48;
  *v16 = v47;
  *(v16 + 1) = v17;
  *(v16 + 2) = v49;
  sub_24FEA4508();
  v41 = v12;
  sub_24FEDDA54();
  sub_24FE58B7C(v15, &qword_27F3A6898, &qword_24FEE6070);
  sub_24FEDE3E4();

  v18 = a3;
  v19 = a1;
  v20 = sub_24FEDE3D4();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  *(v21 + 32) = a5;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2;
  *(v21 + 56) = v18;
  v23 = sub_24FEDE414();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = &v37 - v26;
  sub_24FEDE3F4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v39 = sub_24FEDD214();
    v40 = &v37;
    v38 = *(v39 - 8);
    MEMORY[0x28223BE20](v39);
    v37 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_24FEDE624();

    v45 = 0xD000000000000034;
    v46 = 0x800000024FEEA160;
    v44 = 128;
    v29 = sub_24FEDE824();
    MEMORY[0x25305A470](v29);

    v31 = MEMORY[0x28223BE20](v30);
    (*(v24 + 16))(&v37 - v26, &v37 - v26, v23, v31);
    v32 = v37;
    sub_24FEDD204();
    (*(v24 + 8))(v27, v23);
    (*(v42 + 32))(a4, v41, v43);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C28, &unk_24FEE60B0);
    return (*(v38 + 32))(a4 + *(v33 + 36), v32, v39);
  }

  else
  {
    v35 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C30, &qword_24FEE3E20) + 36));
    v36 = sub_24FEDD174();
    (*(v24 + 32))(&v35[*(v36 + 20)], &v37 - v26, v23);
    *v35 = &unk_24FEE60A8;
    *(v35 + 1) = v21;
    return (*(v42 + 32))(a4, v41, v43);
  }
}

void *sub_24FEA2E68@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_24FEDDCD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A68D0, &qword_24FEE6088);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6910, &qword_24FEE60D0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v31 = a1;
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6908, &qword_24FEE60C8);
  sub_24FEDDD44();
  if (v30)
  {
    v16 = v30;
    sub_24FEDDCA4();
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v17 = sub_24FEDDD04();
    v29 = a3;
    v18 = v17;

    (*(v7 + 8))(v9, v6);
    v19 = &v12[*(v10 + 36)];
    v20 = *(sub_24FEDD284() + 20);
    v21 = *MEMORY[0x277CE0118];
    v22 = sub_24FEDD4E4();
    (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
    __asm { FMOV            V0.2D, #5.0 }

    *v19 = _Q0;
    *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A68F0, &qword_24FEE6098) + 36)] = 256;
    *v12 = v18;
    *(v12 + 1) = 0;
    *(v12 + 8) = 1;
    sub_24FE58B14(v12, v15, &qword_27F3A68D0, &qword_24FEE6088);
    swift_storeEnumTagMultiPayload();
    sub_24FEA46A4();
    sub_24FEA47E0();
    sub_24FEDD5F4();

    return sub_24FE58B7C(v12, &qword_27F3A68D0, &qword_24FEE6088);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24FEA46A4();
    sub_24FEA47E0();
    return sub_24FEDD5F4();
  }
}

uint64_t sub_24FEA31C4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 168) = a5;
  *(v6 + 176) = a6;
  *(v6 + 160) = a4;
  *(v6 + 152) = a1;
  sub_24FEDE3E4();
  *(v6 + 184) = sub_24FEDE3D4();
  v8 = sub_24FEDE3C4();
  *(v6 + 192) = v8;
  *(v6 + 200) = v7;

  return MEMORY[0x2822009F8](sub_24FEA3264, v8, v7);
}

uint64_t sub_24FEA3264()
{
  v1 = *(v0 + 22);
  v2 = v0[19];
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v2 scale:{v2, v5}];
  *(v0 + 26) = v6;
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = sub_24FEA33FC;
  v7 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6900, &qword_24FEE60C0);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_24FEA36A4;
  *(v0 + 13) = &block_descriptor_2;
  *(v0 + 14) = v7;
  [v1 getImageForImageDescriptor:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24FEA33FC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_24FEA3504, v2, v1);
}

id sub_24FEA3504()
{
  v1 = *(v0 + 144);
  if (!v1)
  {

LABEL_7:

    goto LABEL_8;
  }

  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 80) = v3;
  *(v0 + 88) = v2;

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6908, &qword_24FEE60C8);
  sub_24FEDDD44();
  v5 = *(v0 + 144);
  if (!v5)
  {
    result = [v1 CGImage];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v8 = result;
    v9 = *(v0 + 160);
    v13 = *(v0 + 168);
    v14 = *(v0 + 208);

    v10 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    *(v0 + 80) = v9;
    *(v0 + 88) = v13;
    *(v0 + 144) = v10;
    v11 = v10;
    sub_24FEDDD54();

    goto LABEL_7;
  }

  v6 = *(v0 + 208);

LABEL_8:
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24FEA36A4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_24FEA3734(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24FEDD514();
  v13 = 1;
  sub_24FEA3954(v2, __dst);
  v17 = __dst[2];
  v18 = __dst[3];
  v19 = __dst[4];
  v20 = *&__dst[5];
  v15 = __dst[0];
  v16 = __dst[1];
  v22 = *&__dst[5];
  v21[2] = __dst[2];
  v21[3] = __dst[3];
  v21[4] = __dst[4];
  v21[0] = __dst[0];
  v21[1] = __dst[1];
  sub_24FE58B14(&v15, __src, &qword_27F3A6860, &qword_24FEE6018);
  sub_24FE58B7C(v21, &qword_27F3A6860, &qword_24FEE6018);
  *&v12[39] = v17;
  *&v12[55] = v18;
  *&v12[71] = v19;
  *&v12[87] = v20;
  *&v12[7] = v15;
  *&v12[23] = v16;
  v4 = v13;
  sub_24FEDDF44();
  sub_24FEDD294();
  LOBYTE(v2) = sub_24FEDD774();
  sub_24FEDD014();
  v14 = 0;
  __src[0] = v3;
  LOBYTE(__src[1]) = v4;
  *(&__src[3] + 1) = *&v12[32];
  *(&__src[4] + 1) = *&v12[48];
  *(&__src[5] + 1) = *&v12[64];
  *(&__src[1] + 1) = *v12;
  *(&__src[2] + 1) = *&v12[16];
  __src[8] = __src[18];
  __src[9] = __src[19];
  __src[6] = *&v12[79];
  __src[7] = __src[17];
  __src[12] = __src[22];
  __src[13] = __src[23];
  __src[10] = __src[20];
  __src[11] = __src[21];
  LOBYTE(__src[14]) = v2;
  *(&__src[14] + 1) = v5;
  *&__src[15] = v6;
  *(&__src[15] + 1) = v7;
  *&__src[16] = v8;
  BYTE8(__src[16]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6868, &qword_24FEE6020);
  sub_24FEA4304(&qword_27F3A6870, &qword_27F3A6868, &qword_24FEE6020, sub_24FEA4388);
  sub_24FEDDA54();
  memcpy(__dst, __src, 0x109uLL);
  return sub_24FE58B7C(__dst, &qword_27F3A6868, &qword_24FEE6020);
}