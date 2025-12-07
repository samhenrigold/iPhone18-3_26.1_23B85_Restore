unint64_t sub_21B9AF734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E260, &qword_21BA94290);
    v3 = sub_21BA8872C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B9AFF80(v4, &v13, &qword_27CD9CE88, &qword_21BA92380);
      v5 = v13;
      v6 = v14;
      result = sub_21B940DCC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21B9AFF70(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_21B9AF864(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCE0, &unk_21BA92360);
    v3 = sub_21BA8872C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B9AFF80(v4, v13, &unk_27CD9D900, &unk_21BA92370);
      result = sub_21B9AF000(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_21B9AFF70(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_21B9AF9A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v52 = a1;
  v53 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v54 = v8;
  v55 = 0;
  v56 = v11 & v9;
  v57 = a2;
  v58 = a3;

  sub_21B9AF5AC(&v48);
  if (!*(&v49 + 1))
  {
    goto LABEL_25;
  }

  v45 = v48;
  v46 = v49;
  v47 = v50;
  sub_21B9AFF70(v51, v44);
  v12 = *a5;
  result = sub_21B9AF000(&v45);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    sub_21B9AF150(v18, a4 & 1);
    result = sub_21B9AF000(&v45);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_21BA88B0C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_21B9AF408();
    result = v24;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    v22 = result;
    sub_21B9AFD9C(&v45);
    v23 = (v21[7] + 32 * v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21B9AFF70(v44, v23);
    goto LABEL_15;
  }

LABEL_13:
  v21[(result >> 6) + 8] |= 1 << result;
  v25 = v21[6] + 40 * result;
  v26 = v45;
  v27 = v46;
  *(v25 + 32) = v47;
  *v25 = v26;
  *(v25 + 16) = v27;
  result = sub_21B9AFF70(v44, (v21[7] + 32 * result));
  v28 = v21[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v21[2] = v29;
LABEL_15:
    sub_21B9AF5AC(&v48);
    if (*(&v49 + 1))
    {
      v19 = 1;
      do
      {
        v45 = v48;
        v46 = v49;
        v47 = v50;
        sub_21B9AFF70(v51, v44);
        v32 = *a5;
        result = sub_21B9AF000(&v45);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v17 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_21B9AF150(v36, 1);
          result = sub_21B9AF000(&v45);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;
          sub_21B9AFD9C(&v45);
          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_21B9AFF70(v44, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = v38[6] + 40 * result;
          v40 = v45;
          v41 = v46;
          *(v39 + 32) = v47;
          *v39 = v40;
          *(v39 + 16) = v41;
          result = sub_21B9AFF70(v44, (v38[7] + 32 * result));
          v42 = v38[2];
          v17 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v38[2] = v43;
        }

        sub_21B9AF5AC(&v48);
      }

      while (*(&v49 + 1));
    }

LABEL_25:
    sub_21B9AFF68(v52);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_21B9AFCD8()
{
  result = qword_27CD9BAC8;
  if (!qword_27CD9BAC8)
  {
    type metadata accessor for XMLUIData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BAC8);
  }

  return result;
}

uint64_t sub_21B9AFD2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0, &unk_21BA92240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9AFDF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_21B9AFF70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21B9AFF80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for LazyUIElement(uint64_t a1)
{
  result = qword_27CDA1930;
  if (!qword_27CDA1930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21B9B0034(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_21B9B0044(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_21B9B0054()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LazyUIElement(0) + 36);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9B01C4(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_21B9B01C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21B9B01D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B9DF748();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21B9B01FC(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_21B9DF7D8(v2, v1);
}

id sub_21B9B0238()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LazyUIElement(0) + 40);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {

    return v6;
  }

  else
  {
    v9[0] = *v5;

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v9[0], 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }
}

uint64_t sub_21B9B03B4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.ruiDecodingUserInfo.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21B9B040C@<X0>(void *a1@<X8>)
{
  v3 = sub_21BA86E9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90, &qword_21BA94000);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for LazyUIElement(0);
  sub_21B9AFF80(v1 + *(v10 + 44), v9, &qword_27CD9DD90, &qword_21BA94000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21B9AB6D4(v9, a1, &qword_27CD9DBA0, &unk_21BA92240);
  }

  sub_21BA8820C();
  v12 = sub_21BA8740C();
  sub_21BA8670C();

  sub_21BA86E8C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21B9B0618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0, &unk_21BA92240);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21B9AFF80(a1, &v6 - v3, &qword_27CD9DBA0, &unk_21BA92240);
  return sub_21B9CD434(v4);
}

uint64_t sub_21B9B06C0()
{
  sub_21BA88BAC();
  MEMORY[0x21CEFDF10](0);
  return sub_21BA88BCC();
}

uint64_t sub_21B9B072C(uint64_t a1)
{
  sub_21BA88BAC();
  MEMORY[0x21CEFDF10](0);
  return sub_21BA88BCC();
}

uint64_t sub_21B9B078C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F486563616C70 && a2 == 0xEB00000000726564)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21BA8899C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21B9B0818(uint64_t a1)
{
  v2 = sub_21B9B2A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9B0854(uint64_t a1)
{
  v2 = sub_21B9B2A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B9B0890@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE98, &qword_21BA92408);
  MEMORY[0x28223BE20](v35);
  v36 = v30 - v3;
  v4 = type metadata accessor for URLLoadingParameters(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA0, &qword_21BA92410);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for LazyUIElement(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (&v12->_countAndFlagsBits + *(v13 + 32));
  v46[0] = 0;
  sub_21BA8796C();
  v15 = v43[1];
  v42 = v43[0];
  *v14 = v43[0];
  v14[1] = v15;
  v46[7] = v15;
  v16 = v12 + v10[9];
  KeyPath = swift_getKeyPath();
  *v16 = KeyPath;
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = v12 + v10[10];
  v40 = swift_getKeyPath();
  *v17 = v40;
  v17[8] = 0;
  v18 = v10[11];
  *(&v12->_countAndFlagsBits + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90, &qword_21BA94000);
  v39 = v18;
  swift_storeEnumTagMultiPayload();
  v19 = (&v12->_countAndFlagsBits + v10[12]);
  type metadata accessor for XMLUIData();
  sub_21B9B39F8(&qword_27CD9BAC8, type metadata accessor for XMLUIData, &protocol conformance descriptor for XMLUIData);
  v38 = sub_21BA86D0C();
  *v19 = v38;
  v19[1] = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = Decoder.decodeRUIID()();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21B9B0044(v42);

    sub_21B9ABAAC(v12 + v39, &qword_27CD9CEA8, &qword_21BA9A460);
  }

  else
  {
    v32 = v6;
    v33 = v7;
    *v12 = v21;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21B9B2A0C();
    sub_21BA88C0C();
    v30[2] = v21._object;
    v31 = a1;
    sub_21BA8877C();
    __swift_mutable_project_boxed_opaque_existential_1(v46, v46[3]);
    sub_21B9B339C();
    sub_21BA888BC();
    v25 = RUIViewContent.anyView.getter();
    sub_21B9B33F0(v43);
    *(&v12->_countAndFlagsBits + v10[6]) = v25;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v23 = v31;
    sub_21B9B3220(v31, v43);
    v24 = v32;
    URLLoadingParameters.init(from:)(v43, v32);
    sub_21B9B3788(v24, v12 + v10[5], type metadata accessor for URLLoadingParameters);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_21BA88BEC();
    v26 = v44;
    v27 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v29 = SingleValueDecodingContainer.ruiXMLElement.getter(v26, v27);
    (*(v37 + 8))(v9, v33);
    *(&v12->_countAndFlagsBits + v10[7]) = v29;
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_21B9B3284(v12, v34, type metadata accessor for LazyUIElement);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return sub_21B9B32EC(v12, type metadata accessor for LazyUIElement);
  }
}

uint64_t sub_21B9B1018@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = type metadata accessor for LazyUIElement(0);
  v71 = *(v2 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v2);
  v72 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEE0, &qword_21BA92450);
  MEMORY[0x28223BE20](v4);
  v74 = (&v64 - v5);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEE8, &qword_21BA92458);
  MEMORY[0x28223BE20](v81);
  v7 = (&v64 - v6);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEF0, &qword_21BA92460);
  MEMORY[0x28223BE20](v77);
  v78 = &v64 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEF8, &qword_21BA92468);
  MEMORY[0x28223BE20](v80);
  v79 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8, &qword_21BA9A460);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0, &unk_21BA92240);
  MEMORY[0x28223BE20](v12 - 8);
  v75 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4C0, &qword_21BA97B90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v64 - v15;
  v17 = type metadata accessor for BuddyMLRenderer(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CF00, &qword_21BA92470);
  MEMORY[0x28223BE20](v76);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v64 - v23;
  v24 = v2;
  v25 = *(v2 + 32);
  v26 = v1;
  v84 = *(v1 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE90, &qword_21BA92388);
  sub_21BA8797C();
  v27 = v83;
  if (v83)
  {
    if (v83 == 1)
    {
      *v7 = *(v1 + *(v24 + 24));
      swift_storeEnumTagMultiPayload();
      sub_21B9B3444();

      return sub_21BA8715C();
    }

    v72 = v4;
    v74 = v7;
    v40 = sub_21BA8655C();
    (*(*(v40 - 8) + 56))(v16, 1, 1, v40);
    v41 = sub_21BA864AC();
    (*(*(v41 - 8) + 56))(v75, 1, 1, v41);
    v42 = sub_21B9DDCB8();
    v43 = *((*MEMORY[0x277D85000] & **v42) + 0x90);
    v44 = *v42;
    v69 = v43();

    v45 = v26;
    v68 = sub_21B9B0238();
    v71 = v24;
    v46 = *(v26 + *(v24 + 48));
    if (!v46)
    {
      type metadata accessor for XMLUIData();
      sub_21B9B39F8(&qword_27CD9BAC8, type metadata accessor for XMLUIData, &protocol conformance descriptor for XMLUIData);
      result = sub_21BA86CFC();
      __break(1u);
      return result;
    }

    v47 = sub_21BA3F420();
    v66 = v48;
    v67 = v47;
    v50 = v49;
    v65 = sub_21BA3F424();
    v52 = v51;
    v54 = v53;
    v55 = v70;
    sub_21BA3F41C();
    v56 = v27;
    sub_21BA3E69C(v27, v16, v75, v69, v67, v66, v50 & 1, v65, v19, v52, v54 & 1, v55, v68, v46);
    KeyPath = swift_getKeyPath();
    v58 = *(v45 + *(v71 + 28));
    sub_21B9B3788(v19, v21, type metadata accessor for BuddyMLRenderer);
    v59 = &v21[*(v76 + 36)];
    *v59 = KeyPath;
    v59[1] = v58;
    v60 = v21;
    v61 = v73;
    sub_21B9AB6D4(v60, v73, &qword_27CD9CF00, &qword_21BA92470);
    sub_21B9AFF80(v61, v78, &qword_27CD9CF00, &qword_21BA92470);
    swift_storeEnumTagMultiPayload();
    sub_21B9B34D0();
    sub_21B9B3600();
    v62 = v58;
    v63 = v79;
    sub_21BA8715C();
    sub_21B9AFF80(v63, v74, &qword_27CD9CEF8, &qword_21BA92468);
    swift_storeEnumTagMultiPayload();
    sub_21B9B3444();
    sub_21BA8715C();
    sub_21B9B0044(v27);
    sub_21B9ABAAC(v63, &qword_27CD9CEF8, &qword_21BA92468);
    v37 = v61;
    v38 = &qword_27CD9CF00;
    v39 = &qword_21BA92470;
  }

  else
  {
    v29 = v4;
    v30 = *(v1 + *(v24 + 24));
    v31 = v72;
    sub_21B9B3284(v1, v72, type metadata accessor for LazyUIElement);
    v32 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v33 = swift_allocObject();
    sub_21B9B3788(v31, v33 + v32, type metadata accessor for LazyUIElement);
    v34 = v74;
    v35 = (v74 + *(v29 + 36));
    sub_21BA86B5C();
    sub_21BA87FFC();
    *v35 = &unk_21BA92488;
    v35[1] = v33;
    *v34 = v30;
    sub_21B9AFF80(v34, v78, &qword_27CD9CEE0, &qword_21BA92450);
    swift_storeEnumTagMultiPayload();
    sub_21B9B34D0();
    sub_21B9B3600();

    v36 = v79;
    sub_21BA8715C();
    sub_21B9AFF80(v36, v7, &qword_27CD9CEF8, &qword_21BA92468);
    swift_storeEnumTagMultiPayload();
    sub_21B9B3444();
    sub_21BA8715C();
    sub_21B9ABAAC(v36, &qword_27CD9CEF8, &qword_21BA92468);
    v37 = v34;
    v38 = &qword_27CD9CEE0;
    v39 = &qword_21BA92450;
  }

  return sub_21B9ABAAC(v37, v38, v39);
}

uint64_t sub_21B9B1944@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B9E07DC();
  *a1 = result;
  return result;
}

uint64_t sub_21B9B1970(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_21B9E086C(v1);
}

uint64_t sub_21B9B19A0()
{
  v0[2] = sub_21BA87FEC();
  v0[3] = sub_21BA87FDC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21B9B1A4C;

  return sub_21B9B1BE8();
}

uint64_t sub_21B9B1A4C()
{

  v1 = sub_21BA87F9C();

  return MEMORY[0x2822009F8](sub_21B9B1B88, v1, v0);
}

uint64_t sub_21B9B1B88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B9B1BE8()
{
  v1[11] = v0;
  v2 = sub_21BA8673C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = sub_21BA864AC();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0, &unk_21BA92240);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  sub_21BA87FEC();
  v1[23] = sub_21BA87FDC();
  v5 = sub_21BA87F9C();
  v1[24] = v5;
  v1[25] = v4;

  return MEMORY[0x2822009F8](sub_21B9B1DA0, v5, v4);
}

uint64_t sub_21B9B1DA0()
{
  v42 = v0;
  v1 = sub_21B9B0054();
  *(v0 + 208) = v1;
  if (!v1)
  {

LABEL_7:
    v19 = *(v0 + 120);
    v20 = *(v0 + 96);
    v21 = *(v0 + 104);
    v22 = sub_21B9E0270();
    (*(v21 + 16))(v19, v22, v20);
    v23 = sub_21BA8671C();
    v24 = sub_21BA881FC();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 120);
    v27 = *(v0 + 96);
    v28 = *(v0 + 104);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_21B9B2A60(0x2928495564616F6CLL, 0xE800000000000000, &v41);
      _os_log_impl(&dword_21B93D000, v23, v24, "%s Unable to get datasource or url for lazyUI", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x21CEFF180](v30, -1, -1);
      MEMORY[0x21CEFF180](v29, -1, -1);
    }

    (*(v28 + 8))(v26, v27);
    v31 = *(v0 + 88);
    *(v0 + 16) = *(v31 + *(type metadata accessor for LazyUIElement(0) + 32));
    *(v0 + 64) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE90, &qword_21BA92388);
    sub_21BA8798C();

    v32 = *(v0 + 8);

    return v32();
  }

  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 176);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 88);
  v9 = type metadata accessor for LazyUIElement(0);
  *(v0 + 216) = v9;
  v10 = v8 + *(v9 + 20);
  sub_21B9AFF80(v10, v5, &qword_27CD9DBA0, &unk_21BA92240);
  v11 = *(v6 + 48);
  if (v11(v5, 1, v7) == 1)
  {
    v12 = *(v0 + 176);
LABEL_6:

    swift_unknownObjectRelease();
    sub_21B9ABAAC(v12, &qword_27CD9DBA0, &unk_21BA92240);
    goto LABEL_7;
  }

  v39 = v4;
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v16 = *(v0 + 128);
  v15 = *(v0 + 136);
  v40 = *(v0 + 168);
  sub_21BA863FC();
  v17 = *(v15 + 8);
  *(v0 + 224) = v17;
  *(v0 + 232) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v16);
  sub_21B9B040C(v14);
  sub_21BA8647C();

  sub_21B9ABAAC(v14, &qword_27CD9DBA0, &unk_21BA92240);
  v18 = v11(v40, 1, v16);
  v12 = *(v0 + 168);
  if (v18 == 1)
  {
    goto LABEL_6;
  }

  (*(*(v0 + 136) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 128));
  v34 = (v10 + *(type metadata accessor for URLLoadingParameters(0) + 24));
  v35 = *v34;
  v36 = v34[1];
  v37 = swift_task_alloc();
  *(v0 + 240) = v37;
  *v37 = v0;
  v37[1] = sub_21B9B21D4;
  v38 = *(v0 + 152);

  return sub_21BA413E4(v38, v3, v39, v35, v36);
}

uint64_t sub_21B9B21D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[31] = a1;
  v5[32] = a2;
  v5[33] = v2;

  v6 = v4[25];
  v7 = v4[24];
  if (v2)
  {
    v8 = sub_21B9B26DC;
  }

  else
  {
    v8 = sub_21B9B231C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21B9B231C()
{
  v50 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];

  v4 = Data.xmlElement()(v3, v1);
  if (v2)
  {
    sub_21B9B37F0(v0[31], v0[32]);
    v5 = v0[18];
    v6 = v0[19];
    v7 = v0[16];
    v8 = v0[17];
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    v12 = sub_21B9E0270();
    (*(v10 + 16))(v9, v12, v11);
    (*(v8 + 16))(v5, v6, v7);
    v13 = sub_21BA8671C();
    v14 = sub_21BA881FC();
    v15 = os_log_type_enabled(v13, v14);
    v48 = v0[28];
    v16 = v0[18];
    v17 = v0[16];
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];
    if (v15)
    {
      v43 = v14;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 136315138;
      v44 = v20;
      v46 = v18;
      v23 = sub_21BA863FC();
      v25 = v24;
      v48(v16, v17);
      v26 = sub_21B9B2A60(v23, v25, &v49);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_21B93D000, v13, v43, "Unable to load lazy UI for url: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x21CEFF180](v22, -1, -1);
      MEMORY[0x21CEFF180](v21, -1, -1);

      (*(v19 + 8))(v46, v44);
    }

    else
    {

      v48(v16, v17);
      (*(v19 + 8))(v18, v20);
    }

    v35 = v0[28];
    v36 = v0[19];
    v37 = v0[16];
    v38 = v0[11] + *(v0[27] + 32);
    v39 = *v38;
    v40 = *(v38 + 8);
    v0[4] = *v38;
    v0[5] = v40;
    v0[9] = 1;
    sub_21B9B0034(v39);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE90, &qword_21BA92388);
    sub_21BA8798C();
    swift_unknownObjectRelease();

    sub_21B9B0044(v39);

    v35(v36, v37);
  }

  else
  {
    v27 = v0[11] + *(v0[27] + 32);
    v28 = *v27;
    v29 = *(v27 + 8);
    v0[6] = *v27;
    v0[10] = v4;
    v31 = v0[31];
    v30 = v0[32];
    v47 = v0[28];
    v45 = v0[19];
    v32 = v0[16];
    v0[7] = v29;
    v33 = v4;
    sub_21B9B0034(v28);

    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE90, &qword_21BA92388);
    sub_21BA8798C();
    swift_unknownObjectRelease();
    sub_21B9B37F0(v31, v30);

    sub_21B9B0044(v28);

    v47(v45, v32);
  }

  v41 = v0[1];

  return v41();
}

uint64_t sub_21B9B26DC()
{
  v37 = v0;

  v35 = v0[33];
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = sub_21B9E0270();
  (*(v6 + 16))(v5, v8, v7);
  (*(v3 + 16))(v2, v1, v4);
  v9 = sub_21BA8671C();
  v10 = sub_21BA881FC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[28];
  v13 = v0[18];
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  if (v11)
  {
    v32 = v10;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136315138;
    v33 = v17;
    v34 = v15;
    v20 = sub_21BA863FC();
    v22 = v21;
    v12(v13, v14);
    v23 = sub_21B9B2A60(v20, v22, &v36);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_21B93D000, v9, v32, "Unable to load lazy UI for url: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x21CEFF180](v19, -1, -1);
    MEMORY[0x21CEFF180](v18, -1, -1);

    (*(v16 + 8))(v34, v33);
  }

  else
  {

    v12(v13, v14);
    (*(v16 + 8))(v15, v17);
  }

  v24 = v0[28];
  v25 = v0[19];
  v26 = v0[11] + *(v0[27] + 32);
  v27 = *v26;
  v28 = *(v26 + 8);
  v0[4] = *v26;
  v29 = v0[16];
  v0[5] = v28;
  v0[9] = 1;
  sub_21B9B0034(v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE90, &qword_21BA92388);
  sub_21BA8798C();
  swift_unknownObjectRelease();

  sub_21B9B0044(v27);

  v24(v25, v29);

  v30 = v0[1];

  return v30();
}

uint64_t sub_21B9B2A00@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_21B9B2A0C()
{
  result = qword_27CD9CEB0;
  if (!qword_27CD9CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CEB0);
  }

  return result;
}

unint64_t sub_21B9B2A60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21B9B2B2C(v11, 0, 0, 1, a1, a2);
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
    sub_21B9AFDF0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21B9B2B2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21B9B2C38(a5, a6);
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
    result = sub_21BA8860C();
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

void *sub_21B9B2C38(uint64_t a1, unint64_t a2)
{
  v3 = sub_21B9B2C84(a1, a2);
  sub_21B9B2DB4(&unk_282D612C8);
  return v3;
}

void *sub_21B9B2C84(uint64_t a1, unint64_t a2)
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

  v6 = sub_21B9B2EA0(v5, 0);
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

  result = sub_21BA8860C();
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
        v10 = sub_21BA87E0C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21B9B2EA0(v10, 0);
        result = sub_21BA8858C();
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

uint64_t sub_21B9B2DB4(uint64_t result)
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

  result = sub_21B9B2F14(result, v11, 1, v3);
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

void *sub_21B9B2EA0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CF90, &unk_21BA93EC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21B9B2F14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CF90, &unk_21BA93EC0);
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

uint64_t sub_21B9B302C(uint64_t a1)
{
  v2 = sub_21BA86A4C();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x21CEFC090](v5);
}

unint64_t sub_21B9B30F4()
{
  result = qword_27CD9CEC0;
  if (!qword_27CD9CEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9CE98, &qword_21BA92408);
    sub_21B9B35B8(&qword_27CD9CEC8, &qword_27CD9E120, &qword_21BA97530, MEMORY[0x277CDD7F0]);
    sub_21B9B35B8(&qword_27CD9CED0, &qword_27CD9CEB8, &qword_21BA92418, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CEC0);
  }

  return result;
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

uint64_t sub_21B9B3220(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21B9B3284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B9B32EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_21B9B339C()
{
  result = qword_27CD9CED8;
  if (!qword_27CD9CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CED8);
  }

  return result;
}

unint64_t sub_21B9B3444()
{
  result = qword_27CD9CF08;
  if (!qword_27CD9CF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9CEF8, &qword_21BA92468);
    sub_21B9B34D0();
    sub_21B9B3600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CF08);
  }

  return result;
}

unint64_t sub_21B9B34D0()
{
  result = qword_27CD9CF10;
  if (!qword_27CD9CF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9CF00, &qword_21BA92470);
    sub_21B9B39F8(&qword_27CD9E570, type metadata accessor for BuddyMLRenderer, &unk_21BA9B858);
    sub_21B9B35B8(&qword_27CD9CF18, &qword_27CD9CF20, &qword_21BA92478, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CF10);
  }

  return result;
}

uint64_t sub_21B9B35B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_21B9B3600()
{
  result = qword_27CD9CF28;
  if (!qword_27CD9CF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9CEE0, &qword_21BA92450);
    sub_21B9B39F8(&qword_27CD9CF30, MEMORY[0x277CDD8B8], MEMORY[0x277CDD8A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CF28);
  }

  return result;
}

uint64_t sub_21B9B36BC()
{
  type metadata accessor for LazyUIElement(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21B9AC1F4;

  return sub_21B9B19A0();
}

uint64_t sub_21B9B3788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B9B37F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_21B9B3848()
{
  result = qword_27CD9CF38;
  if (!qword_27CD9CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CF38);
  }

  return result;
}

unint64_t sub_21B9B38A0()
{
  result = qword_27CD9CF40;
  if (!qword_27CD9CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CF40);
  }

  return result;
}

unint64_t sub_21B9B38F8()
{
  result = qword_27CD9CF48;
  if (!qword_27CD9CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CF48);
  }

  return result;
}

uint64_t sub_21B9B394C(void *a1)
{
  a1[1] = sub_21B9B39F8(&qword_27CD9CF50, type metadata accessor for LazyUIElement, &unk_21BA92634);
  a1[2] = sub_21B9B39F8(&qword_27CD9CF58, type metadata accessor for LazyUIElement, &unk_21BA9265C);
  result = sub_21B9B39F8(&qword_27CD9CF60, type metadata accessor for LazyUIElement, &unk_21BA925E4);
  a1[3] = result;
  return result;
}

uint64_t sub_21B9B39F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21B9B3A90(uint64_t a1)
{
  type metadata accessor for URLLoadingParameters(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RUIXMLElement(319);
    if (v2 <= 0x3F)
    {
      sub_21B9B3BD4();
      if (v3 <= 0x3F)
      {
        sub_21B93FC24(319, &unk_27CD9BC90, &qword_27CD9CF70, &qword_21BA959E0);
        if (v4 <= 0x3F)
        {
          sub_21B9B3C24(319);
          if (v5 <= 0x3F)
          {
            sub_21B93FC24(319, &qword_27CD9BC60, &qword_27CD9DBA0, &unk_21BA92240);
            if (v6 <= 0x3F)
            {
              sub_21B9B3C7C(319);
              if (v7 <= 0x3F)
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

void sub_21B9B3BD4()
{
  if (!qword_27CD9CF68)
  {
    v0 = sub_21BA879AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9CF68);
    }
  }
}

void sub_21B9B3C24(uint64_t a1)
{
  if (!qword_27CD9CF78)
  {
    type metadata accessor for RUIDecodingUserInfo();
    v1 = sub_21BA86A5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD9CF78);
    }
  }
}

void sub_21B9B3C7C(uint64_t a1)
{
  if (!qword_27CD9BC30)
  {
    type metadata accessor for XMLUIData();
    sub_21B9B39F8(&qword_27CD9BAC8, type metadata accessor for XMLUIData, &protocol conformance descriptor for XMLUIData);
    v1 = sub_21BA86D1C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD9BC30);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8RemoteUI13LazyUIElementV8UILoaderO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21B9B3D34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B9B3D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_21B9B3DE4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_21B9B3E24()
{
  result = qword_27CD9CF80;
  if (!qword_27CD9CF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9CF88, &unk_21BA92700);
    sub_21B9B3444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CF80);
  }

  return result;
}

uint64_t sub_21B9B3F08()
{
  swift_getKeyPath();
  (*(*v0 + 208))();

  swift_beginAccess();
}

uint64_t sub_21B9B3F84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_21B9B3FD0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t sub_21B9B4024(uint64_t a1)
{
  swift_beginAccess();

  sub_21B9B5464(v3, a1);
  v5 = v4;

  if (v5)
  {
    v1[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v1;
    v10 = a1;
    (*(*v1 + 216))(v8);
  }
}

uint64_t (*sub_21B9B4138(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 208))();

  v4[5] = OBJC_IVAR____TtC8RemoteUI24RUIToolbarContentManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_21B9B6014(&qword_27CD9CF98, type metadata accessor for RUIToolbarContentManager, &unk_21BA92780);
  sub_21BA8660C();

  v4[7] = sub_21B9B3EB4(v4);
  return sub_21B9B4274;
}

uint64_t sub_21B9B42D0()
{
  swift_getKeyPath();
  (*(*v0 + 208))();

  swift_beginAccess();
  return v0[24];
}

uint64_t sub_21B9B4348@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_21B9B43DC(int a1)
{
  result = swift_beginAccess();
  v4 = v1[24];
  if (v4 != 2)
  {
    if (a1 != 2 && ((v4 ^ a1) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x28223BE20](KeyPath);
    v7 = v1;
    v8 = a1;
    (*(*v1 + 216))(v6);
  }

  if (a1 != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  v1[24] = a1;
  return result;
}

uint64_t (*sub_21B9B44F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 208))();

  v4[5] = OBJC_IVAR____TtC8RemoteUI24RUIToolbarContentManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_21B9B6014(&qword_27CD9CF98, type metadata accessor for RUIToolbarContentManager, &unk_21BA92780);
  sub_21BA8660C();

  v4[7] = sub_21B9B4280(v4);
  return sub_21B9B462C;
}

void sub_21B9B4638(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_21BA865FC();

  free(v3);
}

void *sub_21B9B46CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v51 = a4;
  v8 = type metadata accessor for RUIToolbarContentProvider(0);
  v9 = *(v8 - 8);
  v52 = v8;
  v53 = v9;
  MEMORY[0x28223BE20](v8);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  v65 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  v12 = (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v13 = *(*v4 + 128);
  v50 = v4;
  v14 = v13(v12);
  v15 = v14;
  v16 = v14 + 64;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 64);
  v20 = (v17 + 63) >> 6;

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  while (v19)
  {
LABEL_10:
    v25 = *(*(v15 + 56) + ((v22 << 9) | (8 * __clz(__rbit64(v19)))));
    v26 = *(v25 + 16);
    v27 = v23[2];
    v28 = v27 + v26;
    if (__OFADD__(v27, v26))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v28 > v23[3] >> 1)
    {
      if (v27 <= v28)
      {
        v29 = v27 + v26;
      }

      else
      {
        v29 = v27;
      }

      result = sub_21B9B528C(result, v29, 1, v23);
      v23 = result;
    }

    v19 &= v19 - 1;
    if (*(v25 + 16))
    {
      if ((v23[3] >> 1) - v23[2] < v26)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v26)
      {
        v30 = v23[2];
        v31 = __OFADD__(v30, v26);
        v32 = v30 + v26;
        if (v31)
        {
          goto LABEL_32;
        }

        v23[2] = v32;
      }
    }

    else
    {

      if (v26)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v24 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v24);
    ++v22;
    if (v19)
    {
      v22 = v24;
      goto LABEL_10;
    }
  }

  v33 = v23[2];
  if (v33)
  {
    v34 = v54;
    v35 = v23 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v36 = *(v53 + 72);
    v52 = v23;
    v53 = v36;
    do
    {
      sub_21B9B5DB0(v35, v34);
      v37 = v64;
      v38 = v65;
      v39 = __swift_project_boxed_opaque_existential_1(v63, v64);
      MEMORY[0x28223BE20](v39);
      *(&v50 - 2) = v54;
      v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9CFA0, &qword_21BA92760);
      v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9CFA8, &unk_21BA92768);
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v59 = v41;
      *(&v59 + 1) = OpaqueTypeConformance2;
      v43 = swift_getOpaqueTypeConformance2();
      *&v59 = v37;
      *(&v59 + 1) = v40;
      v60 = v38;
      OpaqueTypeMetadata2 = v43;
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      v55 = v37;
      v56 = v40;
      v57 = v38;
      v58 = v43;
      v62 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(&v59);
      sub_21BA8782C();
      v34 = v54;
      __swift_destroy_boxed_opaque_existential_1(v63);
      sub_21B9B5E1C(&v59, v63);
      sub_21B9B5E34(v34);
      v35 += v53;
      --v33;
    }

    while (v33);
  }

  if ((*(*v50 + 176))(v44) != 2)
  {
    v45 = v64;
    v46 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    *&v59 = v45;
    *(&v59 + 1) = v46;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v55 = v45;
    v56 = v46;
    v62 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(&v59);
    sub_21BA877DC();
    __swift_destroy_boxed_opaque_existential_1(v63);
    sub_21B9B5E1C(&v59, v63);
  }

  v47 = v64;
  v48 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v49 = sub_21B9FD000(v47, v48);
  *v51 = v49;
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_21B9B4C14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFA8, &unk_21BA92768);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14[-1] - v4);
  v6 = type metadata accessor for RUIToolbarContentProvider(0);
  (*(a1 + *(v6 + 20)))(v14);
  v7 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v8 = MEMORY[0x28223BE20](v7);
  (*(v10 + 16))(&v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *v5 = sub_21BA873EC();
  __swift_destroy_boxed_opaque_existential_1(v14);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CEFC4F0](v5, v2, OpaqueTypeConformance2);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21B9B4F34()
{

  v1 = OBJC_IVAR____TtC8RemoteUI24RUIToolbarContentManager___observationRegistrar;
  v2 = sub_21BA8662C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21B9B4FD8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_21B9B5A74(MEMORY[0x277D84F90]);
  *(v0 + 24) = 2;
  sub_21BA8661C();
  return v0;
}

unint64_t sub_21B9B5034(uint64_t a1)
{
  sub_21BA8655C();
  sub_21B9B6014(&qword_27CD9CFE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_21BA87BFC();

  return sub_21B9B50CC(a1, v2);
}

unint64_t sub_21B9B50CC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_21BA8655C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_21B9B6014(&qword_27CD9E7E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v16 = sub_21BA87C7C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_21B9B528C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFC0, &qword_21BA927E8);
  v10 = *(type metadata accessor for RUIToolbarContentProvider(0) - 8);
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
  v15 = *(type metadata accessor for RUIToolbarContentProvider(0) - 8);
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

void sub_21B9B5464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RUIToolbarContentProvider(0);
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = sub_21BA8655C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v66 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFC8, &qword_21BA927F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v60 = a2;
    v62 = &v54 - v20;
    v22 = 0;
    v23 = *(a1 + 64);
    v54 = a1 + 64;
    v24 = 1 << *(a1 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v23;
    v27 = (v24 + 63) >> 6;
    v67 = (v12 + 32);
    v58 = v12 + 16;
    v59 = (v12 + 8);
    v61 = v18;
    v55 = v27;
    v56 = v12;
    v63 = a1;
    v57 = v11;
    while (v26)
    {
      v65 = (v26 - 1) & v26;
      v28 = __clz(__rbit64(v26)) | (v22 << 6);
LABEL_17:
      (*(v12 + 16))(v64, *(a1 + 48) + *(v12 + 72) * v28, v11, v21);
      v33 = *(*(a1 + 56) + 8 * v28);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFD0, &qword_21BA927F8);
      v35 = *(v34 + 48);
      v18 = v61;
      (*(v12 + 32))();
      *&v18[v35] = v33;
      (*(*(v34 - 8) + 56))(v18, 0, 1, v34);

LABEL_18:
      v36 = v62;
      sub_21B9B5FA4(v18, v62);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFD0, &qword_21BA927F8);
      if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
      {
        return;
      }

      v38 = *(v37 + 48);
      v39 = v66;
      (*v67)(v66, v36, v11);
      v40 = *(v36 + v38);
      v41 = v60;
      v42 = sub_21B9B5034(v39);
      v44 = v43;
      (*v59)(v39, v11);
      if ((v44 & 1) == 0 || (v45 = *(*(v41 + 56) + 8 * v42), v46 = *(v45 + 16), v46 != *(v40 + 16)))
      {
LABEL_32:

        return;
      }

      a1 = v63;
      if (v46 && v45 != v40)
      {
        v47 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v48 = v45 + v47;
        v49 = v40 + v47;

        v50 = 0;
        while (v50 < *(v45 + 16))
        {
          v51 = *(v69 + 72) * v50;
          sub_21B9B5DB0(v48 + v51, v10);
          if (v50 >= *(v40 + 16))
          {
            goto LABEL_36;
          }

          sub_21B9B5DB0(v49 + v51, v7);
          sub_21B9B6014(&qword_27CD9CFD8, type metadata accessor for RUIToolbarContentProvider, &unk_21BA9D418);
          v52 = sub_21BA87C7C();
          sub_21B9B5E34(v7);
          sub_21B9B5E34(v10);
          if ((v52 & 1) == 0)
          {

            goto LABEL_32;
          }

          if (v46 == ++v50)
          {

            a1 = v63;
            v18 = v61;
            goto LABEL_6;
          }
        }

        goto LABEL_35;
      }

LABEL_6:

      v12 = v56;
      v11 = v57;
      v27 = v55;
      v26 = v65;
    }

    if (v27 <= v22 + 1)
    {
      v29 = v22 + 1;
    }

    else
    {
      v29 = v27;
    }

    v30 = v29 - 1;
    while (1)
    {
      v31 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v31 >= v27)
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFD0, &qword_21BA927F8);
        (*(*(v53 - 8) + 56))(v18, 1, 1, v53);
        v65 = 0;
        v22 = v30;
        goto LABEL_18;
      }

      v32 = *(v54 + 8 * v31);
      ++v22;
      if (v32)
      {
        v65 = (v32 - 1) & v32;
        v28 = __clz(__rbit64(v32)) | (v31 << 6);
        v22 = v31;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

unint64_t sub_21B9B5A74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFE8, &unk_21BA92800);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9E7D0, &qword_21BA97F60);
    v7 = sub_21BA8872C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B9B605C(v9, v5);
      result = sub_21B9B5034(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21BA8655C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_21B9B5C48()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
}

uint64_t type metadata accessor for RUIToolbarContentManager(uint64_t a1)
{
  result = qword_27CDA19E0;
  if (!qword_27CDA19E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B9B5CF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21B9B5DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RUIToolbarContentProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9B5E1C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21B9B5E34(uint64_t a1)
{
  v2 = type metadata accessor for RUIToolbarContentProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B9B5E90()
{
  result = qword_27CD9CFB8;
  if (!qword_27CD9CFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9CFB0, &qword_21BA92778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CFB8);
  }

  return result;
}

uint64_t sub_21B9B5EFC(uint64_t a1)
{
  result = sub_21BA8662C();
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

uint64_t sub_21B9B5FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFC8, &qword_21BA927F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9B6014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21B9B605C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFE8, &unk_21BA92800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_21B9B60D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFF0, &qword_21BA92818);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = &v26 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFF8, &qword_21BA92820);
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v29 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D000, &qword_21BA92828);
  v34 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  sub_21BA8815C();
  v28 = 0;
  if ((sub_21BA88C4C() & 1) != 0 && (sub_21BA8811C() & 1) == 0)
  {
    result = sub_21BA8812C();
    if (__OFSUB__(v36[0], 1))
    {
      __break(1u);
      return result;
    }

    --v36[0];
    sub_21BA88C2C();
  }

  v31 = v5;
  v32 = a5;
  sub_21BA88C3C();
  sub_21B9B69F0(&qword_27CD9D008, MEMORY[0x277D84ED0]);
  sub_21BA880EC();
  sub_21BA8812C();
  if (v37 == v36[0])
  {
    (*(v33 + 8))(v14, v10);
    v36[0] = v35;
    swift_getAssociatedTypeWitness();
    sub_21BA87F8C();

    swift_getWitnessTable();
    sub_21BA881BC();
  }

  else
  {
    v19 = sub_21BA8817C();
    v21 = *v20;
    v26 = v20[1];
    v27 = v21;
    v19(v36, 0);
    (*(v33 + 8))(v14, v10);
    sub_21BA88C3C();
    v22 = v30;
    v23 = sub_21B9B65E4(1);
    MEMORY[0x28223BE20](v23);
    v25 = v31;
    v24 = v32;
    *(&v26 - 4) = a4;
    *(&v26 - 3) = v24;
    *(&v26 - 2) = v25;
    sub_21B9B6770(sub_21B9B672C, (&v26 - 6));
    sub_21B9ABAAC(v22, &qword_27CD9CFF0, &qword_21BA92818);
    v36[0] = v27;
    v36[1] = v26;
    v37 = v35;
    swift_getAssociatedTypeWitness();
    sub_21BA87F8C();

    swift_getWitnessTable();
    sub_21BA8819C();
  }

  return (*(v34 + 8))(v17, v15);
}

uint64_t sub_21B9B65E4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFF8, &qword_21BA92820);
    sub_21B9B69F0(&qword_27CD9D008, MEMORY[0x277D84ED0]);
    sub_21BA880EC();
    sub_21BA8812C();
    sub_21BA8810C();
    if (v4)
    {
      sub_21BA8812C();
    }

    else
    {
      v6 = v3;
    }

    result = sub_21BA8812C();
    if (v5 >= v6)
    {
      sub_21BA8816C();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B9B6770(void (*a1)(uint64_t *), uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFF0, &qword_21BA92818);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D010, &qword_21BA92830);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (v21 - v9);
  sub_21B9AFF80(v2, v6, &qword_27CD9CFF0, &qword_21BA92818);
  sub_21B9AFF80(v6, v10, &qword_27CD9D018, &qword_21BA92838);
  v11 = *(v8 + 44);
  v12 = *(v6 + 1);
  sub_21B9ABAAC(v6, &qword_27CD9D018, &qword_21BA92838);
  *(v10 + v11) = v12;
  v13 = *v10;
  if (v12 != *v10)
  {
    v21[1] = sub_21B9B69F0(&qword_27CD9D020, MEMORY[0x277D84EC0]);
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D018, &qword_21BA92838);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CFF8, &qword_21BA92820);
      sub_21BA87C3C();
      v14 = *(v10 + v11);
      v26 = v14;
      v15 = v10[1];
      v24 = v13;
      v25 = v15;
      sub_21B9B69F0(&qword_27CD9D008, MEMORY[0x277D84ED0]);
      sub_21BA880FC();
      v16 = sub_21BA8817C();
      v18 = *v17;
      v19 = v17[1];
      v16(&v24, 0);
      v24 = v18;
      v25 = v19;
      v22(&v24);
    }

    while (!v3 && v14 != v13);
  }

  return sub_21B9ABAAC(v10, &qword_27CD9D010, &qword_21BA92830);
}

uint64_t sub_21B9B69F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9CFF8, &qword_21BA92820);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_21B9B6A40()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id sub_21B9B6A68()
{
  v1 = [*v0 leadingAnchor];

  return v1;
}

id sub_21B9B6AA0()
{
  v1 = [*v0 trailingAnchor];

  return v1;
}

id sub_21B9B6AD8()
{
  v1 = [*v0 topAnchor];

  return v1;
}

id sub_21B9B6B10()
{
  v1 = [*v0 bottomAnchor];

  return v1;
}

id sub_21B9B6B48()
{
  v1 = [*v0 owningView];

  return v1;
}

unint64_t sub_21B9B6B80()
{
  result = qword_27CD9D028;
  if (!qword_27CD9D028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD9D028);
  }

  return result;
}

uint64_t sub_21B9B6BDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574636572616863;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xED00006174614472;
  }

  if (*a2)
  {
    v5 = 0x6574636572616863;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xED00006174614472;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BA8899C();
  }

  return v8 & 1;
}

uint64_t sub_21B9B6C84()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21B9B6D08(uint64_t a1)
{
  sub_21BA87D8C();
}

uint64_t sub_21B9B6D78(uint64_t a1)
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21B9B6DF8@<X0>(char *a2@<X8>)
{
  v3 = sub_21BA8875C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_21B9B6E58(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x6574636572616863;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xED00006174614472;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21B9B6E98()
{
  if (*v0)
  {
    return 0x6574636572616863;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21B9B6ED4@<X0>(char *a3@<X8>)
{
  v4 = sub_21BA8875C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_21B9B6F44(uint64_t a1)
{
  v2 = sub_21B9B99BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9B6F80(uint64_t a1)
{
  v2 = sub_21B9B99BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t type metadata accessor for HtmlLabelRowElement(uint64_t a1)
{
  result = qword_27CDA1EF0;
  if (!qword_27CDA1EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B9B7008@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HTMLContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HtmlLabelRowElement(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = Decoder.decodeRUIID()();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  *v9 = v10;
  sub_21B9B3220(a1, v14);
  sub_21B9CB1A0(v14, v6);
  sub_21B9B71A0(v6, v9 + *(v7 + 20));
  sub_21B9B7204(v9, a2, type metadata accessor for HtmlLabelRowElement);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21B9B726C(v9);
}

uint64_t sub_21B9B71A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTMLContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9B7204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B9B726C(uint64_t a1)
{
  v2 = type metadata accessor for HtmlLabelRowElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B9B72C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21BA862DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HTMLContent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21BA86FEC();
  v20 = 0;
  v13 = sub_21BA86ECC();
  sub_21B9B7204(v2 + *(a1 + 20), v11, type metadata accessor for HTMLContent);
  (*(v6 + 32))(v8, v11, v5);
  result = sub_21BA8766C();
  v16 = v20;
  *a2 = v12;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = v16;
  *(a2 + 24) = v13;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = result;
  *(a2 + 56) = v17;
  *(a2 + 64) = v15 & 1;
  *(a2 + 72) = v18;
  return result;
}

uint64_t sub_21B9B7478@<X0>(void (**a1)(void *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v131 = a1;
  v119 = a3;
  v3 = sub_21BA8634C();
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D030, &qword_21BA928C0);
  MEMORY[0x28223BE20](v107);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v106 = &v101 - v8;
  v9 = sub_21BA8629C();
  v116 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v109 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = &v101 - v12;
  MEMORY[0x28223BE20](v13);
  v114 = &v101 - v14;
  v113 = sub_21BA861EC();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21BA8762C();
  MEMORY[0x28223BE20](v16 - 8);
  v123 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D038, &qword_21BA928C8);
  MEMORY[0x28223BE20](v18 - 8);
  v122 = &v101 - v19;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D040, &unk_21BA928D0);
  MEMORY[0x28223BE20](v124);
  v125 = &v101 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0, &unk_21BA92240);
  MEMORY[0x28223BE20](v21 - 8);
  v127 = &v101 - v22;
  v135 = sub_21BA8626C();
  v130 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_21BA8624C();
  v128 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v137 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v132 = &v101 - v26;
  v133 = sub_21BA8627C();
  v129 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v110 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D048, &qword_21BA928E0);
  MEMORY[0x28223BE20](v121);
  v29 = &v101 - v28;
  v30 = sub_21BA862DC();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v136 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_21BA87D1C();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BA87CFC();
  v117 = sub_21BA87CCC();
  v38 = v37;
  v39 = *(v34 + 8);
  v131 = v33;
  v39(v36, v33);
  v118 = v38;
  if (v38 >> 60 == 15)
  {
    return (*(v31 + 56))(v119, 1, 1, v30);
  }

  v104 = v31;
  v105 = v30;
  v103 = v9;
  v102 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D050, &qword_21BA928E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BA928B0;
  v42 = *MEMORY[0x277D74098];
  *(inited + 32) = *MEMORY[0x277D74098];
  v43 = *MEMORY[0x277D740C8];
  type metadata accessor for DocumentType(0);
  *(inited + 40) = v43;
  v44 = *MEMORY[0x277D74088];
  *(inited + 64) = v45;
  *(inited + 72) = v44;
  v46 = v42;
  v47 = v43;
  v48 = v44;
  sub_21BA87CFC();
  v49 = sub_21BA87D0C();
  v39(v36, v131);
  *(inited + 104) = MEMORY[0x277D83E88];
  *(inited + 80) = v49;
  v50 = sub_21B9B8ED4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D058, &qword_21BA928F0);
  swift_arrayDestroy();
  v51 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v52 = v117;
  v53 = v118;
  sub_21B9B9144(v117, v118);
  sub_21B9B8FFC(v52, v53, v50, 0);
  sub_21B9B91AC(v52, v53);
  sub_21BA8631C();
  v139 = sub_21BA874AC();
  sub_21B9B91C0();
  sub_21BA862EC();
  v54 = v110;
  sub_21BA8628C();
  v55 = v129;
  v56 = v133;
  v129[2](v29, v54, v133);
  v57 = *(v121 + 36);
  v58 = sub_21B9B9214(&qword_27CD9D068, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  sub_21BA880EC();
  (v55[1])(v54, v56);
  v131 = (v130 + 1);
  v130 = (v128 + 2);
  v129 = (v128 + 4);
  ++v128;
  v59 = v127;
  v60 = v126;
  v121 = v58;
  v120 = v57;
  while (1)
  {
    v61 = v134;
    sub_21BA8812C();
    sub_21B9B9214(&qword_27CD9D070, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v62 = v135;
    v63 = sub_21BA87C7C();
    (*v131)(v61, v62);
    if (v63)
    {
      break;
    }

    v64 = sub_21BA8817C();
    v65 = v132;
    (*v130)(v132);
    v64(&v139, 0);
    sub_21BA8813C();
    v66 = v137;
    (*v129)(v137, v65, v60);
    sub_21B9B925C();
    sub_21BA8625C();
    v67 = sub_21BA864AC();
    if ((*(*(v67 - 8) + 48))(v59, 1, v67) == 1)
    {
      (*v128)(v66, v60);
      sub_21B9ABAAC(v59, &qword_27CD9DBA0, &unk_21BA92240);
    }

    else
    {
      sub_21B9ABAAC(v59, &qword_27CD9DBA0, &unk_21BA92240);
      v68 = v125;
      sub_21BA8623C();
      sub_21BA8761C();
      sub_21BA8788C();
      v69 = v122;
      sub_21BA8763C();
      v70 = sub_21BA8764C();
      (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
      sub_21B9B35B8(&qword_27CD9D080, &qword_27CD9D040, &unk_21BA928D0, MEMORY[0x277D83D30]);
      v71 = sub_21BA862FC();
      sub_21B9B92B0();
      v60 = v126;
      sub_21BA8635C();
      v71(&v139, 0);
      sub_21B9ABAAC(v68, &qword_27CD9D040, &unk_21BA928D0);
      v72 = v137;
      sub_21BA8623C();
      v138 = sub_21BA8787C();
      v73 = sub_21BA862FC();
      sub_21B9B9304();
      sub_21BA8635C();
      v73(&v139, 0);
      v74 = v68;
      v59 = v127;
      sub_21B9ABAAC(v74, &qword_27CD9D040, &unk_21BA928D0);
      (*v128)(v72, v60);
    }
  }

  sub_21B9ABAAC(v29, &qword_27CD9D048, &qword_21BA928E0);
  v75 = v111;
  v76 = v136;
  sub_21BA861CC();
  v77 = sub_21B9B86B4();
  v79 = v78;
  (*(v112 + 8))(v75, v113);
  v80 = v119;
  v81 = v103;
  v82 = v116;
  v83 = v115;
  v84 = v114;
  v85 = v105;
  v86 = v104;
  if (!v79)
  {
    goto LABEL_15;
  }

  if (v77 == 10 && v79 == 0xE100000000000000)
  {

    goto LABEL_13;
  }

  v87 = sub_21BA8899C();

  if ((v87 & 1) == 0)
  {
LABEL_15:
    sub_21B9B91AC(v117, v118);
    (*(v86 + 32))(v80, v76, v85);
    return (*(v86 + 56))(v80, 0, 1, v85);
  }

LABEL_13:
  sub_21BA861DC();
  v88 = v109;
  sub_21BA862AC();
  sub_21B9B9214(&qword_27CD9D090, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  sub_21BA8639C();
  v89 = *(v82 + 8);
  v89(v88, v81);
  sub_21B9B9214(&qword_27CD9D098, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
  result = sub_21BA87C6C();
  if (result)
  {
    v90 = *(v82 + 32);
    v91 = v106;
    v90(v106, v84, v81);
    v92 = v107;
    v90((v91 + *(v107 + 48)), v83, v81);
    v93 = v81;
    v94 = v102;
    sub_21B9AFF80(v91, v102, &qword_27CD9D030, &qword_21BA928C0);
    v95 = *(v92 + 48);
    v96 = v125;
    v90(v125, v94, v93);
    v89((v94 + v95), v93);
    sub_21B9B9358(v91, v94);
    v90((v96 + *(v124 + 36)), (v94 + *(v92 + 48)), v93);
    v89(v94, v93);
    sub_21B9B35B8(&qword_27CD9D080, &qword_27CD9D040, &unk_21BA928D0, MEMORY[0x277D83D30]);
    v97 = v136;
    sub_21BA8630C();
    v98 = v119;
    sub_21BA8632C();
    sub_21B9B91AC(v117, v118);
    sub_21B9ABAAC(v96, &qword_27CD9D040, &unk_21BA928D0);
    v99 = v104;
    v100 = v105;
    (*(v104 + 8))(v97, v105);
    return (*(v99 + 56))(v98, 0, 1, v100);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B9B86B4()
{
  v0 = sub_21BA8629C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-v5];
  sub_21BA861EC();
  sub_21B9B9214(&qword_27CD9D148, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  v7 = 0;
  if ((sub_21BA8811C() & 1) == 0)
  {
    sub_21BA8812C();
    sub_21B9B9214(&qword_27CD9D150, MEMORY[0x277CC8B30], MEMORY[0x277CC8B38]);
    sub_21BA87C2C();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v9 = sub_21BA8817C();
    v7 = *v10;

    v9(v12, 0);
    v8(v6, v0);
  }

  return v7;
}

uint64_t sub_21B9B88B4(uint64_t a1, id *a2)
{
  result = sub_21BA87C9C();
  *a2 = 0;
  return result;
}

uint64_t sub_21B9B892C(uint64_t a1, id *a2)
{
  v3 = sub_21BA87CAC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21B9B89AC@<X0>(uint64_t *a2@<X8>)
{
  sub_21BA87CBC();
  v3 = sub_21BA87C8C();

  *a2 = v3;
  return result;
}

uint64_t sub_21B9B89F0(uint64_t a1)
{
  v2 = sub_21B9B9214(&qword_27CD9D130, type metadata accessor for DocumentReadingOptionKey, &unk_21BA92CB4);
  v3 = sub_21B9B9214(&qword_27CD9D138, type metadata accessor for DocumentReadingOptionKey, &unk_21BA92C5C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21B9B8AAC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21BA87C8C();

  *a2 = v3;
  return result;
}

uint64_t sub_21B9B8AF4(uint64_t a1)
{
  v2 = sub_21B9B9214(&qword_27CD9D120, type metadata accessor for DocumentType, &unk_21BA92DF4);
  v3 = sub_21B9B9214(&qword_27CD9D128, type metadata accessor for DocumentType, &unk_21BA92D9C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21B9B8BB0()
{
  v0 = sub_21BA87CBC();
  v1 = MEMORY[0x21CEFD180](v0);

  return v1;
}

uint64_t sub_21B9B8BEC(uint64_t a1)
{
  sub_21BA87CBC();
  sub_21BA87D8C();
}

uint64_t sub_21B9B8C40(uint64_t a1)
{
  sub_21BA87CBC();
  sub_21BA88BAC();
  sub_21BA87D8C();
  v1 = sub_21BA88BCC();

  return v1;
}

uint64_t sub_21B9B8CB4(void *a1, uint64_t *a2)
{
  v2 = sub_21BA87CBC();
  v4 = v3;
  if (v2 == sub_21BA87CBC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21BA8899C();
  }

  return v7 & 1;
}

unint64_t sub_21B9B8D3C(uint64_t a1)
{
  sub_21BA87CBC();
  sub_21BA88BAC();
  sub_21BA87D8C();
  v2 = sub_21BA88BCC();

  return sub_21B9B8DD0(a1, v2);
}

unint64_t sub_21B9B8DD0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21BA87CBC();
      v8 = v7;
      if (v6 == sub_21BA87CBC() && v8 == v9)
      {
        break;
      }

      v11 = sub_21BA8899C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_21B9B8ED4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D158, &unk_21BA92E80);
    v3 = sub_21BA8872C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B9AFF80(v4, &v11, &qword_27CD9D058, &qword_21BA928F0);
      v5 = v11;
      result = sub_21B9B8D3C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21B9AFF70(&v12, (v3[7] + 32 * result));
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

id sub_21B9B8FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = sub_21BA864CC();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_21B9B9214(&qword_27CD9D130, type metadata accessor for DocumentReadingOptionKey, &unk_21BA92CB4);
  v8 = sub_21BA87BBC();

  v13[0] = 0;
  v9 = [v5 initWithData:v7 options:v8 documentAttributes:a4 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_21BA8638C();

    swift_willThrow();
  }

  return v9;
}

uint64_t sub_21B9B9144(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21B9B9158(a1, a2);
  }

  return a1;
}

uint64_t sub_21B9B9158(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21B9B91AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21B9B37F0(result, a2);
  }

  return result;
}

unint64_t sub_21B9B91C0()
{
  result = qword_27CD9D060;
  if (!qword_27CD9D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D060);
  }

  return result;
}

uint64_t sub_21B9B9214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21B9B925C()
{
  result = qword_27CD9D078;
  if (!qword_27CD9D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D078);
  }

  return result;
}

unint64_t sub_21B9B92B0()
{
  result = qword_27CD9D088;
  if (!qword_27CD9D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D088);
  }

  return result;
}

unint64_t sub_21B9B9304()
{
  result = qword_27CD9E250;
  if (!qword_27CD9E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E250);
  }

  return result;
}

uint64_t sub_21B9B9358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D030, &qword_21BA928C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B9B93CC()
{
  result = qword_27CD9D0A0;
  if (!qword_27CD9D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D0A0);
  }

  return result;
}

unint64_t sub_21B9B9424()
{
  result = qword_27CD9D0A8;
  if (!qword_27CD9D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D0A8);
  }

  return result;
}

unint64_t sub_21B9B947C()
{
  result = qword_27CD9D0B0;
  if (!qword_27CD9D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D0B0);
  }

  return result;
}

uint64_t sub_21B9B94D0(void *a1)
{
  a1[1] = sub_21B9B9214(&qword_27CD9D0B8, type metadata accessor for HtmlLabelRowElement, &unk_21BA92AB4);
  a1[2] = sub_21B9B9214(&qword_27CD9D0C0, type metadata accessor for HtmlLabelRowElement, &unk_21BA92ADC);
  result = sub_21B9B9214(&qword_27CD9D0C8, type metadata accessor for HtmlLabelRowElement, &unk_21BA92A64);
  a1[3] = result;
  return result;
}

uint64_t sub_21B9B95C0(uint64_t a1)
{
  result = type metadata accessor for HTMLContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HtmlLabelRowElement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HtmlLabelRowElement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_21B9B97C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_21B9B99BC()
{
  result = qword_27CD9D140;
  if (!qword_27CD9D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D140);
  }

  return result;
}

uint64_t sub_21B9B9A38@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 200))();

  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v5 = v1[4];
  v9 = v1[3];
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21B9AFF80(v8, &v7, &qword_27CD9D178, &qword_21BA92ED0);
}

uint64_t sub_21B9B9AD8@<X0>(_OWORD **a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 200))();

  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v10[2] = v3[3];
  v10[3] = v6;
  v10[0] = v4;
  v10[1] = v5;
  v7 = v3[2];
  *a2 = v3[1];
  a2[1] = v7;
  a2[2] = v3[3];
  a2[3] = v6;
  return sub_21B9AFF80(v10, &v9, &qword_27CD9D178, &qword_21BA92ED0);
}

uint64_t sub_21B9B9B84(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v4 = *a2;
  swift_getKeyPath();
  v6 = v4;
  v7 = v8;
  (*(*v4 + 208))();
}

void sub_21B9B9C30(void *a1, _OWORD *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = a2[1];
  *(a1 + 1) = *a2;
  *(a1 + 2) = v10;
  v11 = a2[3];
  *(a1 + 3) = a2[2];
  *(a1 + 4) = v11;
  sub_21B9AFF80(a2, &v12, &qword_27CD9D178, &qword_21BA92ED0);
  sub_21B9BAB38(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21B9B9CD0()
{
  v1 = v0;
  sub_21BA87FEC();

  v2 = sub_21BA87FDC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v0;

  v5 = sub_21BA87FDC();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v1;
  sub_21BA87A7C();
  return v8;
}

uint64_t sub_21B9B9DC0@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 32);
  swift_getKeyPath();
  (*(*v3 + 200))();

  *a1 = v3[3] != 0;
  return result;
}

_BYTE *sub_21B9B9E38(_BYTE *result, uint64_t a2)
{
  if ((*result & 1) == 0)
  {
    memset(v7, 0, sizeof(v7));
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x28223BE20](KeyPath);
    v5 = a2;
    v6 = v7;
    (*(*a2 + 208))(v4);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B9B9F58(_OWORD *a1)
{
  *(v2 + 80) = v1;
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  v4 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v4;
  *(v2 + 88) = sub_21BA87FEC();
  *(v2 + 96) = sub_21BA87FDC();
  v6 = sub_21BA87F9C();
  *(v2 + 104) = v6;
  *(v2 + 112) = v5;

  return MEMORY[0x2822009F8](sub_21B9BA004, v6, v5);
}

uint64_t sub_21B9BA004(uint64_t a1)
{
  v2 = v1[10];
  v3 = sub_21BA87FDC();
  v1[15] = v3;
  v4 = swift_task_alloc();
  v1[16] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1 + 2;
  v5 = swift_task_alloc();
  v1[17] = v5;
  *v5 = v1;
  v5[1] = sub_21B9BA118;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v1 + 18, v3, v6, 0x286D7269666E6F63, 0xEE00293A68746977, sub_21B9BA494, v4, v7);
}

uint64_t sub_21B9BA118()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21B9BA278, v3, v2);
}

uint64_t sub_21B9BA278()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21B9BA2DC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D168, &qword_21BA92EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D160, &unk_21BA92E90);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC8RemoteUI19ConfirmationHandler_continuation;
  swift_beginAccess();
  sub_21B9BA7A4(v8, a2 + v11);
  swift_endAccess();
  v12 = a3[1];
  v18[0] = *a3;
  v18[1] = v12;
  v13 = a3[3];
  v18[2] = a3[2];
  v18[3] = v13;
  swift_getKeyPath();
  v16 = a2;
  v17 = v18;
  (*(*a2 + 208))();
}

uint64_t sub_21B9BA49C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D160, &unk_21BA92E90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - v5 + 16;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D168, &qword_21BA92EA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11 + 16;
  v13 = OBJC_IVAR____TtC8RemoteUI19ConfirmationHandler_continuation;
  swift_beginAccess();
  sub_21B9AFF80(v1 + v13, v12, &qword_27CD9D168, &qword_21BA92EA0);
  if ((*(v4 + 48))(v12, 1, v3))
  {
    sub_21B9ABAAC(v12, &qword_27CD9D168, &qword_21BA92EA0);
  }

  else
  {
    (*(v4 + 16))(v6, v12, v3);
    sub_21B9ABAAC(v12, &qword_27CD9D168, &qword_21BA92EA0);
    LOBYTE(v18[0]) = a1 & 1;
    sub_21BA87FBC();
    (*(v4 + 8))(v6, v3);
  }

  (*(v4 + 56))(v9, 1, 1, v3);
  swift_beginAccess();
  sub_21B9BA7A4(v9, v1 + v13);
  swift_endAccess();
  memset(v18, 0, sizeof(v18));
  KeyPath = swift_getKeyPath();
  v15 = MEMORY[0x28223BE20](KeyPath);
  *(&v17 - 2) = v1;
  *(&v17 - 1) = v18;
  (*(*v1 + 208))(v15);
}

uint64_t sub_21B9BA7A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D168, &qword_21BA92EA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_21B9BA840()
{
  v0 = swift_allocObject();
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 4) = 0u;
  v1 = OBJC_IVAR____TtC8RemoteUI19ConfirmationHandler_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D160, &unk_21BA92E90);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  sub_21BA8661C();
  return v0;
}

uint64_t sub_21B9BA9C4()
{
  sub_21B9BAB38(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9]);
  sub_21B9ABAAC(v0 + OBJC_IVAR____TtC8RemoteUI19ConfirmationHandler_continuation, &qword_27CD9D168, &qword_21BA92EA0);
  v1 = OBJC_IVAR____TtC8RemoteUI19ConfirmationHandler___observationRegistrar;
  v2 = sub_21BA8662C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_21B9BAA94()
{
  result = qword_27CD9D170;
  if (!qword_27CD9D170)
  {
    type metadata accessor for ConfirmationHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D170);
  }

  return result;
}

uint64_t type metadata accessor for ConfirmationHandler(uint64_t a1)
{
  result = qword_27CDA25A0;
  if (!qword_27CDA25A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B9BAB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
  }
}

unint64_t sub_21B9BAB9C()
{
  result = qword_27CD9DE30;
  if (!qword_27CD9DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DE30);
  }

  return result;
}

void sub_21B9BABF8(uint64_t a1)
{
  sub_21B9BACD0(319);
  if (v1 <= 0x3F)
  {
    sub_21BA8662C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B9BACD0(uint64_t a1)
{
  if (!qword_27CD9D180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D160, &unk_21BA92E90);
    v1 = sub_21BA883CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD9D180);
    }
  }
}

uint64_t sub_21B9BAE50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D190, &qword_21BA92F50);
  sub_21BA87A6C();
  return v1;
}

uint64_t sub_21B9BAEBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_21B9BAFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C0](a1, a2, a3, WitnessTable);
}

uint64_t sub_21B9BB030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E350](a1, a2, a3, WitnessTable);
}

void sub_21B9BB0AC(uint64_t a1)
{
  swift_getWitnessTable();
  sub_21BA8711C();
  __break(1u);
}

uint64_t sub_21B9BB0EC()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v2 = *v1;
  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  v8 = v2;
  v9 = v4;
  v10 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D190, &qword_21BA92F50);
  MEMORY[0x21CEFCD90](&v7, v5);
  return v7;
}

void (*sub_21B9BB1F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  v6 = *v5;
  v4[12] = *v5;
  v7 = v5[1];
  v4[13] = v7;
  v8 = v5[2];
  v4[14] = v8;
  v9 = v5[3];
  v4[15] = v9;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D190, &qword_21BA92F50);
  MEMORY[0x21CEFCD90]();
  return sub_21B9BB2E4;
}

void sub_21B9BB2E4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[14];
  v2[5] = v3;
  v2[6] = v6;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    sub_21BA87A4C();
  }

  else
  {
    sub_21BA87A4C();
  }

  free(v2);
}

uint64_t sub_21B9BB3BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D190, &qword_21BA92F50);
  sub_21BA87A6C();
  return v1;
}

uint64_t sub_21B9BB440()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x68));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_21B9BB4B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21B9BB5AC()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21B9BB60C(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21B9BB6F4()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D190, &qword_21BA92F50);
  MEMORY[0x21CEFCD90](&v4, v2);
  return v4;
}

uint64_t sub_21B9BB744@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = *(v2 + 32);
  v12 = sub_21B9BB6F4();
  v11(v12);

  v13 = *(v5 + 16);
  v13(v10, v7, v4);
  v14 = *(v5 + 8);
  v14(v7, v4);
  v13(a2, v10, v4);
  return (v14)(v10, v4);
}

uint64_t sub_21B9BB8C8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21B9BB950(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_21B9BBA38()
{
  v0 = sub_21B9BD6D4();

  return v0;
}

void *sub_21B9BBA6C()
{
  v0 = sub_21B9BD6D4();
  v1 = v0;
  return v0;
}

void sub_21B9BBA98(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_21B9BBAF4(a3);
}

void sub_21B9BBAF4(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21B9BBBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v8 = a8();

  return v8;
}

double sub_21B9BBC50(void *a1)
{
  v1 = a1;
  sub_21B9BBC94();
  v3 = v2;

  return v3;
}

void sub_21B9BBCD8(void *a1)
{
  v1 = a1;
  sub_21B9BBCC8();
}

BOOL sub_21B9BBD50(void *a1)
{
  v1 = a1;
  v2 = sub_21B9BBD84();

  return v2;
}

BOOL sub_21B9BBD84()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

void sub_21B9BBDFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v51 = sub_21BA860EC();
  v6 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  v52 = (*MEMORY[0x277D85000] & *v2) + 152;
  v14 = v13(v10);
  v53 = v15;
  v54 = v14;
  v50 = (v13)();
  v17 = v16;
  v55 = a1;
  v56 = a2;
  sub_21BA860BC();
  sub_21BA860DC();
  v18 = *(v6 + 8);
  v19 = v12;
  v20 = v51;
  v18(v19, v51);
  sub_21B9BAB9C();
  v21 = sub_21BA883EC();
  v23 = v22;
  v18(v8, v20);
  v55 = v50;
  v56 = v17;

  MEMORY[0x21CEFD130](v21, v23);

  v25 = v55;
  v26 = v56;
  v27 = MEMORY[0x277D85000];
  v28 = (*((*MEMORY[0x277D85000] & *v2) + 0xD0))(v24);
  v29 = sub_21B9BD830(v28, v25, v26);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = MEMORY[0x21CEFD0C0](v29, v31, v33, v35);
  v38 = v37;

  v39 = (*((*v27 & *v3) + 0xA0))(v36, v38);
  (v13)(v39);
  v40 = sub_21BA87D9C();

  v41 = sub_21BA87D9C();

  if (v41 < v40)
  {
    v43 = (v13)(v42);
    sub_21B9BC164(v43, v44);
    v46 = v45;

    if (v46)
    {
      v47 = *MEMORY[0x277D76438];
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_21BA87C1C();

      v48 = sub_21BA87C8C();

      UIAccessibilityPostNotification(v47, v48);
    }
  }

  sub_21B9BC6C8();
}

uint64_t sub_21B9BC164(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_21BA87DBC();
  return sub_21BA87E3C();
}

uint64_t sub_21B9BC1E4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21BA87CBC();
  v6 = v5;
  v7 = a1;
  sub_21B9BBDFC(v4, v6);
}

void sub_21B9BC24C()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x128))())
  {
    v2 = (*((*v1 & *v0) + 0x98))();
    sub_21B9BC164(v2, v3);
    v5 = v4;

    v6 = (*((*v1 & *v0) + 0xA8))(&v12);
    sub_21B9BC46C(v6);

    v6(&v12, 0);
    if (v5)
    {
      sub_21BA457E4(0xD00000000000001FLL, 0x800000021BAA3D80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D1A0, &qword_21BA92F58);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21BA92F40;
      v12 = 0;
      v13 = 0xE000000000000000;
      sub_21BA87C1C();

      v8 = v12;
      v9 = v13;
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = sub_21B9BD8CC();
      *(v7 + 32) = v8;
      *(v7 + 40) = v9;
      sub_21BA87CEC();

      v10 = *MEMORY[0x277D76438];
      v11 = sub_21BA87C8C();

      UIAccessibilityPostNotification(v10, v11);
    }

    sub_21B9BC6C8();
  }
}

uint64_t sub_21B9BC46C(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_21BA87DBC();

  return MEMORY[0x2821FBE70](a1);
}

void sub_21B9BC4D4(void *a1)
{
  v1 = a1;
  sub_21B9BC24C();
}

void sub_21B9BC51C()
{
  [v0 setIsAccessibilityElement_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D248, &qword_21BAA0500);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BA92F40;
  v2 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x80));
  *(v1 + 56) = sub_21B9BDFC0(0, &qword_27CD9D250, 0x277D75D18);
  *(v1 + 32) = v2;
  v3 = v2;
  v4 = sub_21BA87EFC();

  [v0 setAccessibilityElements_];

  [v3 setIsAccessibilityElement_];
  sub_21BA457E4(0xD00000000000001DLL, 0x800000021BAA3F30);
  v5 = sub_21BA87C8C();

  [v3 setAccessibilityLabel_];

  sub_21BA457E4(0xD00000000000001CLL, 0x800000021BAA3F50);
  v6 = sub_21BA87C8C();

  [v3 setAccessibilityHint_];

  sub_21B9BC6C8();
}

void sub_21B9BC6C8()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v4 = v3();
  v6 = v5;

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    (v3)(v7);
    v9 = sub_21BA87D9C();
    if (!v9)
    {

LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D258, &qword_21BA933A0);
      sub_21B9BDDF0();
      sub_21BA87C4C();

      v15 = *(v1 + *((*v2 & *v1) + 0x80));
      v16 = sub_21BA87C8C();

      [v15 setAccessibilityValue_];

      return;
    }

    v10 = v9;
    v18 = MEMORY[0x277D84F90];
    sub_21B9BCCB8(0, v9 & ~(v9 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      do
      {
        sub_21BA87E3C();
        sub_21BA87C1C();

        v12 = *(v18 + 16);
        v11 = *(v18 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_21B9BCCB8((v11 > 1), v12 + 1, 1);
        }

        *(v18 + 16) = v12 + 1;
        v13 = v18 + 16 * v12;
        *(v13 + 32) = 0;
        *(v13 + 40) = 0xE000000000000000;
        sub_21BA87DAC();
        --v10;
      }

      while (v10);

      v2 = MEMORY[0x277D85000];
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    v14 = *(v1 + *((*v2 & *v1) + 0x80));
    sub_21BA457E4(0xD00000000000001DLL, 0x800000021BAA3F90);
    v17 = sub_21BA87C8C();

    [v14 setAccessibilityValue_];
  }
}

id sub_21B9BCA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CustomDigitEntry(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_21B9BCA74(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];

  v5 = *((*v3 & *a1) + 0x78);
  type metadata accessor for CustomDigitEntry.DisplayView(255, *((v4 & v2) + 0x50), *((v4 & v2) + 0x58), v6);
  swift_getWitnessTable();
  v7 = sub_21BA8722C();
  (*(*(v7 - 8) + 8))(&a1[v5], v7);
}

uint64_t sub_21B9BCC20(uint64_t a1)
{
  v2 = sub_21B9BDD78(&qword_27CD9D238, &unk_21BA93308);
  v3 = sub_21B9BDD78(&qword_27CD9D240, &unk_21BA932A8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *sub_21B9BCCB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B9BCCD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B9BCCD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCF0, &unk_21BA9DCB0);
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

void *sub_21B9BCDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v66 = a7;
  v65 = a5;
  v14 = *MEMORY[0x277D85000] & *v7;
  v64 = *(v14 + 0x50);
  v63 = *(v14 + 88);
  v68 = type metadata accessor for CustomDigitEntry.DisplayView(255, v64, v63, a4);
  WitnessTable = swift_getWitnessTable();
  v80 = v68;
  v81 = MEMORY[0x277CE1420];
  v82 = WitnessTable;
  v83 = MEMORY[0x277CE1418];
  v70 = sub_21BA8722C();
  v15 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = v62 - v19;
  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];

  v62[1] = v62;
  v22 = 4;
  if (v21 == 1)
  {
    v22 = 1;
  }

  v23 = MEMORY[0x277D85000];
  *&v8[*((*MEMORY[0x277D85000] & *v8) + 0x88)] = v22;
  v24 = *MEMORY[0x277D77020];
  *&v8[*((*v23 & *v8) + 0x90)] = *MEMORY[0x277D77020];
  v25 = &v8[*((*v23 & *v8) + 0x60)];
  *v25 = a1;
  *(v25 + 1) = a2;
  v26 = a3;
  *(v25 + 2) = a3;
  *(v25 + 3) = a4;
  *&v8[*((*v23 & *v8) + 0x70)] = v65;
  v27 = &v8[*((*v23 & *v8) + 0x68)];
  v28 = a6;
  *v27 = a6;
  v29 = v66;
  *(v27 + 1) = v66;
  v30 = v64;
  v31 = v63;
  v71 = v64;
  v72 = v63;
  v73 = a1;
  v74 = a2;
  v75 = v26;
  v76 = a4;
  v77 = v28;
  v78 = v29;

  v32 = v24;
  sub_21BA8721C();
  sub_21BA8743C();
  v34 = v69;
  v33 = v70;
  sub_21BA8720C();
  v35 = *(v15 + 8);
  v66 = v15 + 8;
  v68 = v35;
  (v35)(v17, v33);
  v36 = MEMORY[0x277D85000];
  (*(v15 + 16))(&v8[*((*MEMORY[0x277D85000] & *v8) + 0x78)], v34, v33);
  v37 = v36;
  *&v8[*((*v36 & *v8) + 0x80)] = sub_21BA871FC();
  v39 = type metadata accessor for CustomDigitEntry(0, v30, v31, v38);
  v79.receiver = v8;
  v79.super_class = v39;
  v40 = objc_msgSendSuper2(&v79, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v41 = *((*v37 & *v40) + 0x80);
  v42 = *(v40 + v41);
  v43 = v40;
  [v43 addSubview_];
  [*(v40 + v41) setTranslatesAutoresizingMaskIntoConstraints_];
  WitnessTable = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D270, &qword_21BA92850);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_21BA92840;
  v45 = [*(v40 + v41) topAnchor];
  v46 = [v43 topAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v44 + 32) = v47;
  v48 = [*(v40 + v41) leadingAnchor];
  v49 = [v43 leadingAnchor];

  v50 = [v48 constraintEqualToAnchor_];
  *(v44 + 40) = v50;
  v51 = [*(v40 + v41) trailingAnchor];
  v52 = [v43 trailingAnchor];

  v53 = [v51 constraintEqualToAnchor_];
  *(v44 + 48) = v53;
  v54 = [*(v40 + v41) bottomAnchor];
  v55 = [v43 bottomAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v44 + 56) = v56;
  sub_21B9BDFC0(0, &qword_27CD9D028, 0x277CCAAD0);
  v57 = sub_21BA87EFC();

  [WitnessTable activateConstraints_];

  v80 = v43;
  v58 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v59 = sub_21BA8898C();

  v60 = [v58 initWithTarget:v59 action:sel_didTap];
  swift_unknownObjectRelease();
  [v43 addGestureRecognizer_];
  sub_21B9BC51C();

  (v68)(v69, v70);
  return v43;
}

void *sub_21B9BD584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CustomDigitEntry(0, *(a1 + 16), *(a1 + 24), a4);
  v5 = sub_21B9BAE50();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v4[4];
  v13 = v4[5];
  v14 = v4[6];

  v15 = sub_21B9BD500(v5, v7, v9, v11, v12, v13, v14);

  return v15;
}

uint64_t sub_21B9BD640(void *a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0xC0);

  return v4(v3, v2);
}

uint64_t sub_21B9BD6D4()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21B9BD734()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = 4;
  if (v2 == 1)
  {
    v3 = 1;
  }

  v4 = MEMORY[0x277D85000];
  *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x88)) = v3;
  *(v0 + *((*v4 & *v0) + 0x90)) = *MEMORY[0x277D77020];
  sub_21BA886DC();
  __break(1u);
}

uint64_t sub_21B9BD830(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21BA87DCC();

    return sub_21BA87E4C();
  }

  return result;
}

unint64_t sub_21B9BD8CC()
{
  result = qword_27CD9D1A8;
  if (!qword_27CD9D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D1A8);
  }

  return result;
}

uint64_t sub_21B9BD9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_21B9BDA38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_21B9BDA80(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21B9BDAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CustomDigitEntry.DisplayView(255, *(a1 + 80), *(a1 + 88), a4);
  swift_getWitnessTable();
  result = sub_21BA8722C();
  if (v5 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_21B9BDC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21B9BDC54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21B9BDC9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B9BDD78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UITextContentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B9BDDF0()
{
  result = qword_27CD9D260;
  if (!qword_27CD9D260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D258, &qword_21BA933A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D260);
  }

  return result;
}

uint64_t sub_21B9BDE54@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 72);
  v21 = *(v2 + 32);
  v22[0] = v7;
  v13 = v21;
  v14 = v6;
  v15 = v7;
  v9 = *(v2 + 56);
  v22[1] = *(v2 + 56);
  v16 = v9;
  v17 = v8;
  v10 = type metadata accessor for CustomDigitEntry.DisplayView(0, v4, v5, a1);
  swift_getWitnessTable();
  v11 = *(*(v10 - 8) + 16);
  v11(v18, &v13, v10);

  sub_21B9BADA8(&v21);

  sub_21B9BADFC(v22);

  v13 = v18[0];
  v14 = v18[1];
  v15 = v18[2];
  v16 = v19;
  v17 = v20;
  v11(a2, &v13, v10);
}

uint64_t sub_21B9BDFC0(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_21B9BE06C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubjectBox();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B9BE0B0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &off_27CD9D340);
  swift_endAccess();
  if (v1)
  {
    sub_21BA8846C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for SubjectBox();
    if (swift_dynamicCast())
    {
      v2 = *&v4[OBJC_IVAR____TtC8RemoteUIP33_4FB534BE5016ADAD8486BA58D927C77010SubjectBox_subject];

      return v2;
    }
  }

  else
  {
    sub_21B9BE5E4(v7);
  }

  return 0;
}

Swift::Void __swiftcall RUIPage.notifyPageDidChangePublisher()()
{
  v1 = v0;
  if (!sub_21B9BE0B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D358, &unk_21BA95BA0);
    swift_allocObject();
    v2 = sub_21BA8691C();
    v3 = type metadata accessor for SubjectBox();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC8RemoteUIP33_4FB534BE5016ADAD8486BA58D927C77010SubjectBox_subject] = v2;
    v6.receiver = v4;
    v6.super_class = v3;
    swift_retain_n();
    v5 = objc_msgSendSuper2(&v6, sel_init);
    swift_beginAccess();
    objc_setAssociatedObject(v1, &off_27CD9D340, v5, 1);
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D358, &unk_21BA95BA0);
  sub_21B9BE594(&qword_27CD9D368, MEMORY[0x277CBCE18]);
  sub_21BA8694C();
}

uint64_t RUIPage.pageDidChange.getter()
{
  v1 = v0;
  if (!sub_21B9BE0B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D358, &unk_21BA95BA0);
    swift_allocObject();
    v2 = sub_21BA8691C();
    v3 = type metadata accessor for SubjectBox();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC8RemoteUIP33_4FB534BE5016ADAD8486BA58D927C77010SubjectBox_subject] = v2;
    v8.receiver = v4;
    v8.super_class = v3;
    swift_retain_n();
    v5 = objc_msgSendSuper2(&v8, sel_init);
    swift_beginAccess();
    objc_setAssociatedObject(v1, &off_27CD9D340, v5, 1);
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D358, &unk_21BA95BA0);
  sub_21B9BE594(&qword_27CD9DB10, MEMORY[0x277CBCE20]);
  v6 = sub_21BA869CC();

  return v6;
}

uint64_t sub_21B9BE594(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D358, &unk_21BA95BA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B9BE5E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7C0, &unk_21BA96A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_21B9BE64C()
{
  qword_27CDA2BD8 = 0;
  result = 0.0;
  xmmword_27CDA2BB8 = 0u;
  unk_27CDA2BC8 = 0u;
  return result;
}

uint64_t sub_21B9BE664@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_27CDA2BB0 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_21B9AFF80(&xmmword_27CDA2BB8, v1, &qword_27CD9E600, &qword_21BA933C0);
}

uint64_t EnvironmentValues.ruiListHelper.getter()
{
  sub_21B9BE724();

  return sub_21BA86EAC();
}

unint64_t sub_21B9BE724()
{
  result = qword_27CDA2BE0[0];
  if (!qword_27CDA2BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA2BE0);
  }

  return result;
}

uint64_t sub_21B9BE7B8(uint64_t a1)
{
  sub_21B9AFF80(a1, v3, &qword_27CD9E600, &qword_21BA933C0);
  sub_21B9AFF80(v3, &v2, &qword_27CD9E600, &qword_21BA933C0);
  sub_21B9BE724();
  sub_21BA86EBC();
  return sub_21B9ABAAC(v3, &qword_27CD9E600, &qword_21BA933C0);
}

uint64_t EnvironmentValues.ruiListHelper.setter(uint64_t a1)
{
  sub_21B9AFF80(a1, v3, &qword_27CD9E600, &qword_21BA933C0);
  sub_21B9BE724();
  sub_21BA86EBC();
  return sub_21B9ABAAC(a1, &qword_27CD9E600, &qword_21BA933C0);
}

void (*EnvironmentValues.ruiListHelper.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_21B9BE724();
  sub_21BA86EAC();
  return sub_21B9BE954;
}

void sub_21B9BE954(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_21B9AFF80(*a1, v2 + 40, &qword_27CD9E600, &qword_21BA933C0);
    sub_21B9AFF80(v2 + 40, v2 + 80, &qword_27CD9E600, &qword_21BA933C0);
    sub_21BA86EBC();
    sub_21B9ABAAC(v2 + 40, &qword_27CD9E600, &qword_21BA933C0);
  }

  else
  {
    sub_21B9AFF80(*a1, v2 + 40, &qword_27CD9E600, &qword_21BA933C0);
    sub_21BA86EBC();
  }

  sub_21B9ABAAC(v2, &qword_27CD9E600, &qword_21BA933C0);

  free(v2);
}

uint64_t sub_21B9BEA54(void *a1)
{
  v2 = swift_allocObject();
  sub_21B9BEA94(a1);
  return v2;
}

void *sub_21B9BEA94(id a1)
{
  v2 = a1;
  v1[5] = sub_21B9BEB60;
  v1[6] = 0;
  v1[2] = a1;
  if (a1)
  {
    a1 = [a1 parent];
    if (a1)
    {
      v3 = a1;
      objc_opt_self();
      a1 = swift_dynamicCastObjCClass();
      if (!a1)
      {

        a1 = 0;
      }
    }
  }

  v1[3] = a1;
  v4 = [a1 tableElement];
  v5 = [v4 tableView];

  v1[4] = v5;
  return v1;
}

id sub_21B9BEB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_allocWithZone(RUIFooterElement) initWithAttributes:0 parent:a3];
  if (result)
  {
    v4 = result;
    v5 = result;
    v6 = sub_21BA87C8C();
    [v5 setBody_];

    return v4;
  }

  return result;
}

uint64_t sub_21B9BEBF0()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_21B9BEC3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void sub_21B9BECE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = a3;
  *&v63 = a2;
  v6 = sub_21BA8673C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B9E0270();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_21BA8671C();
  v12 = sub_21BA881EC();

  v13 = os_log_type_enabled(v11, v12);
  v65 = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v66[0] = v15;
    *v14 = 136315138;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D380, &qword_21BA933D8);
    v17 = MEMORY[0x21CEFD270](v65, v16);
    v19 = sub_21B9B2A60(v17, v18, v66);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_21B93D000, v11, v12, "Inserting %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x21CEFF180](v15, -1, -1);
    v20 = v14;
    a1 = v65;
    MEMORY[0x21CEFF180](v20, -1, -1);
  }

  v21 = (*(v7 + 8))(v9, v6);
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_13:
    v41 = *(v4 + 24);
    if (v41)
    {
      v42 = (*(*v4 + 136))(v21);
      v43 = [*(v4 + 16) parent];
      v44 = v42(v63, v64, v43);

      [v41 setFooter_];
    }

    v45 = *(v4 + 32);
    v46 = v65;
    if (v45)
    {
      [*(v4 + 32) beginUpdates];
    }

    if (v22)
    {
      v62 = sub_21BA865CC();
      v47 = *(*(v62 - 8) + 72);
      v48 = *(*(v62 - 8) + 80);
      v49 = (v46 + 48);
      v63 = xmmword_21BA92F40;
      v61 = (v48 + 32) & ~v48;
      do
      {
        v50 = *(v49 - 1);
        v64 = *v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D370, &qword_21BA933C8);
        *(swift_allocObject() + 16) = v63;
        v65 = v50;

        if (v41 && (v51 = [v41 tableElement]) != 0)
        {
          v52 = v48;
          v53 = v22;
          v54 = v47;
          v55 = v45;
          v56 = v41;
          v57 = v51;
          v58 = [v51 sections];

          if (!v58)
          {
            goto LABEL_31;
          }

          *&v66[0] = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D378, &qword_21BA933D0);
          v59 = [v58 indexOfObject_];

          v41 = v56;
          swift_unknownObjectRelease();
          v45 = v55;
          v47 = v54;
          v22 = v53;
          v48 = v52;
        }

        else
        {
          v59 = 0;
        }

        MEMORY[0x21CEFB910](v64, v59);
        if (v45)
        {
          v60 = sub_21BA87EFC();

          [v45 insertRowsAtIndexPaths:v60 withRowAnimation:100];
        }

        else
        {
        }

        v49 += 3;

        --v22;
      }

      while (v22);
    }

    [v45 endUpdates];
    return;
  }

  v23 = v65 + 40;
  v24 = v22;
  while (1)
  {
    v26 = *(v4 + 24);
    if (!v26)
    {
      goto LABEL_7;
    }

    *&v66[0] = 0x7373616C63;
    *(&v66[0] + 1) = 0xE500000000000000;

    v27 = MEMORY[0x277D837D0];
    sub_21BA8853C();
    v71 = v27;
    strcpy(v70, "customContent");
    v70[7] = -4864;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCE0, &unk_21BA92360);
    v28 = sub_21BA8872C();

    sub_21B9AFF80(v69, v66, &unk_27CD9D900, &unk_21BA92370);
    v29 = sub_21B9AF000(v66);
    if (v30)
    {
      break;
    }

    v28[(v29 >> 6) + 8] |= 1 << v29;
    v31 = v28[6] + 40 * v29;
    v32 = v66[0];
    v33 = v66[1];
    *(v31 + 32) = v67;
    *v31 = v32;
    *(v31 + 16) = v33;
    sub_21B9AFF70(&v68, (v28[7] + 32 * v29));
    v34 = v28[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_30;
    }

    v28[2] = v36;

    type metadata accessor for RUICustomContentRow();
    sub_21B9ABAAC(v69, &unk_27CD9D900, &unk_21BA92370);
    v37 = RUICustomContentRow.__allocating_init(attributes:parent:)(v28, [*(v4 + 16) parent]);
    if (v37)
    {
      v38 = objc_allocWithZone(RUIXMLElement);
      v25 = v37;
      v39 = sub_21BA87C8C();
      v40 = [v38 initWithName_];

      (*((*MEMORY[0x277D85000] & *v25) + 0xA8))(v40);
    }

    else
    {
      v25 = 0;
    }

    [v26 addRow_];

LABEL_7:
    v23 += 24;
    if (!--v24)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_21B9BF438(char *a1)
{
  v2 = v1;
  v4 = sub_21BA8673C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B9E0270();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_21BA8671C();
  v10 = sub_21BA881EC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v36 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x21CEFD270](a1, MEMORY[0x277D83B88]);
    v16 = sub_21B9B2A60(v14, v15, &v36);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21B93D000, v9, v10, "Removing rows at %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x21CEFF180](v13, -1, -1);
    v17 = v12;
    v2 = v34;
    MEMORY[0x21CEFF180](v17, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v36 = a1;

  sub_21B9BFD54(&v36);
  sub_21B9BF8C4();
  v18 = v2[3];
  if (v18)
  {
    [v2[3] setFooterView_];
    [v18 setFooter_];
  }

  v19 = [v18 tableElement];
  [v19 reloadHeadersAndFootersForSection_];

  v34 = v2[4];
  [v34 beginUpdates];
  v20 = v36;
  v21 = *(v36 + 2);
  if (v21)
  {
    v22 = 0;
    v23 = v36 + 32;
    v32 = xmmword_21BA92F40;
    v31 = v36 + 32;
    while (v22 < *(v20 + 2))
    {
      v24 = *&v23[8 * v22];
      [v18 removeRowAtIndex_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D370, &qword_21BA933C8);
      v33 = sub_21BA865CC();
      *(swift_allocObject() + 16) = v32;
      if (v18 && (v25 = [v18 tableElement]) != 0)
      {
        v26 = v25;
        v27 = [v25 sections];

        if (!v27)
        {
          goto LABEL_19;
        }

        v35 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D378, &qword_21BA933D0);
        v28 = [v27 indexOfObject_];

        swift_unknownObjectRelease();
        v23 = v31;
      }

      else
      {
        v28 = 0;
      }

      MEMORY[0x21CEFB910](v24, v28);
      if (v34)
      {
        v29 = sub_21BA87EFC();

        [v34 deleteRowsAtIndexPaths:v29 withRowAnimation:100];
      }

      else
      {
      }

      if (v21 == ++v22)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    [v34 endUpdates];
  }
}

void sub_21B9BF8C4()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_16:
      v1 = sub_21B9C06BC(v1);
    }

    v4 = 0;
    v5 = v2 + 3;
    do
    {
      if (v4 != v5 - 4)
      {
        v7 = *(v1 + 2);
        if (v4 >= v7)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        if (v5 - 4 >= v7)
        {
          goto LABEL_15;
        }

        v8 = &v1[8 * v4];
        v9 = *(v8 + 4);
        *(v8 + 4) = *&v1[8 * v5];
        *&v1[8 * v5] = v9;
      }

      ++v4;
      v6 = v5 - 5;
      --v5;
    }

    while (v4 < v6);
    *v0 = v1;
  }
}

id sub_21B9BF97C()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  result = [*(v0 + 24) rows];
  if (result)
  {
    v2 = result;
    sub_21B9BFE8C();
    v3 = sub_21BA87F0C();

    if (v3 >> 62)
    {
      v4 = sub_21BA884DC();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B9BFA2C()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

char *sub_21B9BFB4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D390, &qword_21BA93498);
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

char *sub_21B9BFC50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D398, &qword_21BA934A0);
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

uint64_t sub_21B9BFD54(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B9C06BC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_21BA8888C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_21BA87F4C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_21B9BFF68(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_21B9BFE8C()
{
  result = qword_27CD9D388;
  if (!qword_27CD9D388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD9D388);
  }

  return result;
}

uint64_t sub_21B9BFF68(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_21B9C06A8(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_21B9C04B4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B9BFC50(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_21B9BFC50((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_21B9C04B4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_21B9C04B4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

id sub_21B9C06E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Box(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_21B9C07A0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = (*(a2 + 16))(a1, a2);
  if (objc_getAssociatedObject(v3, v5))
  {
    sub_21BA8846C();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for Box(0, AssociatedTypeWitness, v7, v8);
    if (swift_dynamicCast())
    {
      (*(*(AssociatedTypeWitness - 8) + 16))(a3, &v9[*((*MEMORY[0x277D85000] & *v9) + 0x58)], AssociatedTypeWitness);

      return;
    }
  }

  else
  {
    sub_21B9BE5E4(v12);
  }

  sub_21BA886DC();
  __break(1u);
}

uint64_t sub_21B9C095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B9C0D44(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void sub_21B9C09E8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = (*(a2 + 16))(a1, a2);
  if (objc_getAssociatedObject(v3, v5))
  {
    sub_21BA8846C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    swift_getAssociatedTypeWitness();
    v6 = sub_21BA883CC();
    type metadata accessor for Box(0, v6, v7, v8);
    if (swift_dynamicCast())
    {
      (*(*(v6 - 8) + 16))(a3, &v10[*((*MEMORY[0x277D85000] & *v10) + 0x58)], v6);

      return;
    }
  }

  else
  {
    sub_21B9BE5E4(v13);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_21B9C0BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B9C0E0C(a1, a2, a3, a4);
  swift_getAssociatedTypeWitness();
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

id sub_21B9C0C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(type metadata accessor for Box(0, *(v4 + 80), a3, a4));
  v7 = *((*MEMORY[0x277D85000] & *v6) + 0x50);
  (*(*(v7 - 8) + 16))(&v6[*((*MEMORY[0x277D85000] & *v6) + 0x58)], a1, v7);
  v11.receiver = v6;
  v11.super_class = type metadata accessor for Box(0, v7, v8, v9);
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_21B9C0D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 16))(a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Box(0, AssociatedTypeWitness, v8, v9);
  v13 = sub_21B9C0C44(a1, v10, v11, v12);
  objc_setAssociatedObject(v4, v6, v13, 1);
}

void sub_21B9C0E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 16))(a3, a4);
  swift_getAssociatedTypeWitness();
  v7 = sub_21BA883CC();
  type metadata accessor for Box(0, v7, v8, v9);
  v13 = sub_21B9C0C44(a1, v10, v11, v12);
  objc_setAssociatedObject(v4, v6, v13, 1);
}

uint64_t sub_21B9C0EE0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B9C0FC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**(a1 + 16) + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_21B9C1014(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  v4 = *(*a2[2] + 96);

  v5 = v3;

  v4(v2);
}

uint64_t sub_21B9C10B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for XMLDataReference();
  result = swift_allocObject();
  *(result + 16) = a3;
  a4[2] = result;
  return result;
}

uint64_t sub_21B9C10F4(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_21B9C1184(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_21B9C11CC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21B9C1204()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3A0, &qword_21BA997E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_21BA886AC();
  __swift_allocate_value_buffer(v3, qword_27CDB2170);
  v4 = __swift_project_value_buffer(v3, qword_27CDB2170);
  sub_21BA8869C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B9C1334()
{
  if (qword_27CDA2CF0 != -1)
  {
    swift_once();
  }

  v0 = sub_21BA886AC();

  return __swift_project_value_buffer(v0, qword_27CDB2170);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t Decoder.ruiDecodingContext.getter()
{
  v1 = sub_21BA88BFC();
  if (qword_27CDA2CF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21BA886AC();
  v3 = __swift_project_value_buffer(v2, qword_27CDB2170);
  if (*(v1 + 16) && (v4 = sub_21B9C14A8(v3), (v5 & 1) != 0))
  {
    sub_21B9AFDF0(*(v1 + 56) + 32 * v4, v7);

    sub_21B9AFF70(v7, &v8);
    return swift_dynamicCast();
  }

  else
  {

    __break(1u);
  }

  return result;
}

unint64_t sub_21B9C14A8(uint64_t a1)
{
  sub_21BA886AC();
  v2 = sub_21BA87BFC();

  return sub_21B9C15B8(a1, v2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21B9C1520(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21B9C1568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B9C15B8(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_21BA886AC();
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = sub_21BA87C7C();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t FeatureIntroElement.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21B9C17E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  if (v2 != 1)
  {
    v4 = 0x65727574616566;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (*a2 != 1)
  {
    v8 = 0x65727574616566;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BA8899C();
  }

  return v11 & 1;
}

uint64_t sub_21B9C18D8()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21B9C196C(uint64_t a1)
{
  sub_21BA87D8C();
}

uint64_t sub_21B9C19EC(uint64_t a1)
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

unint64_t sub_21B9C1A7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B9C2AEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21B9C1AAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656C746974;
  if (v2 != 1)
  {
    v5 = 0x65727574616566;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21B9C1AFC()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x65727574616566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_21B9C1B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B9C2AEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B9C1B7C(uint64_t a1)
{
  v2 = sub_21B9C2B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9C1BB8(uint64_t a1)
{
  v2 = sub_21B9C2B38();

  return MEMORY[0x2821FE720](a1, v2);
}

double FeatureIntroElement.body.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_21BA86FDC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3A8, &qword_21BA93580);
  sub_21B9C1C88(v1, a1 + *(v3 + 44));
  v4 = sub_21BA8748C();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3B0, &qword_21BA93588) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_21B9C1C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BA86CDC();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_21BA86FEC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D410, &qword_21BA93838);
  sub_21B9C1FEC(a1, (a2 + *(v8 + 44)));
  sub_21BA87B2C();
  sub_21BA86AEC();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D418, &qword_21BA93840) + 36));
  v10 = *&v45[5];
  *v9 = *&v45[3];
  v9[1] = v10;
  v9[2] = *&v45[7];
  v11 = sub_21BA8743C();
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D420, &qword_21BA93848) + 36);
  *v12 = v11;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 1;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D428, &qword_21BA93850) + 36));
  v14 = *(v5 + 28);
  v15 = *MEMORY[0x277CE0120];
  v16 = sub_21BA86F6C();
  v17 = *(*(v16 - 8) + 104);
  v17(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #6.0 }

  *v45 = _Q0;
  *v13 = _Q0;
  v23 = *(a1 + 64);
  v24 = sub_21BA8786C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D430, &qword_21BA93858);
  *&v13[*(v25 + 52)] = v24;
  *&v13[*(v25 + 56)] = 256;
  v17(&v7[*(v5 + 28)], v15, v16);
  *v7 = *v45;
  v26 = *(a1 + 56);
  v27 = sub_21BA8786C();
  sub_21BA86A9C();
  v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D438, &qword_21BA93860) + 36)];
  sub_21B9C30CC(v7, v28);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D440, &qword_21BA93868) + 36);
  v30 = *&v45[11];
  *v29 = *&v45[9];
  *(v29 + 16) = v30;
  *(v29 + 32) = v45[13];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D448, &qword_21BA93870);
  *(v28 + *(v31 + 52)) = v27;
  *(v28 + *(v31 + 56)) = 256;
  v32 = sub_21BA87B2C();
  v34 = v33;
  sub_21B9C3130(v7);
  v35 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D450, &qword_21BA93878) + 36));
  *v35 = v32;
  v35[1] = v34;
  v36 = sub_21BA87B2C();
  v38 = v37;
  v39 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D458, &qword_21BA93880) + 36));
  *v39 = v36;
  v39[1] = v38;
  v40 = sub_21BA87B2C();
  v42 = v41;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D460, &qword_21BA93888);
  v44 = &v13[*(result + 36)];
  *v44 = v40;
  v44[1] = v42;
  return result;
}

uint64_t sub_21B9C1FEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D468, &qword_21BA93890);
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  MEMORY[0x28223BE20](v3);
  v61 = (&v61 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D470, &qword_21BA93898);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v61 - v9;
  v10 = sub_21BA87ABC();
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x28223BE20](v10);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  v63 = a1;
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v76 = v15;
  v77 = v16;
  sub_21B9BAB9C();

  v17 = sub_21BA8767C();
  v19 = v18;
  v21 = v20;
  sub_21BA8758C();
  v22 = sub_21BA8760C();
  v24 = v23;
  v26 = v25;

  sub_21B9C318C(v17, v19, v21 & 1);

  sub_21BA8755C();
  v64 = sub_21BA875DC();
  v73 = v27;
  v74 = v28;
  v30 = v29;
  sub_21B9C318C(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v31 = v14;
  sub_21BA87AAC();
  v32 = *(v63 + 48);
  if (v32)
  {
    v33 = sub_21BA86FEC();
    v34 = v61;
    *v61 = v33;
    v34[1] = 0x4014000000000000;
    *(v34 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D480, &qword_21BA938D8);
    v76 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3C8, &qword_21BA93598);
    sub_21B9B35B8(&qword_27CD9D488, &qword_27CD9D3C8, &qword_21BA93598, MEMORY[0x277D83980]);
    sub_21B9C3284();
    sub_21B9C32D8();
    sub_21BA87ADC();
    v35 = sub_21BA8744C();
    sub_21BA869EC();
    v36 = v66;
    v37 = v34 + *(v66 + 36);
    *v37 = v35;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    v42 = v34;
    v43 = v75;
    sub_21B9C332C(v42, v75);
    v44 = 0;
    v45 = v36;
  }

  else
  {
    v44 = 1;
    v43 = v75;
    v45 = v66;
  }

  (*(v67 + 56))(v43, v44, 1, v45);
  LOBYTE(v76) = v30 & 1;
  v46 = v68;
  v47 = v69;
  v48 = *(v69 + 16);
  v62 = v31;
  v49 = v70;
  v48(v68, v31, v70);
  v50 = v71;
  sub_21B9C319C(v43, v71);
  v51 = v76;
  v53 = v64;
  v52 = v65;
  v54 = v73;
  v55 = v74;
  *v65 = v64;
  v52[1] = v54;
  *(v52 + 16) = v51;
  v56 = KeyPath;
  v52[3] = v55;
  v52[4] = v56;
  *(v52 + 40) = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D478, &qword_21BA938D0);
  v48(v52 + *(v57 + 48), v46, v49);
  sub_21B9C319C(v50, v52 + *(v57 + 64));
  v58 = v73;
  sub_21B9C320C(v53, v73, v51);

  sub_21B9C321C(v75);
  v59 = *(v47 + 8);
  v59(v62, v49);
  sub_21B9C321C(v50);
  v59(v46, v49);
  sub_21B9C318C(v53, v58, v76);
}

uint64_t sub_21B9C2538@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[9];
  v3 = a1[11];
  v30 = a1[10];
  v31 = v3;
  v4 = a1[11];
  v32 = a1[12];
  v5 = a1[5];
  v6 = a1[7];
  v26 = a1[6];
  v7 = v26;
  v27 = v6;
  v8 = a1[7];
  v9 = a1[9];
  v28 = a1[8];
  v10 = v28;
  v29 = v9;
  v11 = a1[1];
  v12 = a1[3];
  v22 = a1[2];
  v13 = v22;
  v23 = v12;
  v14 = a1[3];
  v15 = a1[5];
  v24 = a1[4];
  v16 = v24;
  v25 = v15;
  v17 = a1[1];
  v21[0] = *a1;
  v18 = v21[0];
  v21[1] = v17;
  a2[10] = v30;
  a2[11] = v4;
  a2[12] = a1[12];
  a2[6] = v7;
  a2[7] = v8;
  a2[8] = v10;
  a2[9] = v2;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v5;
  *a2 = v18;
  a2[1] = v11;
  return sub_21B9C339C(v21, &v20);
}

void FeatureIntroElement.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3B8, &qword_21BA93590);
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = objc_opt_self();
  v8 = [v7 separatorColor];
  v9 = [v7 tertiarySystemGroupedBackgroundColor];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B9C2B38();
  sub_21BA88C0C();
  if (v2)
  {
    goto LABEL_4;
  }

  v10 = v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = Decoder.decodeRUIID()();
  if (v12)
  {
    (*(v10 + 8))(v6, v4);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);

    return;
  }

  object = v11._object;
  sub_21B9B3220(a1, v36);
  v13 = sub_21B9AC534(v36);
  v27 = v14;
  v25 = v13;
  countAndFlagsBits = v11._countAndFlagsBits;
  LOBYTE(v36[0]) = 1;
  v23 = sub_21BA887FC();
  v26 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3C8, &qword_21BA93598);
  v37[0] = 2;
  sub_21B9C2B8C();
  sub_21BA887EC();
  (*(v10 + 8))(v6, v4);
  v30 = v38;
  v16 = countAndFlagsBits;
  v17 = object;
  *&v31 = countAndFlagsBits;
  *(&v31 + 1) = object;
  v18 = v26;
  *&v32 = v23;
  *(&v32 + 1) = v26;
  v19 = v27;
  *&v33 = v25;
  *(&v33 + 1) = v27;
  *&v34 = v38;
  *(&v34 + 1) = v8;
  v35 = v9;
  v20 = v29;
  *(v29 + 64) = v9;
  v21 = v32;
  *v20 = v31;
  v20[1] = v21;
  v22 = v34;
  v20[2] = v33;
  v20[3] = v22;
  sub_21B9C2C64(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v16;
  v36[1] = v17;
  v36[2] = v23;
  v36[3] = v18;
  v36[4] = v25;
  v36[5] = v19;
  v36[6] = v30;
  v36[7] = v8;
  v36[8] = v9;
  sub_21B9C2C9C(v36);
}

uint64_t sub_21B9C29BC()
{
  v1 = *(v0 + 32);

  return v1;
}

double sub_21B9C29EC@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_21BA86FDC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3A8, &qword_21BA93580);
  sub_21B9C1C88(v1, a1 + *(v3 + 44));
  v4 = sub_21BA8748C();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3B0, &qword_21BA93588) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_21B9C2A98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA86DEC();
  *a1 = result;
  return result;
}

unint64_t sub_21B9C2AEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21BA8875C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21B9C2B38()
{
  result = qword_27CD9D3C0;
  if (!qword_27CD9D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D3C0);
  }

  return result;
}

unint64_t sub_21B9C2B8C()
{
  result = qword_27CD9D3D0;
  if (!qword_27CD9D3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D3C8, &qword_21BA93598);
    sub_21B9C2C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D3D0);
  }

  return result;
}

unint64_t sub_21B9C2C10()
{
  result = qword_27CD9D3D8;
  if (!qword_27CD9D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D3D8);
  }

  return result;
}

unint64_t sub_21B9C2CD0()
{
  result = qword_27CD9D3E0;
  if (!qword_27CD9D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D3E0);
  }

  return result;
}

unint64_t sub_21B9C2D28()
{
  result = qword_27CD9D3E8;
  if (!qword_27CD9D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D3E8);
  }

  return result;
}

unint64_t sub_21B9C2D80()
{
  result = qword_27CD9D3F0;
  if (!qword_27CD9D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D3F0);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21B9C2E14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_21B9C2E5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RUIImage.SymbolRenderingMode(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RUIImage.SymbolRenderingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B9C3014()
{
  result = qword_27CD9D3F8;
  if (!qword_27CD9D3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D3B0, &qword_21BA93588);
    sub_21B9B35B8(&qword_27CD9D400, &qword_27CD9D408, &qword_21BA93830, MEMORY[0x277CE11A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D3F8);
  }

  return result;
}

uint64_t sub_21B9C30CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BA86CDC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9C3130(uint64_t a1)
{
  v2 = sub_21BA86CDC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B9C318C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21B9C319C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D470, &qword_21BA93898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9C320C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21B9C321C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D470, &qword_21BA93898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B9C3284()
{
  result = qword_27CD9D490;
  if (!qword_27CD9D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D490);
  }

  return result;
}

unint64_t sub_21B9C32D8()
{
  result = qword_27CD9D498;
  if (!qword_27CD9D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D498);
  }

  return result;
}

uint64_t sub_21B9C332C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D468, &qword_21BA93890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21B9C33F8(void *a1, char a2)
{
  v4 = sub_21BA86E9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a1;
  }

  else
  {

    sub_21BA8820C();
    v9 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v11[1];
  }

  return a1;
}

uint64_t sub_21B9C3544@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.ruiParentElement.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21B9C3570(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return EnvironmentValues.ruiParentElement.setter(v1);
}

uint64_t sub_21B9C35A0@<X0>(uint64_t a1@<X0>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4A0, &qword_21BA93918);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4A8, qword_21BA93920);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v11;
  if ((a2 & 0x100) == 0)
  {
    goto LABEL_4;
  }

  sub_21B9C37DC(a1, &v17 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E0C0, &qword_21BA974F0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21B9C384C(v13);
LABEL_4:
    (*(v7 + 104))(v9, *MEMORY[0x277D85778], v6, v12);
    return sub_21BA8805C();
  }

  return (*(v15 + 32))(a3, v13, v14);
}

uint64_t sub_21B9C37DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4A8, qword_21BA93920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9C384C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4A8, qword_21BA93920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B9C38B4()
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21B9C3930(uint64_t a1)
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21B9C3988@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_21BA8875C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_21B9C3A20@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_21BA8875C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_21B9C3A78(uint64_t a1)
{
  v2 = sub_21B9C3DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9C3AB4(uint64_t a1)
{
  v2 = sub_21B9C3DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B9C3AF0(void *a1)
{
  result = sub_21B9C3B78(a1);
  if (v1)
  {
    return v3 & 0x101;
  }

  return result;
}

uint64_t sub_21B9C3B24@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_21B9C3B78(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 9) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t sub_21B9C3B78(void *a1)
{
  KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4B0, &qword_21BA939F8);
  v4 = *(KeyPath - 8);
  MEMORY[0x28223BE20](KeyPath);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B9C3DA4();
  sub_21BA88C0C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_21BA887CC();
    (*(v4 + 8))(v6, KeyPath);
    KeyPath = swift_getKeyPath();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return KeyPath;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_21B9C3D08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B9C3D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_21B9C3DA4()
{
  result = qword_27CDA3120[0];
  if (!qword_27CDA3120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA3120);
  }

  return result;
}

unint64_t sub_21B9C3E0C()
{
  result = qword_27CDA32B0[0];
  if (!qword_27CDA32B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA32B0);
  }

  return result;
}

unint64_t sub_21B9C3E64()
{
  result = qword_27CDA33C0;
  if (!qword_27CDA33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDA33C0);
  }

  return result;
}

unint64_t sub_21B9C3EBC()
{
  result = qword_27CDA33C8[0];
  if (!qword_27CDA33C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA33C8);
  }

  return result;
}

uint64_t sub_21B9C3F10(void *a1)
{
  v2 = swift_allocObject();
  v3 = sub_21B9C55C0(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  v6[4] = sub_21B9C3FE8;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_21B9C41D4;
  v6[3] = &block_descriptor;
  v4 = _Block_copy(v6);
  [a1 setExceptionHandler_];
  _Block_release(v4);
  return v2;
}

void sub_21B9C3FE8(uint64_t a1, void *a2)
{
  v3 = sub_21BA8673C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = a2;
    v8 = sub_21B9E033C();
    (*(v4 + 16))(v6, v8, v3);
    v9 = v7;
    v10 = sub_21BA8671C();
    v11 = sub_21BA881FC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      sub_21BA402CC();
      v16 = sub_21B9B2A60(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_21B93D000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CEFF180](v13, -1, -1);
      MEMORY[0x21CEFF180](v12, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_21B9C41D4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_21B9C4260(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  v4 = sub_21BA87C8C();
  v5 = [v3 objectForKeyedSubscript_];

  return v5;
}

uint64_t sub_21B9C42BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_21B9C50C0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v9;
  return swift_endAccess();
}

uint64_t sub_21B9C436C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_beginAccess();
    v5 = *(v2 + 24);
    if (*(v5 + 16))
    {

      v6 = sub_21B940DCC(a1, a2);
      if (v7)
      {
        v8 = *(*(v5 + 56) + 8 * v6);
        swift_unknownObjectRetain();

        return v8;
      }
    }
  }

  return 0;
}

id sub_21B9C4408()
{
  v1 = (*(*v0 + 128))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21BA87EFC();
  v4 = [v2 callWithArguments_];

  if (v4)
  {
    v5 = [v4 toBool];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ScriptEnvironment.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21B9C4534@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for ScriptEnvironment();
  result = sub_21BA8690C();
  *a3 = result;
  return result;
}

uint64_t sub_21B9C4570(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if (a4 >> 62)
  {
    v10 = result;
    v11 = a4;
    v12 = a2;
    v13 = a3;
    result = sub_21BA884DC();
    if (v10 < 0 || result < v10)
    {
      goto LABEL_23;
    }

    v14 = sub_21BA884DC();
    a3 = v13;
    a2 = v12;
    a4 = v11;
    v5 = v14;
    result = v10;
    if (v13 < 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v5 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 < result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (a3 < 0)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  if (v5 < a3)
  {
    goto LABEL_22;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_12:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v9 = result;
    v8 = sub_21BA884DC();
    result = v9;
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < 0 || v8 < result)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_21B9C469C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else if (!(*v2 >> 62))
  {
    result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v5 = a2;
  result = sub_21BA884DC();
  a2 = v5;
  if (v3 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3 < result)
  {
    *a2 = v3;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t *sub_21B9C470C(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v3 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v4 = result;
  v3 = sub_21BA884DC();
  result = v4;
  if (v2 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v2 < v3)
  {
    *result = v2;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21B9C4798@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = sub_21BA884DC();
    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = result;
  return result;
}

void (*sub_21B9C47E8(void *a1, void (**a2)(uint64_t a1)))(uint64_t a1)
{
  result = *a2;
  v5 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x21CEFD920](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 8 * result + 32);
LABEL_5:
    *a1 = v6;
    a1[1] = v6;
    return sub_21B9C4868;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B9C4870@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  result = *v2;
  if (*v2 >> 62)
  {
    v2 = a2;
    v3 = result;
    result = sub_21BA884DC();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < 0)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (v7 < v4)
    {
LABEL_9:
      __break(1u);
LABEL_10:
      v7 = result;
      a2 = v2;
      result = v3;
      if (v5 < 0)
      {
        goto LABEL_11;
      }
    }

    *a2 = v5;
    a2[1] = v4;
    a2[2] = result;
  }

  return result;
}

uint64_t sub_21B9C4908@<X0>(void *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = sub_21BA884DC();
    if (result < 0)
    {
      __break(1u);
    }

    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = 0;
  a1[1] = result;
  return result;
}

BOOL sub_21B9C4960()
{
  if (*v0 >> 62)
  {
    v1 = sub_21BA884DC();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t sub_21B9C49B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
  }

  else if (!(*v3 >> 62))
  {
    result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v6 = a3;
  result = sub_21BA884DC();
  a3 = v6;
  if (v4 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (result >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21B9C4A24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_21B9C4570(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_21B9C4A60(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*v2 >> 62)
  {
    result = sub_21BA884DC();
    if ((v3 & 0x8000000000000000) != 0 || result < v3)
    {
      goto LABEL_10;
    }

    result = sub_21BA884DC();
    if (v4 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 <= result)
  {
    if (v4 < 0)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

LABEL_4:
    if (result >= v4)
    {
      return v4 - v3;
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t *sub_21B9C4AEC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_21B9C4B08(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_21B9C4B24(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B9C4B40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*v2 >> 62)
  {
    v5 = a2;
    result = sub_21BA884DC();
    a2 = v5;
    if (v3 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < 0)
    {
      goto LABEL_6;
    }
  }

  if (v3 < result)
  {
    *a2 = v3 + 1;
    return result;
  }

LABEL_6:
  __break(1u);
  return result;
}

uint64_t *sub_21B9C4BA8(uint64_t *result)
{
  v2 = *result;
  if (*v1 >> 62)
  {
    v4 = result;
    v3 = sub_21BA884DC();
    result = v4;
    if (v2 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < 0)
    {
      goto LABEL_6;
    }
  }

  if (v2 < v3)
  {
    *result = v2 + 1;
    return result;
  }

LABEL_6:
  __break(1u);
  return result;
}

uint64_t sub_21B9C4C40(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  v2 = sub_21BA884DC();
  result = sub_21BA884DC();
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_21BA884DC();
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (result >= v2)
      {
        return v2;
      }
    }

LABEL_7:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B9C4CC0()
{
  v1 = sub_21B9C53AC(*v0);

  return v1;
}

uint64_t sub_21B9C4D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B9C5D74();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

void *sub_21B9C4D90(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D270, &qword_21BA92850);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_21B9C4E18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D550, &qword_21BA93EB8);
  v34 = v4;
  result = sub_21BA8871C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_21BA88BAC();
      sub_21BA87D8C();
      result = sub_21BA88BCC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B9C50C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21B940DCC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21B9C4E18(v16, a4 & 1);
      v11 = sub_21B940DCC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_21BA88B0C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21B9C523C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}