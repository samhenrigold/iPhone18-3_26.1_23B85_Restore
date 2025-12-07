uint64_t sub_1BD395998(char *__dst, char *a2, char *a3, char *a4)
{
  __dsta = a4;
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 15;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 4;
  v9 = a3 - a2;
  v10 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 4;
  if (v8 < v10 >> 4)
  {
    v12 = a2;
    if (a4 != __dst || &__dst[16 * v8] <= a4)
    {
      memmove(a4, __dst, 16 * v8);
    }

    v13 = &__dsta[16 * v8];
    if (v6 < 16)
    {
LABEL_10:
      v14 = v5;
      goto LABEL_46;
    }

    while (1)
    {
      if (v12 >= v4)
      {
        goto LABEL_10;
      }

      v17 = *(v12 + 1);
      v18 = *(__dsta + 1);
      v19 = v18;
      if (v17)
      {
        v20 = [v17 issuerName];
        sub_1BE052434();
        v22 = v21;
      }

      else
      {
        v22 = 0xE000000000000000;
      }

      v77 = v22;
      if (v18)
      {
        v23 = [v18 issuerName];
        sub_1BE052434();
        v25 = v24;
      }

      else
      {
        v25 = 0xE000000000000000;
      }

      sub_1BD0DDEBC();
      v26 = sub_1BE0535A4();

      v77, v27, v28, v29, v30, v31, v32, v33;
      v25, v34, v35, v36, v37, v38, v39, v40;

      if (v26 != -1)
      {
        break;
      }

      v15 = v12;
      v16 = v5 == v12;
      v12 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v5 += 16;
      if (__dsta >= v13)
      {
        goto LABEL_10;
      }
    }

    v15 = __dsta;
    v16 = v5 == __dsta;
    __dsta += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v5 = *v15;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[16 * v11] <= a4)
  {
    v41 = a2;
    memmove(a4, a2, 16 * v11);
    a2 = v41;
  }

  v42 = a2;
  v13 = &__dsta[16 * v11];
  if (v9 < 16)
  {
LABEL_44:
    v14 = v42;
    goto LABEL_46;
  }

  v14 = a2;
  if (a2 > v5)
  {
LABEL_30:
    v4 -= 16;
    while (1)
    {
      v43 = *(v13 - 1);
      v44 = *(v14 - 1);
      if (v43)
      {
        v45 = v44;
        v46 = [v43 issuerName];
        sub_1BE052434();
        v48 = v47;

        if (v44)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v59 = v44;
        v48 = 0xE000000000000000;
        if (v44)
        {
LABEL_34:
          v49 = [v44 issuerName];
          v78 = v44;
          v50 = v43;
          v51 = v13;
          v52 = v4;
          v53 = v5;
          v54 = v14;
          v55 = v48;
          v56 = v49;
          sub_1BE052434();
          v58 = v57;

          v48 = v55;
          v14 = v54;
          v5 = v53;
          v4 = v52;
          v13 = v51;
          v43 = v50;
          v44 = v78;
          goto LABEL_37;
        }
      }

      v58 = 0xE000000000000000;
LABEL_37:
      sub_1BD0DDEBC();
      v60 = sub_1BE0535A4();

      v48, v61, v62, v63, v64, v65, v66, v67;
      v58, v68, v69, v70, v71, v72, v73, v74;

      if (v60 == -1)
      {
        v42 = v14 - 16;
        if (v4 + 16 != v14)
        {
          *v4 = *v42;
        }

        if (v13 <= __dsta)
        {
          goto LABEL_44;
        }

        v14 -= 16;
        if (v42 <= v5)
        {
          goto LABEL_44;
        }

        goto LABEL_30;
      }

      v75 = v13 - 16;
      if (v4 + 16 != v13)
      {
        *v4 = *v75;
      }

      v4 -= 16;
      v13 -= 16;
      if (v75 <= __dsta)
      {
        v13 = v75;
        break;
      }
    }
  }

LABEL_46:
  if (v14 != __dsta || v14 >= &__dsta[(v13 - __dsta + (v13 - __dsta < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v14, __dsta, 16 * ((v13 - __dsta) / 16));
  }

  return 1;
}

uint64_t sub_1BD395DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD395E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD395EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD395F04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD395F50(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1BE051F54();
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BE051FA4();
  v9 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  aBlock[4] = sub_1BD3975A0;
  v27 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_76;
  v14 = _Block_copy(aBlock);
  v15 = v27;
  sub_1BE048964();
  v15, v16, v17, v18, v19, v20, v21, v22;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3975D0(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v25 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v24);
}

double sub_1BD39624C@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

uint64_t sub_1BD396258(double *a1)
{
  v2 = *a1;
  *(v1 + 16) = *a1;
  return sub_1BD395F50(*v1, *(v1 + 8), v2);
}

uint64_t **sub_1BD39628C(uint64_t **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1BD395F50(**result, (*result)[1], *(*result + 2));
  }

  return result;
}

uint64_t sub_1BD3962A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BD397618();

  return MEMORY[0x1EEDDA6B0](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1BD396324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BD397618();

  return MEMORY[0x1EEDDA6A8](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1BD3963A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43C20, &qword_1BE0D0998);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id sub_1BD396418@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BC0, &qword_1BE0D07D8);
  MEMORY[0x1EEE9AC00](v109);
  v3 = &v102 - v2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BC8, &qword_1BE0D07E0);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v102 - v4;
  v119[0] = *(v1 + 32);
  v5 = *v1;
  v107 = v1;
  v110 = *(v1 + 8);
  v108 = *(&v119[0] + 1);
  sub_1BD396F00(v110, *(&v119[0] + 1), v5);
  *&v115[0] = v6;
  *(&v115[0] + 1) = v7;
  sub_1BD0DDEBC();
  v8 = sub_1BE0506C4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0);
  if (result)
  {
    v16 = sub_1BE050484();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v16, v18, v20, v22, v24, v25, v26, v27;
    sub_1BD0DDF10(v8, v10, (v12 & 1), v28, v29, v30, v31, v32);
    v14, v33, v34, v35, v36, v37, v38, v39;
    sub_1BE050364();
    v40 = sub_1BE050544();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_1BD0DDF10(v17, v19, (v21 & 1), v45, v47, v48, v49, v50);
    v23, v51, v52, v53, v54, v55, v56, v57;
    v58 = sub_1BE051224();
    v106 = sub_1BE050564();
    v105 = v59;
    v61 = v60;
    v104 = v62;
    v58, v59, v60, v62, v63, v64, v65, v66;
    sub_1BD0DDF10(v40, v42, (v44 & 1), v67, v68, v69, v70, v71);
    v46, v72, v73, v74, v75, v76, v77, v78;
    KeyPath = swift_getKeyPath();
    v79 = v107;
    v118 = v107[1];
    v115[0] = v107[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
    sub_1BE0516A4();
    v80 = v114[0];
    v81 = swift_allocObject();
    v82 = v79[1];
    v81[1] = *v79;
    v81[2] = v82;
    v81[3] = v79[2];
    LOBYTE(v58) = v61 & 1;
    v117 = v61 & 1;
    v116 = 0;
    swift_beginAccess();
    v83 = v109;
    sub_1BE048964();
    sub_1BD0DE19C(&v118, v114, &qword_1EBD43BD0, &qword_1BE112720);
    sub_1BD0DE19C(v119, v114, &qword_1EBD43BD8, &unk_1BE0D0820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BE0, &unk_1BE0F6580);
    sub_1BE04D884();
    swift_endAccess();
    v84 = swift_allocObject();
    v85 = v79[1];
    *(v84 + 1) = *v79;
    *(v84 + 2) = v85;
    *(v84 + 3) = v79[2];
    v86 = v105;
    *v3 = v106;
    *(v3 + 1) = v86;
    v3[16] = v58;
    v87 = KeyPath;
    *(v3 + 3) = v104;
    *(v3 + 4) = v87;
    *(v3 + 5) = 1;
    v3[48] = 0;
    *(v3 + 7) = sub_1BD397210;
    *(v3 + 8) = v81;
    *(v3 + 9) = v80;
    v88 = &v3[*(v83 + 56)];
    *v88 = sub_1BD397218;
    v88[1] = v84;
    v89 = swift_allocObject();
    v90 = v79[1];
    *(v89 + 1) = *v79;
    *(v89 + 2) = v90;
    *(v89 + 3) = v79[2];
    v91 = v112;
    sub_1BD397270(v3, v112);
    v92 = (v91 + *(v111 + 36));
    *v92 = sub_1BD397268;
    v92[1] = v89;
    v92[2] = 0;
    v92[3] = 0;
    sub_1BE052434();
    v94 = v93;
    sub_1BE048964();
    sub_1BD0DE19C(&v118, v115, &qword_1EBD43BD0, &qword_1BE112720);
    sub_1BD0DE19C(v119, v115, &qword_1EBD43BD8, &unk_1BE0D0820);
    sub_1BE048964();
    sub_1BD0DE19C(&v118, v115, &qword_1EBD43BD0, &qword_1BE112720);
    sub_1BD0DE19C(v119, v115, &qword_1EBD43BD8, &unk_1BE0D0820);
    sub_1BD3972E0();
    sub_1BE050DE4();
    v94, v95, v96, v97, v98, v99, v100, v101;
    return sub_1BD0DE53C(v91, &qword_1EBD43BC8, &qword_1BE0D07E0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD396980(__int128 *a1, double a2)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516B4();
}

void sub_1BD396A50(double *a1, __int128 *a2)
{
  v3 = *a1;
  v13 = *a2;
  v14 = v13;
  v15 = *(&v13 + 1);
  sub_1BD0DE19C(&v15, &v12, &qword_1EBD43BF8, &qword_1BE0D0830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  v13 = a2[1];
  sub_1BE0516B4();
  v13 = v14;
  sub_1BE0516A4();
  if (v12 >= v3)
  {
    v13 = v14;
    v12 = v3;
    sub_1BE0516B4();
    sub_1BD0DE53C(&v14, &qword_1EBD43BD0, &qword_1BE112720);
  }

  else
  {
    sub_1BD0DE53C(&v14, &qword_1EBD43BD0, &qword_1BE112720);
    v4 = sub_1BE051D14();
    MEMORY[0x1EEE9AC00](v4);
    sub_1BE04E7D4();
    v4, v5, v6, v7, v8, v9, v10, v11;
  }
}

double sub_1BD396BE4(__int128 *a1)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v19 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516B4();
  v19 = *a1;
  sub_1BE0516A4();
  v19 = a1[1];
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD396CC8@<X0>(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v41);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  sub_1BE051694();
  v19 = v41;
  v20 = v42;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  sub_1BE04D8B4(&v41);
  v21, v23, v24, v25, v26, v27, v28, v29;
  v22, v30, v31, v32, v33, v34, v35, v36;
  sub_1BE051694();
  v37 = v41;
  v38 = v42;
  type metadata accessor for AccountObservableBalance(0);
  sub_1BD3975D0(&qword_1EBD43BB8, type metadata accessor for AccountObservableBalance, &protocol conformance descriptor for AccountObservableBalance);
  result = sub_1BE04E954();
  *a2 = v19;
  a2[1] = v20;
  a2[2] = v37;
  a2[3] = v38;
  a2[4] = result;
  a2[5] = v40;
  return result;
}

uint64_t sub_1BD396E40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD396E88(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void sub_1BD396F00(void *a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for AccountBalance(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (os_variant_has_internal_ui() && PKSavingsGraphOverrideCurrentType() && (v9 = sub_1BD7B5448(), (v10 = *(v9 + 16)) != 0))
  {
    sub_1BD0E5D5C(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v10 - 1), v8);
    v11 = *v8;
    KeyPath = swift_getKeyPath();
    v13 = swift_getKeyPath();
    sub_1BE04D8B4(&v70);
    KeyPath, v14, v15, v16, v17, v18, v19, v20;
    v13, v21, v22, v23, v24, v25, v26, v27;
    v28 = v71;
    v29 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDouble_];
    v30 = sub_1BE052404();
    v31 = PKCurrencyAmountMake();

    if (v31)
    {
      v32 = [v31 formattedStringValue];

      if (v32)
      {
        v28, v33, v34, v35, v36, v37, v38, v39;
        sub_1BE052434();

        sub_1BD0E5E24(v8);
        return;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v70 = a3;
    v71 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
    sub_1BE0516A4();
    v40 = *&v69[1];
    v41 = swift_getKeyPath();
    v42 = swift_getKeyPath();
    sub_1BE04D8B4(&v70);
    v41, v43, v44, v45, v46, v47, v48, v49;
    v42, v50, v51, v52, v53, v54, v55, v56;
    v57 = v71;
    v58 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDouble_];
    v59 = sub_1BE052404();
    v60 = PKCurrencyAmountMake();

    if (v60)
    {
      v61 = [v60 formattedStringValue];

      if (v61)
      {
        v57, v62, v63, v64, v65, v66, v67, v68;
        sub_1BE052434();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t objectdestroyTm_33(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD397270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BC0, &qword_1BE0D07D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD3972E0()
{
  result = qword_1EBD43BE8;
  if (!qword_1EBD43BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43BC8, &qword_1BE0D07E0);
    sub_1BD0DE4F4(&qword_1EBD43BF0, &qword_1EBD43BC0, &qword_1BE0D07D8, MEMORY[0x1E697C278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43BE8);
  }

  return result;
}

double sub_1BD397398()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516B4();
  return result;
}

unint64_t sub_1BD39740C()
{
  result = qword_1EBD43C00;
  if (!qword_1EBD43C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43C08, &qword_1BE0D08B8);
    sub_1BD3972E0();
    sub_1BD3975D0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43C00);
  }

  return result;
}

unint64_t sub_1BD3974F4()
{
  result = qword_1EBD43C10;
  if (!qword_1EBD43C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43C10);
  }

  return result;
}

unint64_t sub_1BD39754C()
{
  result = qword_1EBD43C18;
  if (!qword_1EBD43C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43C18);
  }

  return result;
}

uint64_t sub_1BD3975D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD397618()
{
  result = qword_1EBD43C28;
  if (!qword_1EBD43C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43C28);
  }

  return result;
}

void *DynamicPaymentButtonSlotTag.paymentRequest.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest);
  v2 = v1;
  return v1;
}

uint64_t DynamicPaymentButtonSlotTag.localizedButtonLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel);
  sub_1BE048C84();
  return v1;
}

uint64_t DynamicPaymentButtonSlotTag.appBundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID);
  sub_1BE048C84();
  return v1;
}

id DynamicPaymentButtonSlotTag.__allocating_init(type:style:paymentRequest:interfaceStyle:localizedButtonLabel:appBundleID:buttonWidth:buttonHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v21 = objc_allocWithZone(v10);
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type] = a1;
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style] = a2;
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest] = a3;
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle] = a4;
  v22 = &v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID];
  *v23 = a7;
  *(v23 + 1) = a8;
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth] = a9;
  *&v21[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight] = a10;
  v25.receiver = v21;
  v25.super_class = v10;
  return objc_msgSendSuper2(&v25, sel_init);
}

id DynamicPaymentButtonSlotTag.init(type:style:paymentRequest:interfaceStyle:localizedButtonLabel:appBundleID:buttonWidth:buttonHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type] = a1;
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style] = a2;
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest] = a3;
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle] = a4;
  v11 = &v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel];
  *v11 = a5;
  *(v11 + 1) = a6;
  v12 = &v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID];
  *v12 = a7;
  *(v12 + 1) = a8;
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth] = a9;
  *&v10[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight] = a10;
  v14.receiver = v10;
  v14.super_class = type metadata accessor for DynamicPaymentButtonSlotTag();
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_1BD39792C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type);
  v4 = sub_1BE052404();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style);
  v6 = sub_1BE052404();
  [a1 encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle);
  v8 = sub_1BE052404();
  [a1 encodeInteger:v7 forKey:v8];

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel + 8))
  {
    v9 = sub_1BE052404();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1BE052404();
  [a1 encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID + 8))
  {
    v11 = sub_1BE052404();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1BE052404();
  [a1 encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth);
  v14 = sub_1BE052404();
  *&v15 = v13;
  [a1 encodeFloat:v14 forKey:v15];

  v16 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight);
  v17 = sub_1BE052404();
  *&v18 = v16;
  [a1 encodeFloat:v17 forKey:v18];

  v19 = *(v1 + OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest);
  v20 = sub_1BE052404();
  [a1 encodeObject:v19 forKey:v20];
}

id DynamicPaymentButtonSlotTag.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1BD397E3C(a1);

  return v4;
}

id DynamicPaymentButtonSlotTag.init(coder:)(void *a1)
{
  v2 = sub_1BD397E3C(a1);

  return v2;
}

id DynamicPaymentButtonSlotTag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicPaymentButtonSlotTag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicPaymentButtonSlotTag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD397E3C(void *a1)
{
  v3 = sub_1BE052404();
  v4 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_interfaceStyle] = v4;
  v5 = sub_1BE052404();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    v7 = swift_dynamicCast();
    v8 = v32;
    v9 = v33;
    if (!v7)
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    sub_1BD14EC0C(&v37);
    v8 = 0;
    v9 = 0;
  }

  v10 = &v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_localizedButtonLabel];
  *v10 = v8;
  *(v10 + 1) = v9;
  v11 = sub_1BE052404();
  v12 = [a1 decodeObjectForKey_];

  if (v12)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    v13 = swift_dynamicCast();
    v14 = v32;
    v15 = v33;
    if (!v13)
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    sub_1BD14EC0C(&v37);
    v14 = 0;
    v15 = 0;
  }

  v16 = &v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_appBundleID];
  *v16 = v14;
  *(v16 + 1) = v15;
  v17 = sub_1BE052404();
  [a1 decodeFloatForKey_];
  v19 = v18;

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonWidth] = v19;
  v20 = sub_1BE052404();
  [a1 decodeFloatForKey_];
  v22 = v21;

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_buttonHeight] = v22;
  v23 = sub_1BE052404();
  v24 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_type] = v24;
  v25 = sub_1BE052404();
  v26 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_style] = v26;
  v27 = sub_1BE052404();
  v28 = [a1 decodeObjectForKey_];

  if (v28)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    sub_1BD3982CC();
    v29 = swift_dynamicCast();
    v30 = v32;
    if (!v29)
    {
      v30 = 0;
    }
  }

  else
  {
    sub_1BD14EC0C(&v37);
    v30 = 0;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI27DynamicPaymentButtonSlotTag_paymentRequest] = v30;
  v34.receiver = v1;
  v34.super_class = type metadata accessor for DynamicPaymentButtonSlotTag();
  return objc_msgSendSuper2(&v34, sel_init);
}

unint64_t sub_1BD3982CC()
{
  result = qword_1EBD43C80;
  if (!qword_1EBD43C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43C80);
  }

  return result;
}

void sub_1BD398318(uint64_t a1, uint64_t a2)
{
  v88 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_14;
  }

  v83 = v2;
  v6 = *(v5 + 104);
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 32))(ObjectType, v6);
  swift_unknownObjectRelease();
  if (!(v8 >> 62))
  {
    v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 >= 1)
    {
      goto LABEL_4;
    }

LABEL_13:
    v8, v9, v10, v11, v12, v13, v14, v15;
    goto LABEL_14;
  }

  v16 = sub_1BE053704();
  if (v16 < 1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v82 = a1;
  v87 = MEMORY[0x1E69E7CC0];
  sub_1BE0538E4();
  v17 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1BFB40900](v17, v8);
    }

    else
    {
      v25 = *(v8 + 8 * v17 + 32);
    }

    v26 = v25;
    type metadata accessor for UIFlowNode.CompletedFlowItem();
    v27 = swift_allocObject();
    v27[3] = 0;
    swift_unknownObjectWeakInit();
    v27[6] = v26;
    key = 0;
    v86 = 0xE000000000000000;
    v28 = v26;
    sub_1BE053834();
    v86, v29, v30, v31, v32, v33, v34, v35;
    key = 0xD00000000000001CLL;
    v86 = 0x80000001BE126460;
    v36 = [v28 description];
    v37 = sub_1BE052434();
    v39 = v38;

    MEMORY[0x1BFB3F610](v37, v39);
    v39, v40, v41, v42, v43, v44, v45, v46;
    v47 = v86;
    v27[4] = key;
    v27[5] = v47;
    type metadata accessor for UIFlowNode();
    v48 = swift_allocObject();
    v49 = sub_1BD39E0C4(v27, v48);
    v50 = *(v49 + 48);
    *(v49 + 48) = v26;
    sub_1BE048964();
    sub_1BD28B4B8(v50);
    v49, v51, v52, v53, v54, v55, v56, v57;
    v58 = [v28 navigationController];
    if (v58)
    {
      v59 = v58;
      v60 = type metadata accessor for UIFlowManagerRendererWrapper();
      v61 = objc_allocWithZone(v60);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v84.receiver = v61;
      v84.super_class = v60;
      v62 = objc_msgSendSuper2(&v84, sel_init);
      LOBYTE(key) = 0;
      v63 = v62;
      v64 = v59;
      objc_setAssociatedObject(v64, &key, v63, 1);

      *(v49 + 104) = &off_1F3BAE1D8;
      swift_unknownObjectWeakAssign();
      v28 = v63;
    }

    ++v17;
    *(v49 + 32) = 3;
    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
  }

  while (v16 != v17);
  v8, v18, v19, v20, v21, v22, v23, v24;
  v65 = v87;
  sub_1BD6DB5A4(v87);
  v65, v66, v67, v68, v69, v70, v71, v72;
  v2 = v83;
  a1 = v82;
LABEL_14:
  v73 = (v2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion);
  v74 = *(v2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion);
  v75 = *(v2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion + 8);
  *v73 = a1;
  v73[1] = a2;
  sub_1BD0D44B8(a1, a2);
  sub_1BD0D4744(v74, v75, v76, v77, v78, v79, v80, v81);
  *(v2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation) = 1;
  sub_1BD39882C(0);
}

id sub_1BD3986F8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode] = 0;
  v6 = &v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion];
  *v6 = 0;
  v6[1] = 0;
  v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation] = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_inflightRenderersBeingPresented] = MEMORY[0x1E69E7CC0];
  type metadata accessor for UIStaticFlowSection();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 40) = 1953460050;
  *(v7 + 48) = 0xE400000000000000;
  *(v7 + 56) = a1;
  *(v7 + 32) = 514;
  type metadata accessor for UIFlowNode();
  v8 = swift_allocObject();
  *&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] = sub_1BD39DE3C(v7, v8);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD39882C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v226 = &v224 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v224 - v8;
  sub_1BD6DBD34(0x20746E6572727543, 0xED00006574617453, 0);
  v11 = v10;
  v13 = v12;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v14 = sub_1BE04D204();
  v15 = sub_1BE052C24();
  v13, v16, v17, v18, v19, v20, v21, v22;
  if (os_log_type_enabled(v14, v15))
  {
    v23 = swift_slowAlloc();
    v225 = v2;
    v24 = v4;
    v25 = a1;
    v26 = v5;
    v27 = v23;
    v28 = swift_slowAlloc();
    v229 = v28;
    *v27 = 136315138;
    v29 = sub_1BD123690(v11, v13, &v229);
    v13, v30, v31, v32, v33, v34, v35, v36;
    *(v27 + 4) = v29;
    _os_log_impl(&dword_1BD026000, v14, v15, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28, v37, v38, v39, v40, v41, v42, v43);
    MEMORY[0x1BFB45F20](v28, -1, -1);
    v44 = v27;
    v5 = v26;
    a1 = v25;
    v4 = v24;
    v2 = v225;
    MEMORY[0x1BFB45F20](v44, -1, -1);
  }

  else
  {

    v13, v45, v46, v47, v48, v49, v50, v51;
  }

  v52 = v5[1];
  v52(v9, v4);
  v53 = sub_1BD399404();
  if (v53)
  {
    v54 = v53;
    v55 = *(v53 + 16);
    v56 = *(v53 + 24);
    ObjectType = swift_getObjectType();
    v58 = *(v56 + 24);
    swift_unknownObjectRetain();
    v59 = v2;
    v58(v2, &off_1F3BA3140, ObjectType, v56);
    if (v54[32] != 1)
    {
      v54[32] = 1;
    }

    v60 = swift_allocObject();
    v60[16] = 1;
    swift_unknownObjectRetain();
    v61 = v59;
    v62 = sub_1BE048964();
    sub_1BD39F034(v62, v60, v54, v61, v55, v56);
    v54, v63, v64, v65, v66, v67, v68, v69;

    swift_unknownObjectRelease();
    swift_beginAccess();
    if ((v60[16] & 1) != 0 && (v77 = *&v61[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode]) != 0 && (*(v77 + 56) = 1, *(v77 + 48) > 2uLL) && (v227 = &unk_1F3CDEF98, (v78 = swift_dynamicCastObjCProtocolConditional()) != 0))
    {
      v79 = v78;
      sub_1BE048964();
      [v79 showLoadingUI:1 animated:1];
      v60, v80, v81, v82, v83, v84, v85, v86;
      v87 = v77;
    }

    else
    {
      v87 = v60;
    }

    v87, v70, v71, v72, v73, v74, v75, v76;
    v54, v88, v89, v90, v91, v92, v93, v94;
    swift_unknownObjectRelease();
    return;
  }

  if (!a1)
  {
LABEL_25:
    sub_1BD398F04();
    return;
  }

  v95 = swift_allocObject();
  v95[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD39F84C;
  *(inited + 24) = v95;
  swift_retain_n();
  sub_1BE048964();
  sub_1BE048964();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if ((*(a1 + 114) & 1) == 0)
  {
    v105 = a1;
    while (1)
    {
      v106 = v105;
      v105 = Strong;
      v106, v97, v98, v99, v100, v101, v102, v103;
      if (!Strong)
      {
        break;
      }

      v95[2] = Strong;
      Strong = swift_weakLoadStrong();
      if (*(v105 + 114))
      {
        goto LABEL_20;
      }
    }

    v95[2] = 0;
    inited, v107, v108, v109, v110, v111, v112, v113;
    v95, v203, v204, v205, v206, v207, v208, v209;
    swift_setDeallocating();
    *(inited + 24), v210, v211, v212, v213, v214, v215, v216;
    a1, v217, v218, v219, v220, v221, v222, v223;
    goto LABEL_25;
  }

  v105 = a1;
LABEL_20:
  v95[2] = Strong;
  inited, v97, v98, v99, v100, v101, v102, v103;
  v95, v114, v115, v116, v117, v118, v119, v120;
  swift_setDeallocating();
  *(inited + 24), v121, v122, v123, v124, v125, v126, v127;
  sub_1BE048964();
  v128 = v226;
  sub_1BE04D0E4();
  sub_1BE048964();
  sub_1BE048964();
  v129 = sub_1BE04D204();
  v130 = sub_1BE052C54();
  v105, v131, v132, v133, v134, v135, v136, v137;
  a1, v138, v139, v140, v141, v142, v143, v144;
  if (os_log_type_enabled(v129, v130))
  {
    v145 = swift_slowAlloc();
    v224 = swift_slowAlloc();
    v228 = v224;
    *v145 = 136446466;
    v225 = v5;
    v146 = *(a1 + 24);
    v147 = swift_getObjectType();
    v148 = (*(v146 + 8))(v147, v146);
    v150 = v149;
    v151 = sub_1BD123690(v148, v149, &v228);
    v150, v152, v153, v154, v155, v156, v157, v158;
    *(v145 + 4) = v151;
    *(v145 + 12) = 2082;
    v159 = *(v105 + 24);
    v160 = swift_getObjectType();
    v161 = (*(v159 + 8))(v160, v159);
    v163 = v162;
    v164 = sub_1BD123690(v161, v162, &v228);
    v163, v165, v166, v167, v168, v169, v170, v171;
    *(v145 + 14) = v164;
    _os_log_impl(&dword_1BD026000, v129, v130, "Node<%{public}s> failure can be caught by Node<%{public}s>", v145, 0x16u);
    v172 = v224;
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v172, -1, -1);
    MEMORY[0x1BFB45F20](v145, -1, -1);
    v105, v173, v174, v175, v176, v177, v178, v179;

    v180 = v226;
  }

  else
  {

    v105, v181, v182, v183, v184, v185, v186, v187;
    v180 = v128;
  }

  v52(v180, v4);
  v188 = v2;
  sub_1BD39E348(v188, v105, v188);
  a1, v189, v190, v191, v192, v193, v194, v195;
  v105, v196, v197, v198, v199, v200, v201, v202;
}

void sub_1BD398F04()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v116 - v6;
  v117 = v0;
  v116 = *(v0 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  sub_1BD6DBD34(0x7453206C616E6946, 0xEB00000000657461, 0);
  v9 = v8;
  v11 = v10;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C24();
  v11, v14, v15, v16, v17, v18, v19, v20;
  if (os_log_type_enabled(v12, v13))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v118 = v22;
    *v21 = 136315138;
    v23 = sub_1BD123690(v9, v11, &v118);
    v11, v24, v25, v26, v27, v28, v29, v30;
    *(v21 + 4) = v23;
    _os_log_impl(&dword_1BD026000, v12, v13, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22, v31, v32, v33, v34, v35, v36, v37);
    MEMORY[0x1BFB45F20](v22, -1, -1);
    MEMORY[0x1BFB45F20](v21, -1, -1);
  }

  else
  {

    v11, v38, v39, v40, v41, v42, v43, v44;
  }

  v45 = *(v2 + 8);
  v45(v7, v1);
  sub_1BE04D0E4();
  v46 = sub_1BE04D204();
  v47 = sub_1BE052C54();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1BD026000, v46, v47, "Flow did complete", v48, 2u);
    MEMORY[0x1BFB45F20](v48, -1, -1);
  }

  v45(v4, v1);
  v49 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1BE0B7020;
  v51 = v116;
  *(v50 + 32) = v116;
  *(v49 + 16) = v50;
  v52 = objc_opt_self();
  sub_1BE048964();
  v53 = [v52 hashTableWithOptions_];
  v54 = swift_allocObject();
  *(v54 + 16) = v49;
  *(v54 + 24) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD39F6CC;
  *(inited + 24) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118, &unk_1BE0F0B80);
  v56 = swift_initStackObject();
  v56[2] = inited;
  v57 = sub_1BE048964();
  v58 = *(inited + 16);
  v58(&v118, v57);
  while (1)
  {
    v67 = v118;
    if (!v118)
    {
      break;
    }

    if (*(v118 + 88) == 1 && (*(v118 + 88) = 0, *(v67 + 32)))
    {
      v68 = *(v67 + 24);
      v69 = v67;
      ObjectType = swift_getObjectType();
      (*(v68 + 64))(ObjectType, v68);
      v69, v71, v72, v73, v74, v75, v76, v77;
    }

    else
    {
      v67, v59, v60, v61, v62, v63, v64, v65;
    }

    v58(&v118, v66);
  }

  v56, v59, v60, v61, v62, v63, v64, v65;
  swift_setDeallocating();
  v56[2], v78, v79, v80, v81, v82, v83, v84;
  v85 = v117;
  v86 = (v117 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion);
  v87 = *(v117 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion);
  if (v87)
  {
    v88 = v86[1];
    v89 = sub_1BE048964();
    v87(v89);
    sub_1BD0D4744(v87, v88, v90, v91, v92, v93, v94, v95);
    v96 = *v86;
    v97 = v86[1];
    *v86 = 0;
    v86[1] = 0;
    sub_1BD0D4744(v96, v97, v98, v99, v100, v101, v102, v103);
    v104 = (v85 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    v105 = *(v85 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    v106 = *(v85 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded + 8);
    *v104 = 0;
    v104[1] = 0;
    sub_1BD0D4744(v105, v106, v107, v108, v109, v110, v111, v112);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    v113 = *(v51 + 104);
    v114 = swift_getObjectType();
    v115 = (*(v113 + 48))(v114, v113);
    (*(v113 + 24))(v115, 1, v114, v113);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD399404()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B7020;
  *(v3 + 32) = v1;
  *(v2 + 16) = v3;
  v4 = objc_opt_self();
  sub_1BE048964();
  v5 = [v4 hashTableWithOptions_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD39F854;
  *(inited + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118, &unk_1BE0F0B80);
  v8 = swift_initStackObject();
  v8[2] = inited;
  v9 = sub_1BE048964();
  v10 = *(inited + 16);
  (v10)(v309, v9);
  v18 = v309[0];
  if (!v309[0])
  {
    v20 = 0;
LABEL_7:
    v8, v11, v12, v13, v14, v15, v16, v17;
    swift_setDeallocating();
    v8[2], v21, v22, v23, v24, v25, v26, v27;
    v35 = v20;
LABEL_8:
    v35, v28, v29, v30, v31, v32, v33, v34;
    return 0;
  }

  v19 = 0;
  while (1)
  {
    v20 = v18;
    if (v18[32] < 3u)
    {
      break;
    }

    v19, v11, v12, v13, v14, v15, v16, v17;
    (v10)(v309);
    v18 = v309[0];
    v19 = v20;
    if (!v309[0])
    {
      goto LABEL_7;
    }
  }

  v306 = v19;
  v8, v11, v12, v13, v14, v15, v16, v17;
  swift_setDeallocating();
  v8[2], v37, v38, v39, v40, v41, v42, v43;
  v44 = MEMORY[0x1E69E7CC0];
  if (v306)
  {
    sub_1BE048964();
    goto LABEL_27;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = v20;
  v46 = swift_initStackObject();
  v46[2] = sub_1BD39F850;
  v46[3] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90, &unk_1BE0D0AA0);
  v47 = swift_initStackObject();
  v47[2] = v46;
  v309[0] = v44;
  swift_retain_n();
  sub_1BE048964();
  v47, v48, v49, v50, v51, v52, v53, v54;
  v55 = v46[2];
  v56 = v46[3];
  v55(v308);
  v64 = v308[0];
  if (v308[0])
  {
    do
    {
      if (v64[32] == 1)
      {
        sub_1BE0538C4();
        v10 = *(v309[0] + 16);
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
        v64, v57, v58, v59, v60, v61, v62, v63;
      }

      v55(v308);
      v64 = v308[0];
    }

    while (v308[0]);
    v65 = v309[0];
  }

  else
  {
    v65 = v44;
  }

  v46, v57, v58, v59, v60, v61, v62, v63;
  if ((v65 & 0x8000000000000000) != 0 || (v65 & 0x4000000000000000) != 0)
  {
    if (sub_1BE053704())
    {
      goto LABEL_21;
    }
  }

  else if (*(v65 + 16))
  {
LABEL_21:
    if ((v65 & 0xC000000000000001) != 0)
    {
      goto LABEL_127;
    }

    if (*(v65 + 16))
    {
      v306 = *(v65 + 32);
      sub_1BE048964();
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_129;
  }

  v65, v66, v67, v68, v69, v70, v71, v72;
  v306 = 0;
  while (1)
  {
LABEL_27:
    v80 = swift_allocObject();
    *(v80 + 16) = v20;
    v81 = swift_initStackObject();
    v81[2] = sub_1BD39F850;
    v81[3] = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90, &unk_1BE0D0AA0);
    v82 = swift_initStackObject();
    v82[2] = v81;
    v309[0] = v44;
    sub_1BE048964();
    sub_1BE048964();
    v82, v83, v84, v85, v86, v87, v88, v89;
    v90 = v81[2];
    v91 = v81[3];
    v65 = v91;
    v90(v308);
    v99 = v308[0];
    if (v308[0])
    {
      do
      {
        if (v99[32])
        {
          v99, v92, v93, v94, v95, v96, v97, v98;
        }

        else
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        v65 = v91;
        v90(v308);
        v99 = v308[0];
      }

      while (v308[0]);
      v44 = v309[0];
    }

    v81, v92, v93, v94, v95, v96, v97, v98;

    v107 = *(v44 + 16);
    if (!v107)
    {
      goto LABEL_44;
    }

LABEL_37:
    v108 = __OFSUB__(v107, 1);
    v109 = v107 - 1;
    if (v108)
    {
LABEL_122:
      __break(1u);
LABEL_123:
      v56 = MEMORY[0x1BFB40900](v109, v44);
LABEL_42:
      v44, v110, v111, v112, v113, v114, v115, v116;
      sub_1BE048964();
      v20, v117, v118, v119, v120, v121, v122, v123;
      v124 = v56;
      goto LABEL_45;
    }

    if ((v44 & 0xC000000000000001) != 0)
    {
      goto LABEL_123;
    }

    if ((v109 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v109 < *(v44 + 16))
    {
      v56 = *(v44 + 8 * v109 + 32);
      sub_1BE048964();
      goto LABEL_42;
    }

    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    v306 = MEMORY[0x1BFB40900](0, v65);
LABEL_24:
    v65, v73, v74, v75, v76, v77, v78, v79;
  }

  v107 = sub_1BE053704();
  if (v107)
  {
    goto LABEL_37;
  }

LABEL_44:
  v44, v100, v101, v102, v103, v104, v105, v106;
  v124 = 0;
  v56 = v20;
LABEL_45:
  v125 = v306;
  if (!*(v56 + 32))
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v129 = Strong;
      v130 = *(Strong + 16);
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v130)
      {
        v138 = swift_conformsToProtocol2();
        v129, v139, v140, v141, v142, v143, v144, v145;
        if (!v138)
        {
LABEL_118:
          v288 = swift_weakLoadStrong();
          if (!v288)
          {
            goto LABEL_92;
          }

          v289 = v288;
          swift_beginAccess();
          v127 = v289[5];
          sub_1BE048C84();
          v289, v290, v291, v292, v293, v294, v295, v296;
          goto LABEL_93;
        }
      }

      else
      {
        v129, v131, v132, v133, v134, v135, v136, v137;
      }
    }

    v146 = swift_weakLoadStrong();
    if (v146)
    {
      v147 = *(v146 + 16);
      v148 = v146;
      swift_unknownObjectRetain();
      v148, v149, v150, v151, v152, v153, v154, v155;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v147)
      {
        swift_unknownObjectRelease();
        v156 = swift_weakLoadStrong();
        if (v156)
        {
          v157 = v156;
          v158 = *(v156 + 16);
          swift_getObjectType();
          if (swift_conformsToProtocol2() && v158)
          {
            v305 = v124;
            swift_beginAccess();
            v124 = v157[9];
            if (v124 >> 62)
            {
              v65 = sub_1BE053704();
            }

            else
            {
              v65 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            sub_1BE048C84();
            v44 = 0;
            while (v65 != v44)
            {
              if ((v124 & 0xC000000000000001) != 0)
              {
                v173 = MEMORY[0x1BFB40900](v44, v124);
                if (__OFADD__(v44, 1))
                {
                  goto LABEL_72;
                }
              }

              else
              {
                if (v44 >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_126;
                }

                v173 = sub_1BE048964();
                if (__OFADD__(v44, 1))
                {
LABEL_72:
                  __break(1u);
                  goto LABEL_73;
                }
              }

              v181 = v173[32];
              v173, v174, v175, v176, v177, v178, v179, v180;
              ++v44;
              if (v181 == 3)
              {
                v124, v166, v167, v168, v169, v170, v171, v172;
                v157, v297, v298, v299, v300, v301, v302, v303;
                v124 = v305;
                goto LABEL_74;
              }
            }

            v124, v166, v167, v168, v169, v170, v171, v172;
            v124 = v305;
          }

          v157, v159, v160, v161, v162, v163, v164, v165;
          goto LABEL_118;
        }
      }

      else
      {
LABEL_73:
        swift_unknownObjectRelease();
      }
    }

LABEL_74:
    v125 = v306;
    if (*(v56 + 32) == 1)
    {
      goto LABEL_75;
    }

LABEL_47:
    if (!v125)
    {
      goto LABEL_92;
    }

    goto LABEL_48;
  }

  if (*(v56 + 32) != 1)
  {
    goto LABEL_47;
  }

LABEL_75:
  v182 = *(v56 + 16);
  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v182 || swift_conformsToProtocol2())
  {
    goto LABEL_95;
  }

  v304 = v124;
  swift_beginAccess();
  v65 = *(v56 + 72);
  v10 = v65 & 0xFFFFFFFFFFFFFF8;
  if (v65 >> 62)
  {
LABEL_129:
    v183 = sub_1BE053704();
    goto LABEL_80;
  }

  v183 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_80:
  v109 = sub_1BE048C84();
  v44 = 0;
  do
  {
    if (v183 == v44)
    {
      goto LABEL_90;
    }

    if ((v65 & 0xC000000000000001) != 0)
    {
      v191 = MEMORY[0x1BFB40900](v44, v65);
      if (__OFADD__(v44, 1))
      {
LABEL_89:
        __break(1u);
LABEL_90:
        v124 = v304;
        goto LABEL_94;
      }
    }

    else
    {
      if (v44 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_122;
      }

      v191 = sub_1BE048964();
      if (__OFADD__(v44, 1))
      {
        goto LABEL_89;
      }
    }

    v192 = v191[32];
    v191, v184, v185, v186, v187, v188, v189, v190;
    ++v44;
  }

  while (v192 != 3);
  v65, v184, v185, v186, v187, v188, v189, v190;
  v125 = v306;
  v124 = v304;
  if (!v306)
  {
LABEL_92:
    v127 = sub_1BD1AACF8(MEMORY[0x1E69E7CC0]);
    goto LABEL_93;
  }

LABEL_48:
  v126 = v125;
  swift_beginAccess();
  v127 = *(v126 + 5);
  sub_1BE048C84();
LABEL_93:
  swift_beginAccess();
  v65 = *(v56 + 40);
  *(v56 + 40) = v127;
LABEL_94:
  v65, v184, v185, v186, v187, v188, v189, v190;
LABEL_95:
  v193 = *(v56 + 16);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v201 = v193 == 0;
  }

  else
  {
    v201 = 1;
  }

  if (v201)
  {
    v124, v194, v195, v196, v197, v198, v199, v200;
    v20, v202, v203, v204, v205, v206, v207, v208;
    v306, v209, v210, v211, v212, v213, v214, v215;
    if (!*(v56 + 32))
    {
      return v56;
    }

    v35 = v56;
    goto LABEL_8;
  }

  if (*(v56 + 32))
  {
    v216 = sub_1BD6DB8A0();
    if (v216)
    {
      v216, v217, v218, v219, v220, v221, v222, v223;
    }

    else
    {
      if (*(v56 + 32) != 3)
      {
        *(v56 + 32) = 3;
      }

      v238 = swift_allocObject();
      v239 = swift_allocObject();
      *(v239 + 16) = xmmword_1BE0B7020;
      *(v239 + 32) = v56;
      *(v238 + 16) = v239;
      v240 = swift_initStackObject();
      *(v240 + 16) = sub_1BD12FFE4;
      *(v240 + 24) = v238;
      v241 = swift_initStackObject();
      v241[2] = v240;
      sub_1BE048964();
      v242 = sub_1BE048964();
      v243 = *(v240 + 16);
      (v243)(&v307, v242);
      for (i = v307; v307; i = v307)
      {
        if (i[32] != 3)
        {
          i[32] = 3;
        }

        i, v244, v245, v246, v247, v248, v249, v250;
        v243(&v307);
      }

      v241, v244, v245, v246, v247, v248, v249, v250;
      swift_setDeallocating();
      v241[2], v252, v253, v254, v255, v256, v257, v258;
    }

    v259 = sub_1BD399404();
    v56, v260, v261, v262, v263, v264, v265, v266;
    v124, v267, v268, v269, v270, v271, v272, v273;
    v20, v274, v275, v276, v277, v278, v279, v280;
    v306, v281, v282, v283, v284, v285, v286, v287;
    return v259;
  }

  else
  {
    v124, v194, v195, v196, v197, v198, v199, v200;
    v20, v224, v225, v226, v227, v228, v229, v230;
    v306, v231, v232, v233, v234, v235, v236, v237;
    return v56;
  }
}

void sub_1BD399EE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  *(a2 + 16) = 0;
  sub_1BD39F5DC(a1, v52);
  if (v53 == 254)
  {
    if (*(a3 + 32) != 3)
    {
      *(a3 + 32) = 3;
    }

    v15 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BE0B7020;
    *(v16 + 32) = a3;
    *(v15 + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
    inited = swift_initStackObject();
    *(inited + 16) = sub_1BD12FFE4;
    *(inited + 24) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118, &unk_1BE0F0B80);
    v18 = swift_initStackObject();
    v18[2] = inited;
    sub_1BE048964();
    v19 = sub_1BE048964();
    v20 = *(inited + 16);
    (v20)(v50, v19);
    for (i = *&v50[0]; *&v50[0]; i = *&v50[0])
    {
      if (i[32] != 3)
      {
        i[32] = 3;
      }

      i, v21, v22, v23, v24, v25, v26, v27;
      v20(v50);
    }

    v18, v21, v22, v23, v24, v25, v26, v27;
    swift_setDeallocating();
    v18[2], v29, v30, v31, v32, v33, v34, v35;
    goto LABEL_19;
  }

  if (v53 != 255)
  {
    v50[0] = v52[0];
    v50[1] = v52[1];
    v51 = v53;
    sub_1BD39F614(v50, v48);
    if (v49 == 1)
    {
      sub_1BD39F670(v48);
    }

    else if (v49 != 2)
    {
      sub_1BE053994();
      __break(1u);
      return;
    }

    v36 = *(a3 + 16);
    v37 = *(a3 + 24);
    sub_1BD39F614(v50, v48);
    sub_1BD39AEB0(v36, v37, v48, 0, 0);
    sub_1BD0DE53C(v48, &unk_1EBD3F510, &unk_1BE0B9B30);
    sub_1BD39F670(v50);
    return;
  }

  v11 = *(a3 + 16);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    goto LABEL_19;
  }

  ObjectType = swift_getObjectType();
  v14 = (*(a6 + 56))(ObjectType, a6);
  if ((v14 | 2) == 2)
  {
    if (*(a3 + 32) != 3)
    {
      *(a3 + 32) = 3;
    }

LABEL_19:
    sub_1BD39882C(a3);
    return;
  }

  v38 = *(a3 + 48);
  *(a3 + 48) = v14;
  v39 = v14;
  sub_1BD28B4A8(v14);
  sub_1BD28B4B8(v38);
  v40 = a4;
  sub_1BE048964();
  sub_1BD39E9B4(v40, v40, a3);

  a3, v41, v42, v43, v44, v45, v46, v47;
  sub_1BD28B4B8(v39);
}

void sub_1BD39A244(void *a1)
{
  v2 = v1;
  v237[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v223 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  i = &v223 - v9;
  v11 = sub_1BD6DB0E0();
  if (!v11)
  {
    sub_1BE04D0E4();
    sub_1BE048964();
    v33 = sub_1BE04D204();
    v34 = sub_1BE052C34();
    a1, v35, v36, v37, v38, v39, v40, v41;
    if (os_log_type_enabled(v33, v34))
    {
      v42 = a1;
      v43 = swift_slowAlloc();
      v44 = v5;
      v45 = swift_slowAlloc();
      v237[0] = v45;
      *v43 = 136446210;
      key = 0x3C65646F4ELL;
      v236 = 0xE500000000000000;
      v46 = v42[3];
      ObjectType = swift_getObjectType();
      v48 = (*(v46 + 8))(ObjectType, v46);
      v50 = v49;
      MEMORY[0x1BFB3F610](v48);
      v50, v51, v52, v53, v54, v55, v56, v57;
      MEMORY[0x1BFB3F610](62, 0xE100000000000000);
      v58 = v236;
      v59 = sub_1BD123690(key, v236, v237);
      v58, v60, v61, v62, v63, v64, v65, v66;
      *(v43 + 4) = v59;
      _os_log_impl(&dword_1BD026000, v33, v34, "%{public}s missing renderer", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45, v67, v68, v69, v70, v71, v72, v73);
      MEMORY[0x1BFB45F20](v45, -1, -1);
      MEMORY[0x1BFB45F20](v43, -1, -1);

      (*(v44 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return;
  }

  v13 = v11;
  v14 = v12;
  v232 = v5;
  v15 = swift_getObjectType();
  v16 = *(v14 + 80);
  v225 = v2;
  swift_unknownObjectRetain();
  v229 = v14;
  v16(v2, &off_1F3BA3130, v15, v14);
  v228 = v13;
  swift_unknownObjectRelease();
  v231 = a1[6];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1BD39F6C4;
  *(v18 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F90, &unk_1BE0D0AA0);
  v19 = swift_allocObject();
  v19[2] = v18;
  sub_1BE048964();
  v20 = sub_1BD39D834(v19);
  v28 = v20;
  key = MEMORY[0x1E69E7CC0];
  if (v20 >> 62)
  {
LABEL_89:
    v29 = sub_1BE053704();
  }

  else
  {
    v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v233 = v4;
  v224 = v2;
  v226 = a1;
  if (v29)
  {
    v4 = 0;
    a1 = (v28 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1BFB40900](v4, v28);
        v31 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v32 = key;
          goto LABEL_20;
        }
      }

      else
      {
        if (v4 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v30 = *(v28 + 8 * v4 + 32);
        sub_1BE048964();
        v31 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_15;
        }
      }

      if (v30[32] == 1)
      {
        sub_1BE0538C4();
        v2 = *(key + 16);
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
        v30, v21, v22, v23, v24, v25, v26, v27;
      }

      ++v4;
      if (v31 == v29)
      {
        goto LABEL_16;
      }
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v28, v21, v22, v23, v24, v25, v26, v27;
  v237[0] = v32;
  v74 = sub_1BE048964();
  MEMORY[0x1BFB3F7A0](v74);
  if (*((v237[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v237[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v75 = v237[0];
  sub_1BE04D0E4();
  v76 = sub_1BE04D204();
  v4 = sub_1BE052C24();
  v77 = os_log_type_enabled(v76, v4);
  v28 = v228;
  if (v77)
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    key = v79;
    *v78 = 136446210;
    v80 = type metadata accessor for UIFlowNode();
    v81 = sub_1BE048C84();
    v82 = MEMORY[0x1BFB3F7F0](v81, v80);
    v84 = v83;
    v75, v83, v85, v86, v87, v88, v89, v90;
    v91 = sub_1BD123690(v82, v84, &key);
    v84, v92, v93, v94, v95, v96, v97, v98;
    *(v78 + 4) = v91;
    _os_log_impl(&dword_1BD026000, v76, v4, "Activating: %{public}s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79, v99, v100, v101, v102, v103, v104, v105);
    MEMORY[0x1BFB45F20](v79, -1, -1);
    MEMORY[0x1BFB45F20](v78, -1, -1);
  }

  (*(v232 + 8))(i, v233);
  v113 = v229;
  v114 = v231;
  if (v75 >> 62)
  {
    v2 = sub_1BE053704();
  }

  else
  {
    v2 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = v75;
  v115 = v114 - 3;
  if (!v2)
  {
    if (v115 > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_84:
      v215 = v226;
      sub_1BD6DB1B4();
      swift_unknownObjectRelease();
      *(v215 + 113) = 1;
      a1, v216, v217, v218, v219, v220, v221, v222;
    }

    else
    {
      v75, v106, v107, v108, v109, v110, v111, v112;
      swift_unknownObjectRelease();
    }

    return;
  }

  v223 = OBJC_IVAR____TtC9PassKitUI13UIFlowManager_inflightRenderersBeingPresented;
  v233 = v75 & 0xC000000000000001;
  v230 = v75 & 0xFFFFFFFFFFFFFF8;
  sub_1BE048C84();
  LODWORD(v232) = 0;
  v116 = 0;
  v227 = a1;
  v231 = v114 - 3;
  while (2)
  {
    v228 = (v113 + 4);
    v229 = v113;
    for (i = v116; ; ++i)
    {
      if (v233)
      {
        v4 = MEMORY[0x1BFB40900](i, a1);
        v116 = (i + 1);
        if (__OFADD__(i, 1))
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (i >= *(v230 + 16))
        {
          goto LABEL_88;
        }

        v4 = a1[i + 4];
        sub_1BE048964();
        v116 = (i + 1);
        if (__OFADD__(i, 1))
        {
          goto LABEL_87;
        }
      }

      if (*(v4 + 32) != 2)
      {
        *(v4 + 114) = 0;
        v131 = *(v4 + 16);
        swift_getObjectType();
        v132 = swift_conformsToProtocol2();
        if (v132)
        {
          v133 = v131 == 0;
        }

        else
        {
          v133 = 1;
        }

        if (!v133)
        {
          v134 = v132;
          v135 = swift_getObjectType();
          v136 = v28;
          v137 = *(v134 + 24);
          swift_unknownObjectRetain();
          v138 = v135;
          v113 = v229;
          v137(v138, v134);
          v115 = v231;
          v28 = v136;
          a1 = v227;
          swift_unknownObjectRelease();
        }

        *(v4 + 32) = 2;
      }

      if (v115 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v4, v124, v125, v126, v127, v128, v129, v130;
        if (v116 == v2)
        {
          a1, v117, v118, v119, v120, v121, v122, v123;
          goto LABEL_84;
        }

        continue;
      }

      if (v232)
      {
        sub_1BD6DB14C();
        *(v4 + 112) = 0;
        *(v4 + 104) = v113;
        swift_unknownObjectWeakAssign();
        goto LABEL_47;
      }

      v146 = swift_getObjectType();
      v147 = (v113[4])(v146, v113);
      if (v147 >> 62)
      {
        break;
      }

      v155 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v147, v148, v149, v150, v151, v152, v153, v154;
      if (v155)
      {
        goto LABEL_64;
      }

LABEL_51:
      if ((sub_1BD6DB14C() & 1) == 0)
      {
        goto LABEL_64;
      }

      *(v4 + 112) = 0;
      *(v4 + 104) = v113;
      swift_unknownObjectWeakAssign();
      objc_opt_self();
      v156 = swift_dynamicCastObjCClass();
      if (!v156)
      {
        goto LABEL_66;
      }

      v164 = v156;
      swift_unknownObjectRetain_n();
      v165 = [v164 transitioningDelegate];
      v115 = v231;
      if (!v165)
      {
        v173 = *(v4 + 48);
        if (v173 == 2)
        {
          v175 = 0;
        }

        else
        {
          if (v173 == 1)
          {
            v174 = 0;
          }

          else
          {
            v174 = *(v4 + 48);
          }

          sub_1BD28B4A8(v173);
          v175 = [v174 transitioningDelegate];

          v113 = v229;
        }

        [v164 setTransitioningDelegate_];
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
LABEL_47:
        v4, v139, v140, v141, v142, v143, v144, v145;
        if (v116 == v2)
        {
          goto LABEL_85;
        }

        continue;
      }

      v4, v166, v167, v168, v169, v170, v171, v172;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      if (v116 == v2)
      {
        goto LABEL_85;
      }

LABEL_30:
      ;
    }

    v176 = v147;
    v177 = sub_1BE053704();
    v178 = v176;
    v113 = v229;
    v178, v179, v180, v181, v182, v183, v184, v185;
    if (!v177)
    {
      goto LABEL_51;
    }

LABEL_64:
    if ((sub_1BD6DB14C() & 1) == 0)
    {
      *(v4 + 104) = v113;
      swift_unknownObjectWeakAssign();
LABEL_66:
      v4, v157, v158, v159, v160, v161, v162, v163;
      v115 = v231;
      if (v116 == v2)
      {
        break;
      }

      goto LABEL_30;
    }

    v186 = *(v4 + 48);
    if (v186 < 3)
    {
      goto LABEL_69;
    }

    swift_getObjectType();
    v200 = swift_conformsToProtocol2();
    if (v200)
    {
      v201 = v200;
      sub_1BD28B4A8(v186);
      swift_unknownObjectRelease();
      *(v4 + 104) = v201;
      swift_unknownObjectWeakAssign();
      v28 = v186;
      v113 = v201;
    }

    else
    {
      objc_opt_self();
      v202 = swift_dynamicCastObjCClass();
      if (v202)
      {
        v203 = v202;
        v204 = type metadata accessor for UIFlowManagerRendererWrapper();
        v205 = objc_allocWithZone(v204);
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        sub_1BD28B4A8(v186);
        v234.receiver = v205;
        v234.super_class = v204;
        v206 = objc_msgSendSuper2(&v234, sel_init);
        LOBYTE(key) = 0;
        v207 = v206;
        sub_1BD28B498(v186);
        v28 = v207;
        objc_setAssociatedObject(v203, &key, v28, 1);

        swift_unknownObjectRelease();
        sub_1BD28B4B8(v186);

        sub_1BD28B4B8(v186);
        v113 = &off_1F3BAE1D8;
        *(v4 + 104) = &off_1F3BAE1D8;
        swift_unknownObjectWeakAssign();
      }

      else
      {
LABEL_69:
        v187 = (v113[8])(v146, v113);
        v189 = v188;
        v190 = v225;
        v191 = v223;
        swift_beginAccess();
        v192 = *&v190[v191];
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v190[v191] = v192;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v192 = sub_1BD1D8950(0, (v192[2] + 1), 1, v192);
          *&v225[v223] = v192;
        }

        v195 = v192[2];
        v194 = v192[3];
        if (v195 >= v194 >> 1)
        {
          v192 = sub_1BD1D8950((v194 > 1), (v195 + 1), 1, v192);
        }

        v192[2] = v195 + 1;
        v196 = &v192[2 * v195];
        v196[4] = v187;
        v196[5] = v189;
        *&v225[v223] = v192;
        swift_endAccess();
        v197 = swift_getObjectType();
        v198 = *(v189 + 80);
        swift_unknownObjectRetain();
        v199 = v197;
        v113 = v189;
        v198(v224, &off_1F3BA3130, v199, v189);
        swift_unknownObjectRelease();
        *(v4 + 104) = v189;
        swift_unknownObjectWeakAssign();
        v28 = v187;
        a1 = v227;
      }
    }

    sub_1BD6DB1B4();
    LODWORD(v232) = 1;
    *(v4 + 113) = 1;
    v4, v208, v209, v210, v211, v212, v213, v214;
    v115 = v231;
    if (v116 != v2)
    {
      continue;
    }

    break;
  }

LABEL_85:
  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1BD39AEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  result = sub_1BD39CF78(a3, a1, a2);
  if (result)
  {
    v86 = a5;
    v87 = a4;
    v11 = *(v5 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
    v12 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BE0B7020;
    *(v13 + 32) = v11;
    *(v12 + 16) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
    inited = swift_initStackObject();
    *(inited + 16) = sub_1BD12F81C;
    *(inited + 24) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118, &unk_1BE0F0B80);
    v15 = swift_initStackObject();
    v15[2] = inited;
    sub_1BE048964();
    v16 = sub_1BE048964();
    v17 = *(inited + 16);
    (v17)(&v88, v16);
    v25 = v88;
    if (v88)
    {
      v26 = 0;
      while (2)
      {
        v27 = v25;
        while (*(v27 + 16) != a1)
        {
          if (v26)
          {
            if (*(v27 + 32))
            {
              *(v27 + 104) = 0;
              swift_unknownObjectWeakAssign();
              v28 = *(v27 + 48);
              *(v27 + 48) = 2;
              sub_1BD28B4B8(v28);
              *(v27 + 32) = 0;
            }

            if (*(v27 + 57))
            {
              sub_1BD6DBB64();
            }

            else
            {
              v29 = *(v27 + 16);
              swift_getObjectType();
              if (swift_conformsToProtocol2() && v29 && !swift_conformsToProtocol2())
              {
                sub_1BD6DB6B4();
              }
            }
          }

          v27, v18, v19, v20, v21, v22, v23, v24;
          v17(&v88);
          v27 = v88;
          if (!v88)
          {
            v27 = v26;
            goto LABEL_20;
          }
        }

        v26, v18, v19, v20, v21, v22, v23, v24;
        v17(&v88);
        v25 = v88;
        v26 = v27;
        if (v88)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v27 = 0;
    }

LABEL_20:
    v15, v18, v19, v20, v21, v22, v23, v24;
    swift_setDeallocating();
    v15[2], v30, v31, v32, v33, v34, v35, v36;
    if (v27)
    {
      v37 = *(v6 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode);
      *(v6 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode) = v27;
      swift_retain_n();
      v37, v38, v39, v40, v41, v42, v43, v44;
      if (*(v27 + 32) != 3)
      {
        *(v27 + 32) = 3;
      }

      v45 = swift_allocObject();
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1BE0B7020;
      *(v46 + 32) = v27;
      *(v45 + 16) = v46;
      v47 = swift_initStackObject();
      *(v47 + 16) = sub_1BD12FFE4;
      *(v47 + 24) = v45;
      v48 = swift_initStackObject();
      v48[2] = v47;
      sub_1BE048964();
      v49 = sub_1BE048964();
      v50 = *(v47 + 16);
      (v50)(&v88, v49);
      for (i = v88; v88; i = v88)
      {
        if (i[32] != 3)
        {
          i[32] = 3;
        }

        i, v51, v52, v53, v54, v55, v56, v57;
        v50(&v88);
      }

      v48, v51, v52, v53, v54, v55, v56, v57;
      swift_setDeallocating();
      v48[2], v59, v60, v61, v62, v63, v64, v65;
      if (v87)
      {
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v67 = Strong;
          type metadata accessor for UIFlowNode();
          v68 = swift_allocObject();
          ObjectType = swift_getObjectType();
          v70 = swift_unknownObjectRetain_n();
          v71 = sub_1BD6DC1D0(v70, v68, ObjectType, v86);
          sub_1BD6DB314(v71, v27, v27, 1);
          swift_unknownObjectRelease();
          v67, v72, v73, v74, v75, v76, v77, v78;
          v71, v79, v80, v81, v82, v83, v84, v85;
        }
      }

      sub_1BD39882C(v27);
    }

    else
    {
      result = sub_1BE053994();
      __break(1u);
    }
  }

  return result;
}

void sub_1BD39B338(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v158 = a7;
  v159 = a8;
  v160 = a6;
  v15 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v154 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v154 - v24;
  if (a4 <= 1u)
  {
    v63 = a1;
    v64 = a2;
    if (!a4)
    {
      sub_1BE048C84();
LABEL_12:
      ObjectType = swift_getObjectType();
      v66 = swift_allocObject();
      v67 = v160;
      v66[2] = v160;
      v66[3] = a1;
      v66[4] = a2;
      v66[5] = a5;
      v68 = v159;
      v66[6] = v158;
      v66[7] = v68;
      v69 = *(a10 + 48);
      sub_1BE048964();
      v70 = v67;
      sub_1BE048964();
      v69(sub_1BD39F5CC, v66, ObjectType, a10);

      v66, v71, v72, v73, v74, v75, v76, v77;
      return;
    }
  }

  else
  {
    if (a4 != 2)
    {
      v156 = v23;
      v157 = v22;
      if (a4 == 3)
      {
        sub_1BE04D0E4();
        sub_1BD39F54C(a1, a2, a3, 3u);
        sub_1BE048964();
        v26 = sub_1BE04D204();
        v27 = sub_1BE052C54();
        a5, v28, v29, v30, v31, v32, v33, v34;
        sub_1BD3336EC(a1, a2, a3, 3, v35, v36, v37, v38);
        if (os_log_type_enabled(v26, v27))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v39 = 136446466;
          v161 = v40;
          *&v162 = 0x3C65646F4ELL;
          *(&v162 + 1) = 0xE500000000000000;
          v41 = a5[3];
          v42 = swift_getObjectType();
          v43 = (*(v41 + 8))(v42, v41);
          v45 = v44;
          MEMORY[0x1BFB3F610](v43);
          v45, v46, v47, v48, v49, v50, v51, v52;
          MEMORY[0x1BFB3F610](62, 0xE100000000000000);
          v53 = *(&v162 + 1);
          v54 = sub_1BD123690(v162, *(&v162 + 1), &v161);
          v53, v55, v56, v57, v58, v59, v60, v61;
          *(v39 + 4) = v54;
          *(v39 + 12) = 2082;
          *(v39 + 14) = sub_1BD123690(a1, a2, &v161);
          _os_log_impl(&dword_1BD026000, v26, v27, "%{public}s canceling because '%{public}s'.", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB45F20](v40, -1, -1);
          MEMORY[0x1BFB45F20](v39, -1, -1);
        }

        (*(v156 + 8))(v20, v157);
        if (([v160 invalidate] & 1) == 0)
        {
          v162 = 0u;
          v163 = 0u;
          v62 = 2;
LABEL_19:
          v164 = v62;
LABEL_24:
          v158(&v162);
          sub_1BD39F51C(&v162);
          return;
        }
      }

      else
      {
        sub_1BE04D0E4();
        sub_1BE048964();
        sub_1BE048C84();
        v114 = sub_1BE04D204();
        v115 = sub_1BE052C54();
        a3, v116, v117, v118, v119, v120, v121, v122;
        a5, v123, v124, v125, v126, v127, v128, v129;
        if (os_log_type_enabled(v114, v115))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          *v130 = 136446466;
          v161 = v131;
          *&v162 = 0x3C65646F4ELL;
          *(&v162 + 1) = 0xE500000000000000;
          v132 = a5[3];
          v133 = swift_getObjectType();
          v134 = (*(v132 + 8))(v133, v132);
          v136 = v135;
          MEMORY[0x1BFB3F610](v134);
          v136, v137, v138, v139, v140, v141, v142, v143;
          MEMORY[0x1BFB3F610](62, 0xE100000000000000);
          v144 = *(&v162 + 1);
          v145 = sub_1BD123690(v162, *(&v162 + 1), &v161);
          v144, v146, v147, v148, v149, v150, v151, v152;
          *(v130 + 4) = v145;
          *(v130 + 12) = 2082;
          *(v130 + 14) = sub_1BD123690(a2, a3, &v161);
          _os_log_impl(&dword_1BD026000, v114, v115, "%{public}s failed because '%{public}s'.", v130, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB45F20](v131, -1, -1);
          MEMORY[0x1BFB45F20](v130, -1, -1);
        }

        (*(v156 + 8))(v17, v157);
        if (([v160 invalidate] & 1) == 0)
        {
          *&v162 = a1;
          v164 = 1;
          v153 = a1;
          goto LABEL_24;
        }
      }

      return;
    }

    v63 = a2;
    v64 = a3;
    if (a1)
    {
      a1 = 0;
      a2 = 0;
      goto LABEL_12;
    }
  }

  v155 = v63;
  v156 = v23;
  v157 = v22;
  sub_1BE04D0E4();
  sub_1BD39F54C(a1, a2, a3, a4);
  sub_1BE048964();
  v78 = sub_1BE04D204();
  v79 = sub_1BE052C54();
  a5, v80, v81, v82, v83, v84, v85, v86;
  sub_1BD3336EC(a1, a2, a3, a4, v87, v88, v89, v90);
  if (os_log_type_enabled(v78, v79))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v91 = 136446466;
    v161 = v92;
    *&v162 = 0x3C65646F4ELL;
    *(&v162 + 1) = 0xE500000000000000;
    v93 = a5[3];
    v94 = swift_getObjectType();
    v95 = (*(v93 + 8))(v94, v93);
    v97 = v96;
    MEMORY[0x1BFB3F610](v95);
    v97, v98, v99, v100, v101, v102, v103, v104;
    MEMORY[0x1BFB3F610](62, 0xE100000000000000);
    v105 = *(&v162 + 1);
    v106 = sub_1BD123690(v162, *(&v162 + 1), &v161);
    v105, v107, v108, v109, v110, v111, v112, v113;
    *(v91 + 4) = v106;
    *(v91 + 12) = 2082;
    *(v91 + 14) = sub_1BD123690(v155, v64, &v161);
    _os_log_impl(&dword_1BD026000, v78, v79, "%{public}s should not be shown because '%{public}s'.", v91, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v92, -1, -1);
    MEMORY[0x1BFB45F20](v91, -1, -1);
  }

  (*(v156 + 8))(v25, v157);
  if (([v160 invalidate] & 1) == 0)
  {
    v162 = 0u;
    v163 = 0u;
    v62 = -2;
    goto LABEL_19;
  }
}

uint64_t sub_1BD39BAAC(char a1, void *a2, void *a3, void *a4, void *a5, void (*a6)(_OWORD *), uint64_t a7)
{
  v106 = a7;
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v102[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v102[-v19];
  result = [a2 invalidate];
  if ((result & 1) == 0)
  {
    v105 = a6;
    if (a4 && (a1 & 1) != 0)
    {
      sub_1BE04D0E4();
      sub_1BE048964();
      sub_1BE048C84();
      v22 = sub_1BE04D204();
      v23 = sub_1BE052C54();
      a4, v24, v25, v26, v27, v28, v29, v30;
      a5, v31, v32, v33, v34, v35, v36, v37;
      if (os_log_type_enabled(v22, v23))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v104 = v39;
        *v38 = 136446722;
        v107 = v39;
        *&v108[0] = 0x3C65646F4ELL;
        *(&v108[0] + 1) = 0xE500000000000000;
        v103 = v23;
        v40 = a5[3];
        ObjectType = swift_getObjectType();
        v42 = (*(v40 + 8))(ObjectType, v40);
        v44 = v43;
        MEMORY[0x1BFB3F610](v42);
        v44, v45, v46, v47, v48, v49, v50, v51;
        MEMORY[0x1BFB3F610](62, 0xE100000000000000);
        v52 = *(&v108[0] + 1);
        v53 = sub_1BD123690(*&v108[0], *(&v108[0] + 1), &v107);
        v52, v54, v55, v56, v57, v58, v59, v60;
        *(v38 + 4) = v53;
        *(v38 + 12) = 1024;
        *(v38 + 14) = 1;
        *(v38 + 18) = 2082;
        *(v38 + 20) = sub_1BD123690(a3, a4, &v107);
        _os_log_impl(&dword_1BD026000, v22, v103, "%{public}s finished preflight with shouldBeShown: %{BOOL}d because '%{public}s'", v38, 0x1Cu);
        v61 = v104;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v61, -1, -1);
        MEMORY[0x1BFB45F20](v38, -1, -1);
      }

      (*(v14 + 8))(v20, v13);
      v62 = -1;
    }

    else
    {
      sub_1BE04D0E4();
      sub_1BE048964();
      v63 = sub_1BE04D204();
      v64 = sub_1BE052C54();
      a5, v65, v66, v67, v68, v69, v70, v71;
      if (os_log_type_enabled(v63, v64))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 136446466;
        v107 = v73;
        *&v108[0] = 0x3C65646F4ELL;
        *(&v108[0] + 1) = 0xE500000000000000;
        v74 = a5[3];
        v75 = swift_getObjectType();
        v76 = (*(v74 + 8))(v75, v74);
        v78 = v77;
        MEMORY[0x1BFB3F610](v76);
        v78, v79, v80, v81, v82, v83, v84, v85;
        MEMORY[0x1BFB3F610](62, 0xE100000000000000);
        v86 = *(&v108[0] + 1);
        v87 = sub_1BD123690(*&v108[0], *(&v108[0] + 1), &v107);
        v86, v88, v89, v90, v91, v92, v93, v94;
        *(v72 + 4) = v87;
        *(v72 + 12) = 1024;
        *(v72 + 14) = a1 & 1;
        _os_log_impl(&dword_1BD026000, v63, v64, "%{public}s finished preflight with shouldBeShown: %{BOOL}d", v72, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v73, v95, v96, v97, v98, v99, v100, v101);
        MEMORY[0x1BFB45F20](v73, -1, -1);
        MEMORY[0x1BFB45F20](v72, -1, -1);
      }

      (*(v14 + 8))(v16, v13);
      if (a1)
      {
        v62 = -1;
      }

      else
      {
        v62 = -2;
      }
    }

    memset(v108, 0, sizeof(v108));
    v109 = v62;
    v105(v108);
    return sub_1BD39F51C(v108);
  }

  return result;
}

void sub_1BD39BEFC()
{
  v1 = MEMORY[0x1E69E7CC0];
  v113 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B7020;
  *(v4 + 32) = v2;
  *(v3 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD12FFE4;
  *(inited + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118, &unk_1BE0F0B80);
  v6 = swift_initStackObject();
  v6[2] = inited;
  sub_1BE048964();
  v7 = sub_1BE048964();
  v8 = *(inited + 16);
  (v8)(v112, v7);
  v16 = v112[0];
  if (v112[0])
  {
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v16[32] == 3 && (sub_1BD6DB1B4() & 1) != 0)
      {
        v18 = sub_1BE048964();
        MEMORY[0x1BFB3F7A0](v18);
        if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v16, v19, v20, v21, v22, v23, v24, v25;
        v17 = v113;
      }

      else
      {
        v16, v9, v10, v11, v12, v13, v14, v15;
      }

      v8(v112);
      v16 = v112[0];
    }

    while (v112[0]);
  }

  else
  {
    v17 = v1;
  }

  v6, v9, v10, v11, v12, v13, v14, v15;
  swift_setDeallocating();
  v6[2], v26, v27, v28, v29, v30, v31, v32;
  if (v17 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v41 = 0;
    v107 = v17;
    v108 = v17 & 0xC000000000000001;
    v104 = v17 + 32;
    v105 = v17 & 0xFFFFFFFFFFFFFF8;
    v106 = i;
    while (1)
    {
      if (v108)
      {
        v49 = MEMORY[0x1BFB40900](v41, v17);
        v50 = __OFADD__(v41++, 1);
        if (v50)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v41 >= *(v105 + 16))
        {
          goto LABEL_50;
        }

        v49 = *(v104 + 8 * v41);
        sub_1BE048964();
        v50 = __OFADD__(v41++, 1);
        if (v50)
        {
          goto LABEL_49;
        }
      }

      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_43;
      }

      v110 = v41;
      v59 = Strong;
      swift_beginAccess();
      v109 = v59;
      v60 = v59[9];
      v111 = v1;
      v61 = v60 >> 62 ? sub_1BE053704() : *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BE048C84();
      if (v61)
      {
        break;
      }

      v78 = v1;
LABEL_39:
      v60, v62, v63, v64, v65, v66, v67, v68;
      v79 = v109[9];
      v109[9] = v78;
      v79, v80, v81, v82, v83, v84, v85, v86;
      swift_weakAssign();
      if (*(v49 + 88))
      {
        *(v49 + 88) = 0;
        v41 = v110;
        if (!*(v49 + 32))
        {
          v109, v87, v88, v89, v90, v91, v92, v93;
LABEL_43:
          v103 = v49;
          goto LABEL_44;
        }

        v94 = *(v49 + 24);
        ObjectType = swift_getObjectType();
        (*(v94 + 64))(ObjectType, v94);
        v49, v96, v97, v98, v99, v100, v101, v102;
        v103 = v109;
LABEL_44:
        v103, v52, v53, v54, v55, v56, v57, v58;
        if (v41 == i)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v109, v87, v88, v89, v90, v91, v92, v93;
        v49, v42, v43, v44, v45, v46, v47, v48;
        v41 = v110;
        if (v110 == i)
        {
          goto LABEL_52;
        }
      }
    }

    v1 = 0;
    v17 = v60 & 0xFFFFFFFFFFFFFF8;
    while ((v60 & 0xC000000000000001) != 0)
    {
      v69 = MEMORY[0x1BFB40900](v1, v60);
      v77 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_47;
      }

LABEL_32:
      if (v69 == v49)
      {
        v69, v70, v71, v72, v73, v74, v75, v76;
      }

      else
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      ++v1;
      if (v77 == v61)
      {
        v78 = v111;
        v1 = MEMORY[0x1E69E7CC0];
        i = v106;
        v17 = v107;
        goto LABEL_39;
      }
    }

    if (v1 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v69 = *(v60 + 8 * v1 + 32);
    sub_1BE048964();
    v77 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_32;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:
  v17, v33, v34, v35, v36, v37, v38, v39;
}

void sub_1BD39C368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v2[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root];
  swift_getObjectType();
  v11 = sub_1BD6B0320(a1, v10);
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + 57);
    Strong = swift_retain_n();
    if (v13)
    {
LABEL_5:
      Strong, v14, v15, v16, v17, v18, v19, v20;
      v23 = Strong;
    }

    else
    {
      while (1)
      {
        Strong = swift_weakLoadStrong();

        if (!Strong)
        {
          break;
        }

        v22 = *(Strong + 57);
        sub_1BE048964();
        if (v22 == 1)
        {
          goto LABEL_5;
        }
      }

      v23 = 0;
      Strong = v12;
    }

    sub_1BE048964();
    sub_1BE04D0E4();
    sub_1BE048964();
    sub_1BE048964();
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C54();
    Strong, v26, v27, v28, v29, v30, v31, v32;
    v12, v33, v34, v35, v36, v37, v38, v39;
    if (os_log_type_enabled(v24, v25))
    {
      v40 = swift_slowAlloc();
      v121 = v7;
      v41 = v40;
      v119 = swift_slowAlloc();
      v124[0] = v119;
      *v41 = 136446466;
      v125 = 0x3C65646F4ELL;
      v126 = 0xE500000000000000;
      v122 = v23;
      v42 = v12[3];
      ObjectType = swift_getObjectType();
      v123 = v3;
      v44 = ObjectType;
      HIDWORD(v118) = v25;
      v120 = v6;
      v45 = *(v42 + 8);
      sub_1BE048964();
      v46 = v45(v44, v42);
      v48 = v47;
      MEMORY[0x1BFB3F610](v46);
      v48, v49, v50, v51, v52, v53, v54, v55;
      MEMORY[0x1BFB3F610](62, 0xE100000000000000);
      v12, v56, v57, v58, v59, v60, v61, v62;
      v63 = v126;
      v64 = sub_1BD123690(v125, v126, v124);
      v63, v65, v66, v67, v68, v69, v70, v71;
      *(v41 + 4) = v64;
      *(v41 + 12) = 2082;
      v125 = 0x3C65646F4ELL;
      v126 = 0xE500000000000000;
      v72 = *(Strong + 24);
      v73 = swift_getObjectType();
      v74 = *(v72 + 8);
      sub_1BE048964();
      v75 = v73;
      v3 = v123;
      v76 = v74(v75, v72);
      v23 = v122;
      v78 = v77;
      MEMORY[0x1BFB3F610](v76);
      v78, v79, v80, v81, v82, v83, v84, v85;
      MEMORY[0x1BFB3F610](62, 0xE100000000000000);
      Strong, v86, v87, v88, v89, v90, v91, v92;
      v93 = v126;
      v94 = sub_1BD123690(v125, v126, v124);
      v93, v95, v96, v97, v98, v99, v100, v101;
      *(v41 + 14) = v94;
      _os_log_impl(&dword_1BD026000, v24, BYTE4(v118), "%{public}s canceled, removing %{public}s", v41, 0x16u);
      v102 = v119;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v102, -1, -1);
      MEMORY[0x1BFB45F20](v41, -1, -1);

      (*(v121 + 8))(v9, v120);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    sub_1BE048964();
    v103 = v3;
    sub_1BD39E348(v103, Strong, v103);
    v12, v104, v105, v106, v107, v108, v109, v110;
    v23, v111, v112, v113, v114, v115, v116, v117;
  }

  else
  {
    v125 = 0;
    v126 = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE126420);
    v124[0] = a1;
    v124[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC48, &qword_1BE0BD2F0);
    sub_1BE053974();
    sub_1BE053994();
    __break(1u);
  }
}

void sub_1BD39C81C(uint64_t a1)
{
  v101 = sub_1BD6AF794();
  sub_1BD6AF8F8(a1, &v104);
  v1 = v104;
  v2 = sub_1BE053944();
  v1, v3, v4, v5, v6, v7, v8, v9;
  sub_1BE053A14();
  v17 = v105;
  if (!v105)
  {
LABEL_38:
    v2, v10, v11, v12, v13, v14, v15, v16;
    if (*(a1 + 57))
    {
      sub_1BD6DBB64();
      v75 = v101;
    }

    else
    {
      v75 = v101;
      if (*(a1 + 32))
      {
        *(a1 + 104) = 0;
        swift_unknownObjectWeakAssign();
        v76 = *(a1 + 48);
        *(a1 + 48) = 2;
        sub_1BD28B4B8(v76);
        *(a1 + 32) = 0;
      }
    }

    if (v75)
    {
      v77 = swift_allocObject();
      v77[2] = v75;
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
      inited = swift_initStackObject();
      *(inited + 16) = sub_1BD39F850;
      *(inited + 24) = v77;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BD6B0218(v77, &v105);
      for (i = v105; v105; i = v105)
      {
        if (*(i + 32) != 2)
        {
          *(i + 114) = 0;
          v87 = *(i + 16);
          swift_getObjectType();
          v88 = swift_conformsToProtocol2();
          if (v88)
          {
            v89 = v87 == 0;
          }

          else
          {
            v89 = 1;
          }

          if (!v89)
          {
            v90 = v88;
            ObjectType = swift_getObjectType();
            v92 = *(v90 + 24);
            swift_unknownObjectRetain();
            v92(ObjectType, v90);
            swift_unknownObjectRelease();
          }

          *(i + 32) = 2;
        }

        i, v79, v80, v81, v82, v83, v84, v85;
        sub_1BD6B0218(v77, &v105);
      }

      v77, v93, v94, v95, v96, v97, v98, v99;
    }

    return;
  }

  v18 = MEMORY[0x1E69E7CC0];
  v102 = v2;
  while (1)
  {
    if ((*(v17 + 57) & 1) == 0)
    {
      v47 = *(v17 + 16);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v48 = v47 == 0;
      }

      else
      {
        v48 = 1;
      }

      if (v48 || swift_conformsToProtocol2())
      {
        if (!*(v17 + 32))
        {
LABEL_32:
          v27 = v17;
          goto LABEL_33;
        }
      }

      else
      {
        sub_1BD6DB6B4();
        if (!*(v17 + 32))
        {
          goto LABEL_32;
        }
      }

      *(v17 + 104) = 0;
      swift_unknownObjectWeakAssign();
      v49 = *(v17 + 48);
      *(v17 + 48) = 2;
      sub_1BD28B4B8(v49);
      *(v17 + 32) = 0;
      goto LABEL_32;
    }

    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_32;
    }

    v27 = Strong;
    swift_beginAccess();
    v28 = v27[9];
    v105 = v18;
    v29 = v28 >> 62 ? sub_1BE053704() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1BE048C84();
    if (v29)
    {
      break;
    }

    v50 = v18;
LABEL_28:
    v28, v30, v31, v32, v33, v34, v35, v36;
    v51 = v27[9];
    v27[9] = v50;
    v51, v52, v53, v54, v55, v56, v57, v58;
    swift_weakAssign();
    if ((*(v17 + 88) & 1) == 0 || (*(v17 + 88) = 0, !*(v17 + 32)))
    {
      v27, v59, v60, v61, v62, v63, v64, v65;
      goto LABEL_32;
    }

    v66 = *(v17 + 24);
    v67 = swift_getObjectType();
    (*(v66 + 64))(v67, v66);
    v17, v68, v69, v70, v71, v72, v73, v74;
LABEL_33:
    v27, v20, v21, v22, v23, v24, v25, v26;
    sub_1BE053A14();
    v17 = v105;
    if (!v105)
    {
      goto LABEL_38;
    }
  }

  v103 = v27;
  v37 = 0;
  while ((v28 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x1BFB40900](v37, v28);
    v46 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_55;
    }

LABEL_14:
    if (v38 == v17)
    {
      v38, v39, v40, v41, v42, v43, v44, v45;
    }

    else
    {
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    ++v37;
    if (v46 == v29)
    {
      v50 = v105;
      v2 = v102;
      v27 = v103;
      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_28;
    }
  }

  if (v37 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

  v38 = *(v28 + 8 * v37 + 32);
  sub_1BE048964();
  v46 = v37 + 1;
  if (!__OFADD__(v37, 1))
  {
    goto LABEL_14;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_1BD39CCAC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (!*(v0 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode))
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode))
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  return result;
}

uint64_t sub_1BD39CD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation))
  {
    sub_1BE04D0E4();
    swift_unknownObjectRetain();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40 = v18;
      *v17 = 136446210;
      ObjectType = swift_getObjectType();
      v20 = (*(a2 + 8))(ObjectType, a2);
      v22 = v21;
      v23 = sub_1BD123690(v20, v21, &v40);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v17 + 4) = v23;
      _os_log_impl(&dword_1BD026000, v15, v16, "Discarding completion of Node<%{public}s> because already performing mutation", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18, v31, v32, v33, v34, v35, v36, v37);
      MEMORY[0x1BFB45F20](v18, -1, -1);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation) = 1;

    return sub_1BD39AEB0(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1BD39CF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v195 - v12;
  sub_1BD39F6D4(a1, v202);
  if (v203 == 255)
  {
    sub_1BD0DE53C(v202, &unk_1EBD3F510, &unk_1BE0B9B30);
LABEL_9:
    v25 = 1;
    return v25 & 1;
  }

  v204[0] = v202[0];
  v204[1] = v202[1];
  v205 = v203;
  sub_1BD39F614(v204, v202);
  if (v203)
  {
    if (v203 != 1)
    {
      sub_1BD39C368(a2, a3);
LABEL_32:
      sub_1BD39F670(v204);
      v25 = 0;
      return v25 & 1;
    }

    v14 = *&v202[0];
    v15 = *&v3[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
    if (v15)
    {
      v16 = *&v3[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler + 8];
      v200[0] = *&v202[0];
      v201 = 1;
      v17 = *&v202[0];
      sub_1BD0D44B8(v15, v16);
      v18 = v15(v200);
      sub_1BD0DE53C(v200, &qword_1EBD43CF0, &unk_1BE0CE1F0);
      if (v18)
      {
        sub_1BD398F04();
        sub_1BD0D4744(v15, v16, v19, v20, v21, v22, v23, v24);

        sub_1BD39F670(v204);
      }

      else
      {
        sub_1BD39F670(v204);
        sub_1BD0D4744(v15, v16, v63, v64, v65, v66, v67, v68);
      }

      v25 = v18 ^ 1;
      return v25 & 1;
    }

    v49 = *&v3[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root];
    swift_getObjectType();
    v50 = sub_1BD6B0320(a2, v49);
    if (v50)
    {
      v51 = v50;
      v197 = v8;
      v198 = v14;
      v52 = swift_allocObject();
      v52[2] = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
      inited = swift_initStackObject();
      *(inited + 16) = sub_1BD39F84C;
      *(inited + 24) = v52;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (*(v51 + 115))
      {
        v62 = v51;
LABEL_23:
        v196 = v3;
        v52[2] = Strong;
        inited, v54, v55, v56, v57, v58, v59, v60;
        v52, v77, v78, v79, v80, v81, v82, v83;
        swift_setDeallocating();
        *(inited + 24), v84, v85, v86, v87, v88, v89, v90;
        sub_1BE048964();
        sub_1BE04D0E4();
        sub_1BE048964();
        sub_1BE048964();
        v91 = sub_1BE04D204();
        v92 = sub_1BE052C54();
        v62, v93, v94, v95, v96, v97, v98, v99;
        v51, v100, v101, v102, v103, v104, v105, v106;
        if (os_log_type_enabled(v91, v92))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v199[0] = v108;
          *v107 = 136446466;
          v109 = v51[3];
          ObjectType = swift_getObjectType();
          v111 = (*(v109 + 8))(ObjectType, v109);
          v113 = v112;
          v114 = sub_1BD123690(v111, v112, v199);
          v113, v115, v116, v117, v118, v119, v120, v121;
          *(v107 + 4) = v114;
          *(v107 + 12) = 2082;
          v122 = *(v62 + 24);
          v123 = swift_getObjectType();
          v124 = (*(v122 + 8))(v123, v122);
          v126 = v125;
          v127 = sub_1BD123690(v124, v125, v199);
          v126, v128, v129, v130, v131, v132, v133, v134;
          *(v107 + 14) = v127;
          _os_log_impl(&dword_1BD026000, v91, v92, "Node<%{public}s> failure can be caught by Node<%{public}s>", v107, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB45F20](v108, -1, -1);
          MEMORY[0x1BFB45F20](v107, -1, -1);
          v62, v135, v136, v137, v138, v139, v140, v141;
        }

        else
        {

          v62, v142, v143, v144, v145, v146, v147, v148;
        }

        (*(v197 + 8))(v13, v7);
        v149 = v198;
        v150 = v196;
        sub_1BD39E348(v150, v62, v150);
        v62, v151, v152, v153, v154, v155, v156, v157;
        v51, v158, v159, v160, v161, v162, v163, v164;

        v165 = v149;
        goto LABEL_31;
      }

      v62 = v51;
      while (1)
      {
        v69 = v62;
        v62 = Strong;
        v69, v54, v55, v56, v57, v58, v59, v60;
        if (!Strong)
        {
          break;
        }

        v52[2] = Strong;
        Strong = swift_weakLoadStrong();
        if (*(v62 + 115))
        {
          goto LABEL_23;
        }
      }

      v52[2] = 0;
      inited, v70, v71, v72, v73, v74, v75, v76;
      v52, v166, v167, v168, v169, v170, v171, v172;
      swift_setDeallocating();
      *(inited + 24), v173, v174, v175, v176, v177, v178, v179;
      v51, v180, v181, v182, v183, v184, v185, v186;
      v14 = v198;
      v8 = v197;
    }

    sub_1BE04D0E4();
    v187 = v14;
    v188 = sub_1BE04D204();
    v189 = sub_1BE052C54();

    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *v190 = 138412290;
      v192 = v14;
      v193 = _swift_stdlib_bridgeErrorToNSError();
      *(v190 + 4) = v193;
      *v191 = v193;
      _os_log_impl(&dword_1BD026000, v188, v189, "Received flow error and no result handler, terminating. \n %@", v190, 0xCu);
      sub_1BD0DE53C(v191, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v191, -1, -1);
      MEMORY[0x1BFB45F20](v190, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    sub_1BD398F04();
    v165 = v14;
LABEL_31:

    goto LABEL_32;
  }

  sub_1BD1B6140(v202, v199);
  v33 = *&v3[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  if (!v33)
  {
    __swift_destroy_boxed_opaque_existential_0(v199, v26, v27, v28, v29, v30, v31, v32);
    sub_1BD39F670(v204);
    goto LABEL_9;
  }

  v34 = *&v3[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler + 8];
  sub_1BD038CD0(v199, v200);
  v201 = 0;
  sub_1BE048964();
  v35 = v33(v200);
  sub_1BD0DE53C(v200, &qword_1EBD43CF0, &unk_1BE0CE1F0);
  if (v35)
  {
    sub_1BD398F04();
  }

  sub_1BD0D4744(v33, v34, v36, v37, v38, v39, v40, v41);
  v25 = v35 ^ 1;
  __swift_destroy_boxed_opaque_existential_0(v199, v42, v43, v44, v45, v46, v47, v48);
  sub_1BD39F670(v204);
  return v25 & 1;
}

uint64_t sub_1BD39D6BC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  swift_getObjectType();
  v5 = sub_1BD6B0320(a1, v4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD39DE34;
  *(inited + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118, &unk_1BE0F0B80);
  v9 = swift_initStackObject();
  v9[2] = inited;
  sub_1BE048964();
  v10 = sub_1BE048964();
  v11 = *(inited + 16);
  while (1)
  {
    v11(&v57, v10);
    v19 = v57;
    if (!v57)
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v19, v21, v22, v23, v24, v25, v26, v27;
    if (Strong)
    {
      v6, v28, v29, v30, v31, v32, v33, v34;
      v9, v35, v36, v37, v38, v39, v40, v41;
      goto LABEL_8;
    }
  }

  v6, v12, v13, v14, v15, v16, v17, v18;
  v9, v42, v43, v44, v45, v46, v47, v48;
  Strong = 0;
LABEL_8:
  swift_setDeallocating();
  v9[2], v49, v50, v51, v52, v53, v54, v55;
  return Strong;
}

unint64_t sub_1BD39D834(void *a1)
{
  v2 = sub_1BE053954();
  a1, v3, v4, v5, v6, v7, v8, v9;
  if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v10 = *(v2 + 16);
  v11 = v10 >> 1;
  while (v10 + 1 >= 3)
  {
    v13 = -v11;
    v14 = 4;
    while (1)
    {
      v15 = v10 - (v14 - 3);
      if (__OFSUB__(v10, v14 - 3))
      {
        break;
      }

      v16 = v14 - 4;
      if (v14 - 4 != v15)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1BFB40900]();
          v19 = MEMORY[0x1BFB40900](v10 - (v14 - 3), v2);
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          v17 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v16 >= v17)
          {
            goto LABEL_30;
          }

          if (v15 >= v17)
          {
            goto LABEL_31;
          }

          v18 = *(v2 + 8 * v14);
          v19 = *(v2 + 8 * v15 + 32);
          sub_1BE048964();
          sub_1BE048964();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_1BD509758();
          v27 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v27) = 0;
        }

        v28 = v2 & 0xFFFFFFFFFFFFFF8;
        v29 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v14);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v14) = v19;
        v29, v20, v21, v22, v23, v24, v25, v26;
        if ((v2 & 0x8000000000000000) != 0 || v27)
        {
          v2 = sub_1BD509758();
          v28 = v2 & 0xFFFFFFFFFFFFFF8;
          if ((v15 & 0x8000000000000000) != 0)
          {
LABEL_27:
            __break(1u);
            break;
          }
        }

        else if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v15 >= *(v28 + 16))
        {
          goto LABEL_32;
        }

        v37 = v28 + 8 * v15;
        v38 = *(v37 + 32);
        *(v37 + 32) = v18;
        v38, v30, v31, v32, v33, v34, v35, v36;
      }

      ++v14;
      if (v13 + v14 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v39 = sub_1BE053704();
    if (v39 < -1)
    {
      __break(1u);
    }

    v10 = v39;
    v11 = v39 / 2;
  }

  return v2;
}

unint64_t sub_1BD39DB00()
{
  result = qword_1EBD43CD8;
  if (!qword_1EBD43CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43CD8);
  }

  return result;
}

uint64_t sub_1BD39DB58(uint64_t a1)
{
  result = sub_1BD39CCAC();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(a1, 1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD39DBE0(uint64_t a1)
{
  if (a1)
  {
    v3 = *&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root];
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();
    if (!Strong || (swift_unknownObjectRelease(), (v5 = swift_unknownObjectWeakLoadStrong()) != 0) && (v6 = v5, swift_unknownObjectRelease(), v6 == a1))
    {
      if (*&v1[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_completion])
      {
        sub_1BD398F04();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v7 = v1;
      v8 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BE0B7020;
      *(v9 + 32) = v3;
      *(v8 + 16) = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
      inited = swift_initStackObject();
      *(inited + 16) = sub_1BD12FFE4;
      *(inited + 24) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118, &unk_1BE0F0B80);
      v11 = swift_initStackObject();
      v11[2] = inited;
      sub_1BE048964();
      v12 = sub_1BE048964();
      v13 = *(inited + 16);
      v13(&v40, v12);
      while (1)
      {
        v15 = v40;
        if (!v40)
        {
          break;
        }

        v16 = swift_unknownObjectWeakLoadStrong();
        if (v16)
        {
          v24 = v16;
          swift_unknownObjectRelease();
          if (v24 == a1)
          {
            v11, v17, v18, v19, v20, v21, v22, v23;
            sub_1BE048964();
            v25 = v7;
            sub_1BD39E348(v25, v15, v25);
            swift_unknownObjectRelease();

            goto LABEL_20;
          }
        }

        v15, v17, v18, v19, v20, v21, v22, v23;
        v13(&v40, v14);
      }

      swift_unknownObjectRelease();
      v11, v26, v27, v28, v29, v30, v31, v32;
LABEL_20:
      swift_setDeallocating();
      v11[2], v33, v34, v35, v36, v37, v38, v39;
    }
  }

  else
  {

    sub_1BD398F04();
  }
}

uint64_t sub_1BD39DE3C(void *a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = MEMORY[0x1E69E7CC8];
  *(a2 + 48) = 2;
  *(a2 + 56) = 0;
  swift_weakInit();
  *(a2 + 72) = MEMORY[0x1E69E7CC0];
  swift_weakInit();
  *(a2 + 88) = 1;
  *(a2 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 112) = 514;
  *(a2 + 16) = a1;
  *(a2 + 24) = &off_1F3B98C00;
  v4 = byte_1EBDAB281;
  *(a2 + 114) = byte_1EBDAB280;
  *(a2 + 115) = v4;
  result = swift_conformsToProtocol2();
  if (result)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v16 = v8(ObjectType, v6);
    v17 = *(v16 + 16);
    if (v17)
    {
      type metadata accessor for UIFlowNode();
      v47 = v16;
      v18 = (v16 + 40);
      do
      {
        v19 = *v18;
        v20 = swift_allocObject();
        v21 = swift_getObjectType();
        v22 = swift_unknownObjectRetain_n();
        v23 = sub_1BD6DC1D0(v22, v20, v21, v19);
        swift_beginAccess();
        v24 = sub_1BE048964();
        MEMORY[0x1BFB3F7A0](v24);
        if (*((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        swift_endAccess();
        swift_unknownObjectRelease();
        swift_weakAssign();
        swift_weakAssign();
        v23[57] = 0;
        v23, v25, v26, v27, v28, v29, v30, v31;
        v18 += 2;
        --v17;
      }

      while (v17);
      a1, v32, v33, v34, v35, v36, v37, v38;
      v46 = v47;
    }

    else
    {
      a1, v9, v10, v11, v12, v13, v14, v15;
      v46 = v16;
    }

    v46, v39, v40, v41, v42, v43, v44, v45;
    return a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD39E0C4(void *a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = MEMORY[0x1E69E7CC8];
  *(a2 + 48) = 2;
  *(a2 + 56) = 0;
  swift_weakInit();
  *(a2 + 72) = MEMORY[0x1E69E7CC0];
  swift_weakInit();
  *(a2 + 88) = 1;
  *(a2 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 112) = 514;
  *(a2 + 16) = a1;
  *(a2 + 24) = &off_1F3BB6778;
  v4 = byte_1EBDAB281;
  *(a2 + 114) = byte_1EBDAB280;
  *(a2 + 115) = v4;
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v16 = v8(ObjectType, v6);
    v17 = *(v16 + 16);
    if (v17)
    {
      type metadata accessor for UIFlowNode();
      v48 = v16;
      v18 = (v16 + 40);
      do
      {
        v19 = *v18;
        v20 = swift_allocObject();
        v21 = swift_getObjectType();
        v22 = swift_unknownObjectRetain_n();
        v23 = sub_1BD6DC1D0(v22, v20, v21, v19);
        swift_beginAccess();
        v24 = sub_1BE048964();
        MEMORY[0x1BFB3F7A0](v24);
        if (*((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        swift_endAccess();
        swift_unknownObjectRelease();
        swift_weakAssign();
        swift_weakAssign();
        v23[57] = 0;
        v23, v25, v26, v27, v28, v29, v30, v31;
        v18 += 2;
        --v17;
      }

      while (v17);
      a1, v32, v33, v34, v35, v36, v37, v38;
      v46 = v48;
    }

    else
    {
      a1, v9, v10, v11, v12, v13, v14, v15;
      v46 = v16;
    }

    v46, v39, v40, v41, v42, v43, v44, v45;
  }

  return a2;
}

void sub_1BD39E348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v201 = a2;
  v202 = a3;
  v4 = sub_1BE04D214();
  v207 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v205 = &v200 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v200 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v200 - v10;
  v206 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  sub_1BD6DBD34(0xD00000000000001ALL, 0x80000001BE1263E0, 0);
  v13 = v12;
  v15 = v14;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C24();
  v15, v18, v19, v20, v21, v22, v23, v24;
  v25 = os_log_type_enabled(v16, v17);
  v204 = v8;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = a1;
    v28 = v4;
    v29 = swift_slowAlloc();
    v209[0] = v29;
    *v26 = 136446210;
    v30 = sub_1BD123690(v13, v15, v209);
    v15, v31, v32, v33, v34, v35, v36, v37;
    *(v26 + 4) = v30;
    _os_log_impl(&dword_1BD026000, v16, v17, "%{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29, v38, v39, v40, v41, v42, v43, v44);
    v45 = v29;
    v4 = v28;
    a1 = v27;
    v46 = v207;
    v8 = v204;
    MEMORY[0x1BFB45F20](v45, -1, -1);
    MEMORY[0x1BFB45F20](v26, -1, -1);

    v47 = v46;
  }

  else
  {

    v15, v48, v49, v50, v51, v52, v53, v54;
    v47 = v207;
  }

  v203 = *(v47 + 8);
  v203(v11, v4);
  v55 = v206;
  v56 = sub_1BD28A12C(v206);
  sub_1BD39C81C(v201);
  v58 = v57;
  if (v57 && *(v57 + 32) != 2)
  {
    *(v57 + 114) = 0;
    v59 = *(v57 + 16);
    swift_getObjectType();
    v60 = swift_conformsToProtocol2();
    if (v60 && v59)
    {
      v61 = v60;
      ObjectType = swift_getObjectType();
      v63 = *(v61 + 24);
      sub_1BE048964();
      swift_unknownObjectRetain();
      v63(ObjectType, v61);
      v55 = v206;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE048964();
    }

    v58[32] = 2;
    v58, v64, v65, v66, v67, v68, v69, v70;
  }

  sub_1BD39BEFC();
  sub_1BD6DBD34(0xD000000000000019, 0x80000001BE126400, 0);
  v72 = v71;
  v74 = v73;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v75 = sub_1BE04D204();
  v76 = sub_1BE052C24();
  v74, v77, v78, v79, v80, v81, v82, v83;
  if (os_log_type_enabled(v75, v76))
  {
    v84 = v56;
    v85 = a1;
    v86 = v4;
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v209[0] = v88;
    *v87 = 136446210;
    v89 = sub_1BD123690(v72, v74, v209);
    v74, v90, v91, v92, v93, v94, v95, v96;
    *(v87 + 4) = v89;
    _os_log_impl(&dword_1BD026000, v75, v76, "%{public}s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88, v97, v98, v99, v100, v101, v102, v103);
    v104 = v88;
    v55 = v206;
    MEMORY[0x1BFB45F20](v104, -1, -1);
    v105 = v87;
    v4 = v86;
    a1 = v85;
    v56 = v84;
    MEMORY[0x1BFB45F20](v105, -1, -1);

    v106 = v204;
  }

  else
  {

    v74, v107, v108, v109, v110, v111, v112, v113;
    v106 = v8;
  }

  v114 = v203;
  v203(v106, v4);
  v115 = sub_1BD28A12C(v55);
  if (*(v115 + 2) || (v116 & 1) != 0)
  {
    v140 = v115;
    sub_1BD28AB60(v56, v115, v117, v118, v119, v120, v121, v122);
    v140, v141, v142, v143, v144, v145, v146, v147;
    v56, v148, v149, v150, v151, v152, v153, v154;
    v155 = OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode;
    v156 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode);
    if (v156)
    {
      *(v156 + 56) = 0;
      if (*(v156 + 48) > 2uLL)
      {
        v208 = &unk_1F3CDEF98;
        v157 = swift_dynamicCastObjCProtocolConditional();
        if (v157)
        {
          [v157 showLoadingUI:0 animated:0];
        }
      }
    }

    *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation) = 0;
    v158 = *(a1 + v155);
    *(a1 + v155) = v58;
    sub_1BE048964();
    v158, v159, v160, v161, v162, v163, v164, v165;
    v173 = (a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    v174 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    if (v174)
    {
      v175 = v173[1];
      v176 = sub_1BE048964();
      v174(v176);
      sub_1BD0D4744(v174, v175, v177, v178, v179, v180, v181, v182);
      v183 = *v173;
      v184 = v173[1];
      *v173 = 0;
      v173[1] = 0;
      sub_1BD0D4744(v183, v184, v185, v186, v187, v188, v189, v190);
    }

    v58, v166, v167, v168, v169, v170, v171, v172;
    v191 = OBJC_IVAR____TtC9PassKitUI13UIFlowManager_inflightRenderersBeingPresented;
    swift_beginAccess();
    v192 = *(a1 + v191);
    *(a1 + v191) = MEMORY[0x1E69E7CC0];
    v192, v193, v194, v195, v196, v197, v198, v199;
  }

  else
  {
    v115, v116, v117, v118, v119, v120, v121, v122;
    v56, v123, v124, v125, v126, v127, v128, v129;
    sub_1BE04D0E4();
    v130 = sub_1BE04D204();
    v131 = sub_1BE052C54();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_1BD026000, v130, v131, "Terminating flow because view updated to empty view", v132, 2u);
      MEMORY[0x1BFB45F20](v132, -1, -1);
    }

    v114(v205, v4);
    sub_1BD398F04();
    v58, v133, v134, v135, v136, v137, v138, v139;
  }
}

void sub_1BD39E9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v197 = a2;
  v5 = sub_1BE04D214();
  v201 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v199 = &v196 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v200 = &v196 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v196 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root);
  sub_1BD6DBD34(0xD00000000000001ALL, 0x80000001BE1263E0, 0);
  v14 = v13;
  v16 = v15;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C24();
  v16, v19, v20, v21, v22, v23, v24, v25;
  if (os_log_type_enabled(v17, v18))
  {
    v26 = swift_slowAlloc();
    v198 = v5;
    v196 = a3;
    v27 = a1;
    v28 = v26;
    v29 = v12;
    v30 = swift_slowAlloc();
    v203[0] = v30;
    *v28 = 136446210;
    v31 = sub_1BD123690(v14, v16, v203);
    v16, v32, v33, v34, v35, v36, v37, v38;
    *(v28 + 4) = v31;
    _os_log_impl(&dword_1BD026000, v17, v18, "%{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30, v39, v40, v41, v42, v43, v44, v45);
    v46 = v30;
    v12 = v29;
    MEMORY[0x1BFB45F20](v46, -1, -1);
    v47 = v28;
    a1 = v27;
    a3 = v196;
    v5 = v198;
    MEMORY[0x1BFB45F20](v47, -1, -1);
  }

  else
  {

    v16, v48, v49, v50, v51, v52, v53, v54;
  }

  v55 = *(v201 + 8);
  v55(v11, v5);
  v56 = sub_1BD28A12C(v12);
  sub_1BD39A244(a3);
  v57 = *(a3 + 32);
  v58 = v200;
  v198 = v55;
  if (v57 == 2)
  {
    sub_1BE048964();
  }

  else
  {
    *(a3 + 114) = 0;
    v59 = *(a3 + 16);
    swift_getObjectType();
    v60 = swift_conformsToProtocol2();
    if (v60 && v59)
    {
      v61 = v60;
      ObjectType = swift_getObjectType();
      v197 = v12;
      v63 = ObjectType;
      v64 = *(v61 + 24);
      sub_1BE048964();
      swift_unknownObjectRetain();
      v65 = v63;
      v12 = v197;
      v64(v65, v61);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE048964();
    }

    *(a3 + 32) = 2;
  }

  sub_1BD39BEFC();
  sub_1BD6DBD34(0xD000000000000019, 0x80000001BE126400, 0);
  v67 = v66;
  v69 = v68;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v70 = sub_1BE04D204();
  v71 = sub_1BE052C24();
  v69, v72, v73, v74, v75, v76, v77, v78;
  if (os_log_type_enabled(v70, v71))
  {
    v79 = swift_slowAlloc();
    v197 = v12;
    v80 = v79;
    v81 = v56;
    v82 = a3;
    v83 = a1;
    v84 = swift_slowAlloc();
    v203[0] = v84;
    *v80 = 136446210;
    v85 = sub_1BD123690(v67, v69, v203);
    v69, v86, v87, v88, v89, v90, v91, v92;
    *(v80 + 4) = v85;
    _os_log_impl(&dword_1BD026000, v70, v71, "%{public}s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84, v93, v94, v95, v96, v97, v98, v99);
    v100 = v84;
    a1 = v83;
    a3 = v82;
    v56 = v81;
    MEMORY[0x1BFB45F20](v100, -1, -1);
    v101 = v80;
    v12 = v197;
    MEMORY[0x1BFB45F20](v101, -1, -1);

    v102 = v200;
  }

  else
  {

    v69, v103, v104, v105, v106, v107, v108, v109;
    v102 = v58;
  }

  v110 = v198;
  v198(v102, v5);
  v111 = sub_1BD28A12C(v12);
  if (*(v111 + 2) || (v112 & 1) != 0)
  {
    v136 = v111;
    sub_1BD28AB60(v56, v111, v113, v114, v115, v116, v117, v118);
    v136, v137, v138, v139, v140, v141, v142, v143;
    v56, v144, v145, v146, v147, v148, v149, v150;
    v151 = OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode;
    v152 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_activeNode);
    if (v152)
    {
      *(v152 + 56) = 0;
      if (*(v152 + 48) > 2uLL)
      {
        v202 = &unk_1F3CDEF98;
        v153 = swift_dynamicCastObjCProtocolConditional();
        if (v153)
        {
          [v153 showLoadingUI:0 animated:0];
        }
      }
    }

    *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_isPerformingMutation) = 0;
    v154 = *(a1 + v151);
    *(a1 + v151) = a3;
    sub_1BE048964();
    v154, v155, v156, v157, v158, v159, v160, v161;
    v169 = (a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    v170 = *(a1 + OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded);
    if (v170)
    {
      v171 = v169[1];
      v172 = sub_1BE048964();
      v170(v172);
      sub_1BD0D4744(v170, v171, v173, v174, v175, v176, v177, v178);
      v179 = *v169;
      v180 = v169[1];
      *v169 = 0;
      v169[1] = 0;
      sub_1BD0D4744(v179, v180, v181, v182, v183, v184, v185, v186);
    }

    a3, v162, v163, v164, v165, v166, v167, v168;
    v187 = OBJC_IVAR____TtC9PassKitUI13UIFlowManager_inflightRenderersBeingPresented;
    swift_beginAccess();
    v188 = *(a1 + v187);
    *(a1 + v187) = MEMORY[0x1E69E7CC0];
    v188, v189, v190, v191, v192, v193, v194, v195;
  }

  else
  {
    v111, v112, v113, v114, v115, v116, v117, v118;
    v56, v119, v120, v121, v122, v123, v124, v125;
    sub_1BE04D0E4();
    v126 = sub_1BE04D204();
    v127 = sub_1BE052C54();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_1BD026000, v126, v127, "Terminating flow because view updated to empty view", v128, 2u);
      MEMORY[0x1BFB45F20](v128, -1, -1);
    }

    v110(v199, v5);
    sub_1BD398F04();
    a3, v129, v130, v131, v132, v133, v134, v135;
  }
}

void sub_1BD39F034(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1BE04D214();
  v91 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v15 = a1[2];
  v16 = a1[3];
  type metadata accessor for UIStaticFlowSection();
  if (swift_dynamicCastClass())
  {
    aBlock = 0u;
    v95 = 0u;
    LOBYTE(v96) = -1;
    sub_1BE048964();
    sub_1BE048964();
    v17 = a4;
    swift_unknownObjectRetain();
    sub_1BD399EE4(&aBlock, a2, a3, v17, a5, a6);
    sub_1BD39F51C(&aBlock);
    v25 = v14;
  }

  else
  {
    v26 = v15;
    v90 = v12;
    sub_1BE048964();
    sub_1BE048964();
    v27 = a4;
    swift_unknownObjectRetain();
    sub_1BE04D0E4();
    sub_1BE048964();
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C24();
    a1, v30, v31, v32, v33, v34, v35, v36;
    v37 = a1;
    if (os_log_type_enabled(v28, v29))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 136315138;
      v93 = v39;
      *&aBlock = 0x3C65646F4ELL;
      *(&aBlock + 1) = 0xE500000000000000;
      ObjectType = swift_getObjectType();
      v41 = v29;
      v42 = (*(v16 + 8))(ObjectType, v16);
      v44 = v43;
      MEMORY[0x1BFB3F610](v42);
      v44, v45, v46, v47, v48, v49, v50, v51;
      MEMORY[0x1BFB3F610](62, 0xE100000000000000);
      v52 = *(&aBlock + 1);
      v53 = sub_1BD123690(aBlock, *(&aBlock + 1), &v93);
      v52, v54, v55, v56, v57, v58, v59, v60;
      *(v38 + 4) = v53;
      _os_log_impl(&dword_1BD026000, v28, v41, "%s starting preflight", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39, v61, v62, v63, v64, v65, v66, v67);
      MEMORY[0x1BFB45F20](v39, -1, -1);
      MEMORY[0x1BFB45F20](v38, -1, -1);
    }

    (*(v91 + 8))(v92, v90);
    v68 = swift_allocObject();
    v68[2] = sub_1BD39F490;
    v68[3] = v14;
    v69 = objc_allocWithZone(MEMORY[0x1E69B8798]);
    v96 = sub_1BD39F4A0;
    v97 = v68;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v95 = sub_1BD126964;
    *(&v95 + 1) = &block_descriptor_77;
    v70 = _Block_copy(&aBlock);
    sub_1BE048964();
    v71 = [v69 initWithBlock_];
    _Block_release(v70);
    v97, v72, v73, v74, v75, v76, v77, v78;
    v79 = swift_getObjectType();
    v80 = swift_allocObject();
    v80[2] = v37;
    v80[3] = v71;
    v80[4] = sub_1BD39F490;
    v80[5] = v14;
    v80[6] = v26;
    v80[7] = v16;
    v81 = *(v16 + 40);
    sub_1BE048964();
    sub_1BE048964();
    v82 = v71;
    swift_unknownObjectRetain();
    v81(sub_1BD39F4EC, v80, v79, v16);
    v14, v83, v84, v85, v86, v87, v88, v89;

    v25 = v80;
  }

  v25, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_1BD39F4A0()
{
  v1 = *(v0 + 16);
  memset(v3, 0, sizeof(v3));
  v4 = -2;
  v1(v3);
  return sub_1BD39F51C(v3);
}

void *sub_1BD39F54C(void *result, id a2, void *a3, unsigned __int8 a4)
{
  if (a4 < 4u)
  {

    return sub_1BE048C84();
  }

  if (a4 == 4)
  {
    v5 = result;

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD39F6D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F510, &unk_1BE0B9B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI12UIFlowResultO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI13UIFlowManagerC15PreflightResult33_9102DB95F85DD41D8AD4A3C483FCE2FBLLO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD39F774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD39F7BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -2 - a2;
    }
  }

  return result;
}

double sub_1BD39F80C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 254;
  }

  else if (a2)
  {
    *(a1 + 32) = -a2;
  }

  return result;
}

uint64_t sub_1BD39F87C(uint64_t a1)
{
  v2 = sub_1BE04F774();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BE04EF94();
}

uint64_t FlightWidgetPreflightView.content.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  sub_1BE048C84();

  return sub_1BE048C84();
}

uint64_t sub_1BD39F988@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for FlightWidgetPreflightView(0);
  sub_1BD0DE19C(v1 + *(v10 + 20), v9, &qword_1EBD521C0, qword_1BE0B9CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04F774();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = *v9;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    return (*(v4 + 8))(v6, v3);
  }
}

double FlightWidgetPreflightView.body.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BE04F7B4();
  v24 = 0;
  sub_1BD39FD4C(v3, &v13);
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v25 = v13;
  v26 = v14;
  v35[6] = v19;
  v35[7] = v20;
  v35[8] = v21;
  v35[2] = v15;
  v35[3] = v16;
  v35[4] = v17;
  v35[5] = v18;
  v34 = v22;
  v36 = v22;
  v35[0] = v13;
  v35[1] = v14;
  sub_1BD0DE19C(&v25, v12, &qword_1EBD43CF8, &qword_1BE0D0B50);
  sub_1BD0DE53C(v35, &qword_1EBD43CF8, &qword_1BE0D0B50);
  *(&v23[3] + 7) = v28;
  *(&v23[2] + 7) = v27;
  *(&v23[6] + 7) = v31;
  *(&v23[7] + 7) = v32;
  *(&v23[8] + 7) = v33;
  *(&v23[9] + 7) = v34;
  *(&v23[4] + 7) = v29;
  *(&v23[5] + 7) = v30;
  *(v23 + 7) = v25;
  *(&v23[1] + 7) = v26;
  v6 = v23[7];
  *(a2 + 113) = v23[6];
  *(a2 + 129) = v6;
  *(a2 + 145) = v23[8];
  *(a2 + 154) = *(&v23[8] + 9);
  v7 = v23[3];
  *(a2 + 49) = v23[2];
  *(a2 + 65) = v7;
  v8 = v23[5];
  *(a2 + 81) = v23[4];
  *(a2 + 97) = v8;
  result = *v23;
  v10 = v23[1];
  *(a2 + 17) = v23[0];
  v11 = v24;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 33) = v10;
  return result;
}

uint64_t sub_1BD39FD4C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F774();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD39F988(v7);
  v8 = sub_1BE04F764();
  v28 = *(v5 + 8);
  v28(v7, v4);
  v29 = v8 & 1;
  v9 = 0x4010000000000000;
  if (v8)
  {
    v9 = 0;
  }

  v30 = v9;
  v27 = sub_1BE04F504();
  v31[0] = 0;
  sub_1BD3A00F0(a1, &v36);
  v42 = *&v37[16];
  v43 = *&v37[32];
  v44 = *&v37[48];
  v45 = *&v37[64];
  v40 = v36;
  v41 = *v37;
  v46[2] = *&v37[16];
  v46[3] = *&v37[32];
  v46[4] = *&v37[48];
  v46[5] = *&v37[64];
  v46[0] = v36;
  v46[1] = *v37;
  sub_1BD0DE19C(&v40, &v34, &qword_1EBD43D30, &qword_1BE0D0C48);
  sub_1BD0DE53C(v46, &qword_1EBD43D30, &qword_1BE0D0C48);
  *&v39[39] = v42;
  *&v39[55] = v43;
  *&v39[71] = v44;
  *&v39[87] = v45;
  *&v39[7] = v40;
  *&v39[23] = v41;
  v10 = v31[0];
  sub_1BD39F988(v7);
  v11 = sub_1BE04F764();
  v28(v7, v4);
  v12 = v27;
  *&v34 = v27;
  *(&v34 + 1) = 0x402C000000000000;
  v35[0] = v10;
  v13 = *&v39[64];
  *&v35[65] = *&v39[64];
  v14 = *&v39[48];
  *&v35[49] = *&v39[48];
  v15 = *&v39[16];
  *&v35[17] = *&v39[16];
  v16 = *v39;
  *&v35[1] = *v39;
  v17 = *&v39[80];
  *&v35[81] = *&v39[80];
  v18 = *&v39[32];
  *&v35[33] = *&v39[32];
  *&v32[86] = *&v35[64];
  *&v32[6] = v34;
  *&v32[22] = *v35;
  *&v32[38] = *&v35[16];
  *&v35[96] = *&v39[95];
  *&v32[70] = *&v35[48];
  *&v32[102] = *&v35[80];
  *&v32[118] = *&v39[95];
  *&v32[54] = *&v35[32];
  v19 = *&v32[32];
  *(a2 + 58) = *&v32[48];
  *(a2 + 42) = v19;
  v20 = *v32;
  *(a2 + 26) = *&v32[16];
  *(a2 + 10) = v20;
  v21 = *&v32[96];
  *(a2 + 120) = *&v32[110];
  *(a2 + 106) = v21;
  v22 = *&v32[64];
  *(a2 + 90) = *&v32[80];
  *(a2 + 74) = v22;
  *&v37[33] = v18;
  *&v37[17] = v15;
  v23 = 0x4028000000000000;
  if (v11)
  {
    v23 = 0;
  }

  v24 = v29;
  v33 = v29;
  v31[127] = v11 & 1;
  *a2 = v30;
  *(a2 + 8) = 0;
  *(a2 + 9) = v24;
  *(a2 + 136) = v23;
  *(a2 + 144) = 0;
  *(a2 + 145) = v11 & 1;
  *&v36 = v12;
  *(&v36 + 1) = 0x402C000000000000;
  v37[0] = v10;
  *&v37[1] = v16;
  *&v38[15] = *&v39[95];
  *v38 = v17;
  *&v37[65] = v13;
  *&v37[49] = v14;
  sub_1BD0DE19C(&v34, v31, &qword_1EBD43D38, &unk_1BE0D0C50);
  return sub_1BD0DE53C(&v36, &qword_1EBD43D38, &unk_1BE0D0C50);
}

void sub_1BD3A00F0(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v183 - v5;
  v7 = a1;
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = v7;
  v202 = v8;
  v203 = v9;
  v197 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v11 = sub_1BE0506C4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v194 = *(type metadata accessor for FlightWidgetPreflightView(0) + 24);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
  v184 = v10;
  sub_1BE04E534();
  sub_1BE050364();
  v190 = sub_1BE050354();
  v18 = *(v190 - 8);
  v189 = *(v18 + 56);
  v191 = v18 + 56;
  v185 = v6;
  v189(v6, 1, 1, v190);
  v19 = sub_1BE0503B4();
  sub_1BD0DE53C(v6, &qword_1EBD49130, &qword_1BE0C7180);
  v20 = sub_1BE0505F4();
  v22 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;
  v19, v21, v23, v24, v26, v27, v28, v29;
  sub_1BD0DDF10(v11, v13, (v15 & 1), v30, v31, v32, v33, v34);
  v17, v35, v36, v37, v38, v39, v40, v41;
  v42 = sub_1BE051424();
  v202 = v42;
  v43 = sub_1BE050574();
  v198 = v44;
  v199 = v43;
  v195 = v45;
  v196 = v46;
  sub_1BD0DDF10(v20, v22, (v10 & 1), v46, v47, v48, v49, v50);
  v42, v51, v52, v53, v54, v55, v56, v57;
  v25, v58, v59, v60, v61, v62, v63, v64;
  v192 = sub_1BE051574();
  v188 = sub_1BE0503D4();
  KeyPath = swift_getKeyPath();
  v186 = sub_1BE051424();
  v65 = *(v184 + 3);
  v202 = *(v184 + 2);
  v203 = v65;
  sub_1BE048C84();
  v66 = sub_1BE0506C4();
  v68 = v67;
  LOBYTE(v25) = v69;
  v71 = v70;
  sub_1BE04E534();
  sub_1BE050364();
  v72 = v185;
  v189(v185, 1, 1, v190);
  v73 = sub_1BE0503B4();
  sub_1BD0DE53C(v72, &qword_1EBD49130, &qword_1BE0C7180);
  v74 = sub_1BE0505F4();
  v76 = v75;
  LOBYTE(v11) = v77;
  v79 = v78;
  v73, v75, v77, v78, v80, v81, v82, v83;
  sub_1BD0DDF10(v66, v68, (v25 & 1), v84, v85, v86, v87, v88);
  v71, v89, v90, v91, v92, v93, v94, v95;
  v96 = sub_1BE051424();
  v202 = v96;
  v97 = sub_1BE050574();
  v99 = v98;
  LOBYTE(v66) = v100;
  v102 = v101;
  sub_1BD0DDF10(v74, v76, (v11 & 1), v101, v103, v104, v105, v106);
  v96, v107, v108, v109, v110, v111, v112, v113;
  v79, v114, v115, v116, v117, v118, v119, v120;
  v121 = v195 & 1;
  LOBYTE(v202) = v195 & 1;
  v201 = v195 & 1;
  v122 = (v66 & 1);
  v200 = v66 & 1;
  v123 = v66 & 1;
  v125 = v198;
  v124 = v199;
  *a2 = v199;
  *(a2 + 8) = v125;
  *(a2 + 16) = v121;
  v126 = v196;
  v127 = v192;
  *(a2 + 24) = v196;
  *(a2 + 32) = v127;
  v128 = KeyPath;
  v129 = v188;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = v129;
  v130 = v186;
  *(a2 + 56) = v186;
  *(a2 + 64) = v97;
  *(a2 + 72) = v99;
  *(a2 + 80) = v123;
  *(a2 + 88) = v102;
  sub_1BD0D7F18(v124, v125, v121);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D7F18(v97, v99, v122);
  sub_1BE048C84();
  sub_1BD0DDF10(v97, v99, v122, v131, v132, v133, v134, v135);
  v130, v136, v137, v138, v139, v140, v141, v142;
  v129, v143, v144, v145, v146, v147, v148, v149;
  v128, v150, v151, v152, v153, v154, v155, v156;
  v127, v157, v158, v159, v160, v161, v162, v163;
  v102, v164, v165, v166, v167, v168, v169, v170;
  sub_1BD0DDF10(v199, v198, v202, v171, v172, v173, v174, v175);
  v126, v176, v177, v178, v179, v180, v181, v182;
}

double FlightWidgetPreflightView.init(content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE050474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = type metadata accessor for FlightWidgetPreflightView(0);
  v12 = *(v11 + 20);
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  v15 = 0x403A000000000000;
  (*(v6 + 104))(v8, *MEMORY[0x1E6980F08], v5);
  sub_1BD0DBFDC();
  sub_1BE04E514();
  *(a2 + *(v11 + 28)) = 0x4048000000000000;
  result = v14[0];
  *a2 = *v14;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return result;
}

uint64_t type metadata accessor for FlightWidgetPreflightView(uint64_t a1)
{
  result = qword_1EBD43D10;
  if (!qword_1EBD43D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD3A07C0()
{
  result = qword_1EBD43D00;
  if (!qword_1EBD43D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43D00);
  }

  return result;
}

uint64_t sub_1BD3A0814@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  sub_1BE048C84();

  return sub_1BE048C84();
}

double sub_1BD3A0858@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1BE050474();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = *a1;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = *(a2 + 20);
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  v16 = 0x403A000000000000;
  (*(v8 + 104))(v10, *MEMORY[0x1E6980F08], v7);
  sub_1BD0DBFDC();
  sub_1BE04E514();
  *(a3 + *(a2 + 28)) = 0x4048000000000000;
  result = v15[0];
  *a3 = *v15;
  *(a3 + 16) = v12;
  *(a3 + 24) = v11;
  return result;
}

unint64_t sub_1BD3A09C4(uint64_t a1)
{
  result = sub_1BD3A09EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BD3A09EC()
{
  result = qword_1EBD43D08;
  if (!qword_1EBD43D08)
  {
    type metadata accessor for FlightWidgetPreflightView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43D08);
  }

  return result;
}

double sub_1BD3A0A60@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BE04F7B4();
  v24 = 0;
  sub_1BD39FD4C(v3, &v13);
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v25 = v13;
  v26 = v14;
  v35[6] = v19;
  v35[7] = v20;
  v35[8] = v21;
  v35[2] = v15;
  v35[3] = v16;
  v35[4] = v17;
  v35[5] = v18;
  v34 = v22;
  v36 = v22;
  v35[0] = v13;
  v35[1] = v14;
  sub_1BD0DE19C(&v25, v12, &qword_1EBD43CF8, &qword_1BE0D0B50);
  sub_1BD0DE53C(v35, &qword_1EBD43CF8, &qword_1BE0D0B50);
  *(&v23[3] + 7) = v28;
  *(&v23[2] + 7) = v27;
  *(&v23[6] + 7) = v31;
  *(&v23[7] + 7) = v32;
  *(&v23[8] + 7) = v33;
  *(&v23[9] + 7) = v34;
  *(&v23[4] + 7) = v29;
  *(&v23[5] + 7) = v30;
  *(v23 + 7) = v25;
  *(&v23[1] + 7) = v26;
  v6 = v23[7];
  *(a2 + 113) = v23[6];
  *(a2 + 129) = v6;
  *(a2 + 145) = v23[8];
  *(a2 + 154) = *(&v23[8] + 9);
  v7 = v23[3];
  *(a2 + 49) = v23[2];
  *(a2 + 65) = v7;
  v8 = v23[5];
  *(a2 + 81) = v23[4];
  *(a2 + 97) = v8;
  result = *v23;
  v10 = v23[1];
  *(a2 + 17) = v23[0];
  v11 = v24;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 33) = v10;
  return result;
}

void sub_1BD3A0C44(uint64_t a1)
{
  sub_1BD3A0CE0(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0DDCF8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD3A0CE0(uint64_t a1)
{
  if (!qword_1EBD39FD8)
  {
    sub_1BE04F774();
    v1 = sub_1BE04E3A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD39FD8);
    }
  }
}

unint64_t sub_1BD3A0D38()
{
  result = qword_1EBD43D20;
  if (!qword_1EBD43D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43D28, &qword_1BE0D0C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43D20);
  }

  return result;
}

unint64_t sub_1BD3A0DB0()
{
  result = qword_1EBD43D40;
  if (!qword_1EBD43D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43D40);
  }

  return result;
}

const char *sub_1BD3A0E18()
{
  if (*v0)
  {
    return "PaymentSheetSelectPassAfterExpressProvisioning";
  }

  else
  {
    return "PaymentSheetExpressProvisioning";
  }
}

uint64_t type metadata accessor for TitleBodyMultiHyperlinkView(uint64_t a1)
{
  result = qword_1EBD43D48;
  if (!qword_1EBD43D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3A0EBC(uint64_t a1)
{
  sub_1BD1C2DD8(319, &qword_1EBD4F750, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1BD3A0F90(319);
    if (v2 <= 0x3F)
    {
      sub_1BD1C2DD8(319, &qword_1EBD43D68, &type metadata for TitleBodyMultiHyperlinkView.IconType);
      if (v3 <= 0x3F)
      {
        sub_1BD3A0FF8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD3A0F90(uint64_t a1)
{
  if (!qword_1EBD43D58)
  {
    sub_1BD0E5E8C(255, &qword_1EBD43D60, 0x1E69B85D0);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD43D58);
    }
  }
}

void sub_1BD3A0FF8(uint64_t a1)
{
  if (!qword_1EBD43D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45160, &qword_1BE0C25A0);
    v1 = sub_1BE051964();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD43D70);
    }
  }
}

uint64_t sub_1BD3A1068(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BD3A10B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1BD3A110C(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1936941424;
  if (v2 != 1)
  {
    v5 = 0x69566D6F74737563;
    v4 = 0xEA00000000007765;
  }

  v6 = v2 == 0;
  if (*(v1 + 8))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6F626D7973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BD3A1180()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D78, &qword_1BE0D0E98);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v15 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D80, &qword_1BE0D0EA0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v15 - v4;
  v6 = sub_1BE051C54();
  v7 = sub_1BE04F7B4();
  v8 = 0x4030000000000000;
  if (v6)
  {
    v8 = 0;
  }

  *v2 = v7;
  *(v2 + 1) = v8;
  v2[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D88, &qword_1BE0D0EA8);
  sub_1BD3A1408(&v2[*(v9 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0636DC(v2, v5);
  v10 = &v5[*(v3 + 36)];
  v11 = v15[5];
  *(v10 + 4) = v15[4];
  *(v10 + 5) = v11;
  *(v10 + 6) = v15[6];
  v12 = v15[1];
  *v10 = v15[0];
  *(v10 + 1) = v12;
  v13 = v15[3];
  *(v10 + 2) = v15[2];
  *(v10 + 3) = v13;
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D90, &unk_1BE0D0EB0);
  sub_1BD3A2C60();
  sub_1BD3A2D18(&qword_1EBD43DA8, &qword_1EBD43D90, &unk_1BE0D0EB0, sub_1BD3A2C60);
  sub_1BE0510B4();
  return sub_1BD0DE53C(v5, &qword_1EBD43D80, &qword_1BE0D0EA0);
}

uint64_t sub_1BD3A1408@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DB0, &qword_1BE0D0EC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DB8, &qword_1BE0D0EC8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DC0, &qword_1BE0D0ED0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DC8, &qword_1BE0D0ED8);
  v31 = *(v13 - 8);
  v14 = v31;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  sub_1BD3A1848(v12);
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DD0, &qword_1BE0D0EE0);
  sub_1BD3A2D9C();
  sub_1BD3A33BC();
  v30 = v19;
  sub_1BE0510C4();
  sub_1BD0DE53C(v12, &qword_1EBD43DC0, &qword_1BE0D0ED0);
  v28 = v9;
  sub_1BD3A1F9C(v9);
  v20 = v35;
  sub_1BD3A21AC(v35);
  v21 = *(v14 + 16);
  v29 = v16;
  v21(v16, v19, v13);
  v22 = v32;
  sub_1BD0DE19C(v9, v32, &qword_1EBD43DB8, &qword_1BE0D0EC8);
  v23 = v33;
  sub_1BD0DE19C(v20, v33, &qword_1EBD43DB0, &qword_1BE0D0EC0);
  v24 = v34;
  v21(v34, v16, v13);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E88, &qword_1BE0D0F50);
  sub_1BD0DE19C(v22, &v24[*(v25 + 48)], &qword_1EBD43DB8, &qword_1BE0D0EC8);
  sub_1BD0DE19C(v23, &v24[*(v25 + 64)], &qword_1EBD43DB0, &qword_1BE0D0EC0);
  sub_1BD0DE53C(v35, &qword_1EBD43DB0, &qword_1BE0D0EC0);
  sub_1BD0DE53C(v28, &qword_1EBD43DB8, &qword_1BE0D0EC8);
  v26 = *(v31 + 8);
  v26(v30, v13);
  sub_1BD0DE53C(v23, &qword_1EBD43DB0, &qword_1BE0D0EC0);
  sub_1BD0DE53C(v22, &qword_1EBD43DB8, &qword_1BE0D0EC8);
  return (v26)(v29, v13);
}

uint64_t sub_1BD3A1848@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EB8, &qword_1BE0D0F78);
  MEMORY[0x1EEE9AC00](v56);
  v6 = (&v53 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EC0, &qword_1BE0D0F80);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DF8, &qword_1BE0D0EF0);
  MEMORY[0x1EEE9AC00](v55);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DE8, &qword_1BE0D0EE8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v20 = &v53 - v19;
  v21 = *(v1 + 24);
  v22 = *(v1 + 32);
  if (v22 <= 1)
  {
    v53 = v17;
    v54 = v16;
    if (v22)
    {
      *&v4[v2[6]] = v21;
      type metadata accessor for WrappedPass(0);
      swift_storeEnumTagMultiPayload();
      sub_1BD3A382C(v21, 1u);
      sub_1BD3A382C(v21, 1u);
      PKPassFrontFaceContentSize();
      *(v4 + 3) = 0x4059000000000000;
      *(v4 + 4) = v42 / v41 * 100.0;
      *v4 = sub_1BD70C870;
      *(v4 + 1) = 0;
      v4[16] = 0;
      v4[v2[7]] = 1;
      *&v4[v2[8]] = 1911;
      sub_1BD3A3840(v4, v9, type metadata accessor for PassImage);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E08, &qword_1BE0D0EF8);
      sub_1BD3A2F38();
      sub_1BD25BEA8();
      sub_1BE04F9A4();
      sub_1BD0DE19C(v11, v6, &qword_1EBD43DF8, &qword_1BE0D0EF0);
      swift_storeEnumTagMultiPayload();
      sub_1BD3A2EAC();
      sub_1BE04F9A4();
      sub_1BD3A38A8(v21, 1, v43, v44, v45, v46, v47, v48);
      sub_1BD0DE53C(v11, &qword_1EBD43DF8, &qword_1BE0D0EF0);
      sub_1BD3A38BC(v4);
    }

    else
    {
      sub_1BD0E5E8C(0, &qword_1EBD43EC8, 0x1E69B92C0);
      v23 = sub_1BE050354();
      (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
      sub_1BD3A3808(v21, 0);
      v24 = sub_1BE0503B4();
      sub_1BD0DE53C(v14, &qword_1EBD49130, &qword_1BE0C7180);
      sub_1BDA8E41C(v21, &v58);
      v24, v25, v26, v27, v28, v29, v30, v31;
      v32 = v61;
      v65 = v61;
      v33 = v60;
      v34 = v59;
      v63 = v59;
      v64 = v60;
      v62 = v58;
      *v9 = v58;
      *(v9 + 1) = v34;
      *(v9 + 2) = v33;
      *(v9 + 24) = v32;
      swift_storeEnumTagMultiPayload();
      sub_1BD3A3918(v62, *(&v62 + 1), v63, *(&v63 + 1), v64, *(&v64 + 1), v65, SHIBYTE(v65));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E08, &qword_1BE0D0EF8);
      sub_1BD3A2F38();
      sub_1BD25BEA8();
      sub_1BE04F9A4();
      sub_1BD0DE19C(v11, v6, &qword_1EBD43DF8, &qword_1BE0D0EF0);
      swift_storeEnumTagMultiPayload();
      sub_1BD3A2EAC();
      sub_1BE04F9A4();
      sub_1BD3A38A8(v21, 0, v35, v36, v37, v38, v39, v40);
      sub_1BD0DE53C(&v62, &qword_1EBD43E08, &qword_1BE0D0EF8);
      sub_1BD0DE53C(v11, &qword_1EBD43DF8, &qword_1BE0D0EF0);
    }

    goto LABEL_7;
  }

  if (v22 == 2)
  {
    v53 = v17;
    v54 = v16;
    *v6 = v21;
    swift_storeEnumTagMultiPayload();
    sub_1BD3A3808(v21, 2u);
    sub_1BD3A2EAC();
    sub_1BE04F9A4();
LABEL_7:
    v49 = v57;
    sub_1BD0DE204(v20, v57, &qword_1EBD43DE8, &qword_1BE0D0EE8);
    return (*(v53 + 56))(v49, 0, 1, v54);
  }

  v51 = *(v17 + 56);
  v52 = v57;

  return v51(v52, 1, 1, v18);
}

uint64_t sub_1BD3A1EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BD0DE19C(a1, a2, &qword_1EBD43DC0, &qword_1BE0D0ED0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43DD0, &qword_1BE0D0EE0);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_1BD3A1F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EB0, &qword_1BE0D0F68);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v8 = &v40 - v7;
  v9 = v1[1];
  if (v9)
  {
    v42 = *v1;
    v43 = v9;
    v40 = v5;
    v41 = v4;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v14 = v13;
    v42 = v10;
    v43 = v11;
    v16 = (v15 & 1);
    v44 = v15 & 1;
    v45 = v13;
    sub_1BE052434();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43268, &qword_1BE0D0F70);
    sub_1BD3A377C();
    sub_1BE050DE4();
    v18, v19, v20, v21, v22, v23, v24, v25;
    sub_1BD0DDF10(v10, v12, v16, v26, v27, v28, v29, v30);
    v14, v31, v32, v33, v34, v35, v36, v37;
    sub_1BD0DE204(v8, a1, &qword_1EBD43EB0, &qword_1BE0D0F68);
    return (*(v40 + 56))(a1, 0, 1, v41);
  }

  else
  {
    v39 = *(v5 + 56);

    return v39(a1, 1, 1, v6);
  }
}

uint64_t sub_1BD3A21AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TitleBodyMultiHyperlinkView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v83 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E90, &qword_1BE0D0F58);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v16 = &v83 - v15;
  v17 = *(v2 + 16);
  if (v17)
  {
    v84 = v12;
    v87 = v16;
    v88 = a1;
    v89 = v13;
    v18 = v17;
    v19 = PKOBKTextAlignment();
    v86 = PKOBKBodyFont(v19);
    v20 = PKOBKBodyTextColor(v86);
    v85 = sub_1BE0511C4();
    sub_1BD3A3840(v2, v10, type metadata accessor for TitleBodyMultiHyperlinkView);
    v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v22 = swift_allocObject();
    sub_1BD3A346C(v10, v22 + v21);
    sub_1BD3A3840(v2, v7, type metadata accessor for TitleBodyMultiHyperlinkView);
    v23 = swift_allocObject();
    sub_1BD3A346C(v7, v23 + v21);
    v24 = objc_opt_self();
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = sub_1BD3A34D0;
    v25[4] = v22;
    v25[5] = sub_1BD3A36FC;
    v25[6] = v23;
    v94 = sub_1BD3A376C;
    v95 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v91 = 1107296256;
    v92 = sub_1BD198918;
    v93 = &block_descriptor_78;
    v26 = _Block_copy(&aBlock);
    v27 = v95;
    sub_1BE048964();
    sub_1BE048964();
    v27, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v24 hyperlinkSourcesFromApplyFooter:v18 linkTapped:v26];
    _Block_release(v26);
    if (v35)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43EA8, off_1E8006508);
      v36 = sub_1BE052744();
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    v39 = [v18 footerText];
    v40 = sub_1BE052434();
    v42 = v41;

    v22, v43, v44, v45, v46, v47, v48, v49;
    v23, v50, v51, v52, v53, v54, v55, v56;

    aBlock = v36;
    v91 = v19;
    LOBYTE(v92) = 0;
    v93 = v40;
    v94 = v42;
    v57 = v85;
    v58 = v86;
    v95 = v86;
    v96 = v85;
    sub_1BE051C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E98, &qword_1BE0D0F60);
    sub_1BD10E4BC();
    sub_1BD3A2D18(&qword_1EBD43EA0, &qword_1EBD43E98, &qword_1BE0D0F60, sub_1BD10E4BC);
    v59 = v87;
    sub_1BE0510C4();
    v57, v60, v61, v62, v63, v64, v65, v66;

    v42, v67, v68, v69, v70, v71, v72, v73;
    v36, v74, v75, v76, v77, v78, v79, v80;

    v81 = v88;
    v82 = v84;
    (*(v89 + 32))(v88, v59, v84);
    return (*(v89 + 56))(v81, 0, 1, v82);
  }

  else
  {
    v37 = *(v13 + 56);

    return v37(a1, 1, 1, v14);
  }
}

uint64_t sub_1BD3A26BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE0501C4();
  PKSetupViewConstantsViewMargin();
  sub_1BE04E1F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BD0DE19C(a1, a2, &qword_1EBD43D80, &qword_1BE0D0EA0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D90, &unk_1BE0D0EB0);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

double sub_1BD3A2760@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v5 = sub_1BE050204();
  *(inited + 32) = v5;
  v6 = sub_1BE050224();
  *(inited + 33) = v6;
  v7 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v5)
  {
    v7 = sub_1BE050214();
  }

  inited, v8, v9, v10, v11, v12, v13, v14;
  sub_1BE050214();
  if (sub_1BE050214() != v6)
  {
    v7 = sub_1BE050214();
  }

  sub_1BD0DE19C(a1, a2, &qword_1EBD43D80, &qword_1BE0D0EA0);
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43D90, &unk_1BE0D0EB0) + 36);
  *v15 = v7;
  result = 0.0;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 1;
  return result;
}

uint64_t sub_1BD3A2890(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v15 - v10);
  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  v12 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  type metadata accessor for TitleBodyMultiHyperlinkView(0);
  sub_1BD0DE19C(v11, v8, &unk_1EBD45160, &qword_1BE0C25A0);
  v13 = a1;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  sub_1BE0518F4();
  return sub_1BD0DE53C(v11, &unk_1EBD45160, &qword_1BE0C25A0);
}

uint64_t sub_1BD3A2A0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = sub_1BE04AA64();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  type metadata accessor for TitleBodyMultiHyperlinkView(0);
  sub_1BD0DE19C(v7, v4, &unk_1EBD45160, &qword_1BE0C25A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  sub_1BE0518F4();
  return sub_1BD0DE53C(v7, &unk_1EBD45160, &qword_1BE0C25A0);
}

id sub_1BD3A2BA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[6];
  v15 = a1[5];
  v9 = sub_1BE0501E4();
  sub_1BE04E1F4();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v15;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = 0;
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048C84();

  return v15;
}

unint64_t sub_1BD3A2C60()
{
  result = qword_1EBD43D98;
  if (!qword_1EBD43D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43D80, &qword_1BE0D0EA0);
    sub_1BD0DE4F4(&qword_1EBD43DA0, &qword_1EBD43D78, &qword_1BE0D0E98, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43D98);
  }

  return result;
}

uint64_t sub_1BD3A2D18(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD3A2D9C()
{
  result = qword_1EBD43DD8;
  if (!qword_1EBD43DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43DC0, &qword_1BE0D0ED0);
    sub_1BD3A2E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43DD8);
  }

  return result;
}

unint64_t sub_1BD3A2E20()
{
  result = qword_1EBD43DE0;
  if (!qword_1EBD43DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43DE8, &qword_1BE0D0EE8);
    sub_1BD3A2EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43DE0);
  }

  return result;
}

unint64_t sub_1BD3A2EAC()
{
  result = qword_1EBD43DF0;
  if (!qword_1EBD43DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43DF8, &qword_1BE0D0EF0);
    sub_1BD3A2F38();
    sub_1BD25BEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43DF0);
  }

  return result;
}

unint64_t sub_1BD3A2F38()
{
  result = qword_1EBD43E00;
  if (!qword_1EBD43E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E08, &qword_1BE0D0EF8);
    sub_1BD3A2FC4();
    sub_1BD3A31C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E00);
  }

  return result;
}

unint64_t sub_1BD3A2FC4()
{
  result = qword_1EBD43E10;
  if (!qword_1EBD43E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E18, &qword_1BE0D0F00);
    sub_1BD3A3050();
    sub_1BD3A3108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E10);
  }

  return result;
}

unint64_t sub_1BD3A3050()
{
  result = qword_1EBD43E20;
  if (!qword_1EBD43E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E28, &qword_1BE0D0F08);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&qword_1EBD43E30, &qword_1EBD43E38, &qword_1BE0D0F10, MEMORY[0x1E6980608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E20);
  }

  return result;
}

unint64_t sub_1BD3A3108()
{
  result = qword_1EBD43E40;
  if (!qword_1EBD43E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E48, &unk_1BE0D0F18);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&qword_1EBD41F30, &qword_1EBD41F38, &unk_1BE0CC640, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E40);
  }

  return result;
}

unint64_t sub_1BD3A31C0()
{
  result = qword_1EBD43E50;
  if (!qword_1EBD43E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E58, &qword_1BE0D0F28);
    sub_1BD3A324C();
    sub_1BD3A3304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E50);
  }

  return result;
}

unint64_t sub_1BD3A324C()
{
  result = qword_1EBD43E60;
  if (!qword_1EBD43E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E68, &unk_1BE0D0F30);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E60);
  }

  return result;
}

unint64_t sub_1BD3A3304()
{
  result = qword_1EBD43E70;
  if (!qword_1EBD43E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E78, &unk_1BE0D0F40);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&unk_1EBD4E900, &qword_1EBD3ACA0, &unk_1BE0BB830, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E70);
  }

  return result;
}

unint64_t sub_1BD3A33BC()
{
  result = qword_1EBD43E80;
  if (!qword_1EBD43E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43DD0, &qword_1BE0D0EE0);
    sub_1BD3A2D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43E80);
  }

  return result;
}

void sub_1BD3A3448(id a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2 == 2)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_1BD3A346C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleBodyMultiHyperlinkView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3A34D0(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TitleBodyMultiHyperlinkView(0);

  return sub_1BD3A2890(a1, a2, a3);
}

uint64_t objectdestroyTm_34()
{
  v1 = type metadata accessor for TitleBodyMultiHyperlinkView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;

  v16 = *(v2 + 32);
  if (v16 != 255)
  {
    sub_1BD3A3448(*(v2 + 24), v16, v10, v11, v12, v13, v14, v15);
  }

  v17 = (v2 + *(v1 + 28));
  *v17, v16, v10, v11, v12, v13, v14, v15;
  v17[1], v18, v19, v20, v21, v22, v23, v24;
  v25 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680) + 32));
  v26 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = sub_1BE04AA64();
      (*(*(v27 - 8) + 8))(v25, v27);
    }

    else
    {

      v25[2], v28, v29, v30, v31, v32, v33, v34;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1BD3A36FC(uint64_t a1)
{
  type metadata accessor for TitleBodyMultiHyperlinkView(0);

  return sub_1BD3A2A0C(a1);
}

unint64_t sub_1BD3A377C()
{
  result = qword_1EBD43260;
  if (!qword_1EBD43260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43268, &qword_1BE0D0F70);
    sub_1BD376A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43260);
  }

  return result;
}

id sub_1BD3A3808(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    return sub_1BE048964();
  }

  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

id sub_1BD3A382C(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1BD3A3808(result, a2);
  }

  return result;
}

uint64_t sub_1BD3A3840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BD3A38A8(id a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2 != 0xFF)
  {
    sub_1BD3A3448(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1BD3A38BC(uint64_t a1)
{
  v2 = type metadata accessor for PassImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD3A3918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  if (a8)
  {
    return sub_1BD3A39BC(a1, a2, a3, a4, a5 & 1);
  }

  else
  {
    return sub_1BD3A392C(a1, a2, a3, a4, a5, a6, a7 & 1);
  }
}

uint64_t sub_1BD3A392C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_1BE048964();
  }

  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();

  return sub_1BE048964();
}

uint64_t sub_1BD3A39BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1BE048964();
  }

  sub_1BE048964();
  sub_1BE048964();

  return sub_1BE048964();
}

uint64_t sub_1BD3A3A24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BD3A3A80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BD3A3AFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v64 = sub_1BE04F434();
  v5 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43ED0, &qword_1BE0D1010);
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43ED8, &qword_1BE0D1018);
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v57 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EE0, &qword_1BE0D1020);
  MEMORY[0x1EEE9AC00](v60);
  v18 = &v57 - v17;
  v65 = a1;
  v67 = a1;
  v68 = a2;
  v57 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EE8, &qword_1BE0D1028);
  sub_1BD3A5218();
  sub_1BE0504E4();
  (*(v9 + 104))(v11, *MEMORY[0x1E69B80E0], v8);
  v19 = PKPassKitBundle();
  if (v19)
  {
    v20 = v19;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v9 + 8))(v11, v8);
    v69[0] = v21;
    v69[1] = v23;
    v24 = v64;
    (*(v5 + 104))(v7, *MEMORY[0x1E697C438], v64);
    sub_1BD0DE4F4(&qword_1EBD43F90, &qword_1EBD43ED0, &qword_1BE0D1010, MEMORY[0x1E697CD20]);
    sub_1BD0DDEBC();
    v25 = v61;
    v26 = v59;
    sub_1BE050C94();
    (*(v5 + 8))(v7, v24);
    v23, v27, v28, v29, v30, v31, v32, v33;
    (*(v58 + 8))(v14, v26);
    v34 = sub_1BE051D74();
    v35 = v65;
    if (v65)
    {
      v36 = v34;
      KeyPath = swift_getKeyPath();
      v38 = swift_getKeyPath();
      v39 = v35;
      sub_1BE04D8B4(v69);
      KeyPath, v40, v41, v42, v43, v44, v45, v46;
      v38, v47, v48, v49, v50, v51, v52, v53;

      v54 = v69[0];
      (*(v62 + 32))(v18, v25, v63);
      v55 = &v18[*(v60 + 36)];
      *v55 = v36;
      *(v55 + 1) = v54;
      return sub_1BD063890(v18, v66);
    }
  }

  else
  {
    __break(1u);
  }

  type metadata accessor for TaxFormsModel(0);
  sub_1BD3A5834(&qword_1EBD3B320, type metadata accessor for TaxFormsModel, &unk_1BE0F01A8);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD3A4024@<X0>(uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F10, &qword_1BE0D1038);
  sub_1BD3A5334();
  sub_1BE051A44();
  v4 = sub_1BE04F794();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43EE8, &qword_1BE0D1028);
  v6 = (a3 + *(result + 36));
  *v6 = v4;
  v6[1] = sub_1BD3A51BC;
  v6[2] = 0;
  return result;
}

void *sub_1BD3A40D0@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v126 = a3;
  v119 = sub_1BE04BD74();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v115 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v6 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v114 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F48, &qword_1BE0E5E20);
  MEMORY[0x1EEE9AC00](v122);
  v11 = &v114 - v10;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F98, &qword_1BE0D10A8);
  MEMORY[0x1EEE9AC00](v124);
  v13 = &v114 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43FA0, &qword_1BE0D10B0);
  MEMORY[0x1EEE9AC00](v121);
  v15 = &v114 - v14;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F20, &qword_1BE0D1040);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v114 - v16;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F30, &qword_1BE0D1048);
  v17 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v19 = &v114 - v18;
  if (!a1)
  {
    goto LABEL_13;
  }

  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v22 = a1;
  sub_1BE04D8B4(v127);
  KeyPath, v23, v24, v25, v26, v27, v28, v29;
  v21, v30, v31, v32, v33, v34, v35, v36;
  v37 = *&v127[0];
  if (*&v127[0] >> 62)
  {
    v38 = sub_1BE053704();
  }

  else
  {
    v38 = *((*&v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37, v39, v40, v41, v42, v43, v44, v45;
  if (v38 > 0)
  {
    v46 = swift_getKeyPath();
    v47 = swift_getKeyPath();
    sub_1BE04D8B4(v127);
    v46, v48, v49, v50, v51, v52, v53, v54;
    v47, v55, v56, v57, v58, v59, v60, v61;

    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50270, &qword_1BE0D11C0);
    type metadata accessor for TaxFormCell(0);
    sub_1BD0DE4F4(&qword_1EBD43FB8, &qword_1EBD50270, &qword_1BE0D11C0, MEMORY[0x1E69E6338]);
    sub_1BD3A5834(&qword_1EBD43FC0, sub_1BD3A57E8, MEMORY[0x1E69E81B8]);
    sub_1BD3A5834(&qword_1EBD43F38, type metadata accessor for TaxFormCell, &unk_1BE0EBAC0);
    sub_1BE0519C4();
    v62 = v120;
    (*(v17 + 16))(v15, v19, v120);
    swift_storeEnumTagMultiPayload();
    sub_1BD3A5478();
    sub_1BD0DE4F4(&qword_1EBD43F40, &qword_1EBD43F48, &qword_1BE0E5E20, MEMORY[0x1E69817F8]);
    v63 = v123;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v63, v13, &qword_1EBD43F20, &qword_1BE0D1040);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F58, &unk_1BE0E5E30);
    sub_1BD3A53C0();
    sub_1BD3A552C();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v63, &qword_1EBD43F20, &qword_1BE0D1040);
    return (*(v17 + 8))(v19, v62);
  }

  v65 = swift_getKeyPath();
  v66 = swift_getKeyPath();
  sub_1BE04D8B4(v127);
  v65, v67, v68, v69, v70, v71, v72, v73;
  v66, v74, v75, v76, v77, v78, v79, v80;

  if (LOBYTE(v127[0]) == 1)
  {
    *v11 = sub_1BE04F504();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v114 = v11;
    v81 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43FA8, &qword_1BE0D1190) + 44)];
    sub_1BE04E4F4();
    v82 = v116;
    v83 = *(v116 + 16);
    v84 = v117;
    v83(v6, v9, v117);
    *v81 = 0;
    v81[8] = 1;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43FB0, &unk_1BE0D1198);
    v83(&v81[*(v85 + 48)], v6, v84);
    v86 = &v81[*(v85 + 64)];
    *v86 = 0;
    v86[8] = 1;
    v87 = *(v82 + 8);
    v87(v9, v84);
    v87(v6, v84);
    v88 = v114;
    sub_1BD0DE19C(v114, v15, &qword_1EBD43F48, &qword_1BE0E5E20);
    swift_storeEnumTagMultiPayload();
    sub_1BD3A5478();
    sub_1BD0DE4F4(&qword_1EBD43F40, &qword_1EBD43F48, &qword_1BE0E5E20, MEMORY[0x1E69817F8]);
    v89 = v123;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v89, v13, &qword_1EBD43F20, &qword_1BE0D1040);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F58, &unk_1BE0E5E30);
    sub_1BD3A53C0();
    sub_1BD3A552C();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v89, &qword_1EBD43F20, &qword_1BE0D1040);
    return sub_1BD0DE53C(v88, &qword_1EBD43F48, &qword_1BE0E5E20);
  }

  v90 = v118;
  v91 = v115;
  v92 = v119;
  (*(v118 + 104))(v115, *MEMORY[0x1E69B80E0], v119);
  v93 = PKPassKitBundle();
  if (!v93)
  {
    __break(1u);
LABEL_13:
    type metadata accessor for TaxFormsModel(0);
    sub_1BD3A5834(&qword_1EBD3B320, type metadata accessor for TaxFormsModel, &unk_1BE0F01A8);
    result = sub_1BE04EEB4();
    __break(1u);
    return result;
  }

  v94 = v93;
  v95 = sub_1BE04B6F4();
  v97 = v96;

  (*(v90 + 8))(v91, v92);
  *&v127[0] = v95;
  *(&v127[0] + 1) = v97;
  sub_1BD0DDEBC();
  v123 = sub_1BE0506C4();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  sub_1BE051CD4();
  sub_1BE04EE54();
  LOBYTE(v94) = v101 & 1;
  v128 = v101 & 1;
  v104 = sub_1BE050414();
  v105 = swift_getKeyPath();
  v106 = [objc_opt_self() secondaryLabelColor];
  v107 = sub_1BE0511C4();
  v108 = swift_getKeyPath();
  v109 = swift_getKeyPath();
  v110 = sub_1BE0501D4();
  v129 = 1;
  *v13 = v123;
  *(v13 + 1) = v99;
  v13[16] = v94;
  *(v13 + 3) = v103;
  v111 = v127[5];
  *(v13 + 6) = v127[4];
  *(v13 + 7) = v111;
  *(v13 + 8) = v127[6];
  v112 = v127[1];
  *(v13 + 2) = v127[0];
  *(v13 + 3) = v112;
  v113 = v127[3];
  *(v13 + 4) = v127[2];
  *(v13 + 5) = v113;
  *(v13 + 18) = v105;
  *(v13 + 19) = v104;
  *(v13 + 20) = v108;
  *(v13 + 21) = v107;
  *(v13 + 22) = v109;
  v13[184] = 1;
  v13[192] = v110;
  *(v13 + 200) = 0u;
  *(v13 + 216) = 0u;
  v13[232] = 1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43F58, &unk_1BE0E5E30);
  sub_1BD3A53C0();
  sub_1BD3A552C();
  return sub_1BE04F9A4();
}

id sub_1BD3A4C4C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v75 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v66 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  v17 = *a1;
  type metadata accessor for TaxFormsModel(0);
  sub_1BD3A5834(&qword_1EBD3B320, type metadata accessor for TaxFormsModel, &unk_1BE0F01A8);
  v18 = v17;
  v19 = sub_1BE04EEC4();
  v73 = v20;
  v74 = v19;
  type metadata accessor for DeviceAuthenticationModel(0);
  sub_1BD3A5834(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
  v21 = sub_1BE04EEC4();
  v71 = v22;
  v72 = v21;
  *a2 = v18;
  v23 = type metadata accessor for TaxFormCell(0);
  v24 = sub_1BE04AA64();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  sub_1BD0DE19C(v16, v13, &unk_1EBD3CF70, &qword_1BE0BA000);
  sub_1BE051694();
  sub_1BD0DE53C(v16, &unk_1EBD3CF70, &qword_1BE0BA000);
  v25 = a2 + v23[6];
  LOBYTE(v76) = 0;
  sub_1BE051694();
  v26 = *(&v78 + 1);
  *v25 = v78;
  *(v25 + 1) = v26;
  v27 = (a2 + v23[7]);
  v28 = v73;
  *v27 = v74;
  v27[1] = v28;
  v29 = v23[8];
  v74 = a2;
  v30 = (a2 + v29);
  v31 = v71;
  *v30 = v72;
  v30[1] = v31;
  v32 = *MEMORY[0x1E69B80E0];
  v33 = v75;
  v34 = *(v75 + 104);
  v34(v10, v32, v4);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v36 = result;
  v37 = sub_1BE04B6F4();
  v72 = v38;
  v73 = v37;

  v40 = v33 + 8;
  v39 = *(v33 + 8);
  v39(v10, v4);
  v41 = v70;
  v34(v70, v32, v4);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v42 = result;
  v43 = sub_1BE04B6F4();
  v67 = v44;
  v68 = v43;

  v75 = v40;
  v39(v41, v4);
  v45 = v69;
  v71 = v4;
  v34(v69, v32, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1BE0B69E0;
  result = PKDeviceName();
  if (result)
  {
    v47 = result;
    v48 = v74;
    v49 = (v74 + v23[9]);
    v50 = sub_1BE052434();
    v52 = v51;

    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 64) = sub_1BD110550();
    *(v46 + 32) = v50;
    *(v46 + 40) = v52;
    v53 = sub_1BE04B714();
    v55 = v54;
    v46, v54, v56, v57, v58, v59, v60, v61;
    v39(v45, v71);
    v62 = v72;
    *v49 = v73;
    v49[1] = v62;
    v63 = v67;
    v49[2] = v68;
    v49[3] = v63;
    v49[4] = v53;
    v49[5] = v55;
    v64 = v48 + v23[10];
    v76 = 0;
    v77 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    result = sub_1BE051694();
    v65 = v79;
    *v64 = v78;
    *(v64 + 2) = v65;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1BD3A51BC(uint64_t a1)
{
  v1 = 0.0;
  if (sub_1BE051C54())
  {
    v2 = sub_1BE04F7C4();
    return MEMORY[0x1BFB3BB10](v2) + 50.0;
  }

  return v1;
}

unint64_t sub_1BD3A5218()
{
  result = qword_1EBD43EF0;
  if (!qword_1EBD43EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43EE8, &qword_1BE0D1028);
    sub_1BD3A52A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43EF0);
  }

  return result;
}

unint64_t sub_1BD3A52A4()
{
  result = qword_1EBD43EF8;
  if (!qword_1EBD43EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F00, &qword_1BE0D1030);
    sub_1BD3A5334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43EF8);
  }

  return result;
}

unint64_t sub_1BD3A5334()
{
  result = qword_1EBD43F08;
  if (!qword_1EBD43F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F10, &qword_1BE0D1038);
    sub_1BD3A53C0();
    sub_1BD3A552C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F08);
  }

  return result;
}

unint64_t sub_1BD3A53C0()
{
  result = qword_1EBD43F18;
  if (!qword_1EBD43F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F20, &qword_1BE0D1040);
    sub_1BD3A5478();
    sub_1BD0DE4F4(&qword_1EBD43F40, &qword_1EBD43F48, &qword_1BE0E5E20, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F18);
  }

  return result;
}

unint64_t sub_1BD3A5478()
{
  result = qword_1EBD43F28;
  if (!qword_1EBD43F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F30, &qword_1BE0D1048);
    sub_1BD3A5834(&qword_1EBD43F38, type metadata accessor for TaxFormCell, &unk_1BE0EBAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F28);
  }

  return result;
}

unint64_t sub_1BD3A552C()
{
  result = qword_1EBD43F50;
  if (!qword_1EBD43F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F58, &unk_1BE0E5E30);
    sub_1BD3A55B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F50);
  }

  return result;
}

unint64_t sub_1BD3A55B8()
{
  result = qword_1EBD43F60;
  if (!qword_1EBD43F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F68, &qword_1BE0D1050);
    sub_1BD3A5670();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F60);
  }

  return result;
}

unint64_t sub_1BD3A5670()
{
  result = qword_1EBD43F70;
  if (!qword_1EBD43F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F78, &unk_1BE0E5E40);
    sub_1BD3A5728();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F70);
  }

  return result;
}

unint64_t sub_1BD3A5728()
{
  result = qword_1EBD43F80;
  if (!qword_1EBD43F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43F88, &qword_1BE0D1058);
    sub_1BD19D16C();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43F80);
  }

  return result;
}

unint64_t sub_1BD3A57E8()
{
  result = qword_1EBD43FC8;
  if (!qword_1EBD43FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43FC8);
  }

  return result;
}

uint64_t sub_1BD3A5834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD3A587C()
{
  result = qword_1EBD43FD0;
  if (!qword_1EBD43FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43FD8, &qword_1BE0D11C8);
    sub_1BD3A5908();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43FD0);
  }

  return result;
}

unint64_t sub_1BD3A5908()
{
  result = qword_1EBD43FE0;
  if (!qword_1EBD43FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43EE0, &qword_1BE0D1020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43ED0, &qword_1BE0D1010);
    sub_1BD0DE4F4(&qword_1EBD43F90, &qword_1EBD43ED0, &qword_1BE0D1010, MEMORY[0x1E697CD20]);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD43FE8, &qword_1EBD43FF0, &qword_1BE0D11D0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43FE0);
  }

  return result;
}

uint64_t FlightWidgetViewModel.__allocating_init(perspective:boardingPassAttributes:contentState:)(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  FlightWidgetViewModel.init(perspective:boardingPassAttributes:contentState:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1BD3A5AA4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v127 = a2;
  v3 = sub_1BE04D214();
  v125 = *(v3 - 8);
  v126 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v128 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v121 = &v117 - v6;
  v130 = sub_1BE04C004();
  v122 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v8 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04AF64();
  v123 = *(v9 - 8);
  v10 = v123;
  MEMORY[0x1EEE9AC00](v9);
  v119 = (&v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v117 = &v117 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v117 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v117 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v117 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v117 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44020, &qword_1BE0D1210);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v117 - v26;
  sub_1BE04BFF4();
  v28 = sub_1BE04B6D4();
  v29 = v24;
  v30 = v122;
  (*(v25 + 8))(v27, v29);
  v31 = v8;
  sub_1BE04AEF4();
  (*(v30 + 16))(v8, a1, v130);
  v124 = v10;
  v32 = *(v10 + 16);
  v129 = v23;
  v131 = v9;
  v32(v20, v23, v9);
  v33 = [v28 state];
  if (v33 <= 3)
  {
    v37 = v8;
    v38 = v120;
    v39 = v121;
    if (v33 > 1)
    {
      v40 = v123;
      if (v33 == 2)
      {
        v119 = *(v123 + 8);
        v119(v20, v131);
        (*(v30 + 8))(v37, v130);
        v41 = v28;
        v42 = [v28 arrival];
        v43 = [v42 currentGateTime];

        if (v43)
        {
          v44 = v41;
          v45 = v118;
          sub_1BE04AEE4();

          v46 = *(v40 + 32);
          v47 = v131;
          v46(v39, v45, v131);
          (*(v40 + 56))(v39, 0, 1, v47);
          v46(v38, v39, v47);
          v48 = v128;
          v49 = v117;
        }

        else
        {
          v88 = v39;
          v89 = v131;
          (*(v40 + 56))(v39, 1, 1, v131);
          v44 = v41;
          v90 = [v41 arrival];
          v91 = [v90 scheduledGateTime];

          sub_1BE04AEE4();
          v92 = (*(v40 + 48))(v39, 1, v89);
          v48 = v128;
          v49 = v117;
          if (v92 != 1)
          {
            sub_1BD0DE53C(v88, &unk_1EBD39970, &unk_1BE0B9F80);
          }
        }

        sub_1BE04ADD4();
        sub_1BD3AB21C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v93 = v131;
        v94 = sub_1BE0522F4();
        v95 = v49;
        v96 = v119;
        v119(v95, v93);
        v96(v38, v93);
        if (v94)
        {
          v36 = 6;
        }

        else
        {
          v36 = 7;
        }

        v28 = v44;
        v35 = v96;
        goto LABEL_24;
      }

      v35 = *(v123 + 8);
      v35(v20, v131);
      (*(v30 + 8))(v37, v130);
      v36 = 11;
      goto LABEL_23;
    }

    v34 = v123;
    if (!v33)
    {
      v35 = *(v123 + 8);
      v35(v20, v131);
      (*(v30 + 8))(v37, v130);
      v36 = 14;
      goto LABEL_23;
    }

    v31 = v37;
    if (v33 == 1)
    {
      sub_1BD3A6764(v28, v37, v20, &v133);
      v35 = *(v34 + 8);
      v35(v20, v131);
      (*(v30 + 8))(v37, v130);
      v36 = v133;
      goto LABEL_23;
    }

    goto LABEL_36;
  }

  if (v33 > 5)
  {
    v34 = v123;
    switch(v33)
    {
      case 6:
        v35 = *(v123 + 8);
        v35(v20, v131);
        (*(v30 + 8))(v31, v130);
        v36 = 13;
        goto LABEL_23;
      case 7:
        v35 = *(v123 + 8);
        v35(v20, v131);
        (*(v30 + 8))(v31, v130);
        v36 = 5;
        goto LABEL_23;
      case 8:
        v35 = *(v123 + 8);
        v35(v20, v131);
        (*(v30 + 8))(v31, v130);
        v36 = 8;
        goto LABEL_23;
    }

LABEL_36:
    (*(v34 + 8))(v20, v131);
    (*(v30 + 8))(v31, v130);
    v133 = 0;
    v134 = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE1269C0);
    v132 = [v28 state];
    type metadata accessor for PKFlightState(0);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](0x6867696C66207C20, 0xEC0000003D444974);
    v97 = [v28 identifier];
    v98 = sub_1BE052434();
    v100 = v99;

    MEMORY[0x1BFB3F610](v98, v100);
    v100, v101, v102, v103, v104, v105, v106, v107;
    v108 = v133;
    v109 = v134;
    v133 = 0xD000000000000014;
    v134 = 0x80000001BE1269A0;
    MEMORY[0x1BFB3F610](v108, v109);
    v109, v110, v111, v112, v113, v114, v115, v116;
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  if (v33 == 4)
  {
    v35 = *(v123 + 8);
    v35(v20, v131);
    (*(v30 + 8))(v31, v130);
    v50 = v28;
    v51 = [v28 arrival];
    v52 = [v51 currentGateTime];

    if (v52 && (v53 = v119, sub_1BE04AEE4(), v52, v54 = v118, sub_1BE04ADD4(), sub_1BD3AB21C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]), v55 = v131, v56 = sub_1BE0522F4(), v35(v54, v55), v35(v53, v55), (v56 & 1) == 0))
    {
      v36 = 10;
    }

    else
    {
      v36 = 9;
    }

    v48 = v128;
    v28 = v50;
    goto LABEL_24;
  }

  v35 = *(v123 + 8);
  v35(v20, v131);
  (*(v30 + 8))(v31, v130);
  v36 = 12;
LABEL_23:
  v48 = v128;
LABEL_24:
  sub_1BE04D1D4();
  v57 = v28;
  v58 = sub_1BE04D204();
  v59 = sub_1BE052C14();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v119 = v35;
    v61 = v60;
    v62 = v48;
    v63 = swift_slowAlloc();
    v133 = v63;
    *v61 = 136315394;
    LOBYTE(v132) = v36;
    v64 = FlightExtendedState.description.getter();
    v66 = v65;
    v67 = sub_1BD123690(v64, v65, &v133);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v61 + 4) = v67;
    *(v61 + 12) = 2080;
    v75 = [v57 identifier];
    v76 = sub_1BE052434();
    v78 = v77;

    v79 = sub_1BD123690(v76, v78, &v133);
    v78, v80, v81, v82, v83, v84, v85, v86;
    *(v61 + 14) = v79;
    _os_log_impl(&dword_1BD026000, v58, v59, "[FlightWidgetViewModel] Extended flight state: %s | flightID=%s", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v63, -1, -1);
    MEMORY[0x1BFB45F20](v61, -1, -1);

    (*(v125 + 8))(v62, v126);
    result = (v119)(v129, v131);
  }

  else
  {

    (*(v125 + 8))(v48, v126);
    result = (v35)(v129, v131);
  }

  *v127 = v36;
  return result;
}

uint64_t sub_1BD3A6764@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a3;
  v54 = a2;
  v55 = a4;
  v5 = sub_1BE04D214();
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v51 = &v49 - v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v49 - v24;
  v26 = [a1 departure];
  v27 = [v26 currentGateTime];

  if (!v27)
  {
    v29 = v53;
    sub_1BE04D1D4();
    v30 = sub_1BE04D204();
    v31 = sub_1BE052C34();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v56 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1BD123690(0xD000000000000014, 0x80000001BE1269A0, &v56);
      _os_log_impl(&dword_1BD026000, v30, v31, "%s: expected currentGateTime to be set", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33, v34, v35, v36, v37, v38, v39, v40);
      MEMORY[0x1BFB45F20](v33, -1, -1);
      MEMORY[0x1BFB45F20](v32, -1, -1);
    }

    result = (*(v29 + 8))(v7, v5);
    goto LABEL_7;
  }

  sub_1BE04AEE4();

  sub_1BE04BF94();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    (*(v12 + 8))(v25, v11);
    result = sub_1BD0DE53C(v10, &unk_1EBD39970, &unk_1BE0B9F80);
LABEL_7:
    v41 = 2;
    goto LABEL_8;
  }

  v42 = v51;
  (*(v12 + 32))(v51, v10, v11);
  v43 = v50;
  sub_1BE04ADD4();
  sub_1BE04ADD4();
  sub_1BE04ADD4();
  if (sub_1BE04AE84())
  {
    v44 = *(v12 + 8);
    v44(v14, v11);
    v44(v17, v11);
    v44(v43, v11);
    v44(v42, v11);
    result = (v44)(v25, v11);
    v41 = 0;
    goto LABEL_8;
  }

  if (sub_1BE04AE84())
  {
    v45 = *(v12 + 8);
    v45(v14, v11);
    v45(v17, v11);
    v45(v43, v11);
    v45(v42, v11);
    result = (v45)(v25, v11);
    v41 = 1;
    goto LABEL_8;
  }

  if (sub_1BE04AE84())
  {
    v46 = *(v12 + 8);
    v46(v14, v11);
    v46(v17, v11);
    v46(v43, v11);
    v46(v42, v11);
    result = (v46)(v25, v11);
    goto LABEL_7;
  }

  v47 = sub_1BE04AE74();
  v48 = *(v12 + 8);
  v48(v14, v11);
  v48(v17, v11);
  v48(v43, v11);
  v48(v42, v11);
  result = (v48)(v25, v11);
  if (v47)
  {
    v41 = 4;
  }

  else
  {
    v41 = 3;
  }

LABEL_8:
  *v55 = v41;
  return result;
}

unint64_t FlightExtendedState.description.getter()
{
  result = 0xD000000000000024;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000028;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
    case 5:
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 6:
    case 9:
    case 0xE:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 0xA:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 0xB:
      result = 0xD00000000000001ELL;
      break;
    case 0xD:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t BoardingPassAttributes.init(airlineIcon:passSnapshot:seatNumber:boardingGroup:boardingZone:boardingTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v11 = type metadata accessor for BoardingPassAttributes(0);
  return sub_1BD0DE204(a10, a9 + *(v11 + 36), &unk_1EBD39970, &unk_1BE0B9F80);
}

void *FlightWidgetViewModel.flight.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id FlightWidgetViewModel.progressIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon + 8);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1BD3AA604(v2, v3, v4);
}

uint64_t FlightWidgetViewModel.currentTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_currentTimeZone;
  v4 = sub_1BE04B3B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void FlightWidgetViewModel.arrivedContent.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 8);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 16);
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 24);
  v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 32);
  v7 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_1BD3AA614(v2, v3, v4, v5, v6, v7);
}

void *FlightWidgetViewModel.airlineIcon.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_airlineIcon);
  v2 = v1;
  return v1;
}

void *FlightWidgetViewModel.passSnapshot.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passSnapshot);
  v2 = v1;
  return v1;
}

uint64_t FlightWidgetViewModel.airlineName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_airlineName);
  sub_1BE048C84();
  return v1;
}

uint64_t FlightWidgetViewModel.flightCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_flightCode);
  sub_1BE048C84();
  return v1;
}

uint64_t FlightWidgetViewModel.departureAirportCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureAirportCode);
  sub_1BE048C84();
  return v1;
}

uint64_t FlightWidgetViewModel.arrivalAirportCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalAirportCode);
  sub_1BE048C84();
  return v1;
}

void sub_1BD3A7264(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_statusColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_1BE048964();
  v5, v6, v7, v8, v9, v10, v11, v12;
}

void sub_1BD3A7314(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_statusColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t FlightWidgetViewModel.passUniqueID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passUniqueID);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3A7408()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v124 = &v117[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v125 = &v117[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v117[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v117[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v117[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v117[-v16];
  v18 = sub_1BE04AF64();
  v127 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v117[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v25 = *(v0 + 16);
  if (v25)
  {
    v122 = v24;
    v123 = &v117[-v23];
    v121 = v2;
    v26 = v25;
    if ([v26 isEstimated])
    {
      v27 = [v26 lastUpdatedDate];
      v119 = v1;
      if (v27)
      {
        v28 = v27;
        sub_1BE04AEE4();

        v29 = v127;
        v30 = v127[4];
        v30(v14, v21, v18);
        v120 = v5;
        v31 = v4;
        v32 = v29[7];
        v32(v14, 0, 1, v18);
        v30(v17, v14, v18);
        v32(v17, 0, 1, v18);
        v4 = v31;
        v5 = v120;
        v33 = (v29[6])(v17, 1, v18);
      }

      else
      {
        v35 = 1;
        v120 = v127[7];
        (v120)(v14, 1, 1, v18);
        v36 = [v26 publishedDate];
        if (v36)
        {
          v37 = v36;
          sub_1BE04AEE4();

          v35 = 0;
        }

        (v120)(v11, v35, 1, v18);
        sub_1BD0DE204(v11, v17, &unk_1EBD39970, &unk_1BE0B9F80);
        v29 = v127;
        v38 = v127[6];
        if (v38(v14, 1, v18) != 1)
        {
          sub_1BD0DE53C(v14, &unk_1EBD39970, &unk_1BE0B9F80);
        }

        v33 = v38(v17, 1, v18);
      }

      if (v33 == 1)
      {
        sub_1BD0DE53C(v17, &unk_1EBD39970, &unk_1BE0B9F80);
        v39 = v125;
        sub_1BE04D1D4();
        v40 = v26;
        v41 = sub_1BE04D204();
        v42 = sub_1BE052C34();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v128 = v44;
          *v43 = 136315138;
          v45 = [v40 identifier];
          v46 = v4;
          v47 = sub_1BE052434();
          v49 = v48;

          v50 = sub_1BD123690(v47, v49, &v128);
          v49, v51, v52, v53, v54, v55, v56, v57;
          *(v43 + 4) = v50;
          _os_log_impl(&dword_1BD026000, v41, v42, "Flight has no lastUpdatedDate or publishedDate | flightID=%s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44, v58, v59, v60, v61, v62, v63, v64);
          MEMORY[0x1BFB45F20](v44, -1, -1);
          MEMORY[0x1BFB45F20](v43, -1, -1);

          (*(v5 + 8))(v125, v46);
        }

        else
        {

          (*(v5 + 8))(v39, v4);
        }
      }

      else
      {
        v65 = v123;
        (v29[4])(v123, v17, v18);
        v66 = v126;
        sub_1BE04D1D4();
        v67 = v122;
        (v29[2])(v122, v65, v18);
        v68 = v26;
        v69 = sub_1BE04D204();
        v70 = sub_1BE052C14();

        v71 = os_log_type_enabled(v69, v70);
        v125 = v68;
        if (v71)
        {
          v72 = swift_slowAlloc();
          v118 = v70;
          v73 = v72;
          v74 = swift_slowAlloc();
          v120 = v5;
          v75 = v74;
          v128 = v74;
          *v73 = 136315394;
          sub_1BD3AB21C(&unk_1EBD38830, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v76 = sub_1BE053B24();
          v78 = v77;
          v122 = v29[1];
          v122(v67, v18);
          v79 = sub_1BD123690(v76, v78, &v128);
          v78, v80, v81, v82, v83, v84, v85, v86;
          *(v73 + 4) = v79;
          *(v73 + 12) = 2080;
          v87 = [v68 identifier];
          v88 = sub_1BE052434();
          v90 = v89;

          v91 = sub_1BD123690(v88, v90, &v128);
          v90, v92, v93, v94, v95, v96, v97, v98;
          *(v73 + 14) = v91;
          _os_log_impl(&dword_1BD026000, v69, v118, "Offline mode detected, last updated: %s | flightID=%s", v73, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB45F20](v75, -1, -1);
          MEMORY[0x1BFB45F20](v73, -1, -1);

          (*(v120 + 8))(v126, v4);
        }

        else
        {

          v122 = v29[1];
          v122(v67, v18);
          (*(v5 + 8))(v66, v4);
        }

        v99 = v119;
        v100 = v123;
        v101 = sub_1BE04AE64();
        v102 = PKRelativeDateString();

        if (v102)
        {
          v103 = sub_1BE052434();
          v105 = v104;

          v106 = v121;
          v107 = v124;
          (*(v121 + 104))(v124, *MEMORY[0x1E69B80C0], v99);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v108 = swift_allocObject();
          *(v108 + 16) = xmmword_1BE0B69E0;
          *(v108 + 56) = MEMORY[0x1E69E6158];
          *(v108 + 64) = sub_1BD110550();
          *(v108 + 32) = v103;
          *(v108 + 40) = v105;
          v109 = sub_1BE04B714();

          v108, v110, v111, v112, v113, v114, v115, v116;
          (*(v106 + 8))(v107, v99);
          v122(v100, v18);
          return v109;
        }

        v122(v100, v18);
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_1BD3A7DCC()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_state);
  if (v6 >= 7 || ((0x7Bu >> v6) & 1) == 0)
  {
    sub_1BE04AEF4();
    sub_1BE04ADC4();
    (*(v3 + 8))(v5, v2);
    sub_1BE04ADC4();
  }
}

uint64_t FlightWidgetViewModel.init(perspective:boardingPassAttributes:contentState:)(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v184 = a3;
  v187 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44010, &qword_1BE0F18D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v166 = &v163 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44018, &unk_1BE0D1200);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v165 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v164 = &v163 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v180 = &v163 - v13;
  v188 = sub_1BE04B3B4();
  v182 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v179 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v178 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v176 = &v163 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v172 = &v163 - v20;
  v21 = sub_1BE04AF64();
  v185 = *(v21 - 8);
  v186 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v175 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v181 = &v163 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v183 = &v163 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v173 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v167 = (&v163 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D178, &unk_1BE0C0AC0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v174 = &v163 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v171 = (&v163 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v163 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44020, &qword_1BE0D1210);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v163 - v40;
  v42 = sub_1BE051384();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v163 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *a1;
  v47 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_backgroundColor;
  *(v4 + v47) = sub_1BE0513F4();
  v48 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_tintColor;
  *(v4 + v48) = sub_1BE0513C4();
  v49 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_statusColor;
  (*(v43 + 104))(v45, *MEMORY[0x1E69814D8], v42);
  *(v4 + v49) = sub_1BE0514A4();
  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_perspective) = v46;
  v177 = v46;
  sub_1BD28B4A8(v46);
  v50 = v184;
  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_isRecipient) = sub_1BE04BF84() & 1;
  v51 = v50;
  sub_1BE04BFF4();
  v52 = sub_1BE04B6D4();
  (*(v39 + 8))(v41, v38);
  v53 = v187;
  *(v4 + 16) = v52;
  sub_1BD0DE19C(v53, v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingPassAttributes, &qword_1EBD3D178, &unk_1BE0C0AC0);
  v54 = v52;
  sub_1BD3A5AA4(v51, v189);
  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) = v189[0];
  v55 = [v54 airlineCode];
  v56 = sub_1BE052434();
  v58 = v57;

  *&v189[0] = v56;
  *(&v189[0] + 1) = v58;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  v190 = [v54 flightNumber];
  v59 = sub_1BE053B24();
  v61 = v60;
  MEMORY[0x1BFB3F610](v59);
  v61, v62, v63, v64, v65, v66, v67, v68;
  v69 = *(&v189[0] + 1);
  v70 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_flightCode);
  *v70 = *&v189[0];
  v70[1] = v69;
  sub_1BD0DE19C(v53, v37, &qword_1EBD3D178, &unk_1BE0C0AC0);
  v71 = type metadata accessor for BoardingPassAttributes(0);
  v72 = *(v71 - 8);
  v73 = *(v72 + 48);
  v74 = v72 + 48;
  if (v73(v37, 1, v71) == 1)
  {
    sub_1BD0DE53C(v37, &qword_1EBD3D178, &unk_1BE0C0AC0);
    v75 = 0;
  }

  else
  {
    v75 = *v37;
    v76 = *v37;
    sub_1BD3AA664(v37);
  }

  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_airlineIcon) = v75;
  v77 = [v54 airlineName];
  v78 = sub_1BE052434();
  v80 = v79;

  v81 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_airlineName);
  *v81 = v78;
  v81[1] = v80;
  v82 = v171;
  sub_1BD0DE19C(v53, v171, &qword_1EBD3D178, &unk_1BE0C0AC0);
  if (v73(v82, 1, v71) == 1)
  {
    sub_1BD0DE53C(v82, &qword_1EBD3D178, &unk_1BE0C0AC0);
    v83 = 0;
  }

  else
  {
    v83 = v82[1];
    v84 = v83;
    sub_1BD3AA664(v82);
  }

  v169 = v73;
  v170 = v71;
  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passSnapshot) = v83;
  v85 = [v54 state];
  *(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_state) = v85;
  v86 = [v54 departure];
  v87 = [v86 airport];

  v88 = [v87 code];
  v89 = sub_1BE052434();
  v91 = v90;

  v92 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureAirportCode);
  *v92 = v89;
  v92[1] = v91;
  v171 = v87;
  v93 = [v87 timeZone];
  v168 = v74;
  if (v93)
  {
    v94 = v167;
    v95 = v93;
    sub_1BE04B394();

    v96 = 0;
    v97 = v186;
  }

  else
  {
    v96 = 1;
    v97 = v186;
    v94 = v167;
  }

  v167 = *(v182 + 56);
  v167(v94, v96, 1, v188);
  sub_1BD0DE204(v94, v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureTimeZone, &unk_1EBD3D260, &unk_1BE0C0F20);
  v98 = [v54 departure];
  v99 = [v98 currentGateTime];

  if (v99)
  {
    v100 = v181;
    sub_1BE04AEE4();

    v101 = v185;
    v102 = *(v185 + 32);
    v103 = v172;
    v102(v172, v100, v97);
    v104 = *(v101 + 56);
    v104(v103, 0, 1, v97);
    v105 = v183;
    v102(v183, v103, v97);
    v106 = v105;
  }

  else
  {
    v107 = v185;
    v104 = *(v185 + 56);
    v108 = v172;
    v104(v172, 1, 1, v97);
    v109 = [v54 departure];
    v110 = [v109 scheduledGateTime];

    v106 = v183;
    sub_1BE04AEE4();

    if ((*(v107 + 48))(v108, 1, v97) != 1)
    {
      sub_1BD0DE53C(v108, &unk_1EBD39970, &unk_1BE0B9F80);
    }

    v101 = v185;
  }

  (*(v101 + 16))(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureDate, v106, v97);
  v111 = [v54 arrival];
  v112 = [v111 airport];

  v113 = [v112 code];
  v114 = sub_1BE052434();
  v116 = v115;

  v117 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalAirportCode);
  *v117 = v114;
  v117[1] = v116;
  v172 = v112;
  v118 = [v112 timeZone];
  if (v118)
  {
    v119 = v173;
    v120 = v118;
    sub_1BE04B394();

    v121 = 0;
    v122 = v176;
  }

  else
  {
    v121 = 1;
    v122 = v176;
    v119 = v173;
  }

  v167(v119, v121, 1, v188);
  sub_1BD0DE204(v119, v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalTimeZone, &unk_1EBD3D260, &unk_1BE0C0F20);
  v123 = [v54 arrival];
  v124 = [v123 currentGateTime];

  v125 = v186;
  if (v124)
  {
    v126 = v181;
    sub_1BE04AEE4();

    v127 = v185;
    v128 = *(v185 + 32);
    v128(v122, v126, v125);
    v104(v122, 0, 1, v125);
    v129 = v175;
    v128(v175, v122, v125);
    v130 = v178;
  }

  else
  {
    v127 = v185;
    v104(v122, 1, 1, v186);
    v131 = [v54 arrival];
    v132 = [v131 scheduledGateTime];

    v129 = v175;
    sub_1BE04AEE4();

    v133 = (*(v127 + 48))(v122, 1, v125);
    v130 = v178;
    if (v133 != 1)
    {
      sub_1BD0DE53C(v122, &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  (*(v127 + 32))(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalDate, v129, v125);
  v134 = v187;
  v135 = v174;
  sub_1BD0DE19C(v187, v174, &qword_1EBD3D178, &unk_1BE0C0AC0);
  v136 = v170;
  if (v169(v135, 1, v170) == 1)
  {
    sub_1BD0DE53C(v135, &qword_1EBD3D178, &unk_1BE0C0AC0);
    v104(v130, 1, 1, v125);
  }

  else
  {
    sub_1BD0DE19C(v135 + *(v136 + 36), v130, &unk_1EBD39970, &unk_1BE0B9F80);
    sub_1BD3AA664(v135);
  }

  v137 = v180;
  sub_1BD0DE204(v130, v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingTime, &unk_1EBD39970, &unk_1BE0B9F80);
  v138 = v179;
  v139 = v184;
  sub_1BE04BFB4();
  (*(v182 + 32))(v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_currentTimeZone, v138, v188);
  v140 = sub_1BE04BFA4();
  v141 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passUniqueID);
  *v141 = v140;
  v141[1] = v142;
  v143 = v177;
  if (v177 == 1)
  {
    v144 = v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon;
    *v144 = 0xD000000000000014;
    *(v144 + 8) = 0x80000001BE1267D0;
    *(v144 + 16) = 0;
    sub_1BE04BFE4();
    if (v145)
    {
      v146 = v164;
      sub_1BE04B554();
      sub_1BD0DE204(v146, v137, &qword_1EBD44018, &unk_1BE0D1200);
    }

    else
    {
      v151 = sub_1BE04B564();
      (*(*(v151 - 8) + 56))(v137, 1, 1, v151);
    }

    v152 = v166;
    sub_1BE04BFC4();
    v153 = sub_1BE04BFD4();
    v155 = v154;
    v156 = v165;
    sub_1BD0DE19C(v137, v165, &qword_1EBD44018, &unk_1BE0D1200);
    FlightWidgetArrivedContent.init(flight:destinationTemperature:destinationWeatherSymbol:destinationWeatherCondition:)(v54, v152, v153, v155, v156, v189);

    v157 = sub_1BE04C004();
    (*(*(v157 - 8) + 8))(v139, v157);
    sub_1BD0DE53C(v187, &qword_1EBD3D178, &unk_1BE0C0AC0);
    sub_1BD0DE53C(v137, &qword_1EBD44018, &unk_1BE0D1200);
    (*(v127 + 8))(v183, v186);
    v158 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
    v159 = v189[1];
    *v158 = v189[0];
    v158[1] = v159;
    v158[2] = v189[2];
  }

  else
  {
    v147 = (v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
    *v147 = 0u;
    v147[1] = 0u;
    v147[2] = 0u;
    if (v143)
    {
      v148 = v143;

      sub_1BD28B4C8(v143);
      v149 = sub_1BE04C004();
      (*(*(v149 - 8) + 8))(v139, v149);
      sub_1BD0DE53C(v134, &qword_1EBD3D178, &unk_1BE0C0AC0);
      (*(v127 + 8))(v183, v125);
      v150 = v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon;
      *v150 = v143;
      *(v150 + 8) = 0;
      *(v150 + 16) = 1;
    }

    else
    {

      sub_1BD28B4C8(0);
      v160 = sub_1BE04C004();
      (*(*(v160 - 8) + 8))(v139, v160);
      sub_1BD0DE53C(v134, &qword_1EBD3D178, &unk_1BE0C0AC0);
      (*(v127 + 8))(v183, v125);
      v161 = v4 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon;
      *v161 = xmmword_1BE0D11F0;
      *(v161 + 16) = 0;
    }
  }

  return v4;
}

void sub_1BD3A9168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_1BE04B3B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  sub_1BD0DE19C(a2, v6, &unk_1EBD3D260, &unk_1BE0C0F20);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BD0DE53C(v6, &unk_1EBD3D260, &unk_1BE0C0F20);
    v14 = sub_1BE04AE64();
    sub_1BE04B3A4();
    v15 = sub_1BE04B374();
    (*(v8 + 8))(v10, v7);
    v16 = PKTimeStringFromDate(v14, v15);

    if (v16)
    {
      v17 = sub_1BE052434();
      v19 = v18;

      v43 = v17;
      v44 = v19;
      sub_1BD0DDEBC();
      sub_1BE053554();
      v27 = v19;
LABEL_14:
      v27, v20, v21, v22, v23, v24, v25, v26;
      return;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  (*(v8 + 32))(v13, v6, v7);
  v28 = *(v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_perspective);
  if (v28 != 1)
  {
    goto LABEL_9;
  }

  sub_1BD28B4C8(1);
  sub_1BD28B4C8(1);
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_isRecipient) != 1)
  {
    goto LABEL_10;
  }

  v29 = sub_1BE04B364();
  v30 = sub_1BE04B364();
  v31 = sub_1BE04AE64();
  v32 = sub_1BE04B374();
  if (v29 == v30)
  {
    v28 = PKTimeStringFromDate(v31, v32);

    if (!v28)
    {
      __break(1u);
LABEL_9:
      v33 = v28;
      sub_1BD28B4C8(v28);
      sub_1BD28B4C8(1);
LABEL_10:
      v34 = sub_1BE04AE64();
      v35 = sub_1BE04B374();
      v36 = PKTimeStringFromDate(v34, v35);

      if (v36)
      {
        v37 = sub_1BE052434();
        v39 = v38;

        v43 = v37;
        v44 = v39;
        sub_1BD0DDEBC();
        sub_1BE053554();
        (*(v8 + 8))(v13, v7);
        v27 = v39;
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_13:
    v40 = sub_1BE052434();
    v42 = v41;

    v43 = v40;
    v44 = v42;
    sub_1BD0DDEBC();
    sub_1BE053554();
    (*(v8 + 8))(v13, v7);
    v27 = v42;
    goto LABEL_14;
  }

  v28 = PKTimeStringWithTimeZoneFromDate();

  if (v28)
  {
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1BD3A958C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) >= 5u)
  {
    v11 = (v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
    v12 = *(v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 8);
    if (v12)
    {
      v14 = v11[4];
      v13 = v11[5];
      v16 = v11[2];
      v15 = v11[3];
      v17 = *v11;
      *(a2 + 24) = &type metadata for FlightWidgetArrivedContent;
      *(a2 + 32) = sub_1BD3AA6C0();
      v18 = swift_allocObject();
      *a2 = v18;
      v18[2] = v17;
      v18[3] = v12;
      v18[4] = v16;
      v18[5] = v15;
      v18[6] = v14;
      v18[7] = v13;
      sub_1BE048C84();
      sub_1BE048C84();

      return sub_1BE048C84();
    }

    else
    {
      v26 = *a1;
      static FlightWidgetProgressContent.createContent(viewModel:context:)(v2, &v26, v27);
      result = get_enum_tag_for_layout_string_13PaymentUIBase16ClientViewSource_pSg_0(v27);
      if (result == 1)
      {
        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
      }

      else
      {
        *(a2 + 24) = &type metadata for FlightWidgetProgressContent;
        *(a2 + 32) = sub_1BD0DCB64();
        result = swift_allocObject();
        *a2 = result;
        v19 = v27[13];
        *(result + 208) = v27[12];
        *(result + 224) = v19;
        *(result + 240) = v27[14];
        *(result + 256) = v28;
        v20 = v27[9];
        *(result + 144) = v27[8];
        *(result + 160) = v20;
        v21 = v27[11];
        *(result + 176) = v27[10];
        *(result + 192) = v21;
        v22 = v27[5];
        *(result + 80) = v27[4];
        *(result + 96) = v22;
        v23 = v27[7];
        *(result + 112) = v27[6];
        *(result + 128) = v23;
        v24 = v27[1];
        *(result + 16) = v27[0];
        *(result + 32) = v24;
        v25 = v27[3];
        *(result + 48) = v27[2];
        *(result + 64) = v25;
      }
    }
  }

  else
  {
    v4 = sub_1BE0524C4();
    v6 = v5;
    v7 = sub_1BE0524C4();
    v9 = v8;
    *(a2 + 24) = &type metadata for FlightWidgetPreflightContent;
    *(a2 + 32) = sub_1BD3A07C0();
    result = swift_allocObject();
    *a2 = result;
    *(result + 16) = v4;
    *(result + 24) = v6;
    *(result + 32) = v7;
    *(result + 40) = v9;
  }

  return result;
}

uint64_t sub_1BD3A97A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
  if (v3 > 3)
  {
    if (v3 - 5 < 9)
    {
LABEL_3:
      v4 = &type metadata for FlightWidgetStatusSymbolContent;
      v5 = sub_1BD3AA714();
      goto LABEL_13;
    }

    if (v3 == 4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (v3 - 1 >= 2)
  {
    if (*(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState))
    {
      v4 = type metadata accessor for FlightWidgetStatusMessageContent(0);
      v6 = &unk_1EBD44058;
      v7 = type metadata accessor for FlightWidgetStatusMessageContent;
      v8 = &protocol conformance descriptor for FlightWidgetStatusMessageContent;
LABEL_12:
      v5 = sub_1BD3AB21C(v6, v7, v8);
      goto LABEL_13;
    }

LABEL_11:
    v4 = type metadata accessor for FlightWidgetPassSnapshotContent();
    v6 = &qword_1EBD44068;
    v7 = type metadata accessor for FlightWidgetPassSnapshotContent;
    v8 = &protocol conformance descriptor for FlightWidgetPassSnapshotContent;
    goto LABEL_12;
  }

LABEL_8:
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = v9;
    v11 = PKCurrentlyReleventFlightStepForFlight();
    v12 = [v11 status];

    if (v12 == 3)
    {
      goto LABEL_3;
    }
  }

  v4 = &type metadata for FlightWidgetDetailsContent;
  v5 = sub_1BD3AA768();
LABEL_13:
  v13 = v5;
  v24 = 3;
  v14 = *(v5 + 24);
  v15 = sub_1BE0534B4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  v14(v1, &v24, v4, v13, v17);
  Description = v4[-1].Description;
  if (Description[6](v19, 1, v4) == 1)
  {
    result = (*(v16 + 8))(v19, v15);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v4;
    *(a1 + 32) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return Description[4](boxed_opaque_existential_1, v19, v4);
  }

  return result;
}

uint64_t sub_1BD3A9A5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
  v4 = v3 < 5 || v3 == 14;
  if (!v4 || (v5 = *(v1 + 16)) != 0 && (v6 = v5, v7 = PKCurrentlyReleventFlightStepForFlight(), v8 = [v7 status], v7, v6, v8 == 3))
  {
    v9 = &type metadata for FlightWidgetStatusSymbolContent;
    v10 = sub_1BD3AA714();
  }

  else
  {
    v9 = type metadata accessor for FlightWidgetPassSnapshotContent();
    v10 = sub_1BD3AB21C(&qword_1EBD44068, type metadata accessor for FlightWidgetPassSnapshotContent, &protocol conformance descriptor for FlightWidgetPassSnapshotContent);
  }

  v11 = v10;
  v22 = 2;
  v12 = *(v10 + 24);
  v13 = sub_1BE0534B4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  v12(v1, &v22, v9, v11, v15);
  Description = v9[-1].Description;
  if (Description[6](v17, 1, v9) == 1)
  {
    result = (*(v14 + 8))(v17, v13);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return Description[4](boxed_opaque_existential_1, v17, v9);
  }

  return result;
}

double sub_1BD3A9CA4@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
  if (v4 <= 4)
  {
    if (v4 < 3 || v4 != 3)
    {
      v8 = *(v2 + 16);
      if (!v8 || (v9 = v8, v10 = PKCurrentlyReleventFlightStepForFlight(), v11 = [v10 status], v10, v9, v11 != 3))
      {
        v5 = &type metadata for FlightWidgetDetailsContent;
        v6 = sub_1BD3AA768();
        goto LABEL_11;
      }
    }
  }

  else if (((1 << v4) & 0x3DE0) == 0)
  {
    if (v4 == 9)
    {
      v23 = sub_1BE051424();
      *(a2 + 24) = &type metadata for FlightWidgetStatusSymbolContent;
      *(a2 + 32) = sub_1BD3AA714();
      v24 = swift_allocObject();
      *a2 = v24;
      *(v24 + 16) = 0xD000000000000015;
      *(v24 + 24) = 0x80000001BE118FF0;
      *(v24 + 32) = v23;
      *(v24 + 40) = 2;
    }

    else
    {
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    return result;
  }

  v5 = type metadata accessor for FlightWidgetStatusMessageContent(0);
  v6 = sub_1BD3AB21C(&qword_1EBD44058, type metadata accessor for FlightWidgetStatusMessageContent, &protocol conformance descriptor for FlightWidgetStatusMessageContent);
LABEL_11:
  v12 = v6;
  v26 = 2;
  v13 = *(v6 + 24);
  v14 = sub_1BE0534B4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v13(v2, &v26, v5, v12, v16);
  Description = v5[-1].Description;
  if ((Description[6])(v18, 1, v5) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
  }

  else
  {
    *(&v28 + 1) = v5;
    v29 = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    Description[4](boxed_opaque_existential_1, v18, v5);
  }

  result = *&v27;
  v22 = v28;
  *a2 = v27;
  *(a2 + 16) = v22;
  *(a2 + 32) = v29;
  return result;
}

uint64_t sub_1BD3A9FE4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) == 13)
  {
    v6 = type metadata accessor for FlightWidgetStatusMessageContent(0);
    v7 = &qword_1EBD44058;
    v8 = type metadata accessor for FlightWidgetStatusMessageContent;
    v9 = &protocol conformance descriptor for FlightWidgetStatusMessageContent;
  }

  else
  {
    v6 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent(0);
    v7 = &unk_1EBD440B0;
    v8 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent;
    v9 = &protocol conformance descriptor for FlightWidgetStatusSymbolAndMessageContent;
  }

  v10 = sub_1BD3AB21C(v7, v8, v9);
  v21 = v5;
  v11 = *(v10 + 24);
  v12 = sub_1BE0534B4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v11(v3, &v21, v6, v10, v14);
  v17 = *(v6 - 8);
  if ((*(v17 + 48))(v16, 1, v6) == 1)
  {
    result = (*(v13 + 8))(v16, v12);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v6;
    *(a2 + 32) = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(v17 + 32))(boxed_opaque_existential_1, v16, v6);
  }

  return result;
}

uint64_t FlightWidgetViewModel.deinit()
{
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingPassAttributes, &qword_1EBD3D178, &unk_1BE0C0AC0);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingTime, &unk_1EBD39970, &unk_1BE0B9F80);
  sub_1BD3AA7BC(*(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon), *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_progressIcon + 16), v1, v2, v3, v4, v5);
  v6 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_currentTimeZone;
  v7 = sub_1BE04B3B4();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_1BD3AA7CC(*(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent), *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 16), *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 24), *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 32), *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent + 40), v8, v9);

  *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_airlineName + 8), v10, v11, v12, v13, v14, v15, v16;
  *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_flightCode + 8), v17, v18, v19, v20, v21, v22, v23;
  *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureAirportCode + 8), v24, v25, v26, v27, v28, v29, v30;
  *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalAirportCode + 8), v31, v32, v33, v34, v35, v36, v37;
  *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_backgroundColor), v38, v39, v40, v41, v42, v43, v44;
  *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_tintColor), v45, v46, v47, v48, v49, v50, v51;
  *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_statusColor), v52, v53, v54, v55, v56, v57, v58;
  *(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passUniqueID + 8), v59, v60, v61, v62, v63, v64, v65;
  sub_1BD28B4C8(*(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_perspective));
  v66 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureDate;
  v67 = sub_1BE04AF64();
  v68 = *(*(v67 - 8) + 8);
  v68(v0 + v66, v67);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureTimeZone, &unk_1EBD3D260, &unk_1BE0C0F20);
  v68(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalDate, v67);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalTimeZone, &unk_1EBD3D260, &unk_1BE0C0F20);
  return v0;
}

uint64_t FlightWidgetViewModel.__deallocating_deinit()
{
  FlightWidgetViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s9PassKitUI23FlightWidgetPerspectiveO2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != 1)
  {
    if (v3 != 1)
    {
      if (v2)
      {
        if (!v3)
        {
          sub_1BD28B4A8(0);
          v4 = 0;
          goto LABEL_6;
        }

        sub_1BD3AACE8();
        sub_1BD28B4A8(v3);
        sub_1BD28B4A8(v2);
        sub_1BD28B4A8(v3);
        sub_1BD28B4A8(v2);
        v6 = sub_1BE053074();
        sub_1BD28B4C8(v2);
        sub_1BD28B4C8(v3);
        sub_1BD28B4C8(v2);
        sub_1BD28B4C8(v3);
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v7 = v3;
        sub_1BD28B4A8(v3);
        sub_1BD28B4A8(0);
        sub_1BD28B4C8(0);
        sub_1BD28B4C8(v3);
        if (v3)
        {
          goto LABEL_7;
        }
      }

      return 1;
    }

LABEL_5:
    v4 = *a2;
LABEL_6:
    sub_1BD28B4A8(v4);
    sub_1BD28B4A8(v2);
    sub_1BD28B4C8(v2);
LABEL_7:
    sub_1BD28B4C8(v3);
    return 0;
  }

  if (v3 != 1)
  {
    goto LABEL_5;
  }

  sub_1BD28B4C8(1);
  sub_1BD28B4C8(1);
  return v3;
}

id sub_1BD3AA604(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1BE048C84();
  }
}

void sub_1BD3AA614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    sub_1BE048C84();
    sub_1BE048C84();

    sub_1BE048C84();
  }
}

uint64_t sub_1BD3AA664(uint64_t a1)
{
  v2 = type metadata accessor for BoardingPassAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD3AA6C0()
{
  result = qword_1EBD44048;
  if (!qword_1EBD44048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44048);
  }

  return result;
}

unint64_t sub_1BD3AA714()
{
  result = qword_1EBD44050;
  if (!qword_1EBD44050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44050);
  }

  return result;
}

unint64_t sub_1BD3AA768()
{
  result = qword_1EBD44060;
  if (!qword_1EBD44060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44060);
  }

  return result;
}

void sub_1BD3AA7BC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a3)
  {
  }

  else
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_1BD3AA7CC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    a4, v10, v11, v12, v13, v14, v15, v16;

    a6, v17, v18, v19, v20, v21, v22, v23;
  }
}

unint64_t sub_1BD3AA820()
{
  result = qword_1EBD44070;
  if (!qword_1EBD44070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44070);
  }

  return result;
}

unint64_t sub_1BD3AA878()
{
  result = qword_1EBD44078;
  if (!qword_1EBD44078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44078);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI23FlightWidgetPerspectiveO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD3AA8F0(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD3AA94C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1BD3AA9A8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t sub_1BD3AA9EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1BD3AAA34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlightExtendedState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlightExtendedState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BD3AAC0C(uint64_t a1)
{
  sub_1BD3AAD34(319, &qword_1EBD44090, sub_1BD3AACE8);
  if (v1 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v2 <= 0x3F)
    {
      sub_1BD3AAD34(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD3AACE8()
{
  result = qword_1EBD4F790[0];
  if (!qword_1EBD4F790[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBD4F790);
  }

  return result;
}