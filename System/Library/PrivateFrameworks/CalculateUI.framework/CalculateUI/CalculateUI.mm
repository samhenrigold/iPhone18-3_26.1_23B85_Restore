uint64_t type metadata accessor for CalculateExpressionView(uint64_t a1)
{
  result = qword_1EDE75088;
  if (!qword_1EDE75088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1DC0B94(uint64_t a1)
{
  sub_1C1E5444C();
  if (v1 <= 0x3F)
  {
    sub_1C1DC0D28(319, &qword_1EDE737A8, 0x1E69DC888);
    if (v2 <= 0x3F)
    {
      sub_1C1DC0D70(319, &qword_1EDE73B10, MEMORY[0x1E6980FB8], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C1DC0DD4(319);
        if (v4 <= 0x3F)
        {
          sub_1C1DC0D70(319, &qword_1EDE73AF8, type metadata accessor for PlatformKeyboardHandler, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1C1DC0E5C(319, &qword_1EDE73B00, &type metadata for CalculateExpressionView.FadeState, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C1DC0D28(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1C1DC0D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C1DC0DD4(uint64_t a1)
{
  if (!qword_1EDE750B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C1B8, "2E");
    v1 = sub_1C1E549CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE750B8);
    }
  }
}

void sub_1C1DC0E5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C1DC0F28()
{
  result = qword_1EDE73B60;
  if (!qword_1EDE73B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C1C0, &qword_1C1E55D80);
    sub_1C1DC0FB4();
    sub_1C1DC116C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B60);
  }

  return result;
}

unint64_t sub_1C1DC0FB4()
{
  result = qword_1EDE73B88;
  if (!qword_1EDE73B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C188, &qword_1C1E55C60);
    sub_1C1DC106C();
    sub_1C1DC1124(&qword_1EDE73B30, &qword_1EBF1C1A8, &qword_1C1E55C80, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B88);
  }

  return result;
}

unint64_t sub_1C1DC106C()
{
  result = qword_1EDE73BB0;
  if (!qword_1EDE73BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C180, &qword_1C1E55C58);
    sub_1C1DC1124(&qword_1EDE73B18, &qword_1EBF1C1A0, &qword_1C1E55C78, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BB0);
  }

  return result;
}

uint64_t sub_1C1DC1124(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1C1DC116C()
{
  result = qword_1EDE73BB8;
  if (!qword_1EDE73BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C198, &qword_1C1E55C70);
    sub_1C1DC1124(&qword_1EDE73BC8, &qword_1EBF1C1B0, &qword_1C1E55C88, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BB8);
  }

  return result;
}

uint64_t CalculateExpressionView.init(expression:isEditable:height:minFontSizeRatio:textAlignment:textColor:truncationMode:operationCallback:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, double a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v33 = a6;
  v31 = a4;
  v32 = a5;
  v30 = a3;
  v34 = a11;
  v35 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C190, &qword_1C1E55C68);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  v19 = a10 / 1.35;
  sub_1C1DC1424(a7, &v30 - v17, &qword_1EBF1C190, &qword_1C1E55C68);
  v20 = type metadata accessor for CalculateExpressionView(0);
  v21 = (a9 + v20[12]);
  type metadata accessor for PlatformKeyboardHandler();
  swift_allocObject();
  v36 = sub_1C1DC148C();
  sub_1C1E536DC();
  v22 = v38;
  *v21 = v37;
  v21[1] = v22;
  v23 = a9 + v20[13];
  LOBYTE(v36) = 0;
  sub_1C1E536DC();
  v24 = v38;
  *v23 = v37;
  *(v23 + 8) = v24;
  *a9 = a1;
  *(a9 + 8) = a2;
  v25 = v30;
  if (v31)
  {
    v25 = 0.766666667;
  }

  *(a9 + 16) = v19;
  *(a9 + 24) = v25;
  *(a9 + 40) = v32;
  sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);
  v26 = sub_1C1E5499C();
  sub_1C1DC1870(a7, &qword_1EBF1C190, &qword_1C1E55C68);
  *(a9 + 32) = v26;
  result = sub_1C1DC18D0(v18, a9 + v20[10], &qword_1EBF1C190, &qword_1C1E55C68);
  v28 = (a9 + v20[11]);
  v29 = v34;
  *v28 = v35;
  v28[1] = v29;
  return result;
}

uint64_t sub_1C1DC1424(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_1C1DC148C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D8, &qword_1C1E5AB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E58C40;
  sub_1C1E5432C();
  *(inited + 32) = sub_1C1E5428C();
  *(inited + 40) = sub_1C1E5422C();
  *(inited + 48) = sub_1C1E5405C();
  *(inited + 56) = sub_1C1E5408C();
  v3 = sub_1C1DC1588(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v1[2] = v3;
  v1[3] = sub_1C1E545FC();
  v1[4] = v4;
  v1[5] = sub_1C1E545FC();
  v1[6] = v5;
  v1[7] = sub_1C1E545FC();
  v1[8] = v6;
  return v1;
}

unint64_t sub_1C1DC1588(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1C1E54ACC();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE28, &qword_1C1E5AE18);
      result = sub_1C1E54B2C();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1C1E54ACC();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1C6910730](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1C1E5432C();
    sub_1C1DC181C(&qword_1EDE738B0, MEMORY[0x1E6992120], MEMORY[0x1E6992128]);
    result = sub_1C1E5453C();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1C1DC181C(&qword_1EDE738A8, MEMORY[0x1E6992120], MEMORY[0x1E6992130]);
      do
      {
        result = sub_1C1E545AC();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C1DC181C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1DC1870(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C1DC18D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t storeEnumTagSinglePayload for CalculateExpressionView.FadeState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalculateExpressionView.FadeState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t CalculateExpressionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for CalculateExpressionView(0);
  v3 = v2 - 8;
  v49 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v50 = v4;
  v51 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C178, &qword_1C1E55C50);
  MEMORY[0x1EEE9AC00](v55);
  v6 = v46 - v5;
  v7 = sub_1C1E51E6C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46[1] = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C180, &qword_1C1E55C58);
  MEMORY[0x1EEE9AC00](v47);
  v10 = v46 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C188, &qword_1C1E55C60);
  MEMORY[0x1EEE9AC00](v54);
  v48 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C190, &qword_1C1E55C68);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v46 - v15;
  v17 = sub_1C1E530EC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = ceil(*(v1 + 16) * 1.35);
  sub_1C1E53CEC();

  sub_1C1DC1424(v1 + *(v3 + 48), v16, &qword_1EBF1C190, &qword_1C1E55C68);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1C1DC1870(v16, &qword_1EBF1C190, &qword_1C1E55C68);
    v22 = v51;
    sub_1C1DC7390(v1, v51);
    v23 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v24 = (v50 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_1C1DC73F4(v22, v25 + v23);
    *(v25 + v24) = v21;
    sub_1C1E538CC();
    sub_1C1E5281C();
    v26 = v58;
    v27 = v59;
    v28 = v60;
    v29 = v61;
    v57 = v59;
    v56 = v61;
    *v6 = sub_1C1DC2710;
    *(v6 + 1) = v25;
    *(v6 + 2) = v26;
    v6[24] = v27;
    *(v6 + 4) = v28;
    v6[40] = v29;
    *(v6 + 3) = v62;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C198, &qword_1C1E55C70);
    sub_1C1DC0FB4();
    sub_1C1DC116C();
    return sub_1C1E52CEC();
  }

  else
  {
    v31 = *(v18 + 32);
    v46[0] = v20;
    v31(v20, v16, v17);
    v51 = sub_1C1DCA4C8(INFINITY, v21);
    sub_1C1E51E7C();
    v32 = sub_1C1E5315C();
    v49 = v33;
    v50 = v34;
    v36 = v35;
    KeyPath = swift_getKeyPath();
    v38 = &v10[*(v47 + 36)];
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C1A0, &qword_1C1E55C78);
    (*(v18 + 16))(v38 + *(v39 + 28), v20, v17);
    *v38 = KeyPath;
    v40 = v49;
    *v10 = v32;
    *(v10 + 1) = v40;
    v10[16] = v36 & 1;
    *(v10 + 3) = v50;
    if (sub_1C1E5290C())
    {
      v41 = 2;
    }

    else
    {
      v41 = 0;
    }

    v42 = swift_getKeyPath();
    v43 = v48;
    sub_1C1DC18D0(v10, v48, &qword_1EBF1C180, &qword_1C1E55C58);
    v44 = v43 + *(v54 + 36);
    *v44 = v42;
    *(v44 + 8) = v41;
    v45 = v52;
    sub_1C1DC18D0(v43, v52, &qword_1EBF1C188, &qword_1C1E55C60);
    sub_1C1DC1424(v45, v6, &qword_1EBF1C188, &qword_1C1E55C60);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C198, &qword_1C1E55C70);
    sub_1C1DC0FB4();
    sub_1C1DC116C();
    sub_1C1E52CEC();

    sub_1C1DC1870(v45, &qword_1EBF1C188, &qword_1C1E55C60);
    return (*(v18 + 8))(v46[0], v17);
  }
}

uint64_t sub_1C1DC20FC()
{
  v1 = type metadata accessor for CalculateExpressionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 40);
  v7 = sub_1C1E530EC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + *(v1 + 44)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C1DC2288(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1C1DC22B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = sub_1C1E5285C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = type metadata accessor for CalculateExpressionView(0);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1E5283C();
  v15 = sub_1C1DCA4C8(v14, a4);
  v17 = v16;
  v19 = v18;
  v20 = sub_1C1E538DC();
  v29 = v21;
  v30 = v20;
  sub_1C1DC7390(a2, v13);
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v22 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v23 = (v12 + *(v9 + 80) + v22) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v15;
  *(v24 + 3) = v17;
  *(v24 + 4) = v19;
  sub_1C1DC73F4(v13, &v24[v22]);
  result = (*(v9 + 32))(&v24[v23], &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *&v24[(v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8] = a4;
  v26 = v29;
  *a3 = v30;
  a3[1] = v26;
  a3[2] = sub_1C1DCE198;
  a3[3] = v24;
  return result;
}

uint64_t sub_1C1DC24EC()
{
  v1 = type metadata accessor for CalculateExpressionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v13 = *(*(v1 - 8) + 64);
  v14 = sub_1C1E5285C();
  v4 = *(v14 - 8);
  v5 = *(v4 + 80);
  v12 = *(v4 + 64);

  v6 = v0 + v3;

  v7 = *(v1 + 40);
  v8 = sub_1C1E530EC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  if (*(v6 + *(v1 + 44)))
  {
  }

  v10 = (v3 + v13 + v5) & ~v5;

  (*(v4 + 8))(v0 + v10, v14);

  return MEMORY[0x1EEE6BDD0](v0, ((v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v5 | 7);
}

uint64_t sub_1C1DC2710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for CalculateExpressionView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C1DC22B4(a1, v2 + v6, a2, v7);
}

void sub_1C1DC27DC(uint64_t a1)
{
  sub_1C1DC7490(319, &qword_1EDE750B0, MEMORY[0x1E6968848]);
  if (v1 <= 0x3F)
  {
    sub_1C1DC7490(319, qword_1EDE73A88, _s11LabelSymbolVMa);
    if (v2 <= 0x3F)
    {
      sub_1C1DC7490(319, qword_1EDE739E0, _s13LabelFractionVMa);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C1DC28EC(uint64_t a1)
{
  sub_1C1E5296C();
  if (v1 <= 0x3F)
  {
    sub_1C1E5207C();
    if (v2 <= 0x3F)
    {
      sub_1C1E51618();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C1DC29C0(uint64_t a1)
{
  result = sub_1C1E51E6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t CalculateExpression.label(for:fontSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v138 = a1;
  v136 = a2;
  v5 = sub_1C1E5296C();
  v127 = *(v5 - 8);
  v128 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v112 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v111 - v8;
  v9 = _s11LabelSymbolVMa(0);
  v134 = *(v9 - 8);
  v135 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v111 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v124 = (&v111 - v14);
  v117 = sub_1C1E51E4C();
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C1E51E6C();
  v130 = *(v16 - 8);
  v131 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1C1E51FEC();
  v126 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v115 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDD0, &qword_1C1E5AB78);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v111 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDD8, &qword_1C1E5AB80);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v118 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v111 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v111 - v28;
  v30 = sub_1C1E5205C();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1C1E5207C();
  v122 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v114 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v129 = &v111 - v36;
  v37 = _s13LabelFractionVMa(0);
  v132 = *(v37 - 8);
  v133 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v111 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v3;
  if (sub_1C1E53B2C())
  {
    sub_1C1E5432C();
    sub_1C1E53DCC();
    v40 = sub_1C1E53FAC();

    if (v40)
    {
      memset(v141, 0, sizeof(v141));
      v142 = 1;
      sub_1C1DC50CC(49, 0xE100000000000000, 0.0, 1, v141, 1, 1, 0, v39, a3 / 1.3, 1u, 1u);
      v41 = v133;
      sub_1C1DC50CC(120, 0xE100000000000000, 0.0, 1, v141, 1, 1, 0, &v39[*(v133 + 20)], a3 / 1.3, 1u, 1u);
      *&v39[*(v41 + 24)] = a3;
      v42 = v136;
      (*(v130 + 56))(v136, 1, 1, v131);
      v43 = type metadata accessor for CalculateExpression.Label(0);
      (*(v134 + 56))(v42 + *(v43 + 20), 1, 1, v135);
      v44 = *(v43 + 24);
      sub_1C1DCA204(v39, v42 + v44, _s13LabelFractionVMa);
      return (*(v132 + 56))(v42 + v44, 0, 1, v41);
    }
  }

  sub_1C1E5432C();
  sub_1C1E5427C();
  v46 = sub_1C1E53FAC();

  if (v46)
  {
    sub_1C1E53BBC();
    sub_1C1E5206C();
    sub_1C1E5204C();
    (*(v31 + 8))(v33, v30);
    sub_1C1E51FDC();
    v47 = v126;
    v48 = v121;
    (*(v126 + 56))(v26, 0, 1, v121);
    v49 = *(v19 + 48);
    v50 = v48;
    sub_1C1DC1424(v29, v21, &qword_1EBF1DDD8, &qword_1C1E5AB80);
    sub_1C1DC1424(v26, &v21[v49], &qword_1EBF1DDD8, &qword_1C1E5AB80);
    v51 = *(v47 + 48);
    if (v51(v21, 1, v48) == 1)
    {
      sub_1C1DC1870(v26, &qword_1EBF1DDD8, &qword_1C1E5AB80);
      sub_1C1DC1870(v29, &qword_1EBF1DDD8, &qword_1C1E5AB80);
      v52 = v51(&v21[v49], 1, v48);
      v53 = v130;
      v54 = v125;
      if (v52 == 1)
      {
        sub_1C1DC1870(v21, &qword_1EBF1DDD8, &qword_1C1E5AB80);
        v55 = v131;
        v56 = v122;
        goto LABEL_22;
      }
    }

    else
    {
      v66 = v118;
      sub_1C1DC1424(v21, v118, &qword_1EBF1DDD8, &qword_1C1E5AB80);
      v67 = v51(&v21[v49], 1, v50);
      v68 = v50;
      v54 = v125;
      if (v67 != 1)
      {
        v93 = v126;
        v94 = &v21[v49];
        v95 = v115;
        (*(v126 + 32))(v115, v94, v68);
        sub_1C1DC181C(&qword_1EDE75098, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
        LODWORD(v138) = sub_1C1E545AC();
        v96 = *(v93 + 8);
        v96(v95, v68);
        sub_1C1DC1870(v26, &qword_1EBF1DDD8, &qword_1C1E5AB80);
        sub_1C1DC1870(v29, &qword_1EBF1DDD8, &qword_1C1E5AB80);
        v96(v66, v68);
        v54 = v125;
        sub_1C1DC1870(v21, &qword_1EBF1DDD8, &qword_1C1E5AB80);
        v53 = v130;
        v55 = v131;
        v56 = v122;
        if (v138)
        {
LABEL_22:
          v97 = sub_1C1E5427C();
          v98 = v120;
          CalculateExpression.caption(for:fontSize:)(v97, v120, 13.0);

          sub_1C1E51E3C();
          (*(v53 + 8))(v98, v55);
          sub_1C1DC181C(&qword_1EBF1DDE0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
          *&v141[0] = sub_1C1E5477C();
          *(&v141[0] + 1) = v99;
          v139 = 37;
          v140 = 0xE100000000000000;
          sub_1C1DC733C(*&v141[0], v99, v100);
          v101 = sub_1C1E54A3C();

          if (v101)
          {
            v102 = v114;
            sub_1C1E51FAC();
            v103 = v129;
            (*(v56 + 8))(v129, v54);
            (*(v56 + 32))(v103, v102, v54);
          }
        }

LABEL_24:
        v104 = sub_1C1E53B2C();
        v106 = v127;
        v105 = v128;
        v107 = MEMORY[0x1E697E7D8];
        if ((v104 & 1) == 0)
        {
          v107 = MEMORY[0x1E697E7D0];
        }

        v108 = v123;
        (*(v127 + 104))(v123, *v107, v128);
        v109 = v124;
        *v124 = 1.81844024e-306;
        v109[1] = -1.39234638e188;
        v109[2] = a3;
        v83 = v135;
        (*(v106 + 32))(v109 + v135[6], v108, v105);
        (*(v56 + 32))(v109 + v83[7], v129, v54);
        v110 = v109 + v83[8];
        *v110 = 0u;
        *(v110 + 1) = 0u;
        v110[32] = 1;
        v62 = v136;
        (*(v53 + 56))(v136, 1, 1, v55);
        v86 = type metadata accessor for CalculateExpression.Label(0);
        v87 = *(v86 + 20);
        v88 = v62 + v87;
        v89 = v109;
LABEL_27:
        sub_1C1DCA204(v89, v88, _s11LabelSymbolVMa);
        (*(v134 + 56))(v62 + v87, 0, 1, v83);
        v65 = *(v86 + 24);
        return (*(v132 + 56))(v62 + v65, 1, 1, v133);
      }

      sub_1C1DC1870(v26, &qword_1EBF1DDD8, &qword_1C1E5AB80);
      sub_1C1DC1870(v29, &qword_1EBF1DDD8, &qword_1C1E5AB80);
      (*(v126 + 8))(v66, v68);
      v53 = v130;
    }

    sub_1C1DC1870(v21, &qword_1EBF1DDD0, &qword_1C1E5AB78);
    v55 = v131;
    v56 = v122;
    goto LABEL_24;
  }

  sub_1C1E540DC();
  v57 = v138;
  v58 = sub_1C1E53FAC();

  if ((v58 & 1) == 0)
  {
    v69 = v57;
    v71 = v130;
    v70 = v131;
    if (qword_1EDE73978 != -1)
    {
      swift_once();
    }

    v72 = off_1EDE73980;
    if (!*(off_1EDE73980 + 2) || (v73 = sub_1C1DC4CBC(v57), (v74 & 1) == 0))
    {
      v90 = v120;
      CalculateExpression.caption(for:fontSize:)(v69, v120, a3);
      v91 = v136;
      (*(v71 + 32))(v136, v90, v70);
      (*(v71 + 56))(v91, 0, 1, v70);
      v92 = type metadata accessor for CalculateExpression.Label(0);
      (*(v134 + 56))(v91 + *(v92 + 20), 1, 1, v135);
      return (*(v132 + 56))(v91 + *(v92 + 24), 1, 1, v133);
    }

    v75 = (v72[7] + 16 * v73);
    v77 = *v75;
    v76 = v75[1];

    v78 = sub_1C1E53B2C();
    v80 = v127;
    v79 = v128;
    v81 = MEMORY[0x1E697E7D8];
    if ((v78 & 1) == 0)
    {
      v81 = MEMORY[0x1E697E7D0];
    }

    v82 = v112;
    (*(v127 + 104))(v112, *v81, v128);
    v83 = v135;
    v84 = v113;
    sub_1C1E53BBC();
    *v84 = v77;
    *(v84 + 1) = v76;
    *(v84 + 2) = a3;
    (*(v80 + 32))(&v84[v83[6]], v82, v79);
    v85 = &v84[v83[8]];
    *v85 = 0u;
    *(v85 + 1) = 0u;
    v85[32] = 1;
    v62 = v136;
    (*(v71 + 56))(v136, 1, 1, v70);
    v86 = type metadata accessor for CalculateExpression.Label(0);
    v87 = *(v86 + 20);
    v88 = v62 + v87;
    v89 = v84;
    goto LABEL_27;
  }

  v59 = v135;
  v60 = v119;
  (*(v127 + 104))(&v119[v135[6]], *MEMORY[0x1E697E7D0], v128);
  sub_1C1E53BBC();
  *v60 = 0x6C2E6574656C6564;
  *(v60 + 8) = 0xEB00000000746665;
  *(v60 + 16) = a3 * 0.95;
  v61 = v60 + v59[8];
  *v61 = 0;
  *(v61 + 8) = 0;
  *(v61 + 16) = 0;
  *(v61 + 24) = a3 * 0.05;
  *(v61 + 32) = 0;
  v62 = v136;
  (*(v130 + 56))(v136, 1, 1, v131);
  v63 = type metadata accessor for CalculateExpression.Label(0);
  v64 = *(v63 + 20);
  sub_1C1DCA204(v60, v62 + v64, _s11LabelSymbolVMa);
  (*(v134 + 56))(v62 + v64, 0, 1, v59);
  v65 = *(v63 + 24);
  return (*(v132 + 56))(v62 + v65, 1, 1, v133);
}

uint64_t CalculateExpression.caption(for:fontSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v62 = a1;
  v60 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDC0, &qword_1C1E5AB60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1E5AAE0;
  sub_1C1E5432C();
  *(v4 + 32) = sub_1C1E540EC();
  v61 = v4 + 32;
  *(v4 + 40) = 48;
  *(v4 + 48) = 0xE100000000000000;
  *(v4 + 56) = sub_1C1E540FC();
  *(v4 + 64) = 49;
  *(v4 + 72) = 0xE100000000000000;
  *(v4 + 80) = sub_1C1E5410C();
  *(v4 + 88) = 50;
  *(v4 + 96) = 0xE100000000000000;
  *(v4 + 104) = sub_1C1E5411C();
  *(v4 + 112) = 51;
  *(v4 + 120) = 0xE100000000000000;
  *(v4 + 128) = sub_1C1E5412C();
  *(v4 + 136) = 52;
  *(v4 + 144) = 0xE100000000000000;
  *(v4 + 152) = sub_1C1E5413C();
  *(v4 + 160) = 53;
  *(v4 + 168) = 0xE100000000000000;
  *(v4 + 176) = sub_1C1E5414C();
  *(v4 + 184) = 54;
  *(v4 + 192) = 0xE100000000000000;
  *(v4 + 200) = sub_1C1E5415C();
  *(v4 + 208) = 55;
  *(v4 + 216) = 0xE100000000000000;
  *(v4 + 224) = sub_1C1E5416C();
  *(v4 + 232) = 56;
  *(v4 + 240) = 0xE100000000000000;
  *(v4 + 248) = sub_1C1E5417C();
  *(v4 + 256) = 57;
  *(v4 + 264) = 0xE100000000000000;
  *(v4 + 272) = sub_1C1E5424C();
  *(v4 + 280) = 46;
  *(v4 + 288) = 0xE100000000000000;
  *(v4 + 296) = sub_1C1E53F9C();
  *(v4 + 304) = 17733;
  *(v4 + 312) = 0xE200000000000000;
  *(v4 + 320) = sub_1C1E53FDC();
  *(v4 + 328) = 43;
  *(v4 + 336) = 0xE100000000000000;
  *(v4 + 344) = sub_1C1E542EC();
  *(v4 + 352) = 9603298;
  *(v4 + 360) = 0xA300000000000000;
  *(v4 + 368) = sub_1C1E542DC();
  *(v4 + 376) = 38851;
  *(v4 + 384) = 0xA200000000000000;
  *(v4 + 392) = sub_1C1E541EC();
  *(v4 + 400) = 47043;
  *(v4 + 408) = 0xA200000000000000;
  *(v4 + 416) = sub_1C1E5427C();
  *(v4 + 424) = 37;
  *(v4 + 432) = 0xE100000000000000;
  *(v4 + 440) = sub_1C1E5430C();
  *(v4 + 448) = 8568;
  *(v4 + 456) = 0xE200000000000000;
  *(v4 + 464) = sub_1C1E53E9C();
  *(v4 + 472) = 40;
  *(v4 + 480) = 0xE100000000000000;
  *(v4 + 488) = sub_1C1E53EAC();
  *(v4 + 496) = 41;
  *(v4 + 504) = 0xE100000000000000;
  *(v4 + 512) = sub_1C1E53FCC();
  *(v4 + 520) = 32975;
  *(v4 + 528) = 0xA200000000000000;
  *(v4 + 536) = sub_1C1E53DFC();
  *(v4 + 544) = 2459016688;
  *(v4 + 552) = 0xA400000000000000;
  *(v4 + 560) = sub_1C1E5421C();
  *(v4 + 568) = 1684955474;
  *(v4 + 576) = 0xE400000000000000;
  *(v4 + 584) = sub_1C1E5423C();
  *(v4 + 592) = 3300984;
  *(v4 + 600) = 0xE300000000000000;
  *(v4 + 608) = sub_1C1E5404C();
  *(v4 + 616) = 3366520;
  *(v4 + 624) = 0xE300000000000000;
  *(v4 + 632) = sub_1C1E540BC();
  *(v4 + 640) = 7954040;
  *(v4 + 648) = 0xE300000000000000;
  *(v4 + 656) = sub_1C1E53DEC();
  *(v4 + 664) = 0x789A88E2325ELL;
  *(v4 + 672) = 0xA600000000000000;
  *(v4 + 680) = sub_1C1E542CC();
  *(v4 + 688) = 0x789A88E2335ELL;
  *(v4 + 696) = 0xA600000000000000;
  *(v4 + 704) = sub_1C1E5406C();
  *(v4 + 712) = 0x789A88E2795ELL;
  *(v4 + 720) = 0xA600000000000000;
  *(v4 + 728) = sub_1C1E53DCC();
  *(v4 + 736) = 0x785F8481E2315ELL;
  *(v4 + 744) = 0xA700000000000000;
  *(v4 + 752) = sub_1C1E5420C();
  *(v4 + 760) = 0x82E28481E2BA81E2;
  *(v4 + 768) = 0xA90000000000008BLL;
  *(v4 + 776) = sub_1C1E5407C();
  *(v4 + 784) = 7235955;
  *(v4 + 792) = 0xE300000000000000;
  *(v4 + 800) = sub_1C1E540CC();
  *(v4 + 808) = 7565155;
  *(v4 + 816) = 0xE300000000000000;
  *(v4 + 824) = sub_1C1E5429C();
  *(v4 + 832) = 7233908;
  *(v4 + 840) = 0xE300000000000000;
  *(v4 + 848) = sub_1C1E53E0C();
  *(v4 + 856) = 0x312D5E6E6973;
  *(v4 + 864) = 0xE600000000000000;
  *(v4 + 872) = sub_1C1E53E3C();
  *(v4 + 880) = 0x312D5E736F63;
  *(v4 + 888) = 0xE600000000000000;
  *(v4 + 896) = sub_1C1E53E5C();
  *(v4 + 904) = 0x312D5E6E6174;
  *(v4 + 912) = 0xE600000000000000;
  *(v4 + 920) = sub_1C1E53E4C();
  *(v4 + 928) = 1752066419;
  *(v4 + 936) = 0xE400000000000000;
  *(v4 + 944) = sub_1C1E53ECC();
  *(v4 + 952) = 1752395619;
  *(v4 + 960) = 0xE400000000000000;
  *(v4 + 968) = sub_1C1E53F1C();
  *(v4 + 976) = 1752064372;
  *(v4 + 984) = 0xE400000000000000;
  *(v4 + 992) = sub_1C1E53F6C();
  *(v4 + 1000) = 0x312D5E686E6973;
  *(v4 + 1008) = 0xE700000000000000;
  *(v4 + 1016) = sub_1C1E53F7C();
  *(v4 + 1024) = 0x312D5E68736F63;
  *(v4 + 1032) = 0xE700000000000000;
  *(v4 + 1040) = sub_1C1E53F8C();
  *(v4 + 1048) = 0x312D5E686E6174;
  *(v4 + 1056) = 0xE700000000000000;
  *(v4 + 1064) = sub_1C1E53E8C();
  *(v4 + 1072) = 0x30315F676F6CLL;
  *(v4 + 1080) = 0xE600000000000000;
  *(v4 + 1088) = sub_1C1E53E6C();
  *(v4 + 1096) = 0x325F676F6CLL;
  *(v4 + 1104) = 0xE500000000000000;
  *(v4 + 1112) = sub_1C1E53F3C();
  *(v4 + 1120) = 0x795F676F6CLL;
  *(v4 + 1128) = 0xE500000000000000;
  *(v4 + 1136) = sub_1C1E53EEC();
  *(v4 + 1144) = 28268;
  *(v4 + 1152) = 0xE200000000000000;
  *(v4 + 1160) = sub_1C1E53F0C();
  *(v4 + 1168) = 2019438641;
  *(v4 + 1176) = 0xE400000000000000;
  *(v4 + 1184) = sub_1C1E53EBC();
  *(v4 + 1192) = 7888434;
  *(v4 + 1200) = 0xE300000000000000;
  *(v4 + 1208) = sub_1C1E53F5C();
  *(v4 + 1216) = 7888505;
  *(v4 + 1224) = 0xE300000000000000;
  *(v4 + 1232) = sub_1C1E53F4C();
  *(v4 + 1240) = 0x785E92919DF0;
  *(v4 + 1248) = 0xA600000000000000;
  *(v4 + 1256) = sub_1C1E5418C();
  *(v4 + 1264) = 65;
  *(v4 + 1272) = 0xE100000000000000;
  *(v4 + 1280) = sub_1C1E5419C();
  *(v4 + 1288) = 66;
  *(v4 + 1296) = 0xE100000000000000;
  *(v4 + 1304) = sub_1C1E541AC();
  *(v4 + 1312) = 67;
  *(v4 + 1320) = 0xE100000000000000;
  *(v4 + 1328) = sub_1C1E541BC();
  *(v4 + 1336) = 68;
  *(v4 + 1344) = 0xE100000000000000;
  *(v4 + 1352) = sub_1C1E541CC();
  *(v4 + 1360) = 69;
  *(v4 + 1368) = 0xE100000000000000;
  *(v4 + 1376) = sub_1C1E541DC();
  *(v4 + 1384) = 70;
  *(v4 + 1392) = 0xE100000000000000;
  *(v4 + 1400) = sub_1C1E5425C();
  *(v4 + 1408) = 12336;
  *(v4 + 1416) = 0xE200000000000000;
  *(v4 + 1424) = sub_1C1E5426C();
  *(v4 + 1432) = 17990;
  *(v4 + 1440) = 0xE200000000000000;
  *(v4 + 1448) = sub_1C1E53FEC();
  *(v4 + 1456) = 4476481;
  *(v4 + 1464) = 0xE300000000000000;
  *(v4 + 1472) = sub_1C1E53FBC();
  *(v4 + 1480) = 21071;
  *(v4 + 1488) = 0xE200000000000000;
  *(v4 + 1496) = sub_1C1E5401C();
  *(v4 + 1504) = 5394254;
  *(v4 + 1512) = 0xE300000000000000;
  *(v4 + 1520) = sub_1C1E5403C();
  *(v4 + 1528) = 5394264;
  *(v4 + 1536) = 0xE300000000000000;
  *(v4 + 1544) = sub_1C1E53FFC();
  *(v4 + 1552) = 6582125;
  *(v4 + 1560) = 0xE300000000000000;
  *(v4 + 1568) = sub_1C1E5431C();
  *(v4 + 1576) = 15420;
  *(v4 + 1584) = 0xE200000000000000;
  *(v4 + 1592) = sub_1C1E53DDC();
  *(v4 + 1600) = 15934;
  *(v4 + 1608) = 0xE200000000000000;
  *(v4 + 1616) = sub_1C1E53E7C();
  *(v4 + 1624) = 1497119832;
  *(v4 + 1632) = 0xE400000000000000;
  *(v4 + 1640) = sub_1C1E53EFC();
  *(v4 + 1648) = 1497251416;
  *(v4 + 1656) = 0xE400000000000000;
  *(v4 + 1664) = sub_1C1E53DBC();
  *(v4 + 1672) = 5009234;
  *(v4 + 1680) = 0xE300000000000000;
  *(v4 + 1688) = sub_1C1E53E2C();
  *(v4 + 1696) = 5402450;
  *(v4 + 1704) = 0xE300000000000000;
  *(v4 + 1712) = sub_1C1E53EDC();
  *(v4 + 1720) = 0x59204C6F522058;
  *(v4 + 1728) = 0xE700000000000000;
  *(v4 + 1736) = sub_1C1E53F2C();
  *(v4 + 1744) = 0x5920526F522058;
  *(v4 + 1752) = 0xE700000000000000;
  *(v4 + 1760) = sub_1C1E542BC();
  *(v4 + 1768) = 0x385F70696C66;
  *(v4 + 1776) = 0xE600000000000000;
  *(v4 + 1784) = sub_1C1E542FC();
  *(v4 + 1792) = 0x36315F70696C66;
  *(v4 + 1800) = 0xE700000000000000;
  *(v4 + 1808) = sub_1C1E5402C();
  *(v4 + 1816) = 5525326;
  *(v4 + 1824) = 0xE300000000000000;
  *(v4 + 1832) = sub_1C1E5400C();
  *(v4 + 1840) = 4670798;
  *(v4 + 1848) = 0xE300000000000000;
  *(v4 + 1856) = sub_1C1E5405C();
  *(v4 + 1864) = 1886351972;
  *(v4 + 1872) = 0xE400000000000000;
  *(v4 + 1880) = sub_1C1E5408C();
  *(v4 + 1888) = 0x799486E278;
  *(v4 + 1896) = 0xA500000000000000;
  *(v4 + 1904) = sub_1C1E5422C();
  *(v4 + 1912) = 2475090514;
  *(v4 + 1920) = 0xA400000000000000;
  *(v4 + 1928) = sub_1C1E5428C();
  *(v4 + 1936) = 2441536082;
  *(v4 + 1944) = 0xA400000000000000;
  *(v4 + 1952) = sub_1C1E540AC();
  *(v4 + 1960) = 0x7265746E65;
  *(v4 + 1968) = 0xE500000000000000;
  *(v4 + 1976) = sub_1C1E53E1C();
  *(v4 + 1984) = 0x799A88E2785ELL;
  *(v4 + 1992) = 0xA600000000000000;
  *(v4 + 2000) = sub_1C1E540DC();
  *(v4 + 2008) = 11242722;
  *(v4 + 2016) = 0xA300000000000000;
  *(v4 + 2024) = sub_1C1E5409C();
  *(v4 + 2032) = 67;
  *(v4 + 2040) = 0xE100000000000000;
  *(v4 + 2048) = sub_1C1E542AC();
  *(v4 + 2056) = 17217;
  *(v4 + 2064) = 0xE200000000000000;
  *(v4 + 2072) = sub_1C1E541FC();
  *(v4 + 2080) = 61;
  *(v4 + 2088) = 0xE100000000000000;
  v5 = sub_1C1DC4BBC(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDC8, &qword_1C1E5AB68);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D8, &qword_1C1E5AB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E5AAF0;
  *(inited + 32) = sub_1C1E5418C();
  *(inited + 40) = sub_1C1E5419C();
  *(inited + 48) = sub_1C1E541AC();
  *(inited + 56) = sub_1C1E541BC();
  *(inited + 64) = sub_1C1E541CC();
  *(inited + 72) = sub_1C1E541DC();
  *(inited + 80) = sub_1C1E5425C();
  *(inited + 88) = sub_1C1E5426C();
  *(inited + 96) = sub_1C1E53FEC();
  *(inited + 104) = sub_1C1E53FBC();
  *(inited + 112) = sub_1C1E5401C();
  *(inited + 120) = sub_1C1E5403C();
  *(inited + 128) = sub_1C1E53FFC();
  *(inited + 136) = sub_1C1E5431C();
  *(inited + 144) = sub_1C1E53DDC();
  *(inited + 152) = sub_1C1E53E7C();
  *(inited + 160) = sub_1C1E53EFC();
  *(inited + 168) = sub_1C1E53DBC();
  *(inited + 176) = sub_1C1E53E2C();
  *(inited + 184) = sub_1C1E53EDC();
  *(inited + 192) = sub_1C1E53F2C();
  *(inited + 200) = sub_1C1E542BC();
  *(inited + 208) = sub_1C1E542FC();
  *(inited + 216) = sub_1C1E5402C();
  *(inited + 224) = sub_1C1E5400C();
  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = sub_1C1DC1588(inited);
    swift_setDeallocating();
  }

  else
  {
    swift_setDeallocating();
    v7 = MEMORY[0x1E69E7CD0];
  }

  swift_arrayDestroy();
  v8 = sub_1C1E53D2C();
  if (v8 != 1)
  {
    if (qword_1EDE738C0 != -1)
    {
      swift_once();
    }

    if (sub_1C1DC4F3C(v62, qword_1EDE738C8))
    {
      if (*(v5 + 16))
      {
        sub_1C1DC4CBC(v62);
        v10 = v9;

        if (v10)
        {

          v11 = sub_1C1E53B8C();
          v13 = v12;

          v63 = 0u;
          v64 = 0u;
          v65 = 1;
          LOWORD(v59) = 257;
          v14 = v60;
          v15 = v11;
          v16 = v13;
          v17 = a3;
          v18 = 0.0;
          v19 = 1;
          v20 = 1;
          v21 = 1;
          v22 = 0.0;
          goto LABEL_43;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_61:
      swift_once();
      goto LABEL_45;
    }

    sub_1C1E5424C();
    v23 = sub_1C1E53FAC();

    if (v23)
    {

      v24 = sub_1C1E53C8C();
      v25 = [v24 decimalSeparator];

      if (v25)
      {
        v26 = sub_1C1E545FC();
        v28 = v27;

        v29 = 43993;
        if (v26 == 43993)
        {
          v30 = 0xA200000000000000;
          if (v28 == 0xA200000000000000)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v28 = 0xE100000000000000;
        v26 = 46;
      }

      if ((sub_1C1E54D2C() & 1) == 0)
      {
        v22 = 0.0;
        v55 = 1;
        goto LABEL_51;
      }

      v30 = v28;
      v29 = v26;
LABEL_49:
      v55 = 0;
      v22 = a3 / 2.1;
      v28 = v30;
      v26 = v29;
LABEL_51:
      v63 = 0u;
      v64 = 0u;
      v65 = 1;
      BYTE1(v59) = 1;
      LOBYTE(v59) = v55;
      v14 = v60;
      v15 = v26;
      v16 = v28;
      v17 = a3;
      v18 = 0.0;
      v19 = 1;
      v20 = 1;
      v21 = 1;
      goto LABEL_43;
    }
  }

  v31 = sub_1C1DC4F3C(v62, v7);

  if (v31 & 1) != 0 || sub_1C1E53D2C() == 1 && ((sub_1C1E5409C(), v39 = sub_1C1E53FAC(), , (v39) || (sub_1C1E542AC(), v40 = sub_1C1E53FAC(), , (v40)))
  {
    v32 = 0;
    goto LABEL_18;
  }

  if (sub_1C1E53BFC())
  {
    v32 = 1;
    goto LABEL_18;
  }

  if (qword_1EBF1C170 != -1)
  {
    goto LABEL_61;
  }

LABEL_45:
  v54 = qword_1EBF1DD78;

  v32 = sub_1C1DC4F3C(v62, v54);

LABEL_18:
  if (qword_1EDE73978 != -1)
  {
    swift_once();
  }

  if (*(off_1EDE73980 + 2))
  {
    sub_1C1DC4CBC(v62);
    if (v33)
    {
      v34 = 0;
      v35 = a3 / 7.0;
      v36 = *MEMORY[0x1E69DB968];
      v37 = 1.5;
      goto LABEL_38;
    }
  }

  sub_1C1E540DC();
  v38 = sub_1C1E53FAC();

  if (v38)
  {
    v35 = 0.0;
    v36 = *MEMORY[0x1E69DB968];
LABEL_37:
    v34 = 1;
    v37 = 1.22;
    goto LABEL_38;
  }

  v36 = *MEMORY[0x1E69DB978];
  if (sub_1C1E53DAC() & v32 & 1) != 0 && (v41 = swift_initStackObject(), *(v41 + 16) = xmmword_1C1E58C40, *(v41 + 32) = sub_1C1E5421C(), *(v41 + 40) = sub_1C1E542AC(), *(v41 + 48) = sub_1C1E5409C(), v42 = sub_1C1E540AC(), v61 = *&v36, *(v41 + 56) = v42, *&v63 = v62, MEMORY[0x1EEE9AC00](v42), v59 = &v63, v43 = sub_1C1DC7594(sub_1C1DC7574, &v58, v41), swift_setDeallocating(), swift_arrayDestroy(), v36 = *&v61, (v43))
  {
    sub_1C1E5409C();
    v44 = sub_1C1E53FAC();

    if (v44)
    {
      v34 = 0;
      v45 = 6.0;
    }

    else
    {
      sub_1C1E542AC();
      v56 = sub_1C1E53FAC();

      if ((v56 & 1) == 0)
      {
        sub_1C1E540AC();
        v57 = sub_1C1E53FAC();

        v37 = 0.8;
        if (v57)
        {
          v34 = 0;
          v35 = a3 / 10.0;
        }

        else
        {
          v35 = 0.0;
          v34 = 1;
        }

        goto LABEL_38;
      }

      v34 = 0;
      v45 = 10.0;
    }

    v35 = a3 / v45;
    v37 = 0.8;
  }

  else
  {
    sub_1C1E5431C();
    v46 = sub_1C1E53FAC();

    if (v46 & 1) != 0 || (sub_1C1E53DDC(), v47 = sub_1C1E53FAC(), , (v47))
    {
      v35 = 0.0;
      goto LABEL_37;
    }

    v35 = 0.0;
    v37 = 1.0;
    v34 = 1;
  }

LABEL_38:
  if (*(v5 + 16) && (v48 = sub_1C1DC4CBC(v62), (v49 & 1) != 0))
  {
    v50 = (*(v5 + 56) + 16 * v48);
    v51 = *v50;
    v52 = v50[1];
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
  }

  v17 = v37 * a3;
  v63 = 0u;
  v64 = 0u;
  v65 = 1;
  BYTE1(v59) = 1;
  LOBYTE(v59) = v34;
  v21 = v32 & 1;
  v14 = v60;
  v15 = v51;
  v16 = v52;
  v18 = v36;
  v19 = 0;
  v20 = v8 != 1;
  v22 = v35;
LABEL_43:
  sub_1C1DC50CC(v15, v16, v18, v19, &v63, v20, v21, *&v22, v14, v17, v59, BYTE1(v59));
}

unint64_t sub_1C1DC4BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFD0, &qword_1C1E57E00);
    v3 = sub_1C1E54C3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C1DC4CBC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DC4CBC(uint64_t a1)
{
  sub_1C1E5432C();
  sub_1C1DC4DF8(&qword_1EDE738B0, MEMORY[0x1E6992120], MEMORY[0x1E6992128]);
  v2 = sub_1C1E5453C();
  return sub_1C1DC4E40(a1, v2);
}

uint64_t sub_1C1DC4D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1DC4DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1DC4DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1DC4E40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C1E5432C();
    sub_1C1DC4DF8(&qword_1EDE738A8, MEMORY[0x1E6992120], MEMORY[0x1E6992130]);
    do
    {
      if (sub_1C1E545AC())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C1DC4F3C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1C1E54AEC();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (sub_1C1E5432C(), sub_1C1DC181C(&qword_1EDE738B0, MEMORY[0x1E6992120], MEMORY[0x1E6992128]), v5 = sub_1C1E5453C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      sub_1C1DC181C(&qword_1EDE738A8, MEMORY[0x1E6992120], MEMORY[0x1E6992130]);
      do
      {
        v9 = sub_1C1E545AC();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

void sub_1C1DC50CC(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, char a7@<W6>, unint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, unsigned __int8 a11, unsigned __int8 a12)
{
  v13 = v12;
  v292 = a8;
  LODWORD(v301) = a6;
  v299 = a1;
  v296 = a9;
  v20 = *(a5 + 8);
  v21 = *(a5 + 24);
  *&v289 = *v13;
  v22 = sub_1C1E51E6C();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v288 = &v278[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v303 = sub_1C1E5207C();
  v24 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303);
  v302 = &v278[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = swift_allocObject();
  v306 = v26;
  *(v26 + 16) = a7;
  *&v305 = v26 + 16;
  v27 = *a5;
  v28 = *(a5 + 16);
  LODWORD(v290) = *(a5 + 32);
  if (v290)
  {
    v298 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v310 = sub_1C1E5488C();
    v311 = v30;
    MEMORY[0x1C69102A0](58, 0xE100000000000000);
    v31 = sub_1C1E5488C();
    MEMORY[0x1C69102A0](v31);

    MEMORY[0x1C69102A0](58, 0xE100000000000000);
    v32 = sub_1C1E5488C();
    MEMORY[0x1C69102A0](v32);

    MEMORY[0x1C69102A0](58, 0xE100000000000000);
    v33 = sub_1C1E5488C();
    MEMORY[0x1C69102A0](v33);

    MEMORY[0x1C69102A0](58, 0xE100000000000000);
    v29 = v311;
    v298 = v310;
  }

  LODWORD(v300) = a12;
  LODWORD(v291) = a4;
  v295 = a3;
  if (a4)
  {
    v297 = 0;
    v34 = 0xE000000000000000;
  }

  else
  {
    v297 = sub_1C1E5488C();
    v34 = v35;
  }

  v310 = 0;
  v311 = 0xE000000000000000;
  sub_1C1E54B4C();
  v36 = v302;
  v304 = v13;
  sub_1C1E53BBC();
  v37 = sub_1C1E51FBC();
  v39 = v38;
  v40 = *(v24 + 8);
  v294 = v24 + 8;
  *&v293 = v40;
  v40(v36, v303);

  v310 = v37;
  v311 = v39;
  MEMORY[0x1C69102A0](58, 0xE100000000000000);
  v41 = v299;
  v42 = a2;
  MEMORY[0x1C69102A0](v299, a2);
  MEMORY[0x1C69102A0](58, 0xE100000000000000);
  v43 = sub_1C1E5488C();
  MEMORY[0x1C69102A0](v43);

  MEMORY[0x1C69102A0](58, 0xE100000000000000);
  MEMORY[0x1C69102A0](v297, v34);

  MEMORY[0x1C69102A0](58, 0xE100000000000000);
  MEMORY[0x1C69102A0](v298, v29);

  if (v301)
  {
    v44 = 49;
  }

  else
  {
    v44 = 48;
  }

  MEMORY[0x1C69102A0](v44, 0xE100000000000000);
  if (*v305)
  {
    v45 = 49;
  }

  else
  {
    v45 = 48;
  }

  MEMORY[0x1C69102A0](v45, 0xE100000000000000);
  if (v300)
  {
    v46 = 49;
  }

  else
  {
    v46 = 48;
  }

  MEMORY[0x1C69102A0](v46, 0xE100000000000000);
  v47 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v48 = sub_1C1E545BC();

  v49 = [v47 initWithString_];

  if (qword_1EDE738D0 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDE738D8[0];
  if ([qword_1EDE738D8[0] objectForKey_])
  {
    sub_1C1E51E7C();
LABEL_90:

    return;
  }

  v51 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v52 = v304;
  if (v300)
  {
    sub_1C1E53B2C();
    sub_1C1DC0D28(0, &qword_1EDE737F0, 0x1E696AAB0);
    sub_1C1E51E5C();
    v53 = sub_1C1E5496C();
    [v51 appendAttributedString_];
  }

  v288 = v51;
  LODWORD(v287) = a11;
  v54 = swift_allocObject();
  v298 = v54;
  v55 = v306;
  v54[2] = v306;
  v54[3] = v52;
  v54[4] = v289;
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v52;
  v297 = v56;
  swift_retain_n();
  swift_retain_n();
  v57 = sub_1C1E50E30(v41, v42, v55);
  v59 = v58;
  swift_beginAccess();
  v60 = *(v55 + 16);
  v61 = v295;
  v284 = v50;
  v285 = v49;
  if (v60 != 1)
  {
    v69 = v52;
    v62 = v291;
LABEL_33:
    *&v289 = v59;
    v300 = v57;
    goto LABEL_34;
  }

  v198 = v41 == 28268;
  v62 = v291;
  if ((!v198 || v42 != 0xE200000000000000) && (sub_1C1E54D2C() & 1) == 0)
  {
    v69 = v52;
    goto LABEL_33;
  }

  v63 = v302;
  v64 = v61;
  sub_1C1E53BBC();
  v65 = sub_1C1E5446C();
  v67 = v66;
  (v293)(v63, v303);
  v68 = sub_1C1E5469C();
  if (v68 > 0)
  {
    v57 = v65;
  }

  v61 = v64;
  v300 = v57;
  if (v68 > 0)
  {
    v59 = v67;
  }

  *&v289 = v59;

  *v305 = 0;
  v69 = v52;
LABEL_34:
  v70 = *MEMORY[0x1E69DB978];
  LODWORD(v291) = v62 & 1;
  if (v62)
  {
    v71 = v70;
  }

  else
  {
    v71 = v61;
  }

  v72 = objc_opt_self();
  v73 = [v72 systemFontOfSize:a10 weight:v71];
  if (v290)
  {
    v74 = v70;
  }

  else
  {
    v74 = v21;
  }

  v75 = 0.65;
  if ((v290 & 1) == 0)
  {
    v75 = v28;
  }

  v76 = v75 * a10;
  if (v290)
  {
    v77 = -0.08;
  }

  else
  {
    v77 = v20;
  }

  if (v290)
  {
    v78 = 0.38;
  }

  else
  {
    v78 = v27;
  }

  v283 = v72;
  v79 = [v72 systemFontOfSize:v76 weight:v74];
  v80 = v78 * a10;
  v81 = v77 * a10;
  if (v287)
  {
    v82 = 0.0;
  }

  else
  {
    v82 = *&v292;
  }

  v83 = swift_allocObject();
  *(v83 + 16) = v73;
  v286 = v73;
  *(v83 + 24) = v82;
  v84 = v288;
  *(v83 + 32) = v288;
  v85 = swift_allocObject();
  *(v85 + 16) = v84;
  v299 = v85;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1C1DCA1F4;
  *(v86 + 24) = v83;
  v87 = v79;
  v290 = v79;
  *(v86 + 32) = v79;
  *(v86 + 40) = v80;
  *(v86 + 48) = v82;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_1C1DCA1F4;
  *(v88 + 24) = v83;
  *(v88 + 32) = v87;
  *(v88 + 40) = v81;
  *(v88 + 48) = v82;
  v89 = swift_allocObject();
  v90 = v297;
  v91 = v298;
  *(v89 + 16) = sub_1C1DC9E04;
  *(v89 + 24) = v91;
  *(v89 + 32) = sub_1C1DC9E0C;
  *(v89 + 40) = v90;
  *(v89 + 48) = v301 & 1;
  v92 = v306;
  *(v89 + 56) = v69;
  *(v89 + 64) = v92;
  *(v89 + 72) = a10;
  *(v89 + 80) = sub_1C1E51748;
  *(v89 + 88) = v86;
  *(v89 + 96) = sub_1C1E51798;
  *(v89 + 104) = v88;
  *(v89 + 112) = v84;
  *(v89 + 120) = sub_1C1E51740;
  *(v89 + 128) = v85;
  *(v89 + 136) = v73;
  *(v89 + 144) = sub_1C1DCA1F4;
  *(v89 + 152) = v83;
  *(v89 + 160) = v295;
  *(v89 + 168) = v291;
  v93 = swift_allocObject();
  v93[2] = 15;
  v292 = v93 + 2;
  v94 = v289;
  v307 = v300;
  v308 = v289;
  v95 = BYTE7(v289) & 0xF;
  if ((v289 & 0x2000000000000000) == 0)
  {
    v95 = v300;
  }

  v96 = v300;
  v97 = 11;
  if (((v289 >> 60) & ((v300 & 0x800000000000000) == 0)) == 0)
  {
    v97 = 7;
  }

  v309[0] = 15;
  v309[1] = v97 | (v95 << 16);
  v98 = swift_allocObject();
  v98[2] = v96;
  v98[3] = v94;
  v98[4] = v93;
  v98[5] = sub_1C1DC9D98;
  v98[6] = v89;
  v291 = v83;
  swift_retain_n();
  v99 = v84;
  v100 = v286;
  v101 = v290;
  swift_bridgeObjectRetain_n();

  v102 = v99;
  v295 = COERCE_DOUBLE(v101);
  v301 = v100;

  v288 = v88;

  v290 = v86;

  v286 = v93;

  v287 = v89;

  v103 = v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF1DE30, &unk_1C1E5AE20);
  sub_1C1DC733C(v104, v105, v106);
  sub_1C1DC1124(&qword_1EDE737F8, &unk_1EBF1DE30, &unk_1C1E5AE20, MEMORY[0x1E69E66D8]);
  sub_1C1E54A0C();

  v107 = v292;
  swift_beginAccess();
  v108 = sub_1C1DC7804(*v107, v300, v94);
  v110 = v109;
  v112 = v111;
  v114 = v113;

  v115 = MEMORY[0x1C6910230](v108, v110, v112, v114);
  v117 = v116;

  v119 = sub_1C1E50E30(v115, v117, v306);
  v120 = v118;
  if (v119 == v115 && v118 == v117 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (*v305 != 1)
    {
      goto LABEL_65;
    }

    v121 = v302;
    sub_1C1E53BBC();
    v119 = sub_1C1E5446C();
    v123 = v122;
    (v293)(v121, v303);
    v124 = sub_1C1E5469C();
    if (v124 <= 0)
    {
      v120 = v117;
    }

    else
    {
      v120 = v123;
    }

    if (v124 <= 0)
    {
      v119 = v115;
    }
  }

  v115 = v119;
  v117 = v120;
LABEL_65:
  v126 = sub_1C1E50E30(0, 0xE000000000000000, v306);
  v127 = v125;
  if (!v126 && v125 == 0xE000000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (*v305 == 1)
    {
      v128 = v302;
      sub_1C1E53BBC();
      v126 = sub_1C1E5446C();
      v127 = v129;
      (v293)(v128, v303);
      v130 = sub_1C1E5469C();

      if (v130 > 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
    }

    v126 = 0;
    v127 = 0xE000000000000000;
  }

  else
  {
  }

LABEL_74:
  v302 = v103;
  v303 = v127;
  v300 = v126;
  if (v115 == 94 && v117 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v131 = 0.0;
    if ((sub_1C1E53DAC() & 1) != 0 && *v305 == 1)
    {
      if (v126 == 46552 && v127 == 0xA200000000000000 || ((v197 = sub_1C1E54D2C(), v126 == 46040) ? (v198 = v127 == 0xA200000000000000) : (v198 = 0), !v198 ? (v199 = 0) : (v199 = 1), (v197 & 1) != 0 || (v199 & 1) != 0 || (sub_1C1E54D2C() & 1) != 0))
      {
        v131 = a10 / 6.0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
    v132 = swift_allocObject();
    v305 = xmmword_1C1E55C40;
    *(v132 + 16) = xmmword_1C1E55C40;
    v133 = *MEMORY[0x1E69DB648];
    *(v132 + 32) = *MEMORY[0x1E69DB648];
    v134 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
    v135 = v295;
    *(v132 + 40) = v295;
    v136 = *MEMORY[0x1E69DB610];
    *(v132 + 64) = v134;
    *(v132 + 72) = v136;
    v137 = MEMORY[0x1E69E7DE0];
    *(v132 + 104) = MEMORY[0x1E69E7DE0];
    *(v132 + 80) = v82 + v80 + v131;
    v138 = v133;
    v139 = v136;
    v140 = *&v135;
    v141 = v138;
    v142 = v139;
    v143 = sub_1C1DC7850(v132);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v144 = swift_allocObject();
    *(v144 + 32) = v141;
    *(v144 + 16) = v305;
    v145 = v301;
    *(v144 + 40) = v301;
    *(v144 + 64) = v134;
    *(v144 + 72) = v142;
    *(v144 + 104) = v137;
    *(v144 + 80) = v82;
    v146 = v145;
    v147 = sub_1C1DC7850(v144);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v309[0] = v147;
    sub_1C1DC7B4C(v143, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, v309);

    v149 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v150 = sub_1C1E545BC();
    type metadata accessor for Key(0);
    sub_1C1DC181C(&qword_1EDE737E0, type metadata accessor for Key, &unk_1C1E566B8);
LABEL_83:
    v151 = sub_1C1E5450C();

    v152 = [v149 initWithString:v150 attributes:v151];
    v153 = v284;
    v49 = v285;
    v154 = &property descriptor for CalculateGraph.xAxisBounds;
    v155 = v301;
LABEL_89:

    v195 = v302;
    [v302 v154[49]];

    [v153 setObject:v195 forKey:v49];
    v196 = v195;
    sub_1C1E51E7C();

    goto LABEL_90;
  }

  if (v115 == 11614 && v117 == 0xE200000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
    v156 = swift_allocObject();
    v305 = xmmword_1C1E55C40;
    *(v156 + 16) = xmmword_1C1E55C40;
    v157 = *MEMORY[0x1E69DB648];
    *(v156 + 32) = *MEMORY[0x1E69DB648];
    v158 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
    v159 = v295;
    *(v156 + 40) = v295;
    v160 = *MEMORY[0x1E69DB610];
    *(v156 + 64) = v158;
    *(v156 + 72) = v160;
    v161 = v82 + v80 + 0.0;
    v162 = MEMORY[0x1E69E7DE0];
    *(v156 + 104) = MEMORY[0x1E69E7DE0];
    *(v156 + 80) = v161;
    v163 = v157;
    v164 = v160;
    v165 = v163;
    v166 = v164;
    v304 = *&v159;
    v167 = v165;
    v168 = v166;
    v169 = sub_1C1DC7850(v156);
    swift_setDeallocating();
    v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v171 = swift_allocObject();
    *(v171 + 32) = v167;
    *(v171 + 16) = v305;
    v172 = v301;
    *(v171 + 40) = v301;
    *(v171 + 64) = v158;
    *(v171 + 72) = v168;
    *(v171 + 104) = v162;
    *(v171 + 80) = v82;
    v294 = v172;
    *&v293 = v167;
    *&v292 = COERCE_DOUBLE(v168);
    v173 = sub_1C1DC7850(v171);
    swift_setDeallocating();
    *&v289 = v170;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v174 = swift_isUniquelyReferenced_nonNull_native();
    v309[0] = v173;
    sub_1C1DC7B4C(v169, sub_1C1DFF048, 0, v174, v309);

    v175 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v176 = sub_1C1E545BC();
    type metadata accessor for Key(0);
    v178 = v177;
    v282 = sub_1C1DC181C(&qword_1EDE737E0, type metadata accessor for Key, &unk_1C1E566B8);
    v283 = v178;
    v179 = sub_1C1E5450C();

    v180 = [v175 initWithString:v176 attributes:v179];

    [v302 appendAttributedString_];
    v181 = swift_allocObject();
    v182 = v293;
    *(v181 + 32) = v293;
    *(v181 + 16) = v305;
    v183 = v304;
    *(v181 + 40) = v304;
    *(v181 + 64) = v158;
    v184 = v158;
    v185 = v292;
    *(v181 + 72) = *&v292;
    v186 = MEMORY[0x1E69E7DE0];
    *(v181 + 104) = MEMORY[0x1E69E7DE0];
    *(v181 + 80) = v161;
    v187 = v183;
    v188 = sub_1C1DC7850(v181);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v189 = swift_allocObject();
    *(v189 + 32) = v182;
    *(v189 + 16) = v305;
    v190 = v294;
    *(v189 + 40) = v294;
    *(v189 + 64) = v184;
    *(v189 + 72) = v185;
    *(v189 + 104) = v186;
    *(v189 + 80) = v82;
    v191 = v190;
    v192 = sub_1C1DC7850(v189);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v193 = swift_isUniquelyReferenced_nonNull_native();
    v309[0] = v192;
    sub_1C1DC7B4C(v188, sub_1C1DFF048, 0, v193, v309);

    v194 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v150 = sub_1C1E545BC();
LABEL_88:
    v151 = sub_1C1E5450C();

    v152 = [v194 initWithString:v150 attributes:v151];
    v153 = v284;
    v49 = v285;
    v155 = v301;
    v154 = &property descriptor for CalculateGraph.xAxisBounds;
    goto LABEL_89;
  }

  if (v115 == 95 && v117 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
    inited = swift_initStackObject();
    v305 = xmmword_1C1E55C40;
    *(inited + 16) = xmmword_1C1E55C40;
    v201 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v202 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
    v203 = v295;
    *(inited + 40) = v295;
    v204 = *MEMORY[0x1E69DB610];
    *(inited + 64) = v202;
    *(inited + 72) = v204;
    v205 = MEMORY[0x1E69E7DE0];
    *(inited + 104) = MEMORY[0x1E69E7DE0];
    *(inited + 80) = v82 + v81;
    v206 = v201;
    v207 = v204;
    v208 = *&v203;
    v209 = v206;
    v210 = v207;
    v211 = sub_1C1DC7850(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
    swift_arrayDestroy();
    v212 = swift_allocObject();
    *(v212 + 32) = v209;
    *(v212 + 16) = v305;
    v213 = v301;
    *(v212 + 40) = v301;
    *(v212 + 64) = v202;
    *(v212 + 72) = v210;
    *(v212 + 104) = v205;
    *(v212 + 80) = v82;
    v214 = v213;
    v215 = sub_1C1DC7850(v212);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v216 = swift_isUniquelyReferenced_nonNull_native();
    v309[0] = v215;
    sub_1C1DC7B4C(v211, sub_1C1DFF048, 0, v216, v309);

    v194 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v150 = sub_1C1E545BC();
    type metadata accessor for Key(0);
    sub_1C1DC181C(&qword_1EDE737E0, type metadata accessor for Key, &unk_1C1E566B8);
    goto LABEL_88;
  }

  if (v115 == 10127586 && v117 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {
    v217 = [v103 string];
    v218 = sub_1C1E545FC();
    v220 = v219;

    v221 = HIBYTE(v220) & 0xF;
    if ((v220 & 0x2000000000000000) == 0)
    {
      v221 = v218 & 0xFFFFFFFFFFFFLL;
    }

    if (v221)
    {
      if (sub_1C1E53B2C())
      {
        v294 = 0;
      }

      else
      {
        v225 = sub_1C1E5210C();
        v226 = v302;
        v227 = [v302 length];
        if (__OFSUB__(v227, 1))
        {
          goto LABEL_139;
        }

        v228 = *MEMORY[0x1E69DB660];
        v294 = 1;
        [v226 addAttribute:v228 value:v225 range:{v227 - 1, 1}];
      }
    }

    else
    {
      v294 = 1;
    }

    sub_1C1DC7850(MEMORY[0x1E69E7CC0]);

    v224 = v301;
    v229 = [v301 fontDescriptor];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE40, &qword_1C1E5AE38);
    v230 = swift_initStackObject();
    v293 = xmmword_1C1E57DD0;
    *(v230 + 16) = xmmword_1C1E57DD0;
    v231 = *MEMORY[0x1E69DB8B0];
    *(v230 + 32) = *MEMORY[0x1E69DB8B0];
    *(v230 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
    *(v230 + 40) = &unk_1F4186E88;
    v232 = v231;
    sub_1C1DF7514(v230);
    swift_setDeallocating();
    sub_1C1DC1870(v230 + 32, &qword_1EBF1CFE0, &qword_1C1E57E10);
    type metadata accessor for AttributeName(0);
    sub_1C1DC181C(&qword_1EBF1C338, type metadata accessor for AttributeName, &unk_1C1E56674);
    v233 = sub_1C1E5450C();

    v234 = [v229 fontDescriptorByAddingAttributes_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
    v235 = swift_initStackObject();
    *(v235 + 16) = v293;
    v236 = *MEMORY[0x1E69DB648];
    *(v235 + 32) = *MEMORY[0x1E69DB648];
    v223 = v236;
    v237 = [v283 fontWithDescriptor:v234 size:a10];
    *(v235 + 64) = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
    *(v235 + 40) = v237;
    v222 = sub_1C1DC7850(v235);
    swift_setDeallocating();
    sub_1C1DC1870(v235 + 32, &qword_1EBF1CFF0, &qword_1C1E5AE30);

    v279 = 1;
  }

  else
  {
    v222 = sub_1C1DC7850(MEMORY[0x1E69E7CC0]);
    v279 = 0;
    v223 = *MEMORY[0x1E69DB648];
    v294 = 1;
    v224 = v301;
  }

  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
  v238 = swift_initStackObject();
  v289 = xmmword_1C1E55C40;
  *(v238 + 16) = xmmword_1C1E55C40;
  *(v238 + 32) = v223;
  v239 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
  *(v238 + 40) = v224;
  v240 = *MEMORY[0x1E69DB610];
  *(v238 + 64) = v239;
  *(v238 + 72) = v240;
  *(v238 + 104) = MEMORY[0x1E69E7DE0];
  *(v238 + 80) = v82;
  v280 = v224;
  v241 = v223;
  v281 = v240;
  v242 = sub_1C1DC7850(v238);
  swift_setDeallocating();
  *&v292 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30));
  swift_arrayDestroy();
  v243 = swift_isUniquelyReferenced_nonNull_native();
  v309[0] = v242;
  sub_1C1DC7B4C(v222, sub_1C1DFF048, 0, v243, v309);

  v244 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v245 = sub_1C1E545BC();

  type metadata accessor for Key(0);
  v247 = v246;
  sub_1C1DC181C(&qword_1EDE737E0, type metadata accessor for Key, &unk_1C1E566B8);
  *&v293 = v247;
  v248 = sub_1C1E5450C();

  v249 = [v244 initWithString:v245 attributes:v248];

  v250 = v302;
  [v302 appendAttributedString_];

  v251 = v303;
  if (v294)
  {
LABEL_122:
    if (sub_1C1E53DAC() & 1) != 0 && (v279 & *v305) == 1 && (v300 == 46552 && v251 == 0xA200000000000000 || ((v265 = v300, v266 = sub_1C1E54D2C(), v265 == 46040) ? (v267 = v251 == 0xA200000000000000) : (v267 = 0), !v267 ? (v268 = 0) : (v268 = 1), (v266 & 1) != 0 || (v268 & 1) != 0 || (sub_1C1E54D2C())))
    {
      v254 = swift_initStackObject();
      *(v254 + 16) = xmmword_1C1E57DD0;
      *(v254 + 32) = v241;
      v255 = v241;
      v256 = [v283 systemFontOfSize:a10 * 0.8 weight:v71];
      *(v254 + 64) = v239;
      *(v254 + 40) = v256;
      v257 = sub_1C1DC7850(v254);
      swift_setDeallocating();
      sub_1C1DC1870(v254 + 32, &qword_1EBF1CFF0, &qword_1C1E5AE30);
      v258 = swift_initStackObject();
      *(v258 + 32) = v255;
      *(v258 + 16) = v289;
      v259 = v280;
      *(v258 + 40) = v280;
      *(v258 + 64) = v239;
      v260 = v281;
      *(v258 + 72) = v281;
      *(v258 + 104) = MEMORY[0x1E69E7DE0];
      *(v258 + 80) = v82;
      v261 = v259;
      v262 = v260;
      v263 = sub_1C1DC7850(v258);
      swift_setDeallocating();
      swift_arrayDestroy();
      v264 = swift_isUniquelyReferenced_nonNull_native();
      v309[0] = v263;
      sub_1C1DC7B4C(v257, sub_1C1DFF048, 0, v264, v309);

      v149 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    }

    else
    {
      v269 = sub_1C1DC7850(MEMORY[0x1E69E7CC0]);
      v270 = swift_initStackObject();
      *(v270 + 32) = v241;
      *(v270 + 16) = v289;
      v271 = v280;
      *(v270 + 40) = v280;
      *(v270 + 64) = v239;
      v272 = v281;
      *(v270 + 72) = v281;
      *(v270 + 104) = MEMORY[0x1E69E7DE0];
      *(v270 + 80) = v82;
      v273 = v271;
      v274 = v241;
      v275 = v272;
      v276 = sub_1C1DC7850(v270);
      swift_setDeallocating();
      swift_arrayDestroy();
      v277 = swift_isUniquelyReferenced_nonNull_native();
      v309[0] = v276;
      sub_1C1DC7B4C(v269, sub_1C1DFF048, 0, v277, v309);

      v149 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    }

    v150 = sub_1C1E545BC();
    goto LABEL_83;
  }

  v252 = sub_1C1E5210C();
  v253 = [v250 length];
  if (!__OFSUB__(v253, 1))
  {
    [v250 addAttribute:*MEMORY[0x1E69DB660] value:v252 range:{v253 - 1, 1}];

    goto LABEL_122;
  }

  __break(1u);
LABEL_139:
  __break(1u);

  __break(1u);

  __break(1u);

  __break(1u);
}

uint64_t sub_1C1DC716C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1DC71AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1DC71E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 169, 7);
}

uint64_t sub_1C1DC7278()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1C1DC72E4()
{
  type metadata accessor for CalculateGraph(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDE75DC0 = result;
  return result;
}

unint64_t sub_1C1DC733C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDE73808[0];
  if (!qword_1EDE73808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE73808);
  }

  return result;
}

uint64_t sub_1C1DC7390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateExpressionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DC73F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateExpressionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DC7458(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1DC7490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1E549CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C1DC74E4(uint64_t *a1, uint64_t *a2)
{
  sub_1C1E5432C();
  sub_1C1DC181C(&qword_1EDE738A8, MEMORY[0x1E6992120], MEMORY[0x1E6992130]);
  return sub_1C1E545AC() & 1;
}

uint64_t sub_1C1DC7594(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1C6910730](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1C1E54ACC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1C1DC76E0(uint64_t a1)
{
  result = sub_1C1E51F9C();
  if (v2 <= 0x3F)
  {
    result = sub_1C1E520FC();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t _s14descr1F4186469V7DotViewVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_1C1DC7804(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1C1E5479C();
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1DC7850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFE8, &qword_1C1E5AE40);
    v3 = sub_1C1E54C3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1DC1424(v4, &v11, &qword_1EBF1CFF0, &qword_1C1E5AE30);
      v5 = v11;
      result = sub_1C1DC79A0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1DC7B3C(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1DC79A8(uint64_t a1)
{
  sub_1C1E545FC();
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v2 = sub_1C1E54DAC();

  return sub_1C1DC7A38(a1, v2);
}

unint64_t sub_1C1DC7A38(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1C1E545FC();
      v8 = v7;
      if (v6 == sub_1C1E545FC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1C1E54D2C();

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

_OWORD *sub_1C1DC7B3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1C1DC7B4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v6) = a4;
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  sub_1C1DC7EB0(&qword_1EBF1DE48, &qword_1C1E5AE48, &v42);
  v12 = v42;
  if (!v42)
  {
    goto LABEL_25;
  }

  sub_1C1DC7B3C(v43, v41);
  v13 = *a5;
  result = sub_1C1DC79A0(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  LOBYTE(v20) = v15;
  if (v13[3] < v19)
  {
    sub_1C1E4FBB0(v19, v6 & 1, &qword_1EBF1CFE8, &qword_1C1E5AE40);
    result = sub_1C1DC79A0(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for Key(0);
    result = sub_1C1E54D4C();
    __break(1u);
  }

  if ((v6 & 1) == 0)
  {
    v25 = result;
    sub_1C1E50708(&qword_1EBF1CFE8, &qword_1C1E5AE40);
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_1C1DC7B3C(v41, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_1C1DC7B3C(v41, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_1C1DC7EB0(&qword_1EBF1DE48, &qword_1C1E5AE48, &v42);
    v28 = v42;
    if (v42)
    {
      v6 = &qword_1C1E5AE40;
      v12 = 1;
      v20 = &qword_1EBF1DE48;
      do
      {
        sub_1C1DC7B3C(v43, v41);
        v31 = *a5;
        result = sub_1C1DC79A0(v28);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        v36 = v32;
        if (v31[3] < v35)
        {
          sub_1C1E4FBB0(v35, 1, &qword_1EBF1CFE8, &qword_1C1E5AE40);
          result = sub_1C1DC79A0(v28);
          if ((v36 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (v36)
        {
          v29 = result;

          v30 = (v38[7] + 32 * v29);
          __swift_destroy_boxed_opaque_existential_0(v30);
          sub_1C1DC7B3C(v41, v30);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          *(v38[6] + 8 * result) = v28;
          result = sub_1C1DC7B3C(v41, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_1C1DC7EB0(&qword_1EBF1DE48, &qword_1C1E5AE48, &v42);
        v28 = v42;
      }

      while (v42);
    }

LABEL_25:
    sub_1C1DC7EA8(v44);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_1C1DC7EB0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  if (v11)
  {
    v12 = v3[3];
LABEL_10:
    v16 = (v11 - 1) & v11;
    v17 = __clz(__rbit64(v11)) | (v12 << 6);
    v18 = *(*(v7 + 48) + 8 * v17);
    sub_1C1DFF8A8(*(v7 + 56) + 32 * v17, &v21);
    *&v24[0] = v18;
    sub_1C1DC7B3C(&v21, (v24 + 8));
    result = v18;
    v19 = *&v24[0];
    v15 = v12;
LABEL_11:
    *v3 = v7;
    v3[1] = v8;
    v3[2] = v10;
    v3[3] = v15;
    v3[4] = v16;
    if (v19)
    {
      v20 = v3[5];
      v21 = v19;
      v22 = *(v24 + 8);
      v23 = *(&v24[1] + 8);
      v20(&v21);
      return sub_1C1DC1870(&v21, v5, a2);
    }

    else
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    v13 = (v10 + 64) >> 6;
    if (v13 <= v9 + 1)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = (v10 + 64) >> 6;
    }

    v15 = v14 - 1;
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        v19 = 0;
        v16 = 0;
        memset(v24, 0, 40);
        goto LABEL_11;
      }

      v11 = *(v8 + 8 * v12);
      ++v9;
      if (v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C1DC8008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1DC80AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C1E5296C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1C1E5207C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C1DC81E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E51E6C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C1DC8268(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD88, &qword_1C1E5AB28);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD90, &qword_1C1E5AB30);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDB0, &qword_1C1E5AB50);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C1DC83EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD88, &qword_1C1E5AB28);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD90, &qword_1C1E5AB30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDB0, &qword_1C1E5AB50);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C1DC8564(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1E5296C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1C1E5207C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C1DC869C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E51E6C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

unint64_t sub_1C1DC872C()
{
  result = qword_1EDE73B50;
  if (!qword_1EDE73B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DDF0, &qword_1C1E5AC88);
    sub_1C1DC87B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B50);
  }

  return result;
}

unint64_t sub_1C1DC87B0()
{
  result = qword_1EDE73B58;
  if (!qword_1EDE73B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DDB8, &qword_1C1E5AB58);
    sub_1C1DC883C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B58);
  }

  return result;
}

unint64_t sub_1C1DC883C()
{
  result = qword_1EDE73B68;
  if (!qword_1EDE73B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DDA8, &qword_1C1E5AB48);
    sub_1C1DC181C(qword_1EDE73A28, _s13LabelFractionVMa, &unk_1C1E5ACFC);
    sub_1C1DC181C(&qword_1EDE73AD8, _s11LabelSymbolVMa, &unk_1C1E5ACAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B68);
  }

  return result;
}

uint64_t CalculateExpression.Label.body.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD88, &qword_1C1E5AB28);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v42 - v3;
  v4 = sub_1C1E51E6C();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD90, &qword_1C1E5AB30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v42 - v9;
  v54 = _s11LabelSymbolVMa(0);
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD98, &qword_1C1E5AB38);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDA0, &qword_1C1E5AB40);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDA8, &qword_1C1E5AB48);
  MEMORY[0x1EEE9AC00](v53);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDB0, &qword_1C1E5AB50);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v42 - v18;
  v20 = _s13LabelFractionVMa(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CalculateExpression.Label(0);
  sub_1C1DC1424(v1 + *(v24 + 24), v19, &qword_1EBF1DDB0, &qword_1C1E5AB50);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    sub_1C1DCA204(v19, v23, _s13LabelFractionVMa);
    sub_1C1DCA26C(v23, v14, _s13LabelFractionVMa);
    swift_storeEnumTagMultiPayload();
    sub_1C1DC181C(qword_1EDE73A28, _s13LabelFractionVMa, &unk_1C1E5ACFC);
    sub_1C1DC181C(&qword_1EDE73AD8, _s11LabelSymbolVMa, &unk_1C1E5ACAC);
    sub_1C1E52CEC();
    sub_1C1DC1424(v16, v51, &qword_1EBF1DDA8, &qword_1C1E5AB48);
    swift_storeEnumTagMultiPayload();
    sub_1C1DC883C();
    v32 = v55;
    sub_1C1E52CEC();
    sub_1C1DC1870(v16, &qword_1EBF1DDA8, &qword_1C1E5AB48);
    v33 = _s13LabelFractionVMa;
    v34 = v23;
LABEL_7:
    sub_1C1DCA2D4(v34, v33);
LABEL_8:
    v31 = 0;
    goto LABEL_9;
  }

  sub_1C1DC1870(v19, &qword_1EBF1DDB0, &qword_1C1E5AB50);
  v25 = v50;
  sub_1C1DC1424(v1 + *(v24 + 20), v50, &qword_1EBF1DD90, &qword_1C1E5AB30);
  if ((*(v49 + 48))(v25, 1, v54) != 1)
  {
    v35 = v45;
    sub_1C1DCA204(v25, v45, _s11LabelSymbolVMa);
    sub_1C1DCA26C(v35, v14, _s11LabelSymbolVMa);
    swift_storeEnumTagMultiPayload();
    sub_1C1DC181C(qword_1EDE73A28, _s13LabelFractionVMa, &unk_1C1E5ACFC);
    sub_1C1DC181C(&qword_1EDE73AD8, _s11LabelSymbolVMa, &unk_1C1E5ACAC);
    sub_1C1E52CEC();
    sub_1C1DC1424(v16, v51, &qword_1EBF1DDA8, &qword_1C1E5AB48);
    swift_storeEnumTagMultiPayload();
    sub_1C1DC883C();
    v32 = v55;
    sub_1C1E52CEC();
    sub_1C1DC1870(v16, &qword_1EBF1DDA8, &qword_1C1E5AB48);
    v33 = _s11LabelSymbolVMa;
    v34 = v35;
    goto LABEL_7;
  }

  sub_1C1DC1870(v25, &qword_1EBF1DD90, &qword_1C1E5AB30);
  v26 = v46;
  sub_1C1DC1424(v1, v46, &qword_1EBF1DD88, &qword_1C1E5AB28);
  v28 = v47;
  v27 = v48;
  v29 = (*(v47 + 48))(v26, 1, v48);
  v30 = v51;
  if (v29 != 1)
  {
    v38 = v44;
    (*(v28 + 32))(v44, v26, v27);
    (*(v28 + 16))(v43, v38, v27);
    *v30 = sub_1C1E5315C();
    *(v30 + 8) = v39;
    *(v30 + 16) = v40 & 1;
    *(v30 + 24) = v41;
    swift_storeEnumTagMultiPayload();
    sub_1C1DC883C();
    v32 = v55;
    sub_1C1E52CEC();
    (*(v28 + 8))(v38, v27);
    goto LABEL_8;
  }

  sub_1C1DC1870(v26, &qword_1EBF1DD88, &qword_1C1E5AB28);
  v31 = 1;
  v32 = v55;
LABEL_9:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDB8, &qword_1C1E5AB58);
  return (*(*(v36 - 8) + 56))(v32, v31, 1, v36);
}

unint64_t sub_1C1DC9240(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = *(a10 + 16);
  if (a3 >> 14 < result >> 14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = sub_1C1E5479C();
  v15 = MEMORY[0x1C6910230](v14);
  v17 = v16;

  swift_beginAccess();
  *(a10 + 16) = a4;
  v31 = sub_1C1E5479C();
  v20 = sub_1C1DC93FC(v31, v18, v19);
  sub_1C1DC733C(v20, v21, v22);
  v23 = sub_1C1E549EC();

  if (!v23[2])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = v23[4];
  v25 = v23[5];

  a11(v15, v17, v24, v25);

  v26 = v23[2];
  v27 = v26 - 1;
  if (v26 == 1)
  {
  }

  if (v26)
  {
    v28 = v23 + 7;
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;

      a11(95, 0xE100000000000000, v29, v30);

      v28 += 2;
      --v27;
    }

    while (v27);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1C1DC93FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDE73800;
  if (!qword_1EDE73800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73800);
  }

  return result;
}

uint64_t sub_1C1DC9450(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(double, double, double, double, double, double, double, double), double a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t), uint64_t a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t, unint64_t, double), uint64_t a21, void (*a22)(uint64_t, unint64_t), uint64_t a23, void *a24, void (*a25)(uint64_t, double), uint64_t a26, void *a27, void (*a28)(uint64_t, uint64_t, unint64_t), uint64_t a29, double a30, char a31)
{
  v38 = a5(a6, a10, a11, a12, a13, a14, a15, a16);
  v40 = v39;
  v89 = v38;
  if (v38 == a1 && v39 == a2 || (sub_1C1E54D2C() & 1) != 0)
  {

    v89 = a8(a1, a2);
    v42 = v41;
  }

  else
  {
    v42 = v40;
  }

  v43 = (a5)(a3, a4);
  v45 = v44;
  if (a17)
  {
    sub_1C1DC9F68(a3, a4);
    if (v46)
    {
      v47 = sub_1C1E5457C();

      if (v47)
      {

        v48 = sub_1C1E53B8C();
LABEL_14:
        v43 = v48;
        v45 = v49;
        goto LABEL_15;
      }
    }
  }

  if (v43 == a3 && v45 == a4 || (sub_1C1E54D2C() & 1) != 0)
  {

    v48 = a8(a3, a4);
    goto LABEL_14;
  }

LABEL_15:
  v50 = v89;
  v51 = v42;
  if (v89 == 94 && v42 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v52 = 0.0;
    if (sub_1C1E53DAC())
    {
      swift_beginAccess();
      if (*(a19 + 16) == 1)
      {
        if (v43 == 46552 && v45 == 0xA200000000000000 || ((v54 = sub_1C1E54D2C(), v43 == 46040) ? (v55 = v45 == 0xA200000000000000) : (v55 = 0), !v55 ? (v56 = 0) : (v56 = 1), (v54 & 1) != 0 || (v56 & 1) != 0 || (sub_1C1E54D2C() & 1) != 0))
        {
          v52 = a6 / 6.0;
        }
      }
    }

    a20(v43, v45, v52);
  }

  if (v89 == 11614 && v42 == 0xE200000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    a20(45, 0xE100000000000000, 0.0);
    a20(v43, v45, 0.0);
    goto LABEL_28;
  }

  if (v89 == 95 && v42 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    a22(v43, v45);
LABEL_28:
  }

  if (v89 == 10127586 && v42 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {
    v57 = [a24 string];
    v58 = sub_1C1E545FC();
    v60 = v59;

    v61 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v61 = v58 & 0xFFFFFFFFFFFFLL;
    }

    v62 = 0.0;
    if (v61)
    {
      if (sub_1C1E53B2C())
      {
        v63 = 0;
        v62 = a6 * -0.28;
LABEL_56:
        sub_1C1DC7850(MEMORY[0x1E69E7CC0]);

        v66 = [a27 fontDescriptor];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE40, &qword_1C1E5AE38);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1E57DD0;
        v68 = *MEMORY[0x1E69DB8B0];
        *(inited + 32) = *MEMORY[0x1E69DB8B0];
        *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
        *(inited + 40) = &unk_1F4187120;
        v69 = v68;
        sub_1C1DF7514(inited);
        swift_setDeallocating();
        sub_1C1DC1870(inited + 32, &qword_1EBF1CFE0, &qword_1C1E57E10);
        type metadata accessor for AttributeName(0);
        sub_1C1DC181C(&qword_1EBF1C338, type metadata accessor for AttributeName, &unk_1C1E56674);
        v70 = sub_1C1E5450C();

        v71 = [v66 fontDescriptorByAddingAttributes_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
        v72 = swift_initStackObject();
        *(v72 + 16) = xmmword_1C1E57DD0;
        v73 = *MEMORY[0x1E69DB648];
        *(v72 + 32) = *MEMORY[0x1E69DB648];
        v74 = objc_opt_self();
        v75 = v73;
        v76 = [v74 fontWithDescriptor:v71 size:a6];
        *(v72 + 64) = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
        *(v72 + 40) = v76;
        v64 = sub_1C1DC7850(v72);
        swift_setDeallocating();
        sub_1C1DC1870(v72 + 32, &qword_1EBF1CFF0, &qword_1C1E5AE30);

        v65 = 1;
        v51 = v42;
        v50 = v89;
        goto LABEL_57;
      }

      (a25)(a6 * -0.28);
    }

    v63 = 1;
    goto LABEL_56;
  }

  v64 = sub_1C1DC7850(MEMORY[0x1E69E7CC0]);
  v65 = 0;
  v62 = 0.0;
  v63 = 1;
LABEL_57:
  a28(v50, v51, v64);

  if ((v63 & 1) == 0)
  {
    a25(v77, v62);
  }

  if (sub_1C1E53DAC() & 1) != 0 && (swift_beginAccess(), (v65 & *(a19 + 16)) == 1) && (v43 == 46552 && v45 == 0xA200000000000000 || ((v85 = sub_1C1E54D2C(), v43 == 46040) ? (v86 = v45 == 0xA200000000000000) : (v86 = 0), !v86 ? (v87 = 0) : (v87 = 1), (v85 & 1) != 0 || (v87 & 1) != 0 || (sub_1C1E54D2C())))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
    v78 = swift_initStackObject();
    *(v78 + 16) = xmmword_1C1E57DD0;
    v79 = *MEMORY[0x1E69DB648];
    *(v78 + 32) = *MEMORY[0x1E69DB648];
    if (a31)
    {
      v80 = *MEMORY[0x1E69DB978];
    }

    else
    {
      v80 = a30;
    }

    v81 = objc_opt_self();
    v82 = v79;
    v83 = [v81 systemFontOfSize:a6 * 0.8 weight:v80];
    *(v78 + 64) = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
    *(v78 + 40) = v83;
    v84 = sub_1C1DC7850(v78);
    swift_setDeallocating();
    sub_1C1DC1870(v78 + 32, &qword_1EBF1CFF0, &qword_1C1E5AE30);
    a28(v43, v45, v84);
  }

  else
  {
    v88 = sub_1C1DC7850(MEMORY[0x1E69E7CC0]);
    a28(v43, v45, v88);
  }
}

uint64_t sub_1C1DC9D98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v15 = *(v12 + 144);
  v14 = *(v12 + 128);
  return sub_1C1DC9450(a1, a2, a3, a4, *(v12 + 16), *(v12 + 72), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 56), *(v12 + 80), *(v12 + 96), *(v12 + 112), *&v14, *&v15, a12, *(v12 + 48), *(v12 + 56), *(v12 + 64), *(v12 + 80), *(v12 + 88), *(v12 + 96), *(v12 + 104), *(v12 + 112), *(v12 + 120), v14, *(&v14 + 1), v15, *(&v15 + 1), *(v12 + 160), *(v12 + 168));
}

uint64_t sub_1C1DC9E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C1E5207C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a3 + 16) != 1)
  {
    goto LABEL_5;
  }

  sub_1C1E53BBC();
  v9 = sub_1C1E5446C();
  (*(v6 + 8))(v8, v5);
  if (sub_1C1E5469C() <= 0)
  {

LABEL_5:

    return a1;
  }

  return v9;
}

uint64_t sub_1C1DC9F68(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C1E5476C();
  }

  else
  {
    return 0;
  }
}

void sub_1C1DC9FB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
  *(inited + 40) = a4;
  v13 = *MEMORY[0x1E69DB610];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  *(inited + 104) = MEMORY[0x1E69E7DE0];
  *(inited + 80) = a6;
  v14 = v11;
  v15 = a4;
  v16 = v13;
  v17 = sub_1C1DC7850(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v17;
  sub_1C1DC7B4C(a3, sub_1C1DFF048, 0, isUniquelyReferenced_nonNull_native, &v23);

  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v20 = sub_1C1E545BC();
  type metadata accessor for Key(0);
  sub_1C1DC181C(&qword_1EDE737E0, type metadata accessor for Key, &unk_1C1E566B8);
  v21 = sub_1C1E5450C();

  v22 = [v19 initWithString:v20 attributes:v21];

  [a5 appendAttributedString_];
}

uint64_t sub_1C1DCA204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1DCA26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1DCA2D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C1DCA354()
{
  result = qword_1EDE73B78;
  if (!qword_1EDE73B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DE10, &unk_1C1E5ADC0);
    sub_1C1DCA40C();
    sub_1C1DC1124(&qword_1EDE73B28, &qword_1EBF1C248, &unk_1C1E5A430, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B78);
  }

  return result;
}

unint64_t sub_1C1DCA40C()
{
  result = qword_1EDE73B98;
  if (!qword_1EDE73B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C978, &qword_1C1E572C8);
    sub_1C1DC1124(&qword_1EDE73B20, &qword_1EBF1C980, &qword_1C1E572D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B98);
  }

  return result;
}

id sub_1C1DCA4C8(double a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C190, &qword_1C1E55C68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v55 - v6;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v8 * v9;
  v11 = *v2;
  v12 = sub_1C1E53C8C();
  result = [v12 usesSignificantDigits];
  v14 = result;
  if (!result)
  {
    if (sub_1C1E53D5C())
    {

      v15 = 0;
    }

    else
    {
      sub_1C1E53CEC();
      v17 = sub_1C1E53A5C();

      v18 = 11.0;
      if (v10 <= 11.0)
      {
        v18 = v8 * v9;
      }

      if (v17)
      {
        v10 = v18;
      }

      v15 = 0;
    }

    goto LABEL_21;
  }

  if (a1 == INFINITY)
  {
    v15 = 10000;
LABEL_12:
    if (sub_1C1E53D5C())
    {
    }

    else
    {
      sub_1C1E53CEC();
      v19 = sub_1C1E53A5C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v10 = 0.0;
LABEL_21:
    sub_1C1E53CEC();
    v20 = *(v2 + 4);
    v21 = sub_1C1E5352C();
    v22 = CalculateExpression.RichExpression.richString(fontSize:maxHeight:textColor:significantDigits:)(v21, v15, v14 ^ 1u, v8, a2);

    [v22 size];
    if (v23 >= a1)
    {
      v24 = type metadata accessor for CalculateExpressionView(0);
      sub_1C1DC1424(v2 + *(v24 + 40), v7, &qword_1EBF1C190, &qword_1C1E55C68);
      v25 = sub_1C1E530EC();
      if ((*(*(v25 - 8) + 48))(v7, 1, v25) != 1)
      {

        sub_1C1DC1870(v7, &qword_1EBF1C190, &qword_1C1E55C68);
        return v22;
      }

      sub_1C1DC1870(v7, &qword_1EBF1C190, &qword_1C1E55C68);
      if (v9 < 1.0)
      {
        sub_1C1E53CEC();
        v63 = v20;
        v26 = sub_1C1E5352C();
        v27 = CalculateExpression.RichExpression.richString(fontSize:maxHeight:textColor:significantDigits:)(v26, v15, v14 ^ 1u, v10, a2);

        [v27 size];
        if (v28 >= a1 || v10 >= v8)
        {

          return v27;
        }

        else
        {
          v29 = 0;
          v30 = a2 * 0.95;
          v60 = *MEMORY[0x1E69DB688];
          v57 = *MEMORY[0x1E69DB648];
          v56 = *MEMORY[0x1E69DB650];
          v31 = &property descriptor for CalculateGraph.xAxisBounds;
          v32 = v10;
          v61 = v12;
          v33 = 0x1E696A000;
          v58 = v14;
          v59 = v11;
          v55 = v15;
          do
          {
            v34 = v8 > v10 ? v29 : 7;
            v35 = v8 > v10 ? v32 + (v8 - v32) * 0.5 : v10;
            sub_1C1E53CEC();
            v36 = v63;
            sub_1C1E5352C();
            v37 = [objc_allocWithZone(*(v33 + 3392)) v31[42]];
            v65[0] = v37;
            v38 = sub_1C1E53A2C();
            v64 = v34;
            if (v38)
            {
              v62 = v38;
              swift_getErrorValue();
              sub_1C1E54D5C();
              v39 = objc_allocWithZone(*(v33 + 3392));
              v40 = sub_1C1E545BC();

              v41 = [v39 initWithString_];

              v42 = [objc_opt_self() systemFontOfSize_];
              v43 = v27;
              v44 = [v41 length];
              [v41 addAttribute:v57 value:v42 range:{0, v44}];
              sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);

              v45 = sub_1C1E5499C();
              v46 = v44;
              v27 = v43;
              v14 = v58;
              [v41 addAttribute:v56 value:v45 range:{0, v46}];

              [v37 appendAttributedString_];
            }

            else
            {
              if (sub_1C1E53A8C())
              {
                v47 = sub_1C1E53DAC();
              }

              else
              {
                v47 = 0;
              }

              sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);

              v48 = sub_1C1E5499C();
              v49 = sub_1C1E53A8C();
              if (sub_1C1E53A8C())
              {
                v50 = sub_1C1E53B2C();
                v14 = v58;
              }

              else
              {
                v50 = 0;
              }

              sub_1C1DCAFC8(v65, v48, v49, v55, v14 ^ 1, v50 & 1, v47 & 1, v35, 0.0);
            }

            v31 = &property descriptor for CalculateGraph.xAxisBounds;
            v51 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
            [v51 setMinimumLineHeight_];
            [v51 setMaximumLineHeight_];
            v22 = v65[0];
            v52 = v51;
            v53 = [v22 length];
            [v22 addAttribute:v60 value:v52 range:{0, v53}];

            [v22 size];
            if (v64 >= 7)
            {
              break;
            }

            if (v54 >= a1)
            {
              v8 = v35;
              v33 = 0x1E696A000uLL;
            }

            else
            {
              v33 = 0x1E696A000;
              if (a1 + -1.0 <= v54)
              {
                break;
              }

              v32 = v35;
            }

            v29 = v64 + 1;
            v27 = v22;
          }

          while (v32 < v8);
        }

        return v22;
      }
    }

    return v22;
  }

  v16 = floor(a1 / (v10 * 0.655172414));
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v16 < 9.22337204e18)
  {
    if (v16 >= 30)
    {
      v15 = 30;
    }

    else
    {
      v15 = v16;
    }

    goto LABEL_12;
  }

LABEL_55:
  __break(1u);
  return result;
}

id CalculateExpression.RichExpression.richString(fontSize:maxHeight:textColor:significantDigits:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v9 = &property descriptor for CalculateGraph.xAxisBounds;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v30 = v10;
  v11 = sub_1C1E53A2C();
  if (v11)
  {
    v29 = v11;
    swift_getErrorValue();
    sub_1C1E54D5C();
    v12 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v13 = sub_1C1E545BC();

    v14 = [v12 initWithString_];

    v15 = [objc_opt_self() systemFontOfSize_];
    v16 = [v14 length];
    [v14 addAttribute:*MEMORY[0x1E69DB648] value:v15 range:{0, v16}];
    v17 = *MEMORY[0x1E69DB650];
    sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);

    v18 = sub_1C1E5499C();
    v9 = &property descriptor for CalculateGraph.xAxisBounds;
    [v14 addAttribute:v17 value:v18 range:{0, v16}];

    [v10 appendAttributedString_];
  }

  else
  {
    if (sub_1C1E53A8C())
    {
      v19 = sub_1C1E53DAC();
    }

    else
    {
      v19 = 0;
    }

    sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);

    v20 = sub_1C1E5499C();
    v21 = sub_1C1E53A8C();
    if (sub_1C1E53A8C())
    {
      v22 = sub_1C1E53B2C();
      v9 = &property descriptor for CalculateGraph.xAxisBounds;
    }

    else
    {
      v22 = 0;
    }

    sub_1C1DCAFC8(&v30, v20, v21, a2, a3 & 1, v22 & 1, v19 & 1, a4, 0.0);
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) v9[42]];
  v24 = a5 * 0.95;
  [v23 setMinimumLineHeight_];
  [v23 setMaximumLineHeight_];
  v25 = *MEMORY[0x1E69DB688];
  v26 = v30;
  v27 = v23;
  [v26 addAttribute:v25 value:v27 range:{0, objc_msgSend(v26, sel_length)}];

  return v26;
}

uint64_t sub_1C1DCAFC8(id *a1, void *a2, char *a3, uint64_t a4, int a5, int a6, int a7, double a8, double a9)
{
  v315 = a7;
  v322 = a6;
  v317 = a5;
  v316 = a4;
  v328 = a3;
  v321 = a2;
  v332 = a1;
  v347 = *MEMORY[0x1E69E9840];
  v12 = sub_1C1E51E6C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v303 = &v241 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D088, &qword_1C1E58150);
  MEMORY[0x1EEE9AC00](v272);
  v248 = &v241 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v263 = &v241 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v268 = &v241 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D090, &qword_1C1E58158);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v243 = &v241 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v246 = &v241 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v247 = &v241 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v241 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v241 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v264 = &v241 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v266 = &v241 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v265 = &v241 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v273 = &v241 - v38;
  v293 = sub_1C1E53CBC();
  v39 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v292 = &v241 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v291 = &v241 - v42;
  v43 = sub_1C1E5443C();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v241 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v241 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v311 = &v241 - v51;
  v314 = sub_1C1E53A4C();
  v52 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314);
  v299 = &v241 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v256 = &v241 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v300 = &v241 - v57;
  v310 = v9;
  v58 = sub_1C1E53AAC();
  v59 = v58;
  if (v58 >> 62)
  {
    goto LABEL_179;
  }

  for (i = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1E54ACC())
  {
    v61 = 0;
    v313 = *MEMORY[0x1E69920B8];
    v312 = (v52 + 88);
    v301 = *MEMORY[0x1E69920B0];
    v275 = a9 + a8 * -0.14;
    v274 = a8 * 0.45;
    v282 = a9 + a8 * -0.08;
    *&v279 = 0.7;
    v62 = (v44 + 8);
    v331 = (v44 + 104);
    v289 = (v39 + 104);
    v288 = (v39 + 8);
    v39 = 0;
    v281 = (v44 + 16);
    v245 = (v52 + 104);
    v52 = 0;
    v251 = (v44 + 56);
    v63 = *MEMORY[0x1E69DB980];
    v267 = v44 + 48;
    v242 = (v44 + 32);
    v290 = *MEMORY[0x1E69DB968];
    v284 = a8 * 0.02;
    v262 = a8 * -0.25;
    v255 = xmmword_1C1E58C30;
    v254 = xmmword_1C1E58C40;
    v283 = 1.14;
    v269 = 1.06;
    v280 = xmmword_1C1E58C50;
    v286 = *MEMORY[0x1E69920C8];
    v278 = *MEMORY[0x1E69920C0];
    v305 = *MEMORY[0x1E6992180];
    v320 = *MEMORY[0x1E6992178];
    v287 = *MEMORY[0x1E6992100];
    v253 = *MEMORY[0x1E6992148];
    v277 = *MEMORY[0x1E6992188];
    v252 = *MEMORY[0x1E6992198];
    v261 = *MEMORY[0x1E6992170];
    v244 = *MEMORY[0x1E69921A0];
    v319 = *MEMORY[0x1E6992150];
    v302 = *MEMORY[0x1E6992158];
    v308 = *MEMORY[0x1E6992190];
    v298 = *MEMORY[0x1E69DB648];
    v297 = *MEMORY[0x1E69DB610];
    v304 = *MEMORY[0x1E69DB660];
    v296 = *MEMORY[0x1E69921B0];
    v285 = *MEMORY[0x1E6992138];
    v294 = *MEMORY[0x1E69DB650];
    v309 = v59 & 0xC000000000000001;
    v295 = v59 & 0xFFFFFFFFFFFFFF8;
    v44 = v328;
    v318 = v46;
    v306 = i;
    v333 = v62;
    v241 = v27;
    v249 = v30;
    v307 = v59;
    while (1)
    {
      v327 = v61;
      v329 = v52;
      if (v309)
      {
        v52 = MEMORY[0x1C6910730](v39, v59);
        v66 = (v39 + 1);
        if (__OFADD__(v39, 1))
        {
          break;
        }

        goto LABEL_13;
      }

      if (v39 >= *(v295 + 16))
      {
        goto LABEL_177;
      }

      v52 = *(v59 + 8 * v39 + 32);

      v66 = (v39 + 1);
      if (__OFADD__(v39, 1))
      {
        break;
      }

LABEL_13:
      v325 = v66;
      v326 = v39;
      if (sub_1C1E5437C())
      {
        v67 = v300;
        sub_1C1E53A6C();
        v68 = (*v312)(v67, v314);
        v69 = a9;
        v70 = a8;
        if (v68 != v313)
        {
          v69 = a8 * 0.35 + a9;
          v70 = a8 * 0.7;
          if (v68 != v301)
          {
            if (v68 == v286)
            {
              v69 = v282;
              v70 = a8 * 0.7;
              if (v44)
              {
                v71 = sub_1C1E53D2C();
                v69 = v275;
                v70 = v274;
                if (v71 != 1)
                {
                  v69 = v282;
                  v70 = a8 * 0.7;
                }
              }
            }

            else
            {
              v69 = a9;
              v70 = a8;
              if (v68 != v278)
              {
                goto LABEL_186;
              }
            }
          }
        }

        sub_1C1DCAFC8(v332, v321, v44, v316, v317 & 1, v322 & 1, v315 & 1, v70, v69);
      }

      v72 = v311;
      sub_1C1E543AC();
      v73 = sub_1C1E5441C();
      v27 = *v62;
      (*v62)(v72, v43);
      if (v73)
      {
        sub_1C1E543AC();
        v74 = v331;
        (*v331)(v46, v305, v43);
        v75 = sub_1C1E5442C();
        (v27)(v46, v43);
        (v27)(v49, v43);
        v76 = v75 ^ 1;
        if (((v75 ^ 1) & 1) == 0 && v44)
        {
          v76 = sub_1C1E53D2C() == 1;
        }
      }

      else
      {
        v76 = 0;
        v74 = v331;
      }

      LODWORD(v323) = v76;
      v342 = 0;
      sub_1C1E543AC();
      v334 = *v74;
      v334(v46, v320, v43);
      v77 = sub_1C1E5442C();
      (v27)(v46, v43);
      (v27)(v49, v43);
      v335 = v52;
      if ((v77 & 1) == 0)
      {
        if (!v44)
        {
LABEL_38:
          v324 = sub_1C1E5439C();
          v88 = v87;
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      if (!v44)
      {
        goto LABEL_38;
      }

      v78 = v291;
      sub_1C1E53B7C();
      v79 = v292;
      v80 = v293;
      (*v289)(v292, v287, v293);
      sub_1C1DCE150(&qword_1EDE738B8, MEMORY[0x1E6992110], MEMORY[0x1E6992118]);
      sub_1C1E547BC();
      sub_1C1E547BC();
      v81 = *v288;
      (*v288)(v79, v80);
      v81(v78, v80);
      if (*&v340 != v338)
      {

        v46 = v318;
LABEL_40:

        v324 = sub_1C1E5436C();
        v88 = v89;
LABEL_41:

        goto LABEL_42;
      }

      sub_1C1E5444C();
      sub_1C1E5439C();
      v82 = sub_1C1E53C3C();
      v84 = v83;
      v86 = v85;

      if (v86)
      {
        v46 = v318;
      }

      else
      {
        v46 = v318;
        if ((v317 & 1) == 0 && v82 > v316 && v84 >= 1)
        {
          if (__OFADD__(v84, 1))
          {
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
          }

          if (__OFSUB__(v82, v84 + 1))
          {
            goto LABEL_184;
          }
        }
      }

      v149 = COERCE_DOUBLE(sub_1C1E5434C());
      v88 = v150;
      sub_1C1E5439C();
      v151 = sub_1C1E53C7C();

      if (v151)
      {
        v340 = v149;
        v341 = v88;
        v338 = 10911970;
        v339 = 0xA300000000000000;
        v336 = 0;
        v337 = 0xE000000000000000;
        sub_1C1DC733C(v152, v153, v154);
        v324 = sub_1C1E54A1C();
        v156 = v155;

        v88 = v156;
      }

      else
      {
        v324 = *&v149;
      }

      v44 = v328;
      if ((v315 & 1) == 0)
      {
        goto LABEL_41;
      }

      v157 = v324;
      sub_1C1E105C0(101, 0xE100000000000000, v324, v88);
      if (v158)
      {
        goto LABEL_41;
      }

      v159 = sub_1C1E546AC();
      v160 = sub_1C1DC7804(v159, v157, v88);
      *&v161 = COERCE_DOUBLE(MEMORY[0x1C6910230](v160));
      v163 = v162;

      v340 = *&v161;
      v341 = v163;

      v164 = sub_1C1E5474C();

      if (v164)
      {
        sub_1C1E546DC();
      }

      v165 = sub_1C1E5479C();
      v167 = v166;
      v169 = v168;
      v171 = v170;

      v259 = MEMORY[0x1C6910230](v165, v167, v169, v171);
      v270 = v172;

      v173 = v334;
      v334(v49, v253, v43);
      v174 = *v281;
      v175 = v318;
      (*v281)(v318, v49, v43);
      v176 = sub_1C1E543EC();
      swift_allocObject();
      v330 = sub_1C1E5438C();
      (v27)(v49, v43);
      v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D8, &qword_1C1E5AB70);
      v271 = swift_allocObject();
      *(v271 + 16) = v255;
      v178 = v340;
      v177 = v341;
      v173(v49, v277, v43);
      v179 = v177;
      v324 = v174;
      v174(v175, v49, v43);
      v276 = v176;
      v180 = v178;
      swift_allocObject();

      v181 = sub_1C1E5438C();
      (v27)(v49, v43);
      *(v271 + 32) = v181;
      v182 = sub_1C1E53ADC();
      swift_allocObject();
      swift_retain_n();
      sub_1C1E53A9C();
      sub_1C1E543CC();
      if (sub_1C1E543BC())
      {
        (*v245)(v256, v301, v314);
        sub_1C1E53A7C();
      }

      v183 = HIBYTE(v179) & 0xF;
      if ((v179 & 0x2000000000000000) == 0)
      {
        v183 = *&v178 & 0xFFFFFFFFFFFFLL;
      }

      v46 = v318;
      v257 = v179;
      v260 = v182;
      if (!v183 || *&v180 == 45 && v179 == 0xE100000000000000)
      {
        LODWORD(v271) = 1;
      }

      else
      {
        LODWORD(v271) = sub_1C1E54D2C();
      }

      v184 = swift_allocObject();
      *(v184 + 16) = v254;
      v185 = v334;
      v334(v49, v277, v43);
      v186 = v324;
      (v324)(v46, v49, v43);
      swift_allocObject();

      v187 = sub_1C1E5438C();
      (v27)(v49, v43);
      *(v184 + 32) = v187;
      v185(v49, v252, v43);
      v188 = v184;
      v186(v46, v49, v43);
      swift_allocObject();
      v189 = sub_1C1E5438C();
      (v27)(v49, v43);
      *(v184 + 40) = v189;
      v190 = sub_1C1E53C8C();
      v191 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v192 = [v190 stringFromNumber_];

      if (v192)
      {
        sub_1C1E545FC();
      }

      v193 = v267;
      v334(v49, v277, v43);
      (v324)(v46, v49, v43);
      swift_allocObject();
      v194 = sub_1C1E5438C();
      (v27)(v49, v43);
      v195 = v330;
      *(v188 + 48) = v194;
      *(v188 + 56) = v195;
      v250 = v188;
      v338 = v188;
      if (v329)
      {

        v196 = v273;
        sub_1C1E543AC();
        v197 = v196;
        v198 = *v251;
        v199 = v251 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        (*v251)(v197, 0, 1, v43);
      }

      else
      {
        v198 = *v251;
        v200 = v251 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v197 = v273;
        (*v251)(v273, 1, 1, v43);
        v199 = v200;
      }

      v201 = v266;
      v202 = v265;
      v334(v265, v261, v43);
      v259 = v198;
      v258 = v199;
      v198(v202, 0, 1, v43);
      v203 = *(v272 + 48);
      v204 = v197;
      v205 = v268;
      sub_1C1E106B0(v204, v268);
      sub_1C1E106B0(v202, v205 + v203);
      v206 = *v193;
      v207 = (*v193)(v205, 1, v43);
      v271 = v206;
      if (v207 == 1)
      {
        sub_1C1DC1870(v202, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v273, &qword_1EBF1D090, &qword_1C1E58158);
        v208 = v206(v205 + v203, 1, v43);
        v209 = v205;
        if (v208 == 1)
        {
          goto LABEL_143;
        }

        goto LABEL_146;
      }

      sub_1C1E106B0(v205, v201);
      if (v206(v205 + v203, 1, v43) == 1)
      {
        sub_1C1DC1870(v202, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v273, &qword_1EBF1D090, &qword_1C1E58158);
        (v27)(v201, v43);
LABEL_146:
        sub_1C1DC1870(v205, &qword_1EBF1D088, &qword_1C1E58150);
        goto LABEL_147;
      }

      (*v242)(v49, v205 + v203, v43);
      sub_1C1DCE150(&qword_1EBF1D0A0, MEMORY[0x1E69921B8], MEMORY[0x1E69921C0]);
      v214 = sub_1C1E545AC();
      (v27)(v49, v43);
      sub_1C1DC1870(v202, &qword_1EBF1D090, &qword_1C1E58158);
      sub_1C1DC1870(v273, &qword_1EBF1D090, &qword_1C1E58158);
      (v27)(v201, v43);
      sub_1C1DC1870(v268, &qword_1EBF1D090, &qword_1C1E58158);
      if (v214)
      {
        goto LABEL_150;
      }

LABEL_147:
      if (v329)
      {
        v210 = v264;
        sub_1C1E543AC();
        v211 = v210;
        v212 = 0;
        v213 = v249;
      }

      else
      {
        v212 = 1;
        v213 = v249;
        v211 = v264;
      }

      v219 = v259;
      v259(v211, v212, 1, v43);
      v334(v213, v244, v43);
      v219(v213, 0, 1, v43);
      v220 = *(v272 + 48);
      v221 = v211;
      v222 = v211;
      v223 = v263;
      sub_1C1E106B0(v221, v263);
      sub_1C1E106B0(v213, v223 + v220);
      v224 = v271;
      if ((v271)(v223, 1, v43) == 1)
      {
        sub_1C1DC1870(v213, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v222, &qword_1EBF1D090, &qword_1C1E58158);
        if ((v271)(v223 + v220, 1, v43) != 1)
        {
          goto LABEL_159;
        }

        sub_1C1DC1870(v223, &qword_1EBF1D090, &qword_1C1E58158);
      }

      else
      {
        v225 = v241;
        sub_1C1E106B0(v223, v241);
        if (v224(v223 + v220, 1, v43) == 1)
        {
          sub_1C1DC1870(v249, &qword_1EBF1D090, &qword_1C1E58158);
          sub_1C1DC1870(v264, &qword_1EBF1D090, &qword_1C1E58158);
          (v27)(v225, v43);
LABEL_159:
          sub_1C1DC1870(v223, &qword_1EBF1D088, &qword_1C1E58150);
          goto LABEL_170;
        }

        (*v242)(v49, v223 + v220, v43);
        sub_1C1DCE150(&qword_1EBF1D0A0, MEMORY[0x1E69921B8], MEMORY[0x1E69921C0]);
        v226 = sub_1C1E545AC();
        (v27)(v49, v43);
        sub_1C1DC1870(v249, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v264, &qword_1EBF1D090, &qword_1C1E58158);
        (v27)(v225, v43);
        sub_1C1DC1870(v263, &qword_1EBF1D090, &qword_1C1E58158);
        if ((v226 & 1) == 0)
        {
          goto LABEL_170;
        }
      }

      if (v327)
      {
        v227 = v247;
        sub_1C1E543AC();
        v228 = 0;
      }

      else
      {
        v228 = 1;
        v227 = v247;
      }

      v229 = v259;
      v259(v227, v228, 1, v43);
      v230 = v246;
      v334(v246, v261, v43);
      v229(v230, 0, 1, v43);
      v231 = *(v272 + 48);
      v232 = v248;
      sub_1C1E106B0(v227, v248);
      v259 = v231;
      sub_1C1E106B0(v230, v231 + v232);
      v233 = v271;
      if ((v271)(v232, 1, v43) == 1)
      {
        sub_1C1DC1870(v230, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v227, &qword_1EBF1D090, &qword_1C1E58158);
        v234 = v233(v259 + v232, 1, v43);
        v209 = v232;
        if (v234 == 1)
        {
LABEL_143:
          sub_1C1DC1870(v209, &qword_1EBF1D090, &qword_1C1E58158);
LABEL_150:
          v215 = v334;
          v334(v49, v319, v43);
          v216 = v324;
          (v324)(v46, v49, v43);
          swift_allocObject();
          v217 = sub_1C1E5438C();
          (v27)(v49, v43);
          sub_1C1DF5628(0, 0, v217);

          v215(v49, v302, v43);
          v216(v46, v49, v43);
          swift_allocObject();
          sub_1C1E5438C();
          v218 = (v27)(v49, v43);
          MEMORY[0x1C69103A0](v218);
          if (*((v338 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v338 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C1E547FC();
          }

          sub_1C1E5480C();
          goto LABEL_170;
        }

        goto LABEL_169;
      }

      v235 = v243;
      sub_1C1E106B0(v232, v243);
      v236 = v259;
      if (v233(v259 + v232, 1, v43) == 1)
      {
        sub_1C1DC1870(v230, &qword_1EBF1D090, &qword_1C1E58158);
        sub_1C1DC1870(v247, &qword_1EBF1D090, &qword_1C1E58158);
        (v27)(v235, v43);
LABEL_169:
        sub_1C1DC1870(v248, &qword_1EBF1D088, &qword_1C1E58150);
        goto LABEL_170;
      }

      (*v242)(v49, v236 + v232, v43);
      sub_1C1DCE150(&qword_1EBF1D0A0, MEMORY[0x1E69921B8], MEMORY[0x1E69921C0]);
      v238 = v230;
      v239 = sub_1C1E545AC();
      (v27)(v49, v43);
      sub_1C1DC1870(v238, &qword_1EBF1D090, &qword_1C1E58158);
      sub_1C1DC1870(v247, &qword_1EBF1D090, &qword_1C1E58158);
      (v27)(v235, v43);
      sub_1C1DC1870(v232, &qword_1EBF1D090, &qword_1C1E58158);
      if (v239)
      {
        goto LABEL_150;
      }

LABEL_170:
      v237 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
      v342 = v237;
      swift_allocObject();
      v44 = v328;

      sub_1C1E53A9C();
      if (!v237)
      {
        __break(1u);
LABEL_186:
        result = sub_1C1E54D1C();
        __break(1u);
        return result;
      }

      sub_1C1DCAFC8(&v342, v321, v44, v316, v317 & 1, v322 & 1, 1, a8, a9);

      v324 = 0;
      v88 = 0xE000000000000000;
LABEL_42:
      if ((sub_1C1E53ACC() & 1) == 0)
      {
        v95 = [objc_opt_self() systemFontOfSize:a8 weight:v63];
LABEL_52:
        v330 = v95;
        v94 = 0.0;
        goto LABEL_53;
      }

      sub_1C1E543AC();
      v334(v46, v319, v43);
      v90 = sub_1C1E5442C();
      (v27)(v46, v43);
      (v27)(v49, v43);
      if ((v90 & 1) == 0 && (sub_1C1E543AC(), v334(v46, v302, v43), v91 = sub_1C1E5442C(), (v27)(v46, v43), (v27)(v49, v43), (v91 & 1) == 0) || sub_1C1E5435C() < 1)
      {
        if ((sub_1C1E543DC() & 1) != 0 && sub_1C1E5435C() >= 1)
        {
          v96 = sub_1C1E5435C();
          v97 = pow(v269, v96);
          v95 = [objc_opt_self() systemFontOfSize:v97 * a8 weight:v290];
        }

        else
        {
          v95 = [objc_opt_self() systemFontOfSize_];
        }

        goto LABEL_52;
      }

      v92 = sub_1C1E5435C();
      v93 = pow(v283, v92);
      v330 = [objc_opt_self() systemFontOfSize:v93 * a8 weight:v290];
      v94 = v284 * v93;
LABEL_53:
      sub_1C1E543AC();
      v334(v46, v319, v43);
      v98 = sub_1C1E5442C();
      (v27)(v46, v43);
      (v27)(v49, v43);
      if (v98 & 1) != 0 || (sub_1C1E543AC(), v334(v46, v302, v43), v99 = sub_1C1E5442C(), (v27)(v46, v43), (v27)(v49, v43), (v99))
      {
        v94 = a8 * 0.06 + v94;
      }

      sub_1C1E543AC();
      v334(v46, v308, v43);
      v100 = sub_1C1E5442C();
      (v27)(v46, v43);
      (v27)(v49, v43);
      if (v100)
      {
        v101 = sub_1C1E543DC();
        v102 = v342;
        if (v342)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v101 = 1;
        v102 = v342;
        if (v342)
        {
LABEL_58:
          v39 = v102;

          goto LABEL_64;
        }
      }

      if (v101 & 1 | (v44 == 0))
      {
        v103 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v104 = sub_1C1E545BC();

        v105 = [v103 initWithString_];

        v106 = v105;
      }

      else
      {
        sub_1C1DC0D28(0, &qword_1EDE737F0, 0x1E696AAB0);
        v343 = v280;
        v344 = 0x3FE6666666666666;
        v345 = v63;
        v346 = 0;

        sub_1C1DC50CC(v324, v88, 0.0, 1, &v343, 0, 0, COERCE_UNSIGNED_INT64_(v94 + a9), v303, a8, 0, 0);

        v46 = v318;
        v107 = sub_1C1E5496C();
        v108 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

        v106 = v108;
      }

      v39 = v106;
LABEL_64:
      v324 = v102;
      v44 = [v39 length];

      v52 = v335;
      if (v102 == 0 && (v101 & 1) != 0)
      {
        [v39 addAttribute:v298 value:v330 range:{0, v44}];
        v109 = sub_1C1E5210C();
        [v39 addAttribute:v297 value:v109 range:{0, v44}];
      }

      v110 = sub_1C1E5437C();
      if (!v110)
      {
        goto LABEL_77;
      }

      v30 = v110;
      if ((sub_1C1E53ABC() & 1) != 0 || (sub_1C1E53A3C() & 1) != 0 || (sub_1C1E543DC() & 1) == 0)
      {
        goto LABEL_76;
      }

      v276 = *v332;
      v111 = [v276 string];
      v112 = sub_1C1E545FC();
      v114 = v113;

      v52 = v335;

      v115 = HIBYTE(v114) & 0xF;
      v116 = (v114 & 0x2000000000000000) == 0;
      v46 = v318;
      if (v116)
      {
        v115 = v112 & 0xFFFFFFFFFFFFLL;
      }

      if (!v115)
      {
LABEL_76:

LABEL_77:
        if (v323 & 1) != 0 || (sub_1C1E543AC(), v334(v46, v296, v43), v120 = sub_1C1E5442C(), (v27)(v46, v43), (v27)(v49, v43), (v120) || (sub_1C1E543AC(), v334(v46, v285, v43), v30 = sub_1C1E5442C(), (v27)(v46, v43), (v27)(v49, v43), (v30))
        {
          sub_1C1E543AC();
          v59 = v49;
          v121 = sub_1C1E5440C();
          (v27)(v49, v43);
          if (v121 & 1) == 0 || (sub_1C1E543AC(), v334(v46, v305, v43), v122 = sub_1C1E5442C(), (v27)(v46, v43), (v27)(v49, v43), (v122) && v328 && (v59 = v328, sub_1C1E53D2C() == 1))
          {
            v30 = sub_1C1E5210C();
            v123 = [v39 length];
            if (__OFSUB__(v123, 1))
            {
              goto LABEL_176;
            }

            [v39 addAttribute:v304 value:v30 range:{v123 - 1, 1}];
          }

          v30 = *v332;
          v124 = [*v332 string];
          v125 = sub_1C1E545FC();
          v127 = v126;

          v128 = HIBYTE(v127) & 0xF;
          v129 = v125 & 0xFFFFFFFFFFFFLL;
          v52 = v335;
          v116 = (v127 & 0x2000000000000000) == 0;
          v46 = v318;
          if (v116)
          {
            v128 = v129;
          }

          if (v128)
          {
            sub_1C1E543AC();
            v130 = sub_1C1E543FC();
            (v27)(v49, v43);
            if ((v130 & 1) == 0)
            {
              v59 = sub_1C1E5210C();
              v131 = [v30 length];
              if (__OFSUB__(v131, 1))
              {
                goto LABEL_178;
              }

              [v30 addAttribute:v304 value:v59 range:{v131 - 1, 1}];
            }
          }
        }

        if (v102)
        {
          goto LABEL_105;
        }

        goto LABEL_93;
      }

      v117 = sub_1C1E5210C();
      v118 = v117;
      if (v322)
      {
        v119 = [v39 length];
        if (__OFSUB__(v119, 1))
        {
          goto LABEL_183;
        }

        [v39 addAttribute:v304 value:v118 range:{v119 - 1, 1, v241}];
      }

      else
      {
        v323 = v117;
        v145 = v276;
        v146 = [v276 length];
        v147 = v146 - 1;
        if (__OFSUB__(v146, 1))
        {
          goto LABEL_182;
        }

        v148 = v145;
        v118 = v323;
        [v148 addAttribute:v304 value:v323 range:{v147, 1, v241}];
      }

      if (v102)
      {
        goto LABEL_105;
      }

LABEL_93:
      if (sub_1C1E5433C())
      {
        sub_1C1E543AC();
        v334(v46, v320, v43);
        v132 = sub_1C1E5442C();
        v62 = v333;
        (v27)(v46, v43);
        (v27)(v49, v43);
        if (v132)
        {
          v133 = *&v279;
        }

        else
        {
          v133 = 0.5;
        }

        v340 = 0.0;
        v134 = v321;
        [v321 getRed:0 green:0 blue:0 alpha:{&v340, v241}];
        v135 = [v134 colorWithAlphaComponent_];
        [v39 addAttribute:v294 value:v135 range:{0, v44}];
      }

      else
      {
        [v39 addAttribute:v294 value:v321 range:{0, v44}];
        v62 = v333;
      }

      v136 = *v332;
      v30 = sub_1C1DC0D28(0, &qword_1EDE737F0, 0x1E696AAB0);
      if (v322)
      {
        sub_1C1E51E5C();
        v137 = sub_1C1E5496C();
        [v136 appendAttributedString_];

        sub_1C1E543AC();
        v334(v46, v320, v43);
        LOBYTE(v137) = sub_1C1E5442C();
        (v27)(v46, v43);
        (v27)(v49, v43);
        if (v137)
        {
          sub_1C1E51E5C();
          v138 = sub_1C1E5496C();
          [v136 appendAttributedString_];
        }

        v139 = *v332;
        [*v332 appendAttributedString_];
        sub_1C1E543AC();
        v334(v46, v320, v43);
        v140 = sub_1C1E5442C();
        (v27)(v46, v43);
        (v27)(v49, v43);
        if (v140)
        {
          sub_1C1E51E5C();
          v30 = sub_1C1E5496C();
          [v139 appendAttributedString_];
        }

        goto LABEL_106;
      }

      sub_1C1E51E5C();
      v30 = sub_1C1E5496C();
      [v136 appendAttributedString_];

LABEL_105:
      [*v332 appendAttributedString_];
      v62 = v333;
LABEL_106:
      v141 = sub_1C1E543BC();
      if (v141)
      {
        v30 = v141;
        v142 = v299;
        sub_1C1E53A6C();
        v143 = (*v312)(v142, v314);
        v64 = a9;
        v65 = a8;
        v44 = v328;
        if (v143 != v313)
        {
          v64 = a8 * 0.35 + a9;
          v65 = a8 * 0.7;
          if (v143 != v301)
          {
            if (v143 == v286)
            {
              v64 = v282;
              v65 = a8 * 0.7;
              if (v328)
              {
                v144 = sub_1C1E53D2C();
                v64 = v275;
                v65 = v274;
                if (v144 != 1)
                {
                  v64 = v282;
                  v65 = a8 * 0.7;
                }
              }
            }

            else
            {
              v64 = a9;
              v65 = a8;
              if (v143 != v278)
              {
                goto LABEL_186;
              }
            }
          }
        }

        sub_1C1DCAFC8(v332, v321, v44, v316, v317 & 1, v322 & 1, v315 & 1, v65, v64);

        v39 = v330;
      }

      else
      {

        v44 = v328;
      }

      v39 = v326 + 1;
      v61 = v329;
      v59 = v307;
      if (v325 == v306)
      {
        goto LABEL_180;
      }
    }

    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    ;
  }

LABEL_180:
}

uint64_t sub_1C1DCE150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1DCE198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CalculateExpressionView(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1C1E5285C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + 2);
  v11 = v2[3];
  v12 = v2[4];
  v13 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C1DCE2B0(a1, v10, v2 + v6, v2 + v9, a2, v11, v12, v13);
}

uint64_t sub_1C1DCE2B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v118 = a1;
  v122 = a5;
  v14 = sub_1C1E529BC();
  v119 = *(v14 - 8);
  v120 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v116 = v15;
  v117 = &v85[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for CalculateExpressionView(0);
  v113 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v125 = v17;
  v126 = &v85[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = sub_1C1E5285C();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v110 = v18;
  v111 = &v85[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1C1E52D2C();
  v108 = *(v19 - 8);
  v109 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v85[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1C1E52E3C();
  v104 = *(v21 - 8);
  v105 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v85[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C200, &qword_1C1E560A0);
  MEMORY[0x1EEE9AC00](v88);
  v24 = &v85[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C208, &qword_1C1E560A8);
  v91 = *(v25 - 8);
  v92 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v90 = &v85[-v26];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C210, &qword_1C1E560B0);
  MEMORY[0x1EEE9AC00](v99);
  v94 = &v85[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C218, &qword_1C1E560B8);
  v100 = *(v28 - 8);
  v101 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v98 = &v85[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C220, &qword_1C1E560C0);
  v96 = *(v30 - 8);
  v97 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v95 = &v85[-v31];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C228, &qword_1C1E560C8);
  MEMORY[0x1EEE9AC00](v93);
  v102 = &v85[-v32];
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C230, &qword_1C1E560D0);
  MEMORY[0x1EEE9AC00](v124);
  v106 = &v85[-v33];
  sub_1C1E52FCC();
  v121 = a2;
  v127 = a2;
  v128 = a6;
  v129 = a7;
  v34 = a3;
  v123 = a3;
  v130 = a3;
  v131 = a4;
  v115 = a4;
  v132 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C238, &qword_1C1E560D8);
  sub_1C1DC1124(&qword_1EDE73AF0, &qword_1EBF1C238, &qword_1C1E560D8, MEMORY[0x1E6981880]);
  sub_1C1E526BC();
  KeyPath = swift_getKeyPath();
  v36 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C240, &unk_1C1E56110) + 36)];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C248, &unk_1C1E5A430);
  v37 = *(v87 + 28);
  v86 = *MEMORY[0x1E697E7D0];
  v38 = v86;
  v39 = sub_1C1E5296C();
  v40 = *(*(v39 - 8) + 104);
  v40(v36 + v37, v38, v39);
  *v36 = KeyPath;
  v89 = sub_1C1E52C0C();
  v146 = 0;
  sub_1C1DCFEB0(v34, &v134);
  v155 = v142;
  v156 = v143;
  v157 = v144;
  v151 = v138;
  v152 = v139;
  v154 = v141;
  v153 = v140;
  v147 = v134;
  v148 = v135;
  v149 = v136;
  v150 = v137;
  v158[8] = v142;
  v158[9] = v143;
  v158[10] = v144;
  v158[4] = v138;
  v158[5] = v139;
  v158[7] = v141;
  v158[6] = v140;
  v158[0] = v134;
  v158[1] = v135;
  v158[3] = v137;
  v158[2] = v136;
  sub_1C1DC1424(&v147, v133, &qword_1EBF1C250, &qword_1C1E56120);
  sub_1C1DC1870(v158, &qword_1EBF1C250, &qword_1C1E56120);
  *&v145[119] = v154;
  *&v145[135] = v155;
  *&v145[151] = v156;
  *&v145[167] = v157;
  *&v145[55] = v150;
  *&v145[71] = v151;
  *&v145[87] = v152;
  *&v145[103] = v153;
  *&v145[7] = v147;
  *&v145[23] = v148;
  *&v145[39] = v149;
  LOBYTE(v37) = v146;
  v41 = swift_getKeyPath();
  v42 = &v24[*(v88 + 36)];
  v43 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C258, &qword_1C1E56128) + 36)];
  v40(v43 + *(v87 + 28), v86, v39);
  *v43 = v41;
  v44 = *&v145[144];
  *(v42 + 145) = *&v145[128];
  *(v42 + 161) = v44;
  *(v42 + 177) = *&v145[160];
  v45 = *&v145[80];
  *(v42 + 81) = *&v145[64];
  *(v42 + 97) = v45;
  v46 = *&v145[112];
  *(v42 + 113) = *&v145[96];
  *(v42 + 129) = v46;
  v47 = *&v145[16];
  *(v42 + 17) = *v145;
  *(v42 + 33) = v47;
  v48 = *&v145[48];
  *(v42 + 49) = *&v145[32];
  *v42 = v89;
  *(v42 + 1) = 0;
  v42[16] = v37;
  *(v42 + 24) = *&v145[175];
  *(v42 + 65) = v48;
  v42[200] = 0;
  v49 = v123;
  if (sub_1C1E5290C())
  {
    sub_1C1E539BC();
  }

  else
  {
    sub_1C1E539AC();
  }

  sub_1C1DD032C();
  v50 = v90;
  sub_1C1E533EC();
  sub_1C1DC1870(v24, &qword_1EBF1C200, &qword_1C1E560A0);
  sub_1C1E538AC();
  sub_1C1E5281C();
  v51 = v94;
  (*(v91 + 32))(v94, v50, v92);
  v52 = v99;
  v53 = (v51 + *(v99 + 36));
  v54 = v135;
  *v53 = v134;
  v53[1] = v54;
  v53[2] = v136;
  v55 = v103;
  sub_1C1E52E2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C270, &qword_1C1E56140);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1C1E55C40;
  LOBYTE(v50) = sub_1C1E52FEC();
  *(v56 + 32) = v50;
  v57 = sub_1C1E52FCC();
  *(v56 + 33) = v57;
  sub_1C1E52FDC();
  sub_1C1E52FDC();
  if (sub_1C1E52FDC() != v50)
  {
    sub_1C1E52FDC();
  }

  sub_1C1E52FDC();
  if (sub_1C1E52FDC() != v57)
  {
    sub_1C1E52FDC();
  }

  v58 = sub_1C1DD04C8();
  v59 = v98;
  sub_1C1E533AC();
  (*(v104 + 8))(v55, v105);
  sub_1C1DC1870(v51, &qword_1EBF1C210, &qword_1C1E560B0);
  v60 = v107;
  sub_1C1E52D1C();
  sub_1C1E52FCC();
  v133[0] = v52;
  v133[1] = v58;
  swift_getOpaqueTypeConformance2();
  v61 = v95;
  v62 = v101;
  sub_1C1E5343C();
  (*(v108 + 8))(v60, v109);
  (*(v100 + 8))(v59, v62);
  v63 = v102;
  (*(v96 + 32))(v102, v61, v97);
  v64 = &v63[*(v93 + 36)];
  *v64 = 0x69566C6C6F726373;
  v64[1] = 0xEA00000000007765;
  v65 = v111;
  v66 = v112;
  v67 = v114;
  (*(v112 + 16))(v111, v115, v114);
  sub_1C1DC7390(v49, v126);
  v68 = (*(v66 + 80) + 40) & ~*(v66 + 80);
  v69 = *(v113 + 80);
  v70 = (v110 + v69 + v68) & ~v69;
  v71 = swift_allocObject();
  v72 = v121;
  *(v71 + 16) = v121;
  *(v71 + 24) = a6;
  *(v71 + 32) = a7;
  (*(v66 + 32))(v71 + v68, v65, v67);
  v73 = v126;
  sub_1C1DC73F4(v126, v71 + v70);
  v74 = v63;
  v75 = v106;
  sub_1C1DCF240(v74, v106);
  v76 = &v75[*(v124 + 36)];
  *v76 = sub_1C1DD154C;
  v76[1] = v71;
  v133[0] = v72;
  v77 = v119;
  v78 = v117;
  v79 = v120;
  (*(v119 + 16))(v117, v118, v120);
  sub_1C1DC7390(v123, v73);
  v80 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v81 = (v116 + v69 + v80) & ~v69;
  v82 = swift_allocObject();
  (*(v77 + 32))(v82 + v80, v78, v79);
  sub_1C1DC73F4(v73, v82 + v81);
  sub_1C1DC0D28(0, &qword_1EDE737F0, 0x1E696AAB0);
  sub_1C1DD06C8();
  sub_1C1DD0780();
  v83 = v72;
  sub_1C1E534CC();

  return sub_1C1DC1870(v75, &qword_1EBF1C230, &qword_1C1E560D0);
}

uint64_t sub_1C1DCF040()
{
  v1 = sub_1C1E5285C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for CalculateExpressionView(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;

  v11 = *(v6 + 40);
  v12 = sub_1C1E530EC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v10 + v11, v12);
  }

  if (*(v10 + *(v6 + 44)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1C1DCF240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C228, &qword_1C1E560C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DCF2B0()
{
  v1 = sub_1C1E529BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for CalculateExpressionView(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;

  v11 = *(v6 + 40);
  v12 = sub_1C1E530EC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v10 + v11, v12);
  }

  if (*(v10 + *(v6 + 44)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1C1DCF4BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>, double a6@<D1>)
{
  *a4 = sub_1C1E538CC();
  a4[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2A0, &qword_1C1E56170);
  return sub_1C1DCF54C(a1, a2, (a4 + *(v12 + 44)), a6);
}

uint64_t sub_1C1DCF54C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, double a4@<D1>)
{
  v82 = a3;
  v8 = type metadata accessor for CalculateExpressionView(0);
  v78 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = v9;
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1E51E6C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2A8, &qword_1C1E56178);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2B0, &qword_1C1E56180);
  MEMORY[0x1EEE9AC00](v77);
  v85 = &v70 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2B8, &qword_1C1E56188);
  MEMORY[0x1EEE9AC00](v80);
  v84 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v70 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v70 - v20;
  sub_1C1E538DC();
  sub_1C1E529FC();
  sub_1C1E538DC();
  sub_1C1E5281C();
  v21 = a1;
  sub_1C1E51E7C();
  v22 = sub_1C1E5315C();
  v75 = v23;
  v76 = v22;
  v25 = v24;
  v74 = v26;
  KeyPath = swift_getKeyPath();
  if (sub_1C1E5290C())
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  v72 = v27;
  v71 = swift_getKeyPath();
  v122 = v25 & 1;
  v121 = 0;
  sub_1C1E5283C();
  if (sub_1C1E5290C())
  {
    sub_1C1E538FC();
  }

  else
  {
    sub_1C1E538EC();
  }

  sub_1C1E529FC();
  *&v123[55] = v134[3];
  *&v123[71] = v134[4];
  *&v123[87] = v134[5];
  *&v123[103] = v134[6];
  *&v123[7] = v134[0];
  *&v123[23] = v134[1];
  *&v123[39] = v134[2];
  sub_1C1E538DC();
  sub_1C1E5281C();
  sub_1C1E53C9C();
  v28 = *&v123[80];
  *(v14 + 129) = *&v123[64];
  *(v14 + 145) = v28;
  *(v14 + 161) = *&v123[96];
  v29 = *&v123[16];
  *(v14 + 65) = *v123;
  *(v14 + 81) = v29;
  v30 = *&v123[48];
  *(v14 + 97) = *&v123[32];
  *(v14 + 113) = v30;
  v31 = v119;
  *(v14 + 184) = v118;
  v32 = v75;
  *v14 = v76;
  *(v14 + 1) = v32;
  v14[16] = v25 & 1;
  v33 = KeyPath;
  *(v14 + 3) = v74;
  *(v14 + 4) = v33;
  *(v14 + 5) = 1;
  v14[48] = 0;
  *(v14 + 7) = v71;
  v14[64] = v72;
  *(v14 + 22) = *&v123[111];
  *(v14 + 200) = v31;
  *(v14 + 216) = v120;
  v34 = sub_1C1E52BFC();
  sub_1C1DC7390(a2, v10);
  v35 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v36 = swift_allocObject();
  sub_1C1DC73F4(v10, v36 + v35);
  v37 = v14;
  v38 = v85;
  sub_1C1DC18D0(v37, v85, &qword_1EBF1C2A8, &qword_1C1E56178);
  v39 = (v38 + *(v77 + 36));
  *v39 = v34;
  v39[1] = sub_1C1DD0994;
  v39[2] = v36;
  v40 = sub_1C1E538DC();
  v78 = v41;
  if (*(a2 + 8) == 1)
  {
    sub_1C1DC7390(a2, v10);
    v42 = swift_allocObject();
    sub_1C1DC73F4(v10, v42 + v35);
    sub_1C1DC7390(a2, v10);
    v43 = swift_allocObject();
    sub_1C1DC73F4(v10, v43 + v35);
    sub_1C1DC7390(a2, v10);
    v44 = swift_allocObject();
    sub_1C1DC73F4(v10, v44 + v35);
    v45 = swift_getKeyPath();
    v46 = a4 * 1.35;
    LOBYTE(v107[0]) = 0;
    v47 = sub_1C1DD8274;
    v48 = sub_1C1DD8078;
    v49 = sub_1C1DD8010;
  }

  else
  {
    v49 = 0;
    v42 = 0;
    v48 = 0;
    v43 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0.0;
  }

  v79 = v44;
  *&v86 = v49;
  *(&v86 + 1) = v42;
  *&v87 = v48;
  *(&v87 + 1) = v43;
  *&v88 = v47;
  *(&v88 + 1) = v44;
  *&v89 = v45;
  *(&v89 + 1) = v46;
  LOBYTE(v90) = 0;
  v50 = v42;
  v51 = v40;
  v52 = v43;
  v53 = v78;
  *(&v90 + 1) = v40;
  v91 = v78;
  v54 = v81;
  v55 = v48;
  sub_1C1DC18D0(v85, v81, &qword_1EBF1C2B0, &qword_1C1E56180);
  v56 = v54 + *(v80 + 36);
  v57 = v89;
  *(v56 + 32) = v88;
  *(v56 + 48) = v57;
  *(v56 + 64) = v90;
  *(v56 + 80) = v91;
  v58 = v87;
  *v56 = v86;
  *(v56 + 16) = v58;
  v92[0] = v49;
  v92[1] = v50;
  v92[2] = v55;
  v92[3] = v52;
  v92[4] = v47;
  v92[5] = v79;
  v92[6] = v45;
  *&v92[7] = v46;
  v93 = 0;
  v94 = v51;
  v95 = v53;
  sub_1C1DC1424(&v86, v107, &qword_1EBF1C2C0, &qword_1C1E561C0);
  sub_1C1DC1870(v92, &qword_1EBF1C2C0, &qword_1C1E561C0);
  v59 = v83;
  sub_1C1DC18D0(v54, v83, &qword_1EBF1C2B8, &qword_1C1E56188);
  v60 = v84;
  sub_1C1DC1424(v59, v84, &qword_1EBF1C2B8, &qword_1C1E56188);
  *&v96 = sub_1C1DD0A74;
  *(&v96 + 1) = 0;
  v101 = v131;
  v102 = v132;
  v97 = v127;
  v98 = v128;
  v99 = v129;
  v100 = v130;
  v61 = v125;
  v62 = v126;
  v105 = v125;
  v106 = v126;
  v103 = v133;
  v104 = v124;
  v63 = v82;
  v82[8] = v124;
  v63[9] = v61;
  v63[10] = v62;
  v64 = v103;
  v63[6] = v102;
  v63[7] = v64;
  v65 = v99;
  v63[2] = v98;
  v63[3] = v65;
  v66 = v97;
  *v63 = v96;
  v63[1] = v66;
  v67 = v101;
  v63[4] = v100;
  v63[5] = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2C8, &qword_1C1E561C8);
  sub_1C1DC1424(v60, v63 + *(v68 + 48), &qword_1EBF1C2B8, &qword_1C1E56188);
  sub_1C1DC1424(&v96, v107, &qword_1EBF1C2D0, &qword_1C1E561D0);
  sub_1C1DC1870(v59, &qword_1EBF1C2B8, &qword_1C1E56188);
  sub_1C1DC1870(v60, &qword_1EBF1C2B8, &qword_1C1E56188);
  v107[0] = sub_1C1DD0A74;
  v107[1] = 0;
  v112 = v131;
  v113 = v132;
  v108 = v127;
  v109 = v128;
  v110 = v129;
  v111 = v130;
  v116 = v125;
  v117 = v126;
  v114 = v133;
  v115 = v124;
  return sub_1C1DC1870(v107, &qword_1EBF1C2D0, &qword_1C1E561D0);
}

uint64_t sub_1C1DCFE68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C1DCFEB0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CalculateExpressionView(0) + 52));
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v52) = *v3;
  v53 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C288, &qword_1C1E56158);
  sub_1C1E536EC();
  if (LOBYTE(v51[0]) == 3 || (LOBYTE(v52) = v4, v53 = v5, sub_1C1E536EC(), LOBYTE(v51[0]) == 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C298, &qword_1C1E56168);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C1E55C40;
    sub_1C1E535DC();
    v7 = sub_1C1E5366C();

    *(v6 + 32) = v7;
    *(v6 + 40) = sub_1C1E535DC();
    MEMORY[0x1C690F440](v6);
    sub_1C1E539AC();
    sub_1C1E539BC();
    sub_1C1E5293C();
    sub_1C1E538DC();
    sub_1C1E5281C();
    v8 = v63;
    v31 = v66;
    v32 = v65;
    v29 = v68;
    v30 = v67;
    v28 = v69;
    v26 = v71;
    v27 = v70;
    v33 = v72;
    v34 = v64;
    v25 = v73;
  }

  else
  {
    v8 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
  }

  LOBYTE(v52) = v4;
  v53 = v5;
  sub_1C1E536EC();
  if (LOBYTE(v51[0]) == 3 || (LOBYTE(v52) = v4, v53 = v5, sub_1C1E536EC(), LOBYTE(v51[0]) == 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C298, &qword_1C1E56168);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C1E55C40;
    *(v9 + 32) = sub_1C1E535DC();
    sub_1C1E535DC();
    v10 = v8;
    v11 = sub_1C1E5366C();

    *(v9 + 40) = v11;
    v8 = v10;
    MEMORY[0x1C690F440](v9);
    sub_1C1E539AC();
    sub_1C1E539BC();
    sub_1C1E5293C();
    sub_1C1E538DC();
    sub_1C1E5281C();
    v13 = v74;
    v12 = v75;
    v15 = v76;
    v14 = v77;
    v17 = v78;
    v16 = v79;
    v19 = v80;
    v18 = v81;
    v20 = v82;
    v21 = v83;
    v22 = v84;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  *&v39 = v8;
  *(&v39 + 1) = v34;
  *&v40 = v32;
  *(&v40 + 1) = v31;
  *&v41 = v30;
  *(&v41 + 1) = v29;
  *&v42 = v28;
  *(&v42 + 1) = v27;
  *&v43 = v26;
  *(&v43 + 1) = v33;
  v44 = v25;
  *&v45 = v13;
  *v38 = v25;
  v36 = v42;
  v37 = v43;
  v35 = v41;
  *(&v45 + 1) = v12;
  *&v46 = v15;
  *(&v46 + 1) = v14;
  *&v47 = v17;
  *(&v47 + 1) = v16;
  *&v48 = v19;
  *(&v48 + 1) = v18;
  *&v49 = v20;
  *(&v49 + 1) = v21;
  v50 = v22;
  *&v38[24] = v46;
  *&v38[8] = v45;
  *&v38[88] = v22;
  *&v38[72] = v49;
  *&v38[56] = v48;
  *&v38[40] = v47;
  v23 = v40;
  *a2 = v39;
  a2[1] = v23;
  a2[4] = v37;
  a2[5] = *v38;
  a2[2] = v35;
  a2[3] = v36;
  a2[9] = *&v38[64];
  a2[10] = *&v38[80];
  a2[7] = *&v38[32];
  a2[8] = *&v38[48];
  a2[6] = *&v38[16];
  v51[0] = v13;
  v51[1] = v12;
  v51[2] = v15;
  v51[3] = v14;
  v51[4] = v17;
  v51[5] = v16;
  v51[6] = v19;
  v51[7] = v18;
  v51[8] = v20;
  v51[9] = v21;
  v51[10] = v22;
  sub_1C1DC1424(&v39, &v52, &qword_1EBF1C290, &qword_1C1E56160);
  sub_1C1DC1424(&v45, &v52, &qword_1EBF1C290, &qword_1C1E56160);
  sub_1C1DC1870(v51, &qword_1EBF1C290, &qword_1C1E56160);
  v52 = v8;
  v53 = v34;
  v54 = v32;
  v55 = v31;
  v56 = v30;
  v57 = v29;
  v58 = v28;
  v59 = v27;
  v60 = v26;
  v61 = v33;
  v62 = v25;
  return sub_1C1DC1870(&v52, &qword_1EBF1C290, &qword_1C1E56160);
}

unint64_t sub_1C1DD032C()
{
  result = qword_1EDE73B90;
  if (!qword_1EDE73B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C200, &qword_1C1E560A0);
    sub_1C1DD03E4();
    sub_1C1DC1124(&qword_1EDE73BD0, &qword_1EBF1C268, &qword_1C1E56138, MEMORY[0x1E697DDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B90);
  }

  return result;
}

unint64_t sub_1C1DD03E4()
{
  result = qword_1EDE73BC0;
  if (!qword_1EDE73BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C240, &unk_1C1E56110);
    sub_1C1DC1124(&qword_1EDE73BD8, &qword_1EBF1C260, &qword_1C1E56130, MEMORY[0x1E697BE60]);
    sub_1C1DC1124(&qword_1EDE73B28, &qword_1EBF1C248, &unk_1C1E5A430, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BC0);
  }

  return result;
}

unint64_t sub_1C1DD04C8()
{
  result = qword_1EDE73BA8;
  if (!qword_1EDE73BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C210, &qword_1C1E560B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C200, &qword_1C1E560A0);
    sub_1C1DD032C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BA8);
  }

  return result;
}

unint64_t sub_1C1DD0590()
{
  result = qword_1EDE73BA0;
  if (!qword_1EDE73BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C228, &qword_1C1E560C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C218, &qword_1C1E560B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C210, &qword_1C1E560B0);
    sub_1C1DD04C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EDE73B48, &qword_1EBF1C278, &qword_1C1E56148, MEMORY[0x1E697C968]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BA0);
  }

  return result;
}

unint64_t sub_1C1DD06C8()
{
  result = qword_1EDE73B80;
  if (!qword_1EDE73B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C230, &qword_1C1E560D0);
    sub_1C1DD0590();
    sub_1C1DC1124(&qword_1EDE73B40, &qword_1EBF1C280, &qword_1C1E56150, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B80);
  }

  return result;
}

unint64_t sub_1C1DD0780()
{
  result = qword_1EDE737E8;
  if (!qword_1EDE737E8)
  {
    sub_1C1DC0D28(255, &qword_1EDE737F0, 0x1E696AAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE737E8);
  }

  return result;
}

uint64_t sub_1C1DD07EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1DD0850(a1, a2, a3);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

unint64_t sub_1C1DD0850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDE73DC0;
  if (!qword_1EDE73DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73DC0);
  }

  return result;
}

unint64_t sub_1C1DD08A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDE73DB8;
  if (!qword_1EDE73DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73DB8);
  }

  return result;
}

uint64_t sub_1C1DD08FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1DD0850(a1, a2, a3);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

double sub_1C1DD0994(uint64_t a1)
{
  v3 = *(type metadata accessor for CalculateExpressionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C1DD0A04(a1, v4);
}

double sub_1C1DD0A04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = sub_1C1E52BEC();
  MEMORY[0x1C690E520](v4);
  if (v3 == 1)
  {
    return result + *(a2 + 16) * 0.3;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

double sub_1C1DD0A68@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1C1DD0A74@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1E52D0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1E535FC();
  v16[0] = 0x69566C6C6F726373;
  v16[1] = 0xEA00000000007765;
  sub_1C1E52DAC();
  sub_1C1E5284C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  return result;
}

uint64_t sub_1C1DD0BC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_1C1DD0BE4@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1C1DD0C3C(a2, a3, a4);
  result = sub_1C1E52B8C();
  *a1 = v6;
  *(a1 + 8) = v7;
  return result;
}

unint64_t sub_1C1DD0C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDE73DC8[0];
  if (!qword_1EDE73DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE73DC8);
  }

  return result;
}

char *sub_1C1DD0CF8()
{
  v1 = sub_1C1E52B7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformViewController();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = v0[1];
  v7 = &v5[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress];
  v8 = *&v5[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress];
  v9 = *&v5[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress + 8];
  *v7 = *v0;
  *(v7 + 1) = v6;

  sub_1C1DD0EB8(v8, v9);
  v10 = v0[3];
  v11 = &v5[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard];
  v12 = *&v5[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard];
  v13 = *&v5[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard + 8];
  *v11 = v0[2];
  *(v11 + 1) = v10;

  sub_1C1DD0EB8(v12, v13);
  v15 = v0[4];
  v14 = v0[5];
  v16 = &v5[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision];
  v17 = *&v5[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision];
  v18 = *&v5[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision + 8];
  *v16 = v15;
  *(v16 + 1) = v14;

  sub_1C1DD0EB8(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D170, &qword_1C1E58468);
  v19 = sub_1C1E52F8C();
  sub_1C1DD0C3C(v19, v20, v21);
  sub_1C1E52B8C();
  (*(v2 + 8))(v4, v1);
  if ((v24 & 1) == 0)
  {
    *&v5[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_textHeight] = v23;
  }

  return v5;
}

uint64_t sub_1C1DD0EB8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_1C1DD0F2C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction] = 0;
  v5 = &v3[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_allowHighPrecision];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_textHeight] = 0;
  if (a2)
  {
    v8 = sub_1C1E545BC();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for PlatformViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

uint64_t sub_1C1DD112C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1C1E545FC();
    v4 = v3;

    if (v2 == 0xD000000000000014 && 0x80000001C1E5BF90 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1C1E54D2C();
    }
  }

  return v1 & 1;
}

void sub_1C1DD11FC()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for PlatformViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
  v5 = OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction;
  v6 = *&v0[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction];
  *&v0[OBJC_IVAR____TtC11CalculateUI22PlatformViewController_editMenuInteraction] = v4;

  v7 = [v0 view];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!*&v0[v5])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 addInteraction_];

  v9 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v0 action:sel_longPress_];
  [v9 setMinimumPressDuration_];
  [v9 setAllowableMovement_];
  [v9 setDelaysTouchesBegan_];
  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    [v10 addGestureRecognizer_];

    return;
  }

LABEL_9:
  __break(1u);
}

double sub_1C1DD13F8(uint64_t a1)
{
  v2 = sub_1C1E52B7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D170, &qword_1C1E58468);
  v6 = sub_1C1E52F8C();
  sub_1C1DD0C3C(v6, v7, v8);
  sub_1C1E52B8C();
  (*(v3 + 8))(v5, v2);
  if ((v11 & 1) == 0)
  {
    result = v10;
    *(a1 + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_textHeight) = v10;
  }

  return result;
}

double *sub_1C1DD154C(double *a1)
{
  v3 = *(sub_1C1E5285C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for CalculateExpressionView(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1C1DD1628(a1, v8, v7, v1 + v4, v9);
}

double *sub_1C1DD1628(double *result, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1C1E5283C();
  if (v7 < a2)
  {
    sub_1C1E5283C();
  }

  type metadata accessor for CalculateExpressionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C288, &qword_1C1E56158);
  return sub_1C1E536FC();
}

unint64_t sub_1C1DD17B4()
{
  result = qword_1EDE73BE8;
  if (!qword_1EDE73BE8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF1D1B0, &qword_1C1E584E8);
    sub_1C1DD18C4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73BE8);
  }

  return result;
}

uint64_t sub_1C1DD1838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1DD17B4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C1DD18C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDE73BF8[0];
  if (!qword_1EDE73BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE73BF8);
  }

  return result;
}

uint64_t sub_1C1DD1918()
{
  v1 = *(sub_1C1E529BC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for CalculateExpressionView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1C1DD19E4(v0 + v2, v5);
}

uint64_t sub_1C1DD19E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1E51F9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1E53C9C();
  v6 = sub_1C1E5290C() & 1;
  if (v6 == (sub_1C1E53B2C() & 1))
  {
    sub_1C1E539AC();
  }

  else
  {
    sub_1C1E539BC();
  }

  sub_1C1DC8008(&qword_1EDE750A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C1E529AC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C1DD1B58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C1DD1BD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E545FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1DD1D28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C190, &qword_1C1E55C68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1C1DD1DE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C190, &qword_1C1E55C68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s14descr1F4186469V7DotViewVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1DD1EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1DD1F70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1DD202C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52B2C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1DD20B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1DD20F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD2198@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52ABC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1DD2214(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[23]];

  return v15(v16, a2, v14);
}

char *sub_1C1DD23A4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[23]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C1DD256C()
{
  v1 = type metadata accessor for CalculateScrubberView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v16 = v0;
  v4 = v0 + v3;

  v5 = v1[6];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[7], v6);
  v7(v4 + v1[8], v6);
  v7(v4 + v1[9], v6);
  v7(v4 + v1[10], v6);
  v7(v4 + v1[11], v6);
  v7(v4 + v1[12], v6);
  sub_1C1DDEC6C(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v8 = v4 + v1[14];
  v9 = sub_1C1E52DFC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);

  v11 = v4 + v1[23];
  v12 = sub_1C1E51F5C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);

  v7(v4 + v1[31], v6);
  v7(v4 + v1[32], v6);
  v7(v4 + v1[33], v6);

  v7(v4 + v1[35], v6);
  v7(v4 + v1[36], v6);
  v7(v4 + v1[37], v6);

  return MEMORY[0x1EEE6BDD0](v16, ((((((((v15 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C1DD2AC4()
{

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C1DD2B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCE8, &qword_1C1E577E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1DD2B84()
{
  v1 = sub_1C1E529BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 64))
  {
  }

  v5 = (v3 + 80) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1C1DD2C80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD2CB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE18, &qword_1C1E57948);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE10, &qword_1C1E57940);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE08, &qword_1C1E57938);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE00, &qword_1C1E57930);
  v0 = sub_1C1DC1124(&qword_1EBF1CE40, &qword_1EBF1CE00, &qword_1C1E57930, MEMORY[0x1E695B240]);
  sub_1C1DC733C(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C1DD2E98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52ACC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1DD2ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C1DD2F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C1DD2FC4()
{
  v1 = *(type metadata accessor for CalculateGraphExpressionPopoverView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1DD30A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEF8, &qword_1C1E57BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DD3120()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CEC0, &qword_1C1E57BC8);
  sub_1C1DF59D8();
  return swift_getOpaqueTypeConformance2();
}

void sub_1C1DD31A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C1DFCE18(v1);
}

void sub_1C1DD3244(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C1DF8F54(v1);
}

void *sub_1C1DD32DC@<X0>(uint64_t a1@<X8>)
{
  result = CalculateScrubber.step.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1DD3318()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD3370(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1C1E546BC();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x1EEE68E00](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v1);
  }

  return result;
}

uint64_t sub_1C1DD33F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1DD3430()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD3498()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1DD3510(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C0, &qword_1C1E584F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1DD35CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D1C0, &qword_1C1E584F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1DD3684()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD36E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1DD37A4(uint64_t *a1)
{
  sub_1C1E52E1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D290, &qword_1C1E58800);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  swift_getOpaqueTypeMetadata2();
  sub_1C1E0F2FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1C1E549CC();
  swift_getTupleTypeMetadata3();
  sub_1C1E5397C();
  swift_getWitnessTable();
  sub_1C1E5378C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2D0, &qword_1C1E58820);
  swift_getWitnessTable();
  sub_1C1DC1124(&qword_1EBF1D2D8, &qword_1EBF1D2D0, &qword_1C1E58820, MEMORY[0x1E697E238]);
  swift_getOpaqueTypeMetadata2();
  sub_1C1E10390(qword_1EBF1D2E0, MEMORY[0x1E697C998], MEMORY[0x1E697C990]);
  sub_1C1E5280C();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1C1DD3A48()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1DD3A80()
{
  v1 = sub_1C1E52BBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  v5 = (v3 + 200) & ~v3;
  sub_1C1DDEC6C(*(v0 + 72), *(v0 + 80));
  sub_1C1DDEC6C(*(v0 + 88), *(v0 + 96));

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1C1DD3B94()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD3BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D298, &qword_1C1E58808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DD3C54()
{
  v1 = type metadata accessor for Function(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  if (*(v0 + v3 + 80))
  {
  }

  v6 = *(v1 + 48);
  v7 = sub_1C1E51F9C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  v8 = *(v1 + 56);
  v9 = sub_1C1E51F5C();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1DD3E64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD3E9C@<X0>(uint64_t a1@<X0>, void (**a2)(double *a1@<X0>, double *a2@<X8>)@<X8>)
{
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1C1E13410;
  a2[1] = v5;
}

uint64_t sub_1C1DD3F14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1E51F9C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1C1E51F5C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C1DD4038(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C1E51F9C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1C1E51F5C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1C1DD41B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_1C1E15710(v2);
}

uint64_t sub_1C1DD4AC0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C1E36158();
}

void sub_1C1DD4AFC(uint64_t *a1)
{
  v1 = *a1;

  sub_1C1E2E5C8(&v1);
}

double sub_1C1DD4B38@<D0>(_OWORD *a1@<X8>)
{
  sub_1C1E2F104(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_1C1DD4B78@<D0>(uint64_t a1@<X8>)
{
  sub_1C1E2FD38(v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1C1DD4C34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD4C6C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1DD4CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E5226C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C1DD4D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E5226C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C1DD4D90()
{
  v1 = *(type metadata accessor for TypesetCanvasView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1C1E5226C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1DD4E60()
{
  sub_1C1E3A2E0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1C1DD4EBC(void *a2@<X8>)
{
  sub_1C1E5283C();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_1C1DD4EE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBF1DA18, &unk_1C1E5A508);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 68);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C1DD5024(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBF1DA18, &unk_1C1E5A508);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C1DD5160(uint64_t *a1)
{
  sub_1C1E52E1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D878, &unk_1C1E5A320);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  swift_getOpaqueTypeMetadata2();
  sub_1C1E0F2FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D880, &qword_1C1E5A340);
  sub_1C1E5299C();
  sub_1C1E549CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D888, &qword_1C1E5A348);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D890, &qword_1C1E5A350);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D898, &qword_1C1E5A358);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A8, &qword_1C1E5A368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B0, &qword_1C1E5A370);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B8, &qword_1C1E5A378);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C0, &qword_1C1E5A380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C8, &qword_1C1E5A388);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D8, &qword_1C1E5A398);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E0, &qword_1C1E5A3A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E8, &qword_1C1E5A3A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F0, &unk_1C1E5A3B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F8, &qword_1C1E5A3C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D900, &qword_1C1E5A3C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D908, &unk_1C1E5A3D0);
  sub_1C1DC1124(&qword_1EBF1D910, &qword_1EBF1D900, &qword_1C1E5A3C8, MEMORY[0x1E695B218]);
  sub_1C1DC1124(&qword_1EBF1D918, &qword_1EBF1D908, &unk_1C1E5A3D0, MEMORY[0x1E695B440]);
  swift_getOpaqueTypeConformance2();
  sub_1C1E0FB50();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1C1E3C4FC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C1E3C5E4(OpaqueTypeConformance2, v2, v3);
  v4 = swift_getOpaqueTypeConformance2();
  sub_1C1E3C638(v4, v5, v6);
  v7 = swift_getOpaqueTypeConformance2();
  sub_1C1E3C68C(v7, v8, v9);
  v10 = swift_getOpaqueTypeConformance2();
  sub_1C1E3C6E0(v10, v11, v12);
  swift_getOpaqueTypeConformance2();
  sub_1C1E3C734();
  swift_getOpaqueTypeConformance2();
  sub_1C1E4D288(&qword_1EBF1D9A0, &qword_1EBF1D890, &qword_1C1E5A350, sub_1C1E3CAA8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340, MEMORY[0x1E69802E0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v13 = swift_getOpaqueTypeConformance2();
  sub_1C1E3CC44(v13, v14, v15);
  swift_getOpaqueTypeMetadata2();
  sub_1C1E52F2C();
  sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9F0, &qword_1C1E5A428);
  swift_getOpaqueTypeConformance2();
  sub_1C1E4D7A4(&qword_1EBF1C690, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  sub_1C1DC1124(&qword_1EBF1D9F8, &qword_1EBF1D9F0, &qword_1C1E5A428, MEMORY[0x1E6981F48]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C248, &unk_1C1E5A430);
  sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  swift_getTupleTypeMetadata2();
  sub_1C1E5397C();
  swift_getWitnessTable();
  sub_1C1E5378C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC60, &qword_1C1E5A440);
  sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DA00, &qword_1C1E5A448);
  sub_1C1E5299C();
  sub_1C1E4D7A4(qword_1EBF1D2E0, MEMORY[0x1E697C998], MEMORY[0x1E697C990]);
  sub_1C1E5280C();
  swift_getWitnessTable();
  sub_1C1DC1124(&qword_1EBF1CC58, &qword_1EBF1CC60, &qword_1C1E5A440, MEMORY[0x1E6980468]);
  swift_getWitnessTable();
  sub_1C1DC1124(&qword_1EBF1DA10, &qword_1EBF1DA00, &qword_1C1E5A448, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C1DD5BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1E526EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1DD5C58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1E526EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1DD5D4C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C690E6D0]();
  *a1 = result;
  return result;
}

uint64_t sub_1C1DD5DB0()
{
  v1 = type metadata accessor for Function(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  if (*(v0 + v3 + 80))
  {
  }

  v6 = *(v1 + 48);
  v7 = sub_1C1E51F9C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  v8 = *(v1 + 56);
  v9 = sub_1C1E51F5C();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1DD5F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GraphView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 32) & ~v6;
  v24 = *(*(v5 - 1) + 64);
  v8 = sub_1C1E522DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v25 = *(v9 + 64);
  v11 = v4 + v7;

  if (*(v4 + v7 + 8))
  {
  }

  v12 = v5[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1C1E526EC();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  sub_1C1DDEC6C(*(v11 + v5[11]), *(v11 + v5[11] + 8));
  sub_1C1DDEC6C(*(v11 + v5[12]), *(v11 + v5[12] + 8));

  v14 = v11 + v5[17];
  v15 = type metadata accessor for Function(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v23 = v8;

    if (*(v14 + 80))
    {
    }

    v16 = *(v15 + 48);
    v17 = sub_1C1E51F9C();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);

    v18 = *(v15 + 56);
    v19 = sub_1C1E51F5C();
    (*(*(v19 - 8) + 8))(v14 + v18, v19);
    v8 = v23;
  }

  v20 = v6 | v10;
  v21 = (v7 + v24 + v10) & ~v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);

  (*(v9 + 8))(v4 + v21, v8);

  return MEMORY[0x1EEE6BDD0](v4, v21 + v25, v20 | 7);
}

uint64_t sub_1C1DD634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GraphView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 32) & ~v6;
  v24 = *(*(v5 - 1) + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D368, &qword_1C1E5AA30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v25 = *(v9 + 64);
  v11 = v4 + v7;

  if (*(v4 + v7 + 8))
  {
  }

  v12 = v5[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1C1E526EC();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  sub_1C1DDEC6C(*(v11 + v5[11]), *(v11 + v5[11] + 8));
  sub_1C1DDEC6C(*(v11 + v5[12]), *(v11 + v5[12] + 8));

  v14 = v11 + v5[17];
  v15 = type metadata accessor for Function(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v23 = v8;

    if (*(v14 + 80))
    {
    }

    v16 = *(v15 + 48);
    v17 = sub_1C1E51F9C();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);

    v18 = *(v15 + 56);
    v19 = sub_1C1E51F5C();
    (*(*(v19 - 8) + 8))(v14 + v18, v19);
    v8 = v23;
  }

  v20 = v6 | v10;
  v21 = (v7 + v24 + v10) & ~v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);

  (*(v9 + 8))(v4 + v21, v8);

  return MEMORY[0x1EEE6BDD0](v4, v21 + v25, v20 | 7);
}

uint64_t sub_1C1DD6750()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1DD6788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC48, &qword_1C1E5A758);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DD6858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E52ADC();
  *a1 = result;
  return result;
}

uint64_t sub_1C1DD6A34(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1DD6A48()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

uint64_t sub_1C1DD6A90(uint64_t a1)
{
  v2 = *v1;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v2);
  return sub_1C1E54DAC();
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

uint64_t sub_1C1DD6B64(void *a1)
{
  v3 = type metadata accessor for CalculateExpressionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C2D8, &qword_1C1E56200);
  sub_1C1E536EC();
  v4 = *v1;
  v5 = [a1 key];
  v6 = &property descriptor for CalculateGraph.xAxisBounds;
  if (!v5)
  {

    goto LABEL_17;
  }

  v7 = v5;
  v24 = v3;
  v8 = [v5 characters];
  v9 = sub_1C1E545FC();
  v11 = v10;

  v12 = [v7 modifierFlags];
  v6 = &property descriptor for CalculateGraph.xAxisBounds;
  if ((v12 & 0x20000) != 0)
  {
    if ((v12 & 0x40000) != 0)
    {
      v13 = 3;
      if ((v12 & 0x100000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = 1;
      if ((v12 & 0x100000) == 0)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  if ((v12 & 0x40000) == 0)
  {
    v13 = 0;
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v13 |= 4uLL;
    goto LABEL_10;
  }

  v13 = 2;
  if ((v12 & 0x100000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v12 & 0x80000) != 0)
  {
    v13 |= 8uLL;
  }

  v14 = sub_1C1E1083C(v4, v9, v11, v13);

  if (!v14)
  {
LABEL_17:
    sub_1C1E536EC();

    v16 = [a1 key];
    if (!v16)
    {
      return v16 & 1;
    }

    v17 = v16;
    v18 = [v16 v6[51]];

    v19 = sub_1C1E545FC();
    v21 = v20;

    if (v19 == 114 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v19 == 82 && v21 == 0xE100000000000000)
    {
    }

    else
    {
      v23 = sub_1C1E54D2C();

      if ((v23 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    LOBYTE(v16) = sub_1C1DD7078();
    return v16 & 1;
  }

  if ((sub_1C1E53D8C() & 1) == 0)
  {

LABEL_26:
    LOBYTE(v16) = 0;
    return v16 & 1;
  }

  v15 = *(v1 + *(v24 + 44));
  if (v15)
  {
    v15(v14);
  }

  LOBYTE(v16) = 1;
  return v16 & 1;
}

void sub_1C1DD6E18(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    CalculateExpression.copyToClipboard(overridePlaintext:)(0);
    return;
  }

  v6 = *a3;
  if (sub_1C1E53D2C() == 1)
  {
    v7 = sub_1C1E0030C(a1, a2, v6);
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = sub_1C1E00B14(a1, a2);
    if (!v7)
    {
      return;
    }
  }

  v8 = *(a3 + *(type metadata accessor for CalculateExpressionView(0) + 44));
  if (v8)
  {
    v8(v7);
  }
}

uint64_t CalculateExpressionView.init(expression:isEditable:fontSize:minFontSizeRatio:textAlignment:textColor:truncationMode:operationCallback:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = type metadata accessor for CalculateExpressionView(0);
  v19 = (a9 + v18[12]);
  type metadata accessor for PlatformKeyboardHandler();
  swift_allocObject();
  sub_1C1DC148C();
  sub_1C1E536DC();
  *v19 = v27;
  v19[1] = v28;
  v20 = a9 + v18[13];
  sub_1C1E536DC();
  v21 = a3;
  if (a4)
  {
    v21 = 20.0;
  }

  v22 = a5;
  if (a6)
  {
    v22 = 0.766666667;
  }

  *v20 = v27;
  *(v20 + 8) = v28;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v21;
  *(a9 + 24) = v22;
  *(a9 + 40) = a7;
  sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);
  *(a9 + 32) = sub_1C1E5499C();
  result = sub_1C1DC18D0(a10, a9 + v18[10], &qword_1EBF1C190, &qword_1C1E55C68);
  v24 = (a9 + v18[11]);
  *v24 = a11;
  v24[1] = a12;
  return result;
}

BOOL sub_1C1DD7078()
{
  v0 = sub_1C1E53CBC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = sub_1C1E53D2C();
  if (v13 == 1)
  {
    sub_1C1E53CCC();
    if (sub_1C1E53D5C())
    {
      sub_1C1E53CCC();

      (*(v1 + 8))(v12, v0);
      (*(v1 + 32))(v12, v6, v0);
    }

    v20 = *(v1 + 16);
    v20(v3, v12, v0);
    v14 = (*(v1 + 88))(v3, v0);
    v15 = *MEMORY[0x1E6992100];
    if (v14 == *MEMORY[0x1E69920F8])
    {
      (*(v1 + 104))(v9, v15, v0);
    }

    else if (v14 == v15)
    {
      (*(v1 + 104))(v9, *MEMORY[0x1E6992108], v0);
    }

    else
    {
      v16 = *(v1 + 104);
      if (v14 == *MEMORY[0x1E6992108])
      {
        (v16)(v9, *MEMORY[0x1E69920F8], v0);
      }

      else
      {
        v16(v9);
        (*(v1 + 8))(v3, v0);
      }
    }

    if (sub_1C1E53D5C())
    {
      v20(v6, v9, v0);
      sub_1C1E53CDC();
    }

    else
    {
      v20(v6, v9, v0);
      sub_1C1E53CDC();
    }

    v17 = *(v1 + 8);
    v17(v9, v0);
    v17(v12, v0);
  }

  return v13 == 1;
}

uint64_t sub_1C1DD73C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 != 4)
  {
    MEMORY[0x1C690EC40](a5, a2, a3);
  }

  return sub_1C1E5331C();
}

uint64_t sub_1C1DD7490(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1C690DCF0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C1DD74E4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1C690DD00](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_1C1DD75DC(uint64_t a1, id *a2)
{
  v3 = sub_1C1E545EC();
  *a2 = 0;
  return v3 & 1;
}

void sub_1C1DD765C(uint64_t *a2@<X8>)
{
  sub_1C1E545FC();
  v3 = sub_1C1E545BC();

  *a2 = v3;
}

uint64_t sub_1C1DD76A0()
{
  v0 = sub_1C1E545FC();
  v1 = MEMORY[0x1C6910330](v0);

  return v1;
}

double sub_1C1DD76DC(uint64_t a1)
{
  sub_1C1E545FC();
  sub_1C1E5468C();

  return result;
}

uint64_t sub_1C1DD7730(uint64_t a1)
{
  sub_1C1E545FC();
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v1 = sub_1C1E54DAC();

  return v1;
}

uint64_t sub_1C1DD77A4(void *a1, uint64_t *a2)
{
  v2 = sub_1C1E545FC();
  v4 = v3;
  if (v2 == sub_1C1E545FC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C1E54D2C();
  }

  return v7 & 1;
}

uint64_t sub_1C1DD782C(uint64_t a1)
{
  sub_1C1DC8008(&qword_1EBF1C1F0, type metadata accessor for CalculateKey, &unk_1C1E5600C);
  sub_1C1DC8008(&qword_1EBF1C1F8, type metadata accessor for CalculateKey, &unk_1C1E55FAC);

  return sub_1C1E54C4C();
}

void *sub_1C1DD78E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_1C1DD78F8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1C1DD7904(uint64_t a1)
{
  sub_1C1DC8008(&qword_1EBF1C348, type metadata accessor for Weight, &unk_1C1E564D0);
  v1 = sub_1C1DC8008(&qword_1EBF1C350, type metadata accessor for Weight, &unk_1C1E56470);
  sub_1C1DD8590(v1, v2, v3);
  return sub_1C1E54C4C();
}

uint64_t sub_1C1DD79CC(uint64_t a1)
{
  sub_1C1DC8008(&qword_1EDE737E0, type metadata accessor for Key, &unk_1C1E566B8);
  sub_1C1DC8008(&unk_1EBF1C360, type metadata accessor for Key, &unk_1C1E56350);

  return sub_1C1E54C4C();
}

void sub_1C1DD7A88(uint64_t *a2@<X8>)
{
  v3 = sub_1C1E545BC();

  *a2 = v3;
}

uint64_t sub_1C1DD7AD0(uint64_t a1)
{
  sub_1C1DC8008(&qword_1EBF1C338, type metadata accessor for AttributeName, &unk_1C1E56674);
  sub_1C1DC8008(&qword_1EBF1C340, type metadata accessor for AttributeName, &unk_1C1E565C8);

  return sub_1C1E54C4C();
}

uint64_t sub_1C1DD7B94()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1C6910970](*&v1);
}

uint64_t sub_1C1DD7BD0(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1EEE6B628](a1, *&v2);
}

uint64_t sub_1C1DD7C20(uint64_t a1)
{
  v2 = sub_1C1E530EC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C1E52A7C();
}

uint64_t sub_1C1DD7CE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52A9C();
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C1DD7D70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1DD7DC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C1DD7E14(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C1DD7E2C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1C1DD7E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1C1D0;
  if (!qword_1EBF1C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C1D0);
  }

  return result;
}

uint64_t sub_1C1DD7FAC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C1E52B4C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_1C1DD8078(uint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for CalculateExpressionView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1C1DD6E18(a1, a2, v6);
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for CalculateExpressionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 40);
  v7 = sub_1C1E530EC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + *(v1 + 44)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_1C1DD8590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1C358;
  if (!qword_1EBF1C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C358);
  }

  return result;
}

id sub_1C1DD86C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MagnifyRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_1C1DD8730(uint64_t a1, int a2)
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

uint64_t sub_1C1DD8778(uint64_t result, int a2, int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for MagnifyState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MagnifyState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MagnifyState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1DD88A8(uint64_t a1)
{
  if (*(a1 + 24) <= 1u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C1DD88C0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1C1DD88EC(void *a1)
{
  v3 = sub_1C1E52CFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1E5350C();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C3E8, &qword_1C1E567F0);
    sub_1C1E52FAC();
    sub_1C1E52D9C();
    sub_1C1E534FC();
    v13 = v12;
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v11, v7);
    sub_1C1E52F9C();
    v16 = v30;
    v17 = (v30 + OBJC_IVAR____TtCV11CalculateUI20MagnifyRepresentable11Coordinator_initialLocation);
    *v17 = v13;
    v17[1] = v15;

    v18 = v1[1];
    v30 = *v1;
    v31[0] = v18;
    *(v31 + 9) = *(v1 + 25);
    v27 = v13;
    v28 = v15;
    v29 = 0;
  }

  else
  {
    if ([a1 state] == 2)
    {
      [a1 scale];
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C3E8, &qword_1C1E567F0);
      sub_1C1E52F9C();
      v25 = *&v26[OBJC_IVAR____TtCV11CalculateUI20MagnifyRepresentable11Coordinator_initialLocation];

      v21 = v1[1];
      v30 = *v1;
      v31[0] = v21;
      *(v31 + 9) = *(v1 + 25);
      v27 = v20;
      v28 = v25;
      v22 = 1;
    }

    else
    {
      v23 = v1[1];
      v30 = *v1;
      v31[0] = v23;
      *(v31 + 9) = *(v1 + 25);
      v27 = 0;
      v28 = 0uLL;
      v22 = 2;
    }

    v29 = v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C3E0, &qword_1C1E567E8);
  return sub_1C1E537AC();
}

id sub_1C1DD8BD8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for MagnifyRepresentable.Coordinator()) init];
  *a1 = result;
  return result;
}

BOOL sub_1C1DD8C40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    if (!a8)
    {
      return *&a2 == *&a6 && *&a1 == *&a5;
    }

    return 0;
  }

  if (a4 != 1)
  {
    return a8 == 2 && !(a6 | a5 | a7);
  }

  if (a8 != 1)
  {
    return 0;
  }

  v8 = *&a2 == *&a6;
  if (*&a3 != *&a7)
  {
    v8 = 0;
  }

  return *&a1 == *&a5 && v8;
}

uint64_t sub_1C1DD8CE4(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C1E545FC();
  v5 = v4;

  if (v3 == 0xD000000000000021 && 0x80000001C1E5AF70 == v5)
  {
  }

  else
  {
    v7 = sub_1C1E54D2C();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1C1DD8D94()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCD80]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C3E8, &qword_1C1E567F0);
  sub_1C1E52F9C();
  [v0 setDelegate_];

  v1 = sub_1C1E545BC();
  [v0 setName_];

  return v0;
}

double sub_1C1DD8E80@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  sub_1C1E538DC();
  sub_1C1E5281C();
  result = v4 * v4 * -0.65 + 1.0;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 48) = result;
  return result;
}

unint64_t sub_1C1DD8F28()
{
  result = qword_1EBF1C450;
  if (!qword_1EBF1C450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C458, &qword_1C1E56870);
    sub_1C1DD8FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C450);
  }

  return result;
}

unint64_t sub_1C1DD8FB4()
{
  result = qword_1EBF1C460;
  if (!qword_1EBF1C460)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C468, &qword_1C1E56878);
    sub_1C1DD9040(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C460);
  }

  return result;
}

unint64_t sub_1C1DD9040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1C470;
  if (!qword_1EBF1C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C470);
  }

  return result;
}

uint64_t sub_1C1DD9094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C1DD90DC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_1C1DD914C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
  v1 = sub_1C1E545BC();
  [v0 setName_];

  return v0;
}

uint64_t sub_1C1DD91C8()
{
  v1 = sub_1C1E52CFC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1E5350C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C478, &qword_1C1E56950);
  sub_1C1E52FAC();
  sub_1C1E52D9C();
  sub_1C1E534FC();
  v14 = v13;
  v16 = v15;
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v18[2] = v9;
  v18[3] = v10;
  v18[4] = v11;
  v18[5] = v12;
  v18[0] = v14;
  v18[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C480, &qword_1C1E56958);
  return sub_1C1E537AC();
}

uint64_t sub_1C1DD93DC(double a1)
{
  v3 = sub_1C1DD954C();
  v4 = *(v1 + 160) + -1.0;
  sub_1C1DD95D0();
  v6 = v5;
  v9.n128_f64[0] = sub_1C1DD9614();
  v7 = *(v1 + 160);
  v9.n128_f64[0] = *(v1 + 168) + (-(v6 * v9.n128_f64[0]) - v3 * v4) * a1;
  *(v1 + 176) = 0;
  v8 = v7 + v9.n128_f64[0] * a1;
  *(v1 + 160) = v8;
  *(v1 + 168) = v9.n128_u64[0];
  v9.n128_u64[0] = 1.0;
  if (v8 <= 1.0)
  {
    v9.n128_f64[0] = v8;
  }

  return (*(v1 + 48))(v9);
}

double sub_1C1DD951C()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = 0x3FECCCCCCCCCCCCDLL;
  *(v0 + 104) = 0;
  return 0.9;
}

double sub_1C1DD954C()
{
  if ((*(v0 + 120) & 1) == 0)
  {
    return *(v0 + 112);
  }

  v1 = sub_1C1DD951C();
  result = 53.4831924 / (v1 * v1 * 0.25);
  *(v0 + 112) = result;
  *(v0 + 120) = 0;
  return result;
}

double sub_1C1DD9598()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 128);
  }

  result = sqrt(sub_1C1DD954C());
  *(v0 + 128) = result;
  *(v0 + 136) = 0;
  return result;
}

void sub_1C1DD95D0()
{
  if (*(v0 + 152))
  {
    v1 = sub_1C1DD9598();
    *(v0 + 144) = (v1 + v1) * sub_1C1DD951C();
    *(v0 + 152) = 0;
  }
}

double sub_1C1DD9614()
{
  if ((*(v0 + 176) & 1) == 0)
  {
    return *(v0 + 168);
  }

  *(v0 + 168) = 0x4018000000000000;
  *(v0 + 176) = 0;
  return 6.0;
}

uint64_t sub_1C1DD9638()
{

  sub_1C1DD0EB8(*(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1C1DD96A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v62 = a3;
  v4 = sub_1C1E52DCC();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C540, &qword_1C1E56B60);
  MEMORY[0x1EEE9AC00](v56);
  v61 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v48 - v10;
  v11 = sub_1C1E52B7C();
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1E529CC();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C548, &qword_1C1E56B68);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v52 = &v48 - v24;
  type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  v25 = v63;
  sub_1C1E527BC();
  v26 = v63;
  v27 = *(v15 + 28);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_1C1E52C8C();
  (*(*(v29 - 8) + 104))(&v17[v27], v28, v29);
  *v17 = v25;
  *(v17 + 1) = v26;
  v30 = *a1;
  v31 = *(a1 + 8);
  v49 = v13;
  v50 = v11;
  if (v31 == 1)
  {
    v32 = v51;
    if ((v30 & 1) == 0)
    {
LABEL_3:
      sub_1C1E5367C();
      v33 = sub_1C1E5366C();
      goto LABEL_6;
    }
  }

  else
  {

    sub_1C1E5490C();
    v34 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v30, 0);
    v35 = v13;
    v32 = v51;
    (*(v51 + 8))(v35, v11);
    if ((v63 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_1C1E52DEC();
  sub_1C1E5367C();
  v33 = sub_1C1E5366C();
LABEL_6:

  sub_1C1DDEC78(v17, v22);
  *&v22[*(v18 + 52)] = v33;
  *&v22[*(v18 + 56)] = 256;
  v36 = v52;
  sub_1C1DC18D0(v22, v52, &qword_1EBF1C548, &qword_1C1E56B68);
  v37 = v57;
  sub_1C1E52DDC();
  if (!v31)
  {

    sub_1C1E5490C();
    v39 = sub_1C1E52FBC();
    sub_1C1E5227C();

    v40 = v49;
    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v30, 0);
    (*(v32 + 8))(v40, v50);
    if ((v63 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v38 = sub_1C1E5367C();
    goto LABEL_11;
  }

  if (v30)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_1C1E5367C();
  v38 = sub_1C1E5366C();

LABEL_11:
  v41 = v55;
  (*(v58 + 32))(v55, v37, v59);
  *(v41 + *(v56 + 36)) = v38;
  v42 = v60;
  sub_1C1DC18D0(v41, v60, &qword_1EBF1C540, &qword_1C1E56B60);
  v43 = v54;
  sub_1C1DC1424(v36, v54, &qword_1EBF1C548, &qword_1C1E56B68);
  v44 = v61;
  sub_1C1DC1424(v42, v61, &qword_1EBF1C540, &qword_1C1E56B60);
  v45 = v62;
  sub_1C1DC1424(v43, v62, &qword_1EBF1C548, &qword_1C1E56B68);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C550, &qword_1C1E56B70);
  sub_1C1DC1424(v44, v45 + *(v46 + 48), &qword_1EBF1C540, &qword_1C1E56B60);
  sub_1C1DC1870(v42, &qword_1EBF1C540, &qword_1C1E56B60);
  sub_1C1DC1870(v36, &qword_1EBF1C548, &qword_1C1E56B68);
  sub_1C1DC1870(v44, &qword_1EBF1C540, &qword_1C1E56B60);
  return sub_1C1DC1870(v43, &qword_1EBF1C548, &qword_1C1E56B68);
}

double sub_1C1DD9D40@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1C1E538DC();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C530, &qword_1C1E56B50);
  sub_1C1DD96A4(v2, a1, a2 + *(v6 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  sub_1C1E538DC();
  sub_1C1E5281C();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C538, &qword_1C1E56B58) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

void *sub_1C1DD9E20@<X0>(uint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v136 = a7;
  v135 = a6;
  v147 = a5;
  v144 = a8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C620, &qword_1C1E56D28);
  MEMORY[0x1EEE9AC00](v137);
  v9 = &v131 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C628, &qword_1C1E56D30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v143 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v131 - v13;
  v15 = type metadata accessor for CalculateScrubberView(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v142 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v151 = &v131 - v18;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C630, &qword_1C1E56D38);
  MEMORY[0x1EEE9AC00](v149);
  v131 = &v131 - v19;
  v20 = sub_1C1E51E2C();
  v139 = *(v20 - 8);
  v140 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C638, &qword_1C1E56D40);
  MEMORY[0x1EEE9AC00](v138);
  v24 = (&v131 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C640, &qword_1C1E56D48);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v141 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v150 = &v131 - v28;
  v29 = sub_1C1E545BC();
  v30 = sub_1C1E545BC();
  v152 = v29;
  v31 = [v29 rangeOfString_];
  v146 = v32;

  v33 = sub_1C1E545BC();
  v34 = sub_1C1E545BC();
  v148 = v33;
  v35 = [v33 rangeOfString_];
  v133 = v36;

  v37 = sub_1C1E51DEC();
  v145 = v14;
  v134 = v35;
  v132 = v22;
  if (v31 == v37 && v35 == sub_1C1E51DEC())
  {
    *&v159 = sub_1C1E545FC();
    *(&v159 + 1) = v38;
    sub_1C1DC733C(v159, v38, v39);
    v40 = sub_1C1E5316C();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_1C1E539BC();
    v48 = v47;
    v50 = v49;
    v51 = sub_1C1E5303C();
    sub_1C1E5264C();
    LOBYTE(v172[0]) = v44 & 1;
    LOBYTE(v171[0]) = 0;
    *&v164 = v40;
    *(&v164 + 1) = v42;
    LOBYTE(v165) = v44 & 1;
    *(&v165 + 1) = v46;
    *&v166 = v48;
    *(&v166 + 1) = v50;
    LOBYTE(v167) = v51;
    *(&v167 + 1) = v52;
    *v168 = v53;
    *&v168[8] = v54;
    *&v168[16] = v55;
    v168[24] = 0;
    v155 = v166;
    v156 = v167;
    *v157 = *v168;
    *&v157[9] = *&v168[9];
    v153 = v164;
    v154 = v165;
    v173 = 0;
    v158 = 0;
LABEL_6:
    sub_1C1DC1424(&v164, &v159, &qword_1EBF1C660, &qword_1C1E56D68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C660, &qword_1C1E56D68);
    sub_1C1DDEE18();
    sub_1C1E52CEC();
    v80 = v162;
    v24[2] = v161;
    v24[3] = v80;
    v24[4] = v163[0];
    *(v24 + 74) = *(v163 + 10);
    v81 = v160;
    *v24 = v159;
    v24[1] = v81;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C698, &qword_1C1E56D78);
    sub_1C1DDF088();
    sub_1C1DDEF84();
    v82 = v150;
    sub_1C1E52CEC();
    v83 = &v164;
    v84 = &qword_1EBF1C660;
    v85 = &qword_1C1E56D68;
LABEL_7:
    sub_1C1DC1870(v83, v84, v85);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C648, &qword_1C1E56D50);
    (*(*(v86 - 8) + 56))(v82, 0, 1, v86);
    goto LABEL_8;
  }

  if (v31 >= 1)
  {
    v56 = [v152 substringToIndex_];
    v57 = sub_1C1E545FC();
    v59 = v58;

    *&v159 = v57;
    *(&v159 + 1) = v59;
    v60 = sub_1C1E51E0C();
    sub_1C1DC733C(v60, v61, v62);
    v63 = sub_1C1E549FC();
    v65 = v64;
    (*(v139 + 8))(v22, v140);

    *&v159 = v63;
    *(&v159 + 1) = v65;
    v66 = sub_1C1E5316C();
    v68 = v67;
    LOBYTE(v59) = v69;
    v71 = v70;
    sub_1C1E539BC();
    v73 = v72;
    v75 = v74;
    LOBYTE(v65) = sub_1C1E5303C();
    sub_1C1E5264C();
    v173 = v59 & 1;
    v170 = 0;
    *&v164 = v66;
    *(&v164 + 1) = v68;
    LOBYTE(v165) = v59 & 1;
    *(&v165 + 1) = v172[0];
    DWORD1(v165) = *(v172 + 3);
    *(&v165 + 1) = v71;
    *&v166 = v73;
    *(&v166 + 1) = v75;
    LOBYTE(v167) = v65;
    DWORD1(v167) = *(v171 + 3);
    *(&v167 + 1) = v171[0];
    *(&v167 + 1) = v76;
    *v168 = v77;
    *&v168[8] = v78;
    *&v168[16] = v79;
    v168[24] = 0;
    v155 = v166;
    v156 = v167;
    *v157 = *v168;
    *&v157[9] = *&v168[9];
    v153 = v164;
    v154 = v165;
    v169 = 1;
    v158 = 1;
    goto LABEL_6;
  }

  if (v35 >= 1)
  {
    v159 = xmmword_1C1E56A00;
    LOBYTE(v160) = 0;
    *(&v160 + 1) = MEMORY[0x1E69E7CC0];
    v121 = v131;
    sub_1C1E533CC();
    sub_1C1DC1424(v121, v24, &qword_1EBF1C630, &qword_1C1E56D38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C698, &qword_1C1E56D78);
    sub_1C1DDF088();
    sub_1C1DDEF84();
    v82 = v150;
    sub_1C1E52CEC();
    v83 = v121;
    v84 = &qword_1EBF1C630;
    v85 = &qword_1C1E56D38;
    goto LABEL_7;
  }

  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C648, &qword_1C1E56D50);
  (*(*(v130 - 8) + 56))(v150, 1, 1, v130);
LABEL_8:
  LOBYTE(v159) = 1;

  result = CalculateScrubberView.init(scrubber:isCompact:style:)(v87, 1, &v159, v151);
  v89 = v31 + v146;
  if (__OFADD__(v31, v146))
  {
    __break(1u);
  }

  else
  {
    v90 = v152;
    result = [v152 length];
    if (v89 < result)
    {
      v91 = [v90 substringFromIndex_];
      v92 = sub_1C1E545FC();
      v94 = v93;

      *&v159 = v92;
      *(&v159 + 1) = v94;
      v95 = v132;
      v96 = sub_1C1E51E0C();
      sub_1C1DC733C(v96, v97, v98);
      v99 = sub_1C1E549FC();
      v101 = v100;
      (*(v139 + 8))(v95, v140);

      *&v159 = v99;
      *(&v159 + 1) = v101;
      v102 = sub_1C1E5316C();
      v104 = v103;
      LOBYTE(v95) = v105;
      v107 = v106;
      sub_1C1E539AC();
      v109 = v108;
      v111 = v110;
      v112 = sub_1C1E5304C();
      sub_1C1E5264C();
      LOBYTE(v159) = v95 & 1;
      LOBYTE(v153) = 0;
      *v9 = v102;
      *(v9 + 1) = v104;
      v9[16] = v95 & 1;
      *(v9 + 3) = v107;
      *(v9 + 4) = v109;
      *(v9 + 5) = v111;
      v9[48] = v112;
      *(v9 + 7) = v113;
      *(v9 + 8) = v114;
      *(v9 + 9) = v115;
      *(v9 + 10) = v116;
      v9[88] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C660, &qword_1C1E56D68);
      sub_1C1DDEE18();
      sub_1C1DDEF84();
      v117 = v145;
      sub_1C1E52CEC();
      goto LABEL_14;
    }

    v117 = v145;
    if (!__OFADD__(v134, v133))
    {
      v118 = v134 + v133;
      if (v118 >= [v148 length])
      {
        v120 = 1;
        goto LABEL_18;
      }

      v159 = xmmword_1C1E56A00;
      LOBYTE(v160) = 0;
      *(&v160 + 1) = MEMORY[0x1E69E7CC0];
      v119 = v131;
      sub_1C1E533CC();
      sub_1C1DC1424(v119, v9, &qword_1EBF1C630, &qword_1C1E56D38);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C660, &qword_1C1E56D68);
      sub_1C1DDEE18();
      sub_1C1DDEF84();
      sub_1C1E52CEC();
      sub_1C1DC1870(v119, &qword_1EBF1C630, &qword_1C1E56D38);
LABEL_14:
      v120 = 0;
LABEL_18:
      v122 = v144;
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C650, &qword_1C1E56D58);
      (*(*(v123 - 8) + 56))(v117, v120, 1, v123);
      v124 = v150;
      v125 = v141;
      sub_1C1DC1424(v150, v141, &qword_1EBF1C640, &qword_1C1E56D48);
      v126 = v151;
      v127 = v142;
      sub_1C1DDED54(v151, v142);
      v128 = v143;
      sub_1C1DC1424(v117, v143, &qword_1EBF1C628, &qword_1C1E56D30);
      sub_1C1DC1424(v125, v122, &qword_1EBF1C640, &qword_1C1E56D48);
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C658, &qword_1C1E56D60);
      sub_1C1DDED54(v127, v122 + *(v129 + 48));
      sub_1C1DC1424(v128, v122 + *(v129 + 64), &qword_1EBF1C628, &qword_1C1E56D30);

      sub_1C1DC1870(v117, &qword_1EBF1C628, &qword_1C1E56D30);
      sub_1C1DDEDB8(v126, type metadata accessor for CalculateScrubberView);
      sub_1C1DC1870(v124, &qword_1EBF1C640, &qword_1C1E56D48);
      sub_1C1DC1870(v128, &qword_1EBF1C628, &qword_1C1E56D30);
      sub_1C1DDEDB8(v127, type metadata accessor for CalculateScrubberView);
      return sub_1C1DC1870(v125, &qword_1EBF1C640, &qword_1C1E56D48);
    }
  }

  __break(1u);
  return result;
}

void sub_1C1DDAA80(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDE75DC0;
  sub_1C1E51E8C(0x25206D6F72662058, 0xE900000000000040, 0, 0, qword_1EDE75DC0, 0, 0xE000000000000000, 0xD00000000000011ALL, 0x80000001C1E5B7B0);
  sub_1C1E51E8C(0x4025206F742058, 0xE700000000000000, 0, 0, v4, 0, 0xE000000000000000, 0xD000000000000114, 0x80000001C1E5B690);
  sub_1C1E00C70();
  v5 = *(a1 + 24);
  if (v5)
  {

    sub_1C1DD9E20(v5, 0, 1, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C1DDAC14(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDE75DC0;
  sub_1C1E51E8C(0x4025206F742058, 0xE700000000000000, 0, 0, qword_1EDE75DC0, 0, 0xE000000000000000, 0xD000000000000114, 0x80000001C1E5B690);
  sub_1C1E51E8C(0x25206D6F72662058, 0xE900000000000040, 0, 0, v6, 0, 0xE000000000000000, 0xD00000000000011ALL, 0x80000001C1E5B7B0);
  sub_1C1E00C70();
  v7 = *(a1 + 32);
  if (v7)
  {

    sub_1C1DD9E20(v7, 0, a2 & 1, a3);
  }

  else
  {
    __break(1u);
  }
}