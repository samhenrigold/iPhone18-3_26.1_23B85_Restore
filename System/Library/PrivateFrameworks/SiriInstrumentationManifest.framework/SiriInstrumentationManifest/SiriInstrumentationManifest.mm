uint64_t static ACTVSchemaACTVButtonInteractionDetected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = sub_26738113C();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaButtonInteractionType(0);
  sub_266EC69D4(&qword_2800ED648, type metadata accessor for SISchemaButtonInteractionType, &protocol conformance descriptor for SISchemaButtonInteractionType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026741DEA0);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x614E6E6F74747562, 0xEA0000000000656DLL);
  return v10(v14, 0);
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

uint64_t sub_266EC637C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_266ECA490(a1);
    sub_266EC662C(v9, a2, a3);

    return sub_266ECA490(v9);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_266ECD1E8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_266EC6568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EC65CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EC662C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = v3;
  v6 = sub_266ECC8D8(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_266ECD794();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_26738116C();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a1, v11 + *(v19 + 72) * v8, v12);
    sub_266ECB898(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a1;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_26738116C();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a1;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_266EC679C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED38, qword_267388B60);
    v7 = sub_2673813CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_266ECA4F8(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_266ECC8D8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_26738116C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

uint64_t sub_266EC69D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266EC6A1C()
{
  result = qword_2800ED658;
  if (!qword_2800ED658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800ED658);
  }

  return result;
}

void sub_266ECA348(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_266ECA394(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED28, &unk_267388B50);
    v3 = sub_2673813CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_266ECC8D8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

uint64_t sub_266ECA490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266ECA4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED30, &qword_26741DD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ACTVSchemaACTVClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EED40, 0x277D56720);
  sub_266ECAF2C(&qword_2800EED48, &qword_2800EED40, 0x277D56720, &protocol conformance descriptor for ACTVSchemaACTVClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800ED658, 0x277D56710);
  sub_266ECAF2C(&qword_2800ED650, &qword_2800ED658, 0x277D56710, &protocol conformance descriptor for ACTVSchemaACTVButtonInteractionDetected);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x800000026741DEF0);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EED50, 0x277D56728);
  sub_266ECAF2C(&qword_2800EED58, &qword_2800EED50, 0x277D56728, &protocol conformance descriptor for ACTVSchemaACTVTurnActivated);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v21;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x697463416E727574, 0xED00006465746176);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v22 + 32))(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v10, v23);
  v12(v24, 0);
  sub_266ECB128(&unk_287883738);
  return sub_2673811CC();
}

uint64_t sub_266ECAA74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266ECAB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266ECABFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ECAC60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

_BYTE *sub_266ECACC0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_266ECAF70(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_266ECB028(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_266ECB0A4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_266ECAD54(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED98, qword_267388CB0);
  v10 = *(sub_26738118C() - 8);
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
  v15 = *(sub_26738118C() - 8);
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

uint64_t sub_266ECAF2C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_266ECB294(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266ECAF70(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_266ECB028(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26738107C();
  swift_allocObject();
  result = sub_26738106C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26738108C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_266ECB0A4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26738107C();
  swift_allocObject();
  result = sub_26738106C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_266ECB128(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED88, &qword_267388CA8);
  v10 = sub_266ECB320();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_266ECACC0(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_266ECB1D8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EED60, &qword_2800EED68, 0x277D56718, &protocol conformance descriptor for ACTVSchemaACTVClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800EED70, &qword_2800EED68, 0x277D56718, &protocol conformance descriptor for ACTVSchemaACTVClientEvent);
  result = sub_266ECAF2C(&qword_2800EED78, &qword_2800EED68, 0x277D56718, &protocol conformance descriptor for ACTVSchemaACTVClientEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_266ECB294(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_266ECB320()
{
  result = qword_2800EED90;
  if (!qword_2800EED90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800EED88, &qword_267388CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EED90);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t static ACTVSchemaACTVClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026741DF50);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0xD000000000000011, 0x800000026741DF50);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287883770);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t (*sub_266ECB6CC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_266ECBA84(v6, a2, a3);
  return sub_266ECB754;
}

void sub_266ECB754(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_266ECB7D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ECB838(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ECB898(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26738134C() + 1) & ~v5;
    while (1)
    {
      sub_26738140C();

      sub_26738131C();
      v9 = sub_26738141C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_26738116C() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void (*sub_266ECBA84(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_266ECC064(v7);
  v7[9] = sub_266ECBB90(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_266ECBB30;
}

void sub_266ECBB30(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_266ECBB90(void *a1, uint64_t a2, uint64_t a3, char a4))(void **a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = sub_26738116C();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_266ECC8D8(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        (*(v14 + 32))(v19, *(*v5 + 56) + *(v14 + 72) * v22, v12);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_266ECBE6C;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_266ECD794();
      goto LABEL_16;
    }

    sub_266ECC950(v25, a4 & 1);
    v29 = sub_266ECC8D8(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_2673813EC();
  __break(1u);
  return result;
}

void sub_266ECBE6C(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  v4 = (*(*a1 + 4) + 48);
  v5 = *(*a1 + 10);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_266ECC0DC(v5, v6);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      v11 = *(*(v2 + 4) + 32);
      v11(*(v2 + 6), v9, *(v2 + 3));
      v12 = *v10;
      v13 = *(v2 + 11);
      v14 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v15 = *(v2 + 5);
        v17 = *v2;
        v16 = *(v2 + 1);
        v11(v15, v14, *(v2 + 3));
        sub_266ECD62C(v13, v17, v16, v15, v12);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *(v2 + 9);
    sub_266ECC0DC(v5, v18);
    v19 = (*v4)(v18, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v19 != 1)
    {
      v22 = *(v2 + 2);
      v11 = *(*(v2 + 4) + 32);
      v11(*(v2 + 7), v9, *(v2 + 3));
      v12 = *v22;
      v13 = *(v2 + 11);
      v14 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11(v12[7] + *(*(v2 + 4) + 72) * v13, v14, *(v2 + 3));
      goto LABEL_10;
    }
  }

  sub_266ECA490(v9);
  if (v8)
  {
    v20 = *(v2 + 11);
    v21 = **(v2 + 2);
    sub_266ECC14C(*(v21 + 48) + 16 * v20);
    sub_266ECB898(v20, v21);
  }

LABEL_10:
  v23 = *(v2 + 9);
  v24 = *(v2 + 10);
  v26 = *(v2 + 7);
  v25 = *(v2 + 8);
  v28 = *(v2 + 5);
  v27 = *(v2 + 6);
  sub_266ECA490(v24);
  free(v24);
  free(v23);
  free(v25);
  free(v26);
  free(v27);
  free(v28);

  free(v2);
}

uint64_t (*sub_266ECC064(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_266ECC08C;
}

uint64_t sub_266ECC0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ACTVSchemaACTVTurnActivated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496E727574, 0xE600000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x64496E727574, 0xE600000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878837A0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266ECC438(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ECC49C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ANCSchemaANCAppCategory.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x800000026741DFE0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026741E000, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x800000026741E020, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266ECC758(uint64_t a1)
{
  v2 = sub_266ECDE24(&qword_2800EEDB8, &protocol conformance descriptor for ANCSchemaANCAppCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266ECC7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266ECDE24(&qword_2800EEDB8, &protocol conformance descriptor for ANCSchemaANCAppCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

unint64_t sub_266ECC828(uint64_t a1)
{
  v2 = sub_2673813FC();

  return sub_266ECC86C(a1, v2);
}

unint64_t sub_266ECC86C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_266ECC8D8(uint64_t a1, uint64_t a2)
{
  sub_26738140C();
  sub_26738131C();
  v4 = sub_26738141C();

  return sub_266ECD6DC(a1, a2, v4);
}

uint64_t sub_266ECC950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_26738116C();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED38, qword_267388B60);
  v42 = v4;
  result = sub_2673813BC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_26738140C();
      sub_26738131C();
      result = sub_26738141C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_266ECCCD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED28, &unk_267388B50);
  v34 = v4;
  result = sub_2673813BC();
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
      }

      sub_26738140C();
      sub_26738131C();
      result = sub_26738141C();
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

uint64_t sub_266ECCF70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EEDC0, &qword_267388EE8);
  result = sub_2673813BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_266ECDEBC(v30, *(&v30 + 1));
      }

      result = sub_2673813FC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_266ECD1E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_266ECC8D8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_266ECD794();
      goto LABEL_7;
    }

    sub_266ECC950(v15, a4 & 1);
    v26 = sub_266ECC8D8(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2673813EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_26738116C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_266ECD62C(v12, a2, a3, a1, v18);
}

unint64_t sub_266ECD368(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_266ECC8D8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_266ECCCD0(v16, a4 & 1);
      result = sub_266ECC8D8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2673813EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_266ECDA14();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_266ECD4CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_266ECC828(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_266ECCF70(v16, a4 & 1);
      result = sub_266ECC828(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2673813EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_266ECDB7C();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v25 = (v21[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v21[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v21[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  v23 = *v22;
  v24 = v22[1];
  *v22 = a1;
  v22[1] = a2;

  return sub_266ECDE68(v23, v24);
}

uint64_t sub_266ECD62C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_26738116C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_266ECD6DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2673813DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_266ECD794()
{
  v1 = v0;
  v35 = sub_26738116C();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED38, qword_267388B60);
  v3 = *v0;
  v4 = sub_2673813AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_266ECDA14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EED28, &unk_267388B50);
  v2 = *v0;
  v3 = sub_2673813AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_266ECDB7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EEDC0, &qword_267388EE8);
  v2 = *v0;
  v3 = sub_2673813AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        sub_266ECDEBC(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

unint64_t sub_266ECDCE4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800EEDC0, &qword_267388EE8);
  v3 = sub_2673813CC();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_266ECC828(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_266ECDEBC(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_266ECC828(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266ECDE24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANCSchemaANCAppCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266ECDE68(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_266ECDEBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t static ANCSchemaANCAppNotificationMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ANCSchemaANCCommunicationApiNotificationType(0);
  sub_266ECE420(&qword_2800EEDC8, type metadata accessor for ANCSchemaANCCommunicationApiNotificationType, &protocol conformance descriptor for ANCSchemaANCCommunicationApiNotificationType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v18 = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x800000026741E080);
  v10(v21, 0);
  v11 = *MEMORY[0x277D3E4E8];
  v12 = v19;
  v13 = *(v20 + 104);
  v20 += 104;
  v13(v4, v11, v19);
  v21[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x696C45736D537369, 0xED0000656C626967);
  v14(v21, 0);
  v13(v4, v11, v12);
  v21[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026741E0A0);
  return v15(v21, 0);
}

uint64_t sub_266ECE314(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ECE378(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266ECE420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266ECE468()
{
  result = qword_2800EEDD8;
  if (!qword_2800EEDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEDD8);
  }

  return result;
}

uint64_t static ANCSchemaANCAudioDevice.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v18 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16[1] = a1;
  sub_26738119C();
  v17 = "iri.anc.ANCAudioDevice";
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026741E110);
  return v14(v19, 0);
}

uint64_t sub_266ECE7E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ECE84C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ECE8B0()
{
  result = qword_2800EEDE0;
  if (!qword_2800EEDE0)
  {
    sub_266ECE908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEDE0);
  }

  return result;
}

unint64_t sub_266ECE908()
{
  result = qword_2800EEDE8;
  if (!qword_2800EEDE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEDE8);
  }

  return result;
}

uint64_t static ANCSchemaANCBackgroundContent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = sub_26738113C();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ANCSchemaANCMediaType(0);
  sub_266ECED8C(&qword_2800EEDF0, type metadata accessor for ANCSchemaANCMediaType, &protocol conformance descriptor for ANCSchemaANCMediaType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x707954616964656DLL, 0xE900000000000065);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026741E160);
  return v10(v14, 0);
}

uint64_t sub_266ECEC80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ECECE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266ECED8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266ECEDD4()
{
  result = qword_2800EEE00;
  if (!qword_2800EEE00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEE00);
  }

  return result;
}

uint64_t static ANCSchemaANCCategory.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000013, 0x800000026741E1B0, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x4745544143434E41, 0xEF534D535F59524FLL, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026741E1D0, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x800000026741E1F0, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000014, 0x800000026741E210, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x800000026741E230, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x800000026741E250, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x800000026741E280, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_266ECF278(uint64_t a1)
{
  v2 = sub_266ECF37C(&qword_2800EEE10, &protocol conformance descriptor for ANCSchemaANCCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266ECF2E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266ECF37C(&qword_2800EEE10, &protocol conformance descriptor for ANCSchemaANCCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266ECF37C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANCSchemaANCCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ANCSchemaANCClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEE18, 0x277D56750);
  sub_266ECAF2C(&qword_2800EEE20, &qword_2800EEE18, 0x277D56750, &protocol conformance descriptor for ANCSchemaANCClientEventMetadata);
  sub_26738120C();
  v7 = sub_26738116C();
  v26 = *(v7 - 8);
  v8 = *(v26 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800EEE28, 0x277D56758);
  sub_266ECAF2C(&qword_2800EEE30, &qword_2800EEE28, 0x277D56758, &protocol conformance descriptor for ANCSchemaANCNotificationReceived);
  v25[1] = a1;
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026741E2D0);
  v10(v31, 0);
  sub_266ECB294(0, &qword_2800EEE38, 0x277D56780);
  sub_266ECAF2C(&qword_2800EEE40, &qword_2800EEE38, 0x277D56780, &protocol conformance descriptor for ANCSchemaANCUserResponseEvaluated);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026741E2F0);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800EEE48, 0x277D56760);
  sub_266ECAF2C(&qword_2800EEE50, &qword_2800EEE48, 0x277D56760, &protocol conformance descriptor for ANCSchemaANCNotificationReceivedTier1);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x800000026741E310);
  v12(v31, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v30, 0xD000000000000019, 0x800000026741E310);
  if (!(*(v26 + 48))(v15, 1, v7))
  {
    sub_266ECB128(&unk_2878837D0);
    sub_26738115C();
  }

  (v14)(v30, 0);
  v13(v31, 0);
  v16 = v27;
  sub_26738117C();
  v17 = sub_2673811BC();
  v19 = v18;
  v20 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_266ECAD54(0, v20[2] + 1, 1, v20);
    *v19 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_266ECAD54((v22 > 1), v23 + 1, 1, v20);
    *v19 = v20;
  }

  v20[2] = v23 + 1;
  (*(v28 + 32))(v20 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, v16, v29);
  v17(v31, 0);
  sub_266ECB128(&unk_2878837F8);
  return sub_2673811CC();
}

uint64_t sub_266ECFA54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266ECFAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266ECFBB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ECFC1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266ECFC7C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EEE58, &qword_2800EEE60, 0x277D56748, &protocol conformance descriptor for ANCSchemaANCClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800EEE68, &qword_2800EEE60, 0x277D56748, &protocol conformance descriptor for ANCSchemaANCClientEvent);
  result = sub_266ECAF2C(&qword_2800EEE70, &qword_2800EEE60, 0x277D56748, &protocol conformance descriptor for ANCSchemaANCClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static ANCSchemaANCClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v18 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v19 = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v17 = *(v6 + 56);
  v17(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0x6449636E61, 0xE500000000000000);
  v7(v21, 0);
  v8 = sub_2673811AC();
  v9 = sub_266ECB6CC(v20, 0x6449636E61, 0xE500000000000000);
  v16 = *(v6 + 48);
  if (!v16(v10, 1, v5))
  {
    sub_266ECB128(&unk_287883830);
    sub_26738115C();
  }

  (v9)(v20, 0);
  v8(v21, 0);
  sub_26738120C();
  v17(v4, 0, 1, v5);
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x4974736575716572, 0xE900000000000064);
  v11(v21, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v20, 0x4974736575716572, 0xE900000000000064);
  if (!v16(v14, 1, v5))
  {
    sub_266ECB128(&unk_287883860);
    sub_26738115C();
  }

  (v13)(v20, 0);
  return v12(v21, 0);
}

uint64_t sub_266ED013C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED01A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ANCSchemaANCCommunicationApiNotificationType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026741E3A0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026741E3D0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x800000026741E400, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000031, 0x800000026741E440, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266ED04C8(uint64_t a1)
{
  v2 = sub_266ED05CC(&qword_2800EEE80, &protocol conformance descriptor for ANCSchemaANCCommunicationApiNotificationType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266ED0530(uint64_t a1, uint64_t a2)
{
  v4 = sub_266ED05CC(&qword_2800EEE80, &protocol conformance descriptor for ANCSchemaANCCommunicationApiNotificationType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266ED05CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANCSchemaANCCommunicationApiNotificationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ANCSchemaANCFeatureEnablementStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000022, 0x800000026741E4C0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026741E4F0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026741E520, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266ED0828(uint64_t a1)
{
  v2 = sub_266ED092C(&qword_2800EEE90, &protocol conformance descriptor for ANCSchemaANCFeatureEnablementStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266ED0890(uint64_t a1, uint64_t a2)
{
  v4 = sub_266ED092C(&qword_2800EEE90, &protocol conformance descriptor for ANCSchemaANCFeatureEnablementStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266ED092C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANCSchemaANCFeatureEnablementStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ANCSchemaANCFeatureSupportStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026741E580, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026741E5A0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026741E5D0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266ED0B84(uint64_t a1)
{
  v2 = sub_266ED0C88(&qword_2800EEEA0, &protocol conformance descriptor for ANCSchemaANCFeatureSupportStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266ED0BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266ED0C88(&qword_2800EEEA0, &protocol conformance descriptor for ANCSchemaANCFeatureSupportStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266ED0C88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANCSchemaANCFeatureSupportStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ANCSchemaANCMediaType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000014, 0x800000026741E630, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x800000026741E650, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x800000026741E670, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x800000026741E690, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x800000026741E6B0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000012, 0x800000026741E6D0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x800000026741E6F0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266ED10A8(uint64_t a1)
{
  v2 = sub_266ED11AC(&qword_2800EEEA8, &protocol conformance descriptor for ANCSchemaANCMediaType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266ED1110(uint64_t a1, uint64_t a2)
{
  v4 = sub_266ED11AC(&qword_2800EEEA8, &protocol conformance descriptor for ANCSchemaANCMediaType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266ED11AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANCSchemaANCMediaType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ANCSchemaANCNotificationReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ANCSchemaANCCategory(0);
  sub_266ED1C34(&qword_2800EEE08, type metadata accessor for ANCSchemaANCCategory, &protocol conformance descriptor for ANCSchemaANCCategory);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x800000026741E750);
  v8(v23, 0);
  type metadata accessor for ANCSchemaANCTargetPlatform(0);
  sub_266ED1C34(&qword_2800EEEB0, type metadata accessor for ANCSchemaANCTargetPlatform, &protocol conformance descriptor for ANCSchemaANCTargetPlatform);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6C50746567726174, 0xEE006D726F667461);
  v9(v23, 0);
  sub_266ECB294(0, &qword_2800EEDE8, 0x277D56738);
  sub_266ECAF2C(&qword_2800EEDE0, &qword_2800EEDE8, 0x277D56738, &protocol conformance descriptor for ANCSchemaANCAudioDevice);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x800000026741E770);
  v10(v23, 0);
  (*(v21 + 104))(v20, *MEMORY[0x277D3E4E8], v22);
  v23[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x800000026741E790);
  v11(v23, 0);
  type metadata accessor for ANCSchemaANCAppCategory(0);
  sub_266ED1C34(&qword_2800EEDB0, type metadata accessor for ANCSchemaANCAppCategory, &protocol conformance descriptor for ANCSchemaANCAppCategory);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x6765746143707061, 0xEB0000000079726FLL);
  v12(v23, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B6E696CLL, 0xE600000000000000);
  v13(v23, 0);
  sub_266ECB294(0, &qword_2800EEE00, 0x277D56740);
  sub_266ECAF2C(&qword_2800EEDF8, &qword_2800EEE00, 0x277D56740, &protocol conformance descriptor for ANCSchemaANCBackgroundContent);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x800000026741E7B0);
  v14(v23, 0);
  sub_266ECB294(0, &qword_2800EEDD8, 0x277D56730);
  sub_266ECAF2C(&qword_2800EEDD0, &qword_2800EEDD8, 0x277D56730, &protocol conformance descriptor for ANCSchemaANCAppNotificationMetadata);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x800000026741E7D0);
  v15(v23, 0);
  type metadata accessor for ANCSchemaANCFeatureEnablementStatus(0);
  sub_266ED1C34(&qword_2800EEE88, type metadata accessor for ANCSchemaANCFeatureEnablementStatus, &protocol conformance descriptor for ANCSchemaANCFeatureEnablementStatus);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0x6E45656C62626F62, 0xED000064656C6261);
  v16(v23, 0);
  type metadata accessor for ANCSchemaANCFeatureSupportStatus(0);
  sub_266ED1C34(&qword_2800EEE98, type metadata accessor for ANCSchemaANCFeatureSupportStatus, &protocol conformance descriptor for ANCSchemaANCFeatureSupportStatus);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0x7553656C62626F62, 0xEF646574726F7070);
  return v17(v23, 0);
}

uint64_t sub_266ED1B70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED1BD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266ED1C34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ANCSchemaANCNotificationReceivedTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v26 = sub_26738113C();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496B6E696CLL, 0xE600000000000000);
  v12(v28, 0);
  v13 = *MEMORY[0x277D3E530];
  v14 = *(v3 + 104);
  v24 = v3 + 104;
  v22 = v14;
  v14(v5, v13, v26);
  v28[0] = 1;
  sub_26738114C();
  v23 = v11;
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C646E7542707061, 0xEB00000000644965);
  v15(v28, 0);
  v25 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v27, 0x6C646E7542707061, 0xEB00000000644965);
  if (!(*(v10 + 48))(v18, 1, v9))
  {
    sub_266ECB128(&unk_287883890);
    sub_26738115C();
  }

  (v17)(v27, 0);
  v16(v28, 0);
  v22(v5, *MEMORY[0x277D3E4E8], v26);
  v28[0] = 1;
  sub_26738114C();
  v23(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026741E830);
  return v19(v28, 0);
}

uint64_t sub_266ED217C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED21E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ANCSchemaANCServerEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEEB8, 0x277D56770);
  sub_266ECAF2C(&qword_2800EEEC0, &qword_2800EEEB8, 0x277D56770, &protocol conformance descriptor for ANCSchemaANCServerEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EEEC8, 0x277D56778);
  sub_266ECAF2C(&qword_2800EEED0, &qword_2800EEEC8, 0x277D56778, &protocol conformance descriptor for ANCSchemaANCServerUserResponseEvaluated);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  v10 = v20;
  sub_266EC637C(v5, 0xD000000000000015, 0x800000026741E2F0);
  v9(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v21 + 32))(v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, v10, v22);
  v11(v23, 0);
  sub_266ECB128(&unk_2878838B8);
  return sub_2673811CC();
}

uint64_t sub_266ED26B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266ED274C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266ED2818(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED287C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266ED28DC(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EEED8, &qword_2800EEEE0, 0x277D56768, &protocol conformance descriptor for ANCSchemaANCServerEvent);
  a1[2] = sub_266ECAF2C(&qword_2800EEEE8, &qword_2800EEEE0, 0x277D56768, &protocol conformance descriptor for ANCSchemaANCServerEvent);
  result = sub_266ECAF2C(&qword_2800EEEF0, &qword_2800EEEE0, 0x277D56768, &protocol conformance descriptor for ANCSchemaANCServerEvent);
  a1[3] = result;
  return result;
}

uint64_t static ANCSchemaANCServerEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449636E61, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449636E61, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878838F0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266ED2C74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED2CD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ANCSchemaANCServerUserResponseEvaluated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ANCSchemaANCUserResponseCategory(0);
  sub_266ED306C(&qword_2800EEF00, type metadata accessor for ANCSchemaANCUserResponseCategory, &protocol conformance descriptor for ANCSchemaANCUserResponseCategory);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026741E8F0);
  return v5(v7, 0);
}

uint64_t sub_266ED2F60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED2FC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266ED306C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266ED30B4()
{
  result = qword_2800EEEC8;
  if (!qword_2800EEEC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEEC8);
  }

  return result;
}

uint64_t static ANCSchemaANCTargetPlatform.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000019, 0x800000026741E940, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026741E960, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x800000026741E980, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x800000026741E9A0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x800000026741E9C0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266ED33FC(uint64_t a1)
{
  v2 = sub_266ED3500(&qword_2800EEF08, &protocol conformance descriptor for ANCSchemaANCTargetPlatform);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266ED3464(uint64_t a1, uint64_t a2)
{
  v4 = sub_266ED3500(&qword_2800EEF08, &protocol conformance descriptor for ANCSchemaANCTargetPlatform);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266ED3500(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANCSchemaANCTargetPlatform(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ANCSchemaANCUserResponseCategory.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026741EA20, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026741EA40, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026741EA60, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026741EA90, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266ED37D0(uint64_t a1)
{
  v2 = sub_266ED38D4(&qword_2800EEF10, &protocol conformance descriptor for ANCSchemaANCUserResponseCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266ED3838(uint64_t a1, uint64_t a2)
{
  v4 = sub_266ED38D4(&qword_2800EEF10, &protocol conformance descriptor for ANCSchemaANCUserResponseCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266ED38D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ANCSchemaANCUserResponseCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ANCSchemaANCUserResponseEvaluated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ANCSchemaANCUserResponseCategory(0);
  sub_266ED3C08(&qword_2800EEF00, type metadata accessor for ANCSchemaANCUserResponseCategory, &protocol conformance descriptor for ANCSchemaANCUserResponseCategory);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026741E8F0);
  return v5(v7, 0);
}

uint64_t sub_266ED3AFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED3B60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266ED3C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266ED3C50()
{
  result = qword_2800EEE38;
  if (!qword_2800EEE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEE38);
  }

  return result;
}

uint64_t static ASRSchemaASRActiveConfigUpdateContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEF18, 0x277D56798);
  sub_266ECAF2C(&qword_2800EEF20, &qword_2800EEF18, 0x277D56798, &protocol conformance descriptor for ASRSchemaASRActiveConfigUpdateStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EEF28, 0x277D56790);
  sub_266ECAF2C(&qword_2800EEF30, &qword_2800EEF28, 0x277D56790, &protocol conformance descriptor for ASRSchemaASRActiveConfigUpdateEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266ED40E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED414C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRActiveConfigUpdateEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266ED4438(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED449C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED4500()
{
  result = qword_2800EEF30;
  if (!qword_2800EEF30)
  {
    sub_266ED4558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEF30);
  }

  return result;
}

unint64_t sub_266ED4558()
{
  result = qword_2800EEF28;
  if (!qword_2800EEF28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEF28);
  }

  return result;
}

uint64_t static ASRSchemaASRActiveConfigUpdateStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266ED47EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED4850(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED48B4()
{
  result = qword_2800EEF20;
  if (!qword_2800EEF20)
  {
    sub_266ED490C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEF20);
  }

  return result;
}

unint64_t sub_266ED490C()
{
  result = qword_2800EEF18;
  if (!qword_2800EEF18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEF18);
  }

  return result;
}

uint64_t static ASRSchemaASRAlternativeSelectionTextCategorized.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17 = sub_26738113C();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C616E696769726FLL, 0xED00006449727341);
  v10(v19, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026741EC10);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0xD000000000000011, 0x800000026741EC10);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287883920);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_266ED4D40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED4DA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRAppLanguageModelLoadContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEF58, 0x277D567C0);
  sub_266ECAF2C(&qword_2800EEF60, &qword_2800EEF58, 0x277D567C0, &protocol conformance descriptor for ASRSchemaASRAppLanguageModelLoadStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800EEF68, 0x277D567B0);
  sub_266ECAF2C(&qword_2800EEF70, &qword_2800EEF68, 0x277D567B0, &protocol conformance descriptor for ASRSchemaASRAppLanguageModelLoadEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EEF78, 0x277D567B8);
  sub_266ECAF2C(&qword_2800EEF80, &qword_2800EEF78, 0x277D567B8, &protocol conformance descriptor for ASRSchemaASRAppLanguageModelLoadFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_266ED5360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED53C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRAppLanguageModelLoadEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v17 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E540];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D695464616F6CLL, 0xEC000000734E6E49);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026741ECB0);
  return v14(v18, 0);
}

uint64_t sub_266ED5794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED57F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED585C()
{
  result = qword_2800EEF70;
  if (!qword_2800EEF70)
  {
    sub_266ED58B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEF70);
  }

  return result;
}

unint64_t sub_266ED58B4()
{
  result = qword_2800EEF68;
  if (!qword_2800EEF68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEF68);
  }

  return result;
}

uint64_t static ASRSchemaASRAppLanguageModelLoadFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v16 = v1;
  v17 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASRAppLanguageModelLoadFailureReason(0);
  sub_266ED5DF8(&qword_2800EEF98, type metadata accessor for ASRSchemaASRAppLanguageModelLoadFailureReason, &protocol conformance descriptor for ASRSchemaASRAppLanguageModelLoadFailureReason);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F73616572, 0xE600000000000000);
  v10(v18, 0);
  v11 = *MEMORY[0x277D3E540];
  v12 = *(v17 + 104);
  v17 += 104;
  v12(v4, v11, v1);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D695464616F6CLL, 0xEC000000734E6E49);
  v13(v18, 0);
  v12(v4, v11, v16);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x800000026741ECB0);
  return v14(v18, 0);
}

uint64_t sub_266ED5CEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED5D50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266ED5DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266ED5E40()
{
  result = qword_2800EEF78;
  if (!qword_2800EEF78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEF78);
  }

  return result;
}

uint64_t static ASRSchemaASRAppLanguageModelLoadFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002DLL, 0x800000026741ED50, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000031, 0x800000026741ED80, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x800000026741EDC0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000032, 0x800000026741EDF0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000031, 0x800000026741EE30, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000039, 0x800000026741EE70, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000035, 0x800000026741EEB0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266ED6264(uint64_t a1)
{
  v2 = sub_266ED6368(&qword_2800EEFA0, &protocol conformance descriptor for ASRSchemaASRAppLanguageModelLoadFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266ED62CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266ED6368(&qword_2800EEFA0, &protocol conformance descriptor for ASRSchemaASRAppLanguageModelLoadFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266ED6368(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRAppLanguageModelLoadFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRAppLanguageModelLoadStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_266ED6810(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x636F4C6C65646F6DLL, 0xEB00000000656C61);
  return v5(v7, 0);
}

uint64_t sub_266ED6574(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_266ED6810(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x636F4C6C65646F6DLL, 0xEB00000000656C61);
  return v5(v7, 0);
}

uint64_t sub_266ED6704(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED6768(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266ED6810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266ED6858()
{
  result = qword_2800EEF58;
  if (!qword_2800EEF58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEF58);
  }

  return result;
}

uint64_t static ASRSchemaASRAppleNeuralEngineCompilationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = sub_26738118C();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEFB0, 0x277D567D8);
  sub_266ECAF2C(&qword_2800EEFB8, &qword_2800EEFB0, 0x277D567D8, &protocol conformance descriptor for ASRSchemaASRAppleNeuralEngineCompilationStarted);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x64657472617473, 0xE700000000000000);
  v8(v21, 0);
  sub_266ECB294(0, &qword_2800EEFC0, 0x277D567D0);
  sub_266ECAF2C(&qword_2800EEFC8, &qword_2800EEFC0, 0x277D567D0, &protocol conformance descriptor for ASRSchemaASRAppleNeuralEngineCompilationEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v19;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v21, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v1 + 32))(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v9, v20);
  return v11(v21, 0);
}

uint64_t sub_266ED6CEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED6D50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRAppleNeuralEngineCompilationEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266ED703C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED70A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED7104()
{
  result = qword_2800EEFC8;
  if (!qword_2800EEFC8)
  {
    sub_266ED715C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEFC8);
  }

  return result;
}

unint64_t sub_266ED715C()
{
  result = qword_2800EEFC0;
  if (!qword_2800EEFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEFC0);
  }

  return result;
}

uint64_t static ASRSchemaASRAppleNeuralEngineCompilationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266ED73F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED7454(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED74B8()
{
  result = qword_2800EEFB8;
  if (!qword_2800EEFB8)
  {
    sub_266ED7510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEFB8);
  }

  return result;
}

unint64_t sub_266ED7510()
{
  result = qword_2800EEFB0;
  if (!qword_2800EEFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEFB0);
  }

  return result;
}

uint64_t static ASRSchemaASRAppleNeuralEngineModelInitializationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEFE0, 0x277D567F0);
  sub_266ECAF2C(&qword_2800EEFE8, &qword_2800EEFE0, 0x277D567F0, &protocol conformance descriptor for ASRSchemaASRAppleNeuralEngineModelInitializationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EEFF0, 0x277D567E8);
  sub_266ECAF2C(&qword_2800EEFF8, &qword_2800EEFF0, 0x277D567E8, &protocol conformance descriptor for ASRSchemaASRAppleNeuralEngineModelInitializationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266ED79A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED7A0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRAppleNeuralEngineModelInitializationEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266ED7CF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED7D5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED7DC0()
{
  result = qword_2800EEFF8;
  if (!qword_2800EEFF8)
  {
    sub_266ED7E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEFF8);
  }

  return result;
}

unint64_t sub_266ED7E18()
{
  result = qword_2800EEFF0;
  if (!qword_2800EEFF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEFF0);
  }

  return result;
}

uint64_t static ASRSchemaASRAppleNeuralEngineModelInitializationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266ED80AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED8110(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED8174()
{
  result = qword_2800EEFE8;
  if (!qword_2800EEFE8)
  {
    sub_266ED81CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEFE8);
  }

  return result;
}

unint64_t sub_266ED81CC()
{
  result = qword_2800EEFE0;
  if (!qword_2800EEFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEFE0);
  }

  return result;
}

uint64_t static ASRSchemaASRAssetLoadContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF010, 0x277D56808);
  sub_266ECAF2C(&qword_2800EF018, &qword_2800EF010, 0x277D56808, &protocol conformance descriptor for ASRSchemaASRAssetLoadStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EF020, 0x277D56800);
  sub_266ECAF2C(&qword_2800EF028, &qword_2800EF020, 0x277D56800, &protocol conformance descriptor for ASRSchemaASRAssetLoadEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266ED8664(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED86C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRAssetLoadEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266ED89B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED8A18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED8A7C()
{
  result = qword_2800EF028;
  if (!qword_2800EF028)
  {
    sub_266ED8AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF028);
  }

  return result;
}

unint64_t sub_266ED8AD4()
{
  result = qword_2800EF020;
  if (!qword_2800EF020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF020);
  }

  return result;
}

uint64_t static ASRSchemaASRAssetLoadStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266ED8D68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED8DCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED8E30()
{
  result = qword_2800EF018;
  if (!qword_2800EF018)
  {
    sub_266ED8E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF018);
  }

  return result;
}

unint64_t sub_266ED8E88()
{
  result = qword_2800EF010;
  if (!qword_2800EF010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF010);
  }

  return result;
}

uint64_t static ASRSchemaASRAudioPacketArrivalContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF040, 0x277D56820);
  sub_266ECAF2C(&qword_2800EF048, &qword_2800EF040, 0x277D56820, &protocol conformance descriptor for ASRSchemaASRAudioPacketArrivalStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EF050, 0x277D56818);
  sub_266ECAF2C(&qword_2800EF058, &qword_2800EF050, 0x277D56818, &protocol conformance descriptor for ASRSchemaASRAudioPacketArrivalEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266ED9320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED9384(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRAudioPacketArrivalEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266ED9670(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED96D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED9738()
{
  result = qword_2800EF058;
  if (!qword_2800EF058)
  {
    sub_266ED9790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF058);
  }

  return result;
}

unint64_t sub_266ED9790()
{
  result = qword_2800EF050;
  if (!qword_2800EF050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF050);
  }

  return result;
}

uint64_t static ASRSchemaASRAudioPacketArrivalStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266ED9A24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED9A88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED9AEC()
{
  result = qword_2800EF048;
  if (!qword_2800EF048)
  {
    sub_266ED9B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF048);
  }

  return result;
}

unint64_t sub_266ED9B44()
{
  result = qword_2800EF040;
  if (!qword_2800EF040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF040);
  }

  return result;
}

uint64_t static ASRSchemaASRAudioPacketContainingEndOfFirstWordReadyUpstream.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266ED9DD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266ED9E3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266ED9EA0()
{
  result = qword_2800EF070;
  if (!qword_2800EF070)
  {
    sub_266ED9EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF070);
  }

  return result;
}

unint64_t sub_266ED9EF8()
{
  result = qword_2800EF078;
  if (!qword_2800EF078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF078);
  }

  return result;
}

uint64_t static ASRSchemaASRAudioSpeechPacketArrivalContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF080, 0x277D56840);
  sub_266ECAF2C(&qword_2800EF088, &qword_2800EF080, 0x277D56840, &protocol conformance descriptor for ASRSchemaASRAudioSpeechPacketArrivalStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EF090, 0x277D56838);
  sub_266ECAF2C(&qword_2800EF098, &qword_2800EF090, 0x277D56838, &protocol conformance descriptor for ASRSchemaASRAudioSpeechPacketArrivalEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266EDA390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EDA3F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRAudioSpeechPacketArrivalEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EDA6E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EDA744(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EDA7A8()
{
  result = qword_2800EF098;
  if (!qword_2800EF098)
  {
    sub_266EDA800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF098);
  }

  return result;
}

unint64_t sub_266EDA800()
{
  result = qword_2800EF090;
  if (!qword_2800EF090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF090);
  }

  return result;
}

uint64_t static ASRSchemaASRAudioSpeechPacketArrivalStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EDAA94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EDAAF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EDAB5C()
{
  result = qword_2800EF088;
  if (!qword_2800EF088)
  {
    sub_266EDABB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF088);
  }

  return result;
}

unint64_t sub_266EDABB4()
{
  result = qword_2800EF080;
  if (!qword_2800EF080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF080);
  }

  return result;
}

uint64_t static ASRSchemaASRAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EDAE48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EDAEAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EDAF10()
{
  result = qword_2800EF0B0;
  if (!qword_2800EF0B0)
  {
    sub_266EDAF68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF0B0);
  }

  return result;
}

unint64_t sub_266EDAF68()
{
  result = qword_2800EF0B8;
  if (!qword_2800EF0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF0B8);
  }

  return result;
}

uint64_t static ASRSchemaASRCancelled.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASRCancelReason(0);
  sub_266EDB2FC();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EF0C8, 0x277D56A28);
  sub_266ECAF2C(&qword_2800EF0D0, &qword_2800EF0C8, 0x277D56A28, &protocol conformance descriptor for ASRSchemaASRRecognitionMetrics);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7363697274656DLL, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_266EDB238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EDB29C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EDB2FC()
{
  result = qword_2800EF0C0;
  if (!qword_2800EF0C0)
  {
    type metadata accessor for ASRSchemaASRCancelReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF0C0);
  }

  return result;
}

uint64_t static ASRSchemaASRCancelReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000017, 0x800000026741F400, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026741F420, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x800000026741F450, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266EDB5AC(uint64_t a1)
{
  v2 = sub_266EDB6B0(&qword_2800EF0E8, &protocol conformance descriptor for ASRSchemaASRCancelReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EDB614(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EDB6B0(&qword_2800EF0E8, &protocol conformance descriptor for ASRSchemaASRCancelReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EDB6B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRCancelReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v112 = *(v4 - 8);
  v113 = v4;
  MEMORY[0x28223BE20](v4);
  v111 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v107 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF0F0, 0x277D56860);
  sub_266ECAF2C(&qword_2800EF0F8, &qword_2800EF0F0, 0x277D56860, &protocol conformance descriptor for ASRSchemaASRClientEventMetadata);
  sub_26738120C();
  v9 = sub_26738116C();
  v121 = *(v9 - 8);
  v11 = v121 + 56;
  v10 = *(v121 + 56);
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v123, 0);
  sub_266ECB294(0, &qword_2800EF100, 0x277D56A08);
  sub_266ECAF2C(&qword_2800EF108, &qword_2800EF100, 0x277D56A08, &protocol conformance descriptor for ASRSchemaASRPreheatContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x4374616568657270, 0xEE00747865746E6FLL);
  v13(v123, 0);
  sub_266ECB294(0, &qword_2800EF110, 0x277D56A48);
  sub_266ECAF2C(&qword_2800EF118, &qword_2800EF110, 0x277D56A48, &protocol conformance descriptor for ASRSchemaASRRequestContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v117 = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x4374736575716572, 0xEE00747865746E6FLL);
  v14(v123, 0);
  sub_266ECB294(0, &qword_2800EF120, 0x277D569F0);
  sub_266ECAF2C(&qword_2800EF128, &qword_2800EF120, 0x277D569F0, &protocol conformance descriptor for ASRSchemaASRPartialResultGenerated);
  v119 = a1;
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026741F4B0);
  v15(v123, 0);
  sub_266ECB294(0, &qword_2800EF130, 0x277D569E8);
  sub_266ECAF2C(&qword_2800EF138, &qword_2800EF130, 0x277D569E8, &protocol conformance descriptor for ASRSchemaASRPackageGenerated);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  v109 = 0xD000000000000010;
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741F4D0);
  v16(v123, 0);
  sub_266ECB294(0, &qword_2800EF140, 0x277D56A38);
  sub_266ECAF2C(&qword_2800EF148, &qword_2800EF140, 0x277D56A38, &protocol conformance descriptor for ASRSchemaASRRecognitionResultTier1);
  sub_26738121C();
  v120 = v10;
  v116 = v11;
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026741F4F0);
  v17(v123, 0);
  v18 = sub_2673811AC();
  v114 = 0xD000000000000016;
  v19 = sub_266ECB6CC(v122, 0xD000000000000016, 0x800000026741F4F0);
  v20 = *(v121 + 48);
  v115 = v9;
  v121 += 48;
  v118 = v20;
  if (!v20(v21, 1, v9))
  {
    sub_266ECB128(&unk_287883948);
    sub_26738115C();
  }

  (v19)(v122, 0);
  v18(v123, 0);
  sub_266ECB294(0, &qword_2800EF150, 0x277D568E8);
  sub_266ECAF2C(&qword_2800EF158, &qword_2800EF150, 0x277D568E8, &protocol conformance descriptor for ASRSchemaASRFinalResultGenerated);
  sub_26738121C();
  v22 = v115;
  v23 = v120;
  v120(v8, 0, 1, v115);
  v24 = sub_2673811AC();
  v110 = 0xD000000000000014;
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026741F510);
  v24(v123, 0);
  sub_266ECB294(0, &qword_2800EF160, 0x277D56958);
  sub_266ECAF2C(&qword_2800EF168, &qword_2800EF160, 0x277D56958, &protocol conformance descriptor for ASRSchemaASRIntermediateUtteranceInfoTier1);
  sub_26738121C();
  v23(v8, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026741F530);
  v25(v123, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v122, 0xD00000000000001ELL, 0x800000026741F530);
  if (!v118(v28, 1, v22))
  {
    sub_266ECB128(&unk_287883970);
    sub_26738115C();
  }

  (v27)(v122, 0);
  v26(v123, 0);
  sub_266ECB294(0, &qword_2800EF170, 0x277D56940);
  sub_266ECAF2C(&qword_2800EF178, &qword_2800EF170, 0x277D56940, &protocol conformance descriptor for ASRSchemaASRInitializationContext);
  sub_26738121C();
  v29 = v115;
  v30 = v120;
  v120(v8, 0, 1, v115);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026741F550);
  v31(v123, 0);
  sub_266ECB294(0, &qword_2800EF038, 0x277D567F8);
  sub_266ECAF2C(&qword_2800EF030, &qword_2800EF038, 0x277D567F8, &protocol conformance descriptor for ASRSchemaASRAssetLoadContext);
  sub_26738121C();
  v30(v8, 0, 1, v29);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, v109, 0x800000026741F570);
  v32(v123, 0);
  sub_266ECB294(0, &qword_2800EF180, 0x277D56970);
  sub_266ECAF2C(&qword_2800EF188, &qword_2800EF180, 0x277D56970, &protocol conformance descriptor for ASRSchemaASRJitLanguageModelEnrollmentContext);
  sub_26738121C();
  v30(v8, 0, 1, v29);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026741F590);
  v33(v123, 0);
  sub_266ECB294(0, &qword_2800EF190, 0x277D56980);
  sub_266ECAF2C(&qword_2800EF198, &qword_2800EF190, 0x277D56980, &protocol conformance descriptor for ASRSchemaASRJitLanguageModelEnrollmentEndedTier1);
  sub_26738121C();
  v30(v8, 0, 1, v29);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, 0x800000026741F5B0);
  v34(v123, 0);
  v35 = sub_2673811AC();
  v36 = sub_266ECB6CC(v122, 0xD000000000000024, 0x800000026741F5B0);
  if (!v118(v37, 1, v29))
  {
    sub_266ECB128(&unk_287883998);
    sub_26738115C();
  }

  (v36)(v122, 0);
  v35(v123, 0);
  sub_266ECB294(0, &qword_2800EF068, 0x277D56810);
  sub_266ECAF2C(&qword_2800EF060, &qword_2800EF068, 0x277D56810, &protocol conformance descriptor for ASRSchemaASRAudioPacketArrivalContext);
  sub_26738121C();
  v38 = v115;
  v39 = v120;
  v120(v8, 0, 1, v115);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026741F5E0);
  v40(v123, 0);
  sub_266ECB294(0, &qword_2800EF1A0, 0x277D568F0);
  sub_266ECAF2C(&qword_2800EF1A8, &qword_2800EF1A0, 0x277D568F0, &protocol conformance descriptor for ASRSchemaASRFirstAudioPacketProcessed);
  sub_26738121C();
  v39(v8, 0, 1, v38);
  v41 = v39;
  v42 = sub_2673811AC();
  v108 = 0xD000000000000019;
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026741F600);
  v42(v123, 0);
  sub_266ECB294(0, &qword_2800EF1B0, 0x277D568E0);
  sub_266ECAF2C(&qword_2800EF1B8, &qword_2800EF1B0, 0x277D568E0, &protocol conformance descriptor for ASRSchemaASRFinalAudioPacketContainingSpeechReceived);
  sub_26738121C();
  v43 = v115;
  v41(v8, 0, 1, v115);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000028, 0x800000026741F620);
  v44(v123, 0);
  sub_266ECB294(0, &qword_2800EF1C0, 0x277D56A90);
  sub_266ECAF2C(&qword_2800EF1C8, &qword_2800EF1C0, 0x277D56A90, &protocol conformance descriptor for ASRSchemaASRSampledAudioFileStored);
  sub_26738121C();
  v41(v8, 0, 1, v43);
  v45 = sub_2673811AC();
  sub_266EC637C(v8, v114, 0x800000026741F650);
  v45(v123, 0);
  sub_266ECB294(0, &qword_2800EF1D0, 0x277D56A88);
  sub_266ECAF2C(&qword_2800EF1D8, &qword_2800EF1D0, 0x277D56A88, &protocol conformance descriptor for ASRSchemaASRSampledAudioFileStorageFailed);
  sub_26738121C();
  v41(v8, 0, 1, v43);
  v46 = v41;
  v47 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x800000026741F670);
  v47(v123, 0);
  sub_266ECB294(0, &qword_2800EF1E0, 0x277D56A80);
  sub_266ECAF2C(&qword_2800EF1E8, &qword_2800EF1E0, 0x277D56A80, &protocol conformance descriptor for ASRSchemaASRSampledAudioFileEnqueued);
  sub_26738121C();
  v41(v8, 0, 1, v115);
  v48 = sub_2673811AC();
  v114 = 0xD000000000000018;
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026741F690);
  v48(v123, 0);
  sub_266ECB294(0, &qword_2800EF1F0, 0x277D56A78);
  sub_266ECAF2C(&qword_2800EF1F8, &qword_2800EF1F0, 0x277D56A78, &protocol conformance descriptor for ASRSchemaASRSampledAudioFileEnqueueFailed);
  sub_26738121C();
  v41(v8, 0, 1, v115);
  v49 = sub_2673811AC();
  v109 = 0xD00000000000001DLL;
  v50 = v115;
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x800000026741F6B0);
  v49(v123, 0);
  sub_266ECB294(0, &qword_2800EF200, 0x277D56A68);
  sub_266ECAF2C(&qword_2800EF208, &qword_2800EF200, 0x277D56A68, &protocol conformance descriptor for ASRSchemaASRSampledAudioFileDeleted);
  sub_26738121C();
  v46(v8, 0, 1, v50);
  v51 = sub_2673811AC();
  v107 = 0xD000000000000017;
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026741F6D0);
  v51(v123, 0);
  sub_266ECB294(0, &qword_2800EF210, 0x277D56A70);
  sub_266ECAF2C(&qword_2800EF218, &qword_2800EF210, 0x277D56A70, &protocol conformance descriptor for ASRSchemaASRSampledAudioFileDeletionFailed);
  sub_26738121C();
  v46(v8, 0, 1, v50);
  v52 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026741F6F0);
  v52(v123, 0);
  sub_266ECB294(0, &qword_2800EEFD8, 0x277D567C8);
  sub_266ECAF2C(&qword_2800EEFD0, &qword_2800EEFD8, 0x277D567C8, &protocol conformance descriptor for ASRSchemaASRAppleNeuralEngineCompilationContext);
  sub_26738121C();
  v46(v8, 0, 1, v50);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x800000026741F710);
  v53(v123, 0);
  sub_266ECB294(0, &qword_2800EF220, 0x277D568A0);
  sub_266ECAF2C(&qword_2800EF228, &qword_2800EF220, 0x277D568A0, &protocol conformance descriptor for ASRSchemaASRDictationVoiceCommandMetricsReported);
  sub_26738121C();
  v46(v8, 0, 1, v50);
  v54 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, 0x800000026741F740);
  v54(v123, 0);
  sub_266ECB294(0, &qword_2800EEF90, 0x277D567A8);
  sub_266ECAF2C(&qword_2800EEF88, &qword_2800EEF90, 0x277D567A8, &protocol conformance descriptor for ASRSchemaASRAppLanguageModelLoadContext);
  sub_26738121C();
  v46(v8, 0, 1, v50);
  v55 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x800000026741F770);
  v55(v123, 0);
  sub_266ECB294(0, &qword_2800EF230, 0x277D568A8);
  sub_266ECAF2C(&qword_2800EF238, &qword_2800EF230, 0x277D568A8, &protocol conformance descriptor for ASRSchemaASREmbeddedSpeechProcessContext);
  sub_26738121C();
  v46(v8, 0, 1, v50);
  v56 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x800000026741F790);
  v56(v123, 0);
  sub_266ECB294(0, &qword_2800EF240, 0x277D569C8);
  sub_266ECAF2C(&qword_2800EF248, &qword_2800EF240, 0x277D569C8, &protocol conformance descriptor for ASRSchemaASRManualEditTextClassified);
  sub_26738121C();
  v46(v8, 0, 1, v50);
  v57 = sub_2673811AC();
  v58 = v114;
  sub_266EC637C(v8, v114, 0x800000026741F7B0);
  v57(v123, 0);
  v59 = sub_2673811AC();
  v60 = sub_266ECB6CC(v122, v58, 0x800000026741F7B0);
  if (!v118(v61, 1, v50))
  {
    sub_266ECB128(&unk_2878839C0);
    sub_26738115C();
  }

  (v60)(v122, 0);
  v59(v123, 0);
  sub_266ECB294(0, &qword_2800EF250, 0x277D569C0);
  sub_266ECAF2C(&qword_2800EF258, &qword_2800EF250, 0x277D569C0, &protocol conformance descriptor for ASRSchemaASRManualEditMetricClassified);
  sub_26738121C();
  v120(v8, 0, 1, v50);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x800000026741F7D0);
  v62(v123, 0);
  v63 = sub_2673811AC();
  v64 = sub_266ECB6CC(v122, 0xD00000000000001ALL, 0x800000026741F7D0);
  if (!v118(v65, 1, v50))
  {
    sub_266ECB128(&unk_2878839F0);
    sub_26738115C();
  }

  (v64)(v122, 0);
  v63(v123, 0);
  sub_266ECB294(0, &qword_2800EF260, 0x277D569A0);
  sub_266ECAF2C(&qword_2800EF268, &qword_2800EF260, 0x277D569A0, &protocol conformance descriptor for ASRSchemaASRManualEditClassificationContext);
  sub_26738121C();
  v120(v8, 0, 1, v50);
  v66 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026741F7F0);
  v66(v123, 0);
  v67 = sub_2673811AC();
  v68 = sub_266ECB6CC(v122, 0xD00000000000001FLL, 0x800000026741F7F0);
  if (!v118(v69, 1, v50))
  {
    sub_266ECB128(&unk_287883A18);
    sub_26738115C();
  }

  (v68)(v122, 0);
  v67(v123, 0);
  sub_266ECB294(0, &qword_2800EEF40, 0x277D56788);
  sub_266ECAF2C(&qword_2800EEF38, &qword_2800EEF40, 0x277D56788, &protocol conformance descriptor for ASRSchemaASRActiveConfigUpdateContext);
  sub_26738121C();
  v70 = v120;
  v120(v8, 0, 1, v50);
  v71 = sub_2673811AC();
  sub_266EC637C(v8, v108, 0x800000026741F810);
  v71(v123, 0);
  sub_266ECB294(0, &qword_2800EF008, 0x277D567E0);
  sub_266ECAF2C(&qword_2800EF000, &qword_2800EF008, 0x277D567E0, &protocol conformance descriptor for ASRSchemaASRAppleNeuralEngineModelInitializationContext);
  sub_26738121C();
  v70(v8, 0, 1, v50);
  v72 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, 0x800000026741F830);
  v72(v123, 0);
  sub_266ECB294(0, &qword_2800EF270, 0x277D56910);
  sub_266ECAF2C(&qword_2800EF278, &qword_2800EF270, 0x277D56910, &protocol conformance descriptor for ASRSchemaASRFrameProcessingReady);
  sub_26738121C();
  v70(v8, 0, 1, v50);
  v73 = sub_2673811AC();
  sub_266EC637C(v8, v110, 0x800000026741F860);
  v73(v123, 0);
  sub_266ECB294(0, &qword_2800EF280, 0x277D56998);
  sub_266ECAF2C(&qword_2800EF288, &qword_2800EF280, 0x277D56998, &protocol conformance descriptor for ASRSchemaASRLeadingSilenceProcessed);
  sub_26738121C();
  v70(v8, 0, 1, v50);
  v74 = sub_2673811AC();
  sub_266EC637C(v8, v107, 0x800000026741F880);
  v74(v123, 0);
  sub_266ECB294(0, &qword_2800EF290, 0x277D56908);
  sub_266ECAF2C(&qword_2800EF298, &qword_2800EF290, 0x277D56908, &protocol conformance descriptor for ASRSchemaASRFirstSecondAfterLeadingSilenceProcessed);
  sub_26738121C();
  v70(v8, 0, 1, v50);
  v75 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, 0x800000026741F8A0);
  v75(v123, 0);
  sub_266ECB294(0, &qword_2800EF0A8, 0x277D56830);
  sub_266ECAF2C(&qword_2800EF0A0, &qword_2800EF0A8, 0x277D56830, &protocol conformance descriptor for ASRSchemaASRAudioSpeechPacketArrivalContext);
  sub_26738121C();
  v70(v8, 0, 1, v50);
  v76 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026741F8D0);
  v76(v123, 0);
  sub_266ECB294(0, &qword_2800EF0B8, 0x277D56848);
  sub_266ECAF2C(&qword_2800EF0B0, &qword_2800EF0B8, 0x277D56848, &protocol conformance descriptor for ASRSchemaASRAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived);
  sub_26738121C();
  v70(v8, 0, 1, v50);
  v77 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000039, 0x800000026741F8F0);
  v77(v123, 0);
  sub_266ECB294(0, &qword_2800EF2A0, 0x277D56900);
  sub_266ECAF2C(&qword_2800EF2A8, &qword_2800EF2A0, 0x277D56900, &protocol conformance descriptor for ASRSchemaASRFirstAudioPacketRecorded);
  sub_26738121C();
  v70(v8, 0, 1, v50);
  v78 = sub_2673811AC();
  sub_266EC637C(v8, v114, 0x800000026741F930);
  v78(v123, 0);
  sub_266ECB294(0, &qword_2800EF078, 0x277D56828);
  sub_266ECAF2C(&qword_2800EF070, &qword_2800EF078, 0x277D56828, &protocol conformance descriptor for ASRSchemaASRAudioPacketContainingEndOfFirstWordReadyUpstream);
  sub_26738121C();
  v70(v8, 0, 1, v50);
  v79 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000030, 0x800000026741F950);
  v79(v123, 0);
  sub_266ECB294(0, &qword_2800EF2B0, 0x277D568F8);
  sub_266ECAF2C(&qword_2800EF2B8, &qword_2800EF2B0, 0x277D568F8, &protocol conformance descriptor for ASRSchemaASRFirstAudioPacketReadyUpstream);
  sub_26738121C();
  v70(v8, 0, 1, v50);
  v80 = sub_2673811AC();
  sub_266EC637C(v8, v109, 0x800000026741F990);
  v80(v123, 0);
  sub_266ECB294(0, &qword_2800EF2C0, 0x277D568D8);
  sub_266ECAF2C(&qword_2800EF2C8, &qword_2800EF2C0, 0x277D568D8, &protocol conformance descriptor for ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream);
  sub_26738121C();
  v70(v8, 0, 1, v50);
  v81 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002DLL, 0x800000026741F9B0);
  v81(v123, 0);
  sub_266ECB294(0, &qword_2800EEF50, 0x277D567A0);
  sub_266ECAF2C(&qword_2800EEF48, &qword_2800EEF50, 0x277D567A0, &protocol conformance descriptor for ASRSchemaASRAlternativeSelectionTextCategorized);
  sub_26738121C();
  v70(v8, 0, 1, v50);
  v82 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x800000026741F9E0);
  v82(v123, 0);
  v83 = sub_2673811AC();
  v84 = sub_266ECB6CC(v122, 0xD000000000000023, 0x800000026741F9E0);
  if (!v118(v85, 1, v50))
  {
    sub_266ECB128(&unk_287883A40);
    sub_26738115C();
  }

  (v84)(v122, 0);
  v83(v123, 0);
  sub_266ECB294(0, &qword_2800EF2D0, 0x277D56898);
  sub_266ECAF2C(&qword_2800EF2D8, &qword_2800EF2D0, 0x277D56898, &protocol conformance descriptor for ASRSchemaASRDictationVoiceCommandInfoTier1);
  sub_26738121C();
  v120(v8, 0, 1, v50);
  v86 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026741FA10);
  v86(v123, 0);
  v87 = sub_2673811AC();
  v88 = sub_266ECB6CC(v122, 0xD00000000000001ELL, 0x800000026741FA10);
  if (!v118(v89, 1, v50))
  {
    sub_266ECB128(&unk_287883A70);
    sub_26738115C();
  }

  (v88)(v122, 0);
  v87(v123, 0);
  sub_266ECB294(0, &qword_2800EF2E0, 0x277D56A60);
  sub_266ECAF2C(&qword_2800EF2E8, &qword_2800EF2E0, 0x277D56A60, &protocol conformance descriptor for ASRSchemaASRRescoringDeliberationResultTier1);
  sub_26738121C();
  v120(v8, 0, 1, v50);
  v90 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x800000026741FA30);
  v90(v123, 0);
  v91 = sub_2673811AC();
  v92 = sub_266ECB6CC(v122, 0xD000000000000020, 0x800000026741FA30);
  if (!v118(v93, 1, v50))
  {
    sub_266ECB128(&unk_287883A98);
    sub_26738115C();
  }

  (v92)(v122, 0);
  v91(v123, 0);
  sub_266ECB294(0, &qword_2800EF2F0, 0x277D56870);
  sub_266ECAF2C(&qword_2800EF2F8, &qword_2800EF2F0, 0x277D56870, &protocol conformance descriptor for ASRSchemaASRContextualEntityCollectionTriggered);
  sub_26738121C();
  v94 = v120;
  v120(v8, 0, 1, v50);
  v95 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x800000026741FA60);
  v95(v123, 0);
  sub_266ECB294(0, &qword_2800EF300, 0x277D56878);
  sub_266ECAF2C(&qword_2800EF308, &qword_2800EF300, 0x277D56878, &protocol conformance descriptor for ASRSchemaASRContextualEntityRetrievalContext);
  sub_26738121C();
  v94(v8, 0, 1, v50);
  v96 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x800000026741FA90);
  v96(v123, 0);
  sub_266ECB294(0, &qword_2800EF310, 0x277D569F8);
  sub_266ECAF2C(&qword_2800EF318, &qword_2800EF310, 0x277D569F8, &protocol conformance descriptor for ASRSchemaASRPersonalizationUserEditNamedEntityMetrics);
  sub_26738121C();
  v94(v8, 0, 1, v50);
  v97 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, 0x800000026741FAC0);
  v97(v123, 0);
  v98 = v111;
  sub_26738117C();
  v99 = sub_2673811BC();
  v101 = v100;
  v102 = *v100;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v101 = v102;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v102 = sub_266ECAD54(0, v102[2] + 1, 1, v102);
    *v101 = v102;
  }

  v105 = v102[2];
  v104 = v102[3];
  if (v105 >= v104 >> 1)
  {
    v102 = sub_266ECAD54((v104 > 1), v105 + 1, 1, v102);
    *v101 = v102;
  }

  v102[2] = v105 + 1;
  (*(v112 + 32))(v102 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v105, v98, v113);
  v99(v123, 0);
  sub_266ECB128(&unk_287883AC0);
  return sub_2673811CC();
}

uint64_t sub_266EDE510(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266EDE5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266EDE674(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EDE6D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EDE738(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EF320, &qword_2800EF328, 0x277D56858, &protocol conformance descriptor for ASRSchemaASRClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800EF330, &qword_2800EF328, 0x277D56858, &protocol conformance descriptor for ASRSchemaASRClientEvent);
  result = sub_266ECAF2C(&qword_2800EF338, &qword_2800EF328, 0x277D56858, &protocol conformance descriptor for ASRSchemaASRClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static ASRSchemaASRClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v18 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v19 = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v17 = *(v6 + 56);
  v17(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0x6449727361, 0xE500000000000000);
  v7(v21, 0);
  v8 = sub_2673811AC();
  v9 = sub_266ECB6CC(v20, 0x6449727361, 0xE500000000000000);
  v16 = *(v6 + 48);
  if (!v16(v10, 1, v5))
  {
    sub_266ECB128(&unk_287883AF8);
    sub_26738115C();
  }

  (v9)(v20, 0);
  v8(v21, 0);
  sub_26738120C();
  v17(v4, 0, 1, v5);
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x4974736575716572, 0xE900000000000064);
  v11(v21, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v20, 0x4974736575716572, 0xE900000000000064);
  if (!v16(v14, 1, v5))
  {
    sub_266ECB128(&unk_287883B28);
    sub_26738115C();
  }

  (v13)(v20, 0);
  return v12(v21, 0);
}

uint64_t sub_266EDEBF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EDEC5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRConfusionPairToken.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  LODWORD(v25) = *MEMORY[0x277D3E530];
  v28 = v9;
  v29 = v3 + 104;
  (v9)(v5);
  v32[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v26 = *(v11 + 56);
  v27 = v11 + 56;
  v26(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741FB50);
  v12(v32, 0);
  v30 = a1;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v31, 0xD000000000000010, 0x800000026741FB50);
  v24 = *(v11 + 48);
  if (!v24(v15, 1, v10))
  {
    sub_266ECB128(&unk_287883B58);
    sub_26738115C();
  }

  (v14)(v31, 0);
  v13(v32, 0);
  v16 = v25;
  v25 = v2;
  v28(v5, v16, v2);
  v32[0] = 1;
  sub_26738114C();
  v26(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6574636572726F63, 0xEF736E656B6F5464);
  v17(v32, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v31, 0x6574636572726F63, 0xEF736E656B6F5464);
  if (!v24(v20, 1, v10))
  {
    sub_266ECB128(&unk_287883B80);
    sub_26738115C();
  }

  (v19)(v31, 0);
  v18(v32, 0);
  v28(v5, *MEMORY[0x277D3E508], v25);
  v32[0] = 1;
  sub_26738114C();
  v26(v8, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x800000026741FB70);
  return v21(v32, 0);
}

uint64_t sub_266EDF244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EDF2A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EDF30C()
{
  result = qword_2800EF348;
  if (!qword_2800EF348)
  {
    sub_266EDF364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF348);
  }

  return result;
}

unint64_t sub_266EDF364()
{
  result = qword_2800EF350;
  if (!qword_2800EF350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF350);
  }

  return result;
}

uint64_t static ASRSchemaASRContextualEntityCollectionTriggered.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EDF5F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EDF65C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EDF6C0()
{
  result = qword_2800EF2F8;
  if (!qword_2800EF2F8)
  {
    sub_266EDF718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF2F8);
  }

  return result;
}

unint64_t sub_266EDF718()
{
  result = qword_2800EF2F0;
  if (!qword_2800EF2F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF2F0);
  }

  return result;
}

uint64_t static ASRSchemaASRContextualEntityRetrievalContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF358, 0x277D56888);
  sub_266ECAF2C(&qword_2800EF360, &qword_2800EF358, 0x277D56888, &protocol conformance descriptor for ASRSchemaASRContextualEntityRetrievalStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EF368, 0x277D56880);
  sub_266ECAF2C(&qword_2800EF370, &qword_2800EF368, 0x277D56880, &protocol conformance descriptor for ASRSchemaASRContextualEntityRetrievalEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266EDFBB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EDFC14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRContextualEntityRetrievalEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF378, 0x277D56890);
  sub_266ECAF2C(&qword_2800EF380, &qword_2800EF378, 0x277D56890, &protocol conformance descriptor for ASRSchemaASRContextualEntityState);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026741FC50);
  return v5(v7, 0);
}

uint64_t sub_266EDFEB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EDFF14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRContextualEntityRetrievalStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v33 = a2;
  sub_26738119C();
  v31 = *MEMORY[0x277D3E508];
  v10 = *(v4 + 104);
  v34 = v4 + 104;
  v35 = v3;
  v10(v6);
  v11 = v10;
  v36[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v9, 0, 1, v12);
  v29 = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C6F726E4578616DLL, 0xEB0000000064656CLL);
  v16(v36, 0);
  v28 = "xtualEntityRetrievalStarted";
  (v10)(v6, *MEMORY[0x277D3E518], v3);
  v36[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v28 | 0x8000000000000000);
  v17(v36, 0);
  v18 = v31;
  (v10)(v6, v31, v35);
  v36[0] = 1;
  sub_26738114C();
  v19 = v29;
  v29(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x7469746E4578616DLL, 0xEE00737261684379);
  v20(v36, 0);
  v11(v6, v18, v35);
  v36[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x7469746E4578616DLL, 0xEE007364726F5779);
  v21(v36, 0);
  type metadata accessor for ASRSchemaASRTaskHint(0);
  sub_266EE085C(&qword_2800EF388, type metadata accessor for ASRSchemaASRTaskHint, &protocol conformance descriptor for ASRSchemaASRTaskHint);
  sub_26738122C();
  v22 = v12;
  v19(v9, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x5464656C62616E65, 0xEC000000736B7361);
  v23(v36, 0);
  sub_26738120C();
  v30 = v15;
  v19(v9, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x5474736575716572, 0xEB000000006B7361);
  v24(v36, 0);
  type metadata accessor for QDSchemaQDEntityContextType(0);
  sub_266EE085C(&qword_2800EF390, type metadata accessor for QDSchemaQDEntityContextType, &protocol conformance descriptor for QDSchemaQDEntityContextType);
  sub_26738122C();
  v19(v9, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026741FCD0);
  v25(v36, 0);
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260, &protocol conformance descriptor for QDSchemaQDEntityType);
  sub_26738122C();
  v19(v9, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026741FCF0);
  return v26(v36, 0);
}

uint64_t sub_266EE0798(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE07FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EE085C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ASRSchemaASRContextualEntityState.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for QDSchemaQDEntityContextType(0);
  sub_266EE0DEC(&qword_2800EF390, type metadata accessor for QDSchemaQDEntityContextType, &protocol conformance descriptor for QDSchemaQDEntityContextType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x54747865746E6F63, 0xEB00000000657079);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800EF398, 0x277D5A260);
  sub_266ECAF2C(&qword_2800EF3A0, &qword_2800EF398, 0x277D5A260, &protocol conformance descriptor for QDSchemaQDEntityType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954797469746E65, 0xEA00000000006570);
  v7(v11, 0);
  type metadata accessor for ASRSchemaASREntityEnrollmentResult(0);
  sub_266EE0DEC(&qword_2800EF3A8, type metadata accessor for ASRSchemaASREntityEnrollmentResult, &protocol conformance descriptor for ASRSchemaASREntityEnrollmentResult);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026741FD50);
  v8(v11, 0);
  type metadata accessor for ASRSchemaASREntityEnrollmentReason(0);
  sub_266EE0DEC(&qword_2800EF3B0, type metadata accessor for ASRSchemaASREntityEnrollmentReason, &protocol conformance descriptor for ASRSchemaASREntityEnrollmentReason);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x65527463656A6572, 0xEC0000006E6F7361);
  return v9(v11, 0);
}

uint64_t sub_266EE0D28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE0D8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EE0DEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ASRSchemaASRDatapackTask.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000017, 0x800000026741FDA0, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x800000026741FDC0, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x800000026741FDF0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026741FE10, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x800000026741FE30, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x800000026741FE50, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x800000026741FE70, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000014, 0x800000026741FEA0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ELL, 0x800000026741FEC0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_266EE1330(uint64_t a1)
{
  v2 = sub_266EE1434(&qword_2800EF3C0, &protocol conformance descriptor for ASRSchemaASRDatapackTask);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EE1398(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EE1434(&qword_2800EF3C0, &protocol conformance descriptor for ASRSchemaASRDatapackTask);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EE1434(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRDatapackTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRDictationVoiceCommandInfoTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v29[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v32 = *MEMORY[0x277D3E530];
  v33 = v2 + 104;
  v34 = v1;
  v31 = v8;
  v8(v4);
  v37[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v35 = *(v10 + 56);
  v29[0] = v10 + 56;
  v35(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026741FF20);
  v11(v37, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v36, 0xD000000000000011, 0x800000026741FF20);
  v30 = *(v10 + 48);
  if (!v30(v14, 1, v9))
  {
    sub_266ECB128(&unk_287883BA8);
    sub_26738115C();
  }

  (v13)(v36, 0);
  v12(v37, 0);
  v31(v4, v32, v34);
  v37[0] = 1;
  sub_26738114C();
  v35(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026741FF40);
  v15(v37, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v36, 0xD000000000000010, 0x800000026741FF40);
  if (!v30(v18, 1, v9))
  {
    sub_266ECB128(&unk_287883BD0);
    sub_26738115C();
  }

  (v17)(v36, 0);
  v16(v37, 0);
  v31(v4, v32, v34);
  v37[0] = 1;
  sub_26738114C();
  v35(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x746567726174, 0xE600000000000000);
  v19(v37, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v36, 0x746567726174, 0xE600000000000000);
  if (!v30(v22, 1, v9))
  {
    sub_266ECB128(&unk_287883BF8);
    sub_26738115C();
  }

  (v21)(v36, 0);
  v20(v37, 0);
  v31(v4, v32, v34);
  v37[0] = 1;
  sub_26738114C();
  v35(v7, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x64616F6C796170, 0xE700000000000000);
  v23(v37, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v36, 0x64616F6C796170, 0xE700000000000000);
  if (!v30(v26, 1, v9))
  {
    sub_266ECB128(&unk_287883C20);
    sub_26738115C();
  }

  (v25)(v36, 0);
  v24(v37, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v35(v7, 0, 1, v9);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x800000026741FF60);
  return v27(v37, 0);
}

uint64_t sub_266EE1C48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE1CAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRDictationVoiceCommandMetricsReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v11 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v35 = v10;
  v36 = v11;
  sub_26738120C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v9, 0, 1, v12);
  v41 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D6F436563696F76, 0xEE006449646E616DLL);
  v16(v44, 0);
  v33 = "tionVoiceCommandMetricsReported";
  v17 = *MEMORY[0x277D3E540];
  v18 = v42;
  v40 = *(v43 + 104);
  v43 += 104;
  v39 = v17;
  v40(v6, v17, v42);
  v44[0] = 1;
  sub_26738114C();
  v34 = v12;
  v14(v9, 0, 1, v12);
  v38 = a2;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v33 | 0x8000000000000000);
  v19(v44, 0);
  v33 = "commandEndTimeInNs";
  v20 = v17;
  v21 = v40;
  v40(v6, v20, v18);
  v44[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v33 | 0x8000000000000000);
  v22(v44, 0);
  v33 = "commandParserStartTimeInNs";
  v23 = v39;
  v24 = v42;
  v21(v6, v39, v42);
  v44[0] = 1;
  sub_26738114C();
  v25 = v34;
  v14(v9, 0, 1, v34);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v33 | 0x8000000000000000);
  v26(v44, 0);
  v33 = "commandParserEndTimeInNs";
  v21(v6, v23, v24);
  v44[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v33 | 0x8000000000000000);
  v27(v44, 0);
  v40(v6, v39, v42);
  v44[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267420040);
  v28(v44, 0);
  v43 = "utteranceEndTimeInNs";
  sub_26738120C();
  v14(v9, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v43 | 0x8000000000000000);
  v29(v44, 0);
  sub_26738120C();
  v14(v9, 0, 1, v25);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x800000026741FF60);
  return v30(v44, 0);
}

uint64_t sub_266EE2520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE2584(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASREditMethod.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674200B0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674200D0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x8000000267420100, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266EE283C(uint64_t a1)
{
  v2 = sub_266EE2940(&qword_2800EF3D0, &protocol conformance descriptor for ASRSchemaASREditMethod);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EE28A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EE2940(&qword_2800EF3D0, &protocol conformance descriptor for ASRSchemaASREditMethod);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EE2940(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASREditMethod(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASREditReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267420160, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267420180, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x80000002674201A0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x80000002674201C0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266EE2C08(uint64_t a1)
{
  v2 = sub_266EE2D0C(&qword_2800EF3E0, &protocol conformance descriptor for ASRSchemaASREditReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EE2C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EE2D0C(&qword_2800EF3E0, &protocol conformance descriptor for ASRSchemaASREditReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EE2D0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASREditReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASREmbeddedSpeechProcessContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF3E8, 0x277D568B0);
  sub_266ECAF2C(&qword_2800EF3F0, &qword_2800EF3E8, 0x277D568B0, &protocol conformance descriptor for ASRSchemaASREmbeddedSpeechProcessStarted);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026741EB30);
  v9(v18, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v2 + 32))(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v4, v1);
  return v10(v18, 0);
}

uint64_t sub_266EE30C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE3128(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASREmbeddedSpeechProcessStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EE3414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE3478(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE34DC()
{
  result = qword_2800EF3F0;
  if (!qword_2800EF3F0)
  {
    sub_266EE3534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF3F0);
  }

  return result;
}

unint64_t sub_266EE3534()
{
  result = qword_2800EF3E8;
  if (!qword_2800EF3E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF3E8);
  }

  return result;
}

uint64_t static ASRSchemaASREmojiMetrics.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v27 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E530];
  v26 = *(v1 + 104);
  v26(v3, v7, v0);
  v21[1] = v1 + 104;
  v28[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v24 = *(v9 + 56);
  v25 = v9 + 56;
  v22 = v8;
  v24(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267420290);
  v10(v28, 0);
  v21[0] = "recognizedEmojis";
  v23 = *MEMORY[0x277D3E4E8];
  v11 = v23;
  v13 = v26;
  v12 = v27;
  v26(v3, v23, v27);
  v28[0] = 1;
  sub_26738114C();
  v14 = v8;
  v15 = v24;
  v24(v6, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, v21[0] | 0x8000000000000000);
  v16(v28, 0);
  v21[0] = "isEmojiPersonalizationUsed";
  v13(v3, v11, v12);
  v28[0] = 1;
  sub_26738114C();
  v17 = v22;
  v15(v6, 0, 1, v22);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, v21[0] | 0x8000000000000000);
  v18(v28, 0);
  v13(v3, v23, v27);
  v28[0] = 1;
  sub_26738114C();
  v15(v6, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x80000002674202F0);
  return v19(v28, 0);
}

uint64_t sub_266EE3A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE3AC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE3B2C()
{
  result = qword_2800EF3F8;
  if (!qword_2800EF3F8)
  {
    sub_266EE3B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF3F8);
  }

  return result;
}

unint64_t sub_266EE3B84()
{
  result = qword_2800EF400;
  if (!qword_2800EF400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF400);
  }

  return result;
}

uint64_t static ASRSchemaASREnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF0C8, 0x277D56A28);
  sub_266ECAF2C(&qword_2800EF0D0, &qword_2800EF0C8, 0x277D56A28, &protocol conformance descriptor for ASRSchemaASRRecognitionMetrics);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7363697274656DLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_266EE3DA4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF0C8, 0x277D56A28);
  sub_266ECAF2C(&qword_2800EF0D0, &qword_2800EF0C8, 0x277D56A28, &protocol conformance descriptor for ASRSchemaASRRecognitionMetrics);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7363697274656DLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_266EE3F40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE3FA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASREntityEnrollmentReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267420380, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x80000002674203B0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x80000002674203E0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267420420, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266EE42D0(uint64_t a1)
{
  v2 = sub_266EE43D4(&qword_2800EF418, &protocol conformance descriptor for ASRSchemaASREntityEnrollmentReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EE4338(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EE43D4(&qword_2800EF418, &protocol conformance descriptor for ASRSchemaASREntityEnrollmentReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EE43D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASREntityEnrollmentReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASREntityEnrollmentResult.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267420490, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x80000002674204C0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x80000002674204F0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266EE4630(uint64_t a1)
{
  v2 = sub_266EE4734(&qword_2800EF420, &protocol conformance descriptor for ASRSchemaASREntityEnrollmentResult);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EE4698(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EE4734(&qword_2800EF420, &protocol conformance descriptor for ASRSchemaASREntityEnrollmentResult);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EE4734(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASREntityEnrollmentResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASREntityMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x6152797469746E65, 0xEA00000000006B6ELL);
  return v8(v10, 0);
}

uint64_t sub_266EE49C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE4A2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE4A90()
{
  result = qword_2800EF428;
  if (!qword_2800EF428)
  {
    sub_266EE4AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF428);
  }

  return result;
}

unint64_t sub_266EE4AE8()
{
  result = qword_2800EF430;
  if (!qword_2800EF430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF430);
  }

  return result;
}

uint64_t static ASRSchemaASREntityTaggerCategory.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001FLL, 0x8000000267420580, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x80000002674205A0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674205D0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x8000000267420600, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266EE4DB8(uint64_t a1)
{
  v2 = sub_266EE4EBC(&qword_2800EF440, &protocol conformance descriptor for ASRSchemaASREntityTaggerCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EE4E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EE4EBC(&qword_2800EF440, &protocol conformance descriptor for ASRSchemaASREntityTaggerCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EE4EBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASREntityTaggerCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF0C8, 0x277D56A28);
  sub_266ECAF2C(&qword_2800EF0D0, &qword_2800EF0C8, 0x277D56A28, &protocol conformance descriptor for ASRSchemaASRRecognitionMetrics);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7363697274656DLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_266EE50D4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF0C8, 0x277D56A28);
  sub_266ECAF2C(&qword_2800EF0D0, &qword_2800EF0C8, 0x277D56A28, &protocol conformance descriptor for ASRSchemaASRRecognitionMetrics);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7363697274656DLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_266EE5270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE52D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *(v1 + 104);
  v19 = *MEMORY[0x277D3E530];
  v20 = v1 + 104;
  v21 = v0;
  v18 = v7;
  v7(v3);
  v23[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v17 = *(v9 + 56);
  v17(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x80000002674206B0);
  v10(v23, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v22, 0xD000000000000014, 0x80000002674206B0);
  if (!(*(v9 + 48))(v13, 1, v8))
  {
    sub_266ECB128(&unk_287883C48);
    sub_26738115C();
  }

  (v12)(v22, 0);
  v11(v23, 0);
  v18(v3, v19, v21);
  v23[0] = 1;
  sub_26738114C();
  v17(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674206D0);
  return v14(v23, 0);
}

uint64_t sub_266EE5750(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE57B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE5818()
{
  result = qword_2800EF2C8;
  if (!qword_2800EF2C8)
  {
    sub_266EE5870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF2C8);
  }

  return result;
}

unint64_t sub_266EE5870()
{
  result = qword_2800EF2C0;
  if (!qword_2800EF2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF2C0);
  }

  return result;
}

uint64_t static ASRSchemaASRFinalAudioPacketContainingSpeechReceived.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v28 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v29 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v25 = v10;
  v10(v5, v9, v2);
  v31[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v14(v31, 0);
  v23 = *MEMORY[0x277D3E530];
  v27 = v3 + 104;
  (v10)(v5);
  v31[0] = 1;
  v15 = v5;
  sub_26738114C();
  v26 = v12 + 56;
  v24 = v13;
  v13(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x80000002674206B0);
  v16(v31, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v30, 0xD000000000000014, 0x80000002674206B0);
  if (!(*(v12 + 48))(v19, 1, v11))
  {
    sub_266ECB128(&unk_287883C78);
    sub_26738115C();
  }

  (v18)(v30, 0);
  v17(v31, 0);
  v25(v15, v23, v28);
  v31[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674206D0);
  return v20(v31, 0);
}

uint64_t sub_266EE5D64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE5DC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE5E2C()
{
  result = qword_2800EF1B8;
  if (!qword_2800EF1B8)
  {
    sub_266EE5E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF1B8);
  }

  return result;
}

unint64_t sub_266EE5E84()
{
  result = qword_2800EF1B0;
  if (!qword_2800EF1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF1B0);
  }

  return result;
}

uint64_t static ASRSchemaASRFinalResultGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v40 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E540];
  v10 = v3 + 104;
  v37 = *(v3 + 104);
  v11 = v2;
  v37(v5, v9, v2);
  v41[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v39 = v12;
  v14(v8, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x8000000267420770);
  v16(v41, 0);
  v32 = "tokenSilenceStartTimeInNsList";
  v38 = *MEMORY[0x277D3E508];
  v17 = v11;
  v34 = v11;
  v18 = v37;
  (v37)(v5);
  v41[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v35 = v15;
  v36 = v14;
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v32 | 0x8000000000000000);
  v19(v41, 0);
  v20 = *MEMORY[0x277D3E4E8];
  v21 = v17;
  v22 = v18;
  v33 = v10;
  v18(v5, v20, v21);
  v41[0] = 1;
  sub_26738114C();
  v23 = v39;
  v14(v8, 0, 1, v39);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x5272657466417369, 0xED0000656D757365);
  v24(v41, 0);
  v32 = "correctPartialResultIndexList";
  v25 = v38;
  v26 = v34;
  v18(v5, v38, v34);
  v41[0] = 1;
  sub_26738114C();
  v27 = v36;
  v36(v8, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v32 | 0x8000000000000000);
  v28(v41, 0);
  v22(v5, v25, v26);
  v41[0] = 1;
  sub_26738114C();
  v27(v8, 0, 1, v39);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ELL, 0x80000002674207E0);
  return v29(v41, 0);
}

uint64_t sub_266EE648C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE64F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE6554()
{
  result = qword_2800EF158;
  if (!qword_2800EF158)
  {
    sub_266EE65AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF158);
  }

  return result;
}

unint64_t sub_266EE65AC()
{
  result = qword_2800EF150;
  if (!qword_2800EF150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF150);
  }

  return result;
}

uint64_t static ASRSchemaASRFirstAudioPacketProcessed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EE6840(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE68A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE6908()
{
  result = qword_2800EF1A8;
  if (!qword_2800EF1A8)
  {
    sub_266EE6960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF1A8);
  }

  return result;
}

unint64_t sub_266EE6960()
{
  result = qword_2800EF1A0;
  if (!qword_2800EF1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF1A0);
  }

  return result;
}

uint64_t static ASRSchemaASRFirstAudioPacketReadyUpstream.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EE6BF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE6C58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE6CBC()
{
  result = qword_2800EF2B8;
  if (!qword_2800EF2B8)
  {
    sub_266EE6D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF2B8);
  }

  return result;
}

unint64_t sub_266EE6D14()
{
  result = qword_2800EF2B0;
  if (!qword_2800EF2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF2B0);
  }

  return result;
}

uint64_t static ASRSchemaASRFirstAudioPacketRecorded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EE6FA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE700C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE7070()
{
  result = qword_2800EF2A8;
  if (!qword_2800EF2A8)
  {
    sub_266EE70C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF2A8);
  }

  return result;
}

unint64_t sub_266EE70C8()
{
  result = qword_2800EF2A0;
  if (!qword_2800EF2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF2A0);
  }

  return result;
}

uint64_t static ASRSchemaASRFirstSecondAfterLeadingSilenceProcessed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EE735C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE73C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE7424()
{
  result = qword_2800EF298;
  if (!qword_2800EF298)
  {
    sub_266EE747C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF298);
  }

  return result;
}

unint64_t sub_266EE747C()
{
  result = qword_2800EF290;
  if (!qword_2800EF290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF290);
  }

  return result;
}

uint64_t static ASRSchemaASRFrameProcessingReady.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EE7710(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE7774(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE77D8()
{
  result = qword_2800EF278;
  if (!qword_2800EF278)
  {
    sub_266EE7830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF278);
  }

  return result;
}

unint64_t sub_266EE7830()
{
  result = qword_2800EF270;
  if (!qword_2800EF270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF270);
  }

  return result;
}

uint64_t static ASRSchemaASRFullPayloadCorrectionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF458, 0x277D56938);
  sub_266ECAF2C(&qword_2800EF460, &qword_2800EF458, 0x277D56938, &protocol conformance descriptor for ASRSchemaASRFullPayloadCorrectionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800EF468, 0x277D56920);
  sub_266ECAF2C(&qword_2800EF470, &qword_2800EF468, 0x277D56920, &protocol conformance descriptor for ASRSchemaASRFullPayloadCorrectionEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EF478, 0x277D56928);
  sub_266ECAF2C(&qword_2800EF480, &qword_2800EF478, 0x277D56928, &protocol conformance descriptor for ASRSchemaASRFullPayloadCorrectionFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_266EE7D94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE7DF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRFullPayloadCorrectionEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E540], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x80000002674209D0);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  return v11(v13, 0);
}

uint64_t sub_266EE81CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE8230(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRFullPayloadCorrectionErrorType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000029, 0x8000000267420A30, isUniquelyReferenced_nonNull_native);
  *v3 = v54;

  v1(v67, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000033, 0x8000000267420A60, v8);
  *v7 = v55;

  v5(v67, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x8000000267420AA0, v12);
  *v11 = v56;

  v9(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000031, 0x8000000267420AE0, v16);
  *v15 = v57;

  v13(v67, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000032, 0x8000000267420B20, v20);
  *v19 = v58;

  v17(v67, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x8000000267420B60, v24);
  *v23 = v59;

  v21(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000027, 0x8000000267420B90, v28);
  *v27 = v60;

  v25(v67, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000036, 0x8000000267420BC0, v32);
  *v31 = v61;

  v29(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002BLL, 0x8000000267420C00, v36);
  *v35 = v62;

  v33(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000035, 0x8000000267420C30, v40);
  *v39 = v63;

  v37(v67, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000003DLL, 0x8000000267420C70, v44);
  *v43 = v64;

  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002ELL, 0x8000000267420CB0, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000036, 0x8000000267420CE0, v52);
  *v51 = v66;

  return v49(v67, 0);
}

uint64_t sub_266EE895C(uint64_t a1)
{
  v2 = sub_266EE8A60(&qword_2800EF4A0, &protocol conformance descriptor for ASRSchemaASRFullPayloadCorrectionErrorType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266EE89C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266EE8A60(&qword_2800EF4A0, &protocol conformance descriptor for ASRSchemaASRFullPayloadCorrectionErrorType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266EE8A60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRSchemaASRFullPayloadCorrectionErrorType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ASRSchemaASRFullPayloadCorrectionFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = sub_26738113C();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASRFullPayloadCorrectionErrorType(0);
  sub_266EE8EDC(&qword_2800EF498, type metadata accessor for ASRSchemaASRFullPayloadCorrectionErrorType, &protocol conformance descriptor for ASRSchemaASRFullPayloadCorrectionErrorType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x707954726F727265, 0xE900000000000065);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E540], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674209D0);
  return v10(v14, 0);
}

uint64_t sub_266EE8DD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE8E34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EE8EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266EE8F24()
{
  result = qword_2800EF478;
  if (!qword_2800EF478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF478);
  }

  return result;
}

uint64_t static ASRSchemaASRFullPayloadCorrectionInfoTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v27 = v1;
  v28 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  v11(v30, 0);
  v12 = *(v28 + 104);
  v24 = *MEMORY[0x277D3E530];
  v28 += 104;
  v23 = v12;
  v12(v4);
  v30[0] = 1;
  sub_26738114C();
  v25 = v10;
  v10(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x8000000267420DA0);
  v13(v30, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v29, 0xD00000000000001ALL, 0x8000000267420DA0);
  v16 = *(v9 + 48);
  v26 = v9 + 48;
  if (!v16(v17, 1, v8))
  {
    sub_266ECB128(&unk_287883CA8);
    sub_26738115C();
  }

  (v15)(v29, 0);
  v14(v30, 0);
  v23(v4, v24, v27);
  v30[0] = 1;
  sub_26738114C();
  v25(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x8000000267420DC0);
  v18(v30, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v29, 0xD000000000000019, 0x8000000267420DC0);
  if (!v16(v21, 1, v8))
  {
    sub_266ECB128(&unk_287883CD0);
    sub_26738115C();
  }

  (v20)(v29, 0);
  return v19(v30, 0);
}

uint64_t sub_266EE94A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE950C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRFullPayloadCorrectionStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v18 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16[1] = a1;
  sub_26738119C();
  v17 = "commandParserEndTimeInNs";
  v9 = *MEMORY[0x277D3E540];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267420040);
  return v14(v19, 0);
}

uint64_t sub_266EE98E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE9948(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EE99AC()
{
  result = qword_2800EF460;
  if (!qword_2800EF460)
  {
    sub_266EE9A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF460);
  }

  return result;
}

unint64_t sub_266EE9A04()
{
  result = qword_2800EF458;
  if (!qword_2800EF458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF458);
  }

  return result;
}

uint64_t static ASRSchemaASRInitializationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF4B8, 0x277D56950);
  sub_266ECAF2C(&qword_2800EF4C0, &qword_2800EF4B8, 0x277D56950, &protocol conformance descriptor for ASRSchemaASRInitializationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EF4C8, 0x277D56948);
  sub_266ECAF2C(&qword_2800EF4D0, &qword_2800EF4C8, 0x277D56948, &protocol conformance descriptor for ASRSchemaASRInitializationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266EE9E9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EE9F00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRInitializationEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E4E8];
  v8 = *(v1 + 104);
  v17 = v0;
  v18 = v8;
  v8(v3, v7, v0);
  v20[0] = 1;
  sub_26738114C();
  v19 = sub_26738116C();
  v9 = *(*(v19 - 8) + 56);
  v9(v6, 0, 1, v19);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  v10(v20, 0);
  v11 = v0;
  v12 = v18;
  v18(v3, v7, v11);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v19);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x74616C69706D6F63, 0xEF656E6F446E6F69);
  v13(v20, 0);
  v12(v3, v7, v17);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v19);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267420E90);
  return v14(v20, 0);
}

uint64_t sub_266EEA384(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEA3E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EEA44C()
{
  result = qword_2800EF4D0;
  if (!qword_2800EF4D0)
  {
    sub_266EEA4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF4D0);
  }

  return result;
}

unint64_t sub_266EEA4A4()
{
  result = qword_2800EF4C8;
  if (!qword_2800EF4C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF4C8);
  }

  return result;
}

uint64_t static ASRSchemaASRInitializationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EEA738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEA79C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EEA800()
{
  result = qword_2800EF4C0;
  if (!qword_2800EF4C0)
  {
    sub_266EEA858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF4C0);
  }

  return result;
}

unint64_t sub_266EEA858()
{
  result = qword_2800EF4B8;
  if (!qword_2800EF4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF4B8);
  }

  return result;
}

uint64_t static ASRSchemaASRIntermediateUtteranceInfoTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *(v1 + 104);
  v32 = *MEMORY[0x277D3E530];
  v33 = v1 + 104;
  v34 = v0;
  v31 = v7;
  v7(v3);
  v36[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v29 = *(v9 + 56);
  v30 = v9 + 56;
  v29(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267420F30);
  v10(v36, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v35, 0xD000000000000011, 0x8000000267420F30);
  v28 = *(v9 + 48);
  if (!v28(v13, 1, v8))
  {
    sub_266ECB128(&unk_287883CF8);
    sub_26738115C();
  }

  (v12)(v35, 0);
  v11(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267420F50);
  v14(v36, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v35, 0xD000000000000012, 0x8000000267420F50);
  if (!v28(v17, 1, v8))
  {
    sub_266ECB128(&unk_287883D20);
    sub_26738115C();
  }

  (v16)(v35, 0);
  v15(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267420F70);
  v18(v36, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v35, 0xD000000000000013, 0x8000000267420F70);
  if (!v28(v21, 1, v8))
  {
    sub_266ECB128(&unk_287883D48);
    sub_26738115C();
  }

  (v20)(v35, 0);
  v19(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x80000002674206B0);
  v22(v36, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v35, 0xD000000000000014, 0x80000002674206B0);
  if (!v28(v25, 1, v8))
  {
    sub_266ECB128(&unk_287883D70);
    sub_26738115C();
  }

  (v24)(v35, 0);
  return v23(v36, 0);
}

uint64_t sub_266EEAFA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEB004(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EEB068()
{
  result = qword_2800EF168;
  if (!qword_2800EF168)
  {
    sub_266EEB0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF168);
  }

  return result;
}

unint64_t sub_266EEB0C0()
{
  result = qword_2800EF160;
  if (!qword_2800EF160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF160);
  }

  return result;
}

uint64_t static ASRSchemaASRInterpolationWeightBundle.makeTypeManifestAndEnsureFields(in:)()
{
  v17 = sub_26738113C();
  v0 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v18 = *MEMORY[0x277D3E540];
  v6 = *(v0 + 104);
  v6(v2);
  v16 = v6;
  v19[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 0, 1, v7);
  v9 = v8;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6D69547472617473, 0xED0000734E6E4965);
  v10(v19, 0);
  v11 = v17;
  (v6)(v2, v18, v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v5, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x49656D6954646E65, 0xEB00000000734E6ELL);
  v12(v19, 0);
  (v16)(v2, *MEMORY[0x277D3E500], v11);
  v19[0] = 1;
  sub_26738114C();
  v9(v5, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x73746867696577, 0xE700000000000000);
  return v13(v19, 0);
}

uint64_t sub_266EEB508(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEB56C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EEB5D0()
{
  result = qword_2800EF4D8;
  if (!qword_2800EF4D8)
  {
    sub_266EEB628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF4D8);
  }

  return result;
}

unint64_t sub_266EEB628()
{
  result = qword_2800EF4E0;
  if (!qword_2800EF4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF4E0);
  }

  return result;
}

uint64_t static ASRSchemaASRInterpretation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF4E8, 0x277D56AA0);
  sub_266ECAF2C(&qword_2800EF4F0, &qword_2800EF4E8, 0x277D56AA0, &protocol conformance descriptor for ASRSchemaASRToken);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x736E656B6F74, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266EEB844(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF4E8, 0x277D56AA0);
  sub_266ECAF2C(&qword_2800EF4F0, &qword_2800EF4E8, 0x277D56AA0, &protocol conformance descriptor for ASRSchemaASRToken);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x736E656B6F74, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266EEB9DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEBA40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRJitLanguageModelEnrollmentContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF508, 0x277D56988);
  sub_266ECAF2C(&qword_2800EF510, &qword_2800EF508, 0x277D56988, &protocol conformance descriptor for ASRSchemaASRJitLanguageModelEnrollmentStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EF518, 0x277D56978);
  sub_266ECAF2C(&qword_2800EF520, &qword_2800EF518, 0x277D56978, &protocol conformance descriptor for ASRSchemaASRJitLanguageModelEnrollmentEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266EEBF30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEBF94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRJitLanguageModelEnrollmentEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266EEC208(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266EEC3A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEC404(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRJitLanguageModelEnrollmentEndedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v16[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v18[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v16[0] = *(v9 + 56);
  (v16[0])(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F43676F6C616964, 0xED0000747865746ELL);
  v10(v18, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v17, 0x6F43676F6C616964, 0xED0000747865746ELL);
  if (!(*(v9 + 48))(v13, 1, v8))
  {
    sub_266ECB128(&unk_287883DA0);
    sub_26738115C();
  }

  (v12)(v17, 0);
  v11(v18, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  (v16[0])(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  return v14(v18, 0);
}

uint64_t sub_266EEC890(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEC8F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRJitLanguageModelEnrollmentStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EECBE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EECC44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EECCA8()
{
  result = qword_2800EF510;
  if (!qword_2800EF510)
  {
    sub_266EECD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF510);
  }

  return result;
}

unint64_t sub_266EECD00()
{
  result = qword_2800EF508;
  if (!qword_2800EF508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF508);
  }

  return result;
}

uint64_t static ASRSchemaASRLeadingSilenceProcessed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EECF94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EECFF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EED05C()
{
  result = qword_2800EF288;
  if (!qword_2800EF288)
  {
    sub_266EED0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF288);
  }

  return result;
}

unint64_t sub_266EED0B4()
{
  result = qword_2800EF280;
  if (!qword_2800EF280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF280);
  }

  return result;
}

uint64_t static ASRSchemaASRLMEOverActivationEdit.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASRSpeechProfileCategory(0);
  sub_266EED3F0(&qword_2800EF528, type metadata accessor for ASRSchemaASRSpeechProfileCategory, &protocol conformance descriptor for ASRSchemaASRSpeechProfileCategory);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267421180);
  return v5(v7, 0);
}

uint64_t sub_266EED2E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EED348(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266EED3F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266EED438()
{
  result = qword_2800EF538;
  if (!qword_2800EF538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF538);
  }

  return result;
}

uint64_t static ASRSchemaASRManualEditClassificationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6C616E696769726FLL, 0xED00006449727341);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800EF540, 0x277D569B8);
  sub_266ECAF2C(&qword_2800EF548, &qword_2800EF540, 0x277D569B8, &protocol conformance descriptor for ASRSchemaASRManualEditClassificationStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800EF550, 0x277D569A8);
  sub_266ECAF2C(&qword_2800EF558, &qword_2800EF550, 0x277D569A8, &protocol conformance descriptor for ASRSchemaASRManualEditClassificationEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800EF560, 0x277D569B0);
  sub_266ECAF2C(&qword_2800EF568, &qword_2800EF560, 0x277D569B0, &protocol conformance descriptor for ASRSchemaASRManualEditClassificationFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v12(v25, 0);
  sub_26738117C();
  v13 = sub_2673811BC();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_266ECAD54(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_266ECAD54((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v11, v24);
  return v13(v25, 0);
}

uint64_t sub_266EEDA68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEDACC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRManualEditClassificationEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EEDDB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEDE1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EEDE80()
{
  result = qword_2800EF558;
  if (!qword_2800EF558)
  {
    sub_266EEDED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF558);
  }

  return result;
}

unint64_t sub_266EEDED8()
{
  result = qword_2800EF550;
  if (!qword_2800EF550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF550);
  }

  return result;
}

uint64_t static ASRSchemaASRManualEditClassificationFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E508], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  return v13(v16, 0);
}

uint64_t sub_266EEE244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEE2A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EEE30C()
{
  result = qword_2800EF568;
  if (!qword_2800EF568)
  {
    sub_266EEE364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF568);
  }

  return result;
}

unint64_t sub_266EEE364()
{
  result = qword_2800EF560;
  if (!qword_2800EF560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF560);
  }

  return result;
}

uint64_t static ASRSchemaASRManualEditClassificationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266EEE5F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEE65C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266EEE6C0()
{
  result = qword_2800EF548;
  if (!qword_2800EF548)
  {
    sub_266EEE718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EF548);
  }

  return result;
}

unint64_t sub_266EEE718()
{
  result = qword_2800EF540;
  if (!qword_2800EF540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EF540);
  }

  return result;
}

uint64_t static ASRSchemaASRManualEditMetricClassified.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v23 = *(v8 + 56);
  v9 = v8 + 56;
  v23(v6, 0, 1, v7);
  v21[1] = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C616E696769726FLL, 0xED00006449727341);
  v10(v26, 0);
  v11 = *MEMORY[0x277D3E508];
  v12 = v25;
  v24 = *(v24 + 104);
  v22 = v11;
  (v24)(v3, v11, v25);
  v26[0] = 1;
  sub_26738114C();
  v13 = v23;
  v23(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x74656C65446D756ELL, 0xEC000000736E6F69);
  v14(v26, 0);
  v15 = v3;
  v16 = v3;
  v17 = v24;
  (v24)(v16, v11, v12);
  v26[0] = 1;
  sub_26738114C();
  v13(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x7265736E496D756ELL, 0xED0000736E6F6974);
  v18(v26, 0);
  v17(v15, v22, v25);
  v26[0] = 1;
  sub_26738114C();
  v13(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674212E0);
  return v19(v26, 0);
}

uint64_t sub_266EEEC44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEECA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRManualEditTextClassified.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738113C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6C616E696769726FLL, 0xED00006449727341);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800EF350, 0x277D56868);
  sub_266ECAF2C(&qword_2800EF348, &qword_2800EF350, 0x277D56868, &protocol conformance descriptor for ASRSchemaASRConfusionPairToken);
  sub_26738122C();
  v7(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64456C61756E616DLL, 0xEB00000000737469);
  v9(v24, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v23, 0x64456C61756E616DLL, 0xEB00000000737469);
  v12 = *(v6 + 48);
  if (!v12(v13, 1, v5))
  {
    sub_266ECB128(&unk_287883DC8);
    sub_26738115C();
  }

  (v11)(v23, 0);
  v10(v24, 0);
  (*(v20 + 104))(v21, *MEMORY[0x277D3E530], v22);
  v24[0] = 1;
  sub_26738114C();
  v7(v4, 0, 1, v5);
  v14 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000011, 0x800000026741EC10);
  v14(v24, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v23, 0xD000000000000011, 0x800000026741EC10);
  if (!v12(v17, 1, v5))
  {
    sub_266ECB128(&unk_287883DF0);
    sub_26738115C();
  }

  (v16)(v23, 0);
  return v15(v24, 0);
}

uint64_t sub_266EEF2A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266EEF304(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ASRSchemaASRNamedEntityUserEdit.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18 = a1;
  v17 = sub_26738113C();
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASREntityTaggerCategory(0);
  sub_266EEFA38(&qword_2800EF438, type metadata accessor for ASRSchemaASREntityTaggerCategory, &protocol conformance descriptor for ASRSchemaASREntityTaggerCategory);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x8000000267421370);
  v8(v20, 0);
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v19 + 104);
  v19 += 104;
  v16 = v10;
  v10(v2, v9, v17);
  v20[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000023, 0x8000000267421390);
  v11(v20, 0);
  type metadata accessor for ASRSchemaASRVisualContextCategory(0);
  sub_266EEFA38(&qword_2800EF570, type metadata accessor for ASRSchemaASRVisualContextCategory, &protocol conformance descriptor for ASRSchemaASRVisualContextCategory);
  sub_26738122C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x80000002674213C0);
  v12(v20, 0);
  v16(v2, v9, v17);
  v20[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000023, 0x80000002674213E0);
  v13(v20, 0);
  type metadata accessor for ASRSchemaASRSpeechProfileCategory(0);
  sub_266EEFA38(&qword_2800EF528, type metadata accessor for ASRSchemaASRSpeechProfileCategory, &protocol conformance descriptor for ASRSchemaASRSpeechProfileCategory);
  sub_26738122C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x8000000267421410);
  return v14(v20, 0);
}