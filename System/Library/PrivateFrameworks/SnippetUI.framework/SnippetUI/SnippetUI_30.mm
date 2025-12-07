void sub_26A791428(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void, char *, void, char *), uint64_t a6)
{
  v88 = a6;
  v89 = a5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0, &unk_26A85C520);
  MEMORY[0x28223BE20](v91);
  MEMORY[0x28223BE20](v10);
  v12 = &v79 - v11;
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](&v79 - v14);
  v18 = &v79 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_65;
  }

  v23 = a2;
  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_66;
  }

  v26 = v21 / v20;
  v95 = a1;
  v94 = a4;
  v27 = a4;
  v28 = v24 / v20;
  if (v21 / v20 >= v24 / v20)
  {
    v82 = v12;
    v83 = v16;
    v44 = v23;
    sub_26A7A38A0(v23, v24 / v20, v27);
    v45 = a1;
    v46 = v44;
    v84 = v27;
    v47 = v27 + v28 * v20;
    v48 = -v20;
    v49 = &qword_2803ACCF0;
    v50 = &unk_26A85C520;
    v51 = v47;
    v81 = v48;
LABEL_38:
    v52 = v46 + v48;
    v53 = a3;
    v79 = v51;
    v90 = v46;
    v85 = v46 + v48;
    while (1)
    {
      if (v47 <= v84)
      {
        v95 = v46;
        v93 = v51;
        goto LABEL_62;
      }

      if (v46 <= v45)
      {
        v95 = v46;
        v93 = v79;
        goto LABEL_62;
      }

      v80 = v51;
      v54 = v45;
      v86 = (v47 + v48);
      v87 = v47;
      v55 = v82;
      v56 = v48;
      sub_26A505CD4(v47 + v48, v82, v49, v50);
      v57 = v83;
      sub_26A505CD4(v52, v83, v49, v50);
      v58 = v92;
      v59 = v50;
      v60 = v49;
      v61 = v89(*v55, &v55[*(v91 + 48)], *v57, &v57[*(v91 + 48)]);
      if (v58)
      {
        break;
      }

      v62 = v61;
      v92 = 0;
      v63 = v54;
      v64 = v53 + v56;
      sub_26A4DBD10(v57, v60, v59);
      v65 = v55;
      v66 = v60;
      sub_26A4DBD10(v65, v60, v59);
      v50 = v59;
      if (v62)
      {
        v73 = v53 < v90 || v64 >= v90;
        a3 = v53 + v56;
        if (v73)
        {
          v74 = v85;
          swift_arrayInitWithTakeFrontToBack();
          v46 = v74;
          v51 = v80;
          v48 = v81;
          v45 = v63;
          v49 = v66;
          v50 = v59;
          v47 = v87;
        }

        else
        {
          v75 = v80;
          v48 = v81;
          v51 = v80;
          v76 = v85;
          v46 = v85;
          v45 = v63;
          v49 = v66;
          v50 = v59;
          v47 = v87;
          if (v53 != v90)
          {
            v77 = v45;
            v78 = v81;
            swift_arrayInitWithTakeBackToFront();
            v48 = v78;
            v45 = v77;
            v46 = v76;
            v51 = v75;
          }
        }

        goto LABEL_38;
      }

      v67 = v53 < v87 || v64 >= v87;
      v68 = v53 + v56;
      if (v67)
      {
        v69 = v86;
        swift_arrayInitWithTakeFrontToBack();
        v53 += v56;
        v47 = v69;
        v51 = v69;
        v46 = v90;
        v45 = v63;
        v48 = v81;
        v49 = v66;
        v52 = v85;
      }

      else
      {
        v52 = v85;
        v70 = v86;
        v51 = v86;
        v22 = v87 == v53;
        v53 += v56;
        v47 = v86;
        v46 = v90;
        v45 = v63;
        v48 = v81;
        v49 = v66;
        if (!v22)
        {
          v71 = v45;
          v72 = v81;
          swift_arrayInitWithTakeBackToFront();
          v48 = v72;
          v45 = v71;
          v46 = v90;
          v53 = v68;
          v47 = v70;
          v51 = v70;
        }
      }
    }

    sub_26A4DBD10(v57, &qword_2803ACCF0, &unk_26A85C520);
    sub_26A4DBD10(v55, &qword_2803ACCF0, &unk_26A85C520);
    v95 = v90;
    v93 = v80;
  }

  else
  {
    v86 = v15;
    v29 = v23;
    sub_26A7A38A0(a1, v21 / v20, v27);
    v30 = a1;
    v31 = v29;
    v87 = v27 + v26 * v20;
    v93 = v87;
    v32 = v27;
    v85 = a3;
    while (v32 < v87 && v31 < a3)
    {
      v34 = v30;
      v90 = v31;
      sub_26A505CD4(v31, v18, &qword_2803ACCF0, &unk_26A85C520);
      v35 = v32;
      v36 = v86;
      sub_26A505CD4(v32, v86, &qword_2803ACCF0, &unk_26A85C520);
      v37 = v92;
      v38 = v89(*v18, &v18[*(v91 + 48)], *v36, &v36[*(v91 + 48)]);
      v92 = v37;
      if (v37)
      {
        sub_26A4DBD10(v36, &qword_2803ACCF0, &unk_26A85C520);
        sub_26A4DBD10(v18, &qword_2803ACCF0, &unk_26A85C520);
        break;
      }

      v39 = v38;
      sub_26A4DBD10(v36, &qword_2803ACCF0, &unk_26A85C520);
      sub_26A4DBD10(v18, &qword_2803ACCF0, &unk_26A85C520);
      if (v39)
      {
        v40 = v90 + v20;
        v41 = v34;
        if (v34 < v90 || v34 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          v41 = v34;
          v31 = v40;
          v32 = v35;
          a3 = v85;
        }

        else
        {
          a3 = v85;
          if (v34 != v90)
          {
            swift_arrayInitWithTakeBackToFront();
            v41 = v34;
          }

          v31 = v40;
          v32 = v35;
        }
      }

      else
      {
        v32 = v35 + v20;
        v41 = v34;
        if (v34 < v35 || v34 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          v41 = v34;
        }

        else if (v34 != v35)
        {
          swift_arrayInitWithTakeBackToFront();
          v41 = v34;
        }

        v94 = v35 + v20;
        v31 = v90;
        a3 = v85;
      }

      v30 = v41 + v20;
      v95 = v30;
    }
  }

LABEL_62:
  sub_26A544C84(&v95, &v94, &v93);
}

uint64_t sub_26A791A88(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v4 = type metadata accessor for ImageStyleAppearance(0);
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7708, &unk_26A8831A0);
  result = sub_26A852468();
  v11 = result;
  v12 = 0;
  v37 = a3;
  v15 = *(a3 + 64);
  v14 = a3 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v32 = result + 64;
  v33 = result;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
LABEL_10:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v37 + 48) + 8 * v23);
      v25 = *(v34 + 72) * v23;
      sub_26A648BE0(*(v37 + 56) + v25, v9);

      v26 = v39;
      (v35)(v9);
      v39 = v26;
      if (v26)
      {
        break;
      }

      sub_26A51DA28(v9);
      *(v32 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v27 = v33;
      *(*(v33 + 48) + 8 * v23) = v24;
      v11 = v27;
      result = sub_26A5EA2E4(v6, *(v27 + 56) + v25);
      v28 = *(v11 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_17;
      }

      *(v11 + 16) = v30;
      v18 = v38;
      if (!v38)
      {
        goto LABEL_5;
      }
    }

    v11 = v33;

    sub_26A51DA28(v9);
    return v11;
  }

  else
  {
LABEL_5:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v19)
      {
        return v11;
      }

      v22 = *(v14 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_95(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_84()
{
  v5 = *(v3 - 120);

  return sub_26A505CD4(v2, v5, v0, v1);
}

uint64_t OUTLINED_FUNCTION_5_74@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  *(v1 + 48) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_61()
{

  return sub_26A791A88(v0, v2, v1);
}

void OUTLINED_FUNCTION_9_57()
{
  *(v3 - 112) = v2;

  sub_26A790428((v3 - 112), v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_49(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_45(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_26(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_21_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v27 + 16) = v26;

  sub_26A817EA4(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t OUTLINED_FUNCTION_22_29()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_23_23()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_25_23()
{
  *v0 = v6;
  v0[1] = v7;
  v0[2] = v4;
  v0[3] = v1;
  v0[4] = v2;
  v0[5] = v3;

  return type metadata accessor for ImageStyleAppearance(0);
}

double OUTLINED_FUNCTION_27_16()
{

  return result;
}

__n128 OUTLINED_FUNCTION_28_13(__n128 *a1)
{
  result = v1[7];
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_29_18(uint64_t a1@<X8>)
{
  v2 = *a1;
  *(v1 + 32) = *a1;
  v3 = *(a1 + 8);
  *(v1 + 40) = v3;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);

  sub_26A621A9C(v1);
}

double OUTLINED_FUNCTION_33_14()
{

  return result;
}

void OUTLINED_FUNCTION_35_11(uint64_t a1, char a2)
{
  *(v2 + 56) = 3;
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

uint64_t OUTLINED_FUNCTION_36_9()
{
}

uint64_t OUTLINED_FUNCTION_41_11()
{

  return sub_26A791A88(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_42_10()
{

  return sub_26A8503E8();
}

uint64_t ReferenceStandardView.init(text1:addTint:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = type metadata accessor for ReferenceStandardView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  if (qword_2803A8CE0 != -1)
  {
    swift_once();
  }

  v8 = xmmword_2803D1FA8;
  v9 = qword_2803D1FB8;
  v10 = unk_2803D1FC0;
  v11 = qword_2803D1FC8;

  sub_26A6AEE74(v28);
  memcpy(v7, v28, 0xC0uLL);
  *(v7 + 192) = v11;
  *(v7 + 200) = v8;
  *(v7 + 216) = v9;
  *(v7 + 224) = v10;
  *(v7 + 232) = v11;
  v12 = v3[5];
  *(v7 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v13 = v7 + v3[6];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v3[7];
  *(v7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v15 = v3[8];
  if (qword_2803A8C60 != -1)
  {
    swift_once();
  }

  v16 = (v7 + v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE40, &qword_26A860220);
  v18 = __swift_project_value_buffer(v17, qword_2803D1E30);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48, &unk_26A867A90);
  v20 = v16 + *(v19 + 32);
  sub_26A4DBD68(v18, v20, &qword_2803ADE40, &qword_26A860220);
  sub_26A6AEE74(v27);
  memcpy(v16, v27, 0xBFuLL);
  sub_26A580C48(v20 + *(v17 + 36), v16 + *(v19 + 28));
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  *(v7 + v3[9]) = (*(v22 + 8))(v21, v22);
  *(v7 + v3[10]) = a2 & 1;
  sub_26A792450(v7, a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ReferenceStandardView(uint64_t a1)
{
  result = qword_2803B7730;
  if (!qword_2803B7730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A792450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceStandardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7924B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ReferenceStandardView(0);
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A79269C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ReferenceStandardView(0) + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A7927F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReferenceStandardView(0);
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ReferenceStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  sub_26A7924B4(&v18[-v9]);
  v20 = 0u;
  v21 = 0u;
  v22 = 1;
  sub_26A79269C();
  sub_26A7927F0(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v19 = v1;
  sub_26A4CEAD4();
  v11 = *(v1 + *(type metadata accessor for ReferenceStandardView(0) + 40));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7710, &qword_26A883240) + 36)) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_26A68CF04;
  *(v12 + 24) = 0;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7718, &unk_26A883248) + 36);
  *(v13 + 16) = swift_getKeyPath();
  *(v13 + 24) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v15 = *(v14 + 40);
  *(v13 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v16 = v13 + *(v14 + 44);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *v13 = sub_26A4D1F7C;
  *(v13 + 8) = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7720, &qword_26A883280);
  *(a1 + *(result + 36)) = 33;
  return result;
}

uint64_t sub_26A792C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FA78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_26A792CD8(a1, a2 + 24);
}

uint64_t sub_26A792CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReferenceStandardView(0) + 36));
  if (qword_2803A9038 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D2800, v8, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v7, __src, sizeof(v7));
  v8[11] = 0;
  v8[10] = sub_26A80A810;
  v6 = v3;
  sub_26A4DBD68(&v6, v5, &qword_2803A99A0, &unk_26A856800);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_26A4DBD68(v5, a2 + 16, &qword_2803A99A0, &unk_26A856800);
  *(a2 + 312) = 0;
  *(a2 + 320) = 1;

  sub_26A4DBD10(&v6, &qword_2803A99A0, &unk_26A856800);
  return sub_26A4DBD10(v5, &qword_2803A99A0, &unk_26A856800);
}

uint64_t sub_26A792E24(uint64_t a1)
{
  result = sub_26A793950(&qword_2803B7728, MEMORY[0x277D632E0], MEMORY[0x277D632D8]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A792EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A793018(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_26A4D27F4(319);
    if (v5 <= 0x3F)
    {
      sub_26A580EB4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
      if (v6 <= 0x3F)
      {
        sub_26A580EB4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v7 <= 0x3F)
        {
          sub_26A580EB4(319, &qword_2803ADE78, type metadata accessor for ReferenceConstants, type metadata accessor for EnvironmentConstant);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A793018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_2803AD138)
  {
    v4 = type metadata accessor for EnvironmentConstant(0, MEMORY[0x277D85048], a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_2803AD138);
    }
  }
}

unint64_t sub_26A793068()
{
  result = qword_2803B7740;
  if (!qword_2803B7740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7720, &qword_26A883280);
    sub_26A7930F4();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7740);
  }

  return result;
}

unint64_t sub_26A7930F4()
{
  result = qword_2803B7748;
  if (!qword_2803B7748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7718, &unk_26A883248);
    sub_26A7931AC();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7748);
  }

  return result;
}

unint64_t sub_26A7931AC()
{
  result = qword_2803B7750;
  if (!qword_2803B7750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7710, &qword_26A883240);
    sub_26A4DBCC8(&qword_2803B7758, &qword_2803A97D0, &qword_26A8557B0, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A5D1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7750);
  }

  return result;
}

uint64_t sub_26A793264()
{
  v51 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v49 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v48 = (v3 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = type metadata accessor for ReferenceStandardView(0);
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC18, &unk_26A856D10);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC20, &unk_26A883320);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v26);
  v53 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v52 = &v47 - v29;
  sub_26A84C4A8();
  v30 = TextProperty.asAnyView()();
  (*(v13 + 8))(v17, v11);
  v31 = v51;
  v56[3] = MEMORY[0x277CE11C8];
  v56[4] = &protocol witness table for AnyView;
  v56[0] = v30;
  v54 = v22;
  ReferenceStandardView.init(text1:addTint:)(v56, 0, v22);
  sub_26A84C4B8();
  sub_26A4DBDB4(v10, v7, &qword_2803B3800, &unk_26A856760);
  if (__swift_getEnumTagSinglePayload(v7, 1, v31) == 1)
  {
    sub_26A4DBD10(v7, &qword_2803B3800, &unk_26A856760);
    KeyPath = swift_getKeyPath();
    v33 = &v25[*(v50 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v35 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v33 + v34, 1, 1, v35);
    *v33 = KeyPath;
  }

  else
  {
    v36 = v48;
    v37 = *(v49 + 32);
    v37(v48, v7, v31);
    v38 = swift_getKeyPath();
    v39 = &v25[*(v50 + 36)];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v37(v39 + v40, v36, v31);
    v41 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v39 + v40, 0, 1, v41);
    *v39 = v38;
  }

  sub_26A792450(v54, v25);
  v42 = sub_26A84C488();
  v43 = v52;
  sub_26A4DD08C(v42, v44);

  sub_26A4DBD10(v25, &qword_2803AAC18, &unk_26A856D10);
  sub_26A4DBD68(v43, v53, &qword_2803AAC20, &unk_26A883320);
  sub_26A793724();
  v45 = sub_26A851248();
  sub_26A4DBD10(v43, &qword_2803AAC20, &unk_26A883320);
  return v45;
}

unint64_t sub_26A793724()
{
  result = qword_2803B7760;
  if (!qword_2803B7760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC20, &unk_26A883320);
    sub_26A7937DC();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7760);
  }

  return result;
}

unint64_t sub_26A7937DC()
{
  result = qword_2803B7768;
  if (!qword_2803B7768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC10, &unk_26A883330);
    sub_26A793868();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7768);
  }

  return result;
}

unint64_t sub_26A793868()
{
  result = qword_2803B7770;
  if (!qword_2803B7770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC18, &unk_26A856D10);
    sub_26A793950(&qword_2803ADE38, type metadata accessor for ReferenceStandardView, &protocol conformance descriptor for ReferenceStandardView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7770);
  }

  return result;
}

uint64_t sub_26A793950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ResponseModelInstrumentationPayload.make(from:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A84ABB8();
  if (v3 >> 60 == 15)
  {
    sub_26A793A7C();
    swift_allocError();
    *v4 = 0;
    return swift_willThrow();
  }

  else
  {
    v6 = v2;
    v7 = v3;
    sub_26A84A7A8();
    swift_allocObject();
    sub_26A84A798();
    sub_26A793AD0();
    OUTLINED_FUNCTION_13_42();
    sub_26A84A788();

    return sub_26A54D2B8(v6, v7);
  }
}

unint64_t sub_26A793A7C()
{
  result = qword_2803B7778;
  if (!qword_2803B7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7778);
  }

  return result;
}

unint64_t sub_26A793AD0()
{
  result = qword_2803B7780;
  if (!qword_2803B7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7780);
  }

  return result;
}

uint64_t sub_26A793B24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = &v21[-1] - v14;
  sub_26A84AD48();
  if (__swift_getEnumTagSinglePayload(v15, 1, v8) == 1)
  {

    (*(v12 + 8))(v15, v10);
LABEL_5:
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v21[3] = v8;
  v21[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v8 - 8) + 32))();
  v16 = sub_26A84AD38();
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1(v21);
  if (v18 >> 60 == 15)
  {

    goto LABEL_5;
  }

  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_26A793CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_7_68();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_26A84E408();
  OUTLINED_FUNCTION_15();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  (*(v29 + 16))(&a9 - v35, v24, v27, v34);
  sub_26A5E88D8();
  sub_26A84BE18();
  v37 = sub_26A84BE38();
  v39 = (v29 + 8);
  if (v20)
  {

    v40 = *v39;
    (*v39)(v32, v27);
    v40(v36, v27);
    sub_26A793A7C();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
  }

  else
  {
    v42 = v37;
    v43 = v38;
    v44 = *v39;
    (*v39)(v32, v27);
    v44(v36, v27);
    *v26 = v42;
    v26[1] = v43 | 0x1000000000000000;
    v26[2] = 0;
    v26[3] = 0;
  }

  OUTLINED_FUNCTION_8_62();
}

uint64_t sub_26A793E9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000026A88F530 == a2;
  if (v3 || (sub_26A852598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65736E6F70736572 && a2 == 0xED00006C65646F4DLL;
    if (v6 || (sub_26A852598() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F4D647261436173 && a2 == 0xEB000000006C6564)
    {

      return 2;
    }

    else
    {
      v8 = sub_26A852598();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26A793FC8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x65736E6F70736572;
  }

  return 0x6F4D647261436173;
}

uint64_t sub_26A794044(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A852598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A7940BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A793E9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A7940E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A793FC0();
  *a1 = result;
  return result;
}

uint64_t sub_26A79410C(uint64_t a1)
{
  v2 = sub_26A7946E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A794148(uint64_t a1)
{
  v2 = sub_26A7946E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A794188(uint64_t a1)
{
  v2 = sub_26A7947DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A7941C4(uint64_t a1)
{
  v2 = sub_26A7947DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A794200(uint64_t a1)
{
  v2 = sub_26A794734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A79423C(uint64_t a1)
{
  v2 = sub_26A794734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A794278(uint64_t a1)
{
  v2 = sub_26A794884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A7942B4(uint64_t a1)
{
  v2 = sub_26A794884();

  return MEMORY[0x2821FE720](a1, v2);
}

void ResponseModelInstrumentationPayload.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_68();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7788, &qword_26A883350);
  OUTLINED_FUNCTION_15();
  v37 = v6;
  v38 = v5;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v36 = &v30 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7790, &qword_26A883358);
  OUTLINED_FUNCTION_15();
  v34 = v10;
  v35 = v9;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7798, &qword_26A883360);
  OUTLINED_FUNCTION_15();
  v33 = v13;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B77A0, &qword_26A883368);
  OUTLINED_FUNCTION_15();
  v40 = v18;
  v41 = v17;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_50();
  v20 = v1[1];
  v39 = *v1;
  v21 = v1[2];
  v31 = v1[3];
  v32 = v21;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_26A7946E0();
  sub_26A852718();
  v22 = (v20 >> 60) & 3;
  if (v22)
  {
    v23 = v20 & 0xCFFFFFFFFFFFFFFFLL;
    if (v22 == 1)
    {
      LOBYTE(v42) = 1;
      sub_26A7947DC();
      v24 = v41;
      OUTLINED_FUNCTION_13_42();
      sub_26A852528();
      v42 = v39;
      v43 = v23;
      sub_26A794830();
      v25 = v35;
      sub_26A852548();
      v26 = OUTLINED_FUNCTION_9_58();
    }

    else
    {
      LOBYTE(v42) = 2;
      sub_26A794734();
      v29 = v36;
      v24 = v41;
      OUTLINED_FUNCTION_13_42();
      sub_26A852528();
      v42 = v39;
      v43 = v23;
      sub_26A794788();
      v25 = v38;
      sub_26A852548();
      v27 = *(v37 + 8);
      v26 = v29;
    }

    v27(v26, v25);
    (*(v40 + 8))(v2, v24);
  }

  else
  {
    LOBYTE(v42) = 0;
    sub_26A794884();
    v28 = v41;
    sub_26A852528();
    v42 = v39;
    v43 = v20;
    v44 = v32;
    v45 = v31;
    sub_26A7948D8();
    sub_26A852548();
    (*(v33 + 8))(v16, v12);
    (*(v40 + 8))(v2, v28);
  }

  OUTLINED_FUNCTION_8_62();
}

unint64_t sub_26A7946E0()
{
  result = qword_2803B77A8;
  if (!qword_2803B77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77A8);
  }

  return result;
}

unint64_t sub_26A794734()
{
  result = qword_2803B77B0;
  if (!qword_2803B77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77B0);
  }

  return result;
}

unint64_t sub_26A794788()
{
  result = qword_2803B77B8;
  if (!qword_2803B77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77B8);
  }

  return result;
}

unint64_t sub_26A7947DC()
{
  result = qword_2803B77C0;
  if (!qword_2803B77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77C0);
  }

  return result;
}

unint64_t sub_26A794830()
{
  result = qword_2803B77C8;
  if (!qword_2803B77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77C8);
  }

  return result;
}

unint64_t sub_26A794884()
{
  result = qword_2803B77D0;
  if (!qword_2803B77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77D0);
  }

  return result;
}

unint64_t sub_26A7948D8()
{
  result = qword_2803B77D8;
  if (!qword_2803B77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77D8);
  }

  return result;
}

void ResponseModelInstrumentationPayload.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_68();
  v4 = v3;
  v67 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B77E0, &qword_26A883370);
  OUTLINED_FUNCTION_15();
  v65 = v7;
  v66 = v6;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v68 = &v58 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B77E8, &qword_26A883378);
  OUTLINED_FUNCTION_15();
  v63 = v10;
  v64 = v11;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B77F0, &qword_26A883380);
  OUTLINED_FUNCTION_15();
  v62 = v16;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B77F8, &qword_26A883388);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_50();
  v22 = v4[3];
  v69 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v22);
  sub_26A7946E0();
  sub_26A852708();
  if (v1)
  {
    goto LABEL_10;
  }

  v59 = v15;
  v60 = v19;
  v61 = v14;
  v23 = v2;
  v24 = sub_26A852518();
  v25 = sub_26A795C5C(v24, 0);
  v29 = v20;
  if (v27 == v28 >> 1)
  {
LABEL_9:
    v36 = sub_26A8522A8();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7800, &qword_26A883390);
    *v38 = &type metadata for ResponseModelInstrumentationPayload;
    sub_26A8524E8();
    sub_26A852298();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_12_46();
    v39(v23, v29);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v69);
LABEL_11:
    OUTLINED_FUNCTION_8_62();
    return;
  }

  if (v27 < (v28 >> 1))
  {
    v30 = *(v26 + v27);
    sub_26A795CA4(v27 + 1, v28 >> 1, v25, v26, v27, v28);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    if (v32 == v34 >> 1)
    {
      if (v30)
      {
        if (v30 == 1)
        {
          LOBYTE(v70) = 1;
          sub_26A7947DC();
          OUTLINED_FUNCTION_1_98();
          sub_26A8524D8();
          v35 = v67;
          sub_26A795D74();
          sub_26A852508();
          swift_unknownObjectRelease();
          v41 = OUTLINED_FUNCTION_15_36();
          v42(v41);
          OUTLINED_FUNCTION_12_46();
          v43 = OUTLINED_FUNCTION_13_9();
          v44(v43);
          v45 = 0;
          v46 = 0;
          v47 = v70;
          v48 = v71 | 0x1000000000000000;
        }

        else
        {
          LOBYTE(v70) = 2;
          sub_26A794734();
          OUTLINED_FUNCTION_1_98();
          sub_26A8524D8();
          v35 = v67;
          sub_26A795D20();
          sub_26A852508();
          swift_unknownObjectRelease();
          v54 = OUTLINED_FUNCTION_14_42();
          v55(v54);
          v56 = OUTLINED_FUNCTION_13_9();
          v57(v56);
          v45 = 0;
          v46 = 0;
          v47 = v70;
          v48 = v71 | 0x2000000000000000;
        }

        v53 = v69;
      }

      else
      {
        LOBYTE(v70) = 0;
        sub_26A794884();
        OUTLINED_FUNCTION_1_98();
        sub_26A8524D8();
        sub_26A795DC8();
        v40 = v59;
        OUTLINED_FUNCTION_13_42();
        sub_26A852508();
        swift_unknownObjectRelease();
        v49 = OUTLINED_FUNCTION_9_58();
        v50(v49, v40);
        v51 = OUTLINED_FUNCTION_13_9();
        v52(v51);
        v47 = v70;
        v48 = v71;
        v45 = v72;
        v46 = v73;
        v53 = v69;
        v35 = v67;
      }

      *v35 = v47;
      v35[1] = v48;
      v35[2] = v45;
      v35[3] = v46;
      __swift_destroy_boxed_opaque_existential_1(v53);
      goto LABEL_11;
    }

    v29 = v20;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_26A794FDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xED00006C65646F4DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A852598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A795084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A794FDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A7950B0(uint64_t a1)
{
  v2 = sub_26A795E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A7950EC(uint64_t a1)
{
  v2 = sub_26A795E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SACardModelPayload.cardModel.getter()
{
  v0 = OUTLINED_FUNCTION_211();
  sub_26A54D260(v0, v1);
  return OUTLINED_FUNCTION_211();
}

uint64_t sub_26A7951EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65646F4D64726163 && a2 == 0xE90000000000006CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A852598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A79528C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A7951EC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A7952B8(uint64_t a1)
{
  v2 = sub_26A795F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A7952F4(uint64_t a1)
{
  v2 = sub_26A795F18();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26A795364(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_68();
  v16 = v4;
  v6 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_15();
  v11 = v10;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_50();
  v13 = *v2;
  v14 = v2[1];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v15 = sub_26A54D260(v13, v14);
  v16(v15);
  sub_26A852718();
  sub_26A795E70();
  sub_26A852548();
  sub_26A513D40(v13, v14);
  (*(v11 + 8))(v3, v9);
  OUTLINED_FUNCTION_8_62();
}

void sub_26A7954D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_68();
  v4 = v3;
  v6 = v5;
  v17 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4();
  sub_26A852708();
  if (!v2)
  {
    v14 = v17;
    sub_26A795EC4();
    sub_26A852508();
    OUTLINED_FUNCTION_12_46();
    v15(v13, v10);
    *v14 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_8_62();
}

uint64_t SnippetPluginModelPayload.snippetPluginModel.getter()
{
  v0 = OUTLINED_FUNCTION_211();
  sub_26A54D260(v0, v1);
  return OUTLINED_FUNCTION_211();
}

uint64_t sub_26A7956B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000026A88F530 == a2;
  if (v3 || (sub_26A852598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E656C646E7562 && a2 == 0xEA0000000000656DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A852598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26A795788(char a1)
{
  if (a1)
  {
    return 0x614E656C646E7562;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_26A7957D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A7956B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A7957F8(uint64_t a1)
{
  v2 = sub_26A795F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A795834(uint64_t a1)
{
  v2 = sub_26A795F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

void SnippetPluginModelPayload.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_68();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7860, &qword_26A8833B8);
  OUTLINED_FUNCTION_15();
  v14 = v6;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13[1] = v1[3];
  v13[2] = v12;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_26A54D260(v10, v11);
  sub_26A795F6C();
  sub_26A852718();
  v15 = v10;
  v16 = v11;
  sub_26A795E70();
  sub_26A852548();
  sub_26A513D40(v15, v16);
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_26A852538();
  }

  (*(v14 + 8))(v9, v5);
  OUTLINED_FUNCTION_8_62();
}

void SnippetPluginModelPayload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_7_68();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7870, &qword_26A8833C0);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v28);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_26A795F6C();
  sub_26A852708();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_26A795EC4();
    OUTLINED_FUNCTION_1_98();
    sub_26A852508();
    v29 = sub_26A8524F8();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_13_9();
    v33(v32);
    *v27 = v34;
    v27[1] = v35;
    v27[2] = v29;
    v27[3] = v31;
    sub_26A54D260(v34, v35);

    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_26A513D40(v34, v35);
  }

  OUTLINED_FUNCTION_8_62();
}

uint64_t sub_26A795C14(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_26A795C5C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_26A795CA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_26A795D20()
{
  result = qword_2803B7808;
  if (!qword_2803B7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7808);
  }

  return result;
}

unint64_t sub_26A795D74()
{
  result = qword_2803B7810;
  if (!qword_2803B7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7810);
  }

  return result;
}

unint64_t sub_26A795DC8()
{
  result = qword_2803B7818;
  if (!qword_2803B7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7818);
  }

  return result;
}

unint64_t sub_26A795E1C()
{
  result = qword_2803B7828;
  if (!qword_2803B7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7828);
  }

  return result;
}

unint64_t sub_26A795E70()
{
  result = qword_2803B7830;
  if (!qword_2803B7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7830);
  }

  return result;
}

unint64_t sub_26A795EC4()
{
  result = qword_2803B7840;
  if (!qword_2803B7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7840);
  }

  return result;
}

unint64_t sub_26A795F18()
{
  result = qword_2803B7850;
  if (!qword_2803B7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7850);
  }

  return result;
}

unint64_t sub_26A795F6C()
{
  result = qword_2803B7868;
  if (!qword_2803B7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7868);
  }

  return result;
}

uint64_t sub_26A795FCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 32))
    {
      if ((~*(a1 + 8) & 0x3000000000000000) != 0)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A79600C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = xmmword_26A883340;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_26A796094(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26A7960E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseModelInstrumentationPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26A796270(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_26A79631C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A7963F8()
{
  result = qword_2803B7878;
  if (!qword_2803B7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7878);
  }

  return result;
}

unint64_t sub_26A796450()
{
  result = qword_2803B7880;
  if (!qword_2803B7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7880);
  }

  return result;
}

unint64_t sub_26A7964A8()
{
  result = qword_2803B7888;
  if (!qword_2803B7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7888);
  }

  return result;
}

unint64_t sub_26A796500()
{
  result = qword_2803B7890;
  if (!qword_2803B7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7890);
  }

  return result;
}

unint64_t sub_26A796558()
{
  result = qword_2803B7898;
  if (!qword_2803B7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7898);
  }

  return result;
}

unint64_t sub_26A7965B0()
{
  result = qword_2803B78A0;
  if (!qword_2803B78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78A0);
  }

  return result;
}

unint64_t sub_26A796608()
{
  result = qword_2803B78A8;
  if (!qword_2803B78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78A8);
  }

  return result;
}

unint64_t sub_26A796660()
{
  result = qword_2803B78B0;
  if (!qword_2803B78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78B0);
  }

  return result;
}

unint64_t sub_26A7966B8()
{
  result = qword_2803B78B8;
  if (!qword_2803B78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78B8);
  }

  return result;
}

unint64_t sub_26A796710()
{
  result = qword_2803B78C0;
  if (!qword_2803B78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78C0);
  }

  return result;
}

unint64_t sub_26A796768()
{
  result = qword_2803B78C8;
  if (!qword_2803B78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78C8);
  }

  return result;
}

unint64_t sub_26A7967C0()
{
  result = qword_2803B78D0;
  if (!qword_2803B78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78D0);
  }

  return result;
}

unint64_t sub_26A796818()
{
  result = qword_2803B78D8;
  if (!qword_2803B78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78D8);
  }

  return result;
}

unint64_t sub_26A796870()
{
  result = qword_2803B78E0;
  if (!qword_2803B78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78E0);
  }

  return result;
}

unint64_t sub_26A7968C8()
{
  result = qword_2803B78E8;
  if (!qword_2803B78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78E8);
  }

  return result;
}

unint64_t sub_26A796920()
{
  result = qword_2803B78F0;
  if (!qword_2803B78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78F0);
  }

  return result;
}

unint64_t sub_26A796978()
{
  result = qword_2803B78F8;
  if (!qword_2803B78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78F8);
  }

  return result;
}

unint64_t sub_26A7969D0()
{
  result = qword_2803B7900;
  if (!qword_2803B7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7900);
  }

  return result;
}

unint64_t sub_26A796A28()
{
  result = qword_2803B7908;
  if (!qword_2803B7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7908);
  }

  return result;
}

unint64_t sub_26A796A80()
{
  result = qword_2803B7910;
  if (!qword_2803B7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7910);
  }

  return result;
}

unint64_t sub_26A796AD8()
{
  result = qword_2803B7918;
  if (!qword_2803B7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7918);
  }

  return result;
}

unint64_t sub_26A796B30()
{
  result = qword_2803B7920;
  if (!qword_2803B7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7920);
  }

  return result;
}

void sub_26A796CBC(uint64_t a1)
{
  sub_26A4DB840(319, &qword_2803AD138, MEMORY[0x277D85048], type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A798F04(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TableRowViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_26A798F04(319, &qword_2803B1100, type metadata accessor for TableCell, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A796E08(__n128 a1, uint64_t a2, double *a3, double *a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v36 = a3;
  v35 = sub_26A84F108();
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84F218();
  sub_26A798C28(&qword_28157FE70, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  v8 = sub_26A851D98();
  if (v8)
  {
    v9 = v8;
    v41 = MEMORY[0x277D84F90];
    sub_26A7DD2F4(0, v8 & ~(v8 >> 63), 0);
    v10 = v41;
    sub_26A851D88();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v29[1] = v5;
      v11 = 0;
      v12 = *(type metadata accessor for TableRowHeightPreCalculationLayout.Cache(0) + 28);
      v31 = (v6 + 16);
      v32 = v12;
      v30 = (v6 + 8);
      v33 = v9;
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v14 = sub_26A851E18();
        v16 = v34;
        v15 = v35;
        (*v31)(v34);
        v14(v40, 0);
        sub_26A84F598();
        v40[0] = v17 & 1;
        v39 = v18 & 1;
        sub_26A84F0E8();
        v21 = v20;
        v22 = v19;
        v23 = v37;
        v24 = *v36;
        if (*v36 <= v19)
        {
          v24 = v19;
        }

        *v36 = v24;
        v25 = *v23;
        *v23 = *v23 + v21 + *(v38 + v32);
        (*v30)(v16, v15);
        v41 = v10;
        v27 = *(v10 + 16);
        v26 = *(v10 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_26A7DD2F4((v26 > 1), v27 + 1, 1);
          v10 = v41;
        }

        *(v10 + 16) = v27 + 1;
        v28 = v10 + 32 * v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = 0;
        *(v28 + 48) = v21;
        *(v28 + 56) = v22;
        sub_26A851DE8();
        ++v11;
        if (v13 == v33)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

double sub_26A7970FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26A79719C(a1, a2 & 1, a3, a4 & 1);

  type metadata accessor for TableRowHeightPreCalculationLayout(0);
  v7 = (a6 + *(type metadata accessor for TableRowHeightPreCalculationLayout.Cache(0) + 52));
  v8 = *v7;
  v9 = v7[1];
  type metadata accessor for TableRowViewModel(0);
  sub_26A73B598(v8, v9);
  *(v7 + 1) = v10;
  return v8;
}

void sub_26A79719C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v186 = type metadata accessor for TableCell(0);
  OUTLINED_FUNCTION_15();
  v189 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v179 = v12;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v13);
  *&v188 = &v176 - v14;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v15);
  v187 = &v176 - v16;
  v193 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v192 = v21 - v20;
  v185 = type metadata accessor for TableRowHeightPreCalculationLayout.Cache(0);
  v22 = v5 + v185[12];
  if ((*(v22 + 25) & 1) == 0)
  {
    LOBYTE(v195[0]) = a2 & 1;
    LOBYTE(v196[0]) = a4 & 1;
    if (sub_26A84F5A8())
    {
      OUTLINED_FUNCTION_9_59();
LABEL_137:

      return;
    }
  }

  v184 = v18;
  v181 = *&a1;
  *v22 = *&a1;
  *(v22 + 8) = a2 & 1;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4 & 1;
  *(v22 + 25) = 0;
  OUTLINED_FUNCTION_9_59();
  v24 = v5 + *(v23 + 24);
  v178 = type metadata accessor for TableRowViewModel(0);
  v25 = *(v178 + 40);
  v180 = v24;
  v177 = *(v24 + v25);
  v26 = *(*(v177 + 16) + 16);
  v183 = v5;
  if (v26)
  {

    v27 = v176 + 48;
    v28 = MEMORY[0x277D84F90];
    do
    {
      if ((*(v27 + 8) & 0xFF00) != 0x200)
      {
        v191 = *(v27 + 8);
        v190 = *(v27 - 16);
        v29 = *v27;
        v30 = *(v27 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v195[0] = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26A7DCF20(0, *(*&v28 + 16) + 1, 1);
          v28 = v195[0];
        }

        v33 = *(*&v28 + 16);
        v32 = *(*&v28 + 24);
        v34 = v191;
        if (v33 >= v32 >> 1)
        {
          sub_26A7DCF20((v32 > 1), v33 + 1, 1);
          v34 = v191;
          v28 = v195[0];
        }

        *(*&v28 + 16) = v33 + 1;
        v35 = *&v28 + 48 * v33;
        *(v35 + 32) = v190;
        *(v35 + 48) = v29;
        *(v35 + 56) = v34;
        *(v35 + 72) = v30;
      }

      v27 += 48;
      --v26;
    }

    while (v26);

    v5 = v183;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_9_59();
  v37 = *(v36 + 44);
  sub_26A84F218();
  OUTLINED_FUNCTION_2_96();
  sub_26A798C28(v38, v39, MEMORY[0x277CDF820]);
  v40 = sub_26A851D98();
  v182 = a2;
  if (v40)
  {
    v41 = v40;
    *&v190 = v28;
    *&v196[0] = MEMORY[0x277D84F90];
    sub_26A7DD274(0, v40 & ~(v40 >> 63), 0);
    v42 = v196[0];
    sub_26A851D88();
    if (v41 < 0)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    *&v191 = v184 + 16;
    v43 = (v184 + 8);
    a2 = *&v42;
    do
    {
      v44 = sub_26A851E18();
      v46 = v192;
      v45 = v193;
      (*v191)(v192);
      v44(v195, 0);
      sub_26A84F598();
      LOBYTE(v195[0]) = v47 & 1;
      v194 = v48 & 1;
      sub_26A84F0E8();
      v50 = v49;
      v52 = v51;
      (*v43)(v46, v45);
      *&v196[0] = a2;
      v53 = v37;
      v55 = *(a2 + 16);
      v54 = *(a2 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_26A7DD274(v54 > 1, v55 + 1, 1);
        a2 = *&v196[0];
      }

      *(a2 + 16) = v55 + 1;
      v56 = a2 + 16 * v55;
      *(v56 + 32) = v50;
      *(v56 + 40) = v52;
      sub_26A851DE8();
      --v41;
      v37 = v53;
    }

    while (v41);
    v184 = a2;
    LOBYTE(a2) = v182;
    v28 = *&v190;
  }

  else
  {
    v184 = MEMORY[0x277D84F90];
  }

  v57 = *(v184 + 16);
  if (v57)
  {
    v58 = v57;
    v59 = (v184 + 32);
    v60 = 0.0;
    do
    {
      v61 = *v59;
      v59 += 2;
      v60 = v60 + v61 / v58;
      --v57;
    }

    while (v57);
  }

  else
  {
    v60 = 0.0;
  }

  v62 = sub_26A6A547C();
  v193 = v37;
  if (v62 != v63)
  {
    v65 = v62;
    v66 = v63;
    if (v63 < v62)
    {
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (v62 >= v63)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    v67 = *(v5 + 8);
    v68 = *(v67 + 16);
    v69 = (v184 + 16 * v62 + 32);
    v192 = MEMORY[0x277D84F90];
    v64 = 0.0;
    do
    {
      if (v65 < v68)
      {
        if ((v65 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v65 >= *(v67 + 16))
        {
          goto LABEL_139;
        }

        v70 = *(v67 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v65 + *(v186 + 24));
        if ((v70 & 0x8000000000000000) == 0 && v70 < *(*&v28 + 16))
        {
          v71 = *&v28 + 32 + 48 * v70;
          v72 = *(v71 + 24);
          if ((v72 & 0xFF00) != 0x200)
          {
            if (v72)
            {
              if (v65 >= *(v184 + 16))
              {
                goto LABEL_149;
              }

              if (v64 > 0.0)
              {
                v64 = v64 + *(v183 + v185[7]);
              }

              if (v60 >= *v69 || (v73 = 1.0, (*(v71 + 40) & 0x100) != 0))
              {
                v73 = 1.0 - *v183;
              }

              v64 = v64 + *v69 * v73;
            }

            if ((v72 & 0x100) == 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v77 = OUTLINED_FUNCTION_0_53();
                sub_26A7A1810(v77, v78, v79, v80);
                v192 = v81;
              }

              v75 = *(v192 + 16);
              v74 = *(v192 + 24);
              if (v75 >= v74 >> 1)
              {
                sub_26A7A1810(v74 > 1, v75 + 1, 1, v192);
                v192 = v82;
              }

              v76 = v192;
              *(v192 + 16) = v75 + 1;
              *(v76 + 8 * v75 + 32) = v65;
            }
          }
        }
      }

      ++v65;
      v69 += 2;
    }

    while (v66 != v65);

    if ((a2 & 1) == 0)
    {
      v5 = v183;
      v37 = v193;
      goto LABEL_64;
    }

    v5 = v183;
    v37 = v193;
    if (v64 > 0.0)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

  v64 = 0.0;
  v192 = MEMORY[0x277D84F90];
  if (a2)
  {
    goto LABEL_57;
  }

LABEL_64:
  if (v64 <= v181)
  {
LABEL_57:

    v195[0] = 0.0;
    v196[0] = 0.0;
    sub_26A796E08(v83, v5 + v37, v195, v196, v5);
    v85 = v84;

    v86 = v185;
    v87 = v185[14];

    *(v5 + v87) = v85;
    if (sub_26A61B05C(*(v5 + v86[10]), &unk_287B133E0))
    {
      OUTLINED_FUNCTION_8_63();
      if ((v89 & 1) == 0 && !*v88)
      {
        v90 = *(sub_26A625870() + 16);

        if (v90)
        {
          OUTLINED_FUNCTION_9_59();
        }
      }
    }

    OUTLINED_FUNCTION_9_59();
    v92 = (v5 + *(v91 + 52));
    *v92 = v94;
    v92[1] = v93;
    goto LABEL_137;
  }

LABEL_65:
  v95 = v180;
  v96 = sub_26A625870();
  v97 = v96;
  v98 = *(v96 + 16);
  if (v98)
  {
    v99 = 0;
    *&v191 = *(v186 + 24);
    v100 = MEMORY[0x277D84F98];
    *&v190 = v96 + ((*(v189 + 80) + 32) & ~*(v189 + 80));
    while (v99 < *(v97 + 16))
    {
      OUTLINED_FUNCTION_4_80();
      v101 = v187;
      sub_26A798C90(v102, v187, v103);
      v104 = *(v101 + v191);
      sub_26A798C90(v101, *&v188, v95);
      swift_isUniquelyReferenced_nonNull_native();
      v195[0] = v100;
      v105 = sub_26A5484D4(v104);
      if (__OFADD__(*(*&v100 + 16), (v106 & 1) == 0))
      {
        goto LABEL_141;
      }

      v107 = v105;
      v108 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1120, &qword_26A86B6F0);
      v95 = v195;
      if (sub_26A8523E8())
      {
        v95 = *&v195[0];
        v109 = sub_26A5484D4(v104);
        if ((v108 & 1) != (v110 & 1))
        {
          goto LABEL_154;
        }

        v107 = v109;
      }

      v100 = v195[0];
      if (v108)
      {
        v111 = OUTLINED_FUNCTION_13_43();
        sub_26A625EA0(v111, v112);
        OUTLINED_FUNCTION_5_75();
      }

      else
      {
        *(*&v195[0] + 8 * (v107 >> 6) + 64) |= 1 << v107;
        *(*(*&v100 + 48) + 8 * v107) = v104;
        v113 = OUTLINED_FUNCTION_13_43();
        sub_26A625DE4(v113, v114);
        OUTLINED_FUNCTION_5_75();
        v115 = *(*&v100 + 16);
        v116 = __OFADD__(v115, 1);
        v117 = v115 + 1;
        if (v116)
        {
          goto LABEL_143;
        }

        *(*&v100 + 16) = v117;
      }

      if (v98 == ++v99)
      {
        goto LABEL_79;
      }
    }

LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v100 = MEMORY[0x277D84F98];
LABEL_79:

  v118 = v183;
  v119 = v192;
  if ((*(v177 + 65) & 1) != 0 || (OUTLINED_FUNCTION_8_63(), v121 = 0.0, (v122 & 1) == 0) && !*v120)
  {
    v123 = *(sub_26A625870() + 16);

    if (v123)
    {
      OUTLINED_FUNCTION_9_59();
      v121 = *(v118 + *(v124 + 36));
    }

    else
    {
      v121 = 0.0;
    }
  }

  v125 = sub_26A6A547C();
  if (v125 == v126)
  {

    v127 = v181;
    v128 = MEMORY[0x277D84F90];
    v129 = 0.0;
LABEL_134:

    v171 = v185;
    v172 = v185[14];
    v173 = v183;

    *(v173 + v172) = v128;
    v174 = 0.0;
    if ((v182 & 1) == 0)
    {
      v174 = v127;
    }

    v175 = (v173 + v171[13]);
    *v175 = v174;
    v175[1] = v129 + v121;
    goto LABEL_137;
  }

  v130 = v125;
  v131 = v126;
  if (v126 >= v125)
  {
    *&v191 = 0;
    v132 = (v119 + 32);
    v133 = v184 + 32;
    v127 = v181;
    v134 = -v125;
    v129 = 0.0;
    v128 = MEMORY[0x277D84F90];
    v188 = 1000.0;
    v135 = v121;
    v136 = 0.0;
    v137 = v184 + 32 + 16 * v125;
    *&v190 = v184 + 32;
    while (2)
    {
      if (v130 < v131)
      {
        v193 = v130 + 1;
        v138 = *(v119 + 16);
        v139 = v132;
        do
        {
          if (!v138)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_0_53();
              sub_26A7A12C4();
              v128 = v167;
            }

            v149 = *(v128 + 16);
            if (v149 >= *(v128 + 24) >> 1)
            {
              sub_26A7A12C4();
              v128 = v168;
            }

            *(v128 + 16) = v149 + 1;
            v150 = v128 + 32 * v149;
            *(v150 + 32) = 0u;
            *(v150 + 48) = 0u;
            goto LABEL_132;
          }

          v140 = *v139++;
          --v138;
        }

        while (v140 != v130);
        if (*(*&v100 + 16) && (sub_26A5484D4(v130), (v141 & 1) != 0))
        {
          OUTLINED_FUNCTION_4_80();
          v142 = v131;
          v143 = v132;
          v144 = v179;
          sub_26A798C90(v145, v179, v146);
          v147 = *(v144 + *(v186 + 28));
          v148 = v144;
          v132 = v143;
          v131 = v142;
          v133 = v190;
          sub_26A798CF0(v148, *&v100);
        }

        else
        {
          v147 = 1;
        }

        v151 = v130 + v147;
        if (__OFADD__(v130, v147))
        {
          goto LABEL_144;
        }

        v152 = *(v184 + 16);
        if (v152 >= v151)
        {
          v153 = v130 + v147;
        }

        else
        {
          v153 = *(v184 + 16);
        }

        if (v153 < v130)
        {
          goto LABEL_145;
        }

        if (v130 < 0)
        {
          goto LABEL_146;
        }

        if (!__OFSUB__(v147, 1))
        {
          v154 = *(v183 + v185[7]);
          v155 = v154 * (v147 - 1);
          if (v130 == v153)
          {
            v119 = v192;
          }

          else
          {
            v156 = v147 + v130;
            if (v152 < v147 + v130)
            {
              v156 = *(v184 + 16);
            }

            v157 = v156 + v134;
            v158 = v137;
            v119 = v192;
            do
            {
              v159 = *v158;
              v158 += 2;
              v155 = v155 + v159;
              --v157;
            }

            while (v157);
          }

          if (v136 > 0.0 && v130 >= v191)
          {
            v161 = v136 + v155;
            if (v182)
            {
              if (v161 <= v188)
              {
                goto LABEL_124;
              }
            }

            else if (v161 <= v127)
            {
              goto LABEL_124;
            }

            v135 = v135 + v121 + v129;
            v129 = 0.0;
            *&v191 = v151;
            v136 = 0.0;
          }

LABEL_124:
          if (v130 >= v152)
          {
            goto LABEL_148;
          }

          v162 = (v133 + 16 * v130);
          v164 = *v162;
          v163 = v162[1];
          if (v129 <= v163)
          {
            v129 = v162[1];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_0_53();
            sub_26A7A12C4();
            v128 = v169;
          }

          v165 = *(v128 + 16);
          if (v165 >= *(v128 + 24) >> 1)
          {
            sub_26A7A12C4();
            v128 = v170;
          }

          *(v128 + 16) = v165 + 1;
          v166 = (v128 + 32 * v165);
          v166[4] = v136;
          v166[5] = v135;
          v166[6] = v164;
          v166[7] = v163;
          v136 = v136 + v154 + v164;
LABEL_132:
          --v134;
          v137 += 16;
          v130 = v193;
          if (v193 != v131)
          {
            continue;
          }

          v121 = v135;
          goto LABEL_134;
        }

        goto LABEL_147;
      }

      break;
    }

LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

LABEL_153:
  __break(1u);
LABEL_154:
  sub_26A852618();
  __break(1u);
}

void sub_26A798020(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v60 = a6;
  v61 = a5;
  LODWORD(v65) = a4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2BA8, qword_26A871C70);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v11);
  v63 = v56 - v12;
  v67 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v62 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v66 = v15;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  v59 = v56 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2B90, &unk_26A8741C0);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_19();
  v64 = v19;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v20);
  v22 = v56 - v21;
  v23 = sub_26A84F218();
  OUTLINED_FUNCTION_15();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_41();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2B98, &unk_26A871C60);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = v56 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2BA0, &unk_26A8741D0);
  v34 = v33 - 8;
  MEMORY[0x28223BE20](v33);
  v36 = v56 - v35;
  LOBYTE(v69[0]) = a2 & 1;
  v70 = v65 & 1;
  sub_26A79719C(a1, a2 & 1, a3, v65 & 1);
  v38 = v37;
  (*(v25 + 16))(v32, v61, v23);
  (*(v25 + 32))(v29, v32, v23);
  v39 = MEMORY[0x277CDF7F8];
  sub_26A798C28(&qword_28157FE78, MEMORY[0x277CDF7F8], MEMORY[0x277CDF810]);
  sub_26A851998();
  v40 = *(v34 + 44);
  v41 = v23;
  v57 = v40;
  *&v36[v40] = 0;
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0168, &qword_26A868B00) + 36);
  sub_26A798C28(&qword_28157FE70, v39, MEMORY[0x277CDF820]);
  v43 = 0;
  v58 = (v62 + 16);
  v65 = (v62 + 32);
  v44 = (v62 + 8);
  v62 = v38;
  v56[1] = v38 + 32;
  v45 = v42;
  v60 = v42;
  v61 = v41;
  while (1)
  {
    sub_26A851DD8();
    if (*&v36[v45] == v69[0])
    {
      v46 = 1;
      v47 = v64;
      goto LABEL_6;
    }

    v48 = sub_26A851E18();
    v49 = v59;
    v50 = v67;
    (*v58)(v59);
    v48(v69, 0);
    sub_26A851DE8();
    v51 = *(v68 + 48);
    v52 = v63;
    *v63 = v43;
    (*v65)(&v52[v51], v49, v50);
    if (__OFADD__(v43++, 1))
    {
      break;
    }

    *&v36[v57] = v43;
    v47 = v64;
    sub_26A544EC8(v63, v64, &qword_2803B2BA8, qword_26A871C70);
    v46 = 0;
    v45 = v60;
LABEL_6:
    v54 = v68;
    __swift_storeEnumTagSinglePayload(v47, v46, 1, v68);
    sub_26A544EC8(v47, v22, &qword_2803B2B90, &unk_26A8741C0);
    if (__swift_getEnumTagSinglePayload(v22, 1, v54) == 1)
    {
      sub_26A6A6CA0(v36);

      return;
    }

    v55 = *v22;
    (*v65)(v66, &v22[*(v68 + 48)], v67);
    if (v55 < *(v62 + 16))
    {
      if (v55 < 0)
      {
        goto LABEL_13;
      }

      sub_26A851568();
      LOBYTE(v69[0]) = 0;
      v70 = 0;
      v45 = v60;
      sub_26A84F0F8();
    }

    (*v44)(v66, v67);
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_26A798618@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_26A84F218();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v11 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v38 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = v15 - v14;
  v17 = type metadata accessor for TableRowViewModel(0);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = type metadata accessor for TableRowHeightPreCalculationLayout(0);
  v22 = *(v2 + v21[7]);
  OUTLINED_FUNCTION_3_86();
  sub_26A798C90(v2 + v23, v20, v24);
  v25 = *(v2 + v21[9]);
  v26 = *(v2 + v21[8]);
  v27 = *(v2 + 192);
  v28 = *(v2 + 240);
  if (*(v2 + 248) == 1)
  {
  }

  else
  {

    sub_26A4C24D0(v28, 0);
    sub_26A851EA8();
    v37 = v11;
    v29 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v28, 0);
    (*(v38 + 8))(v16, v37);
    v28 = v40;
  }

  v30 = *(v6 + 16);
  v30(v10, a1, v4);
  v31 = type metadata accessor for TableRowHeightPreCalculationLayout.Cache(0);
  OUTLINED_FUNCTION_11_50(v31[12]);
  v33 = (a2 + *(v32 + 52));
  *v33 = 0;
  v33[1] = 0;
  *(a2 + *(v32 + 56)) = MEMORY[0x277D84F90];
  a2[1] = v22;
  OUTLINED_FUNCTION_3_86();
  sub_26A798C90(v20, a2 + v34, v35);
  *(a2 + v31[7]) = v25;
  *(a2 + v31[8]) = v27;
  *(a2 + v31[9]) = v26;
  *(a2 + v31[10]) = v28;
  v30(a2 + v31[11], v10, v4);
  if (qword_2803A8B30 != -1)
  {
    swift_once();
  }

  if (qword_2803A8B38 != -1)
  {
    swift_once();
  }

  (*(v6 + 8))(v10, v4);
  result = sub_26A798CF0(v20, type metadata accessor for TableRowViewModel);
  *a2 = 0x3FD0000000000000;
  return result;
}

void sub_26A79899C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A84F218();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v11 = type metadata accessor for TableRowHeightPreCalculationLayout.Cache(0);
  v12 = v11[11];
  (*(v6 + 16))(v10, a1 + v12, v4);
  OUTLINED_FUNCTION_2_96();
  sub_26A798C28(v13, v14, MEMORY[0x277CDF808]);
  v15 = sub_26A851758();
  (*(v6 + 8))(v10, v4);
  if ((v15 & 1) == 0)
  {
    (*(v6 + 24))(a1 + v12, a2, v4);
    OUTLINED_FUNCTION_11_50(v11[12]);
    v16 = v11[14];

    *(a1 + v16) = MEMORY[0x277D84F90];
  }
}

void (*sub_26A798B6C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

uint64_t sub_26A798C28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A798C90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A798CF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_26A798D70(uint64_t a1)
{
  sub_26A798F04(319, &qword_2803B1100, type metadata accessor for TableCell, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TableRowViewModel(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for VRXIdiom(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        sub_26A84F218();
        if (v6 <= 0x3F)
        {
          sub_26A4DB840(319, &qword_2803B35D8, MEMORY[0x277CDFB90], MEMORY[0x277D83D88]);
          if (v7 <= 0x3F)
          {
            type metadata accessor for CGSize(319, v7, v8, v9);
            if (v10 <= 0x3F)
            {
              sub_26A798F04(319, &qword_2803B35E0, type metadata accessor for CGRect, MEMORY[0x277D83940]);
              if (v11 <= 0x3F)
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

void sub_26A798F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_75()
{
  v2 = *(v0 - 296);

  return sub_26A798CF0(v2, type metadata accessor for TableCell);
}

void OUTLINED_FUNCTION_11_50(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 24) = 256;
  *(v2 + 16) = 0;
}

uint64_t sub_26A79904C(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    v4 = sub_26A851B18();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3 & 1, a2);
    return v4;
  }

  return result;
}

uint64_t sub_26A7990BC(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_26A851B18();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_26A875620)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26A799168(uint64_t result, char a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    if (a3)
    {
      v5 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA470, &qword_26A8560B0);
      result = sub_26A851B18();
      *(result + 16) = v3;
      v6 = 32;
      do
      {
        v7 = result + v6;
        *v7 = v5;
        *(v7 + 8) = a2 & 1;
        v6 += 16;
        --v3;
      }

      while (v3);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26A7991F4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    if (a2)
    {
      v3 = result;
      result = sub_26A851B18();
      *(result + 16) = v2;
      v4 = 32;
      do
      {
        v5 = (result + v4);
        v6 = v3[1];
        *v5 = *v3;
        v5[1] = v6;
        *(v5 + 26) = *(v3 + 26);
        v4 += 48;
        --v2;
      }

      while (v2);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26A799268(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v5 = result;
    type metadata accessor for SFButtonItemStyle(0, a2, a3, a4);
    result = sub_26A851B18();
    v6 = 0;
    v7 = (result + 44);
    *(result + 16) = a2;
    v8 = vdupq_n_s64(a2 - 1);
    do
    {
      v9 = vdupq_n_s64(v6);
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_26A875620)));
      if (vuzp1_s16(v10, *v8.i8).u8[0])
      {
        *(v7 - 3) = v5;
      }

      if (vuzp1_s16(v10, *&v8).i8[2])
      {
        *(v7 - 2) = v5;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v9, xmmword_26A8841E0)))).i32[1])
      {
        *(v7 - 1) = v5;
        *v7 = v5;
      }

      v6 += 4;
      v7 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v6);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void FactItemButtonView.init(text1:button1:button2:button3:text2:text3:text4:text5:thumbnail:thumbnail2:buttonItemsAreBottom:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  OUTLINED_FUNCTION_28_0();
  v91 = v23;
  v93 = v25;
  v94 = v24;
  v92 = v26;
  v27 = type metadata accessor for FactItemButtonView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v31 = v30 - v29;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_225(KeyPath);
  v90 = v31;
  v33 = (v31 + v27[5]);
  if (qword_2803A8A80 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
    __swift_project_value_buffer(v34, qword_2803D1A70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
    sub_26A7A501C();
    sub_26A6AEE74(v107);
    memcpy(v33, v107, 0xBFuLL);
    OUTLINED_FUNCTION_12_48();
    sub_26A7A46D4();
    v35 = v27[6];
    if (qword_2803A8AE8 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_2803A8AE8);
    }

    OUTLINED_FUNCTION_24_9(&v108);
    OUTLINED_FUNCTION_24_9(&v106[368]);
    sub_26A7A501C();
    sub_26A6AEE74(v106);
    memcpy(v109, &v106[400], sizeof(v109));
    memcpy(&v106[192], &v106[400], 0xB0uLL);
    memcpy((v90 + v35), v106, 0x240uLL);
    v36 = (v90 + v27[7]);
    sub_26A54DFFC(v109, v105);
    if (qword_28157E660 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_28157E660);
    }

    v110 = xmmword_281588758;
    v111 = unk_281588768;
    v112 = xmmword_281588778;
    v113 = xmmword_281588788;
    v114 = xmmword_281588758;
    v115 = unk_281588768;
    v116 = xmmword_281588778;
    v117 = xmmword_281588788;
    v95 = xmmword_281588778;
    v88 = xmmword_281588788;
    sub_26A7A501C();
    sub_26A6AEE74(v105);
    memcpy(v36, v105, 0xC0uLL);
    v36[12] = v95;
    v36[13] = v88;
    v37 = v115;
    v36[14] = v114;
    v36[15] = v37;
    v38 = v117;
    v36[16] = v116;
    v36[17] = v38;
    v39 = v90 + v27[8];
    *v39 = swift_getKeyPath();
    *(v39 + 8) = 0;
    v40 = v27[9];
    *(v90 + v40) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
    swift_storeEnumTagMultiPayload();
    v41 = v27[10];
    *(v90 + v41) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
    swift_storeEnumTagMultiPayload();
    sub_26A50429C(v92, &v100);
    OUTLINED_FUNCTION_80();
    v42 = swift_allocObject();
    sub_26A4C2314(&v100, v42 + 16);
    v43 = (v90 + v27[12]);
    *v43 = sub_26A7A564C;
    v43[1] = v42;
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_80();
    v44 = swift_allocObject();
    OUTLINED_FUNCTION_29_19(v44);
    v45 = (v90 + v27[13]);
    *v45 = sub_26A7A5648;
    v45[1] = v46;
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_80();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_29_19(v47);
    v48 = (v90 + v27[14]);
    *v48 = sub_26A7A5648;
    v48[1] = v49;
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_80();
    v50 = swift_allocObject();
    OUTLINED_FUNCTION_29_19(v50);
    v51 = (v90 + v27[15]);
    *v51 = sub_26A7A5648;
    v51[1] = v52;
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_80();
    v53 = swift_allocObject();
    OUTLINED_FUNCTION_29_19(v53);
    v54 = (v90 + v27[16]);
    *v54 = sub_26A7A5648;
    v54[1] = v55;
    sub_26A7A501C();
    if (*(&v101 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
      v56 = OUTLINED_FUNCTION_13_3();
      v57(v56);
      __swift_destroy_boxed_opaque_existential_1(&v100);
      v58 = &protocol witness table for AnyView;
    }

    else
    {
      sub_26A505D1C();
      OUTLINED_FUNCTION_2_0();
      *(&v100 + 1) = 0;
      *&v101 = 0;
    }

    v59 = OUTLINED_FUNCTION_79_1(v58);
    OUTLINED_FUNCTION_78_2(v59, v60, v90 + v27[17]);
    sub_26A7A501C();
    if (*(&v101 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
      v61 = OUTLINED_FUNCTION_13_3();
      v62(v61);
      __swift_destroy_boxed_opaque_existential_1(&v100);
      v63 = &protocol witness table for AnyView;
    }

    else
    {
      sub_26A505D1C();
      OUTLINED_FUNCTION_2_0();
      *(&v100 + 1) = 0;
      *&v101 = 0;
    }

    v64 = OUTLINED_FUNCTION_79_1(v63);
    OUTLINED_FUNCTION_78_2(v64, v65, v90 + v27[18]);
    v87 = v27;
    if (a23)
    {
      v66 = *(v94 + 24) || *(v93 + 24) != 0;
      v89 = v66;
    }

    else
    {
      v89 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7950, &qword_26A8842A8);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_26A857110;
    sub_26A50429C(v91, v67 + 32);
    sub_26A7A501C();
    sub_26A7A501C();
    v68 = MEMORY[0x277D84F90];
    v69 = 32;
    v70 = MEMORY[0x277D84F90];
    do
    {
      sub_26A7A501C();
      v103[0] = v100;
      v103[1] = v101;
      v104 = v102;
      if (*(&v101 + 1))
      {
        sub_26A4C2314(v103, v97);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A2040();
          v70 = v72;
        }

        v71 = *(v70 + 16);
        if (v71 >= *(v70 + 24) >> 1)
        {
          sub_26A7A2040();
          v70 = v73;
        }

        *(v70 + 16) = v71 + 1;
        sub_26A4C2314(v97, v70 + 40 * v71 + 32);
      }

      else
      {
        sub_26A505D1C();
      }

      v69 += 40;
    }

    while (v69 != 152);
    swift_setDeallocating();
    sub_26A7A0D74(&qword_2803A91B8, &qword_26A8575C0);
    v74 = *(v70 + 16);
    if (!v74)
    {
      break;
    }

    *&v103[0] = v68;
    v33 = v103;
    sub_26A7DCDCC(0, v74, 0);
    v27 = 0;
    v75 = *&v103[0];
    v96 = *(v70 + 16);
    v76 = v70 + 32;
    while (v96 != v27)
    {
      if (v27 >= *(v70 + 16))
      {
        goto LABEL_38;
      }

      sub_26A50429C(v76, &v100 + 8);
      *&v97[0] = v27;
      sub_26A4C2314((&v100 + 8), v97 + 8);
      v77 = v98;
      v78 = v99;
      v33 = __swift_project_boxed_opaque_existential_1(v97 + 1, v98);
      v79 = (*(v78 + 8))(v77, v78);
      sub_26A505D1C();
      *&v103[0] = v75;
      v81 = *(v75 + 16);
      v80 = *(v75 + 24);
      if (v81 >= v80 >> 1)
      {
        v33 = v103;
        sub_26A7DCDCC((v80 > 1), v81 + 1, 1);
        v75 = *&v103[0];
      }

      *(v75 + 16) = v81 + 1;
      v82 = v75 + 24 * v81;
      *(v82 + 32) = v79;
      *(v82 + 40) = 0;
      *(v82 + 48) = v27;
      v27 = (v27 + 1);
      v76 += 40;
      if (v74 == v27)
      {

        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    OUTLINED_FUNCTION_18_1(&qword_2803A8A80);
  }

  v75 = MEMORY[0x277D84F90];
LABEL_36:
  type metadata accessor for FactItemButtonViewModel(0);
  swift_allocObject();
  sub_26A79A938(v75, 0, 0, v89);
  v83 = (v90 + v87[11]);
  OUTLINED_FUNCTION_13_44();
  sub_26A7A3CA0();
  OUTLINED_FUNCTION_183();
  v84 = sub_26A84F258();
  v86 = v85;
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_90_1();
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  *v83 = v84;
  v83[1] = v86;
  sub_26A7A4F78();
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_27_0();
}

void FactItemButtonView.init(text1:buttonItem1:buttonItem2:buttonItem3:text2:text3:text4:text5:thumbnail:thumbnail2:buttonItemsAreBottom:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  OUTLINED_FUNCTION_28_0();
  v204 = v24;
  v210 = v23;
  v216 = v26;
  v222 = v25;
  v28 = v27;
  v30 = v29;
  v228 = v31;
  v186 = v32;
  v34 = v33;
  *v33 = swift_getKeyPath();
  *(v34 + 9) = 0;
  swift_unknownObjectWeakInit();
  v35 = type metadata accessor for FactItemButtonView(0);
  v193 = v34;
  v36 = (v34 + *(v35 + 20));
  if (qword_2803A8A80 != -1)
  {
LABEL_44:
    OUTLINED_FUNCTION_18_1(&qword_2803A8A80);
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  __swift_project_value_buffer(v37, qword_2803D1A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  sub_26A7A501C();
  sub_26A6AEE74(__src);
  memcpy(v36, __src, 0xBFuLL);
  OUTLINED_FUNCTION_12_48();
  sub_26A7A46D4();
  v38 = *(v35 + 24);
  if (qword_2803A8AE8 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_2803A8AE8);
  }

  memcpy(__dst, qword_2803D1B00, sizeof(__dst));
  memcpy(&v238[368], qword_2803D1B00, 0xD0uLL);
  sub_26A7A501C();
  sub_26A6AEE74(v238);
  OUTLINED_FUNCTION_87_1(v241);
  OUTLINED_FUNCTION_87_1(&v238[192]);
  memcpy(v242, v238, sizeof(v242));
  v39 = v193;
  memcpy((v193 + v38), v242, 0x240uLL);
  v40 = (v193 + *(v35 + 28));
  sub_26A54DFFC(v241, v238);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v156 = OUTLINED_FUNCTION_54_5(&xmmword_281588758);
  v168 = v41;
  sub_26A7A501C();
  sub_26A6AEE74(v238);
  memcpy(v40, v238, 0xC0uLL);
  v40[12] = v168;
  v40[13] = v156;
  v42 = v244;
  v40[14] = v243;
  v40[15] = v42;
  v43 = v246;
  v40[16] = v245;
  v40[17] = v43;
  v44 = v193 + *(v35 + 32);
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  v45 = *(v35 + 36);
  *(v193 + v45) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v46 = *(v35 + 40);
  *(v193 + v46) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A50429C(v222, &v234);
  OUTLINED_FUNCTION_80();
  v47 = swift_allocObject();
  sub_26A4C2314(&v234, v47 + 16);
  v48 = (v193 + *(v35 + 48));
  *v48 = sub_26A7A3BEC;
  v48[1] = v47;
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_80();
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_16_31(v49, v50, v51, v52, v53, v54, v55, v56, v57, v132, v138, v144, v150, v156.n128_i64[0], v156.n128_i64[1], v168, *(&v168 + 1), v180, v186, v193, a21, v204, v210, v216, v222, v228, v58, v234, v235);
  v59 = (v39 + *(v35 + 52));
  *v59 = sub_26A7A3C08;
  v59[1] = v60;
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_80();
  v61 = swift_allocObject();
  OUTLINED_FUNCTION_16_31(v61, v62, v63, v64, v65, v66, v67, v68, v69, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v194, v199, v205, v211, v217, v223, v229, v70, v234, v235);
  v71 = (v39 + *(v35 + 56));
  *v71 = sub_26A7A5648;
  v71[1] = v72;
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_80();
  v73 = swift_allocObject();
  OUTLINED_FUNCTION_16_31(v73, v74, v75, v76, v77, v78, v79, v80, v81, v134, v140, v146, v152, v158, v164, v170, v176, v182, v188, v195, v200, v206, v212, v218, v224, v230, v82, v234, v235);
  v83 = (v39 + *(v35 + 60));
  *v83 = sub_26A7A5648;
  v83[1] = v84;
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_80();
  v85 = swift_allocObject();
  OUTLINED_FUNCTION_16_31(v85, v86, v87, v88, v89, v90, v91, v92, v93, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v196, v201, v207, v213, v219, v225, v231, v94, v234, v235);
  v95 = (v39 + *(v35 + 64));
  *v95 = sub_26A7A5648;
  v95[1] = v96;
  sub_26A7A501C();
  if (v236)
  {
    __swift_project_boxed_opaque_existential_1(&v234, v236);
    v97 = OUTLINED_FUNCTION_61_4();
    v98(v97);
    __swift_destroy_boxed_opaque_existential_1(&v234);
    v99 = &protocol witness table for AnyView;
  }

  else
  {
    sub_26A505D1C();
    OUTLINED_FUNCTION_2_0();
    *(&v234 + 1) = 0;
    v235 = 0;
  }

  v100 = OUTLINED_FUNCTION_80_2(v99, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v197, v202, v208, v214, v220, v226, v232, v234, *(&v234 + 1), v235, v236, v237);
  OUTLINED_FUNCTION_78_2(v100, v101, v39 + *(v35 + 68));
  sub_26A7A501C();
  if (v236)
  {
    __swift_project_boxed_opaque_existential_1(&v234, v236);
    v102 = OUTLINED_FUNCTION_61_4();
    v103(v102);
    __swift_destroy_boxed_opaque_existential_1(&v234);
    v104 = &protocol witness table for AnyView;
  }

  else
  {
    sub_26A505D1C();
    OUTLINED_FUNCTION_2_0();
    *(&v234 + 1) = 0;
    v235 = 0;
  }

  v105 = OUTLINED_FUNCTION_80_2(v104, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191, v198, v203, v209, v215, v221, v227, v233, v234, *(&v234 + 1), v235, v236, v237);
  OUTLINED_FUNCTION_78_2(v105, v106, v39 + *(v35 + 72));
  v144 = a22;
  v150 = v35;
  if (a23)
  {
    v107 = v228;
    v174 = (v228 | v30) != 0;
  }

  else
  {
    v174 = 0;
    v107 = v228;
  }

  v36 = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7968, &qword_26A8842B8);
  OUTLINED_FUNCTION_80();
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_26A857110;
  *(v108 + 32) = v192;
  *(v108 + 40) = v107;
  *(v108 + 48) = v30;
  v109 = MEMORY[0x277D84F90];
  *&v234 = MEMORY[0x277D84F90];
  v110 = v30;
  v186 = v192;
  v162 = v107;
  v111 = 0;
  v112 = v109;
  while (v111 != 3)
  {
    if (v111 > 2)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v113 = *(v108 + 8 * v111++ + 32);
    if (v113)
    {
      v30 = v113;
      MEMORY[0x26D663CE0]();
      if (*((v234 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v234 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26A851B08();
      }

      v36 = &v234;
      sub_26A851B28();
      v112 = v234;
    }
  }

  swift_setDeallocating();
  sub_26A7A0D74(&qword_2803B7CE0, &unk_26A884990);
  v114 = sub_26A73670C();
  v138 = v110;
  if (v114)
  {
    v115 = v114;
    *&v234 = v109;
    sub_26A7DCDCC(0, v114 & ~(v114 >> 63), 0);
    if ((v115 & 0x8000000000000000) == 0)
    {
      v132 = v28;
      v36 = v234;
      v116 = sub_26A73670C();
      v117 = 0;
      v228 = v112 & 0xFFFFFFFFFFFFFF8;
      v28 = v116 & ~(v116 >> 63);
      while (v28 != v117)
      {
        if ((v112 & 0xC000000000000001) != 0)
        {
          v118 = MEMORY[0x26D6644E0](v117, v112);
        }

        else
        {
          if (v117 >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v118 = *(v112 + 8 * v117 + 32);
        }

        v30 = v118;
        *&v234 = v36;
        v35 = v36[2];
        v119 = v36[3];
        if (v35 >= v119 >> 1)
        {
          sub_26A7DCDCC((v119 > 1), v35 + 1, 1);
          v36 = v234;
        }

        v36[2] = v35 + 1;
        v120 = &v36[3 * v35];
        v120[4] = v30;
        *(v120 + 40) = 1;
        v120[6] = v117;
        if (v117 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_42;
        }

        if (v115 == ++v117)
        {

          v123 = v222;
          v39 = v193;
          goto LABEL_36;
        }
      }

      goto LABEL_41;
    }

    __break(1u);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
    v123 = v222;
LABEL_36:
    if (v174)
    {
      v124 = 4;
    }

    else
    {
      v124 = 0;
    }

    sub_26A799268(v124, v36[2], v121, v122);
    v125 = OUTLINED_FUNCTION_37_15();
    type metadata accessor for FactItemButtonViewModel(v125);
    swift_allocObject();
    v126 = OUTLINED_FUNCTION_183();
    sub_26A79A938(v126, v127, 0, v174);
    v128 = (v39 + *(v150 + 44));
    OUTLINED_FUNCTION_13_44();
    sub_26A7A3CA0();
    v129 = sub_26A84F258();
    v131 = v130;

    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_67_2();
    __swift_destroy_boxed_opaque_existential_1(v123);
    *v128 = v129;
    v128[1] = v131;
    OUTLINED_FUNCTION_27_0();
  }
}

BOOL sub_26A79A65C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      sub_26A4EC5B0(0, &qword_2803AC8F0, 0x277D82BB8);
      return sub_26A851FF8() & 1;
    }

    return 1;
  }

  return (a4 & 1) != 0;
}

BOOL sub_26A79A6E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a2)
  {
    if (a5)
    {
      sub_26A4EC5B0(0, &qword_2803AC8F0, 0x277D82BB8);
      if ((sub_26A851FF8() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if ((a5 & 1) == 0)
  {
    return 0;
  }

  return a3 == a6;
}

uint64_t sub_26A79A7A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_183();
  sub_26A84EC18();

  return v3;
}

double sub_26A79A820()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A79A894()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

uint64_t sub_26A79A938(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778, &unk_26A876570);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;

  v12 = OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel__buttonContentMaxWidth;
  v15[1] = 0;
  sub_26A84EBD8();
  (*(v9 + 32))(v4 + v12, v11, v8);
  swift_beginAccess();
  v15[0] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B79C8, &qword_26A8843C8);
  sub_26A84EBD8();
  swift_endAccess();
  if (a3)
  {
  }

  else
  {
    v13 = *(a1 + 16);

    a3 = sub_26A79904C(0, v13);
  }

  swift_beginAccess();
  v15[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B79D8, &qword_26A8843D0);
  sub_26A84EBD8();
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom) = a4 & 1;
  return v4;
}

uint64_t sub_26A79AB28()
{
  result = sub_26A79A768();
  if (*(result + 16))
  {
    v1 = *(result + 32);
    v2 = *(result + 40);
    sub_26A7A4494(v1, v2);

    sub_26A73E014(v1, v2);
    return v2 ^ 1u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A79AB8C()
{
  v1 = OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel__buttons;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AA0, &qword_26A884670);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel__buttonHiddenStates;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AA8, &unk_26A884678);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel__buttonContentMaxWidth;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778, &unk_26A876570);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_26A79AC90()
{
  v0 = sub_26A79AB8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A79ACE4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for FactItemButtonView(0) + 32);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A79AE38()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v5);
  type metadata accessor for FactItemButtonView(0);
  sub_26A7A501C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A7A4FCC();
  }

  sub_26A851EA8();
  v7 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_26A79B020@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for FactItemButtonView(0);
  sub_26A7A501C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A79B228@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FactItemButtonViewModel(0);
  result = sub_26A84EB88();
  *a2 = result;
  return result;
}

void sub_26A79B268()
{
  OUTLINED_FUNCTION_28_0();
  v129 = v0;
  v2 = v1;
  v139 = type metadata accessor for ButtonElementView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v138 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v137 = &v119 - v7;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D88, &qword_26A884A98);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v135 = (v9 - v10);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  v13 = sub_26A84E158();
  OUTLINED_FUNCTION_15();
  v142 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v123 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF538, &unk_26A864870);
  v19 = OUTLINED_FUNCTION_2_5(v18);
  v122 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v143 = &v119 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v26);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v27);
  v121 = &v119 - v28;
  sub_26A84BBB8();
  OUTLINED_FUNCTION_15();
  v124 = v30;
  v125 = v29;
  MEMORY[0x28223BE20](v29);
  v144 = v31;
  v120 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_225(KeyPath);
  v33 = type metadata accessor for FactItemButtonView(0);
  v34 = v33[5];
  v128 = v2;
  v35 = (v2 + v34);
  if (qword_2803A8A80 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v140 = v13;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
    __swift_project_value_buffer(v36, qword_2803D1A70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
    sub_26A7A501C();
    sub_26A6AEE74(v148);
    memcpy(v35, v148, 0xBFuLL);
    OUTLINED_FUNCTION_12_48();
    sub_26A7A46D4();
    v37 = v33[6];
    if (qword_2803A8AE8 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_2803A8AE8);
    }

    v132 = v23;
    OUTLINED_FUNCTION_24_9(&v149);
    OUTLINED_FUNCTION_24_9(&v147[368]);
    sub_26A7A501C();
    sub_26A6AEE74(v147);
    OUTLINED_FUNCTION_87_1(v150);
    OUTLINED_FUNCTION_87_1(&v147[192]);
    v38 = v128;
    memcpy((v128 + v37), v147, 0x240uLL);
    v39 = (v38 + v33[7]);
    sub_26A54DFFC(v150, v146);
    v40 = v33;
    if (qword_28157E660 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_28157E660);
    }

    v41 = OUTLINED_FUNCTION_54_5(&xmmword_281588758);
    v141 = v42;
    v133 = v41;
    sub_26A7A501C();
    sub_26A6AEE74(v146);
    memcpy(v39, v146, 0xC0uLL);
    v43 = v133;
    v39[12] = v141;
    v39[13] = v43;
    v44 = v150[16];
    v39[14] = v150[15];
    v39[15] = v44;
    v45 = v150[18];
    v39[16] = v150[17];
    v39[17] = v45;
    v46 = v38 + v33[8];
    *v46 = swift_getKeyPath();
    *(v46 + 8) = 0;
    v47 = v33[9];
    *(v38 + v47) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
    swift_storeEnumTagMultiPayload();
    v48 = v33[10];
    *(v38 + v48) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
    swift_storeEnumTagMultiPayload();
    v50 = v124;
    v49 = v125;
    v51 = v124 + 16;
    *&v141 = *(v124 + 16);
    v52 = v120;
    (v141)(v120, v129, v125);
    v130 = v51;
    v126 = *(v50 + 80);
    v53 = (v126 + 16) & ~v126;
    v54 = swift_allocObject();
    v133.n128_u64[0] = *(v50 + 32);
    v131 = (v50 + 32);
    (v133.n128_u64[0])(v54 + v53, v52, v49);
    v127 = v40;
    v55 = OUTLINED_FUNCTION_71_3((v38 + v40[12]));
    v56 = v141;
    (v141)(v55, v129, v49);
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_31_18(v57);
    v59 = v133.n128_u64[0];
    (v133.n128_u64[0])(v58);
    v60 = v40[13];
    v61 = v129;
    v62 = OUTLINED_FUNCTION_71_3((v128 + v60));
    v56(v62, v61, v49);
    v63 = swift_allocObject();
    v64 = OUTLINED_FUNCTION_31_18(v63);
    v59(v64);
    v65 = v128;
    v66 = OUTLINED_FUNCTION_71_3((v128 + v127[14]));
    (v141)(v66, v61, v49);
    v67 = swift_allocObject();
    v68 = OUTLINED_FUNCTION_31_18(v67);
    (v133.n128_u64[0])(v68);
    v69 = v127;
    v70 = OUTLINED_FUNCTION_71_3((v65 + v127[15]));
    (v141)(v70, v129, v49);
    v71 = swift_allocObject();
    v72 = OUTLINED_FUNCTION_31_18(v71);
    (v133.n128_u64[0])(v72);
    v73 = (v128 + v69[16]);
    *v73 = sub_26A7A5548;
    v73[1] = v54;
    v74 = v121;
    sub_26A84BBA8();
    v75 = sub_26A84BD28();
    if (__swift_getEnumTagSinglePayload(v74, 1, v75) == 1)
    {
      sub_26A505D1C();
      v76 = 0;
      v77 = 0;
    }

    else
    {
      v76 = VisualProperty.asAnyView()();
      v78 = sub_26A84BD18();
      (*(*(v75 - 8) + 8))(v74, v75);
      v77 = v78 & 1;
    }

    v13 = v140;
    v79 = v132;
    v81 = v127;
    v80 = v128;
    v82 = v128 + v127[17];
    *v82 = v76;
    *(v82 + 8) = v77;
    v83 = v80 + v81[18];
    *v83 = 0;
    *(v83 + 8) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D90, &qword_26A884AA0);
    v84 = *(v122 + 72);
    v85 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_26A857110;
    v131 = v86;
    v87 = v86 + v85;
    sub_26A84BB78();
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v13);
    sub_26A84BB88();
    *&v141 = v84;
    sub_26A84BB98();
    v144 = (v142 + 32);
    v88 = MEMORY[0x277D84F90];
    v89 = 3;
    v90 = v123;
    do
    {
      v33 = v143;
      sub_26A7A501C();
      sub_26A7A4FCC();
      if (__swift_getEnumTagSinglePayload(v79, 1, v13) == 1)
      {
        sub_26A505D1C();
      }

      else
      {
        v33 = *v144;
        (*v144)(v90, v79, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_26A7A153C(0, v88[2] + 1, 1, v88);
        }

        v92 = v88[2];
        v91 = v88[3];
        v93 = v88;
        if (v92 >= v91 >> 1)
        {
          v93 = sub_26A7A153C((v91 > 1), v92 + 1, 1, v88);
        }

        v93[2] = v92 + 1;
        v88 = v93;
        OUTLINED_FUNCTION_63_2();
        (v33)(v94 + v95 + *(v96 + 72) * v92, v90, v13);
        v79 = v132;
      }

      v87 += v141;
      --v89;
    }

    while (v89);
    swift_setDeallocating();
    sub_26A7A0C04(&qword_2803AF538, &unk_26A864870);
    v35 = v88[2];
    if (!v35)
    {
      break;
    }

    v145 = MEMORY[0x277D84F90];
    sub_26A7DCDCC(0, v35, 0);
    v23 = 0;
    v97 = v145;
    OUTLINED_FUNCTION_63_2();
    v131 = v88 + v98;
    v132 = v35;
    *&v141 = v88[2];
    v130 = v99 + 16;
    v133.n128_u64[0] = v88;
    while (v141 != v23)
    {
      if (v23 >= v88[2])
      {
        goto LABEL_29;
      }

      v100 = v136;
      v101 = *(v136 + 48);
      v143 = v97;
      v102 = v142;
      v103 = *(v142 + 16);
      v104 = v134;
      v103(&v134[v101], &v131[*(v142 + 72) * v23], v13);
      v105 = v135;
      *v135 = v23;
      v106 = *(v100 + 48);
      v107 = *(v102 + 32);
      v108 = v105;
      v107(v105 + v106, &v104[v101], v13);
      v109 = v139;
      v33 = v137;
      v103(&v137[*(v139 + 20)], v108 + v106, v13);
      *v33 = swift_getKeyPath();
      *(v33 + 8) = 0;
      v110 = (v33 + *(v109 + 24));
      *v110 = 0;
      v110[1] = 0;
      sub_26A7A46D4();
      sub_26A7A3CA0();
      v111 = sub_26A851248();
      sub_26A7A55D8();
      sub_26A505D1C();
      v145 = v143;
      v97 = v143;
      v113 = *(v143 + 2);
      v112 = *(v143 + 3);
      if (v113 >= v112 >> 1)
      {
        sub_26A7DCDCC((v112 > 1), v113 + 1, 1);
        v97 = v145;
      }

      *(v97 + 16) = v113 + 1;
      v114 = v97 + 24 * v113;
      *(v114 + 32) = v111;
      *(v114 + 40) = 0;
      *(v114 + 48) = v23++;
      v35 = v132;
      v88 = v133.n128_u64[0];
      v13 = v140;
      if (v132 == v23)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    OUTLINED_FUNCTION_18_1(&qword_2803A8A80);
  }

  v97 = MEMORY[0x277D84F90];
LABEL_27:
  type metadata accessor for FactItemButtonViewModel(0);
  swift_allocObject();
  sub_26A79A938(v97, 0, 0, 0);
  v115 = (v128 + v127[11]);
  OUTLINED_FUNCTION_13_44();
  sub_26A7A3CA0();
  OUTLINED_FUNCTION_183();
  v116 = sub_26A84F258();
  v118 = v117;
  (*(v124 + 8))(v129, v125);
  *v115 = v116;
  v115[1] = v118;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A79BFA8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26A84B888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84BB48();
  v7 = sub_26A6E3188(a2);
  return (*(v4 + 8))(v6, v3, v7);
}

void sub_26A79C08C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_26A84AFA8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21_23();
  v2();
  v14 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v0, 1, v14) == 1)
  {
    sub_26A505D1C();
    sub_26A504324(v31);
    v15 = v4;
  }

  else
  {
    sub_26A84B858();
    v16 = _s10SnippetKit11TextElementV0A2UIE4view4bold6italic05SwiftE00C0VSb_SbtF_0(0, 0);
    v28 = v17;
    v29 = v16;
    v19 = v18;
    v21 = v20;
    (*(v7 + 8))(v11, v5);
    v30 = v4;
    v22 = v19 & 1;
    v23 = TextProperty.asAnyView()();
    v24 = sub_26A84B878();
    KeyPath = swift_getKeyPath();
    v35 = 0;
    v26 = swift_getKeyPath();
    v34 = 0;
    v27 = swift_getKeyPath();
    v33 = 0;
    v32 = 1;
    (*(*(v14 - 8) + 8))(v0, v14);
    v31[0] = KeyPath;
    LOBYTE(v31[1]) = 0;
    v31[2] = v26;
    LOBYTE(v31[3]) = 0;
    v31[4] = v27;
    LOBYTE(v31[5]) = 0;
    v31[6] = v29;
    v31[7] = v28;
    v31[8] = v22;
    v31[9] = v21;
    v31[10] = v23;
    LOBYTE(v31[11]) = v24 & 1;
    memset(&v31[12], 0, 128);
    LOBYTE(v31[28]) = 1;
    memset(&v31[29], 0, 18);
    nullsub_1();
    v15 = v30;
  }

  memcpy(v15, v31, 0xFAuLL);
  OUTLINED_FUNCTION_27_0();
}

void *sub_26A79C328@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_26A84BB58();
  v7 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_26A505D1C();
    sub_26A504324(v10);
  }

  else
  {
    v8 = sub_26A6E3398(v11, a2);
    (*(*(v7 - 8) + 8))(v6, v7, v8);
    memcpy(v10, v11, 0xFAuLL);
    nullsub_1();
  }

  return memcpy(a1, v10, 0xFAuLL);
}

void *sub_26A79C478@<X0>(void *a2@<X8>)
{
  sub_26A7A501C();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = OUTLINED_FUNCTION_13_3();
    v4(v3);
    nullsub_1();
    memcpy(a2, __src, 0xFAuLL);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_26A505D1C();
    sub_26A504324(__src);
    return memcpy(a2, __src, 0xFAuLL);
  }
}

uint64_t sub_26A79C554(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = OUTLINED_FUNCTION_13_3();
  return v3(v2);
}

uint64_t FactItemButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_23();
  sub_26A79AE38();
  sub_26A79C848(v21);
  sub_26A79ACE4();
  sub_26A79B020(v6);
  v9 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  v20 = v1;
  sub_26A4CF1E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26A68CCBC;
  *(v10 + 24) = 0;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7970, &unk_26A8842C0) + 36);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v13 = *(v12 + 40);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v12 + 44);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *v11 = sub_26A4D1F7C;
  *(v11 + 8) = v10;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7978, &qword_26A8842F8) + 36)) = 42;
  KeyPath = swift_getKeyPath();
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  v16 = byte_2803B0441;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7980, &qword_26A884328);
  v18 = a1 + *(result + 36);
  *v18 = KeyPath;
  *(v18 + 8) = v16;
  return result;
}

void sub_26A79C848(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  if (byte_2803B0441 == 1 && (v4 = sub_26A79ACE4(), sub_26A61B05C(v4, &unk_287B131A0)))
  {
    sub_26A4EC5B0(0, &qword_28157D880, 0x277CCAC38);
    switch(sub_26A63CD18(v5))
    {
      case 1u:
      case 2u:
      case 3u:
        v6 = sub_26A852598();

        if ((v6 & 1) == 0)
        {
          goto LABEL_9;
        }

        break;
      case 4u:
        goto LABEL_9;
      default:

        break;
    }

    v7 = type metadata accessor for FactItemButtonView(0);
    v8 = v2 + *(v7 + 20);
    v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28);
    v10 = type metadata accessor for FactItemConstants(0);
    v11 = 0;
    v12 = v2 + *(v7 + 28);
    v13.f64[0] = *(v12 + 192) + -2.0;
    v14.f64[0] = *(v12 + 208) + -2.0;
    v13.f64[1] = *(v9 + *(v10 + 60));
    v14.f64[1] = v13.f64[1];
  }

  else
  {
LABEL_9:
    if (qword_2803A8BF0 != -1)
    {
      swift_once();
    }

    v13 = 0uLL;
    if (byte_2803B0440 == 1)
    {
      v15 = sub_26A79ACE4();
      if (sub_26A61B05C(v15, &unk_287B13090))
      {
        v16 = type metadata accessor for FactItemButtonView(0);
        v11 = 0;
        v17 = (v1 + *(v16 + 28));
        __asm { FMOV            V0.2D, #10.0 }

        v13 = vaddq_f64(v17[12], _Q0);
        v14 = vaddq_f64(v17[13], _Q0);
      }

      else
      {
        v11 = 1;
        v14 = 0uLL;
        v13 = 0uLL;
      }
    }

    else
    {
      v11 = 1;
      v14 = 0uLL;
    }
  }

  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v11;
}

uint64_t sub_26A79CAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A97C0, &qword_26A8557A0);
  MEMORY[0x28223BE20](v41);
  v33 = (v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v35 = v32 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A97B0, &qword_26A855798);
  MEMORY[0x28223BE20](v38);
  v34 = (v32 - v6);
  v7 = sub_26A84F3A8();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B00, &qword_26A8846D0);
  MEMORY[0x28223BE20](v39);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B08, &qword_26A8846D8);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9790, &unk_26A8846E0);
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A97A0, &qword_26A855790);
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  v15 = a1;
  v16 = sub_26A79ACE4();
  if (sub_26A61B05C(v16, &unk_287B13068))
  {
    *v14 = sub_26A84FBF8();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B20, &qword_26A884700);
    sub_26A79D3DC(a1, &v14[*(v17 + 44)]);
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A506A30();
    sub_26A506A30();
    sub_26A84FDF8();
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A4D43E8();
    sub_26A506A30();
    sub_26A84FDF8();
    sub_26A505D1C();
  }

  else
  {
    v32[1] = v12;
    v32[2] = v11;
    sub_26A79B020(v9);
    v18 = sub_26A84F388();
    (*(v36 + 8))(v9, v37);
    if (v18)
    {
      v19 = sub_26A84FC08();
      v20 = v15 + *(type metadata accessor for FactItemButtonView(0) + 20);
      v21 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 32);
      v22 = v34;
      *v34 = v19;
      v22[1] = v21;
      *(v22 + 16) = 0;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B18, &qword_26A8846F8);
      sub_26A79E124(0, v22 + *(v23 + 44));
      sub_26A7A501C();
      swift_storeEnumTagMultiPayload();
      sub_26A506A30();
      sub_26A506A30();
      sub_26A84FDF8();
      sub_26A7A501C();
      swift_storeEnumTagMultiPayload();
      sub_26A4D43E8();
      sub_26A506A30();
      sub_26A84FDF8();
      sub_26A505D1C();
    }

    else
    {
      v24 = type metadata accessor for FactItemButtonView(0);
      if (*(v15 + *(v24 + 68)))
      {
        if (qword_28157FCB0 != -1)
        {
          swift_once();
        }

        v25 = qword_2815889E0;
      }

      else
      {
        v25 = sub_26A84FA78();
      }

      v26 = v15 + *(v24 + 20);
      v27 = *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 32);
      v28 = v33;
      *v33 = v25;
      v28[1] = v27;
      *(v28 + 16) = 0;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B10, &qword_26A8846F0) + 44);
      v30 = sub_26A79DF68();
      sub_26A79E124(v30 & 1, v28 + v29);
      sub_26A7A4FCC();
      sub_26A7A501C();
      swift_storeEnumTagMultiPayload();
      sub_26A4D43E8();
      sub_26A506A30();
      sub_26A84FDF8();
    }
  }

  return sub_26A505D1C();
}

uint64_t sub_26A79D290()
{
  v0 = sub_26A79ACE4();
  if (!sub_26A61B05C(v0, &unk_287B131A0))
  {
    return 0;
  }

  sub_26A4EC5B0(0, &qword_28157D880, 0x277CCAC38);
  v2 = sub_26A63CD18(v1);
  v3 = 0;
  switch(v2)
  {
    case 3:

      goto LABEL_5;
    case 4:
      return v3;
    default:
      v4 = sub_26A852598();

      if ((v4 & 1) == 0)
      {
        return 0;
      }

LABEL_5:
      if (qword_2803A8BF0 != -1)
      {
        swift_once();
      }

      v3 = byte_2803B0440;
      break;
  }

  return v3;
}

uint64_t sub_26A79D3DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B28, &qword_26A884708);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5 - 8];
  v7 = sub_26A84B058();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *(a1 + *(type metadata accessor for FactItemButtonView(0) + 48));
  v12 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v12, v10);
  v11(v18, v10);
  (*(v8 + 8))(v10, v7);
  v13 = sub_26A8504A8();
  KeyPath = swift_getKeyPath();
  memcpy(v17, v18, 0xFAuLL);
  sub_26A79D680(v6);
  sub_26A7A501C();
  memcpy(v19, v17, 0x100uLL);
  v19[32] = KeyPath;
  v19[33] = v13;
  memcpy(v16, v19, 0x110uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B30, &unk_26A884740);
  sub_26A7A501C();
  sub_26A7A501C();
  sub_26A505D1C();
  sub_26A505D1C();
  memcpy(v20, v17, sizeof(v20));
  v21 = KeyPath;
  v22 = v13;
  return sub_26A505D1C();
}

uint64_t sub_26A79D680@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B38, &qword_26A884750);
  MEMORY[0x28223BE20](v39);
  v40 = &v38 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B40, &qword_26A884758);
  MEMORY[0x28223BE20](v50);
  v41 = &v38 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B48, &qword_26A884760);
  MEMORY[0x28223BE20](v47);
  v49 = &v38 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B50, &qword_26A884768);
  MEMORY[0x28223BE20](v48);
  v42 = &v38 - v6;
  v7 = sub_26A84B058();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0920, &qword_26A884770);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B58, &qword_26A884778);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B60, &unk_26A884780);
  MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v44 = &v38 - v23;
  v24 = *(v1 + *(type metadata accessor for FactItemButtonView(0) + 44) + 8);
  v25 = *(v24 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
  sub_26A79F8CC(v2, *(v24 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom), v16);
  sub_26A79AB28();
  v52 = v2;
  v53 = v25;
  v46 = v19;
  sub_26A607670();
  sub_26A505D1C();
  v43 = v25;
  if ((v25 & 1) != 0 || (v26 = sub_26A79ACE4(), VRXIdiom.idiom.getter(v26, v13), (*(v8 + 104))(v10, *MEMORY[0x277D62A20], v7), sub_26A7A3CA0(), sub_26A851A48(), sub_26A851A48(), v27 = *(v8 + 8), v27(v10, v7), v27(v13, v7), v58[0] == v56[0]))
  {
    KeyPath = swift_getKeyPath();
    v29 = swift_getKeyPath();
    if (qword_2803A8AE8 != -1)
    {
      swift_once();
    }

    memcpy(v56, qword_2803D1B00, sizeof(v56));
    memcpy(&v55[368], qword_2803D1B00, 0xD0uLL);
    sub_26A7A501C();
    sub_26A6AEE74(v55);
    memcpy(v57, &v55[400], sizeof(v57));
    memcpy(&v55[192], &v55[400], 0xB0uLL);
    v60 = 0;
    v59 = 0;
    memcpy(v58 + 7, v55, 0x240uLL);
    v30 = v42;
    sub_26A7A501C();
    v31 = &v30[*(v48 + 36)];
    *v31 = KeyPath;
    v31[8] = v60;
    *(v31 + 2) = v29;
    v31[24] = v59;
    memcpy(v31 + 25, v58, 0x247uLL);
    v31[608] = 1;
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A54DFFC(v57, &v54);
    sub_26A7A44AC();
    sub_26A7A506C(&qword_2803B7B78, &qword_2803B7B40, &qword_26A884758, sub_26A7A4648);
    sub_26A84FDF8();
    sub_26A505D1C();
  }

  else
  {
    sub_26A7A066C();
    sub_26A851468();
    sub_26A84F628();
    v32 = v40;
    sub_26A7A501C();
    memcpy(&v32[*(v39 + 36)], v58, 0x70uLL);
    v33 = v41;
    sub_26A7A4FCC();
    *&v33[*(v50 + 36)] = 1;
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A7A44AC();
    sub_26A7A506C(&qword_2803B7B78, &qword_2803B7B40, &qword_26A884758, sub_26A7A4648);
    sub_26A84FDF8();
    sub_26A505D1C();
  }

  sub_26A505D1C();
  sub_26A7A4FCC();
  v34 = v43 ^ 1;
  v35 = v51;
  sub_26A7A4FCC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B28, &qword_26A884708);
  v37 = (v35 + *(result + 36));
  *v37 = v34;
  v37[1] = 0;
  return result;
}

uint64_t sub_26A79DF68()
{
  v1 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = *(v0 + *(type metadata accessor for FactItemButtonView(0) + 44) + 8);
  v12 = *(sub_26A79A768() + 16);

  if (v12 < 2 || (*(v11 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom) & 1) != 0)
  {
    v13 = 0;
  }

  else
  {
    v14 = sub_26A79ACE4();
    VRXIdiom.idiom.getter(v14, v10);
    (*(v3 + 104))(v7, *MEMORY[0x277D629F0], v1);
    sub_26A7A3CA0();
    v15 = sub_26A851758();
    v16 = *(v3 + 8);
    v16(v7, v1);
    v16(v10, v1);
    v13 = v15 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_26A79E124@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v97 = a1;
  v103 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C60, &qword_26A8848F8);
  MEMORY[0x28223BE20](v85);
  v86 = &v79 - v3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C68, &qword_26A884900);
  MEMORY[0x28223BE20](v101);
  v84 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C70, &qword_26A884908);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v79 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B28, &qword_26A884708);
  MEMORY[0x28223BE20](v90);
  v82 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = &v79 - v13;
  MEMORY[0x28223BE20](v14);
  v80 = &v79 - v15;
  v16 = sub_26A84B058();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for FactItemStandardLayout(0);
  MEMORY[0x28223BE20](v94);
  v87 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C78, &qword_26A884910);
  MEMORY[0x28223BE20](v96);
  v99 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v79 - v23;
  MEMORY[0x28223BE20](v24);
  v98 = &v79 - v25;
  v26 = type metadata accessor for FactItemButtonView(0);
  v27 = v26[12];
  v88 = v2 + v26[11];
  v89 = *(v88 + 8);
  v104 = *(v89 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
  v28 = *(v2 + v27);
  v29 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v29, v19);
  v28(v112, v19);
  v30 = *(v17 + 8);
  v31 = v16;
  v30(v19, v16);
  v32 = *(v2 + v26[13]);
  v33 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v33, v19);
  v32(v111, v19);
  v30(v19, v31);
  v34 = *(v2 + v26[14]);
  v35 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v35, v19);
  v34(v110, v19);
  v30(v19, v31);
  v36 = *(v2 + v26[15]);
  v37 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v37, v19);
  v36(v109, v19);
  v30(v19, v31);
  v38 = *(v2 + v26[16]);
  v39 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v39, v19);
  v38(v108, v19);
  v30(v19, v31);
  v40 = v26[17];
  v41 = v26[18];
  v79 = v26;
  v42 = (v2 + v40);
  v43 = *v42;
  v91 = *(v42 + 8);
  v44 = *(v2 + v41);
  v93 = *(v2 + v41 + 8);

  v92 = v43;

  v45 = 0;
  if (v104 == 1)
  {
    sub_26A79D680(v80);
    sub_26A7A501C();
    sub_26A7A506C(&qword_2803B7C88, &qword_2803B7B28, &qword_26A884708, sub_26A7A50EC);
    v45 = sub_26A851248();
    sub_26A505D1C();
  }

  v90 = v45;
  type metadata accessor for FactItemButtonViewModel(0);
  sub_26A7A3CA0();
  sub_26A84F268();
  swift_getKeyPath();
  sub_26A84F278();

  v88 = __src[1];
  v89 = __src[0];
  v46 = __src[2];
  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  __swift_project_value_buffer(v47, qword_2803D1A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v48 = v87;
  sub_26A7A501C();
  sub_26A6AEE74(v113);
  memcpy(v48, v113, 0xBFuLL);
  sub_26A7A46D4();
  v49 = v94;
  v50 = &v48[*(v94 + 20)];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  v51 = &v48[v49[6]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = v49[7];
  *&v48[v52] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v53 = &v48[v49[18]];
  v105 = 0;
  sub_26A851048();
  v54 = v107;
  *v53 = v106;
  *(v53 + 1) = v54;
  v55 = &v48[v49[19]];
  v105 = 0;
  sub_26A851048();
  v56 = v107;
  *v55 = v106;
  *(v55 + 1) = v56;
  memcpy(&v48[v49[8]], v112, 0xFAuLL);
  memcpy(&v48[v49[9]], v111, 0xFAuLL);
  memcpy(&v48[v49[10]], v110, 0xFAuLL);
  memcpy(&v48[v49[11]], v109, 0xFAuLL);
  memcpy(&v48[v49[12]], v108, 0xFAuLL);
  v57 = &v48[v49[13]];
  *v57 = v92;
  v57[8] = v91;
  v58 = &v48[v49[14]];
  *v58 = v44;
  v58[8] = v93;
  v48[v49[15]] = v97 & 1;
  v59 = v89;
  *&v48[v49[16]] = v90;
  v60 = &v48[v49[17]];
  v61 = v88;
  *v60 = v59;
  *(v60 + 1) = v61;
  *(v60 + 2) = v46;
  sub_26A851448();
  v62 = 1;
  sub_26A84F628();
  v63 = v95;
  sub_26A7A4F78();
  memcpy(&v63[*(v96 + 36)], __src, 0x70uLL);
  sub_26A7A4FCC();
  v65 = v100;
  v64 = v101;
  if ((v104 & 1) == 0)
  {
    sub_26A79D680(v82);
    v66 = sub_26A8502A8();
    sub_26A79D290();
    sub_26A84ED48();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = v86;
    sub_26A7A4FCC();
    v76 = v84;
    v77 = &v75[*(v85 + 36)];
    *v77 = v66;
    *(v77 + 1) = v68;
    *(v77 + 2) = v70;
    *(v77 + 3) = v72;
    *(v77 + 4) = v74;
    v77[40] = 0;
    sub_26A7A4FCC();
    *&v76[*(v64 + 36)] = 1;
    sub_26A7A4FCC();
    sub_26A7A4FCC();
    v62 = 0;
  }

  __swift_storeEnumTagSinglePayload(v65, v62, 1, v64);
  sub_26A7A501C();
  sub_26A7A501C();
  sub_26A7A501C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C80, &unk_26A884940);
  sub_26A7A501C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A79ECDC(void *a1, char a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = *(a4 + *(type metadata accessor for FactItemButtonView(0) + 44) + 8);
  result = sub_26A79A790();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(result + 16) <= a3)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v11 = *(result + a3 + 32);

  if (v11 == 1)
  {
    v36 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BE0, &unk_26A884840);
    sub_26A7A4954();
    return sub_26A84FDF8();
  }

  else
  {
    if (a2)
    {
      v12 = *(v9 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
      if (a5 == 1)
      {
        v12 = 0;
      }

      v15 = v12;
      type metadata accessor for FactItemButtonViewModel(0);
      sub_26A7A3CA0();
      v14 = a1;
      sub_26A84F268();
      swift_getKeyPath();
      sub_26A84F278();

      v20[0] = v37;
      v20[1] = v38;
      v20[2] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BE8, &unk_26A884878);
      sub_26A506A30();
      sub_26A851298();

      KeyPath = swift_getKeyPath();
      v22 = 0;
      swift_unknownObjectWeakInit();
      v23 = swift_getKeyPath();
      v24 = 0;
      v13 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE10, &qword_26A862AB0);
      sub_26A851048();
      v25 = v16;
      sub_26A851048();
      v26 = v16;
      sub_26A851048();
      v27 = v16;
      v31 = v13;
      v32 = a5;
      v33 = v15;
      v34 = 1;
      v28 = v17;
      v29 = v18;
      v30 = v19;
      sub_26A5A44A4(&KeyPath, v20);
      sub_26A5376B0(v20, &KeyPath);
      v35 = 0;
      sub_26A53770C();
      sub_26A84FDF8();
      sub_26A73E014(a1, 1);
      sub_26A537760(v20);
    }

    else
    {
      KeyPath = a1;
      v35 = 1;
      sub_26A53770C();

      sub_26A84FDF8();
    }

    sub_26A7A501C();
    v36 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BE0, &unk_26A884840);
    sub_26A7A4954();
    sub_26A84FDF8();
    return sub_26A505D1C();
  }
}

uint64_t sub_26A79F138()
{
  v0 = type metadata accessor for FactItemButtonView(0);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A79A768();
  swift_getKeyPath();
  sub_26A7A46D4();
  swift_allocObject();
  sub_26A7A4F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B79C8, &qword_26A8843C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BA0, &qword_26A884828);
  sub_26A506A30();
  sub_26A7A478C();
  return sub_26A8512F8();
}

uint64_t sub_26A79F320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  result = sub_26A79ECDC(*a1, *(a1 + 8), v4, a2, 0);
  v6 = __OFADD__(v4, 1);
  v7 = v4 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    result = swift_getKeyPath();
    *(a3 + 128) = result;
    *(a3 + 136) = v7;
  }

  return result;
}

uint64_t sub_26A79F384(uint64_t a1)
{
  v1 = type metadata accessor for FactItemButtonView(0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_26A79A768();

  swift_getKeyPath();
  sub_26A7A46D4();
  swift_allocObject();
  sub_26A7A4F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B08, &qword_26A878760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C48, &qword_26A8848E8);
  sub_26A6ED5A0();
  sub_26A506A30();
  return sub_26A8512F8();
}

uint64_t sub_26A79F574@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for FactItemButtonView(0);
  v7 = *(*(a2 + *(v6 + 44) + 8) + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
  v8 = a2 + *(v6 + 20);
  v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28);
  v10 = 40;
  if (v7)
  {
    v10 = 48;
  }

  v11 = *(v9 + v10);
  *a3 = sub_26A84FA78();
  *(a3 + 8) = v11;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C58, &qword_26A8848F0);
  return sub_26A79F638(a2, v5);
}

uint64_t sub_26A79F638(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FactItemButtonView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_26A79A768();
  swift_getKeyPath();
  sub_26A7A46D4();
  v6 = (v5 + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  sub_26A7A4F78();
  *(v7 + v6) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B79C8, &qword_26A8843C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BA0, &qword_26A884828);
  sub_26A506A30();
  sub_26A7A478C();
  return sub_26A8512F8();
}

uint64_t sub_26A79F834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 < a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 4;
  }

  result = sub_26A79ECDC(*a1, *(a1 + 8), v5, a2, v6);
  v8 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    result = sub_26A7A4FCC();
    *(a4 + 128) = KeyPath;
    *(a4 + 136) = v8;
  }

  return result;
}

uint64_t sub_26A79F8CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v29[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0958, &qword_26A869ED0);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B88, &qword_26A8847F0);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0948, &unk_26A884790);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  if (sub_26A79FD1C())
  {
    v14 = sub_26A84FC08();
    v15 = type metadata accessor for FactItemButtonView(0);
    v16 = *(*(a1 + *(v15 + 44) + 8) + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
    v17 = a1 + *(v15 + 20);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
    v19 = 40;
    if (v16)
    {
      v19 = 48;
    }

    v20 = *(v17 + *(v18 + 28) + v19);
    *v12 = v14;
    *(v12 + 1) = v20;
    v12[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B98, &qword_26A884800);
    sub_26A79F138();
    sub_26A7A4FCC();
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A506A30();
    sub_26A506A30();
    sub_26A84FDF8();
  }

  else
  {
    v21 = type metadata accessor for FactItemButtonView(0);
    v22 = *(*(a1 + *(v21 + 44) + 8) + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
    v23 = a1 + *(v21 + 20);
    v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28);
    v25 = 40;
    if (v22)
    {
      v25 = 48;
    }

    v26 = *(v24 + v25);
    *v7 = sub_26A84FA78();
    *(v7 + 1) = v26;
    v7[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B90, &qword_26A8847F8);
    sub_26A79FE30(a1, a2 & 1, &v7[*(v27 + 44)]);
    sub_26A7A4FCC();
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A506A30();
    sub_26A506A30();
    sub_26A84FDF8();
  }

  return sub_26A505D1C();
}

BOOL sub_26A79FD1C()
{
  v1 = sub_26A84F3A8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  if (*(*(v0 + *(type metadata accessor for FactItemButtonView(0) + 44) + 8) + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom) == 1 && (sub_26A79B020(v7), v8 = sub_26A84F388(), (*(v3 + 8))(v7, v1), (v8 & 1) != 0))
  {
    v9 = sub_26A79ACE4();
    return sub_26A61B05C(v9, &unk_287B13B08);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A79FE30@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v32 = a3;
  v33 = a1;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BF8, &qword_26A884888);
  MEMORY[0x28223BE20](v28);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C00, &qword_26A884890);
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C08, &qword_26A884898);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C10, &qword_26A8848A0);
  MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  v31 = a2;
  if (a2)
  {
    *v14 = sub_26A850208();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C40, &unk_26A8848B8);
    sub_26A79F384(v33);
  }

  else
  {
    sub_26A79F138();
    sub_26A851468();
    sub_26A84F028();
    v17 = &v10[*(v28 + 36)];
    v18 = v37;
    *v17 = v36;
    *(v17 + 1) = v18;
    *(v17 + 2) = v38;
  }

  sub_26A7A501C();
  swift_storeEnumTagMultiPayload();
  sub_26A506A30();
  sub_26A7A49E0();
  sub_26A84FDF8();
  sub_26A505D1C();
  v19 = sub_26A79ACE4();
  v20 = v29;
  VRXIdiom.idiom.getter(v19, v29);
  v21 = v30;
  (*(v5 + 104))(v30, *MEMORY[0x277D62A20], v4);
  sub_26A7A3CA0();
  sub_26A851A48();
  sub_26A851A48();
  v22 = *(v5 + 8);
  v22(v21, v4);
  v22(v20, v4);
  v23 = (v35 == v34) & v31;
  sub_26A7A501C();
  v24 = v32;
  *v32 = 0;
  *(v24 + 4) = 256;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C38, &qword_26A8848B0);
  sub_26A7A501C();
  v26 = v24 + *(v25 + 64);
  *v26 = 0;
  v26[8] = v23;
  v26[9] = v23 ^ 1;
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7A03A8(uint64_t a1, uint64_t a2, char a3)
{
  v17[0] = a1;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = type metadata accessor for RFButtonStyle(0);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v14, v10);
  (*(v5 + 104))(v7, *MEMORY[0x277D629F0], v4);
  sub_26A7A3CA0();
  sub_26A851A48();
  sub_26A851A48();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  if (*&v18[0] == v17[1])
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    static PrimitiveButtonStyle<>.rfButton(margin:)(v18, v13);
  }

  else if (a3)
  {
    static PrimitiveButtonStyle<>.rfButton.getter(v13);
  }

  else
  {
    static PrimitiveButtonStyle<>.rfButtonCircularIconOnly.getter(v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0920, &qword_26A884770);
  sub_26A6091D0();
  sub_26A7A3CA0();
  sub_26A850978();
  return sub_26A7A55D8();
}

double sub_26A7A066C()
{
  v1 = type metadata accessor for FactItemButtonView(0);
  v2 = *(v0 + *(v1 + 24) + 312);
  v3 = *(sub_26A79A768() + 16);

  v4 = v0 + *(v1 + 20);
  v5 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 40);
  v6 = *(sub_26A79A768() + 16);

  return v2 * v3 + v5 * (v6 - 1);
}

void sub_26A7A0724()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v48 = v3;
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v47 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = sub_26A84BBB8();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = type metadata accessor for FactItemButtonView(0);
  v20 = OUTLINED_FUNCTION_79(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA50, &qword_26A856B30);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - v26;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA58, &qword_26A856B38);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  v51 = v29 - v30;
  v32 = MEMORY[0x28223BE20](v31);
  (*(v14 + 16))(v18, v1, v12, v32);
  v50 = v23;
  sub_26A79B268();
  v53 = v1;
  v33 = v49;
  sub_26A84BB68();
  sub_26A7A4FCC();
  if (__swift_getEnumTagSinglePayload(v10, 1, v33) == 1)
  {
    sub_26A505D1C();
    KeyPath = swift_getKeyPath();
    v35 = &v27[*(v24 + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v37 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
    *v35 = KeyPath;
  }

  else
  {
    v38 = v47;
    v39 = *(v48 + 32);
    v39(v47, v10, v33);
    v40 = swift_getKeyPath();
    v41 = &v27[*(v24 + 36)];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v39(v41 + v42, v38, v33);
    v43 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v41 + v42, 0, 1, v43);
    *v41 = v40;
  }

  sub_26A7A4F78();
  v44 = sub_26A84BB18();
  sub_26A4DCB1C(v44, v45);

  sub_26A505D1C();
  sub_26A84BB28();

  sub_26A7A501C();
  sub_26A7A51A4();
  sub_26A851248();
  sub_26A505D1C();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7A0C04(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_26_17();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_26A7A0C68()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_26_17();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A7A0CA4()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_26_17();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A7A0CF8()
{
  sub_26A84B1D8();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_26_17();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A7A0D74(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_26_17();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

void sub_26A7A0DD0()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1880, &qword_26A884A60);
    v8 = OUTLINED_FUNCTION_58_5(v7);
    OUTLINED_FUNCTION_25_24(v8);
    OUTLINED_FUNCTION_44_9(v9 / 72);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_43_7();
  v12 = 72 * v3;
  if (v1)
  {
    if (v2 != v0 || &v11[v12] <= v10)
    {
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, v12);
  }
}

void sub_26A7A0EB0()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    OUTLINED_FUNCTION_86_1(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_2_97();
    v13[2] = v3;
    v13[3] = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v13 != v0 || &v16[16 * v3] <= v15)
    {
      memmove(v15, v16, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v3);
  }
}

void sub_26A7A0F68()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DD0, &qword_26A884B70);
    v7 = OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_38_11(v7);
    OUTLINED_FUNCTION_18_29(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A1034()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0, &qword_26A884B50);
    v8 = OUTLINED_FUNCTION_58_5(v7);
    OUTLINED_FUNCTION_25_24(v8);
    OUTLINED_FUNCTION_44_9(v9 / 48);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v2 != v0 || &v11[48 * v3] <= v10)
    {
      memmove(v10, v11, 48 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A110C()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACB38, &qword_26A85C0E0);
    v8 = OUTLINED_FUNCTION_53_6(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_2_97();
    v8[2] = v2;
    v8[3] = v9;
  }

  OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    OUTLINED_FUNCTION_62_4();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A11D4()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB908, &qword_26A884590);
    v7 = OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_38_11(v7);
    OUTLINED_FUNCTION_18_29(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A12C4()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2870, &unk_26A880190);
    v7 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_20_30();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v3] <= v9)
    {
      memmove(v9, v10, 32 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 32 * v3);
  }
}

void sub_26A7A138C()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7A30, &unk_26A884508);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for SmartDialogCollatableItem(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for SmartDialogCollatableItem, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A1464()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7A28, &unk_26A8844F8);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for SmartDialogAnimationChunk(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for SmartDialogAnimationChunk, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void *sub_26A7A153C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26A7A3644(v9, a2, &unk_2803B7D98, &unk_26A884AA8, MEMORY[0x277D636B8]);
  v11 = *(sub_26A84E158() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_26A7A3B18(a4 + v12, v9, v10 + v12, MEMORY[0x277D636B8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26A7A1684()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A90, &qword_26A884578);
    v7 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_2_97();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  v11 = 16 * v3;
  if (v1)
  {
    if (v7 != v0 || &v10[v11] <= v9)
    {
      memmove(v9, v10, v11);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v11);
  }
}

void sub_26A7A1748()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F0, &unk_26A8592F0);
    v7 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_19_27();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_26A7A1824()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AE0, &qword_26A8846B0);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_38_11(v7);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v8 / 120);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    if (v3 != v0 || &v10[120 * v2] <= v9)
    {
      memmove(v9, v10, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A1910()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7CC0, &unk_26A884970);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for AnyComponentViewConverter(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for AnyComponentViewConverter, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A19E8()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &qword_2803B7CC8, &qword_26A886570);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for RichTextView.Tokenizer.Token(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for RichTextView.Tokenizer.Token, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A1AE4()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7CF0, &unk_26A8849B0);
  OUTLINED_FUNCTION_37_15();
  sub_26A84AB98();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277CC9260], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A1BBC()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &qword_2803AD258, &unk_26A8849D0);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for TableManager.CardSectionTableDefinition(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for TableManager.CardSectionTableDefinition, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A1CA8()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    OUTLINED_FUNCTION_86_1(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_19_27();
    v13[2] = v3;
    v13[3] = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v13 != v0 || &v16[8 * v3] <= v15)
    {
      memmove(v15, v16, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v3);
  }
}

void sub_26A7A1D60()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AB0, &qword_26A884688);
    v7 = OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_38_11(v7);
    OUTLINED_FUNCTION_18_29(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 32 * v2 <= (v3 + 32))
    {
      memmove((v3 + 32), (v0 + 32), 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AB8, &qword_26A884690);
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A1E7C()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AD0, &qword_26A8846A8);
    v8 = OUTLINED_FUNCTION_53_6(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_2_97();
    v8[2] = v2;
    v8[3] = v9;
  }

  OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    OUTLINED_FUNCTION_62_4();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A1F44()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D68, &qword_26A884A78);
    v8 = OUTLINED_FUNCTION_58_5(v7);
    OUTLINED_FUNCTION_25_24(v8);
    OUTLINED_FUNCTION_44_9(v9 / 24);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v2 != v0 || &v11[24 * v3] <= v10)
    {
      memmove(v10, v11, 24 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A2040()
{
  OUTLINED_FUNCTION_76_1();
  if (v6)
  {
    OUTLINED_FUNCTION_4_81();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_32_11();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_86_1(v4, v5, v6, v7, v8, v9);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[5 * v13 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_77_0();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_77_0();
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A216C()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7A88, &unk_26A884570);
  OUTLINED_FUNCTION_37_15();
  sub_26A84E4A8();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277D63810], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2244()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7A80, &unk_26A884568);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for TableRowWatchCellViewModel(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for TableRowWatchCellViewModel, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A231C()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF750, &qword_26A865320);
    v8 = OUTLINED_FUNCTION_53_6(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_2_97();
    v8[2] = v2;
    v8[3] = v9;
  }

  OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    OUTLINED_FUNCTION_62_4();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A23E4()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DF8, &qword_26A884C38);
    v7 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_2_97();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_26A7A24AC()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5898, &qword_26A87B6F0);
    v8 = OUTLINED_FUNCTION_53_6(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_2_97();
    v8[2] = v2;
    v8[3] = v9;
  }

  OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    OUTLINED_FUNCTION_62_4();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A2598()
{
  OUTLINED_FUNCTION_8_64();
  if (v2)
  {
    OUTLINED_FUNCTION_7_69();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_40_11();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_56_3();
  sub_26A7A3644(v5, v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for TableCell(v10);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for TableCell, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A268C()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7CB8, &unk_26A886430);
  OUTLINED_FUNCTION_37_15();
  sub_26A84E388();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277D637C0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2764()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7E10, &qword_26A884C58);
    v8 = OUTLINED_FUNCTION_58_5(v7);
    OUTLINED_FUNCTION_25_24(v8);
    OUTLINED_FUNCTION_44_9(v9 / 56);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v2 != v0 || &v11[56 * v3] <= v10)
    {
      memmove(v10, v11, 56 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 56 * v3);
  }
}

void sub_26A7A283C()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CE8, &unk_26A8849A0);
    v8 = OUTLINED_FUNCTION_53_6(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_2_97();
    v8[2] = v2;
    v8[3] = v9;
  }

  OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    OUTLINED_FUNCTION_62_4();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A2904()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &qword_2803B6158, &qword_26A884C40);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for SmartDialogAnimatableRect(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for SmartDialogAnimatableRect, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A29DC()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DF0, &qword_26A884C30);
    v7 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_19_27();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_26A7A2AA4()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7AF8, &unk_26A8846C8);
  OUTLINED_FUNCTION_37_15();
  sub_26A84B718();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277D62DA0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2B7C()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7AE8, &unk_26A8846B8);
  OUTLINED_FUNCTION_37_15();
  sub_26A84A9C8();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277CC8C40], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2C54()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7E00, &unk_26A884C48);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for MenuOverlayData(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for MenuOverlayData, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2D2C()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7E08, &unk_26A884C50);
  OUTLINED_FUNCTION_37_15();
  sub_26A84F2E8();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277CDF8E0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2E28()
{
  OUTLINED_FUNCTION_76_1();
  if (v6)
  {
    OUTLINED_FUNCTION_4_81();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_32_11();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_86_1(v4, v5, v6, v7, v8, v9);
    v15 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_19_27();
    v15[2] = v13;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[v13 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_77_0();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_77_0();
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A2F14()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A70, &qword_26A884550);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void *sub_26A7A2FE4()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A40, &unk_26A886370);
  v3 = OUTLINED_FUNCTION_29_6();
  _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_19_27();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

uint64_t sub_26A7A30B8()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DA8, &qword_26A884B48);
  v2 = OUTLINED_FUNCTION_46_6(v1);
  OUTLINED_FUNCTION_6_65(v2);
  return v0;
}

uint64_t sub_26A7A3164()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_46_6(v6);
  OUTLINED_FUNCTION_6_65(v7);
  return v0;
}

void *sub_26A7A3228()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v1;
  v5 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = OUTLINED_FUNCTION_29_6();
  _swift_stdlib_malloc_size(v7);
  OUTLINED_FUNCTION_2_97();
  v7[2] = v4;
  v7[3] = v8;
  return v7;
}

uint64_t sub_26A7A3280()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C98, &qword_26A886400);
  v2 = OUTLINED_FUNCTION_46_6(v1);
  OUTLINED_FUNCTION_6_65(v2);
  return v0;
}

uint64_t sub_26A7A3318()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D18, &qword_26A8864B0);
  v2 = OUTLINED_FUNCTION_46_6(v1);
  OUTLINED_FUNCTION_6_65(v2);
  return v0;
}

uint64_t sub_26A7A3378()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D10, &unk_26A884A00);
  v2 = OUTLINED_FUNCTION_46_6(v1);
  OUTLINED_FUNCTION_6_65(v2);
  return v0;
}

void *sub_26A7A33FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_40_3(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_2_5(v12);
  v14 = *(v13 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (v14)
  {
    if ((result - v16) != 0x8000000000000000 || v14 != -1)
    {
      v17[2] = a1;
      v17[3] = 2 * ((result - v16) / v14);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7A34F0()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D08, &qword_26A886490);
  v2 = OUTLINED_FUNCTION_46_6(v1);
  OUTLINED_FUNCTION_6_65(v2);
  return v0;
}

void *sub_26A7A3578()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CA8, &qword_26A886420);
  v3 = OUTLINED_FUNCTION_29_6();
  _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_20_30();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

uint64_t sub_26A7A35F0()
{
  OUTLINED_FUNCTION_48_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_46_6(v6);
  OUTLINED_FUNCTION_6_65(v7);
  return v0;
}

void *sub_26A7A3644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = OUTLINED_FUNCTION_40_3(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = OUTLINED_FUNCTION_37_15();
  v11 = a5(v10);
  OUTLINED_FUNCTION_2_5(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (v13)
  {
    if ((result - v15) != 0x8000000000000000 || v13 != -1)
    {
      v16[2] = a1;
      v16[3] = 2 * ((result - v15) / v13);
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_26A7A3758(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[184 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A3798(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A37BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A37E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A3800(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A3860(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A3910(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[368 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A3964(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

char *sub_26A7A398C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

void sub_26A7A39C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_72_3();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_46(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_30_16();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_30_16();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_26A7A3A90(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

void sub_26A7A3B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_72_3();
  if (v8 && (a4(0), OUTLINED_FUNCTION_46(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_30_16();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_30_16();

    swift_arrayInitWithTakeFrontToBack();
  }
}

unint64_t sub_26A7A3C48(uint64_t a1)
{
  result = sub_26A7A3CA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A7A3CA0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void sub_26A7A3CEC(uint64_t a1)
{
  sub_26A7A410C(319, &qword_2803B79C0, &qword_2803B79C8, &qword_26A8843C8, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_26A7A410C(319, &qword_2803B79D0, &qword_2803B79D8, &qword_26A8843D0, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_26A7A4200(319, &qword_28157FF10, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A7A3E9C(uint64_t a1)
{
  sub_26A504650(319, &qword_2803AB738, type metadata accessor for FactItemConstants, type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A7A4200(319, &qword_2803ADD00, &type metadata for ButtonViewConstants, type metadata accessor for EnvironmentConstant);
    if (v2 <= 0x3F)
    {
      sub_26A7A4200(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
      if (v3 <= 0x3F)
      {
        sub_26A504650(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26A7A410C(319, &qword_2803A9220, &qword_2803A91C8, &unk_26A856820, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_26A504650(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_26A7A416C(319);
              if (v7 <= 0x3F)
              {
                sub_26A5046B4();
                if (v8 <= 0x3F)
                {
                  sub_26A7A4200(319, &qword_2803AB750, &type metadata for AnyPrivacySensitiveView, MEMORY[0x277D83D88]);
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

void sub_26A7A410C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_40_3(0, a2, a3);
    v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v8, v9);
    v11 = a5(a1, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_26A7A416C(uint64_t a1)
{
  if (!qword_2803B79F0)
  {
    type metadata accessor for FactItemButtonViewModel(255);
    sub_26A7A3CA0();
    v1 = sub_26A84F288();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B79F0);
    }
  }
}

void sub_26A7A4200(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A7A4250()
{
  result = qword_2803B79F8;
  if (!qword_2803B79F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7980, &qword_26A884328);
    sub_26A7A4308();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B79F8);
  }

  return result;
}

unint64_t sub_26A7A4308()
{
  result = qword_2803B7A00;
  if (!qword_2803B7A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7978, &qword_26A8842F8);
    sub_26A7A4394();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7A00);
  }

  return result;
}

unint64_t sub_26A7A4394()
{
  result = qword_2803B7A08;
  if (!qword_2803B7A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7970, &unk_26A8842C0);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7A08);
  }

  return result;
}

id sub_26A7A4494(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_26A7A44AC()
{
  result = qword_2803B7B68;
  if (!qword_2803B7B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7B50, &qword_26A884768);
    sub_26A7A4538();
    sub_26A5C896C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7B68);
  }

  return result;
}

unint64_t sub_26A7A4538()
{
  result = qword_2803B7B70;
  if (!qword_2803B7B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7B58, &qword_26A884778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0920, &qword_26A884770);
    type metadata accessor for RFButtonStyle(255);
    sub_26A6091D0();
    sub_26A7A3CA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7B70);
  }

  return result;
}

unint64_t sub_26A7A4648()
{
  result = qword_2803B7B80;
  if (!qword_2803B7B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7B38, &qword_26A884750);
    sub_26A7A4538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7B80);
  }

  return result;
}

uint64_t sub_26A7A46D4()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A7A4728()
{
  v0 = OUTLINED_FUNCTION_41_12();
  v1 = type metadata accessor for FactItemButtonView(v0);
  OUTLINED_FUNCTION_79(v1);
  v2 = OUTLINED_FUNCTION_9_43();

  return sub_26A79F320(v2, v3, v4);
}

unint64_t sub_26A7A478C()
{
  result = qword_2803B7BB0;
  if (!qword_2803B7BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7BA0, &qword_26A884828);
    sub_26A7A4844();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7BB0);
  }

  return result;
}

unint64_t sub_26A7A4844()
{
  result = qword_2803B7BB8;
  if (!qword_2803B7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7BC0, &qword_26A884830);
    sub_26A7A48C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7BB8);
  }

  return result;
}

unint64_t sub_26A7A48C8()
{
  result = qword_2803B7BC8;
  if (!qword_2803B7BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7BD0, &qword_26A884838);
    sub_26A7A4954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7BC8);
  }

  return result;
}

unint64_t sub_26A7A4954()
{
  result = qword_2803B7BD8;
  if (!qword_2803B7BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7BE0, &unk_26A884840);
    sub_26A53770C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7BD8);
  }

  return result;
}

unint64_t sub_26A7A49E0()
{
  result = qword_2803B7C20;
  if (!qword_2803B7C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7BF8, &qword_26A884888);
    sub_26A7A4A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7C20);
  }

  return result;
}

unint64_t sub_26A7A4A6C()
{
  result = qword_2803B7C28;
  if (!qword_2803B7C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7C30, &qword_26A8848A8);
    sub_26A7A478C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7C28);
  }

  return result;
}

uint64_t objectdestroy_108Tm()
{
  type metadata accessor for FactItemButtonView(0);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_70_0();
  if (v5)
  {
    if ((*(v1 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v1);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v1 + 16);
  OUTLINED_FUNCTION_39_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v6 = OUTLINED_FUNCTION_81_2();
  v7 = *(v6 + 52);
  v8 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v10 = *(v9 + 8);
  v10(v3 + v7, v8);
  v10(v3 + *(v6 + 56), v8);
  v11 = v4 + *(v2 + 32);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  v13 = OUTLINED_FUNCTION_65_4(v12);
  (v10)(v13);
  v10(v11 + *(v6 + 56), v8);
  OUTLINED_FUNCTION_1_7(v0[6]);

  OUTLINED_FUNCTION_1_7(v0[7]);

  OUTLINED_FUNCTION_91_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:

    goto LABEL_11;
  }

  v14 = type metadata accessor for ActionType(0);
  if (OUTLINED_FUNCTION_9_44(v14))
  {
    goto LABEL_11;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v19 + 8))(v2);
  }

LABEL_11:
  v16 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v17 + 8))(v1 + v16);
  }

  else
  {
  }

  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_59_4();

  return swift_deallocObject();
}

uint64_t sub_26A7A4E78()
{
  v0 = OUTLINED_FUNCTION_41_12();
  v1 = type metadata accessor for FactItemButtonView(v0);
  OUTLINED_FUNCTION_79(v1);
  v2 = OUTLINED_FUNCTION_9_43();

  return sub_26A79F574(v2, v3, v4);
}

uint64_t sub_26A7A4EDC()
{
  v3 = OUTLINED_FUNCTION_41_12();
  v4 = type metadata accessor for FactItemButtonView(v3);
  OUTLINED_FUNCTION_2_5(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26A79F834(v0, v1 + v9, v10, v2);
}

uint64_t sub_26A7A4F78()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A7A4FCC()
{
  OUTLINED_FUNCTION_145();
  v4 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_46();
  v6 = OUTLINED_FUNCTION_211();
  v7(v6);
  return v0;
}

uint64_t sub_26A7A501C()
{
  OUTLINED_FUNCTION_145();
  v4 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_46();
  v6 = OUTLINED_FUNCTION_211();
  v7(v6);
  return v0;
}

uint64_t sub_26A7A506C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A7A50EC()
{
  result = qword_2803B7C90;
  if (!qword_2803B7C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7B60, &unk_26A884780);
    sub_26A7A44AC();
    sub_26A7A506C(&qword_2803B7B78, &qword_2803B7B40, &qword_26A884758, sub_26A7A4648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7C90);
  }

  return result;
}

unint64_t sub_26A7A51A4()
{
  result = qword_2803B7D70;
  if (!qword_2803B7D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA58, &qword_26A856B38);
    sub_26A7A525C();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7D70);
  }

  return result;
}

unint64_t sub_26A7A525C()
{
  result = qword_2803B7D78;
  if (!qword_2803B7D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA48, &qword_26A856B28);
    sub_26A7A52E8();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7D78);
  }

  return result;
}

unint64_t sub_26A7A52E8()
{
  result = qword_2803B7D80;
  if (!qword_2803B7D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA50, &qword_26A856B30);
    sub_26A7A3CA0();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7D80);
  }

  return result;
}

uint64_t sub_26A7A53D0()
{
  OUTLINED_FUNCTION_41_12();
  v0 = sub_26A84BBB8();
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_9_43();

  return sub_26A79BFA8(v1);
}

void *sub_26A7A5464()
{
  OUTLINED_FUNCTION_41_12();
  v0 = sub_26A84BBB8();
  OUTLINED_FUNCTION_79(v0);
  v1 = OUTLINED_FUNCTION_9_43();

  return sub_26A79C328(v2, v1);
}

uint64_t objectdestroy_130Tm()
{
  sub_26A84BBB8();
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void sub_26A7A5560()
{
  v0 = sub_26A84BBB8();
  OUTLINED_FUNCTION_79(v0);
  sub_26A79C08C();
}

uint64_t sub_26A7A55D8()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

size_t OUTLINED_FUNCTION_6_65(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_37()
{

  return swift_arrayInitWithCopy();
}

__n128 OUTLINED_FUNCTION_16_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a26, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __n128 a27, __int128 a28, uint64_t a29)
{
  result = a27;
  *(a1 + 16) = a27;
  *(a1 + 32) = a28;
  *(a1 + 48) = a29;
  return result;
}

__n128 OUTLINED_FUNCTION_29_19(uint64_t a1)
{
  result = *(v1 + 192);
  v3 = *(v1 + 208);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 224);
  return result;
}

void OUTLINED_FUNCTION_33_15(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_26A7A3B18(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_39_8()
{
  v2 = v1 + *(v0 + 20);
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);

  return sub_26A49035C(v3, v4);
}

uint64_t OUTLINED_FUNCTION_46_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_6(uint64_t a1)
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_54_5@<Q0>(__n128 *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *v1 = *a1;
  v1[1] = v3;
  v4 = a1[2];
  v5 = a1[3];
  v1[2] = v4;
  v1[3] = v5;
  v1[4] = v2;
  v1[5] = v3;
  v1[6] = v4;
  v1[7] = v5;
  return v1[3];
}

void *OUTLINED_FUNCTION_57_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A7A3644(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_58_5(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_59_4()
{
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return sub_26A505D1C();
}

uint64_t OUTLINED_FUNCTION_71_3@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_78_2@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_1@<X0>(uint64_t a1@<X8>)
{
  v2[24] = v3;
  v2[27] = v1;
  v2[28] = a1;

  return sub_26A6A8134((v2 + 24));
}

uint64_t OUTLINED_FUNCTION_80_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  a19 = v24;
  a22 = v23;
  a23 = a1;

  return sub_26A6A8134(&a19);
}

uint64_t OUTLINED_FUNCTION_81_2()
{

  return type metadata accessor for FactItemConstants(0);
}

uint64_t OUTLINED_FUNCTION_84_2()
{

  return sub_26A7A501C();
}

uint64_t OUTLINED_FUNCTION_85_1()
{

  return sub_26A7A501C();
}

uint64_t OUTLINED_FUNCTION_86_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

void *OUTLINED_FUNCTION_87_1(void *a1)
{

  return memcpy(a1, (v1 + 400), 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_89_1()
{

  return sub_26A505D1C();
}